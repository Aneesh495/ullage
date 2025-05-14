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
