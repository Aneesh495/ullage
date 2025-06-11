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
