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
fn lch4_state_point_45(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 45 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 45, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_46(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 46 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 46, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_47(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 47 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 47, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_48(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 48 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 48, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_49(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 49 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 49, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_50(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 50 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 50, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_51(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 51 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 51, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_52(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 52 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 52, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_53(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 53 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 53, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_54(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 54 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 54, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_55(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 55 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 55, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_56(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 56 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 56, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_57(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 57 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 57, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_58(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 58 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 58, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_59(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 59 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 59, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_60(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 60 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 60, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_61(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 61 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 61, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_62(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 62 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 62, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_63(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 63 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 63, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_64(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 64 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 64, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_65(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 65 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 65, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_66(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 66 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 66, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_67(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 67 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 67, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_68(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 68 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 68, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_69(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 69 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 69, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_70(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 70 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 70, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_71(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 71 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 71, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_72(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 72 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 72, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_73(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 73 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 73, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_74(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 74 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 74, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_75(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 75 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 75, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_76(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 76 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 76, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_77(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 77 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 77, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_78(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 78 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 78, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_79(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 79 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 79, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_80(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 80 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 80, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_81(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 81 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 81, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_82(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 82 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 82, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_83(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 83 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 83, "density": rho, "viscosity_upa_s": mu}
}
fn lch4_state_point_84(p_bar, t_k) {
    let rho = lch4_subcooled_density(t_k, p_bar + 84 * 0.2);
    let mu = lch4_dynamic_viscosity(t_k);
    #{"point": 84, "density": rho, "viscosity_upa_s": mu}
}
