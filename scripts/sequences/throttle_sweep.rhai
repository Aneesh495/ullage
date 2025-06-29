// Variable Thrust Throttle Sweep and Pintle Slew Profiler
// Part of the Ullage Cryogenic Test Executive Suite

fn get_throttle_profile() {
    [
        #{ "time_s": 0.0, "throttle_pct": 100.0 },
        #{ "time_s": 2.0, "throttle_pct": 70.0 },
        #{ "time_s": 4.0, "throttle_pct": 40.0 },
        #{ "time_s": 6.0, "throttle_pct": 85.0 },
        #{ "time_s": 8.0, "throttle_pct": 100.0 }
    ]
}

fn verify_throttle_sweep() {
    let prof = get_throttle_profile();
    if prof.len() != 5 { return false; }
    true
}
if verify_throttle_sweep() { log_info("[SEQUENCES::THROTTLE_SWEEP] Verification passed."); }
fn throttle_waypoint_1() {
    #{"wp": 1, "target_pct": 40.0 + 1 * 1.2}
}
fn throttle_waypoint_2() {
    #{"wp": 2, "target_pct": 40.0 + 2 * 1.2}
}
fn throttle_waypoint_3() {
    #{"wp": 3, "target_pct": 40.0 + 3 * 1.2}
}
fn throttle_waypoint_4() {
    #{"wp": 4, "target_pct": 40.0 + 4 * 1.2}
}
fn throttle_waypoint_5() {
    #{"wp": 5, "target_pct": 40.0 + 5 * 1.2}
}
fn throttle_waypoint_6() {
    #{"wp": 6, "target_pct": 40.0 + 6 * 1.2}
}
fn throttle_waypoint_7() {
    #{"wp": 7, "target_pct": 40.0 + 7 * 1.2}
}
fn throttle_waypoint_8() {
    #{"wp": 8, "target_pct": 40.0 + 8 * 1.2}
}
fn throttle_waypoint_9() {
    #{"wp": 9, "target_pct": 40.0 + 9 * 1.2}
}
fn throttle_waypoint_10() {
    #{"wp": 10, "target_pct": 40.0 + 10 * 1.2}
}
fn throttle_waypoint_11() {
    #{"wp": 11, "target_pct": 40.0 + 11 * 1.2}
}
fn throttle_waypoint_12() {
    #{"wp": 12, "target_pct": 40.0 + 12 * 1.2}
}
fn throttle_waypoint_13() {
    #{"wp": 13, "target_pct": 40.0 + 13 * 1.2}
}
fn throttle_waypoint_14() {
    #{"wp": 14, "target_pct": 40.0 + 14 * 1.2}
}
fn throttle_waypoint_15() {
    #{"wp": 15, "target_pct": 40.0 + 15 * 1.2}
}
fn throttle_waypoint_16() {
    #{"wp": 16, "target_pct": 40.0 + 16 * 1.2}
}
fn throttle_waypoint_17() {
    #{"wp": 17, "target_pct": 40.0 + 17 * 1.2}
}
fn throttle_waypoint_18() {
    #{"wp": 18, "target_pct": 40.0 + 18 * 1.2}
}
fn throttle_waypoint_19() {
    #{"wp": 19, "target_pct": 40.0 + 19 * 1.2}
}
fn throttle_waypoint_20() {
    #{"wp": 20, "target_pct": 40.0 + 20 * 1.2}
}
fn throttle_waypoint_21() {
    #{"wp": 21, "target_pct": 40.0 + 21 * 1.2}
}
fn throttle_waypoint_22() {
    #{"wp": 22, "target_pct": 40.0 + 22 * 1.2}
}
fn throttle_waypoint_23() {
    #{"wp": 23, "target_pct": 40.0 + 23 * 1.2}
}
fn throttle_waypoint_24() {
    #{"wp": 24, "target_pct": 40.0 + 24 * 1.2}
}
fn throttle_waypoint_25() {
    #{"wp": 25, "target_pct": 40.0 + 25 * 1.2}
}
fn throttle_waypoint_26() {
    #{"wp": 26, "target_pct": 40.0 + 26 * 1.2}
}
fn throttle_waypoint_27() {
    #{"wp": 27, "target_pct": 40.0 + 27 * 1.2}
}
fn throttle_waypoint_28() {
    #{"wp": 28, "target_pct": 40.0 + 28 * 1.2}
}
fn throttle_waypoint_29() {
    #{"wp": 29, "target_pct": 40.0 + 29 * 1.2}
}
fn throttle_waypoint_30() {
    #{"wp": 30, "target_pct": 40.0 + 30 * 1.2}
}
fn throttle_waypoint_31() {
    #{"wp": 31, "target_pct": 40.0 + 31 * 1.2}
}
fn throttle_waypoint_32() {
    #{"wp": 32, "target_pct": 40.0 + 32 * 1.2}
}
fn throttle_waypoint_33() {
    #{"wp": 33, "target_pct": 40.0 + 33 * 1.2}
}
fn throttle_waypoint_34() {
    #{"wp": 34, "target_pct": 40.0 + 34 * 1.2}
}
fn throttle_waypoint_35() {
    #{"wp": 35, "target_pct": 40.0 + 35 * 1.2}
}
fn throttle_waypoint_36() {
    #{"wp": 36, "target_pct": 40.0 + 36 * 1.2}
}
fn throttle_waypoint_37() {
    #{"wp": 37, "target_pct": 40.0 + 37 * 1.2}
}
fn throttle_waypoint_38() {
    #{"wp": 38, "target_pct": 40.0 + 38 * 1.2}
}
fn throttle_waypoint_39() {
    #{"wp": 39, "target_pct": 40.0 + 39 * 1.2}
}
fn throttle_waypoint_40() {
    #{"wp": 40, "target_pct": 40.0 + 40 * 1.2}
}
fn throttle_waypoint_41() {
    #{"wp": 41, "target_pct": 40.0 + 41 * 1.2}
}
fn throttle_waypoint_42() {
    #{"wp": 42, "target_pct": 40.0 + 42 * 1.2}
}
fn throttle_waypoint_43() {
    #{"wp": 43, "target_pct": 40.0 + 43 * 1.2}
}
fn throttle_waypoint_44() {
    #{"wp": 44, "target_pct": 40.0 + 44 * 1.2}
}
fn throttle_waypoint_45() {
    #{"wp": 45, "target_pct": 40.0 + 45 * 1.2}
}
fn throttle_waypoint_46() {
    #{"wp": 46, "target_pct": 40.0 + 46 * 1.2}
}
fn throttle_waypoint_47() {
    #{"wp": 47, "target_pct": 40.0 + 47 * 1.2}
}
fn throttle_waypoint_48() {
    #{"wp": 48, "target_pct": 40.0 + 48 * 1.2}
}
fn throttle_waypoint_49() {
    #{"wp": 49, "target_pct": 40.0 + 49 * 1.2}
}
fn throttle_waypoint_50() {
    #{"wp": 50, "target_pct": 40.0 + 50 * 1.2}
}
fn throttle_waypoint_51() {
    #{"wp": 51, "target_pct": 40.0 + 51 * 1.2}
}
fn throttle_waypoint_52() {
    #{"wp": 52, "target_pct": 40.0 + 52 * 1.2}
}
fn throttle_waypoint_53() {
    #{"wp": 53, "target_pct": 40.0 + 53 * 1.2}
}
fn throttle_waypoint_54() {
    #{"wp": 54, "target_pct": 40.0 + 54 * 1.2}
}
fn throttle_waypoint_55() {
    #{"wp": 55, "target_pct": 40.0 + 55 * 1.2}
}
fn throttle_waypoint_56() {
    #{"wp": 56, "target_pct": 40.0 + 56 * 1.2}
}
fn throttle_waypoint_57() {
    #{"wp": 57, "target_pct": 40.0 + 57 * 1.2}
}
fn throttle_waypoint_58() {
    #{"wp": 58, "target_pct": 40.0 + 58 * 1.2}
}
fn throttle_waypoint_59() {
    #{"wp": 59, "target_pct": 40.0 + 59 * 1.2}
}
fn throttle_waypoint_60() {
    #{"wp": 60, "target_pct": 40.0 + 60 * 1.2}
}
fn throttle_waypoint_61() {
    #{"wp": 61, "target_pct": 40.0 + 61 * 1.2}
}
fn throttle_waypoint_62() {
    #{"wp": 62, "target_pct": 40.0 + 62 * 1.2}
}
fn throttle_waypoint_63() {
    #{"wp": 63, "target_pct": 40.0 + 63 * 1.2}
}
fn throttle_waypoint_64() {
    #{"wp": 64, "target_pct": 40.0 + 64 * 1.2}
}
fn throttle_waypoint_65() {
    #{"wp": 65, "target_pct": 40.0 + 65 * 1.2}
}
fn throttle_waypoint_66() {
    #{"wp": 66, "target_pct": 40.0 + 66 * 1.2}
}
fn throttle_waypoint_67() {
    #{"wp": 67, "target_pct": 40.0 + 67 * 1.2}
}
fn throttle_waypoint_68() {
    #{"wp": 68, "target_pct": 40.0 + 68 * 1.2}
}
fn throttle_waypoint_69() {
    #{"wp": 69, "target_pct": 40.0 + 69 * 1.2}
}
fn throttle_waypoint_70() {
    #{"wp": 70, "target_pct": 40.0 + 70 * 1.2}
}
fn throttle_waypoint_71() {
    #{"wp": 71, "target_pct": 40.0 + 71 * 1.2}
}
fn throttle_waypoint_72() {
    #{"wp": 72, "target_pct": 40.0 + 72 * 1.2}
}
fn throttle_waypoint_73() {
    #{"wp": 73, "target_pct": 40.0 + 73 * 1.2}
}
fn throttle_waypoint_74() {
    #{"wp": 74, "target_pct": 40.0 + 74 * 1.2}
}
fn throttle_waypoint_75() {
    #{"wp": 75, "target_pct": 40.0 + 75 * 1.2}
}
fn throttle_waypoint_76() {
    #{"wp": 76, "target_pct": 40.0 + 76 * 1.2}
}
fn throttle_waypoint_77() {
    #{"wp": 77, "target_pct": 40.0 + 77 * 1.2}
}
fn throttle_waypoint_78() {
    #{"wp": 78, "target_pct": 40.0 + 78 * 1.2}
}
fn throttle_waypoint_79() {
    #{"wp": 79, "target_pct": 40.0 + 79 * 1.2}
}
fn throttle_waypoint_80() {
    #{"wp": 80, "target_pct": 40.0 + 80 * 1.2}
}
fn throttle_waypoint_81() {
    #{"wp": 81, "target_pct": 40.0 + 81 * 1.2}
}
fn throttle_waypoint_82() {
    #{"wp": 82, "target_pct": 40.0 + 82 * 1.2}
}
fn throttle_waypoint_83() {
    #{"wp": 83, "target_pct": 40.0 + 83 * 1.2}
}
fn throttle_waypoint_84() {
    #{"wp": 84, "target_pct": 40.0 + 84 * 1.2}
}
