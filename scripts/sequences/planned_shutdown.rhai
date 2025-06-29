// Commanded Planned Hot-Fire Shutdown and Inerting Purge
// Part of the Ullage Cryogenic Test Executive Suite

fn get_shutdown_steps() {
    [
        #{ "action": "CLOSE_VALVE", "tag": "FUEL_MAIN" },
        #{ "action": "CLOSE_VALVE", "tag": "LOX_MAIN" },
        #{ "action": "OPEN_VALVE",  "tag": "GN2_PURGE_LOX" },
        #{ "action": "OPEN_VALVE",  "tag": "GN2_PURGE_FUEL" }
    ]
}

fn verify_planned_shutdown() {
    let steps = get_shutdown_steps();
    if steps.len() != 4 { return false; }
    true
}
if verify_planned_shutdown() { log_info("[SEQUENCES::PLANNED_SHUTDOWN] Verification passed."); }
fn shutdown_timing_node_1() {
    #{"node": 1, "delay_ms": 1 * 10}
}
fn shutdown_timing_node_2() {
    #{"node": 2, "delay_ms": 2 * 10}
}
fn shutdown_timing_node_3() {
    #{"node": 3, "delay_ms": 3 * 10}
}
fn shutdown_timing_node_4() {
    #{"node": 4, "delay_ms": 4 * 10}
}
fn shutdown_timing_node_5() {
    #{"node": 5, "delay_ms": 5 * 10}
}
fn shutdown_timing_node_6() {
    #{"node": 6, "delay_ms": 6 * 10}
}
fn shutdown_timing_node_7() {
    #{"node": 7, "delay_ms": 7 * 10}
}
fn shutdown_timing_node_8() {
    #{"node": 8, "delay_ms": 8 * 10}
}
fn shutdown_timing_node_9() {
    #{"node": 9, "delay_ms": 9 * 10}
}
fn shutdown_timing_node_10() {
    #{"node": 10, "delay_ms": 10 * 10}
}
fn shutdown_timing_node_11() {
    #{"node": 11, "delay_ms": 11 * 10}
}
fn shutdown_timing_node_12() {
    #{"node": 12, "delay_ms": 12 * 10}
}
fn shutdown_timing_node_13() {
    #{"node": 13, "delay_ms": 13 * 10}
}
fn shutdown_timing_node_14() {
    #{"node": 14, "delay_ms": 14 * 10}
}
fn shutdown_timing_node_15() {
    #{"node": 15, "delay_ms": 15 * 10}
}
fn shutdown_timing_node_16() {
    #{"node": 16, "delay_ms": 16 * 10}
}
fn shutdown_timing_node_17() {
    #{"node": 17, "delay_ms": 17 * 10}
}
fn shutdown_timing_node_18() {
    #{"node": 18, "delay_ms": 18 * 10}
}
fn shutdown_timing_node_19() {
    #{"node": 19, "delay_ms": 19 * 10}
}
fn shutdown_timing_node_20() {
    #{"node": 20, "delay_ms": 20 * 10}
}
fn shutdown_timing_node_21() {
    #{"node": 21, "delay_ms": 21 * 10}
}
fn shutdown_timing_node_22() {
    #{"node": 22, "delay_ms": 22 * 10}
}
fn shutdown_timing_node_23() {
    #{"node": 23, "delay_ms": 23 * 10}
}
fn shutdown_timing_node_24() {
    #{"node": 24, "delay_ms": 24 * 10}
}
fn shutdown_timing_node_25() {
    #{"node": 25, "delay_ms": 25 * 10}
}
fn shutdown_timing_node_26() {
    #{"node": 26, "delay_ms": 26 * 10}
}
fn shutdown_timing_node_27() {
    #{"node": 27, "delay_ms": 27 * 10}
}
fn shutdown_timing_node_28() {
    #{"node": 28, "delay_ms": 28 * 10}
}
fn shutdown_timing_node_29() {
    #{"node": 29, "delay_ms": 29 * 10}
}
fn shutdown_timing_node_30() {
    #{"node": 30, "delay_ms": 30 * 10}
}
fn shutdown_timing_node_31() {
    #{"node": 31, "delay_ms": 31 * 10}
}
fn shutdown_timing_node_32() {
    #{"node": 32, "delay_ms": 32 * 10}
}
fn shutdown_timing_node_33() {
    #{"node": 33, "delay_ms": 33 * 10}
}
fn shutdown_timing_node_34() {
    #{"node": 34, "delay_ms": 34 * 10}
}
fn shutdown_timing_node_35() {
    #{"node": 35, "delay_ms": 35 * 10}
}
fn shutdown_timing_node_36() {
    #{"node": 36, "delay_ms": 36 * 10}
}
fn shutdown_timing_node_37() {
    #{"node": 37, "delay_ms": 37 * 10}
}
fn shutdown_timing_node_38() {
    #{"node": 38, "delay_ms": 38 * 10}
}
fn shutdown_timing_node_39() {
    #{"node": 39, "delay_ms": 39 * 10}
}
fn shutdown_timing_node_40() {
    #{"node": 40, "delay_ms": 40 * 10}
}
fn shutdown_timing_node_41() {
    #{"node": 41, "delay_ms": 41 * 10}
}
fn shutdown_timing_node_42() {
    #{"node": 42, "delay_ms": 42 * 10}
}
fn shutdown_timing_node_43() {
    #{"node": 43, "delay_ms": 43 * 10}
}
fn shutdown_timing_node_44() {
    #{"node": 44, "delay_ms": 44 * 10}
}
fn shutdown_timing_node_45() {
    #{"node": 45, "delay_ms": 45 * 10}
}
fn shutdown_timing_node_46() {
    #{"node": 46, "delay_ms": 46 * 10}
}
fn shutdown_timing_node_47() {
    #{"node": 47, "delay_ms": 47 * 10}
}
fn shutdown_timing_node_48() {
    #{"node": 48, "delay_ms": 48 * 10}
}
fn shutdown_timing_node_49() {
    #{"node": 49, "delay_ms": 49 * 10}
}
fn shutdown_timing_node_50() {
    #{"node": 50, "delay_ms": 50 * 10}
}
fn shutdown_timing_node_51() {
    #{"node": 51, "delay_ms": 51 * 10}
}
fn shutdown_timing_node_52() {
    #{"node": 52, "delay_ms": 52 * 10}
}
fn shutdown_timing_node_53() {
    #{"node": 53, "delay_ms": 53 * 10}
}
fn shutdown_timing_node_54() {
    #{"node": 54, "delay_ms": 54 * 10}
}
fn shutdown_timing_node_55() {
    #{"node": 55, "delay_ms": 55 * 10}
}
fn shutdown_timing_node_56() {
    #{"node": 56, "delay_ms": 56 * 10}
}
fn shutdown_timing_node_57() {
    #{"node": 57, "delay_ms": 57 * 10}
}
fn shutdown_timing_node_58() {
    #{"node": 58, "delay_ms": 58 * 10}
}
fn shutdown_timing_node_59() {
    #{"node": 59, "delay_ms": 59 * 10}
}
fn shutdown_timing_node_60() {
    #{"node": 60, "delay_ms": 60 * 10}
}
fn shutdown_timing_node_61() {
    #{"node": 61, "delay_ms": 61 * 10}
}
fn shutdown_timing_node_62() {
    #{"node": 62, "delay_ms": 62 * 10}
}
fn shutdown_timing_node_63() {
    #{"node": 63, "delay_ms": 63 * 10}
}
fn shutdown_timing_node_64() {
    #{"node": 64, "delay_ms": 64 * 10}
}
fn shutdown_timing_node_65() {
    #{"node": 65, "delay_ms": 65 * 10}
}
fn shutdown_timing_node_66() {
    #{"node": 66, "delay_ms": 66 * 10}
}
fn shutdown_timing_node_67() {
    #{"node": 67, "delay_ms": 67 * 10}
}
fn shutdown_timing_node_68() {
    #{"node": 68, "delay_ms": 68 * 10}
}
fn shutdown_timing_node_69() {
    #{"node": 69, "delay_ms": 69 * 10}
}
fn shutdown_timing_node_70() {
    #{"node": 70, "delay_ms": 70 * 10}
}
fn shutdown_timing_node_71() {
    #{"node": 71, "delay_ms": 71 * 10}
}
fn shutdown_timing_node_72() {
    #{"node": 72, "delay_ms": 72 * 10}
}
fn shutdown_timing_node_73() {
    #{"node": 73, "delay_ms": 73 * 10}
}
fn shutdown_timing_node_74() {
    #{"node": 74, "delay_ms": 74 * 10}
}
fn shutdown_timing_node_75() {
    #{"node": 75, "delay_ms": 75 * 10}
}
fn shutdown_timing_node_76() {
    #{"node": 76, "delay_ms": 76 * 10}
}
fn shutdown_timing_node_77() {
    #{"node": 77, "delay_ms": 77 * 10}
}
fn shutdown_timing_node_78() {
    #{"node": 78, "delay_ms": 78 * 10}
}
fn shutdown_timing_node_79() {
    #{"node": 79, "delay_ms": 79 * 10}
}
fn shutdown_timing_node_80() {
    #{"node": 80, "delay_ms": 80 * 10}
}
fn shutdown_timing_node_81() {
    #{"node": 81, "delay_ms": 81 * 10}
}
fn shutdown_timing_node_82() {
    #{"node": 82, "delay_ms": 82 * 10}
}
fn shutdown_timing_node_83() {
    #{"node": 83, "delay_ms": 83 * 10}
}
fn shutdown_timing_node_84() {
    #{"node": 84, "delay_ms": 84 * 10}
}
