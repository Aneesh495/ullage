//! Spectral power density estimation and acoustic peak detection

use crate::dsp::fft::{apply_hann_window, fft_radix2, Complex};

/// Spectral analysis output record
#[derive(Debug, Clone)]
pub struct SpectralReport {
    pub peak_frequency_hz: f64,
    pub peak_amplitude: f64,
    pub total_power: f64,
    pub rms_roughness: f64,
    pub frequencies: Vec<f64>,
    pub psd: Vec<f64>,
}

/// Compute Power Spectral Density (PSD) from time-series real samples
pub fn compute_psd(samples: &[f64], sample_rate_hz: f64) -> SpectralReport {
    let n = samples.len();
    assert!(n.is_power_of_two(), "Sample length must be a power of two");

    let mut windowed = samples.to_vec();
    apply_hann_window(&mut windowed);

    let mut complex_buf: Vec<Complex> = windowed.into_iter().map(|s| Complex::new(s, 0.0)).collect();
    fft_radix2(&mut complex_buf);

    let half = n / 2;
    let mut freqs = Vec::with_capacity(half);
    let mut psd = Vec::with_capacity(half);

    let mut peak_freq = 0.0;
    let mut peak_amp = 0.0;
    let mut total_power = 0.0;

    let delta_f = sample_rate_hz / (n as f64);

    for (k, c) in complex_buf.iter().take(half).enumerate() {
        let f = (k as f64) * delta_f;
        let mag = (c.norm() / (n as f64)) * (if k > 0 { 2.0 } else { 1.0 });
        let pwr = mag * mag;

        if mag > peak_amp {
            peak_amp = mag;
            peak_freq = f;
        }

        total_power += pwr;
        freqs.push(f);
        psd.push(pwr);
    }

    let rms = total_power.sqrt();

    SpectralReport {
        peak_frequency_hz: peak_freq,
        peak_amplitude: peak_amp,
        total_power,
        rms_roughness: rms,
        frequencies: freqs,
        psd,
    }
}
