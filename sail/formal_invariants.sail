/*==============================================================================
  Ullage Formal Safety Specification in Sail ISA Language
  Formal Invariants, Proof Properties, and Temporal Safety Assertions
  Copyright (c) 2026 Aneesh Krishna Parthasarathy. Licensed under ISC.
==============================================================================*/

/* Property 1: State Invariant - Firing requires Arm Key Engaged */
val invariant_firing_requires_arm_key : (SafetyState, bool) -> bool
function invariant_firing_requires_arm_key(state, key_engaged) = {
    if state == STATE_FIRING then
        key_engaged
    else
        true
}

/* Property 2: Latch Invariant - Active trip latch prevents arming or firing */
val invariant_latch_prevents_arm : (SafetyState, bool) -> bool
function invariant_latch_prevents_arm(state, latch_active) = {
    if latch_active then
        (state != STATE_ARMED) & (state != STATE_FIRING)
    else
        true
}

/* Property 3: Abort Determinism - Any trip condition forces immediate abort */
val invariant_abort_determinism : (bool, SafetyState, SafetyState) -> bool
function invariant_abort_determinism(redline_tripped, initial_state, resulting_state) = {
    if redline_tripped & (initial_state == STATE_FIRING) then
        resulting_state == STATE_ABORTING
    else
        true
}
