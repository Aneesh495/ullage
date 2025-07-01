/*==============================================================================
  Ullage Formal Safety Specification in Sail ISA Language
  Safety Interlock Transition Rules and Hardware State Machine
  Copyright (c) 2026 Aneesh Krishna Parthasarathy. Licensed under ISC.
==============================================================================*/

val can_transition : (SafetyState, SafetyState, bool, bool) -> bool
function can_transition(current, target, key_engaged, latch_set) = {
    match (current, target) {
        (STATE_SAFE, STATE_STANDBY)     => key_engaged & not(latch_set),
        (STATE_STANDBY, STATE_ARMED)    => key_engaged & not(latch_set),
        (STATE_ARMED, STATE_FIRING)     => key_engaged & not(latch_set),
        (STATE_FIRING, STATE_ABORTING)  => true,
        (STATE_ARMED, STATE_ABORTING)   => true,
        (STATE_STANDBY, STATE_ABORTING) => true,
        (STATE_ABORTING, STATE_ABORTED) => true,
        (STATE_ABORTED, STATE_SAFE)     => not(latch_set),
        _                               => false
    }
}

val step_interlock_fsm : (SafetyState, SafetyState, bool, bool) -> SafetyState
function step_interlock_fsm(current, target, key_engaged, latch_set) = {
    if can_transition(current, target, key_engaged, latch_set) then
        target
    else
        current
}
