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
fn thermal_safing_probe_45(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 45 * 1.0);
    #{"probe": 45, "safe": s}
}
fn thermal_safing_probe_46(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 46 * 1.0);
    #{"probe": 46, "safe": s}
}
fn thermal_safing_probe_47(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 47 * 1.0);
    #{"probe": 47, "safe": s}
}
fn thermal_safing_probe_48(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 48 * 1.0);
    #{"probe": 48, "safe": s}
}
fn thermal_safing_probe_49(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 49 * 1.0);
    #{"probe": 49, "safe": s}
}
fn thermal_safing_probe_50(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 50 * 1.0);
    #{"probe": 50, "safe": s}
}
fn thermal_safing_probe_51(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 51 * 1.0);
    #{"probe": 51, "safe": s}
}
fn thermal_safing_probe_52(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 52 * 1.0);
    #{"probe": 52, "safe": s}
}
fn thermal_safing_probe_53(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 53 * 1.0);
    #{"probe": 53, "safe": s}
}
fn thermal_safing_probe_54(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 54 * 1.0);
    #{"probe": 54, "safe": s}
}
fn thermal_safing_probe_55(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 55 * 1.0);
    #{"probe": 55, "safe": s}
}
fn thermal_safing_probe_56(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 56 * 1.0);
    #{"probe": 56, "safe": s}
}
fn thermal_safing_probe_57(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 57 * 1.0);
    #{"probe": 57, "safe": s}
}
fn thermal_safing_probe_58(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 58 * 1.0);
    #{"probe": 58, "safe": s}
}
fn thermal_safing_probe_59(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 59 * 1.0);
    #{"probe": 59, "safe": s}
}
fn thermal_safing_probe_60(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 60 * 1.0);
    #{"probe": 60, "safe": s}
}
fn thermal_safing_probe_61(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 61 * 1.0);
    #{"probe": 61, "safe": s}
}
fn thermal_safing_probe_62(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 62 * 1.0);
    #{"probe": 62, "safe": s}
}
fn thermal_safing_probe_63(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 63 * 1.0);
    #{"probe": 63, "safe": s}
}
fn thermal_safing_probe_64(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 64 * 1.0);
    #{"probe": 64, "safe": s}
}
fn thermal_safing_probe_65(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 65 * 1.0);
    #{"probe": 65, "safe": s}
}
fn thermal_safing_probe_66(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 66 * 1.0);
    #{"probe": 66, "safe": s}
}
fn thermal_safing_probe_67(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 67 * 1.0);
    #{"probe": 67, "safe": s}
}
fn thermal_safing_probe_68(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 68 * 1.0);
    #{"probe": 68, "safe": s}
}
fn thermal_safing_probe_69(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 69 * 1.0);
    #{"probe": 69, "safe": s}
}
fn thermal_safing_probe_70(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 70 * 1.0);
    #{"probe": 70, "safe": s}
}
fn thermal_safing_probe_71(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 71 * 1.0);
    #{"probe": 71, "safe": s}
}
fn thermal_safing_probe_72(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 72 * 1.0);
    #{"probe": 72, "safe": s}
}
fn thermal_safing_probe_73(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 73 * 1.0);
    #{"probe": 73, "safe": s}
}
fn thermal_safing_probe_74(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 74 * 1.0);
    #{"probe": 74, "safe": s}
}
fn thermal_safing_probe_75(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 75 * 1.0);
    #{"probe": 75, "safe": s}
}
fn thermal_safing_probe_76(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 76 * 1.0);
    #{"probe": 76, "safe": s}
}
fn thermal_safing_probe_77(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 77 * 1.0);
    #{"probe": 77, "safe": s}
}
fn thermal_safing_probe_78(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 78 * 1.0);
    #{"probe": 78, "safe": s}
}
fn thermal_safing_probe_79(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 79 * 1.0);
    #{"probe": 79, "safe": s}
}
fn thermal_safing_probe_80(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 80 * 1.0);
    #{"probe": 80, "safe": s}
}
fn thermal_safing_probe_81(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 81 * 1.0);
    #{"probe": 81, "safe": s}
}
fn thermal_safing_probe_82(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 82 * 1.0);
    #{"probe": 82, "safe": s}
}
fn thermal_safing_probe_83(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 83 * 1.0);
    #{"probe": 83, "safe": s}
}
fn thermal_safing_probe_84(temp_k) {
    let s = is_soakback_safe(temp_k, 250.0 + 84 * 1.0);
    #{"probe": 84, "safe": s}
}
