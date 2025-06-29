// Dual and Triple Redundant Sensor Cross-Check Consistency
// Part of the Ullage Cryogenic Test Executive Suite

fn cross_check_sensors(s_a, s_b, max_delta) {
    (s_a - s_b).abs() <= max_delta
}

fn verify_cross_check() {
    let ok = cross_check_sensors(80.0, 80.8, 1.0);
    if !ok { return false; }
    true
}
if verify_cross_check() { log_info("[DIAG::CROSS_CHECK] Verification passed."); }
fn cross_check_pair_1(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 1 * 0.05);
    #{"pair": 1, "pass": pass}
}
fn cross_check_pair_2(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 2 * 0.05);
    #{"pair": 2, "pass": pass}
}
fn cross_check_pair_3(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 3 * 0.05);
    #{"pair": 3, "pass": pass}
}
fn cross_check_pair_4(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 4 * 0.05);
    #{"pair": 4, "pass": pass}
}
fn cross_check_pair_5(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 5 * 0.05);
    #{"pair": 5, "pass": pass}
}
fn cross_check_pair_6(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 6 * 0.05);
    #{"pair": 6, "pass": pass}
}
fn cross_check_pair_7(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 7 * 0.05);
    #{"pair": 7, "pass": pass}
}
fn cross_check_pair_8(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 8 * 0.05);
    #{"pair": 8, "pass": pass}
}
fn cross_check_pair_9(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 9 * 0.05);
    #{"pair": 9, "pass": pass}
}
fn cross_check_pair_10(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 10 * 0.05);
    #{"pair": 10, "pass": pass}
}
fn cross_check_pair_11(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 11 * 0.05);
    #{"pair": 11, "pass": pass}
}
fn cross_check_pair_12(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 12 * 0.05);
    #{"pair": 12, "pass": pass}
}
fn cross_check_pair_13(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 13 * 0.05);
    #{"pair": 13, "pass": pass}
}
fn cross_check_pair_14(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 14 * 0.05);
    #{"pair": 14, "pass": pass}
}
fn cross_check_pair_15(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 15 * 0.05);
    #{"pair": 15, "pass": pass}
}
fn cross_check_pair_16(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 16 * 0.05);
    #{"pair": 16, "pass": pass}
}
fn cross_check_pair_17(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 17 * 0.05);
    #{"pair": 17, "pass": pass}
}
fn cross_check_pair_18(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 18 * 0.05);
    #{"pair": 18, "pass": pass}
}
fn cross_check_pair_19(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 19 * 0.05);
    #{"pair": 19, "pass": pass}
}
fn cross_check_pair_20(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 20 * 0.05);
    #{"pair": 20, "pass": pass}
}
fn cross_check_pair_21(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 21 * 0.05);
    #{"pair": 21, "pass": pass}
}
fn cross_check_pair_22(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 22 * 0.05);
    #{"pair": 22, "pass": pass}
}
fn cross_check_pair_23(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 23 * 0.05);
    #{"pair": 23, "pass": pass}
}
fn cross_check_pair_24(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 24 * 0.05);
    #{"pair": 24, "pass": pass}
}
fn cross_check_pair_25(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 25 * 0.05);
    #{"pair": 25, "pass": pass}
}
fn cross_check_pair_26(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 26 * 0.05);
    #{"pair": 26, "pass": pass}
}
fn cross_check_pair_27(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 27 * 0.05);
    #{"pair": 27, "pass": pass}
}
fn cross_check_pair_28(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 28 * 0.05);
    #{"pair": 28, "pass": pass}
}
fn cross_check_pair_29(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 29 * 0.05);
    #{"pair": 29, "pass": pass}
}
fn cross_check_pair_30(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 30 * 0.05);
    #{"pair": 30, "pass": pass}
}
fn cross_check_pair_31(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 31 * 0.05);
    #{"pair": 31, "pass": pass}
}
fn cross_check_pair_32(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 32 * 0.05);
    #{"pair": 32, "pass": pass}
}
fn cross_check_pair_33(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 33 * 0.05);
    #{"pair": 33, "pass": pass}
}
fn cross_check_pair_34(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 34 * 0.05);
    #{"pair": 34, "pass": pass}
}
fn cross_check_pair_35(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 35 * 0.05);
    #{"pair": 35, "pass": pass}
}
fn cross_check_pair_36(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 36 * 0.05);
    #{"pair": 36, "pass": pass}
}
fn cross_check_pair_37(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 37 * 0.05);
    #{"pair": 37, "pass": pass}
}
fn cross_check_pair_38(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 38 * 0.05);
    #{"pair": 38, "pass": pass}
}
fn cross_check_pair_39(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 39 * 0.05);
    #{"pair": 39, "pass": pass}
}
fn cross_check_pair_40(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 40 * 0.05);
    #{"pair": 40, "pass": pass}
}
fn cross_check_pair_41(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 41 * 0.05);
    #{"pair": 41, "pass": pass}
}
fn cross_check_pair_42(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 42 * 0.05);
    #{"pair": 42, "pass": pass}
}
fn cross_check_pair_43(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 43 * 0.05);
    #{"pair": 43, "pass": pass}
}
fn cross_check_pair_44(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 44 * 0.05);
    #{"pair": 44, "pass": pass}
}
fn cross_check_pair_45(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 45 * 0.05);
    #{"pair": 45, "pass": pass}
}
fn cross_check_pair_46(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 46 * 0.05);
    #{"pair": 46, "pass": pass}
}
fn cross_check_pair_47(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 47 * 0.05);
    #{"pair": 47, "pass": pass}
}
fn cross_check_pair_48(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 48 * 0.05);
    #{"pair": 48, "pass": pass}
}
fn cross_check_pair_49(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 49 * 0.05);
    #{"pair": 49, "pass": pass}
}
fn cross_check_pair_50(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 50 * 0.05);
    #{"pair": 50, "pass": pass}
}
fn cross_check_pair_51(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 51 * 0.05);
    #{"pair": 51, "pass": pass}
}
fn cross_check_pair_52(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 52 * 0.05);
    #{"pair": 52, "pass": pass}
}
fn cross_check_pair_53(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 53 * 0.05);
    #{"pair": 53, "pass": pass}
}
fn cross_check_pair_54(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 54 * 0.05);
    #{"pair": 54, "pass": pass}
}
fn cross_check_pair_55(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 55 * 0.05);
    #{"pair": 55, "pass": pass}
}
fn cross_check_pair_56(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 56 * 0.05);
    #{"pair": 56, "pass": pass}
}
fn cross_check_pair_57(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 57 * 0.05);
    #{"pair": 57, "pass": pass}
}
fn cross_check_pair_58(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 58 * 0.05);
    #{"pair": 58, "pass": pass}
}
fn cross_check_pair_59(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 59 * 0.05);
    #{"pair": 59, "pass": pass}
}
fn cross_check_pair_60(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 60 * 0.05);
    #{"pair": 60, "pass": pass}
}
fn cross_check_pair_61(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 61 * 0.05);
    #{"pair": 61, "pass": pass}
}
fn cross_check_pair_62(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 62 * 0.05);
    #{"pair": 62, "pass": pass}
}
fn cross_check_pair_63(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 63 * 0.05);
    #{"pair": 63, "pass": pass}
}
fn cross_check_pair_64(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 64 * 0.05);
    #{"pair": 64, "pass": pass}
}
fn cross_check_pair_65(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 65 * 0.05);
    #{"pair": 65, "pass": pass}
}
fn cross_check_pair_66(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 66 * 0.05);
    #{"pair": 66, "pass": pass}
}
fn cross_check_pair_67(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 67 * 0.05);
    #{"pair": 67, "pass": pass}
}
fn cross_check_pair_68(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 68 * 0.05);
    #{"pair": 68, "pass": pass}
}
fn cross_check_pair_69(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 69 * 0.05);
    #{"pair": 69, "pass": pass}
}
fn cross_check_pair_70(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 70 * 0.05);
    #{"pair": 70, "pass": pass}
}
fn cross_check_pair_71(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 71 * 0.05);
    #{"pair": 71, "pass": pass}
}
fn cross_check_pair_72(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 72 * 0.05);
    #{"pair": 72, "pass": pass}
}
fn cross_check_pair_73(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 73 * 0.05);
    #{"pair": 73, "pass": pass}
}
fn cross_check_pair_74(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 74 * 0.05);
    #{"pair": 74, "pass": pass}
}
fn cross_check_pair_75(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 75 * 0.05);
    #{"pair": 75, "pass": pass}
}
fn cross_check_pair_76(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 76 * 0.05);
    #{"pair": 76, "pass": pass}
}
fn cross_check_pair_77(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 77 * 0.05);
    #{"pair": 77, "pass": pass}
}
fn cross_check_pair_78(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 78 * 0.05);
    #{"pair": 78, "pass": pass}
}
fn cross_check_pair_79(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 79 * 0.05);
    #{"pair": 79, "pass": pass}
}
fn cross_check_pair_80(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 80 * 0.05);
    #{"pair": 80, "pass": pass}
}
fn cross_check_pair_81(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 81 * 0.05);
    #{"pair": 81, "pass": pass}
}
fn cross_check_pair_82(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 82 * 0.05);
    #{"pair": 82, "pass": pass}
}
fn cross_check_pair_83(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 83 * 0.05);
    #{"pair": 83, "pass": pass}
}
fn cross_check_pair_84(a, b) {
    let pass = cross_check_sensors(a, b, 1.0 + 84 * 0.05);
    #{"pair": 84, "pass": pass}
}
