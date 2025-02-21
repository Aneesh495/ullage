//! Safety interlocks, redline matrices, and real-time watchdog systems

pub mod interlock;
pub mod redline;
pub mod watchdog;

pub use interlock::{AbortReason, InterlockState, SafetyInterlock};
pub use redline::{RedlineRule, RedundantVoting2oo3};
pub use watchdog::{PurgeCoordinator, WatchdogTimer};
