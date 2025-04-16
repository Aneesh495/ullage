// Specific Impulse (Isp) and Supersonic Nozzle Expansion
// Part of the Ullage Cryogenic Test Executive Suite

fn vacuum_thrust_kn(mass_flow_kg_s, v_exit_m_s, exit_area_sq_m, p_exit_bar) {
    let momentum_thrust = mass_flow_kg_s * v_exit_m_s;
    let pressure_thrust = (p_exit_bar * 100000.0) * exit_area_sq_m;
    (momentum_thrust + pressure_thrust) / 1000.0
}

fn sea_level_thrust_kn(mass_flow_kg_s, v_exit_m_s, exit_area_sq_m, p_exit_bar) {
    let p_ambient_pa = 101325.0;
    let momentum_thrust = mass_flow_kg_s * v_exit_m_s;
    let pressure_thrust = (p_exit_bar * 100000.0 - p_ambient_pa) * exit_area_sq_m;
    (momentum_thrust + pressure_thrust) / 1000.0
}

fn specific_impulse_seconds(thrust_kn, mass_flow_kg_s) {
    let g0 = 9.80665;
    (thrust_kn * 1000.0) / (mass_flow_kg_s * g0)
}

fn verify_isp() {
    let isp = specific_impulse_seconds(100.0, 32.0);
    // 100000 / (32 * 9.80665) ~ 318.6 s
    if (isp - 318.6).abs() > 2.0 { return false; }
    true
}
if verify_isp() { log_info("[COMBUSTION::ISP] Verification passed."); }
fn nozzle_expansion_case_1(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 1 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 1, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_2(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 2 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 2, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_3(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 3 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 3, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_4(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 4 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 4, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_5(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 5 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 5, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_6(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 6 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 6, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_7(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 7 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 7, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_8(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 8 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 8, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_9(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 9 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 9, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_10(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 10 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 10, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_11(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 11 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 11, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_12(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 12 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 12, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_13(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 13 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 13, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_14(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 14 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 14, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_15(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 15 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 15, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_16(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 16 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 16, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_17(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 17 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 17, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_18(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 18 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 18, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_19(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 19 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 19, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_20(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 20 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 20, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_21(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 21 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 21, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_22(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 22 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 22, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_23(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 23 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 23, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_24(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 24 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 24, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_25(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 25 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 25, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_26(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 26 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 26, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_27(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 27 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 27, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_28(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 28 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 28, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_29(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 29 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 29, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_30(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 30 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 30, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_31(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 31 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 31, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_32(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 32 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 32, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_33(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 33 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 33, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_34(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 34 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 34, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_35(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 35 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 35, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_36(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 36 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 36, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_37(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 37 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 37, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_38(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 38 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 38, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_39(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 39 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 39, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_40(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 40 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 40, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_41(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 41 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 41, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_42(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 42 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 42, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_43(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 43 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 43, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_44(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 44 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 44, "thrust_kn": t_kn, "isp_sec": isp}
}
