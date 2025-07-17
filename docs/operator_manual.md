# Test Stand Operator Manual

This manual provides operational guidance for test stand technicians, instrumentation engineers, and propulsion operators running test sequences with Ullage.

---

## 1. System Requirements and Build

### Prerequisites
- Rust compiler and Cargo toolchain (1.80+ recommended)
- Python 3.10+ with `matplotlib` and `numpy` (for telemetry plotting tools)
- Clang / GCC (optional, for C FFI client integration)

### Building the Project
From the repository root:
```bash
# Build optimized release binary
cargo build --release

# Run internal unit test suite
cargo test --all
```

The resulting executable is located at `target/release/ullage`.

---

## 2. CLI Command Reference

The `ullage` command-line utility provides five primary subcommands:

### 1. `ullage info`
Displays system metadata, build configurations, and physical sensor channel mappings:
```bash
cargo run -- info
```
Output includes registered sensor channels, maximum redline thresholds, and fuel limits.

### 2. `ullage verify`
Executes the comprehensive 5-gate test stand qualification pass:
```bash
cargo run -- verify
```
Expected output:
```
================================================================================
  ULLAGE :: Cryogenic Rocket Test Executive & Rhai Automation Suite
  High-Frequency Telemetry, Turbopump Chilldown, & Hot-Fire Controller
  Copyright (c) 2026 Aneesh Krishna Parthasarathy. Licensed under ISC.
================================================================================
[GATE 1/5] Verifying telemetry ring buffer and biquad filter DSP...
  -> Telemetry DSP: PASSED
[GATE 2/5] Verifying safety interlock trip latches and redline matrix...
  -> Safety Interlock Matrix: PASSED
[GATE 3/5] Verifying pintle actuator and cryogenic valve kinematics...
  -> Actuator Kinematics: PASSED
[GATE 4/5] Verifying Radix-2 FFT and acoustic cavity mode detection...
  -> Acoustic Mode Tracker: PASSED
[GATE 5/5] Verifying Rhai sandboxed script evaluation runtime...
  -> Rhai Engine Runtime: PASSED (Eval result = 42)

================================================================================
  QUALIFICATION STATUS: ALL 5 GATES VERIFIED AND PASSING (100% OPERATIONAL)
================================================================================
```

### 3. `ullage test`
Executes the master Rhai propulsion automation test runner (`scripts/tests/test_suite.rhai`):
```bash
cargo run -- test
```
This runs unit tests, physical conservation law assertions, and stability boundaries across all 10 script subdirectories.

### 4. `ullage run <script_path>`
Executes an operational script within the sandboxed runtime:
```bash
# Run nominal hot-fire profile
cargo run -- run scripts/sequences/hot_fire_nominal.rhai

# Run automated chilldown loop
cargo run -- run scripts/sequences/chilldown_auto.rhai
```

### 5. `ullage repl`
Launches the interactive Rhai propulsion command shell:
```bash
cargo run -- repl
```
Example interactive session:
```rhai
ullage> let p = get_sensor_pressure("PT-301");
ullage> print("Chamber pressure: " + p + " Pa");
ullage> let npsh = get_sensor_pressure("PT-101") - 150000.0;
ullage> print("LOX Pump NPSH: " + npsh);
```

---

## 3. Post-Test Data Analysis Tools

### Telemetry Plotting (`tools/telem_plot.py`)
Generates high-resolution multi-panel performance plots from simulated or logged test stand runs:
```bash
python3 tools/telem_plot.py
```
Panels generated:
1. Combustion chamber pressure ($P_c$) and pintle throttle position vs. time.
2. LOX and Methane mass flow rates ($\dot{m}_{ox}$, $\dot{m}_{fuel}$) and instantaneous mixture ratio ($O/F$).
3. Turbopump inlet and bearing temperatures during chilldown and hot-fire soakback.
4. Chamber high-frequency acoustic spectrum with 1L and 1T resonant mode power tracking.

### ATE STDF-v4 Data Extraction (`tools/generate_stdf.py`)
Inspects binary Standard Test Data Format (STDF-v4) records generated during burn sequences:
```bash
python3 tools/generate_stdf.py
```
Prints parsed parametric test records (`PTR`), pin continuity logs, and test yield summaries.

---

## 4. Emergency Abort and Fault Reset Protocol

When an automatic redline trips or an operator issues an emergency stop:
1. **Immediate Stand State**: The interlock transitions instantly to `EmergencyAbort`. All propellant valves snap shut, high-pressure GN2 purges activate, and the pintle actuator retracts.
2. **Investigation State**: Once pressures decay below 2.0 bar, the stand transitions to `FaultLatched`.
3. **Reset Procedure**:
   - Inspect `REG_REDLINE_TRIP` bitfield to identify the trip source (e.g. chamber overpressure vs. acoustic instability).
   - Perform physical leak check and verify manifold purge pressures.
   - Insert and turn the hardware Safety Override Key on the control console.
   - Execute reset script command:
     ```rhai
     interlock_request_transition(0); // Return to SafeShutdown
     ```
