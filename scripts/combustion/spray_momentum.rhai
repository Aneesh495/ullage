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
