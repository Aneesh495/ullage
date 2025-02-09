//! Acoustic cavity resonant mode tracking and combustion roughness index

/// Acoustic mode identification in rocket thrust chambers
#[derive(Debug, Clone, Copy, PartialEq)]
pub enum AcousticCavityMode {
    LowFrequencyChug,           // typically 50 - 300 Hz (feed system coupled)
    FirstLongitudinal(f64),     // 1L mode (typically 500 - 1500 Hz)
    FirstTangential(f64),       // 1T mode (typically 2000 - 6000 Hz, destructive)
    FirstRadial(f64),           // 1R mode (typically 5000 - 10000 Hz)
    BroadbandNoise,
}

/// Thrust chamber acoustic geometry configuration
#[derive(Debug, Clone)]
pub struct ChamberAcousticModel {
    pub chamber_diameter_m: f64,
    pub chamber_length_m: f64,
    pub speed_of_sound_m_s: f64,
}

impl ChamberAcousticModel {
    pub fn new(diameter_m: f64, length_m: f64, speed_of_sound: f64) -> Self {
        Self {
            chamber_diameter_m: diameter_m,
            chamber_length_m: length_m,
            speed_of_sound_m_s: speed_of_sound,
        }
    }

    /// Theoretical 1st Longitudinal (1L) resonant frequency: f_1L = a / (2 * L)
    pub fn freq_1l(&self) -> f64 {
        self.speed_of_sound_m_s / (2.0 * self.chamber_length_m)
    }

    /// Theoretical 1st Tangential (1T) resonant frequency: f_1T = (alpha_11 * a) / (pi * D)
    /// where alpha_11 is the first zero of the derivative of Bessel function J1' = 1.84118
    pub fn freq_1t(&self) -> f64 {
        (1.84118 * self.speed_of_sound_m_s) / (std::f64::consts::PI * self.chamber_diameter_m)
    }

    /// Theoretical 1st Radial (1R) resonant frequency: f_1R = (alpha_01 * a) / (pi * D)
    /// where alpha_01 is the first zero of J0' = 3.83171
    pub fn freq_1r(&self) -> f64 {
        (3.83171 * self.speed_of_sound_m_s) / (std::f64::consts::PI * self.chamber_diameter_m)
    }

    /// Classify an observed spectral peak against chamber acoustic modes
    pub fn classify_mode(&self, observed_freq_hz: f64, delta_tolerance_hz: f64) -> AcousticCavityMode {
        if observed_freq_hz >= 40.0 && observed_freq_hz <= 350.0 {
            return AcousticCavityMode::LowFrequencyChug;
        }

        let f_1l = self.freq_1l();
        if (observed_freq_hz - f_1l).abs() <= delta_tolerance_hz {
            return AcousticCavityMode::FirstLongitudinal(f_1l);
        }

        let f_1t = self.freq_1t();
        if (observed_freq_hz - f_1t).abs() <= delta_tolerance_hz {
            return AcousticCavityMode::FirstTangential(f_1t);
        }

        let f_1r = self.freq_1r();
        if (observed_freq_hz - f_1r).abs() <= delta_tolerance_hz {
            return AcousticCavityMode::FirstRadial(f_1r);
        }

        AcousticCavityMode::BroadbandNoise
    }
}

/// Calculate combustion roughness index: Delta Pc(RMS) / Pc(Mean) * 100%
#[inline]
pub fn combustion_roughness_pct(pc_rms_dynamic: f64, pc_mean_static: f64) -> f64 {
    if pc_mean_static <= 0.0 {
        0.0
    } else {
        (pc_rms_dynamic / pc_mean_static) * 100.0
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_chamber_acoustic_frequencies() {
        // Representative LOX/CH4 chamber: D = 0.25 m, L = 0.40 m, acoustic velocity = 1100 m/s
        let model = ChamberAcousticModel::new(0.25, 0.40, 1100.0);
        let f1l = model.freq_1l(); // 1100 / 0.8 = 1375 Hz
        assert!((f1l - 1375.0).abs() < 1e-1);

        let f1t = model.freq_1t(); // 1.84118 * 1100 / (pi * 0.25) ~ 2578.6 Hz
        assert!((f1t - 2578.6).abs() < 10.0);

        let mode = model.classify_mode(2575.0, 50.0);
        assert!(matches!(mode, AcousticCavityMode::FirstTangential(_)));
    }
}
