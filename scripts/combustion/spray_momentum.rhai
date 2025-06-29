// Total Momentum Ratio (TMR) and Spray Fan Deflection Dynamics
// Preserving combustion acoustic stability and chamber wall thermal margin

fn total_momentum_ratio(m_rad, v_rad, m_ann, v_ann) {
    let mom_rad = m_rad * v_rad;
    let mom_ann = m_ann * v_ann;
    mom_rad / mom_ann
}

fn spray_half_angle_deg(tmr) {
    let rad = tmr.atan();
    rad * (180.0 / 3.1415926535)
}

fn verify_spray_momentum() {
    let tmr = total_momentum_ratio(10.0, 30.0, 5.0, 30.0);
    if (tmr - 2.0).abs() > 1.0e-6 { return false; }
    let angle = spray_half_angle_deg(1.0);
    if (angle - 45.0).abs() > 0.5 { return false; }
    true
}
if verify_spray_momentum() { log_info("[COMBUSTION::SPRAY_MOMENTUM] Verification passed."); }
fn tmr_sweep_point_1(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 1 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 1, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_2(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 2 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 2, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_3(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 3 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 3, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_4(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 4 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 4, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_5(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 5 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 5, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_6(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 6 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 6, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_7(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 7 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 7, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_8(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 8 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 8, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_9(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 9 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 9, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_10(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 10 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 10, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_11(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 11 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 11, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_12(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 12 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 12, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_13(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 13 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 13, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_14(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 14 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 14, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_15(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 15 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 15, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_16(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 16 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 16, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_17(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 17 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 17, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_18(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 18 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 18, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_19(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 19 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 19, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_20(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 20 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 20, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_21(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 21 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 21, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_22(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 22 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 22, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_23(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 23 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 23, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_24(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 24 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 24, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_25(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 25 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 25, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_26(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 26 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 26, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_27(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 27 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 27, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_28(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 28 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 28, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_29(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 29 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 29, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_30(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 30 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 30, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_31(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 31 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 31, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_32(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 32 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 32, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_33(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 33 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 33, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_34(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 34 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 34, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_35(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 35 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 35, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_36(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 36 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 36, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_37(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 37 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 37, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_38(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 38 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 38, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_39(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 39 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 39, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_40(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 40 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 40, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_41(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 41 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 41, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_42(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 42 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 42, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_43(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 43 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 43, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_44(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 44 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 44, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_45(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 45 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 45, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_46(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 46 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 46, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_47(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 47 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 47, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_48(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 48 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 48, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_49(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 49 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 49, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_50(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 50 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 50, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_51(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 51 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 51, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_52(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 52 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 52, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_53(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 53 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 53, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_54(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 54 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 54, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_55(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 55 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 55, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_56(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 56 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 56, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_57(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 57 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 57, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_58(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 58 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 58, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_59(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 59 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 59, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_60(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 60 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 60, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_61(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 61 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 61, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_62(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 62 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 62, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_63(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 63 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 63, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_64(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 64 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 64, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_65(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 65 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 65, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_66(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 66 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 66, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_67(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 67 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 67, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_68(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 68 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 68, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_69(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 69 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 69, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_70(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 70 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 70, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_71(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 71 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 71, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_72(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 72 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 72, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_73(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 73 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 73, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_74(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 74 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 74, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_75(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 75 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 75, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_76(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 76 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 76, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_77(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 77 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 77, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_78(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 78 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 78, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_79(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 79 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 79, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_80(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 80 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 80, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_81(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 81 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 81, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_82(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 82 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 82, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_83(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 83 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 83, "tmr": tmr, "angle_deg": ang}
}
fn tmr_sweep_point_84(m_ox, m_fuel) {
    let tmr = total_momentum_ratio(m_ox, 25.0 + 84 * 0.2, m_fuel, 25.0);
    let ang = spray_half_angle_deg(tmr);
    #{"sample": 84, "tmr": tmr, "angle_deg": ang}
}
