//! Real-time hardware watchdog and purge safety coordinator

use std::time::{Duration, Instant};

/// Safety watchdog requiring continuous periodic heartbeat
pub struct WatchdogTimer {
    pub timeout: Duration,
    pub last_heartbeat: Instant,
    pub tripped: bool,
}

impl WatchdogTimer {
    pub fn new(timeout: Duration) -> Self {
        Self {
            timeout,
            last_heartbeat: Instant::now(),
            tripped: false,
        }
    }

    #[inline]
    pub fn heartbeat(&mut self) {
        self.last_heartbeat = Instant::now();
    }

    #[inline]
    pub fn check(&mut self) -> bool {
        if self.last_heartbeat.elapsed() > self.timeout {
            self.tripped = true;
        }
        self.tripped
    }

    pub fn reset(&mut self) {
        self.tripped = false;
        self.last_heartbeat = Instant::now();
    }
}

/// Nitrogen purge controller for cryogenic propellant isolation
#[derive(Debug, Clone)]
pub struct PurgeCoordinator {
    pub gn2_manifold_pressure_bar: f64,
    pub min_purge_pressure_bar: f64,
    pub lox_purge_active: bool,
    pub fuel_purge_active: bool,
    pub total_purge_duration: Duration,
}

impl PurgeCoordinator {
    pub fn new(min_pressure_bar: f64) -> Self {
        Self {
            gn2_manifold_pressure_bar: 30.0, // nominal 30 bar supply
            min_purge_pressure_bar: min_pressure_bar,
            lox_purge_active: false,
            fuel_purge_active: false,
            total_purge_duration: Duration::ZERO,
        }
    }

    pub fn trigger_emergency_purge(&mut self) -> Result<(), &'static str> {
        if self.gn2_manifold_pressure_bar < self.min_purge_pressure_bar {
            return Err("GN2 manifold pressure below minimum critical purge threshold");
        }
        self.lox_purge_active = true;
        self.fuel_purge_active = true;
        Ok(())
    }

    pub fn stop_purge(&mut self) {
        self.lox_purge_active = false;
        self.fuel_purge_active = false;
    }

    pub fn step(&mut self, dt: Duration) {
        if self.lox_purge_active || self.fuel_purge_active {
            self.total_purge_duration += dt;
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_watchdog_timeout() {
        let mut wd = WatchdogTimer::new(Duration::from_millis(20));
        assert!(!wd.check());
        std::thread::sleep(Duration::from_millis(25));
        assert!(wd.check());
        assert!(wd.tripped);

        wd.reset();
        assert!(!wd.tripped);
    }
}
