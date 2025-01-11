//! Digital signal conditioning, biquad IIR filtering, and outlier rejection

use std::f64::consts::PI;

/// Direct Form II Transposed Second-Order Biquad IIR Filter
#[derive(Debug, Clone)]
pub struct BiquadFilter {
    b0: f64,
    b1: f64,
    b2: f64,
    a1: f64,
    a2: f64,
    d1: f64,
    d2: f64,
}

impl BiquadFilter {
    /// Design a 2nd-order Butterworth low-pass filter
    pub fn butterworth_lowpass(sample_rate_hz: f64, cutoff_hz: f64) -> Self {
        let omega = 2.0 * PI * cutoff_hz / sample_rate_hz;
        let sin_w = omega.sin();
        let cos_w = omega.cos();
        let alpha = sin_w / (2.0 * (0.7071067811865476)); // Q = 1/sqrt(2)

        let a0 = 1.0 + alpha;
        let b0 = ((1.0 - cos_w) / 2.0) / a0;
        let b1 = (1.0 - cos_w) / a0;
        let b2 = ((1.0 - cos_w) / 2.0) / a0;
        let a1 = (-2.0 * cos_w) / a0;
        let a2 = (1.0 - alpha) / a0;

        Self {
            b0,
            b1,
            b2,
            a1,
            a2,
            d1: 0.0,
            d2: 0.0,
        }
    }

    /// Design a 2nd-order Notch filter at a specific interference frequency (e.g., 60 Hz or pump shaft frequency)
    pub fn notch(sample_rate_hz: f64, notch_hz: f64, q_factor: f64) -> Self {
        let omega = 2.0 * PI * notch_hz / sample_rate_hz;
        let sin_w = omega.sin();
        let cos_w = omega.cos();
        let alpha = sin_w / (2.0 * q_factor);

        let a0 = 1.0 + alpha;
        let b0 = 1.0 / a0;
        let b1 = (-2.0 * cos_w) / a0;
        let b2 = 1.0 / a0;
        let a1 = (-2.0 * cos_w) / a0;
        let a2 = (1.0 - alpha) / a0;

        Self {
            b0,
            b1,
            b2,
            a1,
            a2,
            d1: 0.0,
            d2: 0.0,
        }
    }

    #[inline]
    pub fn process(&mut self, input: f64) -> f64 {
        let output = self.b0 * input + self.d1;
        self.d1 = self.b1 * input - self.a1 * output + self.d2;
        self.d2 = self.b2 * input - self.a2 * output;
        output
    }

    pub fn reset(&mut self) {
        self.d1 = 0.0;
        self.d2 = 0.0;
    }
}

/// Rolling window statistical accumulator
#[derive(Debug, Clone)]
pub struct RollingStatistics {
    window_size: usize,
    samples: Vec<f64>,
    index: usize,
    count: usize,
    sum: f64,
    sum_sq: f64,
}

impl RollingStatistics {
    pub fn new(window_size: usize) -> Self {
        assert!(window_size > 0);
        Self {
            window_size,
            samples: vec![0.0; window_size],
            index: 0,
            count: 0,
            sum: 0.0,
            sum_sq: 0.0,
        }
    }

    pub fn push(&mut self, val: f64) {
        if self.count < self.window_size {
            self.samples[self.index] = val;
            self.sum += val;
            self.sum_sq += val * val;
            self.count += 1;
            self.index = (self.index + 1) % self.window_size;
        } else {
            let old = self.samples[self.index];
            self.sum = self.sum - old + val;
            self.sum_sq = self.sum_sq - old * old + val * val;
            self.samples[self.index] = val;
            self.index = (self.index + 1) % self.window_size;
        }
    }

    #[inline]
    pub fn mean(&self) -> f64 {
        if self.count == 0 {
            0.0
        } else {
            self.sum / (self.count as f64)
        }
    }

    #[inline]
    pub fn variance(&self) -> f64 {
        if self.count < 2 {
            return 0.0;
        }
        let n = self.count as f64;
        let mean = self.sum / n;
        let var = (self.sum_sq / n) - (mean * mean);
        var.max(0.0)
    }

    #[inline]
    pub fn std_dev(&self) -> f64 {
        self.variance().sqrt()
    }

    /// Check if a newly measured point is a statistically significant outlier (> 3 sigma)
    #[inline]
    pub fn is_outlier(&self, val: f64, sigma_threshold: f64) -> bool {
        if self.count < self.window_size / 2 {
            return false;
        }
        let dev = (val - self.mean()).abs();
        dev > sigma_threshold * self.std_dev()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_biquad_dc_unity() {
        let mut filter = BiquadFilter::butterworth_lowpass(1000.0, 50.0);
        let mut out = 0.0;
        for _ in 0..100 {
            out = filter.process(10.0);
        }
        // DC gain of lowpass should be 1.0 (converges to input)
        assert!((out - 10.0).abs() < 1e-2);
    }

    #[test]
    fn test_rolling_stats() {
        let mut stats = RollingStatistics::new(5);
        for v in [10.0, 10.0, 10.0, 10.0, 10.0] {
            stats.push(v);
        }
        assert!((stats.mean() - 10.0).abs() < 1e-6);
        assert!(stats.std_dev() < 1e-6);

        // An incoming 100.0 is an outlier
        assert!(stats.is_outlier(100.0, 3.0));
    }
}
