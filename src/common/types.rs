//! Physical types, unit representations, and core telemetry structures
//!
//! Provides type-safe representations of physical quantities encountered in
//! liquid propulsion test stands, including cryogenic pressures, temperatures,
//! flow rates, and actuator positions.

use serde::{Deserialize, Serialize};
use std::fmt;

/// Pressure representation supporting multiple unit systems
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize)]
pub struct Pressure {
    pascals: f64,
}

impl Pressure {
    pub const ZERO: Self = Self { pascals: 0.0 };
    pub const ATMOSPHERE: Self = Self { pascals: 101325.0 };

    #[inline]
    pub fn from_pascals(pascals: f64) -> Self {
        Self { pascals }
    }

    #[inline]
    pub fn from_bar(bar: f64) -> Self {
        Self { pascals: bar * 100_000.0 }
    }

    #[inline]
    pub fn from_psi(psi: f64) -> Self {
        Self { pascals: psi * 6894.757293168 }
    }

    #[inline]
    pub fn from_mpa(mpa: f64) -> Self {
        Self { pascals: mpa * 1_000_000.0 }
    }

    #[inline]
    pub fn as_pascals(&self) -> f64 {
        self.pascals
    }

    #[inline]
    pub fn as_bar(&self) -> f64 {
        self.pascals / 100_000.0
    }

    #[inline]
    pub fn as_psi(&self) -> f64 {
        self.pascals / 6894.757293168
    }

    #[inline]
    pub fn as_mpa(&self) -> f64 {
        self.pascals / 1_000_000.0
    }
}

impl fmt::Display for Pressure {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{:.3} bar", self.as_bar())
    }
}

/// Temperature representation supporting Kelvin and Celsius
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize)]
pub struct Temperature {
    kelvin: f64,
}

impl Temperature {
    pub const ABSOLUTE_ZERO: Self = Self { kelvin: 0.0 };
    pub const LOX_NORMAL_BOILING: Self = Self { kelvin: 90.19 };
    pub const LCH4_NORMAL_BOILING: Self = Self { kelvin: 111.66 };
    pub const LN2_NORMAL_BOILING: Self = Self { kelvin: 77.36 };
    pub const AMBIENT_STANDARD: Self = Self { kelvin: 288.15 };

    #[inline]
    pub fn from_kelvin(kelvin: f64) -> Self {
        Self { kelvin: kelvin.max(0.0) }
    }

    #[inline]
    pub fn from_celsius(celsius: f64) -> Self {
        Self { kelvin: (celsius + 273.15).max(0.0) }
    }

    #[inline]
    pub fn as_kelvin(&self) -> f64 {
        self.kelvin
    }

    #[inline]
    pub fn as_celsius(&self) -> f64 {
        self.kelvin - 273.15
    }

    #[inline]
    pub fn is_cryogenic(&self) -> bool {
        self.kelvin < 150.0
    }
}

impl fmt::Display for Temperature {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{:.2} K ({:.2} C)", self.kelvin, self.as_celsius())
    }
}

/// Mass flow rate representation in kilograms per second
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize)]
pub struct MassFlow {
    kg_per_sec: f64,
}

impl MassFlow {
    pub const ZERO: Self = Self { kg_per_sec: 0.0 };

    #[inline]
    pub fn from_kg_per_sec(kg_s: f64) -> Self {
        Self { kg_per_sec: kg_s }
    }

    #[inline]
    pub fn from_lbm_per_sec(lbm_s: f64) -> Self {
        Self { kg_per_sec: lbm_s * 0.45359237 }
    }

    #[inline]
    pub fn as_kg_per_sec(&self) -> f64 {
        self.kg_per_sec
    }

    #[inline]
    pub fn as_lbm_per_sec(&self) -> f64 {
        self.kg_per_sec / 0.45359237
    }
}

impl fmt::Display for MassFlow {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{:.4} kg/s", self.kg_per_sec)
    }
}

/// Physical thrust representation
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize)]
pub struct Thrust {
    newtons: f64,
}

impl Thrust {
    pub const ZERO: Self = Self { newtons: 0.0 };

    #[inline]
    pub fn from_newtons(newtons: f64) -> Self {
        Self { newtons }
    }

    #[inline]
    pub fn from_kilonewtons(kn: f64) -> Self {
        Self { newtons: kn * 1000.0 }
    }

    #[inline]
    pub fn from_lbf(lbf: f64) -> Self {
        Self { newtons: lbf * 4.4482216152605 }
    }

    #[inline]
    pub fn as_newtons(&self) -> f64 {
        self.newtons
    }

    #[inline]
    pub fn as_kilonewtons(&self) -> f64 {
        self.newtons / 1000.0
    }

    #[inline]
    pub fn as_lbf(&self) -> f64 {
        self.newtons / 4.4482216152605
    }
}

impl fmt::Display for Thrust {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{:.2} kN", self.as_kilonewtons())
    }
}

/// Propellant kind enumeration
#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Serialize, Deserialize)]
pub enum PropellantKind {
    LiquidOxygen,
    LiquidMethane,
    GaseousNitrogen,
    GaseousHelium,
    TriethylaluminumTriethylborane,
    Water,
}

impl fmt::Display for PropellantKind {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Self::LiquidOxygen => write!(f, "LOX"),
            Self::LiquidMethane => write!(f, "LCH4"),
            Self::GaseousNitrogen => write!(f, "GN2"),
            Self::GaseousHelium => write!(f, "GHe"),
            Self::TriethylaluminumTriethylborane => write!(f, "TEA-TEB"),
            Self::Water => write!(f, "H2O"),
        }
    }
}

/// Health and operational status flags
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize, Deserialize)]
pub struct HealthFlags(pub u32);

impl HealthFlags {
    pub const NOMINAL: Self = Self(0x0000_0000);
    pub const WARNING_HIGH: Self = Self(0x0000_0001);
    pub const WARNING_LOW: Self = Self(0x0000_0002);
    pub const REDLINE_HIGH: Self = Self(0x0000_0004);
    pub const REDLINE_LOW: Self = Self(0x0000_0008);
    pub const SENSOR_DISCONNECTED: Self = Self(0x0000_0010);
    pub const SENSOR_OUT_OF_RANGE: Self = Self(0x0000_0020);
    pub const RATE_OF_CHANGE_EXCEEDED: Self = Self(0x0000_0040);
    pub const STALE_DATA: Self = Self(0x0000_0080);
    pub const REDUNDANCY_MISMATCH: Self = Self(0x0000_0100);

    #[inline]
    pub fn is_nominal(&self) -> bool {
        self.0 == 0
    }

    #[inline]
    pub fn has_redline(&self) -> bool {
        (self.0 & (Self::REDLINE_HIGH.0 | Self::REDLINE_LOW.0)) != 0
    }

    #[inline]
    pub fn set(&mut self, flag: Self) {
        self.0 |= flag.0;
    }

    #[inline]
    pub fn clear(&mut self, flag: Self) {
        self.0 &= !flag.0;
    }

    #[inline]
    pub fn contains(&self, flag: Self) -> bool {
        (self.0 & flag.0) == flag.0
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_pressure_conversions() {
        let p = Pressure::from_bar(10.0);
        assert!((p.as_pascals() - 1_000_000.0).abs() < 1e-6);
        assert!((p.as_mpa() - 1.0).abs() < 1e-6);
        let p_psi = Pressure::from_psi(145.038);
        assert!((p_psi.as_bar() - 10.0).abs() < 1e-2);
    }

    #[test]
    fn test_temperature_cryo() {
        let t_lox = Temperature::LOX_NORMAL_BOILING;
        assert!(t_lox.is_cryogenic());
        assert!((t_lox.as_celsius() - (-182.96)).abs() < 0.1);

        let t_ambient = Temperature::AMBIENT_STANDARD;
        assert!(!t_ambient.is_cryogenic());
    }

    #[test]
    fn test_health_flags() {
        let mut flags = HealthFlags::NOMINAL;
        assert!(flags.is_nominal());
        assert!(!flags.has_redline());

        flags.set(HealthFlags::REDLINE_HIGH);
        assert!(!flags.is_nominal());
        assert!(flags.has_redline());
        assert!(flags.contains(HealthFlags::REDLINE_HIGH));
        assert!(!flags.contains(HealthFlags::WARNING_HIGH));

        flags.clear(HealthFlags::REDLINE_HIGH);
        assert!(flags.is_nominal());
    }
}
