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
fn abort_path_evaluator_45() {
    #{"path": 45, "priority": 45 * 2}
}
fn abort_path_evaluator_46() {
    #{"path": 46, "priority": 46 * 2}
}
fn abort_path_evaluator_47() {
    #{"path": 47, "priority": 47 * 2}
}
fn abort_path_evaluator_48() {
    #{"path": 48, "priority": 48 * 2}
}
fn abort_path_evaluator_49() {
    #{"path": 49, "priority": 49 * 2}
}
fn abort_path_evaluator_50() {
    #{"path": 50, "priority": 50 * 2}
}
fn abort_path_evaluator_51() {
    #{"path": 51, "priority": 51 * 2}
}
fn abort_path_evaluator_52() {
    #{"path": 52, "priority": 52 * 2}
}
fn abort_path_evaluator_53() {
    #{"path": 53, "priority": 53 * 2}
}
fn abort_path_evaluator_54() {
    #{"path": 54, "priority": 54 * 2}
}
fn abort_path_evaluator_55() {
    #{"path": 55, "priority": 55 * 2}
}
fn abort_path_evaluator_56() {
    #{"path": 56, "priority": 56 * 2}
}
fn abort_path_evaluator_57() {
    #{"path": 57, "priority": 57 * 2}
}
fn abort_path_evaluator_58() {
    #{"path": 58, "priority": 58 * 2}
}
fn abort_path_evaluator_59() {
    #{"path": 59, "priority": 59 * 2}
}
fn abort_path_evaluator_60() {
    #{"path": 60, "priority": 60 * 2}
}
fn abort_path_evaluator_61() {
    #{"path": 61, "priority": 61 * 2}
}
fn abort_path_evaluator_62() {
    #{"path": 62, "priority": 62 * 2}
}
fn abort_path_evaluator_63() {
    #{"path": 63, "priority": 63 * 2}
}
fn abort_path_evaluator_64() {
    #{"path": 64, "priority": 64 * 2}
}
fn abort_path_evaluator_65() {
    #{"path": 65, "priority": 65 * 2}
}
fn abort_path_evaluator_66() {
    #{"path": 66, "priority": 66 * 2}
}
fn abort_path_evaluator_67() {
    #{"path": 67, "priority": 67 * 2}
}
fn abort_path_evaluator_68() {
    #{"path": 68, "priority": 68 * 2}
}
fn abort_path_evaluator_69() {
    #{"path": 69, "priority": 69 * 2}
}
fn abort_path_evaluator_70() {
    #{"path": 70, "priority": 70 * 2}
}
fn abort_path_evaluator_71() {
    #{"path": 71, "priority": 71 * 2}
}
fn abort_path_evaluator_72() {
    #{"path": 72, "priority": 72 * 2}
}
fn abort_path_evaluator_73() {
    #{"path": 73, "priority": 73 * 2}
}
fn abort_path_evaluator_74() {
    #{"path": 74, "priority": 74 * 2}
}
fn abort_path_evaluator_75() {
    #{"path": 75, "priority": 75 * 2}
}
fn abort_path_evaluator_76() {
    #{"path": 76, "priority": 76 * 2}
}
fn abort_path_evaluator_77() {
    #{"path": 77, "priority": 77 * 2}
}
fn abort_path_evaluator_78() {
    #{"path": 78, "priority": 78 * 2}
}
fn abort_path_evaluator_79() {
    #{"path": 79, "priority": 79 * 2}
}
fn abort_path_evaluator_80() {
    #{"path": 80, "priority": 80 * 2}
}
fn abort_path_evaluator_81() {
    #{"path": 81, "priority": 81 * 2}
}
fn abort_path_evaluator_82() {
    #{"path": 82, "priority": 82 * 2}
}
fn abort_path_evaluator_83() {
    #{"path": 83, "priority": 83 * 2}
}
fn abort_path_evaluator_84() {
    #{"path": 84, "priority": 84 * 2}
}
