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
fn boiling_regime_point_45(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 45 * 0.5).powf(1.8);
    #{"node": 45, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_46(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 46 * 0.5).powf(1.8);
    #{"node": 46, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_47(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 47 * 0.5).powf(1.8);
    #{"node": 47, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_48(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 48 * 0.5).powf(1.8);
    #{"node": 48, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_49(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 49 * 0.5).powf(1.8);
    #{"node": 49, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_50(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 50 * 0.5).powf(1.8);
    #{"node": 50, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_51(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 51 * 0.5).powf(1.8);
    #{"node": 51, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_52(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 52 * 0.5).powf(1.8);
    #{"node": 52, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_53(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 53 * 0.5).powf(1.8);
    #{"node": 53, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_54(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 54 * 0.5).powf(1.8);
    #{"node": 54, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_55(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 55 * 0.5).powf(1.8);
    #{"node": 55, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_56(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 56 * 0.5).powf(1.8);
    #{"node": 56, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_57(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 57 * 0.5).powf(1.8);
    #{"node": 57, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_58(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 58 * 0.5).powf(1.8);
    #{"node": 58, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_59(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 59 * 0.5).powf(1.8);
    #{"node": 59, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_60(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 60 * 0.5).powf(1.8);
    #{"node": 60, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_61(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 61 * 0.5).powf(1.8);
    #{"node": 61, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_62(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 62 * 0.5).powf(1.8);
    #{"node": 62, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_63(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 63 * 0.5).powf(1.8);
    #{"node": 63, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_64(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 64 * 0.5).powf(1.8);
    #{"node": 64, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_65(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 65 * 0.5).powf(1.8);
    #{"node": 65, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_66(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 66 * 0.5).powf(1.8);
    #{"node": 66, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_67(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 67 * 0.5).powf(1.8);
    #{"node": 67, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_68(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 68 * 0.5).powf(1.8);
    #{"node": 68, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_69(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 69 * 0.5).powf(1.8);
    #{"node": 69, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_70(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 70 * 0.5).powf(1.8);
    #{"node": 70, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_71(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 71 * 0.5).powf(1.8);
    #{"node": 71, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_72(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 72 * 0.5).powf(1.8);
    #{"node": 72, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_73(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 73 * 0.5).powf(1.8);
    #{"node": 73, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_74(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 74 * 0.5).powf(1.8);
    #{"node": 74, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_75(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 75 * 0.5).powf(1.8);
    #{"node": 75, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_76(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 76 * 0.5).powf(1.8);
    #{"node": 76, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_77(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 77 * 0.5).powf(1.8);
    #{"node": 77, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_78(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 78 * 0.5).powf(1.8);
    #{"node": 78, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_79(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 79 * 0.5).powf(1.8);
    #{"node": 79, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_80(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 80 * 0.5).powf(1.8);
    #{"node": 80, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_81(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 81 * 0.5).powf(1.8);
    #{"node": 81, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_82(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 82 * 0.5).powf(1.8);
    #{"node": 82, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_83(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 83 * 0.5).powf(1.8);
    #{"node": 83, "heat_flux_w_m2": q_flux}
}
fn boiling_regime_point_84(delta_t_wall) {
    let q_flux = 5000.0 * (delta_t_wall + 84 * 0.5).powf(1.8);
    #{"node": 84, "heat_flux_w_m2": q_flux}
}
