// Low-Frequency Chug Combustion Instability and Crocco Time-Lag
// Hydraulic coupling between propellant feedlines and thrust chamber

fn chug_frequency_hz(injector_dp_bar, pc_bar, tau_chug_sec, cstar) {
    let stiffness = injector_dp_bar / pc_bar;
    let f0 = 1.0 / (2.0 * 3.1415926535 * tau_chug_sec);
    f0 * (stiffness).sqrt()
}

fn is_chug_stiff(injector_dp_bar, pc_bar, min_ratio) {
    (injector_dp_bar / pc_bar) >= min_ratio
}

fn verify_chug_stability() {
    let stiff = is_chug_stiff(10.0, 50.0, 0.15); // 10/50 = 0.20 >= 0.15
    if !stiff { return false; }
    true
}
if verify_chug_stability() { log_info("[COMBUSTION::CHUG_STABILITY] Verification passed."); }
fn chug_stability_check_1(dp, pc) {
    let f = chug_frequency_hz(dp + 1 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 1, "freq_hz": f}
}
fn chug_stability_check_2(dp, pc) {
    let f = chug_frequency_hz(dp + 2 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 2, "freq_hz": f}
}
fn chug_stability_check_3(dp, pc) {
    let f = chug_frequency_hz(dp + 3 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 3, "freq_hz": f}
}
fn chug_stability_check_4(dp, pc) {
    let f = chug_frequency_hz(dp + 4 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 4, "freq_hz": f}
}
fn chug_stability_check_5(dp, pc) {
    let f = chug_frequency_hz(dp + 5 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 5, "freq_hz": f}
}
fn chug_stability_check_6(dp, pc) {
    let f = chug_frequency_hz(dp + 6 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 6, "freq_hz": f}
}
fn chug_stability_check_7(dp, pc) {
    let f = chug_frequency_hz(dp + 7 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 7, "freq_hz": f}
}
fn chug_stability_check_8(dp, pc) {
    let f = chug_frequency_hz(dp + 8 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 8, "freq_hz": f}
}
fn chug_stability_check_9(dp, pc) {
    let f = chug_frequency_hz(dp + 9 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 9, "freq_hz": f}
}
fn chug_stability_check_10(dp, pc) {
    let f = chug_frequency_hz(dp + 10 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 10, "freq_hz": f}
}
fn chug_stability_check_11(dp, pc) {
    let f = chug_frequency_hz(dp + 11 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 11, "freq_hz": f}
}
fn chug_stability_check_12(dp, pc) {
    let f = chug_frequency_hz(dp + 12 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 12, "freq_hz": f}
}
fn chug_stability_check_13(dp, pc) {
    let f = chug_frequency_hz(dp + 13 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 13, "freq_hz": f}
}
fn chug_stability_check_14(dp, pc) {
    let f = chug_frequency_hz(dp + 14 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 14, "freq_hz": f}
}
fn chug_stability_check_15(dp, pc) {
    let f = chug_frequency_hz(dp + 15 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 15, "freq_hz": f}
}
fn chug_stability_check_16(dp, pc) {
    let f = chug_frequency_hz(dp + 16 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 16, "freq_hz": f}
}
fn chug_stability_check_17(dp, pc) {
    let f = chug_frequency_hz(dp + 17 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 17, "freq_hz": f}
}
fn chug_stability_check_18(dp, pc) {
    let f = chug_frequency_hz(dp + 18 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 18, "freq_hz": f}
}
fn chug_stability_check_19(dp, pc) {
    let f = chug_frequency_hz(dp + 19 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 19, "freq_hz": f}
}
fn chug_stability_check_20(dp, pc) {
    let f = chug_frequency_hz(dp + 20 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 20, "freq_hz": f}
}
fn chug_stability_check_21(dp, pc) {
    let f = chug_frequency_hz(dp + 21 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 21, "freq_hz": f}
}
fn chug_stability_check_22(dp, pc) {
    let f = chug_frequency_hz(dp + 22 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 22, "freq_hz": f}
}
fn chug_stability_check_23(dp, pc) {
    let f = chug_frequency_hz(dp + 23 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 23, "freq_hz": f}
}
fn chug_stability_check_24(dp, pc) {
    let f = chug_frequency_hz(dp + 24 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 24, "freq_hz": f}
}
fn chug_stability_check_25(dp, pc) {
    let f = chug_frequency_hz(dp + 25 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 25, "freq_hz": f}
}
fn chug_stability_check_26(dp, pc) {
    let f = chug_frequency_hz(dp + 26 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 26, "freq_hz": f}
}
fn chug_stability_check_27(dp, pc) {
    let f = chug_frequency_hz(dp + 27 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 27, "freq_hz": f}
}
fn chug_stability_check_28(dp, pc) {
    let f = chug_frequency_hz(dp + 28 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 28, "freq_hz": f}
}
fn chug_stability_check_29(dp, pc) {
    let f = chug_frequency_hz(dp + 29 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 29, "freq_hz": f}
}
fn chug_stability_check_30(dp, pc) {
    let f = chug_frequency_hz(dp + 30 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 30, "freq_hz": f}
}
fn chug_stability_check_31(dp, pc) {
    let f = chug_frequency_hz(dp + 31 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 31, "freq_hz": f}
}
fn chug_stability_check_32(dp, pc) {
    let f = chug_frequency_hz(dp + 32 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 32, "freq_hz": f}
}
fn chug_stability_check_33(dp, pc) {
    let f = chug_frequency_hz(dp + 33 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 33, "freq_hz": f}
}
fn chug_stability_check_34(dp, pc) {
    let f = chug_frequency_hz(dp + 34 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 34, "freq_hz": f}
}
fn chug_stability_check_35(dp, pc) {
    let f = chug_frequency_hz(dp + 35 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 35, "freq_hz": f}
}
fn chug_stability_check_36(dp, pc) {
    let f = chug_frequency_hz(dp + 36 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 36, "freq_hz": f}
}
fn chug_stability_check_37(dp, pc) {
    let f = chug_frequency_hz(dp + 37 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 37, "freq_hz": f}
}
fn chug_stability_check_38(dp, pc) {
    let f = chug_frequency_hz(dp + 38 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 38, "freq_hz": f}
}
fn chug_stability_check_39(dp, pc) {
    let f = chug_frequency_hz(dp + 39 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 39, "freq_hz": f}
}
fn chug_stability_check_40(dp, pc) {
    let f = chug_frequency_hz(dp + 40 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 40, "freq_hz": f}
}
fn chug_stability_check_41(dp, pc) {
    let f = chug_frequency_hz(dp + 41 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 41, "freq_hz": f}
}
fn chug_stability_check_42(dp, pc) {
    let f = chug_frequency_hz(dp + 42 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 42, "freq_hz": f}
}
fn chug_stability_check_43(dp, pc) {
    let f = chug_frequency_hz(dp + 43 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 43, "freq_hz": f}
}
fn chug_stability_check_44(dp, pc) {
    let f = chug_frequency_hz(dp + 44 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 44, "freq_hz": f}
}
fn chug_stability_check_45(dp, pc) {
    let f = chug_frequency_hz(dp + 45 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 45, "freq_hz": f}
}
fn chug_stability_check_46(dp, pc) {
    let f = chug_frequency_hz(dp + 46 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 46, "freq_hz": f}
}
fn chug_stability_check_47(dp, pc) {
    let f = chug_frequency_hz(dp + 47 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 47, "freq_hz": f}
}
fn chug_stability_check_48(dp, pc) {
    let f = chug_frequency_hz(dp + 48 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 48, "freq_hz": f}
}
fn chug_stability_check_49(dp, pc) {
    let f = chug_frequency_hz(dp + 49 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 49, "freq_hz": f}
}
fn chug_stability_check_50(dp, pc) {
    let f = chug_frequency_hz(dp + 50 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 50, "freq_hz": f}
}
fn chug_stability_check_51(dp, pc) {
    let f = chug_frequency_hz(dp + 51 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 51, "freq_hz": f}
}
fn chug_stability_check_52(dp, pc) {
    let f = chug_frequency_hz(dp + 52 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 52, "freq_hz": f}
}
fn chug_stability_check_53(dp, pc) {
    let f = chug_frequency_hz(dp + 53 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 53, "freq_hz": f}
}
fn chug_stability_check_54(dp, pc) {
    let f = chug_frequency_hz(dp + 54 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 54, "freq_hz": f}
}
fn chug_stability_check_55(dp, pc) {
    let f = chug_frequency_hz(dp + 55 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 55, "freq_hz": f}
}
fn chug_stability_check_56(dp, pc) {
    let f = chug_frequency_hz(dp + 56 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 56, "freq_hz": f}
}
fn chug_stability_check_57(dp, pc) {
    let f = chug_frequency_hz(dp + 57 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 57, "freq_hz": f}
}
fn chug_stability_check_58(dp, pc) {
    let f = chug_frequency_hz(dp + 58 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 58, "freq_hz": f}
}
fn chug_stability_check_59(dp, pc) {
    let f = chug_frequency_hz(dp + 59 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 59, "freq_hz": f}
}
fn chug_stability_check_60(dp, pc) {
    let f = chug_frequency_hz(dp + 60 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 60, "freq_hz": f}
}
fn chug_stability_check_61(dp, pc) {
    let f = chug_frequency_hz(dp + 61 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 61, "freq_hz": f}
}
fn chug_stability_check_62(dp, pc) {
    let f = chug_frequency_hz(dp + 62 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 62, "freq_hz": f}
}
fn chug_stability_check_63(dp, pc) {
    let f = chug_frequency_hz(dp + 63 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 63, "freq_hz": f}
}
fn chug_stability_check_64(dp, pc) {
    let f = chug_frequency_hz(dp + 64 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 64, "freq_hz": f}
}
fn chug_stability_check_65(dp, pc) {
    let f = chug_frequency_hz(dp + 65 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 65, "freq_hz": f}
}
fn chug_stability_check_66(dp, pc) {
    let f = chug_frequency_hz(dp + 66 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 66, "freq_hz": f}
}
fn chug_stability_check_67(dp, pc) {
    let f = chug_frequency_hz(dp + 67 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 67, "freq_hz": f}
}
fn chug_stability_check_68(dp, pc) {
    let f = chug_frequency_hz(dp + 68 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 68, "freq_hz": f}
}
fn chug_stability_check_69(dp, pc) {
    let f = chug_frequency_hz(dp + 69 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 69, "freq_hz": f}
}
fn chug_stability_check_70(dp, pc) {
    let f = chug_frequency_hz(dp + 70 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 70, "freq_hz": f}
}
fn chug_stability_check_71(dp, pc) {
    let f = chug_frequency_hz(dp + 71 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 71, "freq_hz": f}
}
fn chug_stability_check_72(dp, pc) {
    let f = chug_frequency_hz(dp + 72 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 72, "freq_hz": f}
}
fn chug_stability_check_73(dp, pc) {
    let f = chug_frequency_hz(dp + 73 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 73, "freq_hz": f}
}
fn chug_stability_check_74(dp, pc) {
    let f = chug_frequency_hz(dp + 74 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 74, "freq_hz": f}
}
fn chug_stability_check_75(dp, pc) {
    let f = chug_frequency_hz(dp + 75 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 75, "freq_hz": f}
}
fn chug_stability_check_76(dp, pc) {
    let f = chug_frequency_hz(dp + 76 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 76, "freq_hz": f}
}
fn chug_stability_check_77(dp, pc) {
    let f = chug_frequency_hz(dp + 77 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 77, "freq_hz": f}
}
fn chug_stability_check_78(dp, pc) {
    let f = chug_frequency_hz(dp + 78 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 78, "freq_hz": f}
}
fn chug_stability_check_79(dp, pc) {
    let f = chug_frequency_hz(dp + 79 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 79, "freq_hz": f}
}
fn chug_stability_check_80(dp, pc) {
    let f = chug_frequency_hz(dp + 80 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 80, "freq_hz": f}
}
fn chug_stability_check_81(dp, pc) {
    let f = chug_frequency_hz(dp + 81 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 81, "freq_hz": f}
}
fn chug_stability_check_82(dp, pc) {
    let f = chug_frequency_hz(dp + 82 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 82, "freq_hz": f}
}
fn chug_stability_check_83(dp, pc) {
    let f = chug_frequency_hz(dp + 83 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 83, "freq_hz": f}
}
fn chug_stability_check_84(dp, pc) {
    let f = chug_frequency_hz(dp + 84 * 0.1, pc, 0.002, 1800.0);
    #{"mode": 84, "freq_hz": f}
}
