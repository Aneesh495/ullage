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
