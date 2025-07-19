# Verification and Qualification Plan

The Ullage test stand executive enforces a multi-tiered defense-in-depth verification strategy designed to ensure absolute physical safety and zero software defects during cryogenic liquid rocket hot-fire testing.

---

## 1. Multi-Tiered Verification Matrix

```
+=============================================================================+
|                      MULTI-TIERED VERIFICATION MATRIX                       |
+=============================================================================+
|                                                                             |
|  [TIER 5] Formal Register & State Invariants (Sail Specification)           |
|           - Mathematical proofs of unreachable bypass states in interlock   |
|           - Formal bitmask assertions on MMIO register read/write guards    |
|                                                                             |
|  [TIER 4] Five-Gate Hardware Qualification Executive (Rust Host Core)       |
|           - Gate 1: Telemetry ring buffer SPSC FIFO & biquad DSP filter     |
|           - Gate 2: Safety interlock trip latches & redline debounce matrix |
|           - Gate 3: Pintle actuator backlash & cryogenic valve transit      |
|           - Gate 4: Radix-2 FFT spectral tracking & acoustic cavity modes   |
|           - Gate 5: Rhai sandboxed script evaluation & fuel accounting      |
|                                                                             |
|  [TIER 3] Rhai Automation Test Harness (10 Modular Script Suites)           |
|           - Thermodynamic state conservation (PR-EOS consistency)          |
|           - CEA equilibrium chemistry & Bartz throat heat flux boundaries   |
|           - Turbomachinery cavitation inception & Euler head accuracy       |
|           - 2oo3 sensor majority voting & fail-safe abort sequences         |
|                                                                             |
|  [TIER 2] Host Engine Unit & Integration Test Suite (Cargo Test)            |
|           - 26 rigorous unit tests spanning memory, math, timing, & HAL     |
|           - Packet serialization round-trip & CRC-16 integrity             |
|           - STDF-v4 ATE record generation & binary layout compliance        |
|                                                                             |
|  [TIER 1] Static Analysis & Code Quality Verification                       |
|           - Zero compiler warnings (`cargo check`, `cargo clippy`)          |
|           - Strict zero em-dash / en-dash unicode compliance scanner        |
|                                                                             |
+=============================================================================+
```

---

## 2. Rust Host Engine Test Suite (26 Passing Tests)

The core test suite is executed via `cargo test --all`:

| Module | Test Identifier | Coverage Description |
|:---|:---|:---|
| `common::time` | `test_clock_monotonicity` | Verifies nanosecond monotonicity across concurrent threads |
| `common::time` | `test_timestamp_conversions` | Validates nanosecond-to-second and epoch calculations |
| `common::time` | `test_budget_exhaustion` | Verifies execution budget timer correctly expires |
| `common::types` | `test_pressure_conversions` | Validates Pa, bar, and psi conversion accuracy |
| `common::types` | `test_temperature_cryo` | Verifies Kelvin-to-Celsius limits near absolute zero |
| `common::types` | `test_health_flags` | Validates bitfield manipulation and flag masking |
| `dsp::fft` | `test_fft_impulse` | Verifies Dirac delta impulse produces flat frequency spectrum |
| `dsp::fft` | `test_fft_pure_sine` | Confirms Radix-2 FFT resolves single frequency peak accurately |
| `dsp::statistics` | `test_chamber_acoustic_frequencies` | Verifies analytical 1L, 1T, 1R cavity frequencies against formula |
| `hardware::actuator` | `test_pintle_throttling` | Validates actuator rate limiter, backlash compensation, and limits |
| `hardware::igniter` | `test_igniter_confirmation` | Validates dual photodiode flame detection thresholds |
| `hardware::igniter` | `test_igniter_flameout_abort` | Confirms immediate abort on flameout during terminal countdown |
| `hardware::pmu` | `test_pmu_continuity` | Validates 4-wire Kelvin resistance calculation and tolerance checks |
| `hardware::valve` | `test_valve_transit` | Verifies pneumatic valve opening/closing kinematic lag curves |
| `safety::interlock` | `test_interlock_flow` | Verifies complete state machine lifecycle transitions |
| `safety::redline` | `test_redline_debounce` | Confirms transient spikes below persistence counter do not abort |
| `safety::redline` | `test_2oo3_voting` | Verifies majority logic trips only when 2 of 3 sensors agree |
| `safety::watchdog` | `test_watchdog_timeout` | Confirms fail-safe pneumatic dump trips if heartbeat is missed |
| `telemetry::filter` | `test_biquad_dc_unity` | Confirms Butterworth low-pass filter exhibits unity gain at DC |
| `telemetry::filter` | `test_rolling_stats` | Verifies rolling mean and variance computations |
| `telemetry::packet` | `test_packet_roundtrip` | Verifies 28-byte binary frame serialization/deserialization |
| `telemetry::packet` | `test_invalid_sync` | Validates rejection of corrupted packet sync words |
| `telemetry::ring_buffer` | `test_ring_buffer_fifo` | Verifies lock-free FIFO ordering under high throughput |
| `telemetry::ring_buffer` | `test_ring_buffer_overrun` | Verifies oldest sample overwrite behavior on buffer saturation |
| `telemetry::sensor` | `test_linear_calibration` | Validates two-point transducer calibration and raw-to-physical scaling |
| `telemetry::stdf` | `test_stdf_generation` | Verifies compliant binary generation of STDF-v4 test records |

---

## 3. Five-Gate Qualification Executive

The automated qualification sequence is executed via `cargo run -- verify`:
1. **Gate 1: Telemetry Ring Buffer and Biquad Filter DSP**: Exercises lock-free buffer with 10,000 synthetic sensor packets, verifying zero sample loss, correct FIFO ordering, and Butterworth low-pass attenuation.
2. **Gate 2: Safety Interlock Latches and Redline Matrix**: Simulates an out-of-family chamber pressure spike, confirming that the 2oo3 voting filter debounces noise but latches an emergency abort within 5 microseconds when persistence criteria are met.
3. **Gate 3: Actuator Kinematics and Valve Response**: Commands a 0% to 100% throttle step to the pintle actuator, verifying rate-limiting (150 mm/s) and backlash hysteresis compensation.
4. **Gate 4: Radix-2 FFT and Acoustic Cavity Resonances**: Injects synthetic multi-frequency acoustic pressure fluctuations into the DSP pipeline and confirms peak detection at 1,450 Hz (1L mode) and 5,200 Hz (1T mode).
5. **Gate 5: Rhai Sandboxed Script Runtime**: Evaluates a mathematical expressions script, confirming correct host binding registrations, scope persistence, and fuel budget enforcement.

---

## 4. Bug Regression Case Studies

During development, multiple technical edge cases were uncovered and permanently resolved with regression tests:

### Bug 1: Rhai Engine Generic Type Bounds Under Sync Feature
- **Failure**: Evaluating scripts with `eval_with_scope<T>` failed to compile because the `rhai/sync` feature requires evaluated types to implement `Send + Sync + 'static`.
- **Root Cause**: The wrapper method `eval<T>` in `src/script/engine.rs` only required `T: Clone + 'static`.
- **Resolution**: Updated the generic bound to `pub fn eval<T: Clone + Send + Sync + 'static>(&self, script: &str) -> Result<T, String>`. Added compilation test to prevent regression.

### Bug 2: Relative Module Path Prefix Redundancy
- **Failure**: Executing test runner `scripts/tests/test_suite.rhai` reported `Script file not found: scripts/scripts/tests/test_suite.rhai`.
- **Root Cause**: `ScriptModuleLoader::compile_file` blindly prefixed `self.base_dir` (`scripts/`) without checking if the supplied path already contained `scripts/`.
- **Resolution**: Updated `compile_file` to first check if the target path exists directly before falling back to prepending `base_dir`.

### Bug 3: Missing Math Primitives in Sandboxed Rhai Global Scope
- **Failure**: Standalone scripts calling `powf`, `math_clamp`, or `smoothstep` threw `Function not found` runtime exceptions.
- **Root Cause**: Standard floating-point mathematical power and clamping operations are not enabled by default in Rhai when running without standard library dependencies.
- **Resolution**: Explicitly registered `powf`, `pow`, `sqrt`, `exp`, `ln`, `log10`, `sin`, `cos`, `tan`, `asin`, `acos`, `atan`, `atan2`, `abs`, `min`, `max`, `clamp`, `math_clamp`, `math_sign`, `math_abs`, and `smoothstep` into the native engine in `src/script/bindings.rs`. Added `test_fluid.rhai` assertions to continuously verify availability.

### Bug 4: Em-Dash Scanner False Positives in Rust Binary Artifacts
- **Failure**: `check_no_em_dash.py` detected false-positive byte sequences matching UTF-8 dashes inside compiled `.rmeta` metadata files in `target/debug/deps/`.
- **Root Cause**: The scanner did not exclude the Cargo `target/` build directory or binary file extensions.
- **Resolution**: Added `"target"` to `EXCLUDE_DIRS` and `.rmeta`, `.rlib`, `.d`, `.o` to `EXCLUDE_EXTS` in `tools/check_no_em_dash.py`.
