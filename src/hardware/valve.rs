//! Cryogenic fluid control valves and electro-pneumatic actuators

use std::time::Duration;

/// Discrete physical state of a flow control valve
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum ValveState {
    Closed,
    Opening,
    Open,
    Closing,
    Fault,
}

/// Cryogenic valve specification and controller
#[derive(Debug, Clone)]
pub struct CryogenicValve {
    pub tag: String,
    pub state: ValveState,
    pub position_pct: f64, // 0.0 = fully closed, 100.0 = fully open
    pub commanded_open: bool,
    pub transit_time: Duration,
    pub time_in_transit: Duration,
    pub min_pilot_pressure_bar: f64,
    pub actual_pilot_pressure_bar: f64,
    pub cycle_count: u32,
    pub seat_stiction_detected: bool,
}

impl CryogenicValve {
    pub fn new(tag: &str, transit_time: Duration, min_pilot_bar: f64) -> Self {
        Self {
            tag: tag.to_string(),
            state: ValveState::Closed,
            position_pct: 0.0,
            commanded_open: false,
            transit_time,
            time_in_transit: Duration::ZERO,
            min_pilot_pressure_bar: min_pilot_bar,
            actual_pilot_pressure_bar: min_pilot_bar + 2.0, // default nominal pilot pressure
            cycle_count: 0,
            seat_stiction_detected: false,
        }
    }

    pub fn command_open(&mut self) -> Result<(), &'static str> {
        if self.actual_pilot_pressure_bar < self.min_pilot_pressure_bar {
            self.state = ValveState::Fault;
            return Err("Insufficient pneumatic pilot pressure to actuate valve");
        }
        if !self.commanded_open {
            self.commanded_open = true;
            if self.position_pct < 100.0 {
                self.state = ValveState::Opening;
                self.time_in_transit = Duration::ZERO;
            }
        }
        Ok(())
    }

    pub fn command_close(&mut self) {
        if self.commanded_open {
            self.commanded_open = false;
            if self.position_pct > 0.0 {
                self.state = ValveState::Closing;
                self.time_in_transit = Duration::ZERO;
            }
        }
    }

    /// Advance valve physical transit by dt
    pub fn step(&mut self, dt: Duration) {
        let transit_secs = self.transit_time.as_secs_f64();
        if transit_secs <= 0.0 {
            self.position_pct = if self.commanded_open { 100.0 } else { 0.0 };
            self.state = if self.commanded_open { ValveState::Open } else { ValveState::Closed };
            return;
        }

        let rate_pct_per_sec = 100.0 / transit_secs;
        let delta_pct = rate_pct_per_sec * dt.as_secs_f64();

        match self.state {
            ValveState::Opening => {
                self.time_in_transit += dt;
                self.position_pct += delta_pct;
                if self.position_pct >= 100.0 {
                    self.position_pct = 100.0;
                    self.state = ValveState::Open;
                    self.cycle_count += 1;
                }
            }
            ValveState::Closing => {
                self.time_in_transit += dt;
                self.position_pct -= delta_pct;
                if self.position_pct <= 0.0 {
                    self.position_pct = 0.0;
                    self.state = ValveState::Closed;
                }
            }
            _ => {}
        }
    }

    #[inline]
    pub fn is_open(&self) -> bool {
        self.state == ValveState::Open && self.position_pct >= 99.0
    }

    #[inline]
    pub fn is_closed(&self) -> bool {
        self.state == ValveState::Closed && self.position_pct <= 1.0
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_valve_transit() {
        let mut valve = CryogenicValve::new("LOX_MAIN", Duration::from_millis(100), 5.0);
        assert!(valve.is_closed());

        valve.command_open().unwrap();
        assert_eq!(valve.state, ValveState::Opening);

        valve.step(Duration::from_millis(50));
        assert!((valve.position_pct - 50.0).abs() < 1e-3);

        valve.step(Duration::from_millis(60));
        assert!(valve.is_open());
        assert_eq!(valve.cycle_count, 1);
    }
}
