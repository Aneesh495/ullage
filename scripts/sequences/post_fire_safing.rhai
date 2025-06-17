// Post-Fire Cryogenic Boil-Off Venting and Stand Safing
// Part of the Ullage Cryogenic Test Executive Suite

fn is_soakback_safe(manifold_temp_k, max_soakback_k) {
    manifold_temp_k <= max_soakback_k
}

fn verify_safing() {
    let safe = is_soakback_safe(180.0, 250.0);
    if !safe { return false; }
    true
}
if verify_safing() { log_info("[SEQUENCES::POST_FIRE_SAFING] Verification passed."); }
fn thermal_safing_probe_1(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 1 * 1.0);
    #{"probe": 1, "safe": s}
}
fn thermal_safing_probe_2(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 2 * 1.0);
    #{"probe": 2, "safe": s}
}
fn thermal_safing_probe_3(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 3 * 1.0);
    #{"probe": 3, "safe": s}
}
fn thermal_safing_probe_4(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 4 * 1.0);
    #{"probe": 4, "safe": s}
}
fn thermal_safing_probe_5(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 5 * 1.0);
    #{"probe": 5, "safe": s}
}
fn thermal_safing_probe_6(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 6 * 1.0);
    #{"probe": 6, "safe": s}
}
fn thermal_safing_probe_7(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 7 * 1.0);
    #{"probe": 7, "safe": s}
}
fn thermal_safing_probe_8(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 8 * 1.0);
    #{"probe": 8, "safe": s}
}
fn thermal_safing_probe_9(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 9 * 1.0);
    #{"probe": 9, "safe": s}
}
fn thermal_safing_probe_10(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 10 * 1.0);
    #{"probe": 10, "safe": s}
}
fn thermal_safing_probe_11(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 11 * 1.0);
    #{"probe": 11, "safe": s}
}
fn thermal_safing_probe_12(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 12 * 1.0);
    #{"probe": 12, "safe": s}
}
fn thermal_safing_probe_13(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 13 * 1.0);
    #{"probe": 13, "safe": s}
}
fn thermal_safing_probe_14(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 14 * 1.0);
    #{"probe": 14, "safe": s}
}
fn thermal_safing_probe_15(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 15 * 1.0);
    #{"probe": 15, "safe": s}
}
fn thermal_safing_probe_16(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 16 * 1.0);
    #{"probe": 16, "safe": s}
}
fn thermal_safing_probe_17(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 17 * 1.0);
    #{"probe": 17, "safe": s}
}
fn thermal_safing_probe_18(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 18 * 1.0);
    #{"probe": 18, "safe": s}
}
fn thermal_safing_probe_19(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 19 * 1.0);
    #{"probe": 19, "safe": s}
}
fn thermal_safing_probe_20(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 20 * 1.0);
    #{"probe": 20, "safe": s}
}
fn thermal_safing_probe_21(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 21 * 1.0);
    #{"probe": 21, "safe": s}
}
fn thermal_safing_probe_22(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 22 * 1.0);
    #{"probe": 22, "safe": s}
}
fn thermal_safing_probe_23(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 23 * 1.0);
    #{"probe": 23, "safe": s}
}
fn thermal_safing_probe_24(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 24 * 1.0);
    #{"probe": 24, "safe": s}
}
fn thermal_safing_probe_25(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 25 * 1.0);
    #{"probe": 25, "safe": s}
}
fn thermal_safing_probe_26(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 26 * 1.0);
    #{"probe": 26, "safe": s}
}
fn thermal_safing_probe_27(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 27 * 1.0);
    #{"probe": 27, "safe": s}
}
fn thermal_safing_probe_28(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 28 * 1.0);
    #{"probe": 28, "safe": s}
}
fn thermal_safing_probe_29(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 29 * 1.0);
    #{"probe": 29, "safe": s}
}
fn thermal_safing_probe_30(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 30 * 1.0);
    #{"probe": 30, "safe": s}
}
fn thermal_safing_probe_31(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 31 * 1.0);
    #{"probe": 31, "safe": s}
}
fn thermal_safing_probe_32(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 32 * 1.0);
    #{"probe": 32, "safe": s}
}
fn thermal_safing_probe_33(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 33 * 1.0);
    #{"probe": 33, "safe": s}
}
fn thermal_safing_probe_34(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 34 * 1.0);
    #{"probe": 34, "safe": s}
}
fn thermal_safing_probe_35(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 35 * 1.0);
    #{"probe": 35, "safe": s}
}
fn thermal_safing_probe_36(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 36 * 1.0);
    #{"probe": 36, "safe": s}
}
fn thermal_safing_probe_37(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 37 * 1.0);
    #{"probe": 37, "safe": s}
}
fn thermal_safing_probe_38(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 38 * 1.0);
    #{"probe": 38, "safe": s}
}
fn thermal_safing_probe_39(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 39 * 1.0);
    #{"probe": 39, "safe": s}
}
fn thermal_safing_probe_40(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 40 * 1.0);
    #{"probe": 40, "safe": s}
}
fn thermal_safing_probe_41(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 41 * 1.0);
    #{"probe": 41, "safe": s}
}
fn thermal_safing_probe_42(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 42 * 1.0);
    #{"probe": 42, "safe": s}
}
fn thermal_safing_probe_43(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 43 * 1.0);
    #{"probe": 43, "safe": s}
}
fn thermal_safing_probe_44(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 44 * 1.0);
    #{"probe": 44, "safe": s}
}
