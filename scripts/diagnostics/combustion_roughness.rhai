// Running Combustion Roughness Index: Delta Pc(RMS) / Pc(Mean)
// Part of the Ullage Cryogenic Test Executive Suite

fn compute_roughness_pct(pc_rms, pc_mean) {
    if pc_mean <= 0.0 { return 0.0; }
    (pc_rms / pc_mean) * 100.0
}

fn verify_roughness() {
    let r = compute_roughness_pct(1.6, 80.0);
    if (r - 2.0).abs() > 1.0e-6 { return false; }
    true
}
if verify_roughness() { log_info("[DIAG::ROUGHNESS] Verification passed."); }
fn roughness_window_monitor_1(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 1 * 0.2);
    #{"window": 1, "roughness_pct": rough}
}
fn roughness_window_monitor_2(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 2 * 0.2);
    #{"window": 2, "roughness_pct": rough}
}
fn roughness_window_monitor_3(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 3 * 0.2);
    #{"window": 3, "roughness_pct": rough}
}
fn roughness_window_monitor_4(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 4 * 0.2);
    #{"window": 4, "roughness_pct": rough}
}
fn roughness_window_monitor_5(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 5 * 0.2);
    #{"window": 5, "roughness_pct": rough}
}
fn roughness_window_monitor_6(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 6 * 0.2);
    #{"window": 6, "roughness_pct": rough}
}
fn roughness_window_monitor_7(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 7 * 0.2);
    #{"window": 7, "roughness_pct": rough}
}
fn roughness_window_monitor_8(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 8 * 0.2);
    #{"window": 8, "roughness_pct": rough}
}
fn roughness_window_monitor_9(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 9 * 0.2);
    #{"window": 9, "roughness_pct": rough}
}
fn roughness_window_monitor_10(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 10 * 0.2);
    #{"window": 10, "roughness_pct": rough}
}
fn roughness_window_monitor_11(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 11 * 0.2);
    #{"window": 11, "roughness_pct": rough}
}
fn roughness_window_monitor_12(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 12 * 0.2);
    #{"window": 12, "roughness_pct": rough}
}
fn roughness_window_monitor_13(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 13 * 0.2);
    #{"window": 13, "roughness_pct": rough}
}
fn roughness_window_monitor_14(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 14 * 0.2);
    #{"window": 14, "roughness_pct": rough}
}
fn roughness_window_monitor_15(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 15 * 0.2);
    #{"window": 15, "roughness_pct": rough}
}
fn roughness_window_monitor_16(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 16 * 0.2);
    #{"window": 16, "roughness_pct": rough}
}
fn roughness_window_monitor_17(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 17 * 0.2);
    #{"window": 17, "roughness_pct": rough}
}
fn roughness_window_monitor_18(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 18 * 0.2);
    #{"window": 18, "roughness_pct": rough}
}
fn roughness_window_monitor_19(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 19 * 0.2);
    #{"window": 19, "roughness_pct": rough}
}
fn roughness_window_monitor_20(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 20 * 0.2);
    #{"window": 20, "roughness_pct": rough}
}
fn roughness_window_monitor_21(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 21 * 0.2);
    #{"window": 21, "roughness_pct": rough}
}
fn roughness_window_monitor_22(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 22 * 0.2);
    #{"window": 22, "roughness_pct": rough}
}
fn roughness_window_monitor_23(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 23 * 0.2);
    #{"window": 23, "roughness_pct": rough}
}
fn roughness_window_monitor_24(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 24 * 0.2);
    #{"window": 24, "roughness_pct": rough}
}
fn roughness_window_monitor_25(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 25 * 0.2);
    #{"window": 25, "roughness_pct": rough}
}
fn roughness_window_monitor_26(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 26 * 0.2);
    #{"window": 26, "roughness_pct": rough}
}
fn roughness_window_monitor_27(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 27 * 0.2);
    #{"window": 27, "roughness_pct": rough}
}
fn roughness_window_monitor_28(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 28 * 0.2);
    #{"window": 28, "roughness_pct": rough}
}
fn roughness_window_monitor_29(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 29 * 0.2);
    #{"window": 29, "roughness_pct": rough}
}
fn roughness_window_monitor_30(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 30 * 0.2);
    #{"window": 30, "roughness_pct": rough}
}
fn roughness_window_monitor_31(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 31 * 0.2);
    #{"window": 31, "roughness_pct": rough}
}
fn roughness_window_monitor_32(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 32 * 0.2);
    #{"window": 32, "roughness_pct": rough}
}
fn roughness_window_monitor_33(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 33 * 0.2);
    #{"window": 33, "roughness_pct": rough}
}
fn roughness_window_monitor_34(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 34 * 0.2);
    #{"window": 34, "roughness_pct": rough}
}
fn roughness_window_monitor_35(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 35 * 0.2);
    #{"window": 35, "roughness_pct": rough}
}
fn roughness_window_monitor_36(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 36 * 0.2);
    #{"window": 36, "roughness_pct": rough}
}
fn roughness_window_monitor_37(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 37 * 0.2);
    #{"window": 37, "roughness_pct": rough}
}
fn roughness_window_monitor_38(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 38 * 0.2);
    #{"window": 38, "roughness_pct": rough}
}
fn roughness_window_monitor_39(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 39 * 0.2);
    #{"window": 39, "roughness_pct": rough}
}
fn roughness_window_monitor_40(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 40 * 0.2);
    #{"window": 40, "roughness_pct": rough}
}
fn roughness_window_monitor_41(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 41 * 0.2);
    #{"window": 41, "roughness_pct": rough}
}
fn roughness_window_monitor_42(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 42 * 0.2);
    #{"window": 42, "roughness_pct": rough}
}
fn roughness_window_monitor_43(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 43 * 0.2);
    #{"window": 43, "roughness_pct": rough}
}
fn roughness_window_monitor_44(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 44 * 0.2);
    #{"window": 44, "roughness_pct": rough}
}
fn roughness_window_monitor_45(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 45 * 0.2);
    #{"window": 45, "roughness_pct": rough}
}
fn roughness_window_monitor_46(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 46 * 0.2);
    #{"window": 46, "roughness_pct": rough}
}
fn roughness_window_monitor_47(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 47 * 0.2);
    #{"window": 47, "roughness_pct": rough}
}
fn roughness_window_monitor_48(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 48 * 0.2);
    #{"window": 48, "roughness_pct": rough}
}
fn roughness_window_monitor_49(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 49 * 0.2);
    #{"window": 49, "roughness_pct": rough}
}
fn roughness_window_monitor_50(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 50 * 0.2);
    #{"window": 50, "roughness_pct": rough}
}
fn roughness_window_monitor_51(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 51 * 0.2);
    #{"window": 51, "roughness_pct": rough}
}
fn roughness_window_monitor_52(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 52 * 0.2);
    #{"window": 52, "roughness_pct": rough}
}
fn roughness_window_monitor_53(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 53 * 0.2);
    #{"window": 53, "roughness_pct": rough}
}
fn roughness_window_monitor_54(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 54 * 0.2);
    #{"window": 54, "roughness_pct": rough}
}
fn roughness_window_monitor_55(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 55 * 0.2);
    #{"window": 55, "roughness_pct": rough}
}
fn roughness_window_monitor_56(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 56 * 0.2);
    #{"window": 56, "roughness_pct": rough}
}
fn roughness_window_monitor_57(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 57 * 0.2);
    #{"window": 57, "roughness_pct": rough}
}
fn roughness_window_monitor_58(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 58 * 0.2);
    #{"window": 58, "roughness_pct": rough}
}
fn roughness_window_monitor_59(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 59 * 0.2);
    #{"window": 59, "roughness_pct": rough}
}
fn roughness_window_monitor_60(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 60 * 0.2);
    #{"window": 60, "roughness_pct": rough}
}
fn roughness_window_monitor_61(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 61 * 0.2);
    #{"window": 61, "roughness_pct": rough}
}
fn roughness_window_monitor_62(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 62 * 0.2);
    #{"window": 62, "roughness_pct": rough}
}
fn roughness_window_monitor_63(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 63 * 0.2);
    #{"window": 63, "roughness_pct": rough}
}
fn roughness_window_monitor_64(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 64 * 0.2);
    #{"window": 64, "roughness_pct": rough}
}
fn roughness_window_monitor_65(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 65 * 0.2);
    #{"window": 65, "roughness_pct": rough}
}
fn roughness_window_monitor_66(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 66 * 0.2);
    #{"window": 66, "roughness_pct": rough}
}
fn roughness_window_monitor_67(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 67 * 0.2);
    #{"window": 67, "roughness_pct": rough}
}
fn roughness_window_monitor_68(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 68 * 0.2);
    #{"window": 68, "roughness_pct": rough}
}
fn roughness_window_monitor_69(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 69 * 0.2);
    #{"window": 69, "roughness_pct": rough}
}
fn roughness_window_monitor_70(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 70 * 0.2);
    #{"window": 70, "roughness_pct": rough}
}
fn roughness_window_monitor_71(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 71 * 0.2);
    #{"window": 71, "roughness_pct": rough}
}
fn roughness_window_monitor_72(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 72 * 0.2);
    #{"window": 72, "roughness_pct": rough}
}
fn roughness_window_monitor_73(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 73 * 0.2);
    #{"window": 73, "roughness_pct": rough}
}
fn roughness_window_monitor_74(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 74 * 0.2);
    #{"window": 74, "roughness_pct": rough}
}
fn roughness_window_monitor_75(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 75 * 0.2);
    #{"window": 75, "roughness_pct": rough}
}
fn roughness_window_monitor_76(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 76 * 0.2);
    #{"window": 76, "roughness_pct": rough}
}
fn roughness_window_monitor_77(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 77 * 0.2);
    #{"window": 77, "roughness_pct": rough}
}
fn roughness_window_monitor_78(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 78 * 0.2);
    #{"window": 78, "roughness_pct": rough}
}
fn roughness_window_monitor_79(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 79 * 0.2);
    #{"window": 79, "roughness_pct": rough}
}
fn roughness_window_monitor_80(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 80 * 0.2);
    #{"window": 80, "roughness_pct": rough}
}
fn roughness_window_monitor_81(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 81 * 0.2);
    #{"window": 81, "roughness_pct": rough}
}
fn roughness_window_monitor_82(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 82 * 0.2);
    #{"window": 82, "roughness_pct": rough}
}
fn roughness_window_monitor_83(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 83 * 0.2);
    #{"window": 83, "roughness_pct": rough}
}
fn roughness_window_monitor_84(rms) {
    let rough = compute_roughness_pct(rms, 80.0 + 84 * 0.2);
    #{"window": 84, "roughness_pct": rough}
}
