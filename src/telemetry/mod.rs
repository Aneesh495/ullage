//! Telemetry ingestion, circular buffering, filtering, and serialization

pub mod filter;
pub mod packet;
pub mod ring_buffer;
pub mod sensor;
pub mod stdf;

pub use filter::{BiquadFilter, RollingStatistics};
pub use packet::{TelemetryPacket, PACKET_SIZE_BYTES, TELEMETRY_SYNC_WORD};
pub use ring_buffer::TelemetryRingBuffer;
pub use sensor::{CalibrationCurve, SensorChannel, SensorKind, SensorRecord};
pub use stdf::{ParametricTestResult, StdfWriter};
