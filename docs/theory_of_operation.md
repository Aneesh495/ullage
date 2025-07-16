# Theory of Operation

The Ullage test stand executive provides automated sequencing, high-frequency closed-loop control, and deterministic fault protection for high-pressure cryogenic liquid rocket engine testing. This document describes the operational timeline, state transitions, closed-loop governors, and abort matrices.

---

## 1. Operational State Transitions

The test stand operates under an autonomous 8-state safety state machine enforced natively in Rust (`src/safety/interlock.rs`) and verified formally in Sail (`sail/safety_interlock.sail`):

```
+-----------------------------------------------------------------------------+
|                            STATE TRANSITION GRAPH                           |
+-----------------------------------------------------------------------------+
|                                                                             |
|                      +------------------------+                             |
|                      |      SafeShutdown      | <-----------------------+   |
|                      +-----------+------------+                         |   |
|                                  | (Arm Stand)                          |   |
|                                  v                                      |   |
|                      +------------------------+                         |   |
|                      |      PurgeStandby      |                         |   |
|                      +-----------+------------+                         |   |
|                                  | (He Dome Press & Bleed Open)         |   |
|                                  v                                      |   |
|                      +------------------------+                         |   |
|                      |     CryoChilldown      |                         |   |
|                      +-----------+------------+                         |   |
|                                  | (Thermal Equil Established)          |   |
|                                  v                                      |   |
|                      +------------------------+                         |   |
|                      |      IgniterArmed      |                         |   |
|                      +-----------+------------+                         |   |
|                                  | (Dual Flame Confirmed)               |   |
|                                  v                                      |   |
|                      +------------------------+                         |   |
|                      |     HotFireActive      |                         |   |
|                      +-----------+------------+                         |   |
|                                  | (Burn Complete)                      |   |
|                                  v                                      |   |
|                      +------------------------+                         |   |
|                      |     EngineShutdown     |                         |   |
|                      +-----------+------------+                         |   |
|                                  | (Purge Complete)                     |   |
|                                  +--------------------------------------+   |
|                                                                             |
|      ANY STATE (Except SafeShutdown) --[Redline Tripped / Abort]-->         |
|                      +------------------------+                             |
|                      |     EmergencyAbort     |                             |
|                      +-----------+------------+                             |
|                                  | (Hardware Safe Acknowledged)             |
|                                  v                                          |
|                      +------------------------+                             |
|                      |      FaultLatched      |                             |
|                      +------------------------+                             |
+-----------------------------------------------------------------------------+
```

### State Definitions
1. **SafeShutdown [0x00]**: Default quiescent state. All propellant valves closed, bleed valves vented, igniter disarmed, high-pressure helium isolation valves closed.
2. **PurgeStandby [0x01]**: Gaseous nitrogen (GN2) sweeps test manifolds to remove moisture and oxygen prior to propellant transfer. Dew point must register below -65 C.
3. **CryoChilldown [0x02]**: Propellant feed valves cycle to condition pumps and injector manifolds down to cryogenic liquid temperatures (LOX < 95 K, LCH4 < 115 K).
4. **IgniterArmed [0x03]**: 50 Hz torch spark active, pilot valves open, dual optical flame detectors monitored.
5. **HotFireActive [0x04]**: Main valves open, closed-loop chamber pressure and mixture ratio governors active.
6. **EngineShutdown [0x05]**: Controlled step-down, propellant valve closure sequence, and immediate high-pressure manifold purge.
7. **EmergencyAbort [0x06]**: Latched abort condition. Hardware overrides script commands: propellant valves close within 25 ms, purge valves snap open, spark killed.
8. **FaultLatched [0x07]**: Post-abort investigation state. Requires explicit operator key reset and facility safety clearance to return to SafeShutdown.

---

## 2. Master Hot-Fire Operational Timeline

```
T - 1800 s: Facility Electrical & PMU Verification
             - Kelvin four-wire resistance check on valve solenoids (target: 12.4 +/- 0.8 ohms)
             - Spark exciter coil continuity check (target: 4.2 +/- 0.4 ohms)
             - Sensor transducer excitation voltage verification (+24.0 VDC rail)

T - 900 s : Manifold Inerting & Purging
             - High-pressure GN2 blowdown through LOX and LCH4 manifolds
             - Moisture sensor cross-check (dewpoint < -65 C required)

T - 600 s : Cryogenic Bleed Line Pre-Cooling
             - Main run tank isolation valves open
             - Bleed valves PV-102 (LOX) and PV-202 (CH4) throttled to 20%
             - Two-phase boiling detected via wall temperature thermocouples

T - 120 s : Tank Ullage Pressurization
             - Helium dome regulators REG-001 and REG-002 commanded active
             - LOX tank ullage settled to 35.0 bar +/- 0.5 bar
             - CH4 tank ullage settled to 32.0 bar +/- 0.5 bar

T - 30 s  : Turbopump Chilldown Convergence Gate
             - Inducer inlet temperature TT-101 verified < 91.5 K
             - Inducer inlet temperature TT-201 verified < 112.5 K
             - Differential pressure across chilldown bypass stable (no vapor flashing)

T - 10 s  : Terminal Count Entry & Watchdog Activation
             - Host real-time watchdog heartbeat active (50 ms timeout)
             - SPSC telemetry ring buffer verified flowing at 10 kHz
             - SCRIPT EXECUTION LOCK: Dynamic script engine takes autonomous stand control

T - 3.0 s : Torch Igniter Activation
             - Spark discharge initiated at 50 Hz (SPK-001)
             - Igniter pilot fuel and oxidizer valves open

T - 1.5 s : Torch Flame Confirmation Gate
             - Dual optical sensors FLM-1 and FLM-2 report > 85% intensity
             - Torch chamber pressure PT-005 rise > 1.5 bar above ambient
             - If not confirmed by T-0.5s: HARD ABORT (fail-safe cutoff)

T - 0.20 s: Fuel Lead Valve Opening
             - Main Fuel Valve (MFV, PV-205) commanded to 100% open
             - Methane fills injector annular passage to establish chamber cooling boundary

T - 0.00 s: Main Oxidizer Valve Opening & Ignition Ramp
             - Main Oxidizer Valve (MOV, PV-105) commanded to 100% open
             - Hyperbolic pressure rise initiated as propellants impinge on pintle

T + 0.25 s: Ignition Transient Stabilization
             - Chamber pressure PT-301 crosses 15 bar (boot-strap verified)
             - Torch igniter deactivated (SPK-001 de-energized)

T + 0.50 s: Pintle Throttle Ramp to 100% Rated Power
             - Pintle actuator extends to nominal 100% position (15.0 kN thrust)
             - Chamber pressure reaches 45.0 bar design setpoint

T + 0.50 s to T + 10.00 s: Main Hot-Fire Steady-State
             - Closed-loop chamber pressure PID governor updates pintle position at 1 kHz
             - Mixture ratio (O/F = 2.60) maintained via electronic trimming
             - Real-time DSP tracks 1L (1,450 Hz) and 1T (5,200 Hz) cavity oscillations

T + 10.00 s: Commanded Engine Shutdown Sequence
             - Main Oxidizer Valve (MOV) commanded CLOSED (T+10.000s)
             - Main Fuel Valve (MFV) commanded CLOSED (T+10.120s)
             - 120 ms fuel trail prevents oxidizer-rich hot streak shutdown erosion

T + 10.15 s: High-Pressure Inert Post-Purge
             - GN2 purge solenoid PV-305 opened at 50 bar
             - Flushes residual liquid propellants out of injector manifolds

T + 60.00 s: Sequence Completed
             - Stand transitioned to SafeShutdown
             - STDF-v4 test data log file closed and finalized
```

---

## 3. Redline Abort Matrix and 2-out-of-3 Voting

To prevent sensor noise or single-channel transducer failure from causing spurious test cancellations, critical test stand safety channels employ 2-out-of-3 (2oo3) majority voting combined with persistence debounce counters:

| Channel Tag | Parameter Description | Warning Threshold | Hard Abort Threshold | Persistence Cycles | Action |
|:---|:---|:---|:---|:---:|:---|
| `PT-301` / `PT-302` / `PT-303` | Chamber Pressure | > 52.0 bar | > 58.0 bar | 3 (300 us) | Immediate shutdown, snap GN2 purge |
| `PT-301` (HF) | Acoustic Roughness Index | > 0.050 | > 0.080 | 5 (500 us) | Actuator throttle back, then abort |
| `TT-101` / `TT-102` | LOX Pump Chilldown Temp | > 95.0 K | > 99.0 K | 10 (1.0 ms) | Inhibit start / abort chilldown |
| `TT-201` / `TT-202` | CH4 Pump Chilldown Temp | > 115.0 K | > 120.0 K | 10 (1.0 ms) | Inhibit start / abort chilldown |
| `FM-101` / `FM-201` | Mixture Ratio (O/F) | < 2.10 or > 3.10 | < 1.80 or > 3.40 | 8 (800 us) | Throttler trim adjust, then abort |
| `FLM-1` / `FLM-2` | Torch Flame Photodiode | < 60% intensity | < 20% intensity | 1 (100 us) | Instantaneous pilot cutoff |
| `WD-001` | Host Heartbeat Watchdog | N/A | Timeout > 50 ms | 1 | Hardware fail-safe pneumatic dump |

### Debounce Algorithm
For channel sample $x_k$ and limit $L_{abort}$:
$$C_k = \begin{cases} C_{k-1} + 1 & \text{if } x_k > L_{abort} \\ 0 & \text{otherwise} \end{cases}$$
$$\text{Trip Asserted} \iff C_k \ge N_{persistence}$$

When a hard redline trips, the hardware trip latch is asserted in microcode within 5 microseconds, bypassing all script execution.

---

## 4. Closed-Loop Pressure and Mixture Ratio Control

The thrust chamber operating point is governed by dual coupled PID controllers:
1. **Chamber Pressure Governor**:
   $$u_{pintle}(t) = K_p e_p(t) + K_i \int_0^t e_p(\tau) \, d\tau + K_d \frac{d e_p(t)}{dt} + u_{ff}(\dot{m}_{target})$$
   where $e_p(t) = P_{c,target} - P_{c,meas}(t)$.
2. **Backlash and Rate Limiting**:
   The pintle linear motor output is rate-limited to 150 mm/s with dual linear encoder feedback to cancel 40-micrometer mechanical lead-screw backlash.
