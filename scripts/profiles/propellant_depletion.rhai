// Propellant Depletion Test Profile and Cavitation Cutoff Detection
// Part of the Ullage Cryogenic Test Executive Suite

fn is_depletion_triggered(inlet_p_bar, min_suction_p_bar) {
    inlet_p_bar <= min_suction_p_bar
}

fn verify_depletion() {
    let trig = is_depletion_triggered(1.5, 2.0);
    if !trig { return false; }
    true
}
if verify_depletion() { log_info("[PROFILES::DEPLETION] Verification passed."); }
fn suction_pressure_descent_1(t_s) {
    let p = 5.0 - t_s * (0.2 + 1 * 0.005);
    #{"sample": 1, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_2(t_s) {
    let p = 5.0 - t_s * (0.2 + 2 * 0.005);
    #{"sample": 2, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_3(t_s) {
    let p = 5.0 - t_s * (0.2 + 3 * 0.005);
    #{"sample": 3, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_4(t_s) {
    let p = 5.0 - t_s * (0.2 + 4 * 0.005);
    #{"sample": 4, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_5(t_s) {
    let p = 5.0 - t_s * (0.2 + 5 * 0.005);
    #{"sample": 5, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_6(t_s) {
    let p = 5.0 - t_s * (0.2 + 6 * 0.005);
    #{"sample": 6, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_7(t_s) {
    let p = 5.0 - t_s * (0.2 + 7 * 0.005);
    #{"sample": 7, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_8(t_s) {
    let p = 5.0 - t_s * (0.2 + 8 * 0.005);
    #{"sample": 8, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_9(t_s) {
    let p = 5.0 - t_s * (0.2 + 9 * 0.005);
    #{"sample": 9, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_10(t_s) {
    let p = 5.0 - t_s * (0.2 + 10 * 0.005);
    #{"sample": 10, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_11(t_s) {
    let p = 5.0 - t_s * (0.2 + 11 * 0.005);
    #{"sample": 11, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_12(t_s) {
    let p = 5.0 - t_s * (0.2 + 12 * 0.005);
    #{"sample": 12, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_13(t_s) {
    let p = 5.0 - t_s * (0.2 + 13 * 0.005);
    #{"sample": 13, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_14(t_s) {
    let p = 5.0 - t_s * (0.2 + 14 * 0.005);
    #{"sample": 14, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_15(t_s) {
    let p = 5.0 - t_s * (0.2 + 15 * 0.005);
    #{"sample": 15, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_16(t_s) {
    let p = 5.0 - t_s * (0.2 + 16 * 0.005);
    #{"sample": 16, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_17(t_s) {
    let p = 5.0 - t_s * (0.2 + 17 * 0.005);
    #{"sample": 17, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_18(t_s) {
    let p = 5.0 - t_s * (0.2 + 18 * 0.005);
    #{"sample": 18, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_19(t_s) {
    let p = 5.0 - t_s * (0.2 + 19 * 0.005);
    #{"sample": 19, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_20(t_s) {
    let p = 5.0 - t_s * (0.2 + 20 * 0.005);
    #{"sample": 20, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_21(t_s) {
    let p = 5.0 - t_s * (0.2 + 21 * 0.005);
    #{"sample": 21, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_22(t_s) {
    let p = 5.0 - t_s * (0.2 + 22 * 0.005);
    #{"sample": 22, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_23(t_s) {
    let p = 5.0 - t_s * (0.2 + 23 * 0.005);
    #{"sample": 23, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_24(t_s) {
    let p = 5.0 - t_s * (0.2 + 24 * 0.005);
    #{"sample": 24, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_25(t_s) {
    let p = 5.0 - t_s * (0.2 + 25 * 0.005);
    #{"sample": 25, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_26(t_s) {
    let p = 5.0 - t_s * (0.2 + 26 * 0.005);
    #{"sample": 26, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_27(t_s) {
    let p = 5.0 - t_s * (0.2 + 27 * 0.005);
    #{"sample": 27, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_28(t_s) {
    let p = 5.0 - t_s * (0.2 + 28 * 0.005);
    #{"sample": 28, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_29(t_s) {
    let p = 5.0 - t_s * (0.2 + 29 * 0.005);
    #{"sample": 29, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_30(t_s) {
    let p = 5.0 - t_s * (0.2 + 30 * 0.005);
    #{"sample": 30, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_31(t_s) {
    let p = 5.0 - t_s * (0.2 + 31 * 0.005);
    #{"sample": 31, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_32(t_s) {
    let p = 5.0 - t_s * (0.2 + 32 * 0.005);
    #{"sample": 32, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_33(t_s) {
    let p = 5.0 - t_s * (0.2 + 33 * 0.005);
    #{"sample": 33, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_34(t_s) {
    let p = 5.0 - t_s * (0.2 + 34 * 0.005);
    #{"sample": 34, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_35(t_s) {
    let p = 5.0 - t_s * (0.2 + 35 * 0.005);
    #{"sample": 35, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_36(t_s) {
    let p = 5.0 - t_s * (0.2 + 36 * 0.005);
    #{"sample": 36, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_37(t_s) {
    let p = 5.0 - t_s * (0.2 + 37 * 0.005);
    #{"sample": 37, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_38(t_s) {
    let p = 5.0 - t_s * (0.2 + 38 * 0.005);
    #{"sample": 38, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_39(t_s) {
    let p = 5.0 - t_s * (0.2 + 39 * 0.005);
    #{"sample": 39, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_40(t_s) {
    let p = 5.0 - t_s * (0.2 + 40 * 0.005);
    #{"sample": 40, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_41(t_s) {
    let p = 5.0 - t_s * (0.2 + 41 * 0.005);
    #{"sample": 41, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_42(t_s) {
    let p = 5.0 - t_s * (0.2 + 42 * 0.005);
    #{"sample": 42, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_43(t_s) {
    let p = 5.0 - t_s * (0.2 + 43 * 0.005);
    #{"sample": 43, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_44(t_s) {
    let p = 5.0 - t_s * (0.2 + 44 * 0.005);
    #{"sample": 44, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_45(t_s) {
    let p = 5.0 - t_s * (0.2 + 45 * 0.005);
    #{"sample": 45, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_46(t_s) {
    let p = 5.0 - t_s * (0.2 + 46 * 0.005);
    #{"sample": 46, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_47(t_s) {
    let p = 5.0 - t_s * (0.2 + 47 * 0.005);
    #{"sample": 47, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_48(t_s) {
    let p = 5.0 - t_s * (0.2 + 48 * 0.005);
    #{"sample": 48, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_49(t_s) {
    let p = 5.0 - t_s * (0.2 + 49 * 0.005);
    #{"sample": 49, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_50(t_s) {
    let p = 5.0 - t_s * (0.2 + 50 * 0.005);
    #{"sample": 50, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_51(t_s) {
    let p = 5.0 - t_s * (0.2 + 51 * 0.005);
    #{"sample": 51, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_52(t_s) {
    let p = 5.0 - t_s * (0.2 + 52 * 0.005);
    #{"sample": 52, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_53(t_s) {
    let p = 5.0 - t_s * (0.2 + 53 * 0.005);
    #{"sample": 53, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_54(t_s) {
    let p = 5.0 - t_s * (0.2 + 54 * 0.005);
    #{"sample": 54, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_55(t_s) {
    let p = 5.0 - t_s * (0.2 + 55 * 0.005);
    #{"sample": 55, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_56(t_s) {
    let p = 5.0 - t_s * (0.2 + 56 * 0.005);
    #{"sample": 56, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_57(t_s) {
    let p = 5.0 - t_s * (0.2 + 57 * 0.005);
    #{"sample": 57, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_58(t_s) {
    let p = 5.0 - t_s * (0.2 + 58 * 0.005);
    #{"sample": 58, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_59(t_s) {
    let p = 5.0 - t_s * (0.2 + 59 * 0.005);
    #{"sample": 59, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_60(t_s) {
    let p = 5.0 - t_s * (0.2 + 60 * 0.005);
    #{"sample": 60, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_61(t_s) {
    let p = 5.0 - t_s * (0.2 + 61 * 0.005);
    #{"sample": 61, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_62(t_s) {
    let p = 5.0 - t_s * (0.2 + 62 * 0.005);
    #{"sample": 62, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_63(t_s) {
    let p = 5.0 - t_s * (0.2 + 63 * 0.005);
    #{"sample": 63, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_64(t_s) {
    let p = 5.0 - t_s * (0.2 + 64 * 0.005);
    #{"sample": 64, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_65(t_s) {
    let p = 5.0 - t_s * (0.2 + 65 * 0.005);
    #{"sample": 65, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_66(t_s) {
    let p = 5.0 - t_s * (0.2 + 66 * 0.005);
    #{"sample": 66, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_67(t_s) {
    let p = 5.0 - t_s * (0.2 + 67 * 0.005);
    #{"sample": 67, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_68(t_s) {
    let p = 5.0 - t_s * (0.2 + 68 * 0.005);
    #{"sample": 68, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_69(t_s) {
    let p = 5.0 - t_s * (0.2 + 69 * 0.005);
    #{"sample": 69, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_70(t_s) {
    let p = 5.0 - t_s * (0.2 + 70 * 0.005);
    #{"sample": 70, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_71(t_s) {
    let p = 5.0 - t_s * (0.2 + 71 * 0.005);
    #{"sample": 71, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_72(t_s) {
    let p = 5.0 - t_s * (0.2 + 72 * 0.005);
    #{"sample": 72, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_73(t_s) {
    let p = 5.0 - t_s * (0.2 + 73 * 0.005);
    #{"sample": 73, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_74(t_s) {
    let p = 5.0 - t_s * (0.2 + 74 * 0.005);
    #{"sample": 74, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_75(t_s) {
    let p = 5.0 - t_s * (0.2 + 75 * 0.005);
    #{"sample": 75, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_76(t_s) {
    let p = 5.0 - t_s * (0.2 + 76 * 0.005);
    #{"sample": 76, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_77(t_s) {
    let p = 5.0 - t_s * (0.2 + 77 * 0.005);
    #{"sample": 77, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_78(t_s) {
    let p = 5.0 - t_s * (0.2 + 78 * 0.005);
    #{"sample": 78, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_79(t_s) {
    let p = 5.0 - t_s * (0.2 + 79 * 0.005);
    #{"sample": 79, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_80(t_s) {
    let p = 5.0 - t_s * (0.2 + 80 * 0.005);
    #{"sample": 80, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_81(t_s) {
    let p = 5.0 - t_s * (0.2 + 81 * 0.005);
    #{"sample": 81, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_82(t_s) {
    let p = 5.0 - t_s * (0.2 + 82 * 0.005);
    #{"sample": 82, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_83(t_s) {
    let p = 5.0 - t_s * (0.2 + 83 * 0.005);
    #{"sample": 83, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_84(t_s) {
    let p = 5.0 - t_s * (0.2 + 84 * 0.005);
    #{"sample": 84, "inlet_p_bar": p.max(0.5)}
}
