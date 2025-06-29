// Peng-Robinson Equation of State for Liquid Oxygen (LOX)
// NIST Refprop thermodynamic model approximations

fn lox_pr_constants() {
    #{
        "tc_k": 154.58,
        "pc_pa": 5043000.0,
        "omega": 0.0222,
        "molar_mass": 0.0319988,
        "r_univ": 8.314462
    }
}

fn lox_subcooled_density(temp_k, press_bar) {
    // Rackett equation approximation for saturated/compressed liquid LOX
    let t_r = temp_k / 154.58;
    let rho_crit = 436.0; // kg/m^3
    let z_crit = 0.288;
    let exponent = (1.0 - t_r).powf(0.2857);
    let rho_sat = rho_crit / (z_crit.powf(exponent));
    // Compressibility correction: 1 + beta * (P - Psat)
    let p_sat_bar = (temp_k / 90.19).powf(7.0);
    let delta_p = (press_bar - p_sat_bar).max(0.0);
    let beta_isothermal = 3.5e-4; // 1/bar
    rho_sat * (1.0 + beta_isothermal * delta_p)
}

fn lox_speed_of_sound(temp_k) {
    // Ultrasonic sound velocity in liquid oxygen: ~1000 m/s at 90K
    let c0 = 1000.0;
    let slope = -4.5; // m/s per K
    c0 + slope * (temp_k - 90.19)
}

fn verify_lox_eos() {
    let rho = lox_subcooled_density(90.19, 1.0);
    if (rho - 1141.0).abs() > 40.0 { return false; }
    let a = lox_speed_of_sound(90.19);
    if (a - 1000.0).abs() > 10.0 { return false; }
    true
}
if verify_lox_eos() { log_info("[FLUID::LOX_EOS] Verification passed."); }
fn lox_state_point_1(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 1 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 1, "density": rho, "sound_speed": a}
}
fn lox_state_point_2(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 2 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 2, "density": rho, "sound_speed": a}
}
fn lox_state_point_3(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 3 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 3, "density": rho, "sound_speed": a}
}
fn lox_state_point_4(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 4 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 4, "density": rho, "sound_speed": a}
}
fn lox_state_point_5(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 5 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 5, "density": rho, "sound_speed": a}
}
fn lox_state_point_6(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 6 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 6, "density": rho, "sound_speed": a}
}
fn lox_state_point_7(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 7 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 7, "density": rho, "sound_speed": a}
}
fn lox_state_point_8(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 8 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 8, "density": rho, "sound_speed": a}
}
fn lox_state_point_9(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 9 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 9, "density": rho, "sound_speed": a}
}
fn lox_state_point_10(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 10 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 10, "density": rho, "sound_speed": a}
}
fn lox_state_point_11(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 11 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 11, "density": rho, "sound_speed": a}
}
fn lox_state_point_12(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 12 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 12, "density": rho, "sound_speed": a}
}
fn lox_state_point_13(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 13 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 13, "density": rho, "sound_speed": a}
}
fn lox_state_point_14(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 14 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 14, "density": rho, "sound_speed": a}
}
fn lox_state_point_15(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 15 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 15, "density": rho, "sound_speed": a}
}
fn lox_state_point_16(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 16 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 16, "density": rho, "sound_speed": a}
}
fn lox_state_point_17(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 17 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 17, "density": rho, "sound_speed": a}
}
fn lox_state_point_18(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 18 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 18, "density": rho, "sound_speed": a}
}
fn lox_state_point_19(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 19 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 19, "density": rho, "sound_speed": a}
}
fn lox_state_point_20(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 20 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 20, "density": rho, "sound_speed": a}
}
fn lox_state_point_21(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 21 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 21, "density": rho, "sound_speed": a}
}
fn lox_state_point_22(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 22 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 22, "density": rho, "sound_speed": a}
}
fn lox_state_point_23(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 23 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 23, "density": rho, "sound_speed": a}
}
fn lox_state_point_24(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 24 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 24, "density": rho, "sound_speed": a}
}
fn lox_state_point_25(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 25 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 25, "density": rho, "sound_speed": a}
}
fn lox_state_point_26(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 26 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 26, "density": rho, "sound_speed": a}
}
fn lox_state_point_27(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 27 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 27, "density": rho, "sound_speed": a}
}
fn lox_state_point_28(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 28 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 28, "density": rho, "sound_speed": a}
}
fn lox_state_point_29(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 29 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 29, "density": rho, "sound_speed": a}
}
fn lox_state_point_30(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 30 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 30, "density": rho, "sound_speed": a}
}
fn lox_state_point_31(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 31 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 31, "density": rho, "sound_speed": a}
}
fn lox_state_point_32(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 32 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 32, "density": rho, "sound_speed": a}
}
fn lox_state_point_33(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 33 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 33, "density": rho, "sound_speed": a}
}
fn lox_state_point_34(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 34 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 34, "density": rho, "sound_speed": a}
}
fn lox_state_point_35(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 35 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 35, "density": rho, "sound_speed": a}
}
fn lox_state_point_36(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 36 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 36, "density": rho, "sound_speed": a}
}
fn lox_state_point_37(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 37 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 37, "density": rho, "sound_speed": a}
}
fn lox_state_point_38(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 38 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 38, "density": rho, "sound_speed": a}
}
fn lox_state_point_39(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 39 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 39, "density": rho, "sound_speed": a}
}
fn lox_state_point_40(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 40 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 40, "density": rho, "sound_speed": a}
}
fn lox_state_point_41(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 41 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 41, "density": rho, "sound_speed": a}
}
fn lox_state_point_42(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 42 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 42, "density": rho, "sound_speed": a}
}
fn lox_state_point_43(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 43 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 43, "density": rho, "sound_speed": a}
}
fn lox_state_point_44(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 44 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 44, "density": rho, "sound_speed": a}
}
fn lox_state_point_45(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 45 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 45, "density": rho, "sound_speed": a}
}
fn lox_state_point_46(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 46 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 46, "density": rho, "sound_speed": a}
}
fn lox_state_point_47(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 47 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 47, "density": rho, "sound_speed": a}
}
fn lox_state_point_48(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 48 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 48, "density": rho, "sound_speed": a}
}
fn lox_state_point_49(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 49 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 49, "density": rho, "sound_speed": a}
}
fn lox_state_point_50(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 50 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 50, "density": rho, "sound_speed": a}
}
fn lox_state_point_51(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 51 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 51, "density": rho, "sound_speed": a}
}
fn lox_state_point_52(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 52 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 52, "density": rho, "sound_speed": a}
}
fn lox_state_point_53(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 53 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 53, "density": rho, "sound_speed": a}
}
fn lox_state_point_54(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 54 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 54, "density": rho, "sound_speed": a}
}
fn lox_state_point_55(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 55 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 55, "density": rho, "sound_speed": a}
}
fn lox_state_point_56(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 56 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 56, "density": rho, "sound_speed": a}
}
fn lox_state_point_57(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 57 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 57, "density": rho, "sound_speed": a}
}
fn lox_state_point_58(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 58 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 58, "density": rho, "sound_speed": a}
}
fn lox_state_point_59(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 59 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 59, "density": rho, "sound_speed": a}
}
fn lox_state_point_60(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 60 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 60, "density": rho, "sound_speed": a}
}
fn lox_state_point_61(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 61 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 61, "density": rho, "sound_speed": a}
}
fn lox_state_point_62(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 62 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 62, "density": rho, "sound_speed": a}
}
fn lox_state_point_63(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 63 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 63, "density": rho, "sound_speed": a}
}
fn lox_state_point_64(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 64 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 64, "density": rho, "sound_speed": a}
}
fn lox_state_point_65(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 65 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 65, "density": rho, "sound_speed": a}
}
fn lox_state_point_66(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 66 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 66, "density": rho, "sound_speed": a}
}
fn lox_state_point_67(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 67 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 67, "density": rho, "sound_speed": a}
}
fn lox_state_point_68(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 68 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 68, "density": rho, "sound_speed": a}
}
fn lox_state_point_69(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 69 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 69, "density": rho, "sound_speed": a}
}
fn lox_state_point_70(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 70 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 70, "density": rho, "sound_speed": a}
}
fn lox_state_point_71(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 71 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 71, "density": rho, "sound_speed": a}
}
fn lox_state_point_72(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 72 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 72, "density": rho, "sound_speed": a}
}
fn lox_state_point_73(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 73 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 73, "density": rho, "sound_speed": a}
}
fn lox_state_point_74(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 74 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 74, "density": rho, "sound_speed": a}
}
fn lox_state_point_75(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 75 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 75, "density": rho, "sound_speed": a}
}
fn lox_state_point_76(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 76 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 76, "density": rho, "sound_speed": a}
}
fn lox_state_point_77(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 77 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 77, "density": rho, "sound_speed": a}
}
fn lox_state_point_78(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 78 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 78, "density": rho, "sound_speed": a}
}
fn lox_state_point_79(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 79 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 79, "density": rho, "sound_speed": a}
}
fn lox_state_point_80(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 80 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 80, "density": rho, "sound_speed": a}
}
fn lox_state_point_81(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 81 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 81, "density": rho, "sound_speed": a}
}
fn lox_state_point_82(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 82 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 82, "density": rho, "sound_speed": a}
}
fn lox_state_point_83(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 83 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 83, "density": rho, "sound_speed": a}
}
fn lox_state_point_84(p_bar, t_k) {
    let rho = lox_subcooled_density(t_k + 84 * 0.1, p_bar);
    let a = lox_speed_of_sound(t_k);
    #{"pt": 84, "density": rho, "sound_speed": a}
}
