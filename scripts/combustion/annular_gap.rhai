// Annular Sheet and Radial Jet Injection Velocities
// Part of the Ullage Cryogenic Test Executive Suite

fn injection_velocity_m_s(mass_flow_kg_s, density_kg_m3, flow_area_sq_m, cd) {
    let eff_area = flow_area_sq_m * cd;
    mass_flow_kg_s / (density_kg_m3 * eff_area)
}

fn verify_annular_gap() {
    let v = injection_velocity_m_s(10.0, 1000.0, 0.0005, 0.85);
    if v <= 0.0 || v > 100.0 { return false; }
    true
}
if verify_annular_gap() { log_info("[COMBUSTION::ANNULAR_GAP] Verification passed."); }
fn annular_gap_velocity_1(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 1 * 0.01), 0.85);
    #{"slot": 1, "velocity": v}
}
fn annular_gap_velocity_2(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 2 * 0.01), 0.85);
    #{"slot": 2, "velocity": v}
}
fn annular_gap_velocity_3(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 3 * 0.01), 0.85);
    #{"slot": 3, "velocity": v}
}
fn annular_gap_velocity_4(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 4 * 0.01), 0.85);
    #{"slot": 4, "velocity": v}
}
fn annular_gap_velocity_5(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 5 * 0.01), 0.85);
    #{"slot": 5, "velocity": v}
}
fn annular_gap_velocity_6(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 6 * 0.01), 0.85);
    #{"slot": 6, "velocity": v}
}
fn annular_gap_velocity_7(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 7 * 0.01), 0.85);
    #{"slot": 7, "velocity": v}
}
fn annular_gap_velocity_8(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 8 * 0.01), 0.85);
    #{"slot": 8, "velocity": v}
}
fn annular_gap_velocity_9(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 9 * 0.01), 0.85);
    #{"slot": 9, "velocity": v}
}
fn annular_gap_velocity_10(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 10 * 0.01), 0.85);
    #{"slot": 10, "velocity": v}
}
fn annular_gap_velocity_11(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 11 * 0.01), 0.85);
    #{"slot": 11, "velocity": v}
}
fn annular_gap_velocity_12(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 12 * 0.01), 0.85);
    #{"slot": 12, "velocity": v}
}
fn annular_gap_velocity_13(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 13 * 0.01), 0.85);
    #{"slot": 13, "velocity": v}
}
fn annular_gap_velocity_14(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 14 * 0.01), 0.85);
    #{"slot": 14, "velocity": v}
}
fn annular_gap_velocity_15(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 15 * 0.01), 0.85);
    #{"slot": 15, "velocity": v}
}
fn annular_gap_velocity_16(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 16 * 0.01), 0.85);
    #{"slot": 16, "velocity": v}
}
fn annular_gap_velocity_17(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 17 * 0.01), 0.85);
    #{"slot": 17, "velocity": v}
}
fn annular_gap_velocity_18(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 18 * 0.01), 0.85);
    #{"slot": 18, "velocity": v}
}
fn annular_gap_velocity_19(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 19 * 0.01), 0.85);
    #{"slot": 19, "velocity": v}
}
fn annular_gap_velocity_20(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 20 * 0.01), 0.85);
    #{"slot": 20, "velocity": v}
}
fn annular_gap_velocity_21(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 21 * 0.01), 0.85);
    #{"slot": 21, "velocity": v}
}
fn annular_gap_velocity_22(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 22 * 0.01), 0.85);
    #{"slot": 22, "velocity": v}
}
fn annular_gap_velocity_23(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 23 * 0.01), 0.85);
    #{"slot": 23, "velocity": v}
}
fn annular_gap_velocity_24(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 24 * 0.01), 0.85);
    #{"slot": 24, "velocity": v}
}
fn annular_gap_velocity_25(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 25 * 0.01), 0.85);
    #{"slot": 25, "velocity": v}
}
fn annular_gap_velocity_26(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 26 * 0.01), 0.85);
    #{"slot": 26, "velocity": v}
}
fn annular_gap_velocity_27(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 27 * 0.01), 0.85);
    #{"slot": 27, "velocity": v}
}
fn annular_gap_velocity_28(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 28 * 0.01), 0.85);
    #{"slot": 28, "velocity": v}
}
fn annular_gap_velocity_29(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 29 * 0.01), 0.85);
    #{"slot": 29, "velocity": v}
}
fn annular_gap_velocity_30(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 30 * 0.01), 0.85);
    #{"slot": 30, "velocity": v}
}
fn annular_gap_velocity_31(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 31 * 0.01), 0.85);
    #{"slot": 31, "velocity": v}
}
fn annular_gap_velocity_32(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 32 * 0.01), 0.85);
    #{"slot": 32, "velocity": v}
}
fn annular_gap_velocity_33(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 33 * 0.01), 0.85);
    #{"slot": 33, "velocity": v}
}
fn annular_gap_velocity_34(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 34 * 0.01), 0.85);
    #{"slot": 34, "velocity": v}
}
fn annular_gap_velocity_35(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 35 * 0.01), 0.85);
    #{"slot": 35, "velocity": v}
}
fn annular_gap_velocity_36(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 36 * 0.01), 0.85);
    #{"slot": 36, "velocity": v}
}
fn annular_gap_velocity_37(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 37 * 0.01), 0.85);
    #{"slot": 37, "velocity": v}
}
fn annular_gap_velocity_38(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 38 * 0.01), 0.85);
    #{"slot": 38, "velocity": v}
}
fn annular_gap_velocity_39(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 39 * 0.01), 0.85);
    #{"slot": 39, "velocity": v}
}
fn annular_gap_velocity_40(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 40 * 0.01), 0.85);
    #{"slot": 40, "velocity": v}
}
fn annular_gap_velocity_41(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 41 * 0.01), 0.85);
    #{"slot": 41, "velocity": v}
}
fn annular_gap_velocity_42(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 42 * 0.01), 0.85);
    #{"slot": 42, "velocity": v}
}
fn annular_gap_velocity_43(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 43 * 0.01), 0.85);
    #{"slot": 43, "velocity": v}
}
fn annular_gap_velocity_44(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 44 * 0.01), 0.85);
    #{"slot": 44, "velocity": v}
}
fn annular_gap_velocity_45(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 45 * 0.01), 0.85);
    #{"slot": 45, "velocity": v}
}
fn annular_gap_velocity_46(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 46 * 0.01), 0.85);
    #{"slot": 46, "velocity": v}
}
fn annular_gap_velocity_47(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 47 * 0.01), 0.85);
    #{"slot": 47, "velocity": v}
}
fn annular_gap_velocity_48(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 48 * 0.01), 0.85);
    #{"slot": 48, "velocity": v}
}
fn annular_gap_velocity_49(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 49 * 0.01), 0.85);
    #{"slot": 49, "velocity": v}
}
fn annular_gap_velocity_50(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 50 * 0.01), 0.85);
    #{"slot": 50, "velocity": v}
}
fn annular_gap_velocity_51(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 51 * 0.01), 0.85);
    #{"slot": 51, "velocity": v}
}
fn annular_gap_velocity_52(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 52 * 0.01), 0.85);
    #{"slot": 52, "velocity": v}
}
fn annular_gap_velocity_53(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 53 * 0.01), 0.85);
    #{"slot": 53, "velocity": v}
}
fn annular_gap_velocity_54(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 54 * 0.01), 0.85);
    #{"slot": 54, "velocity": v}
}
fn annular_gap_velocity_55(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 55 * 0.01), 0.85);
    #{"slot": 55, "velocity": v}
}
fn annular_gap_velocity_56(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 56 * 0.01), 0.85);
    #{"slot": 56, "velocity": v}
}
fn annular_gap_velocity_57(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 57 * 0.01), 0.85);
    #{"slot": 57, "velocity": v}
}
fn annular_gap_velocity_58(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 58 * 0.01), 0.85);
    #{"slot": 58, "velocity": v}
}
fn annular_gap_velocity_59(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 59 * 0.01), 0.85);
    #{"slot": 59, "velocity": v}
}
fn annular_gap_velocity_60(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 60 * 0.01), 0.85);
    #{"slot": 60, "velocity": v}
}
fn annular_gap_velocity_61(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 61 * 0.01), 0.85);
    #{"slot": 61, "velocity": v}
}
fn annular_gap_velocity_62(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 62 * 0.01), 0.85);
    #{"slot": 62, "velocity": v}
}
fn annular_gap_velocity_63(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 63 * 0.01), 0.85);
    #{"slot": 63, "velocity": v}
}
fn annular_gap_velocity_64(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 64 * 0.01), 0.85);
    #{"slot": 64, "velocity": v}
}
fn annular_gap_velocity_65(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 65 * 0.01), 0.85);
    #{"slot": 65, "velocity": v}
}
fn annular_gap_velocity_66(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 66 * 0.01), 0.85);
    #{"slot": 66, "velocity": v}
}
fn annular_gap_velocity_67(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 67 * 0.01), 0.85);
    #{"slot": 67, "velocity": v}
}
fn annular_gap_velocity_68(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 68 * 0.01), 0.85);
    #{"slot": 68, "velocity": v}
}
fn annular_gap_velocity_69(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 69 * 0.01), 0.85);
    #{"slot": 69, "velocity": v}
}
fn annular_gap_velocity_70(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 70 * 0.01), 0.85);
    #{"slot": 70, "velocity": v}
}
fn annular_gap_velocity_71(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 71 * 0.01), 0.85);
    #{"slot": 71, "velocity": v}
}
fn annular_gap_velocity_72(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 72 * 0.01), 0.85);
    #{"slot": 72, "velocity": v}
}
fn annular_gap_velocity_73(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 73 * 0.01), 0.85);
    #{"slot": 73, "velocity": v}
}
fn annular_gap_velocity_74(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 74 * 0.01), 0.85);
    #{"slot": 74, "velocity": v}
}
fn annular_gap_velocity_75(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 75 * 0.01), 0.85);
    #{"slot": 75, "velocity": v}
}
fn annular_gap_velocity_76(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 76 * 0.01), 0.85);
    #{"slot": 76, "velocity": v}
}
fn annular_gap_velocity_77(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 77 * 0.01), 0.85);
    #{"slot": 77, "velocity": v}
}
fn annular_gap_velocity_78(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 78 * 0.01), 0.85);
    #{"slot": 78, "velocity": v}
}
fn annular_gap_velocity_79(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 79 * 0.01), 0.85);
    #{"slot": 79, "velocity": v}
}
fn annular_gap_velocity_80(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 80 * 0.01), 0.85);
    #{"slot": 80, "velocity": v}
}
fn annular_gap_velocity_81(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 81 * 0.01), 0.85);
    #{"slot": 81, "velocity": v}
}
fn annular_gap_velocity_82(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 82 * 0.01), 0.85);
    #{"slot": 82, "velocity": v}
}
fn annular_gap_velocity_83(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 83 * 0.01), 0.85);
    #{"slot": 83, "velocity": v}
}
fn annular_gap_velocity_84(mdot, rho) {
    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + 84 * 0.01), 0.85);
    #{"slot": 84, "velocity": v}
}
