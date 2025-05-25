// Automated High-Pressure Helium Leak Check and Decay Rate Analysis
// Part of the Ullage Cryogenic Test Executive Suite

fn evaluate_pressure_decay(p_start_bar, p_end_bar, duration_sec, max_rate_bar_per_min) {
    let decay_bar = (p_start_bar - p_end_bar).max(0.0);
    let rate = (decay_bar / duration_sec) * 60.0;
    #{ "decay_bar": decay_bar, "rate_bar_per_min": rate, "pass": rate <= max_rate_bar_per_min }
}

fn verify_leak_check() {
    let res = evaluate_pressure_decay(50.0, 49.95, 60.0, 0.1);
    if !res.pass { return false; }
    true
}
if verify_leak_check() { log_info("[SEQUENCES::LEAK_CHECK] Verification passed."); }
fn leak_check_station_1(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 1 * 0.005);
    #{"station": 1, "pass": r.pass}
}
fn leak_check_station_2(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 2 * 0.005);
    #{"station": 2, "pass": r.pass}
}
fn leak_check_station_3(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 3 * 0.005);
    #{"station": 3, "pass": r.pass}
}
fn leak_check_station_4(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 4 * 0.005);
    #{"station": 4, "pass": r.pass}
}
fn leak_check_station_5(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 5 * 0.005);
    #{"station": 5, "pass": r.pass}
}
fn leak_check_station_6(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 6 * 0.005);
    #{"station": 6, "pass": r.pass}
}
fn leak_check_station_7(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 7 * 0.005);
    #{"station": 7, "pass": r.pass}
}
fn leak_check_station_8(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 8 * 0.005);
    #{"station": 8, "pass": r.pass}
}
fn leak_check_station_9(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 9 * 0.005);
    #{"station": 9, "pass": r.pass}
}
fn leak_check_station_10(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 10 * 0.005);
    #{"station": 10, "pass": r.pass}
}
fn leak_check_station_11(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 11 * 0.005);
    #{"station": 11, "pass": r.pass}
}
fn leak_check_station_12(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 12 * 0.005);
    #{"station": 12, "pass": r.pass}
}
fn leak_check_station_13(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 13 * 0.005);
    #{"station": 13, "pass": r.pass}
}
fn leak_check_station_14(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 14 * 0.005);
    #{"station": 14, "pass": r.pass}
}
fn leak_check_station_15(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 15 * 0.005);
    #{"station": 15, "pass": r.pass}
}
fn leak_check_station_16(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 16 * 0.005);
    #{"station": 16, "pass": r.pass}
}
fn leak_check_station_17(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 17 * 0.005);
    #{"station": 17, "pass": r.pass}
}
fn leak_check_station_18(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 18 * 0.005);
    #{"station": 18, "pass": r.pass}
}
fn leak_check_station_19(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 19 * 0.005);
    #{"station": 19, "pass": r.pass}
}
fn leak_check_station_20(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 20 * 0.005);
    #{"station": 20, "pass": r.pass}
}
fn leak_check_station_21(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 21 * 0.005);
    #{"station": 21, "pass": r.pass}
}
fn leak_check_station_22(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 22 * 0.005);
    #{"station": 22, "pass": r.pass}
}
fn leak_check_station_23(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 23 * 0.005);
    #{"station": 23, "pass": r.pass}
}
fn leak_check_station_24(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 24 * 0.005);
    #{"station": 24, "pass": r.pass}
}
fn leak_check_station_25(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 25 * 0.005);
    #{"station": 25, "pass": r.pass}
}
fn leak_check_station_26(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 26 * 0.005);
    #{"station": 26, "pass": r.pass}
}
fn leak_check_station_27(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 27 * 0.005);
    #{"station": 27, "pass": r.pass}
}
fn leak_check_station_28(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 28 * 0.005);
    #{"station": 28, "pass": r.pass}
}
fn leak_check_station_29(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 29 * 0.005);
    #{"station": 29, "pass": r.pass}
}
fn leak_check_station_30(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 30 * 0.005);
    #{"station": 30, "pass": r.pass}
}
fn leak_check_station_31(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 31 * 0.005);
    #{"station": 31, "pass": r.pass}
}
fn leak_check_station_32(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 32 * 0.005);
    #{"station": 32, "pass": r.pass}
}
fn leak_check_station_33(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 33 * 0.005);
    #{"station": 33, "pass": r.pass}
}
fn leak_check_station_34(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 34 * 0.005);
    #{"station": 34, "pass": r.pass}
}
fn leak_check_station_35(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 35 * 0.005);
    #{"station": 35, "pass": r.pass}
}
fn leak_check_station_36(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 36 * 0.005);
    #{"station": 36, "pass": r.pass}
}
fn leak_check_station_37(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 37 * 0.005);
    #{"station": 37, "pass": r.pass}
}
fn leak_check_station_38(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 38 * 0.005);
    #{"station": 38, "pass": r.pass}
}
fn leak_check_station_39(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 39 * 0.005);
    #{"station": 39, "pass": r.pass}
}
fn leak_check_station_40(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 40 * 0.005);
    #{"station": 40, "pass": r.pass}
}
fn leak_check_station_41(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 41 * 0.005);
    #{"station": 41, "pass": r.pass}
}
fn leak_check_station_42(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 42 * 0.005);
    #{"station": 42, "pass": r.pass}
}
fn leak_check_station_43(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 43 * 0.005);
    #{"station": 43, "pass": r.pass}
}
fn leak_check_station_44(p0, p1) {
    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + 44 * 0.005);
    #{"station": 44, "pass": r.pass}
}
