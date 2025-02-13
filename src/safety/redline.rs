//! Hard real-time redline comparator and dual/triple voting logic

use crate::common::types::HealthFlags;

/// Redline boundary rule definition
#[derive(Debug, Clone)]
pub struct RedlineRule {
    pub parameter_name: String,
    pub min_threshold: Option<f64>,
    pub max_threshold: Option<f64>,
    pub debounce_samples: u32,
    pub current_consecutive_trips: u32,
    pub is_tripped: bool,
    pub trip_timestamp_ns: Option<u64>,
    pub trip_value: f64,
}

impl RedlineRule {
    pub fn new(param: &str, min: Option<f64>, max: Option<f64>, debounce: u32) -> Self {
        Self {
            parameter_name: param.to_string(),
            min_threshold: min,
            max_threshold: max,
            debounce_samples: debounce.max(1),
            current_consecutive_trips: 0,
            is_tripped: false,
            trip_timestamp_ns: None,
            trip_value: 0.0,
        }
    }

    /// Evaluate a new telemetry sample against the redline thresholds
    pub fn evaluate(&mut self, value: f64, timestamp_ns: u64) -> (bool, HealthFlags) {
        let mut flags = HealthFlags::NOMINAL;
        let mut out_of_bounds = false;

        if let Some(min_val) = self.min_threshold {
            if value < min_val {
                out_of_bounds = true;
                flags.set(HealthFlags::REDLINE_LOW);
            }
        }

        if let Some(max_val) = self.max_threshold {
            if value > max_val {
                out_of_bounds = true;
                flags.set(HealthFlags::REDLINE_HIGH);
            }
        }

        if out_of_bounds {
            self.current_consecutive_trips += 1;
            if self.current_consecutive_trips >= self.debounce_samples {
                if !self.is_tripped {
                    self.is_tripped = true;
                    self.trip_timestamp_ns = Some(timestamp_ns);
                    self.trip_value = value;
                }
            }
        } else {
            self.current_consecutive_trips = 0;
        }

        (self.is_tripped, flags)
    }

    pub fn reset(&mut self) {
        self.is_tripped = false;
        self.current_consecutive_trips = 0;
        self.trip_timestamp_ns = None;
    }
}

/// 2-out-of-3 (2oo3) voting logic for redundant physical sensor channels
#[derive(Debug, Clone)]
pub struct RedundantVoting2oo3 {
    pub max_disagreement_delta: f64,
}

impl RedundantVoting2oo3 {
    pub fn new(max_delta: f64) -> Self {
        Self {
            max_disagreement_delta: max_delta,
        }
    }

    /// Vote across 3 sensor measurements: returns (voted_val, ok, consensus_count)
    pub fn vote(&self, s1: f64, s2: f64, s3: f64) -> (f64, bool, usize) {
        let d12 = (s1 - s2).abs() <= self.max_disagreement_delta;
        let d23 = (s2 - s3).abs() <= self.max_disagreement_delta;
        let d13 = (s1 - s3).abs() <= self.max_disagreement_delta;

        if d12 && d23 && d13 {
            // Unanimous agreement: median or average
            ((s1 + s2 + s3) / 3.0, true, 3)
        } else if d12 {
            // S1 and S2 agree; S3 is outlier
            ((s1 + s2) / 2.0, true, 2)
        } else if d23 {
            // S2 and S3 agree; S1 is outlier
            ((s2 + s3) / 2.0, true, 2)
        } else if d13 {
            // S1 and S3 agree; S2 is outlier
            ((s1 + s3) / 2.0, true, 2)
        } else {
            // No 2 sensors agree -> fail-safe disagreement fault
            (s1, false, 0)
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_redline_debounce() {
        let mut rl = RedlineRule::new("TURBINE_INLET_TEMP", None, Some(900.0), 3);
        assert!(!rl.evaluate(850.0, 100).0);
        assert!(!rl.evaluate(920.0, 200).0); // 1st trip
        assert!(!rl.evaluate(925.0, 300).0); // 2nd trip
        assert!(rl.evaluate(930.0, 400).0);  // 3rd trip -> trips!
        assert!(rl.is_tripped);
        assert_eq!(rl.trip_timestamp_ns, Some(400));
    }

    #[test]
    fn test_2oo3_voting() {
        let voter = RedundantVoting2oo3::new(2.0);
        // S1=80, S2=81, S3=150 (outlier)
        let (voted, ok, count) = voter.vote(80.0, 81.0, 150.0);
        assert!(ok);
        assert_eq!(count, 2);
        assert!((voted - 80.5).abs() < 1e-6);
    }
}
