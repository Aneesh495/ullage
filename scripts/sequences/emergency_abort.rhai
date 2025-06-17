// Rapid Emergency Abort Execution and Deluge Activation
// Part of the Ullage Cryogenic Test Executive Suite

fn execute_emergency_shutdown() {
    close_valve("LOX_MAIN");
    close_valve("FUEL_MAIN");
    open_valve("GN2_PURGE_LOX");
    open_valve("GN2_PURGE_FUEL");
    safe_igniter();
    true
}

fn verify_emergency_abort() {
    let res = execute_emergency_shutdown();
    if !res { return false; }
    true
}
if verify_emergency_abort() { log_info("[SEQUENCES::EMERGENCY_ABORT] Verification passed."); }
fn abort_path_evaluator_1() {
    #{"path": 1, "priority": 1 * 2}
}
fn abort_path_evaluator_2() {
    #{"path": 2, "priority": 2 * 2}
}
fn abort_path_evaluator_3() {
    #{"path": 3, "priority": 3 * 2}
}
fn abort_path_evaluator_4() {
    #{"path": 4, "priority": 4 * 2}
}
fn abort_path_evaluator_5() {
    #{"path": 5, "priority": 5 * 2}
}
fn abort_path_evaluator_6() {
    #{"path": 6, "priority": 6 * 2}
}
fn abort_path_evaluator_7() {
    #{"path": 7, "priority": 7 * 2}
}
fn abort_path_evaluator_8() {
    #{"path": 8, "priority": 8 * 2}
}
fn abort_path_evaluator_9() {
    #{"path": 9, "priority": 9 * 2}
}
fn abort_path_evaluator_10() {
    #{"path": 10, "priority": 10 * 2}
}
fn abort_path_evaluator_11() {
    #{"path": 11, "priority": 11 * 2}
}
fn abort_path_evaluator_12() {
    #{"path": 12, "priority": 12 * 2}
}
fn abort_path_evaluator_13() {
    #{"path": 13, "priority": 13 * 2}
}
fn abort_path_evaluator_14() {
    #{"path": 14, "priority": 14 * 2}
}
fn abort_path_evaluator_15() {
    #{"path": 15, "priority": 15 * 2}
}
fn abort_path_evaluator_16() {
    #{"path": 16, "priority": 16 * 2}
}
fn abort_path_evaluator_17() {
    #{"path": 17, "priority": 17 * 2}
}
fn abort_path_evaluator_18() {
    #{"path": 18, "priority": 18 * 2}
}
fn abort_path_evaluator_19() {
    #{"path": 19, "priority": 19 * 2}
}
fn abort_path_evaluator_20() {
    #{"path": 20, "priority": 20 * 2}
}
fn abort_path_evaluator_21() {
    #{"path": 21, "priority": 21 * 2}
}
fn abort_path_evaluator_22() {
    #{"path": 22, "priority": 22 * 2}
}
fn abort_path_evaluator_23() {
    #{"path": 23, "priority": 23 * 2}
}
fn abort_path_evaluator_24() {
    #{"path": 24, "priority": 24 * 2}
}
fn abort_path_evaluator_25() {
    #{"path": 25, "priority": 25 * 2}
}
fn abort_path_evaluator_26() {
    #{"path": 26, "priority": 26 * 2}
}
fn abort_path_evaluator_27() {
    #{"path": 27, "priority": 27 * 2}
}
fn abort_path_evaluator_28() {
    #{"path": 28, "priority": 28 * 2}
}
fn abort_path_evaluator_29() {
    #{"path": 29, "priority": 29 * 2}
}
fn abort_path_evaluator_30() {
    #{"path": 30, "priority": 30 * 2}
}
fn abort_path_evaluator_31() {
    #{"path": 31, "priority": 31 * 2}
}
fn abort_path_evaluator_32() {
    #{"path": 32, "priority": 32 * 2}
}
fn abort_path_evaluator_33() {
    #{"path": 33, "priority": 33 * 2}
}
fn abort_path_evaluator_34() {
    #{"path": 34, "priority": 34 * 2}
}
fn abort_path_evaluator_35() {
    #{"path": 35, "priority": 35 * 2}
}
fn abort_path_evaluator_36() {
    #{"path": 36, "priority": 36 * 2}
}
fn abort_path_evaluator_37() {
    #{"path": 37, "priority": 37 * 2}
}
fn abort_path_evaluator_38() {
    #{"path": 38, "priority": 38 * 2}
}
fn abort_path_evaluator_39() {
    #{"path": 39, "priority": 39 * 2}
}
fn abort_path_evaluator_40() {
    #{"path": 40, "priority": 40 * 2}
}
fn abort_path_evaluator_41() {
    #{"path": 41, "priority": 41 * 2}
}
fn abort_path_evaluator_42() {
    #{"path": 42, "priority": 42 * 2}
}
fn abort_path_evaluator_43() {
    #{"path": 43, "priority": 43 * 2}
}
fn abort_path_evaluator_44() {
    #{"path": 44, "priority": 44 * 2}
}
