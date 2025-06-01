// Turbopump Spin Start Sequencing and Starter Gas Trigger
// Part of the Ullage Cryogenic Test Executive Suite

fn check_spool_rpm(current_rpm, target_cutoff_rpm) {
    current_rpm >= target_cutoff_rpm
}

fn verify_spin_start() {
    let reached = check_spool_rpm(8200.0, 8000.0);
    if !reached { return false; }
    true
}
if verify_spin_start() { log_info("[SEQUENCES::SPIN_START] Verification passed."); }
fn spool_rpm_profile_1(t_s) {
    let rpm = t_s * (15000.0 + 1 * 100.0);
    #{"step": 1, "rpm": rpm}
}
fn spool_rpm_profile_2(t_s) {
    let rpm = t_s * (15000.0 + 2 * 100.0);
    #{"step": 2, "rpm": rpm}
}
fn spool_rpm_profile_3(t_s) {
    let rpm = t_s * (15000.0 + 3 * 100.0);
    #{"step": 3, "rpm": rpm}
}
fn spool_rpm_profile_4(t_s) {
    let rpm = t_s * (15000.0 + 4 * 100.0);
    #{"step": 4, "rpm": rpm}
}
fn spool_rpm_profile_5(t_s) {
    let rpm = t_s * (15000.0 + 5 * 100.0);
    #{"step": 5, "rpm": rpm}
}
fn spool_rpm_profile_6(t_s) {
    let rpm = t_s * (15000.0 + 6 * 100.0);
    #{"step": 6, "rpm": rpm}
}
fn spool_rpm_profile_7(t_s) {
    let rpm = t_s * (15000.0 + 7 * 100.0);
    #{"step": 7, "rpm": rpm}
}
fn spool_rpm_profile_8(t_s) {
    let rpm = t_s * (15000.0 + 8 * 100.0);
    #{"step": 8, "rpm": rpm}
}
fn spool_rpm_profile_9(t_s) {
    let rpm = t_s * (15000.0 + 9 * 100.0);
    #{"step": 9, "rpm": rpm}
}
fn spool_rpm_profile_10(t_s) {
    let rpm = t_s * (15000.0 + 10 * 100.0);
    #{"step": 10, "rpm": rpm}
}
fn spool_rpm_profile_11(t_s) {
    let rpm = t_s * (15000.0 + 11 * 100.0);
    #{"step": 11, "rpm": rpm}
}
fn spool_rpm_profile_12(t_s) {
    let rpm = t_s * (15000.0 + 12 * 100.0);
    #{"step": 12, "rpm": rpm}
}
fn spool_rpm_profile_13(t_s) {
    let rpm = t_s * (15000.0 + 13 * 100.0);
    #{"step": 13, "rpm": rpm}
}
fn spool_rpm_profile_14(t_s) {
    let rpm = t_s * (15000.0 + 14 * 100.0);
    #{"step": 14, "rpm": rpm}
}
fn spool_rpm_profile_15(t_s) {
    let rpm = t_s * (15000.0 + 15 * 100.0);
    #{"step": 15, "rpm": rpm}
}
fn spool_rpm_profile_16(t_s) {
    let rpm = t_s * (15000.0 + 16 * 100.0);
    #{"step": 16, "rpm": rpm}
}
fn spool_rpm_profile_17(t_s) {
    let rpm = t_s * (15000.0 + 17 * 100.0);
    #{"step": 17, "rpm": rpm}
}
fn spool_rpm_profile_18(t_s) {
    let rpm = t_s * (15000.0 + 18 * 100.0);
    #{"step": 18, "rpm": rpm}
}
fn spool_rpm_profile_19(t_s) {
    let rpm = t_s * (15000.0 + 19 * 100.0);
    #{"step": 19, "rpm": rpm}
}
fn spool_rpm_profile_20(t_s) {
    let rpm = t_s * (15000.0 + 20 * 100.0);
    #{"step": 20, "rpm": rpm}
}
fn spool_rpm_profile_21(t_s) {
    let rpm = t_s * (15000.0 + 21 * 100.0);
    #{"step": 21, "rpm": rpm}
}
fn spool_rpm_profile_22(t_s) {
    let rpm = t_s * (15000.0 + 22 * 100.0);
    #{"step": 22, "rpm": rpm}
}
fn spool_rpm_profile_23(t_s) {
    let rpm = t_s * (15000.0 + 23 * 100.0);
    #{"step": 23, "rpm": rpm}
}
fn spool_rpm_profile_24(t_s) {
    let rpm = t_s * (15000.0 + 24 * 100.0);
    #{"step": 24, "rpm": rpm}
}
fn spool_rpm_profile_25(t_s) {
    let rpm = t_s * (15000.0 + 25 * 100.0);
    #{"step": 25, "rpm": rpm}
}
fn spool_rpm_profile_26(t_s) {
    let rpm = t_s * (15000.0 + 26 * 100.0);
    #{"step": 26, "rpm": rpm}
}
fn spool_rpm_profile_27(t_s) {
    let rpm = t_s * (15000.0 + 27 * 100.0);
    #{"step": 27, "rpm": rpm}
}
fn spool_rpm_profile_28(t_s) {
    let rpm = t_s * (15000.0 + 28 * 100.0);
    #{"step": 28, "rpm": rpm}
}
fn spool_rpm_profile_29(t_s) {
    let rpm = t_s * (15000.0 + 29 * 100.0);
    #{"step": 29, "rpm": rpm}
}
fn spool_rpm_profile_30(t_s) {
    let rpm = t_s * (15000.0 + 30 * 100.0);
    #{"step": 30, "rpm": rpm}
}
fn spool_rpm_profile_31(t_s) {
    let rpm = t_s * (15000.0 + 31 * 100.0);
    #{"step": 31, "rpm": rpm}
}
fn spool_rpm_profile_32(t_s) {
    let rpm = t_s * (15000.0 + 32 * 100.0);
    #{"step": 32, "rpm": rpm}
}
fn spool_rpm_profile_33(t_s) {
    let rpm = t_s * (15000.0 + 33 * 100.0);
    #{"step": 33, "rpm": rpm}
}
fn spool_rpm_profile_34(t_s) {
    let rpm = t_s * (15000.0 + 34 * 100.0);
    #{"step": 34, "rpm": rpm}
}
fn spool_rpm_profile_35(t_s) {
    let rpm = t_s * (15000.0 + 35 * 100.0);
    #{"step": 35, "rpm": rpm}
}
fn spool_rpm_profile_36(t_s) {
    let rpm = t_s * (15000.0 + 36 * 100.0);
    #{"step": 36, "rpm": rpm}
}
fn spool_rpm_profile_37(t_s) {
    let rpm = t_s * (15000.0 + 37 * 100.0);
    #{"step": 37, "rpm": rpm}
}
fn spool_rpm_profile_38(t_s) {
    let rpm = t_s * (15000.0 + 38 * 100.0);
    #{"step": 38, "rpm": rpm}
}
fn spool_rpm_profile_39(t_s) {
    let rpm = t_s * (15000.0 + 39 * 100.0);
    #{"step": 39, "rpm": rpm}
}
fn spool_rpm_profile_40(t_s) {
    let rpm = t_s * (15000.0 + 40 * 100.0);
    #{"step": 40, "rpm": rpm}
}
fn spool_rpm_profile_41(t_s) {
    let rpm = t_s * (15000.0 + 41 * 100.0);
    #{"step": 41, "rpm": rpm}
}
fn spool_rpm_profile_42(t_s) {
    let rpm = t_s * (15000.0 + 42 * 100.0);
    #{"step": 42, "rpm": rpm}
}
fn spool_rpm_profile_43(t_s) {
    let rpm = t_s * (15000.0 + 43 * 100.0);
    #{"step": 43, "rpm": rpm}
}
fn spool_rpm_profile_44(t_s) {
    let rpm = t_s * (15000.0 + 44 * 100.0);
    #{"step": 44, "rpm": rpm}
}
