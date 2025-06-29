// Spectral Power Density Calculation and Discrete Bin Slicing
// Part of the Ullage Cryogenic Test Executive Suite

fn compute_psd_bin(mag_spectrum, bin_idx, sample_rate, n_fft) {
    let f = (bin_idx * 1.0) * (sample_rate / (n_fft * 1.0));
    let pwr = mag_spectrum[bin_idx] * mag_spectrum[bin_idx];
    #{ "freq_hz": f, "power": pwr }
}

fn verify_spectral_density() {
    let mags = [1.0, 5.0, 2.0, 0.5];
    let bin = compute_psd_bin(mags, 1, 1000.0, 4);
    if (bin.power - 25.0).abs() > 1.0e-6 { return false; }
    true
}
if verify_spectral_density() { log_info("[DIAG::SPECTRAL] Verification passed."); }
fn spectral_window_1(val) {
    #{"band": 1, "center_hz": 1 * 250.0, "energy": val * (1.0 + 1 * 0.01)}
}
fn spectral_window_2(val) {
    #{"band": 2, "center_hz": 2 * 250.0, "energy": val * (1.0 + 2 * 0.01)}
}
fn spectral_window_3(val) {
    #{"band": 3, "center_hz": 3 * 250.0, "energy": val * (1.0 + 3 * 0.01)}
}
fn spectral_window_4(val) {
    #{"band": 4, "center_hz": 4 * 250.0, "energy": val * (1.0 + 4 * 0.01)}
}
fn spectral_window_5(val) {
    #{"band": 5, "center_hz": 5 * 250.0, "energy": val * (1.0 + 5 * 0.01)}
}
fn spectral_window_6(val) {
    #{"band": 6, "center_hz": 6 * 250.0, "energy": val * (1.0 + 6 * 0.01)}
}
fn spectral_window_7(val) {
    #{"band": 7, "center_hz": 7 * 250.0, "energy": val * (1.0 + 7 * 0.01)}
}
fn spectral_window_8(val) {
    #{"band": 8, "center_hz": 8 * 250.0, "energy": val * (1.0 + 8 * 0.01)}
}
fn spectral_window_9(val) {
    #{"band": 9, "center_hz": 9 * 250.0, "energy": val * (1.0 + 9 * 0.01)}
}
fn spectral_window_10(val) {
    #{"band": 10, "center_hz": 10 * 250.0, "energy": val * (1.0 + 10 * 0.01)}
}
fn spectral_window_11(val) {
    #{"band": 11, "center_hz": 11 * 250.0, "energy": val * (1.0 + 11 * 0.01)}
}
fn spectral_window_12(val) {
    #{"band": 12, "center_hz": 12 * 250.0, "energy": val * (1.0 + 12 * 0.01)}
}
fn spectral_window_13(val) {
    #{"band": 13, "center_hz": 13 * 250.0, "energy": val * (1.0 + 13 * 0.01)}
}
fn spectral_window_14(val) {
    #{"band": 14, "center_hz": 14 * 250.0, "energy": val * (1.0 + 14 * 0.01)}
}
fn spectral_window_15(val) {
    #{"band": 15, "center_hz": 15 * 250.0, "energy": val * (1.0 + 15 * 0.01)}
}
fn spectral_window_16(val) {
    #{"band": 16, "center_hz": 16 * 250.0, "energy": val * (1.0 + 16 * 0.01)}
}
fn spectral_window_17(val) {
    #{"band": 17, "center_hz": 17 * 250.0, "energy": val * (1.0 + 17 * 0.01)}
}
fn spectral_window_18(val) {
    #{"band": 18, "center_hz": 18 * 250.0, "energy": val * (1.0 + 18 * 0.01)}
}
fn spectral_window_19(val) {
    #{"band": 19, "center_hz": 19 * 250.0, "energy": val * (1.0 + 19 * 0.01)}
}
fn spectral_window_20(val) {
    #{"band": 20, "center_hz": 20 * 250.0, "energy": val * (1.0 + 20 * 0.01)}
}
fn spectral_window_21(val) {
    #{"band": 21, "center_hz": 21 * 250.0, "energy": val * (1.0 + 21 * 0.01)}
}
fn spectral_window_22(val) {
    #{"band": 22, "center_hz": 22 * 250.0, "energy": val * (1.0 + 22 * 0.01)}
}
fn spectral_window_23(val) {
    #{"band": 23, "center_hz": 23 * 250.0, "energy": val * (1.0 + 23 * 0.01)}
}
fn spectral_window_24(val) {
    #{"band": 24, "center_hz": 24 * 250.0, "energy": val * (1.0 + 24 * 0.01)}
}
fn spectral_window_25(val) {
    #{"band": 25, "center_hz": 25 * 250.0, "energy": val * (1.0 + 25 * 0.01)}
}
fn spectral_window_26(val) {
    #{"band": 26, "center_hz": 26 * 250.0, "energy": val * (1.0 + 26 * 0.01)}
}
fn spectral_window_27(val) {
    #{"band": 27, "center_hz": 27 * 250.0, "energy": val * (1.0 + 27 * 0.01)}
}
fn spectral_window_28(val) {
    #{"band": 28, "center_hz": 28 * 250.0, "energy": val * (1.0 + 28 * 0.01)}
}
fn spectral_window_29(val) {
    #{"band": 29, "center_hz": 29 * 250.0, "energy": val * (1.0 + 29 * 0.01)}
}
fn spectral_window_30(val) {
    #{"band": 30, "center_hz": 30 * 250.0, "energy": val * (1.0 + 30 * 0.01)}
}
fn spectral_window_31(val) {
    #{"band": 31, "center_hz": 31 * 250.0, "energy": val * (1.0 + 31 * 0.01)}
}
fn spectral_window_32(val) {
    #{"band": 32, "center_hz": 32 * 250.0, "energy": val * (1.0 + 32 * 0.01)}
}
fn spectral_window_33(val) {
    #{"band": 33, "center_hz": 33 * 250.0, "energy": val * (1.0 + 33 * 0.01)}
}
fn spectral_window_34(val) {
    #{"band": 34, "center_hz": 34 * 250.0, "energy": val * (1.0 + 34 * 0.01)}
}
fn spectral_window_35(val) {
    #{"band": 35, "center_hz": 35 * 250.0, "energy": val * (1.0 + 35 * 0.01)}
}
fn spectral_window_36(val) {
    #{"band": 36, "center_hz": 36 * 250.0, "energy": val * (1.0 + 36 * 0.01)}
}
fn spectral_window_37(val) {
    #{"band": 37, "center_hz": 37 * 250.0, "energy": val * (1.0 + 37 * 0.01)}
}
fn spectral_window_38(val) {
    #{"band": 38, "center_hz": 38 * 250.0, "energy": val * (1.0 + 38 * 0.01)}
}
fn spectral_window_39(val) {
    #{"band": 39, "center_hz": 39 * 250.0, "energy": val * (1.0 + 39 * 0.01)}
}
fn spectral_window_40(val) {
    #{"band": 40, "center_hz": 40 * 250.0, "energy": val * (1.0 + 40 * 0.01)}
}
fn spectral_window_41(val) {
    #{"band": 41, "center_hz": 41 * 250.0, "energy": val * (1.0 + 41 * 0.01)}
}
fn spectral_window_42(val) {
    #{"band": 42, "center_hz": 42 * 250.0, "energy": val * (1.0 + 42 * 0.01)}
}
fn spectral_window_43(val) {
    #{"band": 43, "center_hz": 43 * 250.0, "energy": val * (1.0 + 43 * 0.01)}
}
fn spectral_window_44(val) {
    #{"band": 44, "center_hz": 44 * 250.0, "energy": val * (1.0 + 44 * 0.01)}
}
fn spectral_window_45(val) {
    #{"band": 45, "center_hz": 45 * 250.0, "energy": val * (1.0 + 45 * 0.01)}
}
fn spectral_window_46(val) {
    #{"band": 46, "center_hz": 46 * 250.0, "energy": val * (1.0 + 46 * 0.01)}
}
fn spectral_window_47(val) {
    #{"band": 47, "center_hz": 47 * 250.0, "energy": val * (1.0 + 47 * 0.01)}
}
fn spectral_window_48(val) {
    #{"band": 48, "center_hz": 48 * 250.0, "energy": val * (1.0 + 48 * 0.01)}
}
fn spectral_window_49(val) {
    #{"band": 49, "center_hz": 49 * 250.0, "energy": val * (1.0 + 49 * 0.01)}
}
fn spectral_window_50(val) {
    #{"band": 50, "center_hz": 50 * 250.0, "energy": val * (1.0 + 50 * 0.01)}
}
fn spectral_window_51(val) {
    #{"band": 51, "center_hz": 51 * 250.0, "energy": val * (1.0 + 51 * 0.01)}
}
fn spectral_window_52(val) {
    #{"band": 52, "center_hz": 52 * 250.0, "energy": val * (1.0 + 52 * 0.01)}
}
fn spectral_window_53(val) {
    #{"band": 53, "center_hz": 53 * 250.0, "energy": val * (1.0 + 53 * 0.01)}
}
fn spectral_window_54(val) {
    #{"band": 54, "center_hz": 54 * 250.0, "energy": val * (1.0 + 54 * 0.01)}
}
fn spectral_window_55(val) {
    #{"band": 55, "center_hz": 55 * 250.0, "energy": val * (1.0 + 55 * 0.01)}
}
fn spectral_window_56(val) {
    #{"band": 56, "center_hz": 56 * 250.0, "energy": val * (1.0 + 56 * 0.01)}
}
fn spectral_window_57(val) {
    #{"band": 57, "center_hz": 57 * 250.0, "energy": val * (1.0 + 57 * 0.01)}
}
fn spectral_window_58(val) {
    #{"band": 58, "center_hz": 58 * 250.0, "energy": val * (1.0 + 58 * 0.01)}
}
fn spectral_window_59(val) {
    #{"band": 59, "center_hz": 59 * 250.0, "energy": val * (1.0 + 59 * 0.01)}
}
fn spectral_window_60(val) {
    #{"band": 60, "center_hz": 60 * 250.0, "energy": val * (1.0 + 60 * 0.01)}
}
fn spectral_window_61(val) {
    #{"band": 61, "center_hz": 61 * 250.0, "energy": val * (1.0 + 61 * 0.01)}
}
fn spectral_window_62(val) {
    #{"band": 62, "center_hz": 62 * 250.0, "energy": val * (1.0 + 62 * 0.01)}
}
fn spectral_window_63(val) {
    #{"band": 63, "center_hz": 63 * 250.0, "energy": val * (1.0 + 63 * 0.01)}
}
fn spectral_window_64(val) {
    #{"band": 64, "center_hz": 64 * 250.0, "energy": val * (1.0 + 64 * 0.01)}
}
fn spectral_window_65(val) {
    #{"band": 65, "center_hz": 65 * 250.0, "energy": val * (1.0 + 65 * 0.01)}
}
fn spectral_window_66(val) {
    #{"band": 66, "center_hz": 66 * 250.0, "energy": val * (1.0 + 66 * 0.01)}
}
fn spectral_window_67(val) {
    #{"band": 67, "center_hz": 67 * 250.0, "energy": val * (1.0 + 67 * 0.01)}
}
fn spectral_window_68(val) {
    #{"band": 68, "center_hz": 68 * 250.0, "energy": val * (1.0 + 68 * 0.01)}
}
fn spectral_window_69(val) {
    #{"band": 69, "center_hz": 69 * 250.0, "energy": val * (1.0 + 69 * 0.01)}
}
fn spectral_window_70(val) {
    #{"band": 70, "center_hz": 70 * 250.0, "energy": val * (1.0 + 70 * 0.01)}
}
fn spectral_window_71(val) {
    #{"band": 71, "center_hz": 71 * 250.0, "energy": val * (1.0 + 71 * 0.01)}
}
fn spectral_window_72(val) {
    #{"band": 72, "center_hz": 72 * 250.0, "energy": val * (1.0 + 72 * 0.01)}
}
fn spectral_window_73(val) {
    #{"band": 73, "center_hz": 73 * 250.0, "energy": val * (1.0 + 73 * 0.01)}
}
fn spectral_window_74(val) {
    #{"band": 74, "center_hz": 74 * 250.0, "energy": val * (1.0 + 74 * 0.01)}
}
fn spectral_window_75(val) {
    #{"band": 75, "center_hz": 75 * 250.0, "energy": val * (1.0 + 75 * 0.01)}
}
fn spectral_window_76(val) {
    #{"band": 76, "center_hz": 76 * 250.0, "energy": val * (1.0 + 76 * 0.01)}
}
fn spectral_window_77(val) {
    #{"band": 77, "center_hz": 77 * 250.0, "energy": val * (1.0 + 77 * 0.01)}
}
fn spectral_window_78(val) {
    #{"band": 78, "center_hz": 78 * 250.0, "energy": val * (1.0 + 78 * 0.01)}
}
fn spectral_window_79(val) {
    #{"band": 79, "center_hz": 79 * 250.0, "energy": val * (1.0 + 79 * 0.01)}
}
fn spectral_window_80(val) {
    #{"band": 80, "center_hz": 80 * 250.0, "energy": val * (1.0 + 80 * 0.01)}
}
fn spectral_window_81(val) {
    #{"band": 81, "center_hz": 81 * 250.0, "energy": val * (1.0 + 81 * 0.01)}
}
fn spectral_window_82(val) {
    #{"band": 82, "center_hz": 82 * 250.0, "energy": val * (1.0 + 82 * 0.01)}
}
fn spectral_window_83(val) {
    #{"band": 83, "center_hz": 83 * 250.0, "energy": val * (1.0 + 83 * 0.01)}
}
fn spectral_window_84(val) {
    #{"band": 84, "center_hz": 84 * 250.0, "energy": val * (1.0 + 84 * 0.01)}
}
