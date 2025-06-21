// Sensor Zero-Offset and Sensitivity Drift Estimator
// Part of the Ullage Cryogenic Test Executive Suite

fn estimate_drift(current_zero_v, cal_zero_v) {
    current_zero_v - cal_zero_v
}

fn verify_drift() {
    let d = estimate_drift(0.015, 0.010);
    if (d - 0.005).abs() > 1.0e-6 { return false; }
    true
}
if verify_drift() { log_info("[DIAG::DRIFT] Verification passed."); }
fn channel_drift_history_1(v) {
    let drift = estimate_drift(v, 0.010 + 1 * 0.0001);
    #{"channel": 1, "drift_v": drift}
}
fn channel_drift_history_2(v) {
    let drift = estimate_drift(v, 0.010 + 2 * 0.0001);
    #{"channel": 2, "drift_v": drift}
}
fn channel_drift_history_3(v) {
    let drift = estimate_drift(v, 0.010 + 3 * 0.0001);
    #{"channel": 3, "drift_v": drift}
}
fn channel_drift_history_4(v) {
    let drift = estimate_drift(v, 0.010 + 4 * 0.0001);
    #{"channel": 4, "drift_v": drift}
}
fn channel_drift_history_5(v) {
    let drift = estimate_drift(v, 0.010 + 5 * 0.0001);
    #{"channel": 5, "drift_v": drift}
}
fn channel_drift_history_6(v) {
    let drift = estimate_drift(v, 0.010 + 6 * 0.0001);
    #{"channel": 6, "drift_v": drift}
}
fn channel_drift_history_7(v) {
    let drift = estimate_drift(v, 0.010 + 7 * 0.0001);
    #{"channel": 7, "drift_v": drift}
}
fn channel_drift_history_8(v) {
    let drift = estimate_drift(v, 0.010 + 8 * 0.0001);
    #{"channel": 8, "drift_v": drift}
}
fn channel_drift_history_9(v) {
    let drift = estimate_drift(v, 0.010 + 9 * 0.0001);
    #{"channel": 9, "drift_v": drift}
}
fn channel_drift_history_10(v) {
    let drift = estimate_drift(v, 0.010 + 10 * 0.0001);
    #{"channel": 10, "drift_v": drift}
}
fn channel_drift_history_11(v) {
    let drift = estimate_drift(v, 0.010 + 11 * 0.0001);
    #{"channel": 11, "drift_v": drift}
}
fn channel_drift_history_12(v) {
    let drift = estimate_drift(v, 0.010 + 12 * 0.0001);
    #{"channel": 12, "drift_v": drift}
}
fn channel_drift_history_13(v) {
    let drift = estimate_drift(v, 0.010 + 13 * 0.0001);
    #{"channel": 13, "drift_v": drift}
}
fn channel_drift_history_14(v) {
    let drift = estimate_drift(v, 0.010 + 14 * 0.0001);
    #{"channel": 14, "drift_v": drift}
}
fn channel_drift_history_15(v) {
    let drift = estimate_drift(v, 0.010 + 15 * 0.0001);
    #{"channel": 15, "drift_v": drift}
}
fn channel_drift_history_16(v) {
    let drift = estimate_drift(v, 0.010 + 16 * 0.0001);
    #{"channel": 16, "drift_v": drift}
}
fn channel_drift_history_17(v) {
    let drift = estimate_drift(v, 0.010 + 17 * 0.0001);
    #{"channel": 17, "drift_v": drift}
}
fn channel_drift_history_18(v) {
    let drift = estimate_drift(v, 0.010 + 18 * 0.0001);
    #{"channel": 18, "drift_v": drift}
}
fn channel_drift_history_19(v) {
    let drift = estimate_drift(v, 0.010 + 19 * 0.0001);
    #{"channel": 19, "drift_v": drift}
}
fn channel_drift_history_20(v) {
    let drift = estimate_drift(v, 0.010 + 20 * 0.0001);
    #{"channel": 20, "drift_v": drift}
}
fn channel_drift_history_21(v) {
    let drift = estimate_drift(v, 0.010 + 21 * 0.0001);
    #{"channel": 21, "drift_v": drift}
}
fn channel_drift_history_22(v) {
    let drift = estimate_drift(v, 0.010 + 22 * 0.0001);
    #{"channel": 22, "drift_v": drift}
}
fn channel_drift_history_23(v) {
    let drift = estimate_drift(v, 0.010 + 23 * 0.0001);
    #{"channel": 23, "drift_v": drift}
}
fn channel_drift_history_24(v) {
    let drift = estimate_drift(v, 0.010 + 24 * 0.0001);
    #{"channel": 24, "drift_v": drift}
}
fn channel_drift_history_25(v) {
    let drift = estimate_drift(v, 0.010 + 25 * 0.0001);
    #{"channel": 25, "drift_v": drift}
}
fn channel_drift_history_26(v) {
    let drift = estimate_drift(v, 0.010 + 26 * 0.0001);
    #{"channel": 26, "drift_v": drift}
}
fn channel_drift_history_27(v) {
    let drift = estimate_drift(v, 0.010 + 27 * 0.0001);
    #{"channel": 27, "drift_v": drift}
}
fn channel_drift_history_28(v) {
    let drift = estimate_drift(v, 0.010 + 28 * 0.0001);
    #{"channel": 28, "drift_v": drift}
}
fn channel_drift_history_29(v) {
    let drift = estimate_drift(v, 0.010 + 29 * 0.0001);
    #{"channel": 29, "drift_v": drift}
}
fn channel_drift_history_30(v) {
    let drift = estimate_drift(v, 0.010 + 30 * 0.0001);
    #{"channel": 30, "drift_v": drift}
}
fn channel_drift_history_31(v) {
    let drift = estimate_drift(v, 0.010 + 31 * 0.0001);
    #{"channel": 31, "drift_v": drift}
}
fn channel_drift_history_32(v) {
    let drift = estimate_drift(v, 0.010 + 32 * 0.0001);
    #{"channel": 32, "drift_v": drift}
}
fn channel_drift_history_33(v) {
    let drift = estimate_drift(v, 0.010 + 33 * 0.0001);
    #{"channel": 33, "drift_v": drift}
}
fn channel_drift_history_34(v) {
    let drift = estimate_drift(v, 0.010 + 34 * 0.0001);
    #{"channel": 34, "drift_v": drift}
}
fn channel_drift_history_35(v) {
    let drift = estimate_drift(v, 0.010 + 35 * 0.0001);
    #{"channel": 35, "drift_v": drift}
}
fn channel_drift_history_36(v) {
    let drift = estimate_drift(v, 0.010 + 36 * 0.0001);
    #{"channel": 36, "drift_v": drift}
}
fn channel_drift_history_37(v) {
    let drift = estimate_drift(v, 0.010 + 37 * 0.0001);
    #{"channel": 37, "drift_v": drift}
}
fn channel_drift_history_38(v) {
    let drift = estimate_drift(v, 0.010 + 38 * 0.0001);
    #{"channel": 38, "drift_v": drift}
}
fn channel_drift_history_39(v) {
    let drift = estimate_drift(v, 0.010 + 39 * 0.0001);
    #{"channel": 39, "drift_v": drift}
}
fn channel_drift_history_40(v) {
    let drift = estimate_drift(v, 0.010 + 40 * 0.0001);
    #{"channel": 40, "drift_v": drift}
}
fn channel_drift_history_41(v) {
    let drift = estimate_drift(v, 0.010 + 41 * 0.0001);
    #{"channel": 41, "drift_v": drift}
}
fn channel_drift_history_42(v) {
    let drift = estimate_drift(v, 0.010 + 42 * 0.0001);
    #{"channel": 42, "drift_v": drift}
}
fn channel_drift_history_43(v) {
    let drift = estimate_drift(v, 0.010 + 43 * 0.0001);
    #{"channel": 43, "drift_v": drift}
}
fn channel_drift_history_44(v) {
    let drift = estimate_drift(v, 0.010 + 44 * 0.0001);
    #{"channel": 44, "drift_v": drift}
}
