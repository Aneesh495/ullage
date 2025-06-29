// Physical Unit Conversion and Dimensionless Numbers
// Part of the Ullage Cryogenic Test Executive Suite

// Pressure conversions
fn bar_to_pa(bar) { bar * 100000.0 }
fn pa_to_bar(pa) { pa / 100000.0 }
fn psi_to_bar(psi) { psi * 0.06894757293 }
fn bar_to_psi(bar) { bar / 0.06894757293 }
fn mpa_to_bar(mpa) { mpa * 10.0 }
fn bar_to_mpa(bar) { bar / 10.0 }
fn atm_to_bar(atm) { atm * 1.01325 }
fn bar_to_atm(bar) { bar / 1.01325 }

// Temperature conversions
fn c_to_k(c) { c + 273.15 }
fn k_to_c(k) { k - 273.15 }
fn f_to_k(f) { (f - 32.0) * (5.0 / 9.0) + 273.15 }
fn k_to_f(k) { (k - 273.15) * (9.0 / 5.0) + 32.0 }
fn r_to_k(r) { r * (5.0 / 9.0) }
fn k_to_r(k) { k * (9.0 / 5.0) }

// Mass and Mass Flow conversions
fn kg_s_to_lbm_s(kg_s) { kg_s * 2.2046226218 }
fn lbm_s_to_kg_s(lbm_s) { lbm_s / 2.2046226218 }
fn g_s_to_kg_s(g_s) { g_s * 0.001 }
fn kg_s_to_g_s(kg_s) { kg_s * 1000.0 }

// Force and Thrust conversions
fn kn_to_n(kn) { kn * 1000.0 }
fn n_to_kn(n) { n / 1000.0 }
fn lbf_to_kn(lbf) { lbf * 0.004448221615 }
fn kn_to_lbf(kn) { kn / 0.004448221615 }

// Length and Area conversions
fn mm_to_m(mm) { mm * 0.001 }
fn m_to_mm(m) { m * 1000.0 }
fn in_to_m(inch) { inch * 0.0254 }
fn m_to_in(m) { m / 0.0254 }
fn sq_mm_to_sq_m(sq_mm) { sq_mm * 1.0e-6 }
fn sq_m_to_sq_mm(sq_m) { sq_m * 1.0e6 }

// Dimensionless engineering numbers
fn reynolds_number(rho, v, d, mu) { (rho * v * d) / mu }
fn mach_number(v, speed_of_sound) { v / speed_of_sound }
fn prandtl_number(cp, mu, k_thermal) { (cp * mu) / k_thermal }
fn weber_number(rho, v, d, sigma) { (rho * v * v * d) / sigma }
fn ohnesorge_number(mu, rho, sigma, d) { mu / ((rho * sigma * d).sqrt()) }

fn verify_units() {
    let p = psi_to_bar(145.038);
    if (p - 10.0).abs() > 0.01 { return false; }
    let t = c_to_k(-182.96);
    if (t - 90.19).abs() > 0.05 { return false; }
    true
}
if verify_units() { log_info("[CORE::UNITS] Verification passed."); }
fn unit_auxiliary_scaler_1(val, scale_factor) {
    let s = scale_factor * 1 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_2(val, scale_factor) {
    let s = scale_factor * 2 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_3(val, scale_factor) {
    let s = scale_factor * 3 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_4(val, scale_factor) {
    let s = scale_factor * 4 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_5(val, scale_factor) {
    let s = scale_factor * 5 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_6(val, scale_factor) {
    let s = scale_factor * 6 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_7(val, scale_factor) {
    let s = scale_factor * 7 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_8(val, scale_factor) {
    let s = scale_factor * 8 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_9(val, scale_factor) {
    let s = scale_factor * 9 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_10(val, scale_factor) {
    let s = scale_factor * 10 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_11(val, scale_factor) {
    let s = scale_factor * 11 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_12(val, scale_factor) {
    let s = scale_factor * 12 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_13(val, scale_factor) {
    let s = scale_factor * 13 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_14(val, scale_factor) {
    let s = scale_factor * 14 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_15(val, scale_factor) {
    let s = scale_factor * 15 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_16(val, scale_factor) {
    let s = scale_factor * 16 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_17(val, scale_factor) {
    let s = scale_factor * 17 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_18(val, scale_factor) {
    let s = scale_factor * 18 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_19(val, scale_factor) {
    let s = scale_factor * 19 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_20(val, scale_factor) {
    let s = scale_factor * 20 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_21(val, scale_factor) {
    let s = scale_factor * 21 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_22(val, scale_factor) {
    let s = scale_factor * 22 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_23(val, scale_factor) {
    let s = scale_factor * 23 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_24(val, scale_factor) {
    let s = scale_factor * 24 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_25(val, scale_factor) {
    let s = scale_factor * 25 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_26(val, scale_factor) {
    let s = scale_factor * 26 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_27(val, scale_factor) {
    let s = scale_factor * 27 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_28(val, scale_factor) {
    let s = scale_factor * 28 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_29(val, scale_factor) {
    let s = scale_factor * 29 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_30(val, scale_factor) {
    let s = scale_factor * 30 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_31(val, scale_factor) {
    let s = scale_factor * 31 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_32(val, scale_factor) {
    let s = scale_factor * 32 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_33(val, scale_factor) {
    let s = scale_factor * 33 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_34(val, scale_factor) {
    let s = scale_factor * 34 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_35(val, scale_factor) {
    let s = scale_factor * 35 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_36(val, scale_factor) {
    let s = scale_factor * 36 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_37(val, scale_factor) {
    let s = scale_factor * 37 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_38(val, scale_factor) {
    let s = scale_factor * 38 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_39(val, scale_factor) {
    let s = scale_factor * 39 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_40(val, scale_factor) {
    let s = scale_factor * 40 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_41(val, scale_factor) {
    let s = scale_factor * 41 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_42(val, scale_factor) {
    let s = scale_factor * 42 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_43(val, scale_factor) {
    let s = scale_factor * 43 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_44(val, scale_factor) {
    let s = scale_factor * 44 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_45(val, scale_factor) {
    let s = scale_factor * 45 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_46(val, scale_factor) {
    let s = scale_factor * 46 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_47(val, scale_factor) {
    let s = scale_factor * 47 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_48(val, scale_factor) {
    let s = scale_factor * 48 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_49(val, scale_factor) {
    let s = scale_factor * 49 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_50(val, scale_factor) {
    let s = scale_factor * 50 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_51(val, scale_factor) {
    let s = scale_factor * 51 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_52(val, scale_factor) {
    let s = scale_factor * 52 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_53(val, scale_factor) {
    let s = scale_factor * 53 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_54(val, scale_factor) {
    let s = scale_factor * 54 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_55(val, scale_factor) {
    let s = scale_factor * 55 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_56(val, scale_factor) {
    let s = scale_factor * 56 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_57(val, scale_factor) {
    let s = scale_factor * 57 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_58(val, scale_factor) {
    let s = scale_factor * 58 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_59(val, scale_factor) {
    let s = scale_factor * 59 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_60(val, scale_factor) {
    let s = scale_factor * 60 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_61(val, scale_factor) {
    let s = scale_factor * 61 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_62(val, scale_factor) {
    let s = scale_factor * 62 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_63(val, scale_factor) {
    let s = scale_factor * 63 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_64(val, scale_factor) {
    let s = scale_factor * 64 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_65(val, scale_factor) {
    let s = scale_factor * 65 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_66(val, scale_factor) {
    let s = scale_factor * 66 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_67(val, scale_factor) {
    let s = scale_factor * 67 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_68(val, scale_factor) {
    let s = scale_factor * 68 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_69(val, scale_factor) {
    let s = scale_factor * 69 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_70(val, scale_factor) {
    let s = scale_factor * 70 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_71(val, scale_factor) {
    let s = scale_factor * 71 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_72(val, scale_factor) {
    let s = scale_factor * 72 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_73(val, scale_factor) {
    let s = scale_factor * 73 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_74(val, scale_factor) {
    let s = scale_factor * 74 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_75(val, scale_factor) {
    let s = scale_factor * 75 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_76(val, scale_factor) {
    let s = scale_factor * 76 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_77(val, scale_factor) {
    let s = scale_factor * 77 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_78(val, scale_factor) {
    let s = scale_factor * 78 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_79(val, scale_factor) {
    let s = scale_factor * 79 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_80(val, scale_factor) {
    let s = scale_factor * 80 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_81(val, scale_factor) {
    let s = scale_factor * 81 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_82(val, scale_factor) {
    let s = scale_factor * 82 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_83(val, scale_factor) {
    let s = scale_factor * 83 * 0.1;
    val * s
}
fn unit_auxiliary_scaler_84(val, scale_factor) {
    let s = scale_factor * 84 * 0.1;
    val * s
}
