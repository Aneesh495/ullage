/*==============================================================================
  Ullage Formal Safety Specification in Sail ISA Language
  Memory-Mapped Register Interface and Hardware Address Decoding
  Copyright (c) 2026 Aneesh Krishna Parthasarathy. Licensed under ISC.
==============================================================================*/

register REG_INTERLOCK_STATUS  : word
register REG_INTERLOCK_CONTROL : word
register REG_ABORT_REASON      : word
register REG_WATCHDOG_COUNT    : word
register REG_PC_LIMIT_HIGH     : word
register REG_PC_LIMIT_LOW      : word
register REG_TURB_TEMP_LIMIT   : word
register REG_PURGE_OVERRIDE    : word
register REG_TRIP_TIMESTAMP_LO : word
register REG_TRIP_TIMESTAMP_HI : word

val read_register : bits(8) -> word
function read_register(offset) = {
    match offset {
        0x00 => REG_INTERLOCK_STATUS,
        0x04 => REG_INTERLOCK_CONTROL,
        0x08 => REG_ABORT_REASON,
        0x0C => REG_WATCHDOG_COUNT,
        0x10 => REG_PC_LIMIT_HIGH,
        0x14 => REG_PC_LIMIT_LOW,
        0x18 => REG_TURB_TEMP_LIMIT,
        0x1C => REG_PURGE_OVERRIDE,
        0x20 => REG_TRIP_TIMESTAMP_LO,
        0x24 => REG_TRIP_TIMESTAMP_HI,
        _    => zero_word
    }
}

val write_register : (bits(8), word) -> unit
function write_register(offset, data) = {
    match offset {
        0x04 => REG_INTERLOCK_CONTROL = data,
        0x0C => REG_WATCHDOG_COUNT = data,
        0x10 => REG_PC_LIMIT_HIGH = data,
        0x14 => REG_PC_LIMIT_LOW = data,
        0x18 => REG_TURB_TEMP_LIMIT = data,
        0x1C => REG_PURGE_OVERRIDE = data,
        _    => ()
    }
}
