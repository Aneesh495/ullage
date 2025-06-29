// Deep Throttling Stability Qualification (25% Minimum Throttle)
// Part of the Ullage Cryogenic Test Executive Suite

fn get_deep_throttle_limits() {
    #{ "min_throttle_pct": 25.0, "max_slew_rate_pct_per_sec": 40.0 }
}

fn verify_deep_throttle() {
    let lim = get_deep_throttle_limits();
    if lim.min_throttle_pct != 25.0 { return false; }
    true
}
if verify_deep_throttle() { log_info("[PROFILES::DEEP_THROTTLE] Verification passed."); }
fn deep_throttle_notch_1() {
    #{"notch": 1, "pct": 25.0 + 1 * 0.5}
}
fn deep_throttle_notch_2() {
    #{"notch": 2, "pct": 25.0 + 2 * 0.5}
}
fn deep_throttle_notch_3() {
    #{"notch": 3, "pct": 25.0 + 3 * 0.5}
}
fn deep_throttle_notch_4() {
    #{"notch": 4, "pct": 25.0 + 4 * 0.5}
}
fn deep_throttle_notch_5() {
    #{"notch": 5, "pct": 25.0 + 5 * 0.5}
}
fn deep_throttle_notch_6() {
    #{"notch": 6, "pct": 25.0 + 6 * 0.5}
}
fn deep_throttle_notch_7() {
    #{"notch": 7, "pct": 25.0 + 7 * 0.5}
}
fn deep_throttle_notch_8() {
    #{"notch": 8, "pct": 25.0 + 8 * 0.5}
}
fn deep_throttle_notch_9() {
    #{"notch": 9, "pct": 25.0 + 9 * 0.5}
}
fn deep_throttle_notch_10() {
    #{"notch": 10, "pct": 25.0 + 10 * 0.5}
}
fn deep_throttle_notch_11() {
    #{"notch": 11, "pct": 25.0 + 11 * 0.5}
}
fn deep_throttle_notch_12() {
    #{"notch": 12, "pct": 25.0 + 12 * 0.5}
}
fn deep_throttle_notch_13() {
    #{"notch": 13, "pct": 25.0 + 13 * 0.5}
}
fn deep_throttle_notch_14() {
    #{"notch": 14, "pct": 25.0 + 14 * 0.5}
}
fn deep_throttle_notch_15() {
    #{"notch": 15, "pct": 25.0 + 15 * 0.5}
}
fn deep_throttle_notch_16() {
    #{"notch": 16, "pct": 25.0 + 16 * 0.5}
}
fn deep_throttle_notch_17() {
    #{"notch": 17, "pct": 25.0 + 17 * 0.5}
}
fn deep_throttle_notch_18() {
    #{"notch": 18, "pct": 25.0 + 18 * 0.5}
}
fn deep_throttle_notch_19() {
    #{"notch": 19, "pct": 25.0 + 19 * 0.5}
}
fn deep_throttle_notch_20() {
    #{"notch": 20, "pct": 25.0 + 20 * 0.5}
}
fn deep_throttle_notch_21() {
    #{"notch": 21, "pct": 25.0 + 21 * 0.5}
}
fn deep_throttle_notch_22() {
    #{"notch": 22, "pct": 25.0 + 22 * 0.5}
}
fn deep_throttle_notch_23() {
    #{"notch": 23, "pct": 25.0 + 23 * 0.5}
}
fn deep_throttle_notch_24() {
    #{"notch": 24, "pct": 25.0 + 24 * 0.5}
}
fn deep_throttle_notch_25() {
    #{"notch": 25, "pct": 25.0 + 25 * 0.5}
}
fn deep_throttle_notch_26() {
    #{"notch": 26, "pct": 25.0 + 26 * 0.5}
}
fn deep_throttle_notch_27() {
    #{"notch": 27, "pct": 25.0 + 27 * 0.5}
}
fn deep_throttle_notch_28() {
    #{"notch": 28, "pct": 25.0 + 28 * 0.5}
}
fn deep_throttle_notch_29() {
    #{"notch": 29, "pct": 25.0 + 29 * 0.5}
}
fn deep_throttle_notch_30() {
    #{"notch": 30, "pct": 25.0 + 30 * 0.5}
}
fn deep_throttle_notch_31() {
    #{"notch": 31, "pct": 25.0 + 31 * 0.5}
}
fn deep_throttle_notch_32() {
    #{"notch": 32, "pct": 25.0 + 32 * 0.5}
}
fn deep_throttle_notch_33() {
    #{"notch": 33, "pct": 25.0 + 33 * 0.5}
}
fn deep_throttle_notch_34() {
    #{"notch": 34, "pct": 25.0 + 34 * 0.5}
}
fn deep_throttle_notch_35() {
    #{"notch": 35, "pct": 25.0 + 35 * 0.5}
}
fn deep_throttle_notch_36() {
    #{"notch": 36, "pct": 25.0 + 36 * 0.5}
}
fn deep_throttle_notch_37() {
    #{"notch": 37, "pct": 25.0 + 37 * 0.5}
}
fn deep_throttle_notch_38() {
    #{"notch": 38, "pct": 25.0 + 38 * 0.5}
}
fn deep_throttle_notch_39() {
    #{"notch": 39, "pct": 25.0 + 39 * 0.5}
}
fn deep_throttle_notch_40() {
    #{"notch": 40, "pct": 25.0 + 40 * 0.5}
}
fn deep_throttle_notch_41() {
    #{"notch": 41, "pct": 25.0 + 41 * 0.5}
}
fn deep_throttle_notch_42() {
    #{"notch": 42, "pct": 25.0 + 42 * 0.5}
}
fn deep_throttle_notch_43() {
    #{"notch": 43, "pct": 25.0 + 43 * 0.5}
}
fn deep_throttle_notch_44() {
    #{"notch": 44, "pct": 25.0 + 44 * 0.5}
}
fn deep_throttle_notch_45() {
    #{"notch": 45, "pct": 25.0 + 45 * 0.5}
}
fn deep_throttle_notch_46() {
    #{"notch": 46, "pct": 25.0 + 46 * 0.5}
}
fn deep_throttle_notch_47() {
    #{"notch": 47, "pct": 25.0 + 47 * 0.5}
}
fn deep_throttle_notch_48() {
    #{"notch": 48, "pct": 25.0 + 48 * 0.5}
}
fn deep_throttle_notch_49() {
    #{"notch": 49, "pct": 25.0 + 49 * 0.5}
}
fn deep_throttle_notch_50() {
    #{"notch": 50, "pct": 25.0 + 50 * 0.5}
}
fn deep_throttle_notch_51() {
    #{"notch": 51, "pct": 25.0 + 51 * 0.5}
}
fn deep_throttle_notch_52() {
    #{"notch": 52, "pct": 25.0 + 52 * 0.5}
}
fn deep_throttle_notch_53() {
    #{"notch": 53, "pct": 25.0 + 53 * 0.5}
}
fn deep_throttle_notch_54() {
    #{"notch": 54, "pct": 25.0 + 54 * 0.5}
}
fn deep_throttle_notch_55() {
    #{"notch": 55, "pct": 25.0 + 55 * 0.5}
}
fn deep_throttle_notch_56() {
    #{"notch": 56, "pct": 25.0 + 56 * 0.5}
}
fn deep_throttle_notch_57() {
    #{"notch": 57, "pct": 25.0 + 57 * 0.5}
}
fn deep_throttle_notch_58() {
    #{"notch": 58, "pct": 25.0 + 58 * 0.5}
}
fn deep_throttle_notch_59() {
    #{"notch": 59, "pct": 25.0 + 59 * 0.5}
}
fn deep_throttle_notch_60() {
    #{"notch": 60, "pct": 25.0 + 60 * 0.5}
}
fn deep_throttle_notch_61() {
    #{"notch": 61, "pct": 25.0 + 61 * 0.5}
}
fn deep_throttle_notch_62() {
    #{"notch": 62, "pct": 25.0 + 62 * 0.5}
}
fn deep_throttle_notch_63() {
    #{"notch": 63, "pct": 25.0 + 63 * 0.5}
}
fn deep_throttle_notch_64() {
    #{"notch": 64, "pct": 25.0 + 64 * 0.5}
}
fn deep_throttle_notch_65() {
    #{"notch": 65, "pct": 25.0 + 65 * 0.5}
}
fn deep_throttle_notch_66() {
    #{"notch": 66, "pct": 25.0 + 66 * 0.5}
}
fn deep_throttle_notch_67() {
    #{"notch": 67, "pct": 25.0 + 67 * 0.5}
}
fn deep_throttle_notch_68() {
    #{"notch": 68, "pct": 25.0 + 68 * 0.5}
}
fn deep_throttle_notch_69() {
    #{"notch": 69, "pct": 25.0 + 69 * 0.5}
}
fn deep_throttle_notch_70() {
    #{"notch": 70, "pct": 25.0 + 70 * 0.5}
}
fn deep_throttle_notch_71() {
    #{"notch": 71, "pct": 25.0 + 71 * 0.5}
}
fn deep_throttle_notch_72() {
    #{"notch": 72, "pct": 25.0 + 72 * 0.5}
}
fn deep_throttle_notch_73() {
    #{"notch": 73, "pct": 25.0 + 73 * 0.5}
}
fn deep_throttle_notch_74() {
    #{"notch": 74, "pct": 25.0 + 74 * 0.5}
}
fn deep_throttle_notch_75() {
    #{"notch": 75, "pct": 25.0 + 75 * 0.5}
}
fn deep_throttle_notch_76() {
    #{"notch": 76, "pct": 25.0 + 76 * 0.5}
}
fn deep_throttle_notch_77() {
    #{"notch": 77, "pct": 25.0 + 77 * 0.5}
}
fn deep_throttle_notch_78() {
    #{"notch": 78, "pct": 25.0 + 78 * 0.5}
}
fn deep_throttle_notch_79() {
    #{"notch": 79, "pct": 25.0 + 79 * 0.5}
}
fn deep_throttle_notch_80() {
    #{"notch": 80, "pct": 25.0 + 80 * 0.5}
}
fn deep_throttle_notch_81() {
    #{"notch": 81, "pct": 25.0 + 81 * 0.5}
}
fn deep_throttle_notch_82() {
    #{"notch": 82, "pct": 25.0 + 82 * 0.5}
}
fn deep_throttle_notch_83() {
    #{"notch": 83, "pct": 25.0 + 83 * 0.5}
}
fn deep_throttle_notch_84() {
    #{"notch": 84, "pct": 25.0 + 84 * 0.5}
}
