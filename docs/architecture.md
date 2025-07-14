# Ullage System Architecture

Ullage is a hard-real-time test stand executive, telemetry signal processing engine, and cryogenic automation framework designed for liquid rocket propulsion test articles. It couples a deterministic Rust host core with a high-throughput, sandboxed Rhai automation scripting runtime and formal Sail hardware specifications.

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

## Layered Architecture Decomposition

The system is organized into four primary architectural tiers:

### 1. Rhai Script Automation Layer (`scripts/`)
The top-level operational intelligence is expressed entirely in Rhai scripts. Over 33,000 lines of modular Rhai routines define:
- Physical models for two-phase cryogenic fluid transfer, tank pressurization, and equilibrium combustion thermodynamics.
- Feed system sequencing: automated cold shock chilldown, helium line purges, igniter flame verification, main valve timing, and closed-loop chamber pressure throttling.
- Real-time diagnostic monitors: acoustic roughness estimators, sensor cross-validation, and seal degradation tracking.

Rhai scripts run inside an isolated sandboxed environment with strict instruction budgets (fuel accounting up to 500,000 operations per tick) and maximum call stack depths of 64 levels. This prevents infinite recursion, unbounded allocations, or timing starvation in the real-time execution loop.

### 2. Rust Host Engine Core (`src/`)
The native host provides microsecond-deterministic services to the script runtime:
- **Telemetry Processing (`src/telemetry/`)**: A lock-free single-producer single-consumer (SPSC) ring buffer queues sensor samples from high-frequency physical transducers. A second-order biquad IIR filter chain computes low-pass, high-pass, and notch filtered signals, while rolling variance windows calculate sensor turbulence metrics.
- **Digital Signal Processing (`src/dsp/`)**: Fast Fourier Transform (Radix-2 Cooley-Tukey with Hann windowing) processes chamber dynamic pressure transducers (`PT-301`) at 10 kHz to track first longitudinal (1L), first tangential (1T), and first radial (1R) acoustic resonant modes, computing an instantaneous combustion roughness index.
- **Safety Interlock & Redline Matrix (`src/safety/`)**: An autonomous 8-state safety machine tracks test stand operating states (`SafeShutdown`, `PurgeStandby`, `CryoChilldown`, `IgniterArmed`, `HotFireActive`, `EngineShutdown`, `EmergencyAbort`, `FaultLatched`). Tripped redlines trigger emergency abort routines within 5 microseconds, overriding any running script commands and commanding all propellant valves closed while opening high-pressure nitrogen quench valves.
- **Hardware Abstraction Layer (`src/hardware/`)**: Models physical pneumatic valve transit times, seal stiction, pintle linear actuator backlash and motor current dynamics, Kelvin four-wire PMU resistance measurements, and dual optical flame sensors.

### 3. Formal Sail Specification Layer (`sail/`)
To ensure safety-critical guarantees cannot be bypassed by software regressions:
- A formal register map is specified in Sail (`sail/ullage_registers.sail`), formalizing register read/write bitmasks, permissions, and latch behaviors.
- The safety interlock state machine is formalized (`sail/safety_interlock.sail`), proving that transitions out of `SafeShutdown` require explicit multi-condition arming, and that an emergency trip condition immediately transitions the hardware to `EmergencyAbort` regardless of current operational register states.
- Mathematical invariants are formalized (`sail/formal_invariants.sail`), verifying that valve overlaps between oxidizer and fuel during shutdown cannot exceed hard limits.

### 4. Telemetry Distribution & Standard ATE Formats
- **Binary Network Framing**: Transmits 28-byte packed telemetry frames over high-speed links with magic synchronization header `0x55AA7E1E`, CRC-16 data integrity checks, and packed physical health bitfields.
- **Semiconductor / ATE STDF-v4 Logging**: Automatically writes binary Standard Test Data Format (STDF-v4) records (`FAR`, `ATR`, `WIR`, `PIR`, `PTR`, `PRR`, `MRR`) for integration into automated aerospace test data pipelines.
- **C Foreign Function Interface (`c_api/`)**: Clean C headers and shared library export symbols (`ullage_engine_create`, `ullage_step_telemetry`, `ullage_eval_script`) allow embedding into external DAQ hardware controllers.

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

## Telemetry Frame Binary Specification

Each high-frequency packet is strictly 28 bytes, aligned for single-cycle deserialization:

```
 0                   1                   2                   3
 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|       Sync Word 1 (0x55)      |       Sync Word 2 (0xAA)      |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|       Sync Word 3 (0x7E)      |       Sync Word 4 (0x1E)      |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                      Sequence Number (u32)                    |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                                                               |
+                     Timestamp Nanoseconds (u64)               +
|                                                               |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                   Chamber Pressure (f32, Pa)                  |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                 LOX Inlet Temperature (f32, K)                |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                    Mass Flow Rate (f32, kg/s)                 |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                       Thrust (f32, N)                         |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|           Health Bitfield (u16)           |     CRC-16        |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
```

### Health Bitfield Allocation
- `Bit 0 [0x0001]`: Sensor Valid / Healthy
- `Bit 1 [0x0002]`: Cryogenic Thermal Equilibrium Established
- `Bit 2 [0x0004]`: Redline Warning Asserted
- `Bit 3 [0x0008]`: Redline Hard Abort Tripped
- `Bit 4 [0x0010]`: Safety Interlock Latched Active
- `Bit 5 [0x0020]`: Watchdog Heartbeat Healthy
- `Bit 6 [0x0040]`: Pintle Throttler In Position
- `Bit 7 [0x0080]`: Torch Igniter Flame Verified
- `Bits 8-15`: Reserved for channel-specific telemetry status flags
