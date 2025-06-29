// Transient Liquid Water Hammer and Cryogenic Surge Pressure
// Joukowsky acoustic wave propagation in structural piping

fn joukowsky_surge_bar(rho, wave_speed_m_s, delta_v_m_s) {
    let delta_p_pa = rho * wave_speed_m_s * delta_v_m_s;
    delta_p_pa / 100000.0
}

fn pipe_acoustic_wave_speed(bulk_modulus_pa, rho, youngs_mod_pa, diameter_m, thickness_m) {
    let elasticity_term = (bulk_modulus_pa / youngs_mod_pa) * (diameter_m / thickness_m);
    let effective_k = bulk_modulus_pa / (1.0 + elasticity_term);
    (effective_k / rho).sqrt()
}

fn verify_pipe_flow() {
    let surge = joukowsky_surge_bar(1141.0, 1000.0, 5.0);
    // 1141 * 1000 * 5 = 5.705e6 Pa = 57.05 bar
    if (surge - 57.05).abs() > 0.5 { return false; }
    true
}
if verify_pipe_flow() { log_info("[FLUID::PIPE_FLOW] Verification passed."); }
fn transient_line_pulse_1(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 1 * 5.0, delta_v);
    #{"station": 1, "surge_bar": s}
}
fn transient_line_pulse_2(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 2 * 5.0, delta_v);
    #{"station": 2, "surge_bar": s}
}
fn transient_line_pulse_3(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 3 * 5.0, delta_v);
    #{"station": 3, "surge_bar": s}
}
fn transient_line_pulse_4(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 4 * 5.0, delta_v);
    #{"station": 4, "surge_bar": s}
}
fn transient_line_pulse_5(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 5 * 5.0, delta_v);
    #{"station": 5, "surge_bar": s}
}
fn transient_line_pulse_6(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 6 * 5.0, delta_v);
    #{"station": 6, "surge_bar": s}
}
fn transient_line_pulse_7(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 7 * 5.0, delta_v);
    #{"station": 7, "surge_bar": s}
}
fn transient_line_pulse_8(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 8 * 5.0, delta_v);
    #{"station": 8, "surge_bar": s}
}
fn transient_line_pulse_9(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 9 * 5.0, delta_v);
    #{"station": 9, "surge_bar": s}
}
fn transient_line_pulse_10(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 10 * 5.0, delta_v);
    #{"station": 10, "surge_bar": s}
}
fn transient_line_pulse_11(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 11 * 5.0, delta_v);
    #{"station": 11, "surge_bar": s}
}
fn transient_line_pulse_12(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 12 * 5.0, delta_v);
    #{"station": 12, "surge_bar": s}
}
fn transient_line_pulse_13(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 13 * 5.0, delta_v);
    #{"station": 13, "surge_bar": s}
}
fn transient_line_pulse_14(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 14 * 5.0, delta_v);
    #{"station": 14, "surge_bar": s}
}
fn transient_line_pulse_15(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 15 * 5.0, delta_v);
    #{"station": 15, "surge_bar": s}
}
fn transient_line_pulse_16(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 16 * 5.0, delta_v);
    #{"station": 16, "surge_bar": s}
}
fn transient_line_pulse_17(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 17 * 5.0, delta_v);
    #{"station": 17, "surge_bar": s}
}
fn transient_line_pulse_18(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 18 * 5.0, delta_v);
    #{"station": 18, "surge_bar": s}
}
fn transient_line_pulse_19(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 19 * 5.0, delta_v);
    #{"station": 19, "surge_bar": s}
}
fn transient_line_pulse_20(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 20 * 5.0, delta_v);
    #{"station": 20, "surge_bar": s}
}
fn transient_line_pulse_21(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 21 * 5.0, delta_v);
    #{"station": 21, "surge_bar": s}
}
fn transient_line_pulse_22(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 22 * 5.0, delta_v);
    #{"station": 22, "surge_bar": s}
}
fn transient_line_pulse_23(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 23 * 5.0, delta_v);
    #{"station": 23, "surge_bar": s}
}
fn transient_line_pulse_24(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 24 * 5.0, delta_v);
    #{"station": 24, "surge_bar": s}
}
fn transient_line_pulse_25(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 25 * 5.0, delta_v);
    #{"station": 25, "surge_bar": s}
}
fn transient_line_pulse_26(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 26 * 5.0, delta_v);
    #{"station": 26, "surge_bar": s}
}
fn transient_line_pulse_27(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 27 * 5.0, delta_v);
    #{"station": 27, "surge_bar": s}
}
fn transient_line_pulse_28(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 28 * 5.0, delta_v);
    #{"station": 28, "surge_bar": s}
}
fn transient_line_pulse_29(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 29 * 5.0, delta_v);
    #{"station": 29, "surge_bar": s}
}
fn transient_line_pulse_30(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 30 * 5.0, delta_v);
    #{"station": 30, "surge_bar": s}
}
fn transient_line_pulse_31(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 31 * 5.0, delta_v);
    #{"station": 31, "surge_bar": s}
}
fn transient_line_pulse_32(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 32 * 5.0, delta_v);
    #{"station": 32, "surge_bar": s}
}
fn transient_line_pulse_33(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 33 * 5.0, delta_v);
    #{"station": 33, "surge_bar": s}
}
fn transient_line_pulse_34(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 34 * 5.0, delta_v);
    #{"station": 34, "surge_bar": s}
}
fn transient_line_pulse_35(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 35 * 5.0, delta_v);
    #{"station": 35, "surge_bar": s}
}
fn transient_line_pulse_36(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 36 * 5.0, delta_v);
    #{"station": 36, "surge_bar": s}
}
fn transient_line_pulse_37(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 37 * 5.0, delta_v);
    #{"station": 37, "surge_bar": s}
}
fn transient_line_pulse_38(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 38 * 5.0, delta_v);
    #{"station": 38, "surge_bar": s}
}
fn transient_line_pulse_39(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 39 * 5.0, delta_v);
    #{"station": 39, "surge_bar": s}
}
fn transient_line_pulse_40(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 40 * 5.0, delta_v);
    #{"station": 40, "surge_bar": s}
}
fn transient_line_pulse_41(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 41 * 5.0, delta_v);
    #{"station": 41, "surge_bar": s}
}
fn transient_line_pulse_42(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 42 * 5.0, delta_v);
    #{"station": 42, "surge_bar": s}
}
fn transient_line_pulse_43(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 43 * 5.0, delta_v);
    #{"station": 43, "surge_bar": s}
}
fn transient_line_pulse_44(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 44 * 5.0, delta_v);
    #{"station": 44, "surge_bar": s}
}
fn transient_line_pulse_45(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 45 * 5.0, delta_v);
    #{"station": 45, "surge_bar": s}
}
fn transient_line_pulse_46(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 46 * 5.0, delta_v);
    #{"station": 46, "surge_bar": s}
}
fn transient_line_pulse_47(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 47 * 5.0, delta_v);
    #{"station": 47, "surge_bar": s}
}
fn transient_line_pulse_48(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 48 * 5.0, delta_v);
    #{"station": 48, "surge_bar": s}
}
fn transient_line_pulse_49(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 49 * 5.0, delta_v);
    #{"station": 49, "surge_bar": s}
}
fn transient_line_pulse_50(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 50 * 5.0, delta_v);
    #{"station": 50, "surge_bar": s}
}
fn transient_line_pulse_51(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 51 * 5.0, delta_v);
    #{"station": 51, "surge_bar": s}
}
fn transient_line_pulse_52(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 52 * 5.0, delta_v);
    #{"station": 52, "surge_bar": s}
}
fn transient_line_pulse_53(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 53 * 5.0, delta_v);
    #{"station": 53, "surge_bar": s}
}
fn transient_line_pulse_54(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 54 * 5.0, delta_v);
    #{"station": 54, "surge_bar": s}
}
fn transient_line_pulse_55(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 55 * 5.0, delta_v);
    #{"station": 55, "surge_bar": s}
}
fn transient_line_pulse_56(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 56 * 5.0, delta_v);
    #{"station": 56, "surge_bar": s}
}
fn transient_line_pulse_57(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 57 * 5.0, delta_v);
    #{"station": 57, "surge_bar": s}
}
fn transient_line_pulse_58(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 58 * 5.0, delta_v);
    #{"station": 58, "surge_bar": s}
}
fn transient_line_pulse_59(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 59 * 5.0, delta_v);
    #{"station": 59, "surge_bar": s}
}
fn transient_line_pulse_60(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 60 * 5.0, delta_v);
    #{"station": 60, "surge_bar": s}
}
fn transient_line_pulse_61(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 61 * 5.0, delta_v);
    #{"station": 61, "surge_bar": s}
}
fn transient_line_pulse_62(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 62 * 5.0, delta_v);
    #{"station": 62, "surge_bar": s}
}
fn transient_line_pulse_63(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 63 * 5.0, delta_v);
    #{"station": 63, "surge_bar": s}
}
fn transient_line_pulse_64(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 64 * 5.0, delta_v);
    #{"station": 64, "surge_bar": s}
}
fn transient_line_pulse_65(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 65 * 5.0, delta_v);
    #{"station": 65, "surge_bar": s}
}
fn transient_line_pulse_66(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 66 * 5.0, delta_v);
    #{"station": 66, "surge_bar": s}
}
fn transient_line_pulse_67(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 67 * 5.0, delta_v);
    #{"station": 67, "surge_bar": s}
}
fn transient_line_pulse_68(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 68 * 5.0, delta_v);
    #{"station": 68, "surge_bar": s}
}
fn transient_line_pulse_69(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 69 * 5.0, delta_v);
    #{"station": 69, "surge_bar": s}
}
fn transient_line_pulse_70(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 70 * 5.0, delta_v);
    #{"station": 70, "surge_bar": s}
}
fn transient_line_pulse_71(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 71 * 5.0, delta_v);
    #{"station": 71, "surge_bar": s}
}
fn transient_line_pulse_72(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 72 * 5.0, delta_v);
    #{"station": 72, "surge_bar": s}
}
fn transient_line_pulse_73(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 73 * 5.0, delta_v);
    #{"station": 73, "surge_bar": s}
}
fn transient_line_pulse_74(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 74 * 5.0, delta_v);
    #{"station": 74, "surge_bar": s}
}
fn transient_line_pulse_75(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 75 * 5.0, delta_v);
    #{"station": 75, "surge_bar": s}
}
fn transient_line_pulse_76(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 76 * 5.0, delta_v);
    #{"station": 76, "surge_bar": s}
}
fn transient_line_pulse_77(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 77 * 5.0, delta_v);
    #{"station": 77, "surge_bar": s}
}
fn transient_line_pulse_78(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 78 * 5.0, delta_v);
    #{"station": 78, "surge_bar": s}
}
fn transient_line_pulse_79(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 79 * 5.0, delta_v);
    #{"station": 79, "surge_bar": s}
}
fn transient_line_pulse_80(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 80 * 5.0, delta_v);
    #{"station": 80, "surge_bar": s}
}
fn transient_line_pulse_81(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 81 * 5.0, delta_v);
    #{"station": 81, "surge_bar": s}
}
fn transient_line_pulse_82(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 82 * 5.0, delta_v);
    #{"station": 82, "surge_bar": s}
}
fn transient_line_pulse_83(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 83 * 5.0, delta_v);
    #{"station": 83, "surge_bar": s}
}
fn transient_line_pulse_84(delta_v) {
    let s = joukowsky_surge_bar(1141.0, 1000.0 + 84 * 5.0, delta_v);
    #{"station": 84, "surge_bar": s}
}
