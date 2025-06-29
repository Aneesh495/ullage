// Cryogenic Turbopump Chilldown and Housing Temperature Descent
// Two-phase boiling plateau detection and subcooled verification

fn is_chilldown_qualified(temp_lox_pump_k, temp_fuel_pump_k, lox_target_k, fuel_target_k) {
    temp_lox_pump_k <= lox_target_k && temp_fuel_pump_k <= fuel_target_k
}

fn verify_chilldown() {
    let qual = is_chilldown_qualified(88.0, 108.0, 92.0, 112.0);
    if !qual { return false; }
    true
}
if verify_chilldown() { log_info("[SEQUENCES::CHILLDOWN] Verification passed."); }
fn chilldown_temperature_sensor_1(t_raw) {
    let t_cal = t_raw * 0.995 - 1 * 0.02;
    #{"sensor": 1, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_2(t_raw) {
    let t_cal = t_raw * 0.995 - 2 * 0.02;
    #{"sensor": 2, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_3(t_raw) {
    let t_cal = t_raw * 0.995 - 3 * 0.02;
    #{"sensor": 3, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_4(t_raw) {
    let t_cal = t_raw * 0.995 - 4 * 0.02;
    #{"sensor": 4, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_5(t_raw) {
    let t_cal = t_raw * 0.995 - 5 * 0.02;
    #{"sensor": 5, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_6(t_raw) {
    let t_cal = t_raw * 0.995 - 6 * 0.02;
    #{"sensor": 6, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_7(t_raw) {
    let t_cal = t_raw * 0.995 - 7 * 0.02;
    #{"sensor": 7, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_8(t_raw) {
    let t_cal = t_raw * 0.995 - 8 * 0.02;
    #{"sensor": 8, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_9(t_raw) {
    let t_cal = t_raw * 0.995 - 9 * 0.02;
    #{"sensor": 9, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_10(t_raw) {
    let t_cal = t_raw * 0.995 - 10 * 0.02;
    #{"sensor": 10, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_11(t_raw) {
    let t_cal = t_raw * 0.995 - 11 * 0.02;
    #{"sensor": 11, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_12(t_raw) {
    let t_cal = t_raw * 0.995 - 12 * 0.02;
    #{"sensor": 12, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_13(t_raw) {
    let t_cal = t_raw * 0.995 - 13 * 0.02;
    #{"sensor": 13, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_14(t_raw) {
    let t_cal = t_raw * 0.995 - 14 * 0.02;
    #{"sensor": 14, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_15(t_raw) {
    let t_cal = t_raw * 0.995 - 15 * 0.02;
    #{"sensor": 15, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_16(t_raw) {
    let t_cal = t_raw * 0.995 - 16 * 0.02;
    #{"sensor": 16, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_17(t_raw) {
    let t_cal = t_raw * 0.995 - 17 * 0.02;
    #{"sensor": 17, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_18(t_raw) {
    let t_cal = t_raw * 0.995 - 18 * 0.02;
    #{"sensor": 18, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_19(t_raw) {
    let t_cal = t_raw * 0.995 - 19 * 0.02;
    #{"sensor": 19, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_20(t_raw) {
    let t_cal = t_raw * 0.995 - 20 * 0.02;
    #{"sensor": 20, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_21(t_raw) {
    let t_cal = t_raw * 0.995 - 21 * 0.02;
    #{"sensor": 21, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_22(t_raw) {
    let t_cal = t_raw * 0.995 - 22 * 0.02;
    #{"sensor": 22, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_23(t_raw) {
    let t_cal = t_raw * 0.995 - 23 * 0.02;
    #{"sensor": 23, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_24(t_raw) {
    let t_cal = t_raw * 0.995 - 24 * 0.02;
    #{"sensor": 24, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_25(t_raw) {
    let t_cal = t_raw * 0.995 - 25 * 0.02;
    #{"sensor": 25, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_26(t_raw) {
    let t_cal = t_raw * 0.995 - 26 * 0.02;
    #{"sensor": 26, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_27(t_raw) {
    let t_cal = t_raw * 0.995 - 27 * 0.02;
    #{"sensor": 27, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_28(t_raw) {
    let t_cal = t_raw * 0.995 - 28 * 0.02;
    #{"sensor": 28, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_29(t_raw) {
    let t_cal = t_raw * 0.995 - 29 * 0.02;
    #{"sensor": 29, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_30(t_raw) {
    let t_cal = t_raw * 0.995 - 30 * 0.02;
    #{"sensor": 30, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_31(t_raw) {
    let t_cal = t_raw * 0.995 - 31 * 0.02;
    #{"sensor": 31, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_32(t_raw) {
    let t_cal = t_raw * 0.995 - 32 * 0.02;
    #{"sensor": 32, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_33(t_raw) {
    let t_cal = t_raw * 0.995 - 33 * 0.02;
    #{"sensor": 33, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_34(t_raw) {
    let t_cal = t_raw * 0.995 - 34 * 0.02;
    #{"sensor": 34, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_35(t_raw) {
    let t_cal = t_raw * 0.995 - 35 * 0.02;
    #{"sensor": 35, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_36(t_raw) {
    let t_cal = t_raw * 0.995 - 36 * 0.02;
    #{"sensor": 36, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_37(t_raw) {
    let t_cal = t_raw * 0.995 - 37 * 0.02;
    #{"sensor": 37, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_38(t_raw) {
    let t_cal = t_raw * 0.995 - 38 * 0.02;
    #{"sensor": 38, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_39(t_raw) {
    let t_cal = t_raw * 0.995 - 39 * 0.02;
    #{"sensor": 39, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_40(t_raw) {
    let t_cal = t_raw * 0.995 - 40 * 0.02;
    #{"sensor": 40, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_41(t_raw) {
    let t_cal = t_raw * 0.995 - 41 * 0.02;
    #{"sensor": 41, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_42(t_raw) {
    let t_cal = t_raw * 0.995 - 42 * 0.02;
    #{"sensor": 42, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_43(t_raw) {
    let t_cal = t_raw * 0.995 - 43 * 0.02;
    #{"sensor": 43, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_44(t_raw) {
    let t_cal = t_raw * 0.995 - 44 * 0.02;
    #{"sensor": 44, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_45(t_raw) {
    let t_cal = t_raw * 0.995 - 45 * 0.02;
    #{"sensor": 45, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_46(t_raw) {
    let t_cal = t_raw * 0.995 - 46 * 0.02;
    #{"sensor": 46, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_47(t_raw) {
    let t_cal = t_raw * 0.995 - 47 * 0.02;
    #{"sensor": 47, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_48(t_raw) {
    let t_cal = t_raw * 0.995 - 48 * 0.02;
    #{"sensor": 48, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_49(t_raw) {
    let t_cal = t_raw * 0.995 - 49 * 0.02;
    #{"sensor": 49, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_50(t_raw) {
    let t_cal = t_raw * 0.995 - 50 * 0.02;
    #{"sensor": 50, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_51(t_raw) {
    let t_cal = t_raw * 0.995 - 51 * 0.02;
    #{"sensor": 51, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_52(t_raw) {
    let t_cal = t_raw * 0.995 - 52 * 0.02;
    #{"sensor": 52, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_53(t_raw) {
    let t_cal = t_raw * 0.995 - 53 * 0.02;
    #{"sensor": 53, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_54(t_raw) {
    let t_cal = t_raw * 0.995 - 54 * 0.02;
    #{"sensor": 54, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_55(t_raw) {
    let t_cal = t_raw * 0.995 - 55 * 0.02;
    #{"sensor": 55, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_56(t_raw) {
    let t_cal = t_raw * 0.995 - 56 * 0.02;
    #{"sensor": 56, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_57(t_raw) {
    let t_cal = t_raw * 0.995 - 57 * 0.02;
    #{"sensor": 57, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_58(t_raw) {
    let t_cal = t_raw * 0.995 - 58 * 0.02;
    #{"sensor": 58, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_59(t_raw) {
    let t_cal = t_raw * 0.995 - 59 * 0.02;
    #{"sensor": 59, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_60(t_raw) {
    let t_cal = t_raw * 0.995 - 60 * 0.02;
    #{"sensor": 60, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_61(t_raw) {
    let t_cal = t_raw * 0.995 - 61 * 0.02;
    #{"sensor": 61, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_62(t_raw) {
    let t_cal = t_raw * 0.995 - 62 * 0.02;
    #{"sensor": 62, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_63(t_raw) {
    let t_cal = t_raw * 0.995 - 63 * 0.02;
    #{"sensor": 63, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_64(t_raw) {
    let t_cal = t_raw * 0.995 - 64 * 0.02;
    #{"sensor": 64, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_65(t_raw) {
    let t_cal = t_raw * 0.995 - 65 * 0.02;
    #{"sensor": 65, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_66(t_raw) {
    let t_cal = t_raw * 0.995 - 66 * 0.02;
    #{"sensor": 66, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_67(t_raw) {
    let t_cal = t_raw * 0.995 - 67 * 0.02;
    #{"sensor": 67, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_68(t_raw) {
    let t_cal = t_raw * 0.995 - 68 * 0.02;
    #{"sensor": 68, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_69(t_raw) {
    let t_cal = t_raw * 0.995 - 69 * 0.02;
    #{"sensor": 69, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_70(t_raw) {
    let t_cal = t_raw * 0.995 - 70 * 0.02;
    #{"sensor": 70, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_71(t_raw) {
    let t_cal = t_raw * 0.995 - 71 * 0.02;
    #{"sensor": 71, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_72(t_raw) {
    let t_cal = t_raw * 0.995 - 72 * 0.02;
    #{"sensor": 72, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_73(t_raw) {
    let t_cal = t_raw * 0.995 - 73 * 0.02;
    #{"sensor": 73, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_74(t_raw) {
    let t_cal = t_raw * 0.995 - 74 * 0.02;
    #{"sensor": 74, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_75(t_raw) {
    let t_cal = t_raw * 0.995 - 75 * 0.02;
    #{"sensor": 75, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_76(t_raw) {
    let t_cal = t_raw * 0.995 - 76 * 0.02;
    #{"sensor": 76, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_77(t_raw) {
    let t_cal = t_raw * 0.995 - 77 * 0.02;
    #{"sensor": 77, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_78(t_raw) {
    let t_cal = t_raw * 0.995 - 78 * 0.02;
    #{"sensor": 78, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_79(t_raw) {
    let t_cal = t_raw * 0.995 - 79 * 0.02;
    #{"sensor": 79, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_80(t_raw) {
    let t_cal = t_raw * 0.995 - 80 * 0.02;
    #{"sensor": 80, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_81(t_raw) {
    let t_cal = t_raw * 0.995 - 81 * 0.02;
    #{"sensor": 81, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_82(t_raw) {
    let t_cal = t_raw * 0.995 - 82 * 0.02;
    #{"sensor": 82, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_83(t_raw) {
    let t_cal = t_raw * 0.995 - 83 * 0.02;
    #{"sensor": 83, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
fn chilldown_temperature_sensor_84(t_raw) {
    let t_cal = t_raw * 0.995 - 84 * 0.02;
    #{"sensor": 84, "temp_k": t_cal, "chilled": t_cal < 95.0}
}
