//! Parametric Measurement Unit (PMU) for sensor loop continuity and insulation testing

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum PmuMode {
    VoltageForceCurrentMeasure,
    CurrentForceVoltageMeasure,
    HighVoltageInsulationMegger,
}

#[derive(Debug, Clone)]
pub struct PmuChannel {
    pub channel_id: u16,
    pub tag: String,
    pub mode: PmuMode,
    pub force_voltage_v: f64,
    pub force_current_ma: f64,
    pub measured_resistance_ohms: f64,
    pub continuity_pass: bool,
    pub insulation_pass: bool,
}

impl PmuChannel {
    pub fn new(channel_id: u16, tag: &str) -> Self {
        Self {
            channel_id,
            tag: tag.to_string(),
            mode: PmuMode::CurrentForceVoltageMeasure,
            force_voltage_v: 0.0,
            force_current_ma: 1.0, // 1 mA test current
            measured_resistance_ohms: 0.0,
            continuity_pass: false,
            insulation_pass: false,
        }
    }

    /// Perform Kelvin 4-wire continuity check on sensor bridge or RTD
    pub fn test_continuity(&mut self, measured_v: f64, min_ohms: f64, max_ohms: f64) -> bool {
        let current_a = (self.force_current_ma / 1000.0).max(1e-9);
        self.measured_resistance_ohms = measured_v / current_a;
        self.continuity_pass = self.measured_resistance_ohms >= min_ohms
            && self.measured_resistance_ohms <= max_ohms;
        self.continuity_pass
    }

    /// Perform 500V insulation resistance check against test stand chassis ground
    pub fn test_insulation_resistance(&mut self, leakage_ua: f64, min_megohms: f64) -> bool {
        let leakage_a = (leakage_ua / 1e6).max(1e-12);
        let test_v = 500.0;
        let resistance_m_ohms = (test_v / leakage_a) / 1e6;
        self.insulation_pass = resistance_m_ohms >= min_megohms;
        self.insulation_pass
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_pmu_continuity() {
        let mut pmu = PmuChannel::new(1, "RTD_PT100");
        // Force 1mA, measure 0.100V -> 100 ohms (PT100 at 0 C)
        assert!(pmu.test_continuity(0.100, 95.0, 105.0));
        assert!(pmu.continuity_pass);
        assert!((pmu.measured_resistance_ohms - 100.0).abs() < 1e-3);
    }
}
