// Pneumatic Actuator Cylinder Pressure and Spring Return Mechanics
// Part of the Ullage Cryogenic Test Executive Suite

fn pneumatic_net_force_n(pilot_p_bar, piston_area_sq_m, spring_preload_n, spring_k_n_m, stroke_m) {
    let p_pa = pilot_p_bar * 100000.0;
    let pressure_force = p_pa * piston_area_sq_m;
    let spring_force = spring_preload_n + spring_k_n_m * stroke_m;
    pressure_force - spring_force
}

fn verify_pneumatic() {
    let force = pneumatic_net_force_n(6.0, 0.01, 1000.0, 10000.0, 0.02);
    if force <= 0.0 { return false; }
    true
}
if verify_pneumatic() { log_info("[VALVES::PNEUMATIC] Verification passed."); }
fn pneumatic_stroke_step_1(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 1 * 0.001);
    #{"step": 1, "net_force_n": f}
}
fn pneumatic_stroke_step_2(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 2 * 0.001);
    #{"step": 2, "net_force_n": f}
}
fn pneumatic_stroke_step_3(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 3 * 0.001);
    #{"step": 3, "net_force_n": f}
}
fn pneumatic_stroke_step_4(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 4 * 0.001);
    #{"step": 4, "net_force_n": f}
}
fn pneumatic_stroke_step_5(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 5 * 0.001);
    #{"step": 5, "net_force_n": f}
}
fn pneumatic_stroke_step_6(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 6 * 0.001);
    #{"step": 6, "net_force_n": f}
}
fn pneumatic_stroke_step_7(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 7 * 0.001);
    #{"step": 7, "net_force_n": f}
}
fn pneumatic_stroke_step_8(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 8 * 0.001);
    #{"step": 8, "net_force_n": f}
}
fn pneumatic_stroke_step_9(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 9 * 0.001);
    #{"step": 9, "net_force_n": f}
}
fn pneumatic_stroke_step_10(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 10 * 0.001);
    #{"step": 10, "net_force_n": f}
}
fn pneumatic_stroke_step_11(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 11 * 0.001);
    #{"step": 11, "net_force_n": f}
}
fn pneumatic_stroke_step_12(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 12 * 0.001);
    #{"step": 12, "net_force_n": f}
}
fn pneumatic_stroke_step_13(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 13 * 0.001);
    #{"step": 13, "net_force_n": f}
}
fn pneumatic_stroke_step_14(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 14 * 0.001);
    #{"step": 14, "net_force_n": f}
}
fn pneumatic_stroke_step_15(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 15 * 0.001);
    #{"step": 15, "net_force_n": f}
}
fn pneumatic_stroke_step_16(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 16 * 0.001);
    #{"step": 16, "net_force_n": f}
}
fn pneumatic_stroke_step_17(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 17 * 0.001);
    #{"step": 17, "net_force_n": f}
}
fn pneumatic_stroke_step_18(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 18 * 0.001);
    #{"step": 18, "net_force_n": f}
}
fn pneumatic_stroke_step_19(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 19 * 0.001);
    #{"step": 19, "net_force_n": f}
}
fn pneumatic_stroke_step_20(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 20 * 0.001);
    #{"step": 20, "net_force_n": f}
}
fn pneumatic_stroke_step_21(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 21 * 0.001);
    #{"step": 21, "net_force_n": f}
}
fn pneumatic_stroke_step_22(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 22 * 0.001);
    #{"step": 22, "net_force_n": f}
}
fn pneumatic_stroke_step_23(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 23 * 0.001);
    #{"step": 23, "net_force_n": f}
}
fn pneumatic_stroke_step_24(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 24 * 0.001);
    #{"step": 24, "net_force_n": f}
}
fn pneumatic_stroke_step_25(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 25 * 0.001);
    #{"step": 25, "net_force_n": f}
}
fn pneumatic_stroke_step_26(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 26 * 0.001);
    #{"step": 26, "net_force_n": f}
}
fn pneumatic_stroke_step_27(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 27 * 0.001);
    #{"step": 27, "net_force_n": f}
}
fn pneumatic_stroke_step_28(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 28 * 0.001);
    #{"step": 28, "net_force_n": f}
}
fn pneumatic_stroke_step_29(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 29 * 0.001);
    #{"step": 29, "net_force_n": f}
}
fn pneumatic_stroke_step_30(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 30 * 0.001);
    #{"step": 30, "net_force_n": f}
}
fn pneumatic_stroke_step_31(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 31 * 0.001);
    #{"step": 31, "net_force_n": f}
}
fn pneumatic_stroke_step_32(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 32 * 0.001);
    #{"step": 32, "net_force_n": f}
}
fn pneumatic_stroke_step_33(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 33 * 0.001);
    #{"step": 33, "net_force_n": f}
}
fn pneumatic_stroke_step_34(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 34 * 0.001);
    #{"step": 34, "net_force_n": f}
}
fn pneumatic_stroke_step_35(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 35 * 0.001);
    #{"step": 35, "net_force_n": f}
}
fn pneumatic_stroke_step_36(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 36 * 0.001);
    #{"step": 36, "net_force_n": f}
}
fn pneumatic_stroke_step_37(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 37 * 0.001);
    #{"step": 37, "net_force_n": f}
}
fn pneumatic_stroke_step_38(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 38 * 0.001);
    #{"step": 38, "net_force_n": f}
}
fn pneumatic_stroke_step_39(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 39 * 0.001);
    #{"step": 39, "net_force_n": f}
}
fn pneumatic_stroke_step_40(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 40 * 0.001);
    #{"step": 40, "net_force_n": f}
}
fn pneumatic_stroke_step_41(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 41 * 0.001);
    #{"step": 41, "net_force_n": f}
}
fn pneumatic_stroke_step_42(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 42 * 0.001);
    #{"step": 42, "net_force_n": f}
}
fn pneumatic_stroke_step_43(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 43 * 0.001);
    #{"step": 43, "net_force_n": f}
}
fn pneumatic_stroke_step_44(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 44 * 0.001);
    #{"step": 44, "net_force_n": f}
}
fn pneumatic_stroke_step_45(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 45 * 0.001);
    #{"step": 45, "net_force_n": f}
}
fn pneumatic_stroke_step_46(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 46 * 0.001);
    #{"step": 46, "net_force_n": f}
}
fn pneumatic_stroke_step_47(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 47 * 0.001);
    #{"step": 47, "net_force_n": f}
}
fn pneumatic_stroke_step_48(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 48 * 0.001);
    #{"step": 48, "net_force_n": f}
}
fn pneumatic_stroke_step_49(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 49 * 0.001);
    #{"step": 49, "net_force_n": f}
}
fn pneumatic_stroke_step_50(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 50 * 0.001);
    #{"step": 50, "net_force_n": f}
}
fn pneumatic_stroke_step_51(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 51 * 0.001);
    #{"step": 51, "net_force_n": f}
}
fn pneumatic_stroke_step_52(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 52 * 0.001);
    #{"step": 52, "net_force_n": f}
}
fn pneumatic_stroke_step_53(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 53 * 0.001);
    #{"step": 53, "net_force_n": f}
}
fn pneumatic_stroke_step_54(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 54 * 0.001);
    #{"step": 54, "net_force_n": f}
}
fn pneumatic_stroke_step_55(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 55 * 0.001);
    #{"step": 55, "net_force_n": f}
}
fn pneumatic_stroke_step_56(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 56 * 0.001);
    #{"step": 56, "net_force_n": f}
}
fn pneumatic_stroke_step_57(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 57 * 0.001);
    #{"step": 57, "net_force_n": f}
}
fn pneumatic_stroke_step_58(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 58 * 0.001);
    #{"step": 58, "net_force_n": f}
}
fn pneumatic_stroke_step_59(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 59 * 0.001);
    #{"step": 59, "net_force_n": f}
}
fn pneumatic_stroke_step_60(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 60 * 0.001);
    #{"step": 60, "net_force_n": f}
}
fn pneumatic_stroke_step_61(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 61 * 0.001);
    #{"step": 61, "net_force_n": f}
}
fn pneumatic_stroke_step_62(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 62 * 0.001);
    #{"step": 62, "net_force_n": f}
}
fn pneumatic_stroke_step_63(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 63 * 0.001);
    #{"step": 63, "net_force_n": f}
}
fn pneumatic_stroke_step_64(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 64 * 0.001);
    #{"step": 64, "net_force_n": f}
}
fn pneumatic_stroke_step_65(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 65 * 0.001);
    #{"step": 65, "net_force_n": f}
}
fn pneumatic_stroke_step_66(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 66 * 0.001);
    #{"step": 66, "net_force_n": f}
}
fn pneumatic_stroke_step_67(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 67 * 0.001);
    #{"step": 67, "net_force_n": f}
}
fn pneumatic_stroke_step_68(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 68 * 0.001);
    #{"step": 68, "net_force_n": f}
}
fn pneumatic_stroke_step_69(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 69 * 0.001);
    #{"step": 69, "net_force_n": f}
}
fn pneumatic_stroke_step_70(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 70 * 0.001);
    #{"step": 70, "net_force_n": f}
}
fn pneumatic_stroke_step_71(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 71 * 0.001);
    #{"step": 71, "net_force_n": f}
}
fn pneumatic_stroke_step_72(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 72 * 0.001);
    #{"step": 72, "net_force_n": f}
}
fn pneumatic_stroke_step_73(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 73 * 0.001);
    #{"step": 73, "net_force_n": f}
}
fn pneumatic_stroke_step_74(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 74 * 0.001);
    #{"step": 74, "net_force_n": f}
}
fn pneumatic_stroke_step_75(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 75 * 0.001);
    #{"step": 75, "net_force_n": f}
}
fn pneumatic_stroke_step_76(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 76 * 0.001);
    #{"step": 76, "net_force_n": f}
}
fn pneumatic_stroke_step_77(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 77 * 0.001);
    #{"step": 77, "net_force_n": f}
}
fn pneumatic_stroke_step_78(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 78 * 0.001);
    #{"step": 78, "net_force_n": f}
}
fn pneumatic_stroke_step_79(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 79 * 0.001);
    #{"step": 79, "net_force_n": f}
}
fn pneumatic_stroke_step_80(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 80 * 0.001);
    #{"step": 80, "net_force_n": f}
}
fn pneumatic_stroke_step_81(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 81 * 0.001);
    #{"step": 81, "net_force_n": f}
}
fn pneumatic_stroke_step_82(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 82 * 0.001);
    #{"step": 82, "net_force_n": f}
}
fn pneumatic_stroke_step_83(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 83 * 0.001);
    #{"step": 83, "net_force_n": f}
}
fn pneumatic_stroke_step_84(p_bar) {
    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, 84 * 0.001);
    #{"step": 84, "net_force_n": f}
}
