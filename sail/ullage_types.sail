/*==============================================================================
  Ullage Formal Safety Specification in Sail ISA Language
  Subsystem States, Abort Classifications, and Register Bitfields
  Copyright (c) 2026 Aneesh Krishna Parthasarathy. Licensed under ISC.
==============================================================================*/

enum SafetyState = {
    STATE_SAFE,
    STATE_STANDBY,
    STATE_ARMED,
    STATE_FIRING,
    STATE_ABORTING,
    STATE_ABORTED
}

enum AbortCode = {
    ABORT_NONE,
    ABORT_MANUAL_E_STOP,
    ABORT_PC_OVERPRESSURE,
    ABORT_TURBINE_OVERTEMP,
    ABORT_VIBRATION_EXCURSION,
    ABORT_CAVITATION_INCEPTION,
    ABORT_WATCHDOG_EXPIRATION,
    ABORT_FLAMEOUT_DETECTED
}

struct InterlockStatusBits = {
    arm_key_engaged : bool,
    purge_active : bool,
    trip_latch_active : bool,
    watchdog_healthy : bool,
    current_state : SafetyState
}

struct SensorReading = {
    channel_id : bits(16),
    raw_reading : word,
    calibrated_val : int,
    status_flags : bits(8)
}
