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
fn nozzle_expansion_case_45(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 45 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 45, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_46(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 46 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 46, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_47(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 47 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 47, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_48(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 48 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 48, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_49(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 49 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 49, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_50(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 50 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 50, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_51(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 51 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 51, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_52(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 52 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 52, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_53(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 53 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 53, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_54(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 54 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 54, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_55(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 55 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 55, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_56(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 56 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 56, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_57(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 57 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 57, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_58(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 58 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 58, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_59(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 59 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 59, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_60(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 60 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 60, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_61(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 61 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 61, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_62(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 62 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 62, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_63(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 63 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 63, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_64(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 64 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 64, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_65(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 65 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 65, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_66(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 66 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 66, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_67(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 67 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 67, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_68(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 68 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 68, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_69(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 69 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 69, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_70(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 70 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 70, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_71(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 71 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 71, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_72(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 72 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 72, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_73(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 73 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 73, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_74(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 74 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 74, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_75(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 75 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 75, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_76(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 76 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 76, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_77(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 77 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 77, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_78(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 78 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 78, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_79(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 79 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 79, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_80(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 80 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 80, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_81(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 81 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 81, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_82(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 82 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 82, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_83(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 83 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 83, "thrust_kn": t_kn, "isp_sec": isp}
}
fn nozzle_expansion_case_84(mdot, v_e) {
    let t_kn = vacuum_thrust_kn(mdot, v_e + 84 * 2.0, 0.05, 0.5);
    let isp = specific_impulse_seconds(t_kn, mdot);
    #{"case": 84, "thrust_kn": t_kn, "isp_sec": isp}
}
