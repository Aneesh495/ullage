//! Safety interlock state machine, trip latches, and abort reasons

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum InterlockState {
    Safe,
    Standby,
    Armed,
    Firing,
    Aborting,
    Aborted,
}

#[derive(Debug, Clone, PartialEq)]
pub enum AbortReason {
    ManualOperatorAbort,
    RedlineExceeded { parameter: String, value: f64 },
    WatchdogTimeout,
    IgnitionFailure,
    CombustionInstability,
    PneumaticPressureLoss,
    ChilldownFailure,
}

#[derive(Debug, Clone)]
pub struct SafetyInterlock {
    pub state: InterlockState,
    pub arm_key_inserted: bool,
    pub active_abort_reason: Option<AbortReason>,
    pub trip_latch_set: bool,
}

impl Default for SafetyInterlock {
    fn default() -> Self {
        Self::new()
    }
}

impl SafetyInterlock {
    pub fn new() -> Self {
        Self {
            state: InterlockState::Safe,
            arm_key_inserted: false,
            active_abort_reason: None,
            trip_latch_set: false,
        }
    }

    pub fn insert_arm_key(&mut self) {
        self.arm_key_inserted = true;
        if self.state == InterlockState::Safe {
            self.state = InterlockState::Standby;
        }
    }

    pub fn arm(&mut self) -> Result<(), &'static str> {
        if !self.arm_key_inserted {
            return Err("Arm key switch must be engaged prior to arming");
        }
        if self.trip_latch_set {
            return Err("Cannot arm while trip latch is active");
        }
        if self.state == InterlockState::Standby {
            self.state = InterlockState::Armed;
            Ok(())
        } else {
            Err("Interlock not in Standby state")
        }
    }

    pub fn transition_to_firing(&mut self) -> Result<(), &'static str> {
        if self.state == InterlockState::Armed {
            self.state = InterlockState::Firing;
            Ok(())
        } else {
            Err("Must be in Armed state to transition to Firing")
        }
    }

    pub fn trip_abort(&mut self, reason: AbortReason) {
        self.state = InterlockState::Aborting;
        self.active_abort_reason = Some(reason);
        self.trip_latch_set = true;
    }

    pub fn complete_abort(&mut self) {
        if self.state == InterlockState::Aborting {
            self.state = InterlockState::Aborted;
        }
    }

    pub fn reset_latch(&mut self) -> Result<(), &'static str> {
        if self.state == InterlockState::Aborting {
            return Err("Cannot reset latch while actively aborting");
        }
        self.trip_latch_set = false;
        self.active_abort_reason = None;
        self.state = InterlockState::Safe;
        Ok(())
    }

    #[inline]
    pub fn is_firing(&self) -> bool {
        self.state == InterlockState::Firing
    }

    #[inline]
    pub fn is_aborted(&self) -> bool {
        self.state == InterlockState::Aborting || self.state == InterlockState::Aborted
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_interlock_flow() {
        let mut interlock = SafetyInterlock::new();
        assert_eq!(interlock.state, InterlockState::Safe);

        assert!(interlock.arm().is_err()); // No arm key

        interlock.insert_arm_key();
        assert_eq!(interlock.state, InterlockState::Standby);

        assert!(interlock.arm().is_ok());
        assert_eq!(interlock.state, InterlockState::Armed);

        assert!(interlock.transition_to_firing().is_ok());
        assert!(interlock.is_firing());

        interlock.trip_abort(AbortReason::ManualOperatorAbort);
        assert!(interlock.is_aborted());
        assert!(interlock.trip_latch_set);
    }
}
