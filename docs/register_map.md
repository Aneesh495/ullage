# Hardware Register Map Specification

This document specifies the memory-mapped I/O (MMIO) register interface between the physical test stand DAQ controllers, the Rust host engine, and the formal Sail architectural specification (`sail/ullage_registers.sail`).

---

## 1. Register Address Map Summary

All registers are 32-bit aligned. Unaligned accesses trigger a bus error fault.

| Offset | Register Name | Access | Reset Value | Description |
|:---|:---|:---:|:---:|:---|
| `0x0000` | `REG_INTERLOCK_CTRL` | RW | `0x0000_0000` | Safety interlock state transition and arming control |
| `0x0004` | `REG_INTERLOCK_STAT` | RO | `0x0000_0000` | Interlock state feedback and abort trip latches |
| `0x0008` | `REG_VALVE_COMMAND` | RW | `0x0000_0000` | Solenoid and pneumatic actuator driver command bitmask |
| `0x000C` | `REG_VALVE_STATUS` | RO | `0x0000_0000` | Valve closed/open limit switch readback |
| `0x0010` | `REG_PINTLE_TARGET` | RW | `0x0000_0000` | Pintle actuator target position (16.16 fixed-point) |
| `0x0014` | `REG_PINTLE_ACTUAL` | RO | `0x0000_0000` | Pintle dual optical encoder feedback (16.16 fixed-point) |
| `0x0020` | `REG_PRESSURE_PT301` | RO | `0x0000_0000` | Primary combustion chamber pressure transducer (Pa) |
| `0x0024` | `REG_TEMP_TT101` | RO | `0x0000_0000` | LOX turbopump inducer inlet temperature (0.01 K) |
| `0x0028` | `REG_FLOW_FM101` | RO | `0x0000_0000` | LOX Coriolis mass flow rate (0.001 kg/s) |
| `0x0030` | `REG_REDLINE_CFG` | RW | `0x0000_0003` | Persistence debounce filter count (default 3 cycles) |
| `0x0034` | `REG_REDLINE_TRIP` | RO | `0x0000_0000` | Tripped redline channel bitfield |
| `0x0040` | `REG_WATCHDOG_KICK` | WO | `0x0000_0000` | Watchdog deadman heartbeat key (`0xA55A1234`) |

---

## 2. Register Bitfield Definitions

### `0x0000: REG_INTERLOCK_CTRL` (Read / Write)
Commands state transitions in the safety interlock hardware matrix.

```
 31                                                  8 7   4 3 2 1 0
+-----------------------------------------------------+---+---+-+-+-+
|                      RESERVED                       |TRP|   |H|C|P|A|
+-----------------------------------------------------+---+---+-+-+-+
```
- **Bit 0 (`A`) [STAND_ARM]**: Transitions test stand from `SafeShutdown` to `PurgeStandby` when facility conditions are verified.
- **Bit 1 (`P`) [PURGE_ENABLE]**: Opens main nitrogen purge manifolds.
- **Bit 2 (`C`) [CHILL_ENABLE]**: Arm cryogenic chilldown flow sequence.
- **Bit 3 (`H`) [HOTFIRE_START]**: Arm master hot-fire terminal sequence.
- **Bit 7 (`TRP`) [EMERGENCY_TRIP]**: Software-commanded emergency abort. When written with `1`, latches `EmergencyAbort` state within 1 hardware clock cycle.

### `0x0004: REG_INTERLOCK_STAT` (Read Only)
Reflects actual hardware safety state.

```
 31                                       8 7 6 5 4 3 2 1 0
+------------------------------------------+-+-+-+-+-------+
|                 RESERVED                 |F|A|W|L| STATE |
+------------------------------------------+-+-+-+-+-------+
```
- **Bits 2:0 (`STATE`)**: Current safety interlock state:
  - `000` (`0x0`): SafeShutdown
  - `001` (`0x1`): PurgeStandby
  - `012` (`0x2`): CryoChilldown
  - `013` (`0x3`): IgniterArmed
  - `100` (`0x4`): HotFireActive
  - `101` (`0x5`): EngineShutdown
  - `110` (`0x6`): EmergencyAbort
  - `111` (`0x7`): FaultLatched
- **Bit 3 (`L`) [TRIP_LATCHED]**: Hardware trip latch asserted. Can only be reset by hardware key.
- **Bit 4 (`W`) [WATCHDOG_OK]**: Watchdog timer is currently unexpired.
- **Bit 5 (`A`) [IGNITER_CONFIRMED]**: Dual photodiode flame presence confirmed.
- **Bit 6 (`F`) [FAULT_FLAG]**: General stand health fault asserted.

### `0x0008: REG_VALVE_COMMAND` (Read / Write)
Commands discrete 24V solenoid drivers and pneumatic valves.

```
 15          12 11   10  9   8   7   6   5   4   3   2   1   0
+--------------+-------+---+---+---+---+---+---+---+---+---+---+
|   RESERVED   |  SPK  |   |PUR|ISO|   |MFV|BLE|RUN|   |MOV|BLE|RUN|
|              |  001  |   |305|301|   |205|202|201|   |105|102|101|
+--------------+-------+---+---+---+---+---+---+---+---+---+---+
```
- **Bit 0**: `PV_101` - LOX Run Tank Main Isolation Valve
- **Bit 1**: `PV_102` - LOX Chilldown Bypass Bleed Valve
- **Bit 2**: `PV_105` - LOX Main Injector Valve (MOV)
- **Bit 4**: `PV_201` - CH4 Run Tank Main Isolation Valve
- **Bit 5**: `PV_202` - CH4 Chilldown Bypass Bleed Valve
- **Bit 6**: `PV_205` - CH4 Main Injector Valve (MFV)
- **Bit 8**: `PV_301` - High-Pressure Helium Pressurization Solenoid
- **Bit 9**: `PV_305` - High-Pressure GN2 Purge Solenoid
- **Bit 12**: `SPK_001` - Torch Igniter Spark Exciter Coil (50 Hz pulse driver)

### `0x0040: REG_WATCHDOG_KICK` (Write Only)
Real-time deadman counter. The host runtime must write magic pattern `0xA55A_1234` at least once every 50 milliseconds. Failure to write resets the hardware counter to zero, which drops electrical hold current to the pneumatic valves and forces an emergency pneumatic nitrogen purge.
