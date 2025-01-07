//! Transducer channels, sensor definitions, and calibration curves

use crate::common::types::{HealthFlags, PropellantKind};
use serde::{Deserialize, Serialize};

/// Sensor physical classification
#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Serialize, Deserialize)]
pub enum SensorKind {
    StaticPressure,
    DynamicPressureHighFreq,
    CryogenicRtd,
    ThermocoupleTypeK,
    ThrustLoadCell,
    TurbineFlowMeter,
    CoriolisMassFlow,
    OpticalTachometer,
    ValvePositionLVDT,
}

/// Transducer calibration curve using polynomial coefficients
/// value = c0 + c1*V + c2*V^2 + c3*V^3
#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct CalibrationCurve {
    pub c0: f64,
    pub c1: f64,
    pub c2: f64,
    pub c3: f64,
    pub raw_min_volts: f64,
    pub raw_max_volts: f64,
    pub eng_min: f64,
    pub eng_max: f64,
}

impl CalibrationCurve {
    pub fn linear(c0: f64, c1: f64, min_v: f64, max_v: f64, min_eng: f64, max_eng: f64) -> Self {
        Self {
            c0,
            c1,
            c2: 0.0,
            c3: 0.0,
            raw_min_volts: min_v,
            raw_max_volts: max_v,
            eng_min: min_eng,
            eng_max: max_eng,
        }
    }

    /// Polynomial calibration for Cernox cryogenic RTDs (Chebyshev or standard power series)
    pub fn polynomial(c0: f64, c1: f64, c2: f64, c3: f64, min_v: f64, max_v: f64) -> Self {
        Self {
            c0,
            c1,
            c2,
            c3,
            raw_min_volts: min_v,
            raw_max_volts: max_v,
            eng_min: -273.15,
            eng_max: 2000.0,
        }
    }

    #[inline]
    pub fn apply(&self, raw_volts: f64) -> (f64, HealthFlags) {
        let mut flags = HealthFlags::NOMINAL;
        if raw_volts < self.raw_min_volts || raw_volts > self.raw_max_volts {
            flags.set(HealthFlags::SENSOR_OUT_OF_RANGE);
        }
        let v = raw_volts;
        let eng = self.c0 + self.c1 * v + self.c2 * v * v + self.c3 * v * v * v;
        (eng, flags)
    }
}

/// Complete definition of an instrumented test stand telemetry channel
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct SensorChannel {
    pub channel_id: u16,
    pub tag: String,
    pub kind: SensorKind,
    pub fluid: Option<PropellantKind>,
    pub calibration: CalibrationCurve,
    pub sample_rate_hz: u32,
    pub redline_low: Option<f64>,
    pub redline_high: Option<f64>,
    pub warning_low: Option<f64>,
    pub warning_high: Option<f64>,
}

impl SensorChannel {
    pub fn new(
        channel_id: u16,
        tag: &str,
        kind: SensorKind,
        fluid: Option<PropellantKind>,
        cal: CalibrationCurve,
        rate_hz: u32,
    ) -> Self {
        Self {
            channel_id,
            tag: tag.to_string(),
            kind,
            fluid,
            calibration: cal,
            sample_rate_hz: rate_hz,
            redline_low: None,
            redline_high: None,
            warning_low: None,
            warning_high: None,
        }
    }

    pub fn with_redlines(mut self, low: f64, high: f64) -> Self {
        self.redline_low = Some(low);
        self.redline_high = Some(high);
        self
    }

    pub fn with_warnings(mut self, low: f64, high: f64) -> Self {
        self.warning_low = Some(low);
        self.warning_high = Some(high);
        self
    }
}

/// Instantaneous telemetry sample from a physical transducer
#[derive(Debug, Clone, Copy, PartialEq, Serialize, Deserialize)]
pub struct SensorRecord {
    pub channel_id: u16,
    pub timestamp_ns: u64,
    pub raw_voltage: f64,
    pub engineering_value: f64,
    pub health: HealthFlags,
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_linear_calibration() {
        // 0-10V maps to 0-100 bar
        let cal = CalibrationCurve::linear(0.0, 10.0, 0.0, 10.0, 0.0, 100.0);
        let (p, flags) = cal.apply(5.0);
        assert!((p - 50.0).abs() < 1e-6);
        assert!(flags.is_nominal());

        let (_p_out, flags_out) = cal.apply(12.0);
        assert!(flags_out.contains(HealthFlags::SENSOR_OUT_OF_RANGE));
    }
}
