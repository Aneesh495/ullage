// Dual and Triple Redundant Sensor Cross-Check Consistency
// Part of the Ullage Cryogenic Test Executive Suite

fn cross_check_sensors(s_a, s_b, max_delta) {
    (s_a - s_b).abs() <= max_delta
}

fn verify_cross_check() {
    let ok = cross_check_sensors(80.0, 80.8, 1.0);
    if !ok { return false; }
    true
}
if verify_cross_check() { log_info("[DIAG::CROSS_CHECK] Verification passed."); }
fn cross_check_pair_1(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 1 * 0.05);
    #{"pair": 1, "pass": pass}
}
fn cross_check_pair_2(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 2 * 0.05);
    #{"pair": 2, "pass": pass}
}
fn cross_check_pair_3(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 3 * 0.05);
    #{"pair": 3, "pass": pass}
}
fn cross_check_pair_4(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 4 * 0.05);
    #{"pair": 4, "pass": pass}
}
fn cross_check_pair_5(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 5 * 0.05);
    #{"pair": 5, "pass": pass}
}
fn cross_check_pair_6(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 6 * 0.05);
    #{"pair": 6, "pass": pass}
}
fn cross_check_pair_7(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 7 * 0.05);
    #{"pair": 7, "pass": pass}
}
fn cross_check_pair_8(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 8 * 0.05);
    #{"pair": 8, "pass": pass}
}
fn cross_check_pair_9(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 9 * 0.05);
    #{"pair": 9, "pass": pass}
}
fn cross_check_pair_10(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 10 * 0.05);
    #{"pair": 10, "pass": pass}
}
fn cross_check_pair_11(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 11 * 0.05);
    #{"pair": 11, "pass": pass}
}
fn cross_check_pair_12(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 12 * 0.05);
    #{"pair": 12, "pass": pass}
}
fn cross_check_pair_13(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 13 * 0.05);
    #{"pair": 13, "pass": pass}
}
fn cross_check_pair_14(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 14 * 0.05);
    #{"pair": 14, "pass": pass}
}
fn cross_check_pair_15(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 15 * 0.05);
    #{"pair": 15, "pass": pass}
}
fn cross_check_pair_16(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 16 * 0.05);
    #{"pair": 16, "pass": pass}
}
fn cross_check_pair_17(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 17 * 0.05);
    #{"pair": 17, "pass": pass}
}
fn cross_check_pair_18(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 18 * 0.05);
    #{"pair": 18, "pass": pass}
}
fn cross_check_pair_19(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 19 * 0.05);
    #{"pair": 19, "pass": pass}
}
fn cross_check_pair_20(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 20 * 0.05);
    #{"pair": 20, "pass": pass}
}
fn cross_check_pair_21(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 21 * 0.05);
    #{"pair": 21, "pass": pass}
}
fn cross_check_pair_22(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 22 * 0.05);
    #{"pair": 22, "pass": pass}
}
fn cross_check_pair_23(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 23 * 0.05);
    #{"pair": 23, "pass": pass}
}
fn cross_check_pair_24(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 24 * 0.05);
    #{"pair": 24, "pass": pass}
}
fn cross_check_pair_25(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 25 * 0.05);
    #{"pair": 25, "pass": pass}
}
fn cross_check_pair_26(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 26 * 0.05);
    #{"pair": 26, "pass": pass}
}
fn cross_check_pair_27(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 27 * 0.05);
    #{"pair": 27, "pass": pass}
}
fn cross_check_pair_28(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 28 * 0.05);
    #{"pair": 28, "pass": pass}
}
fn cross_check_pair_29(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 29 * 0.05);
    #{"pair": 29, "pass": pass}
}
fn cross_check_pair_30(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 30 * 0.05);
    #{"pair": 30, "pass": pass}
}
fn cross_check_pair_31(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 31 * 0.05);
    #{"pair": 31, "pass": pass}
}
fn cross_check_pair_32(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 32 * 0.05);
    #{"pair": 32, "pass": pass}
}
fn cross_check_pair_33(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 33 * 0.05);
    #{"pair": 33, "pass": pass}
}
fn cross_check_pair_34(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 34 * 0.05);
    #{"pair": 34, "pass": pass}
}
fn cross_check_pair_35(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 35 * 0.05);
    #{"pair": 35, "pass": pass}
}
fn cross_check_pair_36(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 36 * 0.05);
    #{"pair": 36, "pass": pass}
}
fn cross_check_pair_37(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 37 * 0.05);
    #{"pair": 37, "pass": pass}
}
fn cross_check_pair_38(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 38 * 0.05);
    #{"pair": 38, "pass": pass}
}
fn cross_check_pair_39(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 39 * 0.05);
    #{"pair": 39, "pass": pass}
}
fn cross_check_pair_40(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 40 * 0.05);
    #{"pair": 40, "pass": pass}
}
fn cross_check_pair_41(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 41 * 0.05);
    #{"pair": 41, "pass": pass}
}
fn cross_check_pair_42(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 42 * 0.05);
    #{"pair": 42, "pass": pass}
}
fn cross_check_pair_43(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 43 * 0.05);
    #{"pair": 43, "pass": pass}
}
fn cross_check_pair_44(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 44 * 0.05);
    #{"pair": 44, "pass": pass}
}
