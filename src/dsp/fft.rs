//! Fast Fourier Transform (FFT) and windowing routines

use std::f64::consts::PI;

#[derive(Debug, Clone, Copy, PartialEq)]
pub struct Complex {
    pub re: f64,
    pub im: f64,
}

impl Complex {
    #[inline]
    pub fn new(re: f64, im: f64) -> Self {
        Self { re, im }
    }

    #[inline]
    pub fn norm_sq(&self) -> f64 {
        self.re * self.re + self.im * self.im
    }

    #[inline]
    pub fn norm(&self) -> f64 {
        self.norm_sq().sqrt()
    }
}

/// In-place Cooley-Tukey Radix-2 Decimation-in-Time FFT
pub fn fft_radix2(data: &mut [Complex]) {
    let n = data.len();
    assert!(n.is_power_of_two(), "FFT length must be a power of two");

    // Bit-reversal permutation
    let mut j = 0;
    for i in 0..(n - 1) {
        if i < j {
            data.swap(i, j);
        }
        let mut k = n >> 1;
        while k <= j {
            j -= k;
            k >>= 1;
        }
        j += k;
    }

    // Butterfly computations
    let mut len = 2;
    while len <= n {
        let half = len >> 1;
        let angle = -2.0 * PI / (len as f64);
        let w_step = Complex::new(angle.cos(), angle.sin());

        let mut i = 0;
        while i < n {
            let mut w = Complex::new(1.0, 0.0);
            for k in 0..half {
                let u = data[i + k];
                let v = Complex::new(
                    data[i + k + half].re * w.re - data[i + k + half].im * w.im,
                    data[i + k + half].re * w.im + data[i + k + half].im * w.re,
                );
                data[i + k] = Complex::new(u.re + v.re, u.im + v.im);
                data[i + k + half] = Complex::new(u.re - v.re, u.im - v.im);

                let next_re = w.re * w_step.re - w.im * w_step.im;
                let next_im = w.re * w_step.im + w.im * w_step.re;
                w = Complex::new(next_re, next_im);
            }
            i += len;
        }
        len <<= 1;
    }
}

/// Apply Hann window to an array of real samples
pub fn apply_hann_window(samples: &mut [f64]) {
    let n = samples.len();
    if n <= 1 {
        return;
    }
    for (i, val) in samples.iter_mut().enumerate() {
        let w = 0.5 * (1.0 - (2.0 * PI * (i as f64) / ((n - 1) as f64)).cos());
        *val *= w;
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_fft_impulse() {
        // Delta impulse at t=0 -> flat spectrum
        let mut data = vec![Complex::new(0.0, 0.0); 16];
        data[0] = Complex::new(1.0, 0.0);

        fft_radix2(&mut data);
        for c in data {
            assert!((c.norm() - 1.0).abs() < 1e-10);
        }
    }

    #[test]
    fn test_fft_pure_sine() {
        let n = 64;
        let freq_bin = 4;
        let mut data = Vec::with_capacity(n);
        for i in 0..n {
            let theta = 2.0 * PI * (freq_bin as f64) * (i as f64) / (n as f64);
            data.push(Complex::new(theta.cos(), 0.0));
        }

        fft_radix2(&mut data);
        let bin4_mag = data[freq_bin].norm();
        assert!(bin4_mag > 30.0); // peak at bin 4
    }
}
