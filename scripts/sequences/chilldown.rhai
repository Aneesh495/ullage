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
