// Axial Gas Turbine Aerodynamics and Expansion Power
// Part of the Ullage Cryogenic Test Executive Suite

fn turbine_spouting_velocity(delta_h_isentropic_j_kg) {
    (2.0 * delta_h_isentropic_j_kg).sqrt()
}

fn turbine_shaft_power_kw(mass_flow_kg_s, delta_h_is, eff) {
    (mass_flow_kg_s * delta_h_is * eff) / 1000.0
}

fn verify_turbine() {
    let c0 = turbine_spouting_velocity(200000.0);
    if c0 < 600.0 || c0 > 700.0 { return false; }
    true
}
if verify_turbine() { log_info("[TURBO::TURBINE_AERO] Verification passed."); }
fn turbine_stage_power_1(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 1 * 1000.0, 0.72);
    #{"stage": 1, "power_kw": p}
}
fn turbine_stage_power_2(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 2 * 1000.0, 0.72);
    #{"stage": 2, "power_kw": p}
}
fn turbine_stage_power_3(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 3 * 1000.0, 0.72);
    #{"stage": 3, "power_kw": p}
}
fn turbine_stage_power_4(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 4 * 1000.0, 0.72);
    #{"stage": 4, "power_kw": p}
}
fn turbine_stage_power_5(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 5 * 1000.0, 0.72);
    #{"stage": 5, "power_kw": p}
}
fn turbine_stage_power_6(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 6 * 1000.0, 0.72);
    #{"stage": 6, "power_kw": p}
}
fn turbine_stage_power_7(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 7 * 1000.0, 0.72);
    #{"stage": 7, "power_kw": p}
}
fn turbine_stage_power_8(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 8 * 1000.0, 0.72);
    #{"stage": 8, "power_kw": p}
}
fn turbine_stage_power_9(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 9 * 1000.0, 0.72);
    #{"stage": 9, "power_kw": p}
}
fn turbine_stage_power_10(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 10 * 1000.0, 0.72);
    #{"stage": 10, "power_kw": p}
}
fn turbine_stage_power_11(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 11 * 1000.0, 0.72);
    #{"stage": 11, "power_kw": p}
}
fn turbine_stage_power_12(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 12 * 1000.0, 0.72);
    #{"stage": 12, "power_kw": p}
}
fn turbine_stage_power_13(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 13 * 1000.0, 0.72);
    #{"stage": 13, "power_kw": p}
}
fn turbine_stage_power_14(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 14 * 1000.0, 0.72);
    #{"stage": 14, "power_kw": p}
}
fn turbine_stage_power_15(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 15 * 1000.0, 0.72);
    #{"stage": 15, "power_kw": p}
}
fn turbine_stage_power_16(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 16 * 1000.0, 0.72);
    #{"stage": 16, "power_kw": p}
}
fn turbine_stage_power_17(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 17 * 1000.0, 0.72);
    #{"stage": 17, "power_kw": p}
}
fn turbine_stage_power_18(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 18 * 1000.0, 0.72);
    #{"stage": 18, "power_kw": p}
}
fn turbine_stage_power_19(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 19 * 1000.0, 0.72);
    #{"stage": 19, "power_kw": p}
}
fn turbine_stage_power_20(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 20 * 1000.0, 0.72);
    #{"stage": 20, "power_kw": p}
}
fn turbine_stage_power_21(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 21 * 1000.0, 0.72);
    #{"stage": 21, "power_kw": p}
}
fn turbine_stage_power_22(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 22 * 1000.0, 0.72);
    #{"stage": 22, "power_kw": p}
}
fn turbine_stage_power_23(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 23 * 1000.0, 0.72);
    #{"stage": 23, "power_kw": p}
}
fn turbine_stage_power_24(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 24 * 1000.0, 0.72);
    #{"stage": 24, "power_kw": p}
}
fn turbine_stage_power_25(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 25 * 1000.0, 0.72);
    #{"stage": 25, "power_kw": p}
}
fn turbine_stage_power_26(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 26 * 1000.0, 0.72);
    #{"stage": 26, "power_kw": p}
}
fn turbine_stage_power_27(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 27 * 1000.0, 0.72);
    #{"stage": 27, "power_kw": p}
}
fn turbine_stage_power_28(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 28 * 1000.0, 0.72);
    #{"stage": 28, "power_kw": p}
}
fn turbine_stage_power_29(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 29 * 1000.0, 0.72);
    #{"stage": 29, "power_kw": p}
}
fn turbine_stage_power_30(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 30 * 1000.0, 0.72);
    #{"stage": 30, "power_kw": p}
}
fn turbine_stage_power_31(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 31 * 1000.0, 0.72);
    #{"stage": 31, "power_kw": p}
}
fn turbine_stage_power_32(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 32 * 1000.0, 0.72);
    #{"stage": 32, "power_kw": p}
}
fn turbine_stage_power_33(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 33 * 1000.0, 0.72);
    #{"stage": 33, "power_kw": p}
}
fn turbine_stage_power_34(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 34 * 1000.0, 0.72);
    #{"stage": 34, "power_kw": p}
}
fn turbine_stage_power_35(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 35 * 1000.0, 0.72);
    #{"stage": 35, "power_kw": p}
}
fn turbine_stage_power_36(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 36 * 1000.0, 0.72);
    #{"stage": 36, "power_kw": p}
}
fn turbine_stage_power_37(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 37 * 1000.0, 0.72);
    #{"stage": 37, "power_kw": p}
}
fn turbine_stage_power_38(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 38 * 1000.0, 0.72);
    #{"stage": 38, "power_kw": p}
}
fn turbine_stage_power_39(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 39 * 1000.0, 0.72);
    #{"stage": 39, "power_kw": p}
}
fn turbine_stage_power_40(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 40 * 1000.0, 0.72);
    #{"stage": 40, "power_kw": p}
}
fn turbine_stage_power_41(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 41 * 1000.0, 0.72);
    #{"stage": 41, "power_kw": p}
}
fn turbine_stage_power_42(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 42 * 1000.0, 0.72);
    #{"stage": 42, "power_kw": p}
}
fn turbine_stage_power_43(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 43 * 1000.0, 0.72);
    #{"stage": 43, "power_kw": p}
}
fn turbine_stage_power_44(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 44 * 1000.0, 0.72);
    #{"stage": 44, "power_kw": p}
}
fn turbine_stage_power_45(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 45 * 1000.0, 0.72);
    #{"stage": 45, "power_kw": p}
}
fn turbine_stage_power_46(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 46 * 1000.0, 0.72);
    #{"stage": 46, "power_kw": p}
}
fn turbine_stage_power_47(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 47 * 1000.0, 0.72);
    #{"stage": 47, "power_kw": p}
}
fn turbine_stage_power_48(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 48 * 1000.0, 0.72);
    #{"stage": 48, "power_kw": p}
}
fn turbine_stage_power_49(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 49 * 1000.0, 0.72);
    #{"stage": 49, "power_kw": p}
}
fn turbine_stage_power_50(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 50 * 1000.0, 0.72);
    #{"stage": 50, "power_kw": p}
}
fn turbine_stage_power_51(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 51 * 1000.0, 0.72);
    #{"stage": 51, "power_kw": p}
}
fn turbine_stage_power_52(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 52 * 1000.0, 0.72);
    #{"stage": 52, "power_kw": p}
}
fn turbine_stage_power_53(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 53 * 1000.0, 0.72);
    #{"stage": 53, "power_kw": p}
}
fn turbine_stage_power_54(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 54 * 1000.0, 0.72);
    #{"stage": 54, "power_kw": p}
}
fn turbine_stage_power_55(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 55 * 1000.0, 0.72);
    #{"stage": 55, "power_kw": p}
}
fn turbine_stage_power_56(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 56 * 1000.0, 0.72);
    #{"stage": 56, "power_kw": p}
}
fn turbine_stage_power_57(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 57 * 1000.0, 0.72);
    #{"stage": 57, "power_kw": p}
}
fn turbine_stage_power_58(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 58 * 1000.0, 0.72);
    #{"stage": 58, "power_kw": p}
}
fn turbine_stage_power_59(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 59 * 1000.0, 0.72);
    #{"stage": 59, "power_kw": p}
}
fn turbine_stage_power_60(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 60 * 1000.0, 0.72);
    #{"stage": 60, "power_kw": p}
}
fn turbine_stage_power_61(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 61 * 1000.0, 0.72);
    #{"stage": 61, "power_kw": p}
}
fn turbine_stage_power_62(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 62 * 1000.0, 0.72);
    #{"stage": 62, "power_kw": p}
}
fn turbine_stage_power_63(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 63 * 1000.0, 0.72);
    #{"stage": 63, "power_kw": p}
}
fn turbine_stage_power_64(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 64 * 1000.0, 0.72);
    #{"stage": 64, "power_kw": p}
}
fn turbine_stage_power_65(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 65 * 1000.0, 0.72);
    #{"stage": 65, "power_kw": p}
}
fn turbine_stage_power_66(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 66 * 1000.0, 0.72);
    #{"stage": 66, "power_kw": p}
}
fn turbine_stage_power_67(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 67 * 1000.0, 0.72);
    #{"stage": 67, "power_kw": p}
}
fn turbine_stage_power_68(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 68 * 1000.0, 0.72);
    #{"stage": 68, "power_kw": p}
}
fn turbine_stage_power_69(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 69 * 1000.0, 0.72);
    #{"stage": 69, "power_kw": p}
}
fn turbine_stage_power_70(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 70 * 1000.0, 0.72);
    #{"stage": 70, "power_kw": p}
}
fn turbine_stage_power_71(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 71 * 1000.0, 0.72);
    #{"stage": 71, "power_kw": p}
}
fn turbine_stage_power_72(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 72 * 1000.0, 0.72);
    #{"stage": 72, "power_kw": p}
}
fn turbine_stage_power_73(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 73 * 1000.0, 0.72);
    #{"stage": 73, "power_kw": p}
}
fn turbine_stage_power_74(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 74 * 1000.0, 0.72);
    #{"stage": 74, "power_kw": p}
}
fn turbine_stage_power_75(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 75 * 1000.0, 0.72);
    #{"stage": 75, "power_kw": p}
}
fn turbine_stage_power_76(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 76 * 1000.0, 0.72);
    #{"stage": 76, "power_kw": p}
}
fn turbine_stage_power_77(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 77 * 1000.0, 0.72);
    #{"stage": 77, "power_kw": p}
}
fn turbine_stage_power_78(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 78 * 1000.0, 0.72);
    #{"stage": 78, "power_kw": p}
}
fn turbine_stage_power_79(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 79 * 1000.0, 0.72);
    #{"stage": 79, "power_kw": p}
}
fn turbine_stage_power_80(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 80 * 1000.0, 0.72);
    #{"stage": 80, "power_kw": p}
}
fn turbine_stage_power_81(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 81 * 1000.0, 0.72);
    #{"stage": 81, "power_kw": p}
}
fn turbine_stage_power_82(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 82 * 1000.0, 0.72);
    #{"stage": 82, "power_kw": p}
}
fn turbine_stage_power_83(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 83 * 1000.0, 0.72);
    #{"stage": 83, "power_kw": p}
}
fn turbine_stage_power_84(mdot) {
    let p = turbine_shaft_power_kw(mdot, 200000.0 + 84 * 1000.0, 0.72);
    #{"stage": 84, "power_kw": p}
}
