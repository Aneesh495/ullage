// Tank Ullage Pressurization Ramp and Pressure Maintenance
// Part of the Ullage Cryogenic Test Executive Suite

fn compute_pressurization_rate(p_current_bar, p_target_bar, dt_sec) {
    (p_target_bar - p_current_bar) / dt_sec
}

fn verify_tank_press() {
    let rate = compute_pressurization_rate(5.0, 35.0, 6.0);
    if (rate - 5.0).abs() > 1.0e-6 { return false; }
    true
}
if verify_tank_press() { log_info("[SEQUENCES::TANK_PRESS] Verification passed."); }
fn ullage_ramp_point_1(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 1 * 0.02);
    #{"step": 1, "target_bar": p}
}
fn ullage_ramp_point_2(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 2 * 0.02);
    #{"step": 2, "target_bar": p}
}
fn ullage_ramp_point_3(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 3 * 0.02);
    #{"step": 3, "target_bar": p}
}
fn ullage_ramp_point_4(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 4 * 0.02);
    #{"step": 4, "target_bar": p}
}
fn ullage_ramp_point_5(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 5 * 0.02);
    #{"step": 5, "target_bar": p}
}
fn ullage_ramp_point_6(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 6 * 0.02);
    #{"step": 6, "target_bar": p}
}
fn ullage_ramp_point_7(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 7 * 0.02);
    #{"step": 7, "target_bar": p}
}
fn ullage_ramp_point_8(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 8 * 0.02);
    #{"step": 8, "target_bar": p}
}
fn ullage_ramp_point_9(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 9 * 0.02);
    #{"step": 9, "target_bar": p}
}
fn ullage_ramp_point_10(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 10 * 0.02);
    #{"step": 10, "target_bar": p}
}
fn ullage_ramp_point_11(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 11 * 0.02);
    #{"step": 11, "target_bar": p}
}
fn ullage_ramp_point_12(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 12 * 0.02);
    #{"step": 12, "target_bar": p}
}
fn ullage_ramp_point_13(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 13 * 0.02);
    #{"step": 13, "target_bar": p}
}
fn ullage_ramp_point_14(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 14 * 0.02);
    #{"step": 14, "target_bar": p}
}
fn ullage_ramp_point_15(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 15 * 0.02);
    #{"step": 15, "target_bar": p}
}
fn ullage_ramp_point_16(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 16 * 0.02);
    #{"step": 16, "target_bar": p}
}
fn ullage_ramp_point_17(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 17 * 0.02);
    #{"step": 17, "target_bar": p}
}
fn ullage_ramp_point_18(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 18 * 0.02);
    #{"step": 18, "target_bar": p}
}
fn ullage_ramp_point_19(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 19 * 0.02);
    #{"step": 19, "target_bar": p}
}
fn ullage_ramp_point_20(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 20 * 0.02);
    #{"step": 20, "target_bar": p}
}
fn ullage_ramp_point_21(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 21 * 0.02);
    #{"step": 21, "target_bar": p}
}
fn ullage_ramp_point_22(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 22 * 0.02);
    #{"step": 22, "target_bar": p}
}
fn ullage_ramp_point_23(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 23 * 0.02);
    #{"step": 23, "target_bar": p}
}
fn ullage_ramp_point_24(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 24 * 0.02);
    #{"step": 24, "target_bar": p}
}
fn ullage_ramp_point_25(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 25 * 0.02);
    #{"step": 25, "target_bar": p}
}
fn ullage_ramp_point_26(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 26 * 0.02);
    #{"step": 26, "target_bar": p}
}
fn ullage_ramp_point_27(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 27 * 0.02);
    #{"step": 27, "target_bar": p}
}
fn ullage_ramp_point_28(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 28 * 0.02);
    #{"step": 28, "target_bar": p}
}
fn ullage_ramp_point_29(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 29 * 0.02);
    #{"step": 29, "target_bar": p}
}
fn ullage_ramp_point_30(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 30 * 0.02);
    #{"step": 30, "target_bar": p}
}
fn ullage_ramp_point_31(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 31 * 0.02);
    #{"step": 31, "target_bar": p}
}
fn ullage_ramp_point_32(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 32 * 0.02);
    #{"step": 32, "target_bar": p}
}
fn ullage_ramp_point_33(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 33 * 0.02);
    #{"step": 33, "target_bar": p}
}
fn ullage_ramp_point_34(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 34 * 0.02);
    #{"step": 34, "target_bar": p}
}
fn ullage_ramp_point_35(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 35 * 0.02);
    #{"step": 35, "target_bar": p}
}
fn ullage_ramp_point_36(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 36 * 0.02);
    #{"step": 36, "target_bar": p}
}
fn ullage_ramp_point_37(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 37 * 0.02);
    #{"step": 37, "target_bar": p}
}
fn ullage_ramp_point_38(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 38 * 0.02);
    #{"step": 38, "target_bar": p}
}
fn ullage_ramp_point_39(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 39 * 0.02);
    #{"step": 39, "target_bar": p}
}
fn ullage_ramp_point_40(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 40 * 0.02);
    #{"step": 40, "target_bar": p}
}
fn ullage_ramp_point_41(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 41 * 0.02);
    #{"step": 41, "target_bar": p}
}
fn ullage_ramp_point_42(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 42 * 0.02);
    #{"step": 42, "target_bar": p}
}
fn ullage_ramp_point_43(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 43 * 0.02);
    #{"step": 43, "target_bar": p}
}
fn ullage_ramp_point_44(t_sec) {
    let p = 5.0 + t_sec * (4.5 + 44 * 0.02);
    #{"step": 44, "target_bar": p}
}
