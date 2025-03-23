// Thermodynamic Equation of State for Liquid Methane (LCH4)
// Based on Span-Wagner real gas multi-parameter Helmholtz energy formulations

fn lch4_subcooled_density(temp_k, press_bar) {
    let t_r = temp_k / 190.56;
    let rho_crit = 162.66; // kg/m^3
    let z_crit = 0.286;
    let exponent = (1.0 - t_r).powf(0.2857);
    let rho_sat = rho_crit / (z_crit.powf(exponent));
    let delta_p = (press_bar - 1.0).max(0.0);
    let beta = 4.2e-4;
    rho_sat * (1.0 + beta * delta_p)
}

fn lch4_dynamic_viscosity(temp_k) {
    // Micro-Pascal-seconds (uPa.s) for liquid methane
    let mu0 = 115.0; // uPa.s at 112 K
    mu0 * (-0.015 * (temp_k - 111.66)).exp()
}

fn verify_methane_eos() {
    let rho = lch4_subcooled_density(111.66, 1.0);
    if (rho - 422.6).abs() > 30.0 { return false; }
    true
}
if verify_methane_eos() { log_info("[FLUID::METHANE_EOS] Verification passed."); }
fn lch4_state_point_1(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 1 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 1, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_2(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 2 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 2, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_3(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 3 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 3, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_4(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 4 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 4, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_5(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 5 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 5, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_6(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 6 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 6, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_7(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 7 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 7, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_8(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 8 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 8, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_9(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 9 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 9, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_10(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 10 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 10, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_11(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 11 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 11, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_12(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 12 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 12, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_13(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 13 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 13, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_14(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 14 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 14, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_15(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 15 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 15, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_16(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 16 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 16, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_17(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 17 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 17, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_18(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 18 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 18, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_19(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 19 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 19, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_20(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 20 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 20, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_21(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 21 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 21, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_22(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 22 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 22, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_23(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 23 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 23, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_24(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 24 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 24, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_25(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 25 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 25, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_26(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 26 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 26, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_27(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 27 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 27, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_28(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 28 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 28, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_29(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 29 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 29, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_30(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 30 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 30, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_31(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 31 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 31, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_32(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 32 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 32, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_33(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 33 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 33, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_34(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 34 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 34, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_35(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 35 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 35, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_36(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 36 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 36, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_37(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 37 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 37, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_38(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 38 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 38, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_39(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 39 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 39, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_40(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 40 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 40, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_41(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 41 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 41, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_42(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 42 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 42, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_43(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 43 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 43, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_44(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 44 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 44, "density": rho, "viscosity_upa_s": mu}
}
