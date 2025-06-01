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
