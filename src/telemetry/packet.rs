//! Binary telemetry packet serialization and network wire protocol

use crate::common::types::HealthFlags;
use byteorder::{BigEndian, ByteOrder};

pub const TELEMETRY_SYNC_WORD: u32 = 0x55AA_7E1E;
pub const PACKET_SIZE_BYTES: usize = 28;

/// Fixed-size 28-byte high-speed telemetry packet
/// [0..4]   Sync word (0x55AA_7E1E)
/// [4..6]   Channel ID (u16)
/// [6..8]   Sequence Counter (u16)
/// [8..16]  Timestamp ns (u64)
/// [16..24] Engineering value f64
/// [24..28] Health flags (u32)
#[derive(Debug, Clone, Copy, PartialEq)]
pub struct TelemetryPacket {
    pub channel_id: u16,
    pub sequence_id: u16,
    pub timestamp_ns: u64,
    pub value: f64,
    pub health: HealthFlags,
}

impl TelemetryPacket {
    pub fn new(channel_id: u16, sequence_id: u16, timestamp_ns: u64, value: f64, health: HealthFlags) -> Self {
        Self {
            channel_id,
            sequence_id,
            timestamp_ns,
            value,
            health,
        }
    }

    pub fn serialize(&self, buf: &mut [u8; PACKET_SIZE_BYTES]) {
        BigEndian::write_u32(&mut buf[0..4], TELEMETRY_SYNC_WORD);
        BigEndian::write_u16(&mut buf[4..6], self.channel_id);
        BigEndian::write_u16(&mut buf[6..8], self.sequence_id);
        BigEndian::write_u64(&mut buf[8..16], self.timestamp_ns);
        BigEndian::write_f64(&mut buf[16..24], self.value);
        BigEndian::write_u32(&mut buf[24..28], self.health.0);
    }

    pub fn deserialize(buf: &[u8; PACKET_SIZE_BYTES]) -> Result<Self, &'static str> {
        let sync = BigEndian::read_u32(&buf[0..4]);
        if sync != TELEMETRY_SYNC_WORD {
            return Err("Invalid telemetry sync word");
        }
        let channel_id = BigEndian::read_u16(&buf[4..6]);
        let sequence_id = BigEndian::read_u16(&buf[6..8]);
        let timestamp_ns = BigEndian::read_u64(&buf[8..16]);
        let value = BigEndian::read_f64(&buf[16..24]);
        let health = HealthFlags(BigEndian::read_u32(&buf[24..28]));

        Ok(Self {
            channel_id,
            sequence_id,
            timestamp_ns,
            value,
            health,
        })
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_packet_roundtrip() {
        let pkt = TelemetryPacket::new(42, 101, 1_234_567_890, 85.42, HealthFlags::WARNING_HIGH);
        let mut buf = [0u8; PACKET_SIZE_BYTES];
        pkt.serialize(&mut buf);

        let decoded = TelemetryPacket::deserialize(&buf).expect("Deserialization failed");
        assert_eq!(pkt.channel_id, decoded.channel_id);
        assert_eq!(pkt.sequence_id, decoded.sequence_id);
        assert_eq!(pkt.timestamp_ns, decoded.timestamp_ns);
        assert!((pkt.value - decoded.value).abs() < 1e-12);
        assert_eq!(pkt.health, decoded.health);
    }

    #[test]
    fn test_invalid_sync() {
        let buf = [0u8; PACKET_SIZE_BYTES];
        assert!(TelemetryPacket::deserialize(&buf).is_err());
    }
}
