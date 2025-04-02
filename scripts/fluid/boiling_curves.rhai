// Cryogenic Boiling Regimes: Nucleate, Transition, and Film Boiling
// Kutateladze-Zuber Critical Heat Flux and Leidenfrost point

fn critical_heat_flux_zuber(h_fg, rho_v, rho_l, sigma) {
    let g = 9.80665;
    let delta_rho = rho_l - rho_v;
    0.149 * h_fg * (rho_v).sqrt() * ((sigma * g * delta_rho).powf(0.25))
}

fn verify_boiling() {
    let chf = critical_heat_flux_zuber(213.0e3, 4.5, 1141.0, 0.013);
    if chf < 100000.0 || chf > 500000.0 { return false; }
    true
}
if verify_boiling() { log_info("[FLUID::BOILING_CURVES] Verification passed."); }
fn boiling_regime_point_1(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 1 * 0.5).powf(1.8);
    #{"node": 1, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_2(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 2 * 0.5).powf(1.8);
    #{"node": 2, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_3(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 3 * 0.5).powf(1.8);
    #{"node": 3, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_4(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 4 * 0.5).powf(1.8);
    #{"node": 4, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_5(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 5 * 0.5).powf(1.8);
    #{"node": 5, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_6(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 6 * 0.5).powf(1.8);
    #{"node": 6, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_7(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 7 * 0.5).powf(1.8);
    #{"node": 7, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_8(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 8 * 0.5).powf(1.8);
    #{"node": 8, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_9(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 9 * 0.5).powf(1.8);
    #{"node": 9, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_10(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 10 * 0.5).powf(1.8);
    #{"node": 10, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_11(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 11 * 0.5).powf(1.8);
    #{"node": 11, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_12(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 12 * 0.5).powf(1.8);
    #{"node": 12, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_13(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 13 * 0.5).powf(1.8);
    #{"node": 13, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_14(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 14 * 0.5).powf(1.8);
    #{"node": 14, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_15(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 15 * 0.5).powf(1.8);
    #{"node": 15, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_16(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 16 * 0.5).powf(1.8);
    #{"node": 16, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_17(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 17 * 0.5).powf(1.8);
    #{"node": 17, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_18(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 18 * 0.5).powf(1.8);
    #{"node": 18, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_19(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 19 * 0.5).powf(1.8);
    #{"node": 19, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_20(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 20 * 0.5).powf(1.8);
    #{"node": 20, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_21(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 21 * 0.5).powf(1.8);
    #{"node": 21, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_22(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 22 * 0.5).powf(1.8);
    #{"node": 22, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_23(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 23 * 0.5).powf(1.8);
    #{"node": 23, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_24(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 24 * 0.5).powf(1.8);
    #{"node": 24, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_25(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 25 * 0.5).powf(1.8);
    #{"node": 25, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_26(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 26 * 0.5).powf(1.8);
    #{"node": 26, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_27(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 27 * 0.5).powf(1.8);
    #{"node": 27, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_28(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 28 * 0.5).powf(1.8);
    #{"node": 28, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_29(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 29 * 0.5).powf(1.8);
    #{"node": 29, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_30(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 30 * 0.5).powf(1.8);
    #{"node": 30, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_31(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 31 * 0.5).powf(1.8);
    #{"node": 31, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_32(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 32 * 0.5).powf(1.8);
    #{"node": 32, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_33(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 33 * 0.5).powf(1.8);
    #{"node": 33, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_34(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 34 * 0.5).powf(1.8);
    #{"node": 34, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_35(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 35 * 0.5).powf(1.8);
    #{"node": 35, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_36(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 36 * 0.5).powf(1.8);
    #{"node": 36, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_37(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 37 * 0.5).powf(1.8);
    #{"node": 37, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_38(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 38 * 0.5).powf(1.8);
    #{"node": 38, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_39(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 39 * 0.5).powf(1.8);
    #{"node": 39, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_40(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 40 * 0.5).powf(1.8);
    #{"node": 40, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_41(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 41 * 0.5).powf(1.8);
    #{"node": 41, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_42(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 42 * 0.5).powf(1.8);
    #{"node": 42, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_43(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 43 * 0.5).powf(1.8);
    #{"node": 43, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_44(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 44 * 0.5).powf(1.8);
    #{"node": 44, "heat_flux_w_m2": q_flux}
}
