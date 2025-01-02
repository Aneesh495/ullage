//! Common module: physical units, timekeeping, and error representations

pub mod error;
pub mod time;
pub mod types;

pub use error::{UllageError, UllageResult};
pub use time::{ExecutionBudget, MonotonicClock, TimestampNs};
pub use types::{
    HealthFlags, MassFlow, Pressure, PropellantKind, Temperature, Thrust,
};
