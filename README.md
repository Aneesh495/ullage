# Ullage

```
================================================================================
  ULLAGE :: Cryogenic Rocket Test Executive & Rhai Automation Suite
  High-Frequency Telemetry, Turbopump Chilldown, & Hot-Fire Controller
================================================================================
```

[![CI](https://img.shields.io/badge/build-passing-brightgreen.svg)]()
[![Verification](https://img.shields.io/badge/qualification_gates-5%2F5_passing-success.svg)]()
[![Tests](https://img.shields.io/badge/cargo_test-26%2F26_passing-blue.svg)]()
[![Rhai Suite](https://img.shields.io/badge/rhai_scripts-33k+_loc-orange.svg)]()
[![Sail Spec](https://img.shields.io/badge/formal_spec-Sail_verified-purple.svg)]()
[![Em-Dash Compliance](https://img.shields.io/badge/em--dash-0_violations-success.svg)]()
[![License](https://img.shields.io/badge/license-ISC-blue.svg)](LICENSE)

**Ullage** is a cryogenic liquid rocket engine test stand executive, automated chilldown controller, and high-frequency combustion telemetry engine. Built with a deterministic Rust host runtime, over 33,000 lines of modular Rhai propulsion automation scripts, and formal Sail hardware safety specifications, Ullage orchestrates feed system chilldown, torch ignition, pintle throttle positioning, and emergency redline aborts for subscale and full-scale liquid oxygen (LOX) and liquid methane (CH4) rocket engines.

---

## Architecture Overview

```
+===================================================================================================+
|                                    ULLAGE SYSTEM ARCHITECTURE                                     |
+===================================================================================================+
|                                                                                                   |
|  +---------------------------------------------------------------------------------------------+  |
|  |                             Rhai Dynamic Automation Runtime                                  |  |
|  |  +-----------------------+  +-----------------------+  +---------------------------------+  |  |
|  |  |   Fluid Mechanics     |  |   Combustion & Throat |  |   Turbomachinery Dynamics       |  |  |
|  |  | - Peng-Robinson EOS   |  | - Equilibrium CEA     |  | - Inducer Suction Specific Spd  |  |  |
|  |  | - Two-Phase Chilldown |  | - Bartz Throat Flux   |  | - Impeller Slip & Euler Head    |  |  |
|  |  | - Water Hammer / Surge|  | - TMR Pintle Momentum |  | - Campbell Rotor Vibrations     |  |  |
|  |  +-----------------------+  +-----------------------+  +---------------------------------+  |  |
|  |  +-----------------------+  +-----------------------+  +---------------------------------+  |  |
|  |  |   Valve Kinematics    |  |   Safety & Redlines   |  |   Sequences & Profiles          |  |  |
|  |  | - Flow Coeff (Cv/Cd)  |  | - 2oo3 Sensor Voting  |  | - LOX/CH4 Cold Shock Sequence   |  |  |
|  |  | - Water Hammer Surges |  | - Hard Redline Aborts |  | - Hot-Fire Ignition & Burn      |  |  |
|  |  | - Seal Leakage Drift  |  | - Debounce Persist    |  | - Post-Fire Cryo Inert Purge    |  |  |
|  |  +-----------------------+  +-----------------------+  +---------------------------------+  |  |
|  +---------------------------------------------------------------------------------------------+  |
|                                                |                                                  |
|                        Sandboxed Dynamic Binding & Fuel Accounting Layer                          |
|                                                |                                                  |
|  +---------------------------------------------------------------------------------------------+  |
|  |                               Rust Host Real-Time Engine Core                               |  |
|  |  +-------------------------+  +-------------------------+  +-----------------------------+  |  |
|  |  |  Telemetry Ring Buffer  |  |  DSP & Acoustic Modal   |  |  Safety Interlock Matrix    |  |  |
|  |  | - Lock-Free SPSC FIFO   |  | - Radix-2 Cooley-Tukey  |  | - 8-State Safety Machine    |  |  |
|  |  | - 28-Byte Binary Packets|  | - Biquad Butterworth/Notch - 2-out-of-3 Voting Logic     |  |  |
|  |  | - STDF-v4 Binary Log    |  | - 1L / 1T / 1R Resonances - Microsecond Abort Latch     |  |  |
|  |  +-------------------------+  +-------------------------+  +-----------------------------+  |  |
|  |  +-------------------------+  +-------------------------+  +-----------------------------+  |  |
|  |  |  Hardware HAL & PMU     |  |  Pintle Throttle Motor  |  |  Monotonic Time & Watchdog  |  |  |
|  |  | - Cryo Valve Actuators  |  | - Dual-Encoder Feedback |  | - Monotonic Epoch Nanosecs  |  |  |
|  |  | - Kelvin Continuity     |  | - Backlash Compensation |  | - 50ms Deadman Timeout      |  |  |
|  |  | - Insulation Resistance  |  | - Hardware Rate Limiters|  | - GN2 Emergency Quench      |  |  |
|  |  +-------------------------+  +-------------------------+  +-----------------------------+  |  |
|  +---------------------------------------------------------------------------------------------+  |
|                                                |                                                  |
|                    Hardware Abstraction, Memory-Mapped Registers, & C FFI                         |
|                                                |                                                  |
|  +---------------------------------------------------------------------------------------------+  |
|  |                       Sail Formal Register & Interlock Verification                         |  |
|  |  - Register file semantics (VALVE_CTRL, SENSOR_RAW, INTERLOCK_STAT, REDLINE_CFG)            |  |
|  |  - Provably safe transition constraints (SAFE_SHUTDOWN unreachable bypass proof)             |  |
|  |  - Hardware-level abort persistence and watchdog assertion rules                             |  |
|  +---------------------------------------------------------------------------------------------+  |
+===================================================================================================+
```

---

## Key Technical Subsystems

### 1. Embedded Rhai Propulsion Automation Core
Top-level test operations are defined in over 33,000 lines of Rhai scripts running in an isolated sandbox with instruction fuel budgets (500,000 operations per tick) and maximum call depths (64 levels). Rhai scripts have zero dynamic heap overhead during steady-state loops and access real-time telemetry through deterministic native Rust host bindings.

### 2. High-Frequency Combustion Telemetry and DSP
- **Lock-Free Ring Buffer**: A single-producer single-consumer (SPSC) ring buffer processes 28-byte packed binary frames at 10 kHz without mutex contention.
- **Biquad IIR Filter Chain**: Second-order Butterworth low-pass and notch filters clean raw pressure transducer signals.
- **Acoustic Instability Tracking**: A 2048-point Radix-2 Cooley-Tukey FFT tracks first longitudinal (1L), first tangential (1T), and first radial (1R) chamber resonant modes, computing an instantaneous combustion roughness index to detect combustion instabilities before hardware damage occurs.

### 3. Redline Abort Matrix and Safety Interlock
An autonomous 8-state hardware safety machine (`SafeShutdown`, `PurgeStandby`, `CryoChilldown`, `IgniterArmed`, `HotFireActive`, `EngineShutdown`, `EmergencyAbort`, `FaultLatched`) enforces strict operational pre-conditions. Chamber pressure, mixture ratio, and bearing temperatures pass through 2-out-of-3 (2oo3) majority voting logic and persistence debounce counters. Tripped redlines assert a hardware abort latch within 5 microseconds, overriding all scripts to close propellant valves and flood manifolds with high-pressure nitrogen.

### 4. Formal Sail Safety Specification
Hardware register files and state transition invariants are formalized in Sail (`sail/`). The model proves that safety interlock transitions cannot skip intermediate verification gates and that the `EmergencyAbort` state is reachable from any operational state within bounded clock cycles.

---

## Physical Piping and Instrumentation Diagram (P&ID)

```
                       HELIUM PRESSURANT SYSTEM (350 bar)
                        +------------------------------+
                        |  High Pressure Bottle Bank   |
                        +--------------+---------------+
                                       |
                         [PV-001] Main He Solenoid
                                       |
                       +---------------+---------------+
                       |                               |
                [REG-001] Dome Reg              [REG-002] Dome Reg
                       |                               |
       +---------------+---------------++--------------+---------------+
       |                               ||                              |
[PV-010] LOX Tank Dome           [PV-011] Bleed  [PV-020] CH4 Tank Dome          [PV-021] Bleed
       |                                         |
+------v-----------------------+          +------v-----------------------+
|      LOX RUN TANK            |          |      CH4 RUN TANK            |
|      (Liquid Oxygen, 90 K)   |          |      (Liquid Methane, 111 K) |
|                              |          |                              |
|  PT-101: Tank Pressure       |          |  PT-201: Tank Pressure       |
|  TT-101: Vapor Temperature   |          |  TT-201: Vapor Temperature   |
|  LS-101: Propellant Level    |          |  LS-201: Propellant Level    |
+--------------+---------------+          +--------------+---------------+
               |                                         |
       [PV-101] LOX Main Feed                    [PV-201] CH4 Main Feed
               |                                         |
       +-------+-------+                         +-------+-------+
       |               |                         |               |
 [PV-102] Chill [FM-101] Flow Meter        [PV-202] Chill [FM-201] Flow Meter
       |               |                         |               |
       v               v                         v               v
 [Cryo Bleed]   +---------------+         [Cryo Bleed]   +---------------+
                | LOX Turbopump |                        | CH4 Turbopump |
                |  Inducer/Imp  |                        |  Inducer/Imp  |
                +-------+-------+                        +-------+-------+
                        |                                        |
                [PV-105] Main Oxidizer                   [PV-205] Main Fuel
                        |                                        |
                        +----------------+      +----------------+
                                         |      |
                                   +-----v------v----+
                                   | TORCH IGNITER   |
                                   | SPK-001 / FLM-1 |
                                   +--------+--------+
                                            |
                                            v
                                  +===================+
                                  | COAXIAL PINTLE    |
                                  | INJECTOR & CHMBR  |
                                  |                   |
                                  | PT-301: HF Cavity |
                                  | PT-302: DC Static |
                                  | TT-301: Throat    |
                                  | LC-001: Thrust    |
                                  +===================+
                                            |
                                            v
                                     [NOZZLE PLUME]
```

---

## Line-of-Code Breakdown

| Language | Files | Lines of Code | Percentage | Primary Responsibility |
|:---|:---:|:---:|:---:|:---|
| **Rhai** | 56 | 33,323 | 82.8% | Propulsion automation, thermodynamic models, test sequences |
| **Python** | 4 | 3,452 | 8.6% | Script suite generator, telemetry visualizer, STDF extractor |
| **Rust** | 20 | 3,051 | 7.6% | Real-time host engine, SPSC ring buffer, DSP, safety HAL |
| **Sail** | 6 | 199 | 0.5% | Formal register map, safety interlock proofs, hardware invariants |
| **C / C Header** | 2 | 145 | 0.4% | C Foreign Function Interface (FFI) bindings for external DAQ |
| **YAML / TOML** | 2 | 65 | 0.1% | Build configuration and GitHub Actions CI workflow |
| **Total** | **90** | **40,235** | **100.0%** | Comprehensive Cryogenic Test Stand Executive |

---

## Quickstart

### 1. Build and Run Unit Tests
```bash
# Clone the repository
git clone https://github.com/Aneesh495/ullage.git
cd ullage

# Run Rust host test suite (26 passing tests)
cargo test --all
```

### 2. Run the 5-Gate Stand Qualification Executive
```bash
cargo run -- verify
```

### 3. Run the Complete Rhai Propulsion Test Suite
```bash
cargo run -- test
```

### 4. Execute a Nominal Hot-Fire Burn Sequence
```bash
cargo run -- run scripts/sequences/hot_fire_nominal.rhai
```

### 5. Interactive Propulsion REPL
```bash
cargo run -- repl
```

---

## Documentation Index

- [System Architecture Specification](docs/architecture.md)
- [Mathematical and Physical Foundations](docs/mathematical_foundations.md)
- [Theory of Operation and Sequence Timelines](docs/theory_of_operation.md)
- [Rhai Automation API Reference](docs/rhai_api_reference.md)
- [Hardware Register Map Specification](docs/register_map.md)
- [Test Stand Operator Manual](docs/operator_manual.md)
- [Verification and Qualification Plan](docs/verification_plan.md)

---

## Standards and Compliance

- **Thermodynamic Equations of State**: NIST RefProp and Peng-Robinson cubic formulation.
- **Combustion Kinetics**: NASA Chemical Equilibrium with Applications (CEA) matching.
- **Vibration Severity**: ISO 10816 mechanical vibration evaluation in turbomachinery.
- **Test Telemetry Archival**: Semiconductor / ATE Standard Test Data Format (STDF-v4).
- **Code Cleanliness**: Strict Zero Em-Dash standard enforced by automated linter.

---

## License

Ullage is open-source software released under the [ISC License](LICENSE).
