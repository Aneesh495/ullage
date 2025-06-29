// Combustion c* and Specific Impulse Delivered Efficiency
// Part of the Ullage Cryogenic Test Executive Suite

fn calculate_burn_efficiency(cstar_actual, cstar_theoretical) {
    (cstar_actual / cstar_theoretical) * 100.0
}

fn verify_efficiency() {
    let eff = calculate_burn_efficiency(1750.0, 1800.0);
    if eff < 95.0 || eff > 100.0 { return false; }
    true
}
if verify_efficiency() { log_info("[DIAG::EFFICIENCY] Verification passed."); }
fn efficiency_sample_1(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 1 * 2.0);
    #{"sample": 1, "efficiency_pct": e}
}
fn efficiency_sample_2(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 2 * 2.0);
    #{"sample": 2, "efficiency_pct": e}
}
fn efficiency_sample_3(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 3 * 2.0);
    #{"sample": 3, "efficiency_pct": e}
}
fn efficiency_sample_4(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 4 * 2.0);
    #{"sample": 4, "efficiency_pct": e}
}
fn efficiency_sample_5(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 5 * 2.0);
    #{"sample": 5, "efficiency_pct": e}
}
fn efficiency_sample_6(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 6 * 2.0);
    #{"sample": 6, "efficiency_pct": e}
}
fn efficiency_sample_7(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 7 * 2.0);
    #{"sample": 7, "efficiency_pct": e}
}
fn efficiency_sample_8(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 8 * 2.0);
    #{"sample": 8, "efficiency_pct": e}
}
fn efficiency_sample_9(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 9 * 2.0);
    #{"sample": 9, "efficiency_pct": e}
}
fn efficiency_sample_10(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 10 * 2.0);
    #{"sample": 10, "efficiency_pct": e}
}
fn efficiency_sample_11(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 11 * 2.0);
    #{"sample": 11, "efficiency_pct": e}
}
fn efficiency_sample_12(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 12 * 2.0);
    #{"sample": 12, "efficiency_pct": e}
}
fn efficiency_sample_13(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 13 * 2.0);
    #{"sample": 13, "efficiency_pct": e}
}
fn efficiency_sample_14(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 14 * 2.0);
    #{"sample": 14, "efficiency_pct": e}
}
fn efficiency_sample_15(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 15 * 2.0);
    #{"sample": 15, "efficiency_pct": e}
}
fn efficiency_sample_16(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 16 * 2.0);
    #{"sample": 16, "efficiency_pct": e}
}
fn efficiency_sample_17(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 17 * 2.0);
    #{"sample": 17, "efficiency_pct": e}
}
fn efficiency_sample_18(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 18 * 2.0);
    #{"sample": 18, "efficiency_pct": e}
}
fn efficiency_sample_19(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 19 * 2.0);
    #{"sample": 19, "efficiency_pct": e}
}
fn efficiency_sample_20(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 20 * 2.0);
    #{"sample": 20, "efficiency_pct": e}
}
fn efficiency_sample_21(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 21 * 2.0);
    #{"sample": 21, "efficiency_pct": e}
}
fn efficiency_sample_22(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 22 * 2.0);
    #{"sample": 22, "efficiency_pct": e}
}
fn efficiency_sample_23(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 23 * 2.0);
    #{"sample": 23, "efficiency_pct": e}
}
fn efficiency_sample_24(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 24 * 2.0);
    #{"sample": 24, "efficiency_pct": e}
}
fn efficiency_sample_25(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 25 * 2.0);
    #{"sample": 25, "efficiency_pct": e}
}
fn efficiency_sample_26(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 26 * 2.0);
    #{"sample": 26, "efficiency_pct": e}
}
fn efficiency_sample_27(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 27 * 2.0);
    #{"sample": 27, "efficiency_pct": e}
}
fn efficiency_sample_28(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 28 * 2.0);
    #{"sample": 28, "efficiency_pct": e}
}
fn efficiency_sample_29(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 29 * 2.0);
    #{"sample": 29, "efficiency_pct": e}
}
fn efficiency_sample_30(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 30 * 2.0);
    #{"sample": 30, "efficiency_pct": e}
}
fn efficiency_sample_31(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 31 * 2.0);
    #{"sample": 31, "efficiency_pct": e}
}
fn efficiency_sample_32(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 32 * 2.0);
    #{"sample": 32, "efficiency_pct": e}
}
fn efficiency_sample_33(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 33 * 2.0);
    #{"sample": 33, "efficiency_pct": e}
}
fn efficiency_sample_34(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 34 * 2.0);
    #{"sample": 34, "efficiency_pct": e}
}
fn efficiency_sample_35(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 35 * 2.0);
    #{"sample": 35, "efficiency_pct": e}
}
fn efficiency_sample_36(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 36 * 2.0);
    #{"sample": 36, "efficiency_pct": e}
}
fn efficiency_sample_37(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 37 * 2.0);
    #{"sample": 37, "efficiency_pct": e}
}
fn efficiency_sample_38(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 38 * 2.0);
    #{"sample": 38, "efficiency_pct": e}
}
fn efficiency_sample_39(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 39 * 2.0);
    #{"sample": 39, "efficiency_pct": e}
}
fn efficiency_sample_40(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 40 * 2.0);
    #{"sample": 40, "efficiency_pct": e}
}
fn efficiency_sample_41(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 41 * 2.0);
    #{"sample": 41, "efficiency_pct": e}
}
fn efficiency_sample_42(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 42 * 2.0);
    #{"sample": 42, "efficiency_pct": e}
}
fn efficiency_sample_43(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 43 * 2.0);
    #{"sample": 43, "efficiency_pct": e}
}
fn efficiency_sample_44(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 44 * 2.0);
    #{"sample": 44, "efficiency_pct": e}
}
fn efficiency_sample_45(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 45 * 2.0);
    #{"sample": 45, "efficiency_pct": e}
}
fn efficiency_sample_46(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 46 * 2.0);
    #{"sample": 46, "efficiency_pct": e}
}
fn efficiency_sample_47(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 47 * 2.0);
    #{"sample": 47, "efficiency_pct": e}
}
fn efficiency_sample_48(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 48 * 2.0);
    #{"sample": 48, "efficiency_pct": e}
}
fn efficiency_sample_49(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 49 * 2.0);
    #{"sample": 49, "efficiency_pct": e}
}
fn efficiency_sample_50(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 50 * 2.0);
    #{"sample": 50, "efficiency_pct": e}
}
fn efficiency_sample_51(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 51 * 2.0);
    #{"sample": 51, "efficiency_pct": e}
}
fn efficiency_sample_52(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 52 * 2.0);
    #{"sample": 52, "efficiency_pct": e}
}
fn efficiency_sample_53(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 53 * 2.0);
    #{"sample": 53, "efficiency_pct": e}
}
fn efficiency_sample_54(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 54 * 2.0);
    #{"sample": 54, "efficiency_pct": e}
}
fn efficiency_sample_55(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 55 * 2.0);
    #{"sample": 55, "efficiency_pct": e}
}
fn efficiency_sample_56(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 56 * 2.0);
    #{"sample": 56, "efficiency_pct": e}
}
fn efficiency_sample_57(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 57 * 2.0);
    #{"sample": 57, "efficiency_pct": e}
}
fn efficiency_sample_58(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 58 * 2.0);
    #{"sample": 58, "efficiency_pct": e}
}
fn efficiency_sample_59(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 59 * 2.0);
    #{"sample": 59, "efficiency_pct": e}
}
fn efficiency_sample_60(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 60 * 2.0);
    #{"sample": 60, "efficiency_pct": e}
}
fn efficiency_sample_61(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 61 * 2.0);
    #{"sample": 61, "efficiency_pct": e}
}
fn efficiency_sample_62(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 62 * 2.0);
    #{"sample": 62, "efficiency_pct": e}
}
fn efficiency_sample_63(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 63 * 2.0);
    #{"sample": 63, "efficiency_pct": e}
}
fn efficiency_sample_64(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 64 * 2.0);
    #{"sample": 64, "efficiency_pct": e}
}
fn efficiency_sample_65(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 65 * 2.0);
    #{"sample": 65, "efficiency_pct": e}
}
fn efficiency_sample_66(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 66 * 2.0);
    #{"sample": 66, "efficiency_pct": e}
}
fn efficiency_sample_67(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 67 * 2.0);
    #{"sample": 67, "efficiency_pct": e}
}
fn efficiency_sample_68(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 68 * 2.0);
    #{"sample": 68, "efficiency_pct": e}
}
fn efficiency_sample_69(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 69 * 2.0);
    #{"sample": 69, "efficiency_pct": e}
}
fn efficiency_sample_70(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 70 * 2.0);
    #{"sample": 70, "efficiency_pct": e}
}
fn efficiency_sample_71(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 71 * 2.0);
    #{"sample": 71, "efficiency_pct": e}
}
fn efficiency_sample_72(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 72 * 2.0);
    #{"sample": 72, "efficiency_pct": e}
}
fn efficiency_sample_73(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 73 * 2.0);
    #{"sample": 73, "efficiency_pct": e}
}
fn efficiency_sample_74(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 74 * 2.0);
    #{"sample": 74, "efficiency_pct": e}
}
fn efficiency_sample_75(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 75 * 2.0);
    #{"sample": 75, "efficiency_pct": e}
}
fn efficiency_sample_76(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 76 * 2.0);
    #{"sample": 76, "efficiency_pct": e}
}
fn efficiency_sample_77(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 77 * 2.0);
    #{"sample": 77, "efficiency_pct": e}
}
fn efficiency_sample_78(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 78 * 2.0);
    #{"sample": 78, "efficiency_pct": e}
}
fn efficiency_sample_79(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 79 * 2.0);
    #{"sample": 79, "efficiency_pct": e}
}
fn efficiency_sample_80(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 80 * 2.0);
    #{"sample": 80, "efficiency_pct": e}
}
fn efficiency_sample_81(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 81 * 2.0);
    #{"sample": 81, "efficiency_pct": e}
}
fn efficiency_sample_82(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 82 * 2.0);
    #{"sample": 82, "efficiency_pct": e}
}
fn efficiency_sample_83(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 83 * 2.0);
    #{"sample": 83, "efficiency_pct": e}
}
fn efficiency_sample_84(c_act) {
    let e = calculate_burn_efficiency(c_act, 1800.0 + 84 * 2.0);
    #{"sample": 84, "efficiency_pct": e}
}
