//! Unified Hardware Abstraction Layer (HAL) for the cryogenic test stand

use crate::hardware::actuator::PintleActuator;
use crate::hardware::igniter::TorchIgniter;
use crate::hardware::pmu::PmuChannel;
use crate::hardware::valve::CryogenicValve;
use std::collections::HashMap;
use std::time::Duration;

pub struct StandHal {
    pub valves: HashMap<String, CryogenicValve>,
    pub pintle_actuator: PintleActuator,
    pub igniter: TorchIgniter,
    pub pmu_channels: HashMap<String, PmuChannel>,
    pub emergency_purge_engaged: bool,
}

impl Default for StandHal {
    fn default() -> Self {
        Self::new()
    }
}

impl StandHal {
    pub fn new() -> Self {
        let mut valves = HashMap::new();
        valves.insert(
            "LOX_MAIN".to_string(),
            CryogenicValve::new("LOX_MAIN", Duration::from_millis(120), 6.0),
        );
        valves.insert(
            "FUEL_MAIN".to_string(),
            CryogenicValve::new("FUEL_MAIN", Duration::from_millis(100), 6.0),
        );
        valves.insert(
            "LOX_BLEED".to_string(),
            CryogenicValve::new("LOX_BLEED", Duration::from_millis(80), 5.0),
        );
        valves.insert(
            "FUEL_BLEED".to_string(),
            CryogenicValve::new("FUEL_BLEED", Duration::from_millis(80), 5.0),
        );
        valves.insert(
            "GN2_PURGE_LOX".to_string(),
            CryogenicValve::new("GN2_PURGE_LOX", Duration::from_millis(40), 5.0),
        );
        valves.insert(
            "GN2_PURGE_FUEL".to_string(),
            CryogenicValve::new("GN2_PURGE_FUEL", Duration::from_millis(40), 5.0),
        );
        valves.insert(
            "GHE_PRESS_LOX".to_string(),
            CryogenicValve::new("GHE_PRESS_LOX", Duration::from_millis(60), 6.0),
        );
        valves.insert(
            "GHE_PRESS_FUEL".to_string(),
            CryogenicValve::new("GHE_PRESS_FUEL", Duration::from_millis(60), 6.0),
        );

        Self {
            valves,
            pintle_actuator: PintleActuator::new("MCC_PINTLE", 30.0, 60.0),
            igniter: TorchIgniter::new("IGN_TORCH", 200.0),
            pmu_channels: HashMap::new(),
            emergency_purge_engaged: false,
        }
    }

    pub fn open_valve(&mut self, tag: &str) -> Result<(), &'static str> {
        let v = self.valves.get_mut(tag).ok_or("Valve tag not found")?;
        v.command_open()
    }

    pub fn close_valve(&mut self, tag: &str) -> Result<(), &'static str> {
        let v = self.valves.get_mut(tag).ok_or("Valve tag not found")?;
        v.command_close();
        Ok(())
    }

    pub fn engage_emergency_purge(&mut self) {
        self.emergency_purge_engaged = true;
        // Close propellant main valves
        if let Some(v) = self.valves.get_mut("LOX_MAIN") {
            v.command_close();
        }
        if let Some(v) = self.valves.get_mut("FUEL_MAIN") {
            v.command_close();
        }
        // Blast GN2 purges immediately
        if let Some(v) = self.valves.get_mut("GN2_PURGE_LOX") {
            let _ = v.command_open();
        }
        if let Some(v) = self.valves.get_mut("GN2_PURGE_FUEL") {
            let _ = v.command_open();
        }
        self.igniter.safe();
    }

    pub fn step(&mut self, dt: Duration) {
        for v in self.valves.values_mut() {
            v.step(dt);
        }
        self.pintle_actuator.step(dt);
    }
}
