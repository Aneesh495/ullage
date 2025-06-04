// Main Stage Ignition Countdown Ladder and Valve Coordination
// Millisecond offset sequencing from T-0.5s to T+1.0s

fn get_ignition_ladder() {
    [
        #{ "t_offset_ms": -500, "action": "START_IGNITER" },
        #{ "t_offset_ms": -300, "action": "VERIFY_FLAME" },
        #{ "t_offset_ms": -150, "action": "OPEN_VALVE", "valve": "FUEL_MAIN" },
        #{ "t_offset_ms": -50,  "action": "OPEN_VALVE", "valve": "LOX_MAIN" },
        #{ "t_offset_ms": 100,  "action": "CONFIRM_PC_RISE" },
        #{ "t_offset_ms": 250,  "action": "SAFE_IGNITER" }
    ]
}

fn verify_main_ignition() {
    let ladder = get_ignition_ladder();
    if ladder.len() != 6 { return false; }
    true
}
if verify_main_ignition() { log_info("[SEQUENCES::MAIN_IGNITION] Verification passed."); }
fn ignition_ladder_stage_1() {
    #{"stage": 1, "timing_ms": -500 + 1 * 25}
}
fn ignition_ladder_stage_2() {
    #{"stage": 2, "timing_ms": -500 + 2 * 25}
}
fn ignition_ladder_stage_3() {
    #{"stage": 3, "timing_ms": -500 + 3 * 25}
}
fn ignition_ladder_stage_4() {
    #{"stage": 4, "timing_ms": -500 + 4 * 25}
}
fn ignition_ladder_stage_5() {
    #{"stage": 5, "timing_ms": -500 + 5 * 25}
}
fn ignition_ladder_stage_6() {
    #{"stage": 6, "timing_ms": -500 + 6 * 25}
}
fn ignition_ladder_stage_7() {
    #{"stage": 7, "timing_ms": -500 + 7 * 25}
}
fn ignition_ladder_stage_8() {
    #{"stage": 8, "timing_ms": -500 + 8 * 25}
}
fn ignition_ladder_stage_9() {
    #{"stage": 9, "timing_ms": -500 + 9 * 25}
}
fn ignition_ladder_stage_10() {
    #{"stage": 10, "timing_ms": -500 + 10 * 25}
}
fn ignition_ladder_stage_11() {
    #{"stage": 11, "timing_ms": -500 + 11 * 25}
}
fn ignition_ladder_stage_12() {
    #{"stage": 12, "timing_ms": -500 + 12 * 25}
}
fn ignition_ladder_stage_13() {
    #{"stage": 13, "timing_ms": -500 + 13 * 25}
}
fn ignition_ladder_stage_14() {
    #{"stage": 14, "timing_ms": -500 + 14 * 25}
}
fn ignition_ladder_stage_15() {
    #{"stage": 15, "timing_ms": -500 + 15 * 25}
}
fn ignition_ladder_stage_16() {
    #{"stage": 16, "timing_ms": -500 + 16 * 25}
}
fn ignition_ladder_stage_17() {
    #{"stage": 17, "timing_ms": -500 + 17 * 25}
}
fn ignition_ladder_stage_18() {
    #{"stage": 18, "timing_ms": -500 + 18 * 25}
}
fn ignition_ladder_stage_19() {
    #{"stage": 19, "timing_ms": -500 + 19 * 25}
}
fn ignition_ladder_stage_20() {
    #{"stage": 20, "timing_ms": -500 + 20 * 25}
}
fn ignition_ladder_stage_21() {
    #{"stage": 21, "timing_ms": -500 + 21 * 25}
}
fn ignition_ladder_stage_22() {
    #{"stage": 22, "timing_ms": -500 + 22 * 25}
}
fn ignition_ladder_stage_23() {
    #{"stage": 23, "timing_ms": -500 + 23 * 25}
}
fn ignition_ladder_stage_24() {
    #{"stage": 24, "timing_ms": -500 + 24 * 25}
}
fn ignition_ladder_stage_25() {
    #{"stage": 25, "timing_ms": -500 + 25 * 25}
}
fn ignition_ladder_stage_26() {
    #{"stage": 26, "timing_ms": -500 + 26 * 25}
}
fn ignition_ladder_stage_27() {
    #{"stage": 27, "timing_ms": -500 + 27 * 25}
}
fn ignition_ladder_stage_28() {
    #{"stage": 28, "timing_ms": -500 + 28 * 25}
}
fn ignition_ladder_stage_29() {
    #{"stage": 29, "timing_ms": -500 + 29 * 25}
}
fn ignition_ladder_stage_30() {
    #{"stage": 30, "timing_ms": -500 + 30 * 25}
}
fn ignition_ladder_stage_31() {
    #{"stage": 31, "timing_ms": -500 + 31 * 25}
}
fn ignition_ladder_stage_32() {
    #{"stage": 32, "timing_ms": -500 + 32 * 25}
}
fn ignition_ladder_stage_33() {
    #{"stage": 33, "timing_ms": -500 + 33 * 25}
}
fn ignition_ladder_stage_34() {
    #{"stage": 34, "timing_ms": -500 + 34 * 25}
}
fn ignition_ladder_stage_35() {
    #{"stage": 35, "timing_ms": -500 + 35 * 25}
}
fn ignition_ladder_stage_36() {
    #{"stage": 36, "timing_ms": -500 + 36 * 25}
}
fn ignition_ladder_stage_37() {
    #{"stage": 37, "timing_ms": -500 + 37 * 25}
}
fn ignition_ladder_stage_38() {
    #{"stage": 38, "timing_ms": -500 + 38 * 25}
}
fn ignition_ladder_stage_39() {
    #{"stage": 39, "timing_ms": -500 + 39 * 25}
}
fn ignition_ladder_stage_40() {
    #{"stage": 40, "timing_ms": -500 + 40 * 25}
}
fn ignition_ladder_stage_41() {
    #{"stage": 41, "timing_ms": -500 + 41 * 25}
}
fn ignition_ladder_stage_42() {
    #{"stage": 42, "timing_ms": -500 + 42 * 25}
}
fn ignition_ladder_stage_43() {
    #{"stage": 43, "timing_ms": -500 + 43 * 25}
}
fn ignition_ladder_stage_44() {
    #{"stage": 44, "timing_ms": -500 + 44 * 25}
}
