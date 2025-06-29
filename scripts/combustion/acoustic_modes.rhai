// High-Frequency Acoustic Resonant Modes (1T, 2T, 1R, 1L)
// Rayleigh Criterion and Thermoacoustic Cavity Eigenfrequencies

fn cavity_eigenfrequency_1t(chamber_diam_m, sound_speed_m_s) {
    // First tangential mode Bessel zero alpha_11 = 1.84118
    (1.84118 * sound_speed_m_s) / (3.1415926535 * chamber_diam_m)
}

fn cavity_eigenfrequency_1r(chamber_diam_m, sound_speed_m_s) {
    // First radial mode Bessel zero alpha_01 = 3.83171
    (3.83171 * sound_speed_m_s) / (3.1415926535 * chamber_diam_m)
}

fn verify_acoustic_modes() {
    let f1t = cavity_eigenfrequency_1t(0.20, 1100.0);
    if f1t < 3000.0 || f1t > 3500.0 { return false; }
    true
}
if verify_acoustic_modes() { log_info("[COMBUSTION::ACOUSTIC_MODES] Verification passed."); }
fn acoustic_mode_spectrum_1(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 1 * 10.0);
    #{"mode_index": 1, "freq_1t": f}
}
fn acoustic_mode_spectrum_2(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 2 * 10.0);
    #{"mode_index": 2, "freq_1t": f}
}
fn acoustic_mode_spectrum_3(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 3 * 10.0);
    #{"mode_index": 3, "freq_1t": f}
}
fn acoustic_mode_spectrum_4(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 4 * 10.0);
    #{"mode_index": 4, "freq_1t": f}
}
fn acoustic_mode_spectrum_5(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 5 * 10.0);
    #{"mode_index": 5, "freq_1t": f}
}
fn acoustic_mode_spectrum_6(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 6 * 10.0);
    #{"mode_index": 6, "freq_1t": f}
}
fn acoustic_mode_spectrum_7(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 7 * 10.0);
    #{"mode_index": 7, "freq_1t": f}
}
fn acoustic_mode_spectrum_8(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 8 * 10.0);
    #{"mode_index": 8, "freq_1t": f}
}
fn acoustic_mode_spectrum_9(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 9 * 10.0);
    #{"mode_index": 9, "freq_1t": f}
}
fn acoustic_mode_spectrum_10(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 10 * 10.0);
    #{"mode_index": 10, "freq_1t": f}
}
fn acoustic_mode_spectrum_11(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 11 * 10.0);
    #{"mode_index": 11, "freq_1t": f}
}
fn acoustic_mode_spectrum_12(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 12 * 10.0);
    #{"mode_index": 12, "freq_1t": f}
}
fn acoustic_mode_spectrum_13(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 13 * 10.0);
    #{"mode_index": 13, "freq_1t": f}
}
fn acoustic_mode_spectrum_14(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 14 * 10.0);
    #{"mode_index": 14, "freq_1t": f}
}
fn acoustic_mode_spectrum_15(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 15 * 10.0);
    #{"mode_index": 15, "freq_1t": f}
}
fn acoustic_mode_spectrum_16(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 16 * 10.0);
    #{"mode_index": 16, "freq_1t": f}
}
fn acoustic_mode_spectrum_17(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 17 * 10.0);
    #{"mode_index": 17, "freq_1t": f}
}
fn acoustic_mode_spectrum_18(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 18 * 10.0);
    #{"mode_index": 18, "freq_1t": f}
}
fn acoustic_mode_spectrum_19(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 19 * 10.0);
    #{"mode_index": 19, "freq_1t": f}
}
fn acoustic_mode_spectrum_20(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 20 * 10.0);
    #{"mode_index": 20, "freq_1t": f}
}
fn acoustic_mode_spectrum_21(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 21 * 10.0);
    #{"mode_index": 21, "freq_1t": f}
}
fn acoustic_mode_spectrum_22(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 22 * 10.0);
    #{"mode_index": 22, "freq_1t": f}
}
fn acoustic_mode_spectrum_23(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 23 * 10.0);
    #{"mode_index": 23, "freq_1t": f}
}
fn acoustic_mode_spectrum_24(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 24 * 10.0);
    #{"mode_index": 24, "freq_1t": f}
}
fn acoustic_mode_spectrum_25(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 25 * 10.0);
    #{"mode_index": 25, "freq_1t": f}
}
fn acoustic_mode_spectrum_26(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 26 * 10.0);
    #{"mode_index": 26, "freq_1t": f}
}
fn acoustic_mode_spectrum_27(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 27 * 10.0);
    #{"mode_index": 27, "freq_1t": f}
}
fn acoustic_mode_spectrum_28(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 28 * 10.0);
    #{"mode_index": 28, "freq_1t": f}
}
fn acoustic_mode_spectrum_29(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 29 * 10.0);
    #{"mode_index": 29, "freq_1t": f}
}
fn acoustic_mode_spectrum_30(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 30 * 10.0);
    #{"mode_index": 30, "freq_1t": f}
}
fn acoustic_mode_spectrum_31(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 31 * 10.0);
    #{"mode_index": 31, "freq_1t": f}
}
fn acoustic_mode_spectrum_32(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 32 * 10.0);
    #{"mode_index": 32, "freq_1t": f}
}
fn acoustic_mode_spectrum_33(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 33 * 10.0);
    #{"mode_index": 33, "freq_1t": f}
}
fn acoustic_mode_spectrum_34(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 34 * 10.0);
    #{"mode_index": 34, "freq_1t": f}
}
fn acoustic_mode_spectrum_35(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 35 * 10.0);
    #{"mode_index": 35, "freq_1t": f}
}
fn acoustic_mode_spectrum_36(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 36 * 10.0);
    #{"mode_index": 36, "freq_1t": f}
}
fn acoustic_mode_spectrum_37(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 37 * 10.0);
    #{"mode_index": 37, "freq_1t": f}
}
fn acoustic_mode_spectrum_38(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 38 * 10.0);
    #{"mode_index": 38, "freq_1t": f}
}
fn acoustic_mode_spectrum_39(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 39 * 10.0);
    #{"mode_index": 39, "freq_1t": f}
}
fn acoustic_mode_spectrum_40(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 40 * 10.0);
    #{"mode_index": 40, "freq_1t": f}
}
fn acoustic_mode_spectrum_41(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 41 * 10.0);
    #{"mode_index": 41, "freq_1t": f}
}
fn acoustic_mode_spectrum_42(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 42 * 10.0);
    #{"mode_index": 42, "freq_1t": f}
}
fn acoustic_mode_spectrum_43(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 43 * 10.0);
    #{"mode_index": 43, "freq_1t": f}
}
fn acoustic_mode_spectrum_44(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 44 * 10.0);
    #{"mode_index": 44, "freq_1t": f}
}
fn acoustic_mode_spectrum_45(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 45 * 10.0);
    #{"mode_index": 45, "freq_1t": f}
}
fn acoustic_mode_spectrum_46(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 46 * 10.0);
    #{"mode_index": 46, "freq_1t": f}
}
fn acoustic_mode_spectrum_47(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 47 * 10.0);
    #{"mode_index": 47, "freq_1t": f}
}
fn acoustic_mode_spectrum_48(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 48 * 10.0);
    #{"mode_index": 48, "freq_1t": f}
}
fn acoustic_mode_spectrum_49(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 49 * 10.0);
    #{"mode_index": 49, "freq_1t": f}
}
fn acoustic_mode_spectrum_50(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 50 * 10.0);
    #{"mode_index": 50, "freq_1t": f}
}
fn acoustic_mode_spectrum_51(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 51 * 10.0);
    #{"mode_index": 51, "freq_1t": f}
}
fn acoustic_mode_spectrum_52(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 52 * 10.0);
    #{"mode_index": 52, "freq_1t": f}
}
fn acoustic_mode_spectrum_53(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 53 * 10.0);
    #{"mode_index": 53, "freq_1t": f}
}
fn acoustic_mode_spectrum_54(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 54 * 10.0);
    #{"mode_index": 54, "freq_1t": f}
}
fn acoustic_mode_spectrum_55(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 55 * 10.0);
    #{"mode_index": 55, "freq_1t": f}
}
fn acoustic_mode_spectrum_56(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 56 * 10.0);
    #{"mode_index": 56, "freq_1t": f}
}
fn acoustic_mode_spectrum_57(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 57 * 10.0);
    #{"mode_index": 57, "freq_1t": f}
}
fn acoustic_mode_spectrum_58(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 58 * 10.0);
    #{"mode_index": 58, "freq_1t": f}
}
fn acoustic_mode_spectrum_59(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 59 * 10.0);
    #{"mode_index": 59, "freq_1t": f}
}
fn acoustic_mode_spectrum_60(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 60 * 10.0);
    #{"mode_index": 60, "freq_1t": f}
}
fn acoustic_mode_spectrum_61(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 61 * 10.0);
    #{"mode_index": 61, "freq_1t": f}
}
fn acoustic_mode_spectrum_62(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 62 * 10.0);
    #{"mode_index": 62, "freq_1t": f}
}
fn acoustic_mode_spectrum_63(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 63 * 10.0);
    #{"mode_index": 63, "freq_1t": f}
}
fn acoustic_mode_spectrum_64(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 64 * 10.0);
    #{"mode_index": 64, "freq_1t": f}
}
fn acoustic_mode_spectrum_65(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 65 * 10.0);
    #{"mode_index": 65, "freq_1t": f}
}
fn acoustic_mode_spectrum_66(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 66 * 10.0);
    #{"mode_index": 66, "freq_1t": f}
}
fn acoustic_mode_spectrum_67(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 67 * 10.0);
    #{"mode_index": 67, "freq_1t": f}
}
fn acoustic_mode_spectrum_68(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 68 * 10.0);
    #{"mode_index": 68, "freq_1t": f}
}
fn acoustic_mode_spectrum_69(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 69 * 10.0);
    #{"mode_index": 69, "freq_1t": f}
}
fn acoustic_mode_spectrum_70(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 70 * 10.0);
    #{"mode_index": 70, "freq_1t": f}
}
fn acoustic_mode_spectrum_71(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 71 * 10.0);
    #{"mode_index": 71, "freq_1t": f}
}
fn acoustic_mode_spectrum_72(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 72 * 10.0);
    #{"mode_index": 72, "freq_1t": f}
}
fn acoustic_mode_spectrum_73(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 73 * 10.0);
    #{"mode_index": 73, "freq_1t": f}
}
fn acoustic_mode_spectrum_74(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 74 * 10.0);
    #{"mode_index": 74, "freq_1t": f}
}
fn acoustic_mode_spectrum_75(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 75 * 10.0);
    #{"mode_index": 75, "freq_1t": f}
}
fn acoustic_mode_spectrum_76(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 76 * 10.0);
    #{"mode_index": 76, "freq_1t": f}
}
fn acoustic_mode_spectrum_77(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 77 * 10.0);
    #{"mode_index": 77, "freq_1t": f}
}
fn acoustic_mode_spectrum_78(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 78 * 10.0);
    #{"mode_index": 78, "freq_1t": f}
}
fn acoustic_mode_spectrum_79(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 79 * 10.0);
    #{"mode_index": 79, "freq_1t": f}
}
fn acoustic_mode_spectrum_80(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 80 * 10.0);
    #{"mode_index": 80, "freq_1t": f}
}
fn acoustic_mode_spectrum_81(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 81 * 10.0);
    #{"mode_index": 81, "freq_1t": f}
}
fn acoustic_mode_spectrum_82(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 82 * 10.0);
    #{"mode_index": 82, "freq_1t": f}
}
fn acoustic_mode_spectrum_83(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 83 * 10.0);
    #{"mode_index": 83, "freq_1t": f}
}
fn acoustic_mode_spectrum_84(diam) {
    let f = cavity_eigenfrequency_1t(diam, 1100.0 + 84 * 10.0);
    #{"mode_index": 84, "freq_1t": f}
}
