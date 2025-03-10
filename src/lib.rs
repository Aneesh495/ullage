//! Ullage: Cryogenic rocket engine test stand executive, turbopump chilldown automation,
//! high-frequency combustion telemetry engine, and hot-fire sequence controller
//! with programmable redline abort matrices in Rhai and Rust.

pub mod common;
pub mod dsp;
pub mod hardware;
pub mod safety;
pub mod script;
pub mod telemetry;

pub use common::{
    ExecutionBudget, HealthFlags, MassFlow, MonotonicClock, Pressure, PropellantKind,
    Temperature, Thrust, TimestampNs, UllageError, UllageResult,
};
pub use dsp::{
    combustion_roughness_pct, compute_psd, AcousticCavityMode, ChamberAcousticModel, Complex,
    SpectralReport,
};
pub use hardware::{
    CryogenicValve, IgniterState, PintleActuator, PmuChannel, PmuMode, StandHal,
    TorchIgniter, ValveState,
};
pub use safety::{
    AbortReason, InterlockState, PurgeCoordinator, RedlineRule, RedundantVoting2oo3,
    SafetyInterlock, WatchdogTimer,
};
pub use script::{ScriptExecutionContext, UllageScriptEngine};
pub use telemetry::{
    BiquadFilter, CalibrationCurve, ParametricTestResult, RollingStatistics, SensorChannel,
    SensorKind, SensorRecord, StdfWriter, TelemetryPacket, TelemetryRingBuffer,
};
