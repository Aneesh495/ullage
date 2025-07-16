# Rhai Automation API Reference

This reference covers the embedded Rhai scripting modules and the native Rust host bindings available within the Ullage automation environment.

---

## 1. Native Rust Host Bindings

The Rust runtime registers deterministic hardware access, telemetry inspection, and safety commands directly into the Rhai execution scope.

### Sensor and Telemetry Access
- `get_sensor_pressure(tag: String) -> f64`: Returns calibrated line pressure in Pascals for transducer `tag` (e.g. `"PT-101"`, `"PT-301"`).
- `get_sensor_temperature(tag: String) -> f64`: Returns temperature in Kelvin for RTD/thermocouple `tag` (e.g. `"TT-101"`).
- `get_sensor_flow(tag: String) -> f64`: Returns mass flow rate in kilograms per second for flow meter `tag` (e.g. `"FM-101"`).
- `get_sensor_thrust(tag: String) -> f64`: Returns axial thrust in Newtons for load cell `tag` (e.g. `"LC-001"`).

### Valve and Actuator Control
- `set_valve_state(tag: String, open: bool)`: Commands pneumatic or solenoid valve open (`true`) or closed (`false`).
- `get_valve_position(tag: String) -> f64`: Returns actual physical valve position from 0.0 (fully seated) to 1.0 (100% open).
- `set_pintle_target(position: f64)`: Commands linear pintle actuator position from 0.0 (closed) to 1.0 (full stroke).
- `get_pintle_position() -> f64`: Returns current optical encoder position reading of pintle actuator.

### Ignition and Diagnostics
- `igniter_command_spark(enable: bool)`: Energizes or de-energizes the 50 Hz torch exciter coil.
- `igniter_read_flame() -> bool`: Returns optical photodiode confirmation of pilot flame presence.
- `pmu_measure_resistance(channel: String) -> f64`: Executes a four-wire Kelvin resistance measurement in ohms.

### Safety and Interlock Matrix
- `interlock_get_state() -> i64`: Returns integer code of current safety interlock state (0 to 7).
- `interlock_request_transition(target_state: i64) -> bool`: Requests a state transition. Returns `true` if all pre-conditions are satisfied.
- `interlock_trip_abort(reason_code: i64)`: Immediately latches hardware emergency abort. Overrides all running scripts.

### Timing and Logging
- `clock_monotonic_ns() -> i64`: Returns monotonic nanoseconds since test stand engine initialization.
- `clock_sleep_ms(ms: i64)`: Deterministically yields execution for specified milliseconds.
- `log_info(msg: String)`: Logs informational message to console and STDF-v4 test record.
- `log_warn(msg: String)`: Logs operational warning message.
- `log_error(msg: String)`: Logs fault condition message.

---

## 2. Rhai Script Modules Overview

The script suite is partitioned into 10 cohesive packages in the `scripts/` directory:

### Core Library (`scripts/core/`)
- `units.rhai`: Engineering unit conversions (Pa, bar, psi, K, C, kg/s, lbm/s, N, lbf).
- `math_ext.rhai`: Numerical root finders (Newton-Raphson, bisection), polynomial evaluators, numerical integration (Simpson rule), linear interpolator.
- `matrix.rhai`: Matrix manipulation, vector dot and cross products, determinant, 2x2 and 3x3 matrix inverses.
- `signals.rhai`: Signal processing filters (moving average, exponential smoothing, median filter, peak detection).

### Fluid Mechanics (`scripts/fluid/`)
- `thermo.rhai`: Peng-Robinson cubic equation of state, compressibility factors ($Z$), saturation curves, enthalpy departures for LOX, LCH4, GN2, He.
- `cryo_chf.rhai`: Boiling heat transfer regimes, Zuber critical heat flux, Berenson minimum heat flux, Bromley film boiling, Rohsenow nucleate boiling.
- `feed_line.rhai`: Cryogenic feed line pressure drop, Darcy-Weisbach friction, Colebrook-White implicit formulation, minor loss summation.
- `water_hammer.rhai`: Joukowsky rapid valve transient pressure surges, acoustic wave propagation speed in liquid cryogens ($c_{wave}$).
- `pressurization.rhai`: Run tank ullage pressurization dynamics, gas mass balance, heat transfer to liquid interface and metal tank wall.

### Combustion Thermodynamics (`scripts/combustion/`)
- `cea_equilibrium.rhai`: Chemical equilibrium combustion thermodynamics for LOX/CH4, characteristic exhaust velocity ($c^*$), specific heat ratio ($\gamma$).
- `bartz_throat.rhai`: Bartz empirical throat heat flux calculation, recovery temperature, gas-side heat transfer coefficient.
- `pintle_tmr.rhai`: Coaxial pintle Total Momentum Ratio (TMR), spray cone half-angle, radial-to-axial momentum balance.
- `droplet_smd.rhai`: Sauter Mean Diameter ($D_{32}$) droplet breakup models, aerodynamic Weber number, liquid sheet disintegration.
- `acoustic_modes.rhai`: Moore-Fung cylindrical chamber acoustic resonance solver (1L, 2L, 1T, 2T, 1R modes).

### Turbomachinery Dynamics (`scripts/turbomachinery/`)
- `inducer_npsh.rhai`: Net Positive Suction Head available vs required ($NPSH_A$ / $NPSH_R$), suction specific speed ($S_s$).
- `impeller_euler.rhai`: Euler turbopump head rise, Stodola slip factor, velocity triangle vector decomposition.
- `bearing_thermal.rhai`: Cryogenic bearing frictional heat dissipation and coolant flow thermal equilibrium.
- `rotor_vibration.rhai`: Campbell diagram rotor dynamics, critical whirling speeds, ISO 10816 vibration severity limits.
- `cavitation_model.rhai`: Rayleigh-Plesset single bubble dynamics, vapor void fraction growth, cavitation head-drop prediction.

### Valve Dynamics & Kinematics (`scripts/valves/`)
- `valve_flow_cv.rhai`: Incompressible and compressible flow coefficient ($C_v$ and $C_d$) calculations, cavitation index ($\sigma_{cav}$).
- `water_hammer_surge.rhai`: Dynamic valve closing profiles, non-linear area reduction, surge peak suppression.
- `seal_leakage.rhai`: Cryogenic elastomer and metal-to-metal seal leak rate estimation across thermal contraction cycles.
- `pintle_backlash.rhai`: Actuator mechanical backlash tracking, hysteresis modeling, closed-loop position compensation.
- `solenoid_response.rhai`: Solenoid electromagnetic pull-in force, coil $L/R$ electrical time constant, mechanical armature transit time.

### Safety & Interlock Systems (`scripts/safety/`)
- `redline_matrix.rhai`: Redline limit configuration table, upper/lower bounds, debounce persistence filter.
- `interlock_fsm.rhai`: 8-state safety state machine transition rules, pre-condition checklists, arming gates.
- `sensor_voting.rhai`: 2-out-of-3 (2oo3) majority voting logic, sensor deviation detection, outlier rejection.
- `abort_trajectories.rhai`: Controlled emergency shutdown valve sequencing curves to minimize pressure spikes.
- `purge_coordinator.rhai`: High-pressure gaseous nitrogen manifold purge scheduling and valve routing.

### Automated Test Sequences (`scripts/sequences/`)
- `ambient_checkout.rhai`: Pre-test continuity, sensor calibration, valve stroke verification at ambient temperature.
- `manifold_inerting.rhai`: Automated GN2 purge cycles and manifold moisture evacuation.
- `chilldown_auto.rhai`: Closed-loop LOX and LCH4 turbopump chilldown, vapor lock prevention, temperature convergence.
- `igniter_verification.rhai`: Torch igniter spark discharge, pilot valve opening, flame optical verification.
- `hot_fire_nominal.rhai`: Master hot-fire burn executive: ignition timing, throttle ramps, steady-state hold, shutdown.
- `shutdown_post_purge.rhai`: Post-burn safe shutdown sequence, inert gas blanket establishment, data logging finalization.

### High-Frequency Diagnostics (`scripts/diagnostics/`)
- `fft_spectral.rhai`: Script-side spectral analysis, FFT power spectrum computation, dominant harmonic identification.
- `roughness_index.rhai`: Instantaneous combustion roughness RMS calculation from dynamic pressure transducers.
- `cavity_health.rhai`: Acoustic instability margin tracking, resonance proximity alarms.
- `sensor_crossval.rhai`: Redundant transducer cross-validation, drift estimation, faulty sensor flagging.
- `thermal_soakback.rhai`: Post-fire injector head thermal soakback temperature prediction and alert monitoring.
- `seal_drift.rhai`: Long-term valve seat wear and seal compliance degradation tracking across consecutive hot-fires.

### Test Profiles (`scripts/profiles/`)
- `acceptance_test.rhai`: Standard 3.0-second engine acceptance test burn profile.
- `qualification_burn.rhai`: Extended 10.0-second qualification test with multiple throttle steps (60%, 80%, 100%).
- `pulse_train.rhai`: Rapid multi-pulse restart duty cycle test profile (5 pulses, 500 ms on / 500 ms off).
- `deep_throttle.rhai`: Continuous throttling profile testing stability boundary from 40% to 105% rated thrust.
