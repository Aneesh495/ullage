//! Error types and result aliases for the Ullage executive system

use std::fmt;

/// High-level result type for Ullage subsystem operations
pub type UllageResult<T> = Result<T, UllageError>;

/// Root error categorization for propulsion test execution
#[derive(Debug, Clone, PartialEq)]
pub enum UllageError {
    /// Sensor fault, telemetry disconnect, or invalid calibration
    TelemetryFault {
        sensor_id: String,
        details: String,
    },
    /// Critical redline limit violated requiring emergency sequence
    RedlineTrip {
        parameter: String,
        observed_value: f64,
        trip_threshold: f64,
        trip_time_ns: u64,
    },
    /// Hardware actuator failure or timeout
    ActuatorFault {
        valve_id: String,
        reason: String,
    },
    /// Script evaluation failure, compilation error, or timeout
    ScriptError {
        message: String,
        line: Option<usize>,
    },
    /// Cryogenic chilldown phase did not achieve target temperature within budget
    ChilldownTimeout {
        station: String,
        current_temp_k: f64,
        target_temp_k: f64,
    },
    /// Tank pressurization control failure
    PressurizationFault {
        tank_id: String,
        observed_bar: f64,
        target_bar: f64,
    },
    /// Low or high frequency combustion instability detected
    CombustionInstability {
        mode_type: String,
        frequency_hz: f64,
        peak_amplitude_bar: f64,
    },
    /// Out of bounds or invalid parameter configuration
    ConfigurationError(String),
    /// Lock-free telemetry ring buffer overrun or backpressure
    BufferOverrun {
        channel: String,
        dropped_frames: usize,
    },
}

impl fmt::Display for UllageError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Self::TelemetryFault { sensor_id, details } => {
                write!(f, "Telemetry fault on sensor '{}': {}", sensor_id, details)
            }
            Self::RedlineTrip { parameter, observed_value, trip_threshold, trip_time_ns } => {
                write!(
                    f,
                    "REDLINE TRIP on '{}': observed {:.3} exceeded threshold {:.3} at {} ns",
                    parameter, observed_value, trip_threshold, trip_time_ns
                )
            }
            Self::ActuatorFault { valve_id, reason } => {
                write!(f, "Actuator fault on '{}': {}", valve_id, reason)
            }
            Self::ScriptError { message, line } => match line {
                Some(l) => write!(f, "Script error at line {}: {}", l, message),
                None => write!(f, "Script error: {}", message),
            },
            Self::ChilldownTimeout { station, current_temp_k, target_temp_k } => {
                write!(
                    f,
                    "Chilldown timeout at station '{}': currently {:.2} K, target was {:.2} K",
                    station, current_temp_k, target_temp_k
                )
            }
            Self::PressurizationFault { tank_id, observed_bar, target_bar } => {
                write!(
                    f,
                    "Pressurization fault in tank '{}': observed {:.2} bar, target was {:.2} bar",
                    tank_id, observed_bar, target_bar
                )
            }
            Self::CombustionInstability { mode_type, frequency_hz, peak_amplitude_bar } => {
                write!(
                    f,
                    "Combustion instability ({}) detected at {:.1} Hz with amplitude {:.2} bar",
                    mode_type, frequency_hz, peak_amplitude_bar
                )
            }
            Self::ConfigurationError(msg) => write!(f, "Configuration error: {}", msg),
            Self::BufferOverrun { channel, dropped_frames } => {
                write!(f, "Telemetry buffer overrun on '{}': dropped {} frames", channel, dropped_frames)
            }
        }
    }
}

impl std::error::Error for UllageError {}
