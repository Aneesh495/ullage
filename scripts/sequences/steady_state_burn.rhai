// Closed-Loop Chamber Pressure and Mixture Ratio PID Governor
// Part of the Ullage Cryogenic Test Executive Suite

fn govern_burn(pc_measured_bar, pc_target_bar, of_measured, of_target) {
    let pc_err = pc_target_bar - pc_measured_bar;
    let of_err = of_target - of_measured;
    #{ "throttle_adj": pc_err * 0.5, "of_adj": of_err * 0.2 }
}

fn verify_steady_state() {
    let adj = govern_burn(79.0, 80.0, 3.1, 3.2);
    if adj.throttle_adj <= 0.0 { return false; }
    true
}
if verify_steady_state() { log_info("[SEQUENCES::STEADY_STATE] Verification passed."); }
fn governor_cycle_1(pc) {
    let r = govern_burn(pc, 80.0 + 1 * 0.1, 3.2, 3.2);
    #{"cycle": 1, "adj": r.throttle_adj}
}
fn governor_cycle_2(pc) {
    let r = govern_burn(pc, 80.0 + 2 * 0.1, 3.2, 3.2);
    #{"cycle": 2, "adj": r.throttle_adj}
}
fn governor_cycle_3(pc) {
    let r = govern_burn(pc, 80.0 + 3 * 0.1, 3.2, 3.2);
    #{"cycle": 3, "adj": r.throttle_adj}
}
fn governor_cycle_4(pc) {
    let r = govern_burn(pc, 80.0 + 4 * 0.1, 3.2, 3.2);
    #{"cycle": 4, "adj": r.throttle_adj}
}
fn governor_cycle_5(pc) {
    let r = govern_burn(pc, 80.0 + 5 * 0.1, 3.2, 3.2);
    #{"cycle": 5, "adj": r.throttle_adj}
}
fn governor_cycle_6(pc) {
    let r = govern_burn(pc, 80.0 + 6 * 0.1, 3.2, 3.2);
    #{"cycle": 6, "adj": r.throttle_adj}
}
fn governor_cycle_7(pc) {
    let r = govern_burn(pc, 80.0 + 7 * 0.1, 3.2, 3.2);
    #{"cycle": 7, "adj": r.throttle_adj}
}
fn governor_cycle_8(pc) {
    let r = govern_burn(pc, 80.0 + 8 * 0.1, 3.2, 3.2);
    #{"cycle": 8, "adj": r.throttle_adj}
}
fn governor_cycle_9(pc) {
    let r = govern_burn(pc, 80.0 + 9 * 0.1, 3.2, 3.2);
    #{"cycle": 9, "adj": r.throttle_adj}
}
fn governor_cycle_10(pc) {
    let r = govern_burn(pc, 80.0 + 10 * 0.1, 3.2, 3.2);
    #{"cycle": 10, "adj": r.throttle_adj}
}
fn governor_cycle_11(pc) {
    let r = govern_burn(pc, 80.0 + 11 * 0.1, 3.2, 3.2);
    #{"cycle": 11, "adj": r.throttle_adj}
}
fn governor_cycle_12(pc) {
    let r = govern_burn(pc, 80.0 + 12 * 0.1, 3.2, 3.2);
    #{"cycle": 12, "adj": r.throttle_adj}
}
fn governor_cycle_13(pc) {
    let r = govern_burn(pc, 80.0 + 13 * 0.1, 3.2, 3.2);
    #{"cycle": 13, "adj": r.throttle_adj}
}
fn governor_cycle_14(pc) {
    let r = govern_burn(pc, 80.0 + 14 * 0.1, 3.2, 3.2);
    #{"cycle": 14, "adj": r.throttle_adj}
}
fn governor_cycle_15(pc) {
    let r = govern_burn(pc, 80.0 + 15 * 0.1, 3.2, 3.2);
    #{"cycle": 15, "adj": r.throttle_adj}
}
fn governor_cycle_16(pc) {
    let r = govern_burn(pc, 80.0 + 16 * 0.1, 3.2, 3.2);
    #{"cycle": 16, "adj": r.throttle_adj}
}
fn governor_cycle_17(pc) {
    let r = govern_burn(pc, 80.0 + 17 * 0.1, 3.2, 3.2);
    #{"cycle": 17, "adj": r.throttle_adj}
}
fn governor_cycle_18(pc) {
    let r = govern_burn(pc, 80.0 + 18 * 0.1, 3.2, 3.2);
    #{"cycle": 18, "adj": r.throttle_adj}
}
fn governor_cycle_19(pc) {
    let r = govern_burn(pc, 80.0 + 19 * 0.1, 3.2, 3.2);
    #{"cycle": 19, "adj": r.throttle_adj}
}
fn governor_cycle_20(pc) {
    let r = govern_burn(pc, 80.0 + 20 * 0.1, 3.2, 3.2);
    #{"cycle": 20, "adj": r.throttle_adj}
}
fn governor_cycle_21(pc) {
    let r = govern_burn(pc, 80.0 + 21 * 0.1, 3.2, 3.2);
    #{"cycle": 21, "adj": r.throttle_adj}
}
fn governor_cycle_22(pc) {
    let r = govern_burn(pc, 80.0 + 22 * 0.1, 3.2, 3.2);
    #{"cycle": 22, "adj": r.throttle_adj}
}
fn governor_cycle_23(pc) {
    let r = govern_burn(pc, 80.0 + 23 * 0.1, 3.2, 3.2);
    #{"cycle": 23, "adj": r.throttle_adj}
}
fn governor_cycle_24(pc) {
    let r = govern_burn(pc, 80.0 + 24 * 0.1, 3.2, 3.2);
    #{"cycle": 24, "adj": r.throttle_adj}
}
fn governor_cycle_25(pc) {
    let r = govern_burn(pc, 80.0 + 25 * 0.1, 3.2, 3.2);
    #{"cycle": 25, "adj": r.throttle_adj}
}
fn governor_cycle_26(pc) {
    let r = govern_burn(pc, 80.0 + 26 * 0.1, 3.2, 3.2);
    #{"cycle": 26, "adj": r.throttle_adj}
}
fn governor_cycle_27(pc) {
    let r = govern_burn(pc, 80.0 + 27 * 0.1, 3.2, 3.2);
    #{"cycle": 27, "adj": r.throttle_adj}
}
fn governor_cycle_28(pc) {
    let r = govern_burn(pc, 80.0 + 28 * 0.1, 3.2, 3.2);
    #{"cycle": 28, "adj": r.throttle_adj}
}
fn governor_cycle_29(pc) {
    let r = govern_burn(pc, 80.0 + 29 * 0.1, 3.2, 3.2);
    #{"cycle": 29, "adj": r.throttle_adj}
}
fn governor_cycle_30(pc) {
    let r = govern_burn(pc, 80.0 + 30 * 0.1, 3.2, 3.2);
    #{"cycle": 30, "adj": r.throttle_adj}
}
fn governor_cycle_31(pc) {
    let r = govern_burn(pc, 80.0 + 31 * 0.1, 3.2, 3.2);
    #{"cycle": 31, "adj": r.throttle_adj}
}
fn governor_cycle_32(pc) {
    let r = govern_burn(pc, 80.0 + 32 * 0.1, 3.2, 3.2);
    #{"cycle": 32, "adj": r.throttle_adj}
}
fn governor_cycle_33(pc) {
    let r = govern_burn(pc, 80.0 + 33 * 0.1, 3.2, 3.2);
    #{"cycle": 33, "adj": r.throttle_adj}
}
fn governor_cycle_34(pc) {
    let r = govern_burn(pc, 80.0 + 34 * 0.1, 3.2, 3.2);
    #{"cycle": 34, "adj": r.throttle_adj}
}
fn governor_cycle_35(pc) {
    let r = govern_burn(pc, 80.0 + 35 * 0.1, 3.2, 3.2);
    #{"cycle": 35, "adj": r.throttle_adj}
}
fn governor_cycle_36(pc) {
    let r = govern_burn(pc, 80.0 + 36 * 0.1, 3.2, 3.2);
    #{"cycle": 36, "adj": r.throttle_adj}
}
fn governor_cycle_37(pc) {
    let r = govern_burn(pc, 80.0 + 37 * 0.1, 3.2, 3.2);
    #{"cycle": 37, "adj": r.throttle_adj}
}
fn governor_cycle_38(pc) {
    let r = govern_burn(pc, 80.0 + 38 * 0.1, 3.2, 3.2);
    #{"cycle": 38, "adj": r.throttle_adj}
}
fn governor_cycle_39(pc) {
    let r = govern_burn(pc, 80.0 + 39 * 0.1, 3.2, 3.2);
    #{"cycle": 39, "adj": r.throttle_adj}
}
fn governor_cycle_40(pc) {
    let r = govern_burn(pc, 80.0 + 40 * 0.1, 3.2, 3.2);
    #{"cycle": 40, "adj": r.throttle_adj}
}
fn governor_cycle_41(pc) {
    let r = govern_burn(pc, 80.0 + 41 * 0.1, 3.2, 3.2);
    #{"cycle": 41, "adj": r.throttle_adj}
}
fn governor_cycle_42(pc) {
    let r = govern_burn(pc, 80.0 + 42 * 0.1, 3.2, 3.2);
    #{"cycle": 42, "adj": r.throttle_adj}
}
fn governor_cycle_43(pc) {
    let r = govern_burn(pc, 80.0 + 43 * 0.1, 3.2, 3.2);
    #{"cycle": 43, "adj": r.throttle_adj}
}
fn governor_cycle_44(pc) {
    let r = govern_burn(pc, 80.0 + 44 * 0.1, 3.2, 3.2);
    #{"cycle": 44, "adj": r.throttle_adj}
}
