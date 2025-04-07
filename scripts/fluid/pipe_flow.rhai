// Transient Liquid Water Hammer and Cryogenic Surge Pressure
// Joukowsky acoustic wave propagation in structural piping

fn joukowsky_surge_bar(rho, wave_speed_m_s, delta_v_m_s) {
    let delta_p_pa = rho * wave_speed_m_s * delta_v_m_s;
    delta_p_pa / 100000.0
}

fn pipe_acoustic_wave_speed(bulk_modulus_pa, rho, youngs_mod_pa, diameter_m, thickness_m) {
    let elasticity_term = (bulk_modulus_pa / youngs_mod_pa) * (diameter_m / thickness_m);
    let effective_k = bulk_modulus_pa / (1.0 + elasticity_term);
    (effective_k / rho).sqrt()
}

fn verify_pipe_flow() {
    let surge = joukowsky_surge_bar(1141.0, 1000.0, 5.0);
    // 1141 * 1000 * 5 = 5.705e6 Pa = 57.05 bar
    if (surge - 57.05).abs() > 0.5 { return false; }
    true
}
if verify_pipe_flow() { log_info("[FLUID::PIPE_FLOW] Verification passed."); }
fn transient_line_pulse_1(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 1 * 5.0, delta_v);
    #{"station": 1, "surge_bar": s}
}
fn transient_line_pulse_2(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 2 * 5.0, delta_v);
    #{"station": 2, "surge_bar": s}
}
fn transient_line_pulse_3(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 3 * 5.0, delta_v);
    #{"station": 3, "surge_bar": s}
}
fn transient_line_pulse_4(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 4 * 5.0, delta_v);
    #{"station": 4, "surge_bar": s}
}
fn transient_line_pulse_5(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 5 * 5.0, delta_v);
    #{"station": 5, "surge_bar": s}
}
fn transient_line_pulse_6(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 6 * 5.0, delta_v);
    #{"station": 6, "surge_bar": s}
}
fn transient_line_pulse_7(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 7 * 5.0, delta_v);
    #{"station": 7, "surge_bar": s}
}
fn transient_line_pulse_8(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 8 * 5.0, delta_v);
    #{"station": 8, "surge_bar": s}
}
fn transient_line_pulse_9(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 9 * 5.0, delta_v);
    #{"station": 9, "surge_bar": s}
}
fn transient_line_pulse_10(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 10 * 5.0, delta_v);
    #{"station": 10, "surge_bar": s}
}
fn transient_line_pulse_11(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 11 * 5.0, delta_v);
    #{"station": 11, "surge_bar": s}
}
fn transient_line_pulse_12(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 12 * 5.0, delta_v);
    #{"station": 12, "surge_bar": s}
}
fn transient_line_pulse_13(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 13 * 5.0, delta_v);
    #{"station": 13, "surge_bar": s}
}
fn transient_line_pulse_14(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 14 * 5.0, delta_v);
    #{"station": 14, "surge_bar": s}
}
fn transient_line_pulse_15(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 15 * 5.0, delta_v);
    #{"station": 15, "surge_bar": s}
}
fn transient_line_pulse_16(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 16 * 5.0, delta_v);
    #{"station": 16, "surge_bar": s}
}
fn transient_line_pulse_17(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 17 * 5.0, delta_v);
    #{"station": 17, "surge_bar": s}
}
fn transient_line_pulse_18(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 18 * 5.0, delta_v);
    #{"station": 18, "surge_bar": s}
}
fn transient_line_pulse_19(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 19 * 5.0, delta_v);
    #{"station": 19, "surge_bar": s}
}
fn transient_line_pulse_20(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 20 * 5.0, delta_v);
    #{"station": 20, "surge_bar": s}
}
fn transient_line_pulse_21(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 21 * 5.0, delta_v);
    #{"station": 21, "surge_bar": s}
}
fn transient_line_pulse_22(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 22 * 5.0, delta_v);
    #{"station": 22, "surge_bar": s}
}
fn transient_line_pulse_23(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 23 * 5.0, delta_v);
    #{"station": 23, "surge_bar": s}
}
fn transient_line_pulse_24(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 24 * 5.0, delta_v);
    #{"station": 24, "surge_bar": s}
}
fn transient_line_pulse_25(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 25 * 5.0, delta_v);
    #{"station": 25, "surge_bar": s}
}
fn transient_line_pulse_26(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 26 * 5.0, delta_v);
    #{"station": 26, "surge_bar": s}
}
fn transient_line_pulse_27(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 27 * 5.0, delta_v);
    #{"station": 27, "surge_bar": s}
}
fn transient_line_pulse_28(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 28 * 5.0, delta_v);
    #{"station": 28, "surge_bar": s}
}
fn transient_line_pulse_29(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 29 * 5.0, delta_v);
    #{"station": 29, "surge_bar": s}
}
fn transient_line_pulse_30(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 30 * 5.0, delta_v);
    #{"station": 30, "surge_bar": s}
}
fn transient_line_pulse_31(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 31 * 5.0, delta_v);
    #{"station": 31, "surge_bar": s}
}
fn transient_line_pulse_32(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 32 * 5.0, delta_v);
    #{"station": 32, "surge_bar": s}
}
fn transient_line_pulse_33(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 33 * 5.0, delta_v);
    #{"station": 33, "surge_bar": s}
}
fn transient_line_pulse_34(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 34 * 5.0, delta_v);
    #{"station": 34, "surge_bar": s}
}
fn transient_line_pulse_35(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 35 * 5.0, delta_v);
    #{"station": 35, "surge_bar": s}
}
fn transient_line_pulse_36(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 36 * 5.0, delta_v);
    #{"station": 36, "surge_bar": s}
}
fn transient_line_pulse_37(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 37 * 5.0, delta_v);
    #{"station": 37, "surge_bar": s}
}
fn transient_line_pulse_38(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 38 * 5.0, delta_v);
    #{"station": 38, "surge_bar": s}
}
fn transient_line_pulse_39(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 39 * 5.0, delta_v);
    #{"station": 39, "surge_bar": s}
}
fn transient_line_pulse_40(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 40 * 5.0, delta_v);
    #{"station": 40, "surge_bar": s}
}
fn transient_line_pulse_41(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 41 * 5.0, delta_v);
    #{"station": 41, "surge_bar": s}
}
fn transient_line_pulse_42(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 42 * 5.0, delta_v);
    #{"station": 42, "surge_bar": s}
}
fn transient_line_pulse_43(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 43 * 5.0, delta_v);
    #{"station": 43, "surge_bar": s}
}
fn transient_line_pulse_44(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 44 * 5.0, delta_v);
    #{"station": 44, "surge_bar": s}
}
