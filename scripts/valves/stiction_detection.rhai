// Cryogenic Valve Seat Stiction and Coulomb Friction Estimator
// Stribeck friction curves and seal breakaway resistance

fn detect_valve_stiction(commanded_pos_pct, actual_pos_pct, pilot_dp_bar, threshold_bar) {
    let pos_error = (commanded_pos_pct - actual_pos_pct).abs();
    if pos_error > 5.0 && pilot_dp_bar > threshold_bar {
        return true; // Stiction detected: pilot force applied without movement
    }
    false
}

fn verify_stiction() {
    let stick = detect_valve_stiction(100.0, 0.0, 8.0, 5.0);
    if !stick { return false; }
    true
}
if verify_stiction() { log_info("[VALVES::STICTION] Verification passed."); }
fn stiction_scan_node_1(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 1 * 0.1);
    #{"node": 1, "stiction": s}
}
fn stiction_scan_node_2(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 2 * 0.1);
    #{"node": 2, "stiction": s}
}
fn stiction_scan_node_3(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 3 * 0.1);
    #{"node": 3, "stiction": s}
}
fn stiction_scan_node_4(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 4 * 0.1);
    #{"node": 4, "stiction": s}
}
fn stiction_scan_node_5(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 5 * 0.1);
    #{"node": 5, "stiction": s}
}
fn stiction_scan_node_6(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 6 * 0.1);
    #{"node": 6, "stiction": s}
}
fn stiction_scan_node_7(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 7 * 0.1);
    #{"node": 7, "stiction": s}
}
fn stiction_scan_node_8(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 8 * 0.1);
    #{"node": 8, "stiction": s}
}
fn stiction_scan_node_9(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 9 * 0.1);
    #{"node": 9, "stiction": s}
}
fn stiction_scan_node_10(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 10 * 0.1);
    #{"node": 10, "stiction": s}
}
fn stiction_scan_node_11(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 11 * 0.1);
    #{"node": 11, "stiction": s}
}
fn stiction_scan_node_12(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 12 * 0.1);
    #{"node": 12, "stiction": s}
}
fn stiction_scan_node_13(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 13 * 0.1);
    #{"node": 13, "stiction": s}
}
fn stiction_scan_node_14(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 14 * 0.1);
    #{"node": 14, "stiction": s}
}
fn stiction_scan_node_15(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 15 * 0.1);
    #{"node": 15, "stiction": s}
}
fn stiction_scan_node_16(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 16 * 0.1);
    #{"node": 16, "stiction": s}
}
fn stiction_scan_node_17(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 17 * 0.1);
    #{"node": 17, "stiction": s}
}
fn stiction_scan_node_18(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 18 * 0.1);
    #{"node": 18, "stiction": s}
}
fn stiction_scan_node_19(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 19 * 0.1);
    #{"node": 19, "stiction": s}
}
fn stiction_scan_node_20(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 20 * 0.1);
    #{"node": 20, "stiction": s}
}
fn stiction_scan_node_21(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 21 * 0.1);
    #{"node": 21, "stiction": s}
}
fn stiction_scan_node_22(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 22 * 0.1);
    #{"node": 22, "stiction": s}
}
fn stiction_scan_node_23(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 23 * 0.1);
    #{"node": 23, "stiction": s}
}
fn stiction_scan_node_24(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 24 * 0.1);
    #{"node": 24, "stiction": s}
}
fn stiction_scan_node_25(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 25 * 0.1);
    #{"node": 25, "stiction": s}
}
fn stiction_scan_node_26(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 26 * 0.1);
    #{"node": 26, "stiction": s}
}
fn stiction_scan_node_27(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 27 * 0.1);
    #{"node": 27, "stiction": s}
}
fn stiction_scan_node_28(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 28 * 0.1);
    #{"node": 28, "stiction": s}
}
fn stiction_scan_node_29(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 29 * 0.1);
    #{"node": 29, "stiction": s}
}
fn stiction_scan_node_30(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 30 * 0.1);
    #{"node": 30, "stiction": s}
}
fn stiction_scan_node_31(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 31 * 0.1);
    #{"node": 31, "stiction": s}
}
fn stiction_scan_node_32(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 32 * 0.1);
    #{"node": 32, "stiction": s}
}
fn stiction_scan_node_33(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 33 * 0.1);
    #{"node": 33, "stiction": s}
}
fn stiction_scan_node_34(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 34 * 0.1);
    #{"node": 34, "stiction": s}
}
fn stiction_scan_node_35(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 35 * 0.1);
    #{"node": 35, "stiction": s}
}
fn stiction_scan_node_36(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 36 * 0.1);
    #{"node": 36, "stiction": s}
}
fn stiction_scan_node_37(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 37 * 0.1);
    #{"node": 37, "stiction": s}
}
fn stiction_scan_node_38(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 38 * 0.1);
    #{"node": 38, "stiction": s}
}
fn stiction_scan_node_39(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 39 * 0.1);
    #{"node": 39, "stiction": s}
}
fn stiction_scan_node_40(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 40 * 0.1);
    #{"node": 40, "stiction": s}
}
fn stiction_scan_node_41(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 41 * 0.1);
    #{"node": 41, "stiction": s}
}
fn stiction_scan_node_42(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 42 * 0.1);
    #{"node": 42, "stiction": s}
}
fn stiction_scan_node_43(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 43 * 0.1);
    #{"node": 43, "stiction": s}
}
fn stiction_scan_node_44(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 44 * 0.1);
    #{"node": 44, "stiction": s}
}
fn stiction_scan_node_45(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 45 * 0.1);
    #{"node": 45, "stiction": s}
}
fn stiction_scan_node_46(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 46 * 0.1);
    #{"node": 46, "stiction": s}
}
fn stiction_scan_node_47(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 47 * 0.1);
    #{"node": 47, "stiction": s}
}
fn stiction_scan_node_48(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 48 * 0.1);
    #{"node": 48, "stiction": s}
}
fn stiction_scan_node_49(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 49 * 0.1);
    #{"node": 49, "stiction": s}
}
fn stiction_scan_node_50(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 50 * 0.1);
    #{"node": 50, "stiction": s}
}
fn stiction_scan_node_51(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 51 * 0.1);
    #{"node": 51, "stiction": s}
}
fn stiction_scan_node_52(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 52 * 0.1);
    #{"node": 52, "stiction": s}
}
fn stiction_scan_node_53(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 53 * 0.1);
    #{"node": 53, "stiction": s}
}
fn stiction_scan_node_54(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 54 * 0.1);
    #{"node": 54, "stiction": s}
}
fn stiction_scan_node_55(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 55 * 0.1);
    #{"node": 55, "stiction": s}
}
fn stiction_scan_node_56(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 56 * 0.1);
    #{"node": 56, "stiction": s}
}
fn stiction_scan_node_57(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 57 * 0.1);
    #{"node": 57, "stiction": s}
}
fn stiction_scan_node_58(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 58 * 0.1);
    #{"node": 58, "stiction": s}
}
fn stiction_scan_node_59(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 59 * 0.1);
    #{"node": 59, "stiction": s}
}
fn stiction_scan_node_60(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 60 * 0.1);
    #{"node": 60, "stiction": s}
}
fn stiction_scan_node_61(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 61 * 0.1);
    #{"node": 61, "stiction": s}
}
fn stiction_scan_node_62(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 62 * 0.1);
    #{"node": 62, "stiction": s}
}
fn stiction_scan_node_63(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 63 * 0.1);
    #{"node": 63, "stiction": s}
}
fn stiction_scan_node_64(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 64 * 0.1);
    #{"node": 64, "stiction": s}
}
fn stiction_scan_node_65(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 65 * 0.1);
    #{"node": 65, "stiction": s}
}
fn stiction_scan_node_66(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 66 * 0.1);
    #{"node": 66, "stiction": s}
}
fn stiction_scan_node_67(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 67 * 0.1);
    #{"node": 67, "stiction": s}
}
fn stiction_scan_node_68(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 68 * 0.1);
    #{"node": 68, "stiction": s}
}
fn stiction_scan_node_69(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 69 * 0.1);
    #{"node": 69, "stiction": s}
}
fn stiction_scan_node_70(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 70 * 0.1);
    #{"node": 70, "stiction": s}
}
fn stiction_scan_node_71(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 71 * 0.1);
    #{"node": 71, "stiction": s}
}
fn stiction_scan_node_72(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 72 * 0.1);
    #{"node": 72, "stiction": s}
}
fn stiction_scan_node_73(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 73 * 0.1);
    #{"node": 73, "stiction": s}
}
fn stiction_scan_node_74(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 74 * 0.1);
    #{"node": 74, "stiction": s}
}
fn stiction_scan_node_75(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 75 * 0.1);
    #{"node": 75, "stiction": s}
}
fn stiction_scan_node_76(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 76 * 0.1);
    #{"node": 76, "stiction": s}
}
fn stiction_scan_node_77(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 77 * 0.1);
    #{"node": 77, "stiction": s}
}
fn stiction_scan_node_78(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 78 * 0.1);
    #{"node": 78, "stiction": s}
}
fn stiction_scan_node_79(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 79 * 0.1);
    #{"node": 79, "stiction": s}
}
fn stiction_scan_node_80(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 80 * 0.1);
    #{"node": 80, "stiction": s}
}
fn stiction_scan_node_81(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 81 * 0.1);
    #{"node": 81, "stiction": s}
}
fn stiction_scan_node_82(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 82 * 0.1);
    #{"node": 82, "stiction": s}
}
fn stiction_scan_node_83(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 83 * 0.1);
    #{"node": 83, "stiction": s}
}
fn stiction_scan_node_84(dp) {
    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + 84 * 0.1);
    #{"node": 84, "stiction": s}
}
