// Torch Igniter Pre-Fire Qualification and Flame Sensor Verification
// Part of the Ullage Cryogenic Test Executive Suite

fn qualify_igniter(flame_mv, pc_rise_bar, min_mv, min_rise_bar) {
    flame_mv >= min_mv && pc_rise_bar >= min_rise_bar
}

fn verify_igniter_test() {
    let ok = qualify_igniter(280.0, 4.2, 200.0, 3.0);
    if !ok { return false; }
    true
}
if verify_igniter_test() { log_info("[SEQUENCES::IGNITER_TEST] Verification passed."); }
fn igniter_sensor_channel_1(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 1 * 1.0, 3.0);
    #{"channel": 1, "pass": pass}
}
fn igniter_sensor_channel_2(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 2 * 1.0, 3.0);
    #{"channel": 2, "pass": pass}
}
fn igniter_sensor_channel_3(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 3 * 1.0, 3.0);
    #{"channel": 3, "pass": pass}
}
fn igniter_sensor_channel_4(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 4 * 1.0, 3.0);
    #{"channel": 4, "pass": pass}
}
fn igniter_sensor_channel_5(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 5 * 1.0, 3.0);
    #{"channel": 5, "pass": pass}
}
fn igniter_sensor_channel_6(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 6 * 1.0, 3.0);
    #{"channel": 6, "pass": pass}
}
fn igniter_sensor_channel_7(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 7 * 1.0, 3.0);
    #{"channel": 7, "pass": pass}
}
fn igniter_sensor_channel_8(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 8 * 1.0, 3.0);
    #{"channel": 8, "pass": pass}
}
fn igniter_sensor_channel_9(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 9 * 1.0, 3.0);
    #{"channel": 9, "pass": pass}
}
fn igniter_sensor_channel_10(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 10 * 1.0, 3.0);
    #{"channel": 10, "pass": pass}
}
fn igniter_sensor_channel_11(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 11 * 1.0, 3.0);
    #{"channel": 11, "pass": pass}
}
fn igniter_sensor_channel_12(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 12 * 1.0, 3.0);
    #{"channel": 12, "pass": pass}
}
fn igniter_sensor_channel_13(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 13 * 1.0, 3.0);
    #{"channel": 13, "pass": pass}
}
fn igniter_sensor_channel_14(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 14 * 1.0, 3.0);
    #{"channel": 14, "pass": pass}
}
fn igniter_sensor_channel_15(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 15 * 1.0, 3.0);
    #{"channel": 15, "pass": pass}
}
fn igniter_sensor_channel_16(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 16 * 1.0, 3.0);
    #{"channel": 16, "pass": pass}
}
fn igniter_sensor_channel_17(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 17 * 1.0, 3.0);
    #{"channel": 17, "pass": pass}
}
fn igniter_sensor_channel_18(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 18 * 1.0, 3.0);
    #{"channel": 18, "pass": pass}
}
fn igniter_sensor_channel_19(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 19 * 1.0, 3.0);
    #{"channel": 19, "pass": pass}
}
fn igniter_sensor_channel_20(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 20 * 1.0, 3.0);
    #{"channel": 20, "pass": pass}
}
fn igniter_sensor_channel_21(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 21 * 1.0, 3.0);
    #{"channel": 21, "pass": pass}
}
fn igniter_sensor_channel_22(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 22 * 1.0, 3.0);
    #{"channel": 22, "pass": pass}
}
fn igniter_sensor_channel_23(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 23 * 1.0, 3.0);
    #{"channel": 23, "pass": pass}
}
fn igniter_sensor_channel_24(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 24 * 1.0, 3.0);
    #{"channel": 24, "pass": pass}
}
fn igniter_sensor_channel_25(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 25 * 1.0, 3.0);
    #{"channel": 25, "pass": pass}
}
fn igniter_sensor_channel_26(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 26 * 1.0, 3.0);
    #{"channel": 26, "pass": pass}
}
fn igniter_sensor_channel_27(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 27 * 1.0, 3.0);
    #{"channel": 27, "pass": pass}
}
fn igniter_sensor_channel_28(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 28 * 1.0, 3.0);
    #{"channel": 28, "pass": pass}
}
fn igniter_sensor_channel_29(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 29 * 1.0, 3.0);
    #{"channel": 29, "pass": pass}
}
fn igniter_sensor_channel_30(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 30 * 1.0, 3.0);
    #{"channel": 30, "pass": pass}
}
fn igniter_sensor_channel_31(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 31 * 1.0, 3.0);
    #{"channel": 31, "pass": pass}
}
fn igniter_sensor_channel_32(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 32 * 1.0, 3.0);
    #{"channel": 32, "pass": pass}
}
fn igniter_sensor_channel_33(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 33 * 1.0, 3.0);
    #{"channel": 33, "pass": pass}
}
fn igniter_sensor_channel_34(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 34 * 1.0, 3.0);
    #{"channel": 34, "pass": pass}
}
fn igniter_sensor_channel_35(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 35 * 1.0, 3.0);
    #{"channel": 35, "pass": pass}
}
fn igniter_sensor_channel_36(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 36 * 1.0, 3.0);
    #{"channel": 36, "pass": pass}
}
fn igniter_sensor_channel_37(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 37 * 1.0, 3.0);
    #{"channel": 37, "pass": pass}
}
fn igniter_sensor_channel_38(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 38 * 1.0, 3.0);
    #{"channel": 38, "pass": pass}
}
fn igniter_sensor_channel_39(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 39 * 1.0, 3.0);
    #{"channel": 39, "pass": pass}
}
fn igniter_sensor_channel_40(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 40 * 1.0, 3.0);
    #{"channel": 40, "pass": pass}
}
fn igniter_sensor_channel_41(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 41 * 1.0, 3.0);
    #{"channel": 41, "pass": pass}
}
fn igniter_sensor_channel_42(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 42 * 1.0, 3.0);
    #{"channel": 42, "pass": pass}
}
fn igniter_sensor_channel_43(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 43 * 1.0, 3.0);
    #{"channel": 43, "pass": pass}
}
fn igniter_sensor_channel_44(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 44 * 1.0, 3.0);
    #{"channel": 44, "pass": pass}
}
fn igniter_sensor_channel_45(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 45 * 1.0, 3.0);
    #{"channel": 45, "pass": pass}
}
fn igniter_sensor_channel_46(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 46 * 1.0, 3.0);
    #{"channel": 46, "pass": pass}
}
fn igniter_sensor_channel_47(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 47 * 1.0, 3.0);
    #{"channel": 47, "pass": pass}
}
fn igniter_sensor_channel_48(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 48 * 1.0, 3.0);
    #{"channel": 48, "pass": pass}
}
fn igniter_sensor_channel_49(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 49 * 1.0, 3.0);
    #{"channel": 49, "pass": pass}
}
fn igniter_sensor_channel_50(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 50 * 1.0, 3.0);
    #{"channel": 50, "pass": pass}
}
fn igniter_sensor_channel_51(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 51 * 1.0, 3.0);
    #{"channel": 51, "pass": pass}
}
fn igniter_sensor_channel_52(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 52 * 1.0, 3.0);
    #{"channel": 52, "pass": pass}
}
fn igniter_sensor_channel_53(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 53 * 1.0, 3.0);
    #{"channel": 53, "pass": pass}
}
fn igniter_sensor_channel_54(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 54 * 1.0, 3.0);
    #{"channel": 54, "pass": pass}
}
fn igniter_sensor_channel_55(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 55 * 1.0, 3.0);
    #{"channel": 55, "pass": pass}
}
fn igniter_sensor_channel_56(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 56 * 1.0, 3.0);
    #{"channel": 56, "pass": pass}
}
fn igniter_sensor_channel_57(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 57 * 1.0, 3.0);
    #{"channel": 57, "pass": pass}
}
fn igniter_sensor_channel_58(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 58 * 1.0, 3.0);
    #{"channel": 58, "pass": pass}
}
fn igniter_sensor_channel_59(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 59 * 1.0, 3.0);
    #{"channel": 59, "pass": pass}
}
fn igniter_sensor_channel_60(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 60 * 1.0, 3.0);
    #{"channel": 60, "pass": pass}
}
fn igniter_sensor_channel_61(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 61 * 1.0, 3.0);
    #{"channel": 61, "pass": pass}
}
fn igniter_sensor_channel_62(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 62 * 1.0, 3.0);
    #{"channel": 62, "pass": pass}
}
fn igniter_sensor_channel_63(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 63 * 1.0, 3.0);
    #{"channel": 63, "pass": pass}
}
fn igniter_sensor_channel_64(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 64 * 1.0, 3.0);
    #{"channel": 64, "pass": pass}
}
fn igniter_sensor_channel_65(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 65 * 1.0, 3.0);
    #{"channel": 65, "pass": pass}
}
fn igniter_sensor_channel_66(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 66 * 1.0, 3.0);
    #{"channel": 66, "pass": pass}
}
fn igniter_sensor_channel_67(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 67 * 1.0, 3.0);
    #{"channel": 67, "pass": pass}
}
fn igniter_sensor_channel_68(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 68 * 1.0, 3.0);
    #{"channel": 68, "pass": pass}
}
fn igniter_sensor_channel_69(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 69 * 1.0, 3.0);
    #{"channel": 69, "pass": pass}
}
fn igniter_sensor_channel_70(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 70 * 1.0, 3.0);
    #{"channel": 70, "pass": pass}
}
fn igniter_sensor_channel_71(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 71 * 1.0, 3.0);
    #{"channel": 71, "pass": pass}
}
fn igniter_sensor_channel_72(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 72 * 1.0, 3.0);
    #{"channel": 72, "pass": pass}
}
fn igniter_sensor_channel_73(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 73 * 1.0, 3.0);
    #{"channel": 73, "pass": pass}
}
fn igniter_sensor_channel_74(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 74 * 1.0, 3.0);
    #{"channel": 74, "pass": pass}
}
fn igniter_sensor_channel_75(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 75 * 1.0, 3.0);
    #{"channel": 75, "pass": pass}
}
fn igniter_sensor_channel_76(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 76 * 1.0, 3.0);
    #{"channel": 76, "pass": pass}
}
fn igniter_sensor_channel_77(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 77 * 1.0, 3.0);
    #{"channel": 77, "pass": pass}
}
fn igniter_sensor_channel_78(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 78 * 1.0, 3.0);
    #{"channel": 78, "pass": pass}
}
fn igniter_sensor_channel_79(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 79 * 1.0, 3.0);
    #{"channel": 79, "pass": pass}
}
fn igniter_sensor_channel_80(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 80 * 1.0, 3.0);
    #{"channel": 80, "pass": pass}
}
fn igniter_sensor_channel_81(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 81 * 1.0, 3.0);
    #{"channel": 81, "pass": pass}
}
fn igniter_sensor_channel_82(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 82 * 1.0, 3.0);
    #{"channel": 82, "pass": pass}
}
fn igniter_sensor_channel_83(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 83 * 1.0, 3.0);
    #{"channel": 83, "pass": pass}
}
fn igniter_sensor_channel_84(mv) {
    let pass = qualify_igniter(mv, 4.0, 200.0 + 84 * 1.0, 3.0);
    #{"channel": 84, "pass": pass}
}
