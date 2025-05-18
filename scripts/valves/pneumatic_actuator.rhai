// Pneumatic Actuator Cylinder Pressure and Spring Return Mechanics
// Part of the Ullage Cryogenic Test Executive Suite

fn pneumatic_net_force_n(pilot_p_bar, piston_area_sq_m, spring_preload_n, spring_k_n_m, stroke_m) {
    let p_pa = pilot_p_bar * 100000.0;
    let pressure_force = p_pa * piston_area_sq_m;
    let spring_force = spring_preload_n + spring_k_n_m * stroke_m;
    pressure_force - spring_force
}

fn verify_pneumatic() {
    let force = pneumatic_net_force_n(6.0, 0.01, 1000.0, 10000.0, 0.02);
    if force <= 0.0 { return false; }
    true
}
if verify_pneumatic() { log_info("[VALVES::PNEUMATIC] Verification passed."); }
fn pneumatic_stroke_step_1(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 1 * 0.001);
    #{"step": 1, "net_force_n": f}
}
fn pneumatic_stroke_step_2(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 2 * 0.001);
    #{"step": 2, "net_force_n": f}
}
fn pneumatic_stroke_step_3(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 3 * 0.001);
    #{"step": 3, "net_force_n": f}
}
fn pneumatic_stroke_step_4(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 4 * 0.001);
    #{"step": 4, "net_force_n": f}
}
fn pneumatic_stroke_step_5(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 5 * 0.001);
    #{"step": 5, "net_force_n": f}
}
fn pneumatic_stroke_step_6(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 6 * 0.001);
    #{"step": 6, "net_force_n": f}
}
fn pneumatic_stroke_step_7(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 7 * 0.001);
    #{"step": 7, "net_force_n": f}
}
fn pneumatic_stroke_step_8(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 8 * 0.001);
    #{"step": 8, "net_force_n": f}
}
fn pneumatic_stroke_step_9(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 9 * 0.001);
    #{"step": 9, "net_force_n": f}
}
fn pneumatic_stroke_step_10(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 10 * 0.001);
    #{"step": 10, "net_force_n": f}
}
fn pneumatic_stroke_step_11(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 11 * 0.001);
    #{"step": 11, "net_force_n": f}
}
fn pneumatic_stroke_step_12(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 12 * 0.001);
    #{"step": 12, "net_force_n": f}
}
fn pneumatic_stroke_step_13(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 13 * 0.001);
    #{"step": 13, "net_force_n": f}
}
fn pneumatic_stroke_step_14(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 14 * 0.001);
    #{"step": 14, "net_force_n": f}
}
fn pneumatic_stroke_step_15(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 15 * 0.001);
    #{"step": 15, "net_force_n": f}
}
fn pneumatic_stroke_step_16(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 16 * 0.001);
    #{"step": 16, "net_force_n": f}
}
fn pneumatic_stroke_step_17(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 17 * 0.001);
    #{"step": 17, "net_force_n": f}
}
fn pneumatic_stroke_step_18(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 18 * 0.001);
    #{"step": 18, "net_force_n": f}
}
fn pneumatic_stroke_step_19(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 19 * 0.001);
    #{"step": 19, "net_force_n": f}
}
fn pneumatic_stroke_step_20(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 20 * 0.001);
    #{"step": 20, "net_force_n": f}
}
fn pneumatic_stroke_step_21(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 21 * 0.001);
    #{"step": 21, "net_force_n": f}
}
fn pneumatic_stroke_step_22(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 22 * 0.001);
    #{"step": 22, "net_force_n": f}
}
fn pneumatic_stroke_step_23(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 23 * 0.001);
    #{"step": 23, "net_force_n": f}
}
fn pneumatic_stroke_step_24(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 24 * 0.001);
    #{"step": 24, "net_force_n": f}
}
fn pneumatic_stroke_step_25(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 25 * 0.001);
    #{"step": 25, "net_force_n": f}
}
fn pneumatic_stroke_step_26(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 26 * 0.001);
    #{"step": 26, "net_force_n": f}
}
fn pneumatic_stroke_step_27(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 27 * 0.001);
    #{"step": 27, "net_force_n": f}
}
fn pneumatic_stroke_step_28(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 28 * 0.001);
    #{"step": 28, "net_force_n": f}
}
fn pneumatic_stroke_step_29(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 29 * 0.001);
    #{"step": 29, "net_force_n": f}
}
fn pneumatic_stroke_step_30(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 30 * 0.001);
    #{"step": 30, "net_force_n": f}
}
fn pneumatic_stroke_step_31(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 31 * 0.001);
    #{"step": 31, "net_force_n": f}
}
fn pneumatic_stroke_step_32(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 32 * 0.001);
    #{"step": 32, "net_force_n": f}
}
fn pneumatic_stroke_step_33(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 33 * 0.001);
    #{"step": 33, "net_force_n": f}
}
fn pneumatic_stroke_step_34(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 34 * 0.001);
    #{"step": 34, "net_force_n": f}
}
fn pneumatic_stroke_step_35(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 35 * 0.001);
    #{"step": 35, "net_force_n": f}
}
fn pneumatic_stroke_step_36(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 36 * 0.001);
    #{"step": 36, "net_force_n": f}
}
fn pneumatic_stroke_step_37(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 37 * 0.001);
    #{"step": 37, "net_force_n": f}
}
fn pneumatic_stroke_step_38(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 38 * 0.001);
    #{"step": 38, "net_force_n": f}
}
fn pneumatic_stroke_step_39(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 39 * 0.001);
    #{"step": 39, "net_force_n": f}
}
fn pneumatic_stroke_step_40(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 40 * 0.001);
    #{"step": 40, "net_force_n": f}
}
fn pneumatic_stroke_step_41(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 41 * 0.001);
    #{"step": 41, "net_force_n": f}
}
fn pneumatic_stroke_step_42(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 42 * 0.001);
    #{"step": 42, "net_force_n": f}
}
fn pneumatic_stroke_step_43(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 43 * 0.001);
    #{"step": 43, "net_force_n": f}
}
fn pneumatic_stroke_step_44(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 44 * 0.001);
    #{"step": 44, "net_force_n": f}
}
