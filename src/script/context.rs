//! Shared runtime context between Rust host engine and Rhai automation scripts

use crate::common::types::HealthFlags;
use crate::hardware::hal::StandHal;
use crate::safety::interlock::{AbortReason, SafetyInterlock};
use crate::safety::redline::RedlineRule;
use std::collections::HashMap;
use std::sync::{Arc, Mutex};

/// Global state accessible to Rhai scripts during automated hot-fire runs
#[derive(Debug, Clone)]
pub struct ScriptExecutionContext {
    pub current_time_ns: u64,
    pub sensor_values: HashMap<String, f64>,
    pub sensor_health: HashMap<String, HealthFlags>,
    pub redlines: HashMap<String, RedlineRule>,
    pub interlock: SafetyInterlock,
    pub script_variables: HashMap<String, f64>,
    pub messages_log: Vec<String>,
}

impl Default for ScriptExecutionContext {
    fn default() -> Self {
        Self::new()
    }
}

impl ScriptExecutionContext {
    pub fn new() -> Self {
        Self {
            current_time_ns: 0,
            sensor_values: HashMap::new(),
            sensor_health: HashMap::new(),
            redlines: HashMap::new(),
            interlock: SafetyInterlock::new(),
            script_variables: HashMap::new(),
            messages_log: Vec::new(),
        }
    }

    pub fn set_sensor(&mut self, tag: &str, val: f64) {
        self.sensor_values.insert(tag.to_string(), val);
        self.sensor_health.insert(tag.to_string(), HealthFlags::NOMINAL);
    }

    pub fn get_sensor(&self, tag: &str) -> Option<f64> {
        self.sensor_values.get(tag).copied()
    }

    pub fn log(&mut self, msg: &str) {
        self.messages_log.push(msg.to_string());
    }
}

pub type SharedContext = Arc<Mutex<ScriptExecutionContext>>;
pub type SharedHal = Arc<Mutex<StandHal>>;
