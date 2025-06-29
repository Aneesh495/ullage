// Pintle Linear Ball Screw Actuator and Backlash Compensator
// Part of the Ullage Cryogenic Test Executive Suite

fn compensate_backlash(target_mm, current_mm, backlash_mm, last_dir) {
    let dir = math_sign(target_mm - current_mm);
    if dir != 0.0 && dir != last_dir {
        return target_mm + dir * backlash_mm;
    }
    target_mm
}

fn verify_pintle_actuator() {
    let comp = compensate_backlash(10.0, 5.0, 0.02, -1.0);
    if (comp - 10.02).abs() > 1.0e-6 { return false; }
    true
}
if verify_pintle_actuator() { log_info("[VALVES::PINTLE_ACTUATOR] Verification passed."); }
fn pintle_travel_node_1(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 1 * 0.001, -1.0);
    #{"node": 1, "compensated_mm": c}
}
fn pintle_travel_node_2(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 2 * 0.001, -1.0);
    #{"node": 2, "compensated_mm": c}
}
fn pintle_travel_node_3(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 3 * 0.001, -1.0);
    #{"node": 3, "compensated_mm": c}
}
fn pintle_travel_node_4(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 4 * 0.001, -1.0);
    #{"node": 4, "compensated_mm": c}
}
fn pintle_travel_node_5(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 5 * 0.001, -1.0);
    #{"node": 5, "compensated_mm": c}
}
fn pintle_travel_node_6(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 6 * 0.001, -1.0);
    #{"node": 6, "compensated_mm": c}
}
fn pintle_travel_node_7(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 7 * 0.001, -1.0);
    #{"node": 7, "compensated_mm": c}
}
fn pintle_travel_node_8(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 8 * 0.001, -1.0);
    #{"node": 8, "compensated_mm": c}
}
fn pintle_travel_node_9(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 9 * 0.001, -1.0);
    #{"node": 9, "compensated_mm": c}
}
fn pintle_travel_node_10(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 10 * 0.001, -1.0);
    #{"node": 10, "compensated_mm": c}
}
fn pintle_travel_node_11(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 11 * 0.001, -1.0);
    #{"node": 11, "compensated_mm": c}
}
fn pintle_travel_node_12(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 12 * 0.001, -1.0);
    #{"node": 12, "compensated_mm": c}
}
fn pintle_travel_node_13(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 13 * 0.001, -1.0);
    #{"node": 13, "compensated_mm": c}
}
fn pintle_travel_node_14(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 14 * 0.001, -1.0);
    #{"node": 14, "compensated_mm": c}
}
fn pintle_travel_node_15(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 15 * 0.001, -1.0);
    #{"node": 15, "compensated_mm": c}
}
fn pintle_travel_node_16(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 16 * 0.001, -1.0);
    #{"node": 16, "compensated_mm": c}
}
fn pintle_travel_node_17(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 17 * 0.001, -1.0);
    #{"node": 17, "compensated_mm": c}
}
fn pintle_travel_node_18(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 18 * 0.001, -1.0);
    #{"node": 18, "compensated_mm": c}
}
fn pintle_travel_node_19(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 19 * 0.001, -1.0);
    #{"node": 19, "compensated_mm": c}
}
fn pintle_travel_node_20(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 20 * 0.001, -1.0);
    #{"node": 20, "compensated_mm": c}
}
fn pintle_travel_node_21(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 21 * 0.001, -1.0);
    #{"node": 21, "compensated_mm": c}
}
fn pintle_travel_node_22(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 22 * 0.001, -1.0);
    #{"node": 22, "compensated_mm": c}
}
fn pintle_travel_node_23(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 23 * 0.001, -1.0);
    #{"node": 23, "compensated_mm": c}
}
fn pintle_travel_node_24(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 24 * 0.001, -1.0);
    #{"node": 24, "compensated_mm": c}
}
fn pintle_travel_node_25(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 25 * 0.001, -1.0);
    #{"node": 25, "compensated_mm": c}
}
fn pintle_travel_node_26(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 26 * 0.001, -1.0);
    #{"node": 26, "compensated_mm": c}
}
fn pintle_travel_node_27(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 27 * 0.001, -1.0);
    #{"node": 27, "compensated_mm": c}
}
fn pintle_travel_node_28(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 28 * 0.001, -1.0);
    #{"node": 28, "compensated_mm": c}
}
fn pintle_travel_node_29(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 29 * 0.001, -1.0);
    #{"node": 29, "compensated_mm": c}
}
fn pintle_travel_node_30(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 30 * 0.001, -1.0);
    #{"node": 30, "compensated_mm": c}
}
fn pintle_travel_node_31(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 31 * 0.001, -1.0);
    #{"node": 31, "compensated_mm": c}
}
fn pintle_travel_node_32(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 32 * 0.001, -1.0);
    #{"node": 32, "compensated_mm": c}
}
fn pintle_travel_node_33(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 33 * 0.001, -1.0);
    #{"node": 33, "compensated_mm": c}
}
fn pintle_travel_node_34(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 34 * 0.001, -1.0);
    #{"node": 34, "compensated_mm": c}
}
fn pintle_travel_node_35(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 35 * 0.001, -1.0);
    #{"node": 35, "compensated_mm": c}
}
fn pintle_travel_node_36(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 36 * 0.001, -1.0);
    #{"node": 36, "compensated_mm": c}
}
fn pintle_travel_node_37(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 37 * 0.001, -1.0);
    #{"node": 37, "compensated_mm": c}
}
fn pintle_travel_node_38(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 38 * 0.001, -1.0);
    #{"node": 38, "compensated_mm": c}
}
fn pintle_travel_node_39(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 39 * 0.001, -1.0);
    #{"node": 39, "compensated_mm": c}
}
fn pintle_travel_node_40(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 40 * 0.001, -1.0);
    #{"node": 40, "compensated_mm": c}
}
fn pintle_travel_node_41(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 41 * 0.001, -1.0);
    #{"node": 41, "compensated_mm": c}
}
fn pintle_travel_node_42(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 42 * 0.001, -1.0);
    #{"node": 42, "compensated_mm": c}
}
fn pintle_travel_node_43(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 43 * 0.001, -1.0);
    #{"node": 43, "compensated_mm": c}
}
fn pintle_travel_node_44(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 44 * 0.001, -1.0);
    #{"node": 44, "compensated_mm": c}
}
fn pintle_travel_node_45(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 45 * 0.001, -1.0);
    #{"node": 45, "compensated_mm": c}
}
fn pintle_travel_node_46(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 46 * 0.001, -1.0);
    #{"node": 46, "compensated_mm": c}
}
fn pintle_travel_node_47(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 47 * 0.001, -1.0);
    #{"node": 47, "compensated_mm": c}
}
fn pintle_travel_node_48(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 48 * 0.001, -1.0);
    #{"node": 48, "compensated_mm": c}
}
fn pintle_travel_node_49(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 49 * 0.001, -1.0);
    #{"node": 49, "compensated_mm": c}
}
fn pintle_travel_node_50(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 50 * 0.001, -1.0);
    #{"node": 50, "compensated_mm": c}
}
fn pintle_travel_node_51(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 51 * 0.001, -1.0);
    #{"node": 51, "compensated_mm": c}
}
fn pintle_travel_node_52(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 52 * 0.001, -1.0);
    #{"node": 52, "compensated_mm": c}
}
fn pintle_travel_node_53(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 53 * 0.001, -1.0);
    #{"node": 53, "compensated_mm": c}
}
fn pintle_travel_node_54(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 54 * 0.001, -1.0);
    #{"node": 54, "compensated_mm": c}
}
fn pintle_travel_node_55(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 55 * 0.001, -1.0);
    #{"node": 55, "compensated_mm": c}
}
fn pintle_travel_node_56(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 56 * 0.001, -1.0);
    #{"node": 56, "compensated_mm": c}
}
fn pintle_travel_node_57(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 57 * 0.001, -1.0);
    #{"node": 57, "compensated_mm": c}
}
fn pintle_travel_node_58(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 58 * 0.001, -1.0);
    #{"node": 58, "compensated_mm": c}
}
fn pintle_travel_node_59(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 59 * 0.001, -1.0);
    #{"node": 59, "compensated_mm": c}
}
fn pintle_travel_node_60(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 60 * 0.001, -1.0);
    #{"node": 60, "compensated_mm": c}
}
fn pintle_travel_node_61(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 61 * 0.001, -1.0);
    #{"node": 61, "compensated_mm": c}
}
fn pintle_travel_node_62(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 62 * 0.001, -1.0);
    #{"node": 62, "compensated_mm": c}
}
fn pintle_travel_node_63(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 63 * 0.001, -1.0);
    #{"node": 63, "compensated_mm": c}
}
fn pintle_travel_node_64(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 64 * 0.001, -1.0);
    #{"node": 64, "compensated_mm": c}
}
fn pintle_travel_node_65(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 65 * 0.001, -1.0);
    #{"node": 65, "compensated_mm": c}
}
fn pintle_travel_node_66(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 66 * 0.001, -1.0);
    #{"node": 66, "compensated_mm": c}
}
fn pintle_travel_node_67(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 67 * 0.001, -1.0);
    #{"node": 67, "compensated_mm": c}
}
fn pintle_travel_node_68(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 68 * 0.001, -1.0);
    #{"node": 68, "compensated_mm": c}
}
fn pintle_travel_node_69(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 69 * 0.001, -1.0);
    #{"node": 69, "compensated_mm": c}
}
fn pintle_travel_node_70(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 70 * 0.001, -1.0);
    #{"node": 70, "compensated_mm": c}
}
fn pintle_travel_node_71(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 71 * 0.001, -1.0);
    #{"node": 71, "compensated_mm": c}
}
fn pintle_travel_node_72(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 72 * 0.001, -1.0);
    #{"node": 72, "compensated_mm": c}
}
fn pintle_travel_node_73(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 73 * 0.001, -1.0);
    #{"node": 73, "compensated_mm": c}
}
fn pintle_travel_node_74(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 74 * 0.001, -1.0);
    #{"node": 74, "compensated_mm": c}
}
fn pintle_travel_node_75(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 75 * 0.001, -1.0);
    #{"node": 75, "compensated_mm": c}
}
fn pintle_travel_node_76(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 76 * 0.001, -1.0);
    #{"node": 76, "compensated_mm": c}
}
fn pintle_travel_node_77(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 77 * 0.001, -1.0);
    #{"node": 77, "compensated_mm": c}
}
fn pintle_travel_node_78(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 78 * 0.001, -1.0);
    #{"node": 78, "compensated_mm": c}
}
fn pintle_travel_node_79(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 79 * 0.001, -1.0);
    #{"node": 79, "compensated_mm": c}
}
fn pintle_travel_node_80(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 80 * 0.001, -1.0);
    #{"node": 80, "compensated_mm": c}
}
fn pintle_travel_node_81(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 81 * 0.001, -1.0);
    #{"node": 81, "compensated_mm": c}
}
fn pintle_travel_node_82(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 82 * 0.001, -1.0);
    #{"node": 82, "compensated_mm": c}
}
fn pintle_travel_node_83(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 83 * 0.001, -1.0);
    #{"node": 83, "compensated_mm": c}
}
fn pintle_travel_node_84(target) {
    let c = compensate_backlash(target, 5.0, 0.02 + 84 * 0.001, -1.0);
    #{"node": 84, "compensated_mm": c}
}
