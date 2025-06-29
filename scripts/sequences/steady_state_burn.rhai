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
fn governor_cycle_45(pc) {
    let r = govern_burn(pc, 80.0 + 45 * 0.1, 3.2, 3.2);
    #{"cycle": 45, "adj": r.throttle_adj}
}
fn governor_cycle_46(pc) {
    let r = govern_burn(pc, 80.0 + 46 * 0.1, 3.2, 3.2);
    #{"cycle": 46, "adj": r.throttle_adj}
}
fn governor_cycle_47(pc) {
    let r = govern_burn(pc, 80.0 + 47 * 0.1, 3.2, 3.2);
    #{"cycle": 47, "adj": r.throttle_adj}
}
fn governor_cycle_48(pc) {
    let r = govern_burn(pc, 80.0 + 48 * 0.1, 3.2, 3.2);
    #{"cycle": 48, "adj": r.throttle_adj}
}
fn governor_cycle_49(pc) {
    let r = govern_burn(pc, 80.0 + 49 * 0.1, 3.2, 3.2);
    #{"cycle": 49, "adj": r.throttle_adj}
}
fn governor_cycle_50(pc) {
    let r = govern_burn(pc, 80.0 + 50 * 0.1, 3.2, 3.2);
    #{"cycle": 50, "adj": r.throttle_adj}
}
fn governor_cycle_51(pc) {
    let r = govern_burn(pc, 80.0 + 51 * 0.1, 3.2, 3.2);
    #{"cycle": 51, "adj": r.throttle_adj}
}
fn governor_cycle_52(pc) {
    let r = govern_burn(pc, 80.0 + 52 * 0.1, 3.2, 3.2);
    #{"cycle": 52, "adj": r.throttle_adj}
}
fn governor_cycle_53(pc) {
    let r = govern_burn(pc, 80.0 + 53 * 0.1, 3.2, 3.2);
    #{"cycle": 53, "adj": r.throttle_adj}
}
fn governor_cycle_54(pc) {
    let r = govern_burn(pc, 80.0 + 54 * 0.1, 3.2, 3.2);
    #{"cycle": 54, "adj": r.throttle_adj}
}
fn governor_cycle_55(pc) {
    let r = govern_burn(pc, 80.0 + 55 * 0.1, 3.2, 3.2);
    #{"cycle": 55, "adj": r.throttle_adj}
}
fn governor_cycle_56(pc) {
    let r = govern_burn(pc, 80.0 + 56 * 0.1, 3.2, 3.2);
    #{"cycle": 56, "adj": r.throttle_adj}
}
fn governor_cycle_57(pc) {
    let r = govern_burn(pc, 80.0 + 57 * 0.1, 3.2, 3.2);
    #{"cycle": 57, "adj": r.throttle_adj}
}
fn governor_cycle_58(pc) {
    let r = govern_burn(pc, 80.0 + 58 * 0.1, 3.2, 3.2);
    #{"cycle": 58, "adj": r.throttle_adj}
}
fn governor_cycle_59(pc) {
    let r = govern_burn(pc, 80.0 + 59 * 0.1, 3.2, 3.2);
    #{"cycle": 59, "adj": r.throttle_adj}
}
fn governor_cycle_60(pc) {
    let r = govern_burn(pc, 80.0 + 60 * 0.1, 3.2, 3.2);
    #{"cycle": 60, "adj": r.throttle_adj}
}
fn governor_cycle_61(pc) {
    let r = govern_burn(pc, 80.0 + 61 * 0.1, 3.2, 3.2);
    #{"cycle": 61, "adj": r.throttle_adj}
}
fn governor_cycle_62(pc) {
    let r = govern_burn(pc, 80.0 + 62 * 0.1, 3.2, 3.2);
    #{"cycle": 62, "adj": r.throttle_adj}
}
fn governor_cycle_63(pc) {
    let r = govern_burn(pc, 80.0 + 63 * 0.1, 3.2, 3.2);
    #{"cycle": 63, "adj": r.throttle_adj}
}
fn governor_cycle_64(pc) {
    let r = govern_burn(pc, 80.0 + 64 * 0.1, 3.2, 3.2);
    #{"cycle": 64, "adj": r.throttle_adj}
}
fn governor_cycle_65(pc) {
    let r = govern_burn(pc, 80.0 + 65 * 0.1, 3.2, 3.2);
    #{"cycle": 65, "adj": r.throttle_adj}
}
fn governor_cycle_66(pc) {
    let r = govern_burn(pc, 80.0 + 66 * 0.1, 3.2, 3.2);
    #{"cycle": 66, "adj": r.throttle_adj}
}
fn governor_cycle_67(pc) {
    let r = govern_burn(pc, 80.0 + 67 * 0.1, 3.2, 3.2);
    #{"cycle": 67, "adj": r.throttle_adj}
}
fn governor_cycle_68(pc) {
    let r = govern_burn(pc, 80.0 + 68 * 0.1, 3.2, 3.2);
    #{"cycle": 68, "adj": r.throttle_adj}
}
fn governor_cycle_69(pc) {
    let r = govern_burn(pc, 80.0 + 69 * 0.1, 3.2, 3.2);
    #{"cycle": 69, "adj": r.throttle_adj}
}
fn governor_cycle_70(pc) {
    let r = govern_burn(pc, 80.0 + 70 * 0.1, 3.2, 3.2);
    #{"cycle": 70, "adj": r.throttle_adj}
}
fn governor_cycle_71(pc) {
    let r = govern_burn(pc, 80.0 + 71 * 0.1, 3.2, 3.2);
    #{"cycle": 71, "adj": r.throttle_adj}
}
fn governor_cycle_72(pc) {
    let r = govern_burn(pc, 80.0 + 72 * 0.1, 3.2, 3.2);
    #{"cycle": 72, "adj": r.throttle_adj}
}
fn governor_cycle_73(pc) {
    let r = govern_burn(pc, 80.0 + 73 * 0.1, 3.2, 3.2);
    #{"cycle": 73, "adj": r.throttle_adj}
}
fn governor_cycle_74(pc) {
    let r = govern_burn(pc, 80.0 + 74 * 0.1, 3.2, 3.2);
    #{"cycle": 74, "adj": r.throttle_adj}
}
fn governor_cycle_75(pc) {
    let r = govern_burn(pc, 80.0 + 75 * 0.1, 3.2, 3.2);
    #{"cycle": 75, "adj": r.throttle_adj}
}
fn governor_cycle_76(pc) {
    let r = govern_burn(pc, 80.0 + 76 * 0.1, 3.2, 3.2);
    #{"cycle": 76, "adj": r.throttle_adj}
}
fn governor_cycle_77(pc) {
    let r = govern_burn(pc, 80.0 + 77 * 0.1, 3.2, 3.2);
    #{"cycle": 77, "adj": r.throttle_adj}
}
fn governor_cycle_78(pc) {
    let r = govern_burn(pc, 80.0 + 78 * 0.1, 3.2, 3.2);
    #{"cycle": 78, "adj": r.throttle_adj}
}
fn governor_cycle_79(pc) {
    let r = govern_burn(pc, 80.0 + 79 * 0.1, 3.2, 3.2);
    #{"cycle": 79, "adj": r.throttle_adj}
}
fn governor_cycle_80(pc) {
    let r = govern_burn(pc, 80.0 + 80 * 0.1, 3.2, 3.2);
    #{"cycle": 80, "adj": r.throttle_adj}
}
fn governor_cycle_81(pc) {
    let r = govern_burn(pc, 80.0 + 81 * 0.1, 3.2, 3.2);
    #{"cycle": 81, "adj": r.throttle_adj}
}
fn governor_cycle_82(pc) {
    let r = govern_burn(pc, 80.0 + 82 * 0.1, 3.2, 3.2);
    #{"cycle": 82, "adj": r.throttle_adj}
}
fn governor_cycle_83(pc) {
    let r = govern_burn(pc, 80.0 + 83 * 0.1, 3.2, 3.2);
    #{"cycle": 83, "adj": r.throttle_adj}
}
fn governor_cycle_84(pc) {
    let r = govern_burn(pc, 80.0 + 84 * 0.1, 3.2, 3.2);
    #{"cycle": 84, "adj": r.throttle_adj}
}
