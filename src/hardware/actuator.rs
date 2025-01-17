//! Electromechanical throttle actuator and pintle stroke positioning

use std::time::Duration;

/// Precision linear actuator for pintle injector throttling
#[derive(Debug, Clone)]
pub struct PintleActuator {
    pub tag: String,
    pub stroke_mm: f64,
    pub commanded_stroke_mm: f64,
    pub max_stroke_mm: f64,
    pub max_velocity_mm_per_sec: f64,
    pub backlash_mm: f64,
    pub last_direction: f64, // +1.0 for extending, -1.0 for retracting
    pub encoder_counts_per_mm: f64,
}

impl PintleActuator {
    pub fn new(tag: &str, max_stroke_mm: f64, max_vel_mm_s: f64) -> Self {
        Self {
            tag: tag.to_string(),
            stroke_mm: 0.0,
            commanded_stroke_mm: 0.0,
            max_stroke_mm,
            max_velocity_mm_per_sec: max_vel_mm_s,
            backlash_mm: 0.02, // 20 microns mechanical backlash
            last_direction: 0.0,
            encoder_counts_per_mm: 4096.0,
        }
    }

    pub fn set_command_stroke(&mut self, target_mm: f64) {
        self.commanded_stroke_mm = target_mm.clamp(0.0, self.max_stroke_mm);
    }

    pub fn set_throttle_pct(&mut self, pct: f64) {
        let frac = pct.clamp(0.0, 100.0) / 100.0;
        self.set_command_stroke(frac * self.max_stroke_mm);
    }

    #[inline]
    pub fn throttle_pct(&self) -> f64 {
        (self.stroke_mm / self.max_stroke_mm) * 100.0
    }

    pub fn step(&mut self, dt: Duration) {
        let dt_secs = dt.as_secs_f64();
        let error = self.commanded_stroke_mm - self.stroke_mm;
        if error.abs() < 1e-4 {
            return;
        }

        let direction = error.signum();
        let max_step = self.max_velocity_mm_per_sec * dt_secs;
        let mut actual_move = error.abs().min(max_step) * direction;

        // Model backlash when reversing direction
        if self.last_direction != 0.0 && direction != self.last_direction {
            if actual_move.abs() <= self.backlash_mm {
                actual_move = 0.0;
            } else {
                actual_move -= self.backlash_mm * direction;
            }
        }

        self.stroke_mm = (self.stroke_mm + actual_move).clamp(0.0, self.max_stroke_mm);
        self.last_direction = direction;
    }

    #[inline]
    pub fn encoder_counts(&self) -> i64 {
        (self.stroke_mm * self.encoder_counts_per_mm) as i64
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_pintle_throttling() {
        let mut act = PintleActuator::new("MCC_PINTLE", 25.0, 50.0);
        act.set_throttle_pct(50.0); // 12.5 mm target
        assert!((act.commanded_stroke_mm - 12.5).abs() < 1e-6);

        // Step by 0.1s -> max move = 5.0 mm
        act.step(Duration::from_millis(100));
        assert!((act.stroke_mm - 5.0).abs() < 0.1);

        // Step by another 0.2s -> total move = 10.0 mm -> reaches 12.5 mm
        act.step(Duration::from_millis(200));
        assert!((act.stroke_mm - 12.5).abs() < 0.1);
        assert!((act.throttle_pct() - 50.0).abs() < 0.5);
    }
}
