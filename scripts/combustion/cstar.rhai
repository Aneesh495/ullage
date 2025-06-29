// Characteristic Exhaust Velocity (c*) and Efficiency Tracking
// Fundamental figure of merit for thrust chamber combustion completeness

fn ideal_cstar(gamma, r_gas, temp_k) {
    let term1 = (gamma * r_gas * temp_k).sqrt();
    let exponent = (gamma + 1.0) / (2.0 * (gamma - 1.0));
    let term2 = gamma * ((2.0 / (gamma + 1.0)).powf(exponent));
    term1 / term2
}

fn delivered_cstar(pc_bar, throat_area_sq_m, total_mass_flow_kg_s) {
    let pc_pa = pc_bar * 100000.0;
    (pc_pa * throat_area_sq_m) / total_mass_flow_kg_s
}

fn combustion_efficiency(cstar_actual, cstar_ideal) {
    (cstar_actual / cstar_ideal) * 100.0
}

fn verify_cstar() {
    let c_star = ideal_cstar(1.20, 390.0, 3500.0);
    // Typical LOX/CH4 c* is ~1750 - 1850 m/s
    if c_star < 1650.0 || c_star > 1950.0 { return false; }
    true
}
if verify_cstar() { log_info("[COMBUSTION::CSTAR] Verification passed."); }
fn cstar_operating_point_1(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 1 * 0.0001, mdot);
    #{"point": 1, "cstar_m_s": c}
}
fn cstar_operating_point_2(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 2 * 0.0001, mdot);
    #{"point": 2, "cstar_m_s": c}
}
fn cstar_operating_point_3(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 3 * 0.0001, mdot);
    #{"point": 3, "cstar_m_s": c}
}
fn cstar_operating_point_4(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 4 * 0.0001, mdot);
    #{"point": 4, "cstar_m_s": c}
}
fn cstar_operating_point_5(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 5 * 0.0001, mdot);
    #{"point": 5, "cstar_m_s": c}
}
fn cstar_operating_point_6(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 6 * 0.0001, mdot);
    #{"point": 6, "cstar_m_s": c}
}
fn cstar_operating_point_7(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 7 * 0.0001, mdot);
    #{"point": 7, "cstar_m_s": c}
}
fn cstar_operating_point_8(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 8 * 0.0001, mdot);
    #{"point": 8, "cstar_m_s": c}
}
fn cstar_operating_point_9(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 9 * 0.0001, mdot);
    #{"point": 9, "cstar_m_s": c}
}
fn cstar_operating_point_10(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 10 * 0.0001, mdot);
    #{"point": 10, "cstar_m_s": c}
}
fn cstar_operating_point_11(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 11 * 0.0001, mdot);
    #{"point": 11, "cstar_m_s": c}
}
fn cstar_operating_point_12(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 12 * 0.0001, mdot);
    #{"point": 12, "cstar_m_s": c}
}
fn cstar_operating_point_13(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 13 * 0.0001, mdot);
    #{"point": 13, "cstar_m_s": c}
}
fn cstar_operating_point_14(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 14 * 0.0001, mdot);
    #{"point": 14, "cstar_m_s": c}
}
fn cstar_operating_point_15(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 15 * 0.0001, mdot);
    #{"point": 15, "cstar_m_s": c}
}
fn cstar_operating_point_16(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 16 * 0.0001, mdot);
    #{"point": 16, "cstar_m_s": c}
}
fn cstar_operating_point_17(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 17 * 0.0001, mdot);
    #{"point": 17, "cstar_m_s": c}
}
fn cstar_operating_point_18(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 18 * 0.0001, mdot);
    #{"point": 18, "cstar_m_s": c}
}
fn cstar_operating_point_19(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 19 * 0.0001, mdot);
    #{"point": 19, "cstar_m_s": c}
}
fn cstar_operating_point_20(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 20 * 0.0001, mdot);
    #{"point": 20, "cstar_m_s": c}
}
fn cstar_operating_point_21(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 21 * 0.0001, mdot);
    #{"point": 21, "cstar_m_s": c}
}
fn cstar_operating_point_22(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 22 * 0.0001, mdot);
    #{"point": 22, "cstar_m_s": c}
}
fn cstar_operating_point_23(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 23 * 0.0001, mdot);
    #{"point": 23, "cstar_m_s": c}
}
fn cstar_operating_point_24(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 24 * 0.0001, mdot);
    #{"point": 24, "cstar_m_s": c}
}
fn cstar_operating_point_25(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 25 * 0.0001, mdot);
    #{"point": 25, "cstar_m_s": c}
}
fn cstar_operating_point_26(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 26 * 0.0001, mdot);
    #{"point": 26, "cstar_m_s": c}
}
fn cstar_operating_point_27(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 27 * 0.0001, mdot);
    #{"point": 27, "cstar_m_s": c}
}
fn cstar_operating_point_28(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 28 * 0.0001, mdot);
    #{"point": 28, "cstar_m_s": c}
}
fn cstar_operating_point_29(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 29 * 0.0001, mdot);
    #{"point": 29, "cstar_m_s": c}
}
fn cstar_operating_point_30(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 30 * 0.0001, mdot);
    #{"point": 30, "cstar_m_s": c}
}
fn cstar_operating_point_31(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 31 * 0.0001, mdot);
    #{"point": 31, "cstar_m_s": c}
}
fn cstar_operating_point_32(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 32 * 0.0001, mdot);
    #{"point": 32, "cstar_m_s": c}
}
fn cstar_operating_point_33(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 33 * 0.0001, mdot);
    #{"point": 33, "cstar_m_s": c}
}
fn cstar_operating_point_34(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 34 * 0.0001, mdot);
    #{"point": 34, "cstar_m_s": c}
}
fn cstar_operating_point_35(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 35 * 0.0001, mdot);
    #{"point": 35, "cstar_m_s": c}
}
fn cstar_operating_point_36(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 36 * 0.0001, mdot);
    #{"point": 36, "cstar_m_s": c}
}
fn cstar_operating_point_37(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 37 * 0.0001, mdot);
    #{"point": 37, "cstar_m_s": c}
}
fn cstar_operating_point_38(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 38 * 0.0001, mdot);
    #{"point": 38, "cstar_m_s": c}
}
fn cstar_operating_point_39(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 39 * 0.0001, mdot);
    #{"point": 39, "cstar_m_s": c}
}
fn cstar_operating_point_40(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 40 * 0.0001, mdot);
    #{"point": 40, "cstar_m_s": c}
}
fn cstar_operating_point_41(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 41 * 0.0001, mdot);
    #{"point": 41, "cstar_m_s": c}
}
fn cstar_operating_point_42(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 42 * 0.0001, mdot);
    #{"point": 42, "cstar_m_s": c}
}
fn cstar_operating_point_43(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 43 * 0.0001, mdot);
    #{"point": 43, "cstar_m_s": c}
}
fn cstar_operating_point_44(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 44 * 0.0001, mdot);
    #{"point": 44, "cstar_m_s": c}
}
fn cstar_operating_point_45(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 45 * 0.0001, mdot);
    #{"point": 45, "cstar_m_s": c}
}
fn cstar_operating_point_46(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 46 * 0.0001, mdot);
    #{"point": 46, "cstar_m_s": c}
}
fn cstar_operating_point_47(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 47 * 0.0001, mdot);
    #{"point": 47, "cstar_m_s": c}
}
fn cstar_operating_point_48(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 48 * 0.0001, mdot);
    #{"point": 48, "cstar_m_s": c}
}
fn cstar_operating_point_49(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 49 * 0.0001, mdot);
    #{"point": 49, "cstar_m_s": c}
}
fn cstar_operating_point_50(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 50 * 0.0001, mdot);
    #{"point": 50, "cstar_m_s": c}
}
fn cstar_operating_point_51(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 51 * 0.0001, mdot);
    #{"point": 51, "cstar_m_s": c}
}
fn cstar_operating_point_52(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 52 * 0.0001, mdot);
    #{"point": 52, "cstar_m_s": c}
}
fn cstar_operating_point_53(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 53 * 0.0001, mdot);
    #{"point": 53, "cstar_m_s": c}
}
fn cstar_operating_point_54(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 54 * 0.0001, mdot);
    #{"point": 54, "cstar_m_s": c}
}
fn cstar_operating_point_55(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 55 * 0.0001, mdot);
    #{"point": 55, "cstar_m_s": c}
}
fn cstar_operating_point_56(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 56 * 0.0001, mdot);
    #{"point": 56, "cstar_m_s": c}
}
fn cstar_operating_point_57(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 57 * 0.0001, mdot);
    #{"point": 57, "cstar_m_s": c}
}
fn cstar_operating_point_58(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 58 * 0.0001, mdot);
    #{"point": 58, "cstar_m_s": c}
}
fn cstar_operating_point_59(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 59 * 0.0001, mdot);
    #{"point": 59, "cstar_m_s": c}
}
fn cstar_operating_point_60(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 60 * 0.0001, mdot);
    #{"point": 60, "cstar_m_s": c}
}
fn cstar_operating_point_61(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 61 * 0.0001, mdot);
    #{"point": 61, "cstar_m_s": c}
}
fn cstar_operating_point_62(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 62 * 0.0001, mdot);
    #{"point": 62, "cstar_m_s": c}
}
fn cstar_operating_point_63(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 63 * 0.0001, mdot);
    #{"point": 63, "cstar_m_s": c}
}
fn cstar_operating_point_64(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 64 * 0.0001, mdot);
    #{"point": 64, "cstar_m_s": c}
}
fn cstar_operating_point_65(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 65 * 0.0001, mdot);
    #{"point": 65, "cstar_m_s": c}
}
fn cstar_operating_point_66(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 66 * 0.0001, mdot);
    #{"point": 66, "cstar_m_s": c}
}
fn cstar_operating_point_67(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 67 * 0.0001, mdot);
    #{"point": 67, "cstar_m_s": c}
}
fn cstar_operating_point_68(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 68 * 0.0001, mdot);
    #{"point": 68, "cstar_m_s": c}
}
fn cstar_operating_point_69(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 69 * 0.0001, mdot);
    #{"point": 69, "cstar_m_s": c}
}
fn cstar_operating_point_70(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 70 * 0.0001, mdot);
    #{"point": 70, "cstar_m_s": c}
}
fn cstar_operating_point_71(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 71 * 0.0001, mdot);
    #{"point": 71, "cstar_m_s": c}
}
fn cstar_operating_point_72(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 72 * 0.0001, mdot);
    #{"point": 72, "cstar_m_s": c}
}
fn cstar_operating_point_73(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 73 * 0.0001, mdot);
    #{"point": 73, "cstar_m_s": c}
}
fn cstar_operating_point_74(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 74 * 0.0001, mdot);
    #{"point": 74, "cstar_m_s": c}
}
fn cstar_operating_point_75(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 75 * 0.0001, mdot);
    #{"point": 75, "cstar_m_s": c}
}
fn cstar_operating_point_76(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 76 * 0.0001, mdot);
    #{"point": 76, "cstar_m_s": c}
}
fn cstar_operating_point_77(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 77 * 0.0001, mdot);
    #{"point": 77, "cstar_m_s": c}
}
fn cstar_operating_point_78(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 78 * 0.0001, mdot);
    #{"point": 78, "cstar_m_s": c}
}
fn cstar_operating_point_79(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 79 * 0.0001, mdot);
    #{"point": 79, "cstar_m_s": c}
}
fn cstar_operating_point_80(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 80 * 0.0001, mdot);
    #{"point": 80, "cstar_m_s": c}
}
fn cstar_operating_point_81(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 81 * 0.0001, mdot);
    #{"point": 81, "cstar_m_s": c}
}
fn cstar_operating_point_82(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 82 * 0.0001, mdot);
    #{"point": 82, "cstar_m_s": c}
}
fn cstar_operating_point_83(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 83 * 0.0001, mdot);
    #{"point": 83, "cstar_m_s": c}
}
fn cstar_operating_point_84(pc_bar, mdot) {
    let c = delivered_cstar(pc_bar, 0.008 + 84 * 0.0001, mdot);
    #{"point": 84, "cstar_m_s": c}
}
