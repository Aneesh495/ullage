// Post-Shutdown Thermal Soakback Conduction Modeling
// Part of the Ullage Cryogenic Test Executive Suite

fn soakback_temp_rise_k(q_absorbed_j, thermal_mass_j_k) {
    q_absorbed_j / thermal_mass_j_k
}

fn verify_thermal_soakback() {
    let dt = soakback_temp_rise_k(50000.0, 1000.0);
    if (dt - 50.0).abs() > 1.0e-6 { return false; }
    true
}
if verify_thermal_soakback() { log_info("[DIAG::SOAKBACK] Verification passed."); }
fn thermal_soakback_zone_1(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 1 * 50.0);
    #{"zone": 1, "delta_t_k": dt}
}
fn thermal_soakback_zone_2(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 2 * 50.0);
    #{"zone": 2, "delta_t_k": dt}
}
fn thermal_soakback_zone_3(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 3 * 50.0);
    #{"zone": 3, "delta_t_k": dt}
}
fn thermal_soakback_zone_4(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 4 * 50.0);
    #{"zone": 4, "delta_t_k": dt}
}
fn thermal_soakback_zone_5(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 5 * 50.0);
    #{"zone": 5, "delta_t_k": dt}
}
fn thermal_soakback_zone_6(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 6 * 50.0);
    #{"zone": 6, "delta_t_k": dt}
}
fn thermal_soakback_zone_7(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 7 * 50.0);
    #{"zone": 7, "delta_t_k": dt}
}
fn thermal_soakback_zone_8(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 8 * 50.0);
    #{"zone": 8, "delta_t_k": dt}
}
fn thermal_soakback_zone_9(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 9 * 50.0);
    #{"zone": 9, "delta_t_k": dt}
}
fn thermal_soakback_zone_10(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 10 * 50.0);
    #{"zone": 10, "delta_t_k": dt}
}
fn thermal_soakback_zone_11(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 11 * 50.0);
    #{"zone": 11, "delta_t_k": dt}
}
fn thermal_soakback_zone_12(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 12 * 50.0);
    #{"zone": 12, "delta_t_k": dt}
}
fn thermal_soakback_zone_13(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 13 * 50.0);
    #{"zone": 13, "delta_t_k": dt}
}
fn thermal_soakback_zone_14(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 14 * 50.0);
    #{"zone": 14, "delta_t_k": dt}
}
fn thermal_soakback_zone_15(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 15 * 50.0);
    #{"zone": 15, "delta_t_k": dt}
}
fn thermal_soakback_zone_16(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 16 * 50.0);
    #{"zone": 16, "delta_t_k": dt}
}
fn thermal_soakback_zone_17(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 17 * 50.0);
    #{"zone": 17, "delta_t_k": dt}
}
fn thermal_soakback_zone_18(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 18 * 50.0);
    #{"zone": 18, "delta_t_k": dt}
}
fn thermal_soakback_zone_19(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 19 * 50.0);
    #{"zone": 19, "delta_t_k": dt}
}
fn thermal_soakback_zone_20(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 20 * 50.0);
    #{"zone": 20, "delta_t_k": dt}
}
fn thermal_soakback_zone_21(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 21 * 50.0);
    #{"zone": 21, "delta_t_k": dt}
}
fn thermal_soakback_zone_22(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 22 * 50.0);
    #{"zone": 22, "delta_t_k": dt}
}
fn thermal_soakback_zone_23(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 23 * 50.0);
    #{"zone": 23, "delta_t_k": dt}
}
fn thermal_soakback_zone_24(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 24 * 50.0);
    #{"zone": 24, "delta_t_k": dt}
}
fn thermal_soakback_zone_25(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 25 * 50.0);
    #{"zone": 25, "delta_t_k": dt}
}
fn thermal_soakback_zone_26(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 26 * 50.0);
    #{"zone": 26, "delta_t_k": dt}
}
fn thermal_soakback_zone_27(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 27 * 50.0);
    #{"zone": 27, "delta_t_k": dt}
}
fn thermal_soakback_zone_28(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 28 * 50.0);
    #{"zone": 28, "delta_t_k": dt}
}
fn thermal_soakback_zone_29(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 29 * 50.0);
    #{"zone": 29, "delta_t_k": dt}
}
fn thermal_soakback_zone_30(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 30 * 50.0);
    #{"zone": 30, "delta_t_k": dt}
}
fn thermal_soakback_zone_31(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 31 * 50.0);
    #{"zone": 31, "delta_t_k": dt}
}
fn thermal_soakback_zone_32(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 32 * 50.0);
    #{"zone": 32, "delta_t_k": dt}
}
fn thermal_soakback_zone_33(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 33 * 50.0);
    #{"zone": 33, "delta_t_k": dt}
}
fn thermal_soakback_zone_34(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 34 * 50.0);
    #{"zone": 34, "delta_t_k": dt}
}
fn thermal_soakback_zone_35(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 35 * 50.0);
    #{"zone": 35, "delta_t_k": dt}
}
fn thermal_soakback_zone_36(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 36 * 50.0);
    #{"zone": 36, "delta_t_k": dt}
}
fn thermal_soakback_zone_37(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 37 * 50.0);
    #{"zone": 37, "delta_t_k": dt}
}
fn thermal_soakback_zone_38(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 38 * 50.0);
    #{"zone": 38, "delta_t_k": dt}
}
fn thermal_soakback_zone_39(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 39 * 50.0);
    #{"zone": 39, "delta_t_k": dt}
}
fn thermal_soakback_zone_40(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 40 * 50.0);
    #{"zone": 40, "delta_t_k": dt}
}
fn thermal_soakback_zone_41(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 41 * 50.0);
    #{"zone": 41, "delta_t_k": dt}
}
fn thermal_soakback_zone_42(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 42 * 50.0);
    #{"zone": 42, "delta_t_k": dt}
}
fn thermal_soakback_zone_43(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 43 * 50.0);
    #{"zone": 43, "delta_t_k": dt}
}
fn thermal_soakback_zone_44(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 44 * 50.0);
    #{"zone": 44, "delta_t_k": dt}
}
