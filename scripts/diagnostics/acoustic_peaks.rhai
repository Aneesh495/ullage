// High-Frequency Acoustic Peak Detection and Quality Factor (Q)
// Part of the Ullage Cryogenic Test Executive Suite

fn compute_q_factor(f_res, f_half_lo, f_half_hi) {
    let bandwidth = (f_half_hi - f_half_lo).abs();
    if bandwidth <= 0.0 { return 0.0; }
    f_res / bandwidth
}

fn verify_acoustic_peaks() {
    let q = compute_q_factor(3200.0, 3180.0, 3220.0);
    if (q - 80.0).abs() > 1.0e-6 { return false; }
    true
}
if verify_acoustic_peaks() { log_info("[DIAG::ACOUSTIC_PEAKS] Verification passed."); }
fn acoustic_peak_tracker_1(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 1, "q": q}
}
fn acoustic_peak_tracker_2(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 2, "q": q}
}
fn acoustic_peak_tracker_3(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 3, "q": q}
}
fn acoustic_peak_tracker_4(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 4, "q": q}
}
fn acoustic_peak_tracker_5(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 5, "q": q}
}
fn acoustic_peak_tracker_6(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 6, "q": q}
}
fn acoustic_peak_tracker_7(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 7, "q": q}
}
fn acoustic_peak_tracker_8(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 8, "q": q}
}
fn acoustic_peak_tracker_9(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 9, "q": q}
}
fn acoustic_peak_tracker_10(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 10, "q": q}
}
fn acoustic_peak_tracker_11(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 11, "q": q}
}
fn acoustic_peak_tracker_12(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 12, "q": q}
}
fn acoustic_peak_tracker_13(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 13, "q": q}
}
fn acoustic_peak_tracker_14(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 14, "q": q}
}
fn acoustic_peak_tracker_15(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 15, "q": q}
}
fn acoustic_peak_tracker_16(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 16, "q": q}
}
fn acoustic_peak_tracker_17(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 17, "q": q}
}
fn acoustic_peak_tracker_18(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 18, "q": q}
}
fn acoustic_peak_tracker_19(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 19, "q": q}
}
fn acoustic_peak_tracker_20(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 20, "q": q}
}
fn acoustic_peak_tracker_21(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 21, "q": q}
}
fn acoustic_peak_tracker_22(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 22, "q": q}
}
fn acoustic_peak_tracker_23(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 23, "q": q}
}
fn acoustic_peak_tracker_24(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 24, "q": q}
}
fn acoustic_peak_tracker_25(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 25, "q": q}
}
fn acoustic_peak_tracker_26(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 26, "q": q}
}
fn acoustic_peak_tracker_27(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 27, "q": q}
}
fn acoustic_peak_tracker_28(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 28, "q": q}
}
fn acoustic_peak_tracker_29(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 29, "q": q}
}
fn acoustic_peak_tracker_30(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 30, "q": q}
}
fn acoustic_peak_tracker_31(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 31, "q": q}
}
fn acoustic_peak_tracker_32(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 32, "q": q}
}
fn acoustic_peak_tracker_33(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 33, "q": q}
}
fn acoustic_peak_tracker_34(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 34, "q": q}
}
fn acoustic_peak_tracker_35(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 35, "q": q}
}
fn acoustic_peak_tracker_36(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 36, "q": q}
}
fn acoustic_peak_tracker_37(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 37, "q": q}
}
fn acoustic_peak_tracker_38(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 38, "q": q}
}
fn acoustic_peak_tracker_39(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 39, "q": q}
}
fn acoustic_peak_tracker_40(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 40, "q": q}
}
fn acoustic_peak_tracker_41(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 41, "q": q}
}
fn acoustic_peak_tracker_42(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 42, "q": q}
}
fn acoustic_peak_tracker_43(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 43, "q": q}
}
fn acoustic_peak_tracker_44(f) {
    let q = compute_q_factor(f, f - 20.0, f + 20.0);
    #{"tracker": 44, "q": q}
}
