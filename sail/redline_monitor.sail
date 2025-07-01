/*==============================================================================
  Ullage Formal Safety Specification in Sail ISA Language
  Hardware Redline Comparator and Immediate Abort Trip Decoder
  Copyright (c) 2026 Aneesh Krishna Parthasarathy. Licensed under ISC.
==============================================================================*/

val check_redline_trip : (int, int, int) -> (bool, AbortCode)
function check_redline_trip(observed_val, low_limit, high_limit) = {
    if observed_val > high_limit then
        (true, ABORT_PC_OVERPRESSURE)
    else if observed_val < low_limit then
        (true, ABORT_FLAMEOUT_DETECTED)
    else
        (false, ABORT_NONE)
}

val evaluate_safety_cycle : (int, int, int, SafetyState) -> (SafetyState, AbortCode)
function evaluate_safety_cycle(obs_val, lo, hi, current_state) = {
    let (tripped, reason) = check_redline_trip(obs_val, lo, hi);
    if tripped & (current_state == STATE_FIRING | current_state == STATE_ARMED) then
        (STATE_ABORTING, reason)
    else
        (current_state, ABORT_NONE)
}
