//! High-resolution timekeeping and deterministic budget tracking

use std::time::{Duration, Instant};

/// Monotonic timestamp in nanoseconds since engine startup
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct TimestampNs(pub u64);

impl TimestampNs {
    pub const ZERO: Self = Self(0);

    #[inline]
    pub fn as_nanos(&self) -> u64 {
        self.0
    }

    #[inline]
    pub fn as_micros(&self) -> u64 {
        self.0 / 1_000
    }

    #[inline]
    pub fn as_millis(&self) -> u64 {
        self.0 / 1_000_000
    }

    #[inline]
    pub fn as_seconds_f64(&self) -> f64 {
        (self.0 as f64) / 1_000_000_000.0
    }

    #[inline]
    pub fn duration_since(&self, earlier: Self) -> Duration {
        Duration::from_nanos(self.0.saturating_sub(earlier.0))
    }
}

/// Monotonic clock reference anchored at engine initialization
#[derive(Debug, Clone)]
pub struct MonotonicClock {
    epoch: Instant,
}

impl Default for MonotonicClock {
    fn default() -> Self {
        Self::new()
    }
}

impl MonotonicClock {
    pub fn new() -> Self {
        Self {
            epoch: Instant::now(),
        }
    }

    #[inline]
    pub fn now(&self) -> TimestampNs {
        TimestampNs(self.epoch.elapsed().as_nanos() as u64)
    }

    #[inline]
    pub fn elapsed(&self) -> Duration {
        self.epoch.elapsed()
    }
}

/// Execution budget monitor for sandboxed script execution
#[derive(Debug, Clone)]
pub struct ExecutionBudget {
    max_duration: Duration,
    max_operations: u64,
    start_time: Instant,
    operations_count: u64,
}

impl ExecutionBudget {
    pub fn new(max_duration: Duration, max_operations: u64) -> Self {
        Self {
            max_duration,
            max_operations,
            start_time: Instant::now(),
            operations_count: 0,
        }
    }

    #[inline]
    pub fn step(&mut self, ops: u64) -> Result<(), &'static str> {
        self.operations_count += ops;
        if self.operations_count > self.max_operations {
            return Err("Execution operations budget exhausted");
        }
        if self.start_time.elapsed() > self.max_duration {
            return Err("Execution real-time duration budget exhausted");
        }
        Ok(())
    }

    #[inline]
    pub fn operations_used(&self) -> u64 {
        self.operations_count
    }

    #[inline]
    pub fn elapsed(&self) -> Duration {
        self.start_time.elapsed()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_timestamp_conversions() {
        let ts = TimestampNs(1_500_000_000);
        assert_eq!(ts.as_millis(), 1500);
        assert_eq!(ts.as_micros(), 1_500_000);
        assert!((ts.as_seconds_f64() - 1.5).abs() < 1e-9);
    }

    #[test]
    fn test_clock_monotonicity() {
        let clock = MonotonicClock::new();
        let t1 = clock.now();
        std::thread::sleep(Duration::from_millis(5));
        let t2 = clock.now();
        assert!(t2 >= t1);
    }

    #[test]
    fn test_budget_exhaustion() {
        let mut budget = ExecutionBudget::new(Duration::from_millis(100), 50);
        assert!(budget.step(30).is_ok());
        assert!(budget.step(30).is_err());
    }
}
