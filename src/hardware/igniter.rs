//! Pyrotechnic and torch igniter subassembly controller

use std::time::Duration;

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum IgniterState {
    Standby,
    Purging,
    FiringSpark,
    PropellantInjected,
    FlameConfirmed,
    FlameoutAbort,
    Safed,
}

/// Torch igniter controller (TEA-TEB or GHe/GOX-CH4 spark torch)
#[derive(Debug, Clone)]
pub struct TorchIgniter {
    pub tag: String,
    pub state: IgniterState,
    pub spark_active: bool,
    pub chamber_pressure_bar: f64,
    pub flame_sensor_mv: f64,
    pub min_flame_threshold_mv: f64,
    pub flameout_timeout: Duration,
    pub time_since_spark: Duration,
}

impl TorchIgniter {
    pub fn new(tag: &str, flame_thresh_mv: f64) -> Self {
        Self {
            tag: tag.to_string(),
            state: IgniterState::Standby,
            spark_active: false,
            chamber_pressure_bar: 1.0,
            flame_sensor_mv: 0.0,
            min_flame_threshold_mv: flame_thresh_mv,
            flameout_timeout: Duration::from_millis(150),
            time_since_spark: Duration::ZERO,
        }
    }

    pub fn start_ignition_sequence(&mut self) {
        self.state = IgniterState::FiringSpark;
        self.spark_active = true;
        self.time_since_spark = Duration::ZERO;
    }

    pub fn inject_torch_propellant(&mut self) {
        if self.state == IgniterState::FiringSpark {
            self.state = IgniterState::PropellantInjected;
        }
    }

    pub fn update_telemetry(&mut self, dt: Duration, flame_mv: f64, pc_bar: f64) {
        self.flame_sensor_mv = flame_mv;
        self.chamber_pressure_bar = pc_bar;

        if self.spark_active {
            self.time_since_spark += dt;
        }

        match self.state {
            IgniterState::PropellantInjected => {
                if self.flame_sensor_mv >= self.min_flame_threshold_mv && self.chamber_pressure_bar > 3.0 {
                    self.state = IgniterState::FlameConfirmed;
                } else if self.time_since_spark > self.flameout_timeout {
                    self.state = IgniterState::FlameoutAbort;
                    self.spark_active = false;
                }
            }
            IgniterState::FlameConfirmed => {
                if self.flame_sensor_mv < self.min_flame_threshold_mv * 0.5 {
                    self.state = IgniterState::FlameoutAbort;
                }
            }
            _ => {}
        }
    }

    pub fn safe(&mut self) {
        self.spark_active = false;
        self.state = IgniterState::Safed;
    }

    #[inline]
    pub fn is_flame_confirmed(&self) -> bool {
        self.state == IgniterState::FlameConfirmed
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_igniter_confirmation() {
        let mut igniter = TorchIgniter::new("IGN_TORCH", 250.0);
        assert_eq!(igniter.state, IgniterState::Standby);

        igniter.start_ignition_sequence();
        assert_eq!(igniter.state, IgniterState::FiringSpark);

        igniter.inject_torch_propellant();
        assert_eq!(igniter.state, IgniterState::PropellantInjected);

        igniter.update_telemetry(Duration::from_millis(50), 300.0, 5.5);
        assert!(igniter.is_flame_confirmed());
    }

    #[test]
    fn test_igniter_flameout_abort() {
        let mut igniter = TorchIgniter::new("IGN_TORCH", 250.0);
        igniter.start_ignition_sequence();
        igniter.inject_torch_propellant();

        // 200 ms without flame -> timeout abort
        igniter.update_telemetry(Duration::from_millis(200), 20.0, 1.0);
        assert_eq!(igniter.state, IgniterState::FlameoutAbort);
    }
}
