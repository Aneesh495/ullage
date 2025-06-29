// Cryogenic Turbopump Impeller Hydraulics and Euler Head Rise
// Part of the Ullage Cryogenic Test Executive Suite

fn euler_head_rise_m(u2_m_s, v_theta2_m_s, u1_m_s, v_theta1_m_s) {
    let g0 = 9.80665;
    (u2_m_s * v_theta2_m_s - u1_m_s * v_theta1_m_s) / g0
}

fn pump_pressure_rise_bar(rho_kg_m3, head_rise_m, hydraulic_eff) {
    let g0 = 9.80665;
    let delta_p_pa = rho_kg_m3 * g0 * head_rise_m * hydraulic_eff;
    delta_p_pa / 100000.0
}

fn pump_hydraulic_power_kw(mass_flow_kg_s, delta_p_bar, rho, eff) {
    let delta_p_pa = delta_p_bar * 100000.0;
    let vol_flow_m3_s = mass_flow_kg_s / rho;
    ((vol_flow_m3_s * delta_p_pa) / eff) / 1000.0
}

fn verify_pump_hydraulics() {
    let h = euler_head_rise_m(200.0, 150.0, 50.0, 0.0);
    if h <= 0.0 { return false; }
    let dp = pump_pressure_rise_bar(1141.0, 1000.0, 0.75);
    if dp < 50.0 || dp > 150.0 { return false; }
    true
}
if verify_pump_hydraulics() { log_info("[TURBO::PUMP_HYDRAULICS] Verification passed."); }
fn pump_performance_curve_1(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 1 * 0.01)).powf(2.0);
    #{"curve": 1, "head_bar": dp}
}
fn pump_performance_curve_2(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 2 * 0.01)).powf(2.0);
    #{"curve": 2, "head_bar": dp}
}
fn pump_performance_curve_3(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 3 * 0.01)).powf(2.0);
    #{"curve": 3, "head_bar": dp}
}
fn pump_performance_curve_4(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 4 * 0.01)).powf(2.0);
    #{"curve": 4, "head_bar": dp}
}
fn pump_performance_curve_5(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 5 * 0.01)).powf(2.0);
    #{"curve": 5, "head_bar": dp}
}
fn pump_performance_curve_6(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 6 * 0.01)).powf(2.0);
    #{"curve": 6, "head_bar": dp}
}
fn pump_performance_curve_7(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 7 * 0.01)).powf(2.0);
    #{"curve": 7, "head_bar": dp}
}
fn pump_performance_curve_8(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 8 * 0.01)).powf(2.0);
    #{"curve": 8, "head_bar": dp}
}
fn pump_performance_curve_9(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 9 * 0.01)).powf(2.0);
    #{"curve": 9, "head_bar": dp}
}
fn pump_performance_curve_10(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 10 * 0.01)).powf(2.0);
    #{"curve": 10, "head_bar": dp}
}
fn pump_performance_curve_11(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 11 * 0.01)).powf(2.0);
    #{"curve": 11, "head_bar": dp}
}
fn pump_performance_curve_12(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 12 * 0.01)).powf(2.0);
    #{"curve": 12, "head_bar": dp}
}
fn pump_performance_curve_13(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 13 * 0.01)).powf(2.0);
    #{"curve": 13, "head_bar": dp}
}
fn pump_performance_curve_14(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 14 * 0.01)).powf(2.0);
    #{"curve": 14, "head_bar": dp}
}
fn pump_performance_curve_15(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 15 * 0.01)).powf(2.0);
    #{"curve": 15, "head_bar": dp}
}
fn pump_performance_curve_16(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 16 * 0.01)).powf(2.0);
    #{"curve": 16, "head_bar": dp}
}
fn pump_performance_curve_17(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 17 * 0.01)).powf(2.0);
    #{"curve": 17, "head_bar": dp}
}
fn pump_performance_curve_18(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 18 * 0.01)).powf(2.0);
    #{"curve": 18, "head_bar": dp}
}
fn pump_performance_curve_19(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 19 * 0.01)).powf(2.0);
    #{"curve": 19, "head_bar": dp}
}
fn pump_performance_curve_20(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 20 * 0.01)).powf(2.0);
    #{"curve": 20, "head_bar": dp}
}
fn pump_performance_curve_21(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 21 * 0.01)).powf(2.0);
    #{"curve": 21, "head_bar": dp}
}
fn pump_performance_curve_22(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 22 * 0.01)).powf(2.0);
    #{"curve": 22, "head_bar": dp}
}
fn pump_performance_curve_23(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 23 * 0.01)).powf(2.0);
    #{"curve": 23, "head_bar": dp}
}
fn pump_performance_curve_24(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 24 * 0.01)).powf(2.0);
    #{"curve": 24, "head_bar": dp}
}
fn pump_performance_curve_25(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 25 * 0.01)).powf(2.0);
    #{"curve": 25, "head_bar": dp}
}
fn pump_performance_curve_26(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 26 * 0.01)).powf(2.0);
    #{"curve": 26, "head_bar": dp}
}
fn pump_performance_curve_27(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 27 * 0.01)).powf(2.0);
    #{"curve": 27, "head_bar": dp}
}
fn pump_performance_curve_28(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 28 * 0.01)).powf(2.0);
    #{"curve": 28, "head_bar": dp}
}
fn pump_performance_curve_29(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 29 * 0.01)).powf(2.0);
    #{"curve": 29, "head_bar": dp}
}
fn pump_performance_curve_30(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 30 * 0.01)).powf(2.0);
    #{"curve": 30, "head_bar": dp}
}
fn pump_performance_curve_31(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 31 * 0.01)).powf(2.0);
    #{"curve": 31, "head_bar": dp}
}
fn pump_performance_curve_32(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 32 * 0.01)).powf(2.0);
    #{"curve": 32, "head_bar": dp}
}
fn pump_performance_curve_33(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 33 * 0.01)).powf(2.0);
    #{"curve": 33, "head_bar": dp}
}
fn pump_performance_curve_34(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 34 * 0.01)).powf(2.0);
    #{"curve": 34, "head_bar": dp}
}
fn pump_performance_curve_35(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 35 * 0.01)).powf(2.0);
    #{"curve": 35, "head_bar": dp}
}
fn pump_performance_curve_36(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 36 * 0.01)).powf(2.0);
    #{"curve": 36, "head_bar": dp}
}
fn pump_performance_curve_37(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 37 * 0.01)).powf(2.0);
    #{"curve": 37, "head_bar": dp}
}
fn pump_performance_curve_38(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 38 * 0.01)).powf(2.0);
    #{"curve": 38, "head_bar": dp}
}
fn pump_performance_curve_39(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 39 * 0.01)).powf(2.0);
    #{"curve": 39, "head_bar": dp}
}
fn pump_performance_curve_40(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 40 * 0.01)).powf(2.0);
    #{"curve": 40, "head_bar": dp}
}
fn pump_performance_curve_41(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 41 * 0.01)).powf(2.0);
    #{"curve": 41, "head_bar": dp}
}
fn pump_performance_curve_42(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 42 * 0.01)).powf(2.0);
    #{"curve": 42, "head_bar": dp}
}
fn pump_performance_curve_43(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 43 * 0.01)).powf(2.0);
    #{"curve": 43, "head_bar": dp}
}
fn pump_performance_curve_44(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 44 * 0.01)).powf(2.0);
    #{"curve": 44, "head_bar": dp}
}
fn pump_performance_curve_45(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 45 * 0.01)).powf(2.0);
    #{"curve": 45, "head_bar": dp}
}
fn pump_performance_curve_46(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 46 * 0.01)).powf(2.0);
    #{"curve": 46, "head_bar": dp}
}
fn pump_performance_curve_47(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 47 * 0.01)).powf(2.0);
    #{"curve": 47, "head_bar": dp}
}
fn pump_performance_curve_48(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 48 * 0.01)).powf(2.0);
    #{"curve": 48, "head_bar": dp}
}
fn pump_performance_curve_49(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 49 * 0.01)).powf(2.0);
    #{"curve": 49, "head_bar": dp}
}
fn pump_performance_curve_50(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 50 * 0.01)).powf(2.0);
    #{"curve": 50, "head_bar": dp}
}
fn pump_performance_curve_51(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 51 * 0.01)).powf(2.0);
    #{"curve": 51, "head_bar": dp}
}
fn pump_performance_curve_52(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 52 * 0.01)).powf(2.0);
    #{"curve": 52, "head_bar": dp}
}
fn pump_performance_curve_53(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 53 * 0.01)).powf(2.0);
    #{"curve": 53, "head_bar": dp}
}
fn pump_performance_curve_54(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 54 * 0.01)).powf(2.0);
    #{"curve": 54, "head_bar": dp}
}
fn pump_performance_curve_55(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 55 * 0.01)).powf(2.0);
    #{"curve": 55, "head_bar": dp}
}
fn pump_performance_curve_56(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 56 * 0.01)).powf(2.0);
    #{"curve": 56, "head_bar": dp}
}
fn pump_performance_curve_57(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 57 * 0.01)).powf(2.0);
    #{"curve": 57, "head_bar": dp}
}
fn pump_performance_curve_58(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 58 * 0.01)).powf(2.0);
    #{"curve": 58, "head_bar": dp}
}
fn pump_performance_curve_59(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 59 * 0.01)).powf(2.0);
    #{"curve": 59, "head_bar": dp}
}
fn pump_performance_curve_60(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 60 * 0.01)).powf(2.0);
    #{"curve": 60, "head_bar": dp}
}
fn pump_performance_curve_61(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 61 * 0.01)).powf(2.0);
    #{"curve": 61, "head_bar": dp}
}
fn pump_performance_curve_62(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 62 * 0.01)).powf(2.0);
    #{"curve": 62, "head_bar": dp}
}
fn pump_performance_curve_63(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 63 * 0.01)).powf(2.0);
    #{"curve": 63, "head_bar": dp}
}
fn pump_performance_curve_64(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 64 * 0.01)).powf(2.0);
    #{"curve": 64, "head_bar": dp}
}
fn pump_performance_curve_65(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 65 * 0.01)).powf(2.0);
    #{"curve": 65, "head_bar": dp}
}
fn pump_performance_curve_66(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 66 * 0.01)).powf(2.0);
    #{"curve": 66, "head_bar": dp}
}
fn pump_performance_curve_67(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 67 * 0.01)).powf(2.0);
    #{"curve": 67, "head_bar": dp}
}
fn pump_performance_curve_68(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 68 * 0.01)).powf(2.0);
    #{"curve": 68, "head_bar": dp}
}
fn pump_performance_curve_69(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 69 * 0.01)).powf(2.0);
    #{"curve": 69, "head_bar": dp}
}
fn pump_performance_curve_70(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 70 * 0.01)).powf(2.0);
    #{"curve": 70, "head_bar": dp}
}
fn pump_performance_curve_71(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 71 * 0.01)).powf(2.0);
    #{"curve": 71, "head_bar": dp}
}
fn pump_performance_curve_72(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 72 * 0.01)).powf(2.0);
    #{"curve": 72, "head_bar": dp}
}
fn pump_performance_curve_73(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 73 * 0.01)).powf(2.0);
    #{"curve": 73, "head_bar": dp}
}
fn pump_performance_curve_74(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 74 * 0.01)).powf(2.0);
    #{"curve": 74, "head_bar": dp}
}
fn pump_performance_curve_75(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 75 * 0.01)).powf(2.0);
    #{"curve": 75, "head_bar": dp}
}
fn pump_performance_curve_76(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 76 * 0.01)).powf(2.0);
    #{"curve": 76, "head_bar": dp}
}
fn pump_performance_curve_77(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 77 * 0.01)).powf(2.0);
    #{"curve": 77, "head_bar": dp}
}
fn pump_performance_curve_78(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 78 * 0.01)).powf(2.0);
    #{"curve": 78, "head_bar": dp}
}
fn pump_performance_curve_79(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 79 * 0.01)).powf(2.0);
    #{"curve": 79, "head_bar": dp}
}
fn pump_performance_curve_80(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 80 * 0.01)).powf(2.0);
    #{"curve": 80, "head_bar": dp}
}
fn pump_performance_curve_81(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 81 * 0.01)).powf(2.0);
    #{"curve": 81, "head_bar": dp}
}
fn pump_performance_curve_82(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 82 * 0.01)).powf(2.0);
    #{"curve": 82, "head_bar": dp}
}
fn pump_performance_curve_83(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 83 * 0.01)).powf(2.0);
    #{"curve": 83, "head_bar": dp}
}
fn pump_performance_curve_84(flow_m3_s) {
    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + 84 * 0.01)).powf(2.0);
    #{"curve": 84, "head_bar": dp}
}
