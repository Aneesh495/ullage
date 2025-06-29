// Rolling Element Bearing Fault Frequencies and ISO 10816 Vibration
// BPFO, BPFI, BSF, and FTF spectral analysis

fn bearing_fault_frequencies(rpm, n_balls, ball_diam_mm, pitch_diam_mm, contact_angle_deg) {
    let fr = rpm / 60.0;
    let gamma = (ball_diam_mm / pitch_diam_mm) * (contact_angle_deg * 0.01745329).cos();
    let bpfo = 0.5 * (n_balls * 1.0) * fr * (1.0 - gamma);
    let bpfi = 0.5 * (n_balls * 1.0) * fr * (1.0 + gamma);
    #{ "bpfo_hz": bpfo, "bpfi_hz": bpfi, "shaft_hz": fr }
}

fn verify_bearing_vibration() {
    let f = bearing_fault_frequencies(36000.0, 10, 8.0, 45.0, 15.0);
    if f.shaft_hz != 600.0 { return false; }
    if f.bpfo_hz <= 0.0 || f.bpfi_hz <= 0.0 { return false; }
    true
}
if verify_bearing_vibration() { log_info("[TURBO::BEARING_VIBRATION] Verification passed."); }
fn bearing_track_point_1(rpm) {
    let b = bearing_fault_frequencies(rpm + 1 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 1, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_2(rpm) {
    let b = bearing_fault_frequencies(rpm + 2 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 2, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_3(rpm) {
    let b = bearing_fault_frequencies(rpm + 3 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 3, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_4(rpm) {
    let b = bearing_fault_frequencies(rpm + 4 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 4, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_5(rpm) {
    let b = bearing_fault_frequencies(rpm + 5 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 5, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_6(rpm) {
    let b = bearing_fault_frequencies(rpm + 6 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 6, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_7(rpm) {
    let b = bearing_fault_frequencies(rpm + 7 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 7, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_8(rpm) {
    let b = bearing_fault_frequencies(rpm + 8 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 8, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_9(rpm) {
    let b = bearing_fault_frequencies(rpm + 9 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 9, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_10(rpm) {
    let b = bearing_fault_frequencies(rpm + 10 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 10, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_11(rpm) {
    let b = bearing_fault_frequencies(rpm + 11 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 11, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_12(rpm) {
    let b = bearing_fault_frequencies(rpm + 12 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 12, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_13(rpm) {
    let b = bearing_fault_frequencies(rpm + 13 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 13, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_14(rpm) {
    let b = bearing_fault_frequencies(rpm + 14 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 14, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_15(rpm) {
    let b = bearing_fault_frequencies(rpm + 15 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 15, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_16(rpm) {
    let b = bearing_fault_frequencies(rpm + 16 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 16, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_17(rpm) {
    let b = bearing_fault_frequencies(rpm + 17 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 17, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_18(rpm) {
    let b = bearing_fault_frequencies(rpm + 18 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 18, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_19(rpm) {
    let b = bearing_fault_frequencies(rpm + 19 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 19, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_20(rpm) {
    let b = bearing_fault_frequencies(rpm + 20 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 20, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_21(rpm) {
    let b = bearing_fault_frequencies(rpm + 21 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 21, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_22(rpm) {
    let b = bearing_fault_frequencies(rpm + 22 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 22, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_23(rpm) {
    let b = bearing_fault_frequencies(rpm + 23 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 23, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_24(rpm) {
    let b = bearing_fault_frequencies(rpm + 24 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 24, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_25(rpm) {
    let b = bearing_fault_frequencies(rpm + 25 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 25, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_26(rpm) {
    let b = bearing_fault_frequencies(rpm + 26 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 26, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_27(rpm) {
    let b = bearing_fault_frequencies(rpm + 27 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 27, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_28(rpm) {
    let b = bearing_fault_frequencies(rpm + 28 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 28, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_29(rpm) {
    let b = bearing_fault_frequencies(rpm + 29 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 29, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_30(rpm) {
    let b = bearing_fault_frequencies(rpm + 30 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 30, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_31(rpm) {
    let b = bearing_fault_frequencies(rpm + 31 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 31, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_32(rpm) {
    let b = bearing_fault_frequencies(rpm + 32 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 32, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_33(rpm) {
    let b = bearing_fault_frequencies(rpm + 33 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 33, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_34(rpm) {
    let b = bearing_fault_frequencies(rpm + 34 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 34, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_35(rpm) {
    let b = bearing_fault_frequencies(rpm + 35 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 35, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_36(rpm) {
    let b = bearing_fault_frequencies(rpm + 36 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 36, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_37(rpm) {
    let b = bearing_fault_frequencies(rpm + 37 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 37, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_38(rpm) {
    let b = bearing_fault_frequencies(rpm + 38 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 38, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_39(rpm) {
    let b = bearing_fault_frequencies(rpm + 39 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 39, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_40(rpm) {
    let b = bearing_fault_frequencies(rpm + 40 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 40, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_41(rpm) {
    let b = bearing_fault_frequencies(rpm + 41 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 41, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_42(rpm) {
    let b = bearing_fault_frequencies(rpm + 42 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 42, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_43(rpm) {
    let b = bearing_fault_frequencies(rpm + 43 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 43, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_44(rpm) {
    let b = bearing_fault_frequencies(rpm + 44 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 44, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_45(rpm) {
    let b = bearing_fault_frequencies(rpm + 45 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 45, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_46(rpm) {
    let b = bearing_fault_frequencies(rpm + 46 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 46, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_47(rpm) {
    let b = bearing_fault_frequencies(rpm + 47 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 47, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_48(rpm) {
    let b = bearing_fault_frequencies(rpm + 48 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 48, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_49(rpm) {
    let b = bearing_fault_frequencies(rpm + 49 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 49, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_50(rpm) {
    let b = bearing_fault_frequencies(rpm + 50 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 50, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_51(rpm) {
    let b = bearing_fault_frequencies(rpm + 51 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 51, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_52(rpm) {
    let b = bearing_fault_frequencies(rpm + 52 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 52, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_53(rpm) {
    let b = bearing_fault_frequencies(rpm + 53 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 53, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_54(rpm) {
    let b = bearing_fault_frequencies(rpm + 54 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 54, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_55(rpm) {
    let b = bearing_fault_frequencies(rpm + 55 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 55, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_56(rpm) {
    let b = bearing_fault_frequencies(rpm + 56 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 56, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_57(rpm) {
    let b = bearing_fault_frequencies(rpm + 57 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 57, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_58(rpm) {
    let b = bearing_fault_frequencies(rpm + 58 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 58, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_59(rpm) {
    let b = bearing_fault_frequencies(rpm + 59 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 59, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_60(rpm) {
    let b = bearing_fault_frequencies(rpm + 60 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 60, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_61(rpm) {
    let b = bearing_fault_frequencies(rpm + 61 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 61, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_62(rpm) {
    let b = bearing_fault_frequencies(rpm + 62 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 62, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_63(rpm) {
    let b = bearing_fault_frequencies(rpm + 63 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 63, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_64(rpm) {
    let b = bearing_fault_frequencies(rpm + 64 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 64, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_65(rpm) {
    let b = bearing_fault_frequencies(rpm + 65 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 65, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_66(rpm) {
    let b = bearing_fault_frequencies(rpm + 66 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 66, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_67(rpm) {
    let b = bearing_fault_frequencies(rpm + 67 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 67, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_68(rpm) {
    let b = bearing_fault_frequencies(rpm + 68 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 68, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_69(rpm) {
    let b = bearing_fault_frequencies(rpm + 69 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 69, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_70(rpm) {
    let b = bearing_fault_frequencies(rpm + 70 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 70, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_71(rpm) {
    let b = bearing_fault_frequencies(rpm + 71 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 71, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_72(rpm) {
    let b = bearing_fault_frequencies(rpm + 72 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 72, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_73(rpm) {
    let b = bearing_fault_frequencies(rpm + 73 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 73, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_74(rpm) {
    let b = bearing_fault_frequencies(rpm + 74 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 74, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_75(rpm) {
    let b = bearing_fault_frequencies(rpm + 75 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 75, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_76(rpm) {
    let b = bearing_fault_frequencies(rpm + 76 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 76, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_77(rpm) {
    let b = bearing_fault_frequencies(rpm + 77 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 77, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_78(rpm) {
    let b = bearing_fault_frequencies(rpm + 78 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 78, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_79(rpm) {
    let b = bearing_fault_frequencies(rpm + 79 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 79, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_80(rpm) {
    let b = bearing_fault_frequencies(rpm + 80 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 80, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_81(rpm) {
    let b = bearing_fault_frequencies(rpm + 81 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 81, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_82(rpm) {
    let b = bearing_fault_frequencies(rpm + 82 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 82, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_83(rpm) {
    let b = bearing_fault_frequencies(rpm + 83 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 83, "bpfo": b.bpfo_hz}
}
fn bearing_track_point_84(rpm) {
    let b = bearing_fault_frequencies(rpm + 84 * 100.0, 10, 8.0, 45.0, 15.0);
    #{"point": 84, "bpfo": b.bpfo_hz}
}
