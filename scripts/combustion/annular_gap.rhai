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
