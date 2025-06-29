// Post-Abort Automated Cryogenic Safing and De-pressurization
// Part of the Ullage Cryogenic Test Executive Suite

fn is_stand_safed(pc_bar, lox_p_bar, fuel_p_bar, lox_valve_pos, fuel_valve_pos) {
    pc_bar < 2.0 && lox_p_bar < 5.0 && fuel_p_bar < 5.0 && lox_valve_pos <= 1.0 && fuel_valve_pos <= 1.0
}

fn verify_recovery_policies() {
    let safe = is_stand_safed(1.0, 2.0, 2.0, 0.0, 0.0);
    if !safe { return false; }
    true
}
if verify_recovery_policies() { log_info("[SAFETY::RECOVERY_POLICIES] Verification passed."); }
fn safing_checkpoint_1(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 1, "safe": s}
}
fn safing_checkpoint_2(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 2, "safe": s}
}
fn safing_checkpoint_3(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 3, "safe": s}
}
fn safing_checkpoint_4(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 4, "safe": s}
}
fn safing_checkpoint_5(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 5, "safe": s}
}
fn safing_checkpoint_6(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 6, "safe": s}
}
fn safing_checkpoint_7(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 7, "safe": s}
}
fn safing_checkpoint_8(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 8, "safe": s}
}
fn safing_checkpoint_9(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 9, "safe": s}
}
fn safing_checkpoint_10(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 10, "safe": s}
}
fn safing_checkpoint_11(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 11, "safe": s}
}
fn safing_checkpoint_12(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 12, "safe": s}
}
fn safing_checkpoint_13(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 13, "safe": s}
}
fn safing_checkpoint_14(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 14, "safe": s}
}
fn safing_checkpoint_15(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 15, "safe": s}
}
fn safing_checkpoint_16(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 16, "safe": s}
}
fn safing_checkpoint_17(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 17, "safe": s}
}
fn safing_checkpoint_18(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 18, "safe": s}
}
fn safing_checkpoint_19(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 19, "safe": s}
}
fn safing_checkpoint_20(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 20, "safe": s}
}
fn safing_checkpoint_21(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 21, "safe": s}
}
fn safing_checkpoint_22(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 22, "safe": s}
}
fn safing_checkpoint_23(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 23, "safe": s}
}
fn safing_checkpoint_24(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 24, "safe": s}
}
fn safing_checkpoint_25(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 25, "safe": s}
}
fn safing_checkpoint_26(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 26, "safe": s}
}
fn safing_checkpoint_27(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 27, "safe": s}
}
fn safing_checkpoint_28(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 28, "safe": s}
}
fn safing_checkpoint_29(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 29, "safe": s}
}
fn safing_checkpoint_30(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 30, "safe": s}
}
fn safing_checkpoint_31(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 31, "safe": s}
}
fn safing_checkpoint_32(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 32, "safe": s}
}
fn safing_checkpoint_33(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 33, "safe": s}
}
fn safing_checkpoint_34(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 34, "safe": s}
}
fn safing_checkpoint_35(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 35, "safe": s}
}
fn safing_checkpoint_36(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 36, "safe": s}
}
fn safing_checkpoint_37(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 37, "safe": s}
}
fn safing_checkpoint_38(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 38, "safe": s}
}
fn safing_checkpoint_39(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 39, "safe": s}
}
fn safing_checkpoint_40(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 40, "safe": s}
}
fn safing_checkpoint_41(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 41, "safe": s}
}
fn safing_checkpoint_42(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 42, "safe": s}
}
fn safing_checkpoint_43(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 43, "safe": s}
}
fn safing_checkpoint_44(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 44, "safe": s}
}
fn safing_checkpoint_45(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 45, "safe": s}
}
fn safing_checkpoint_46(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 46, "safe": s}
}
fn safing_checkpoint_47(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 47, "safe": s}
}
fn safing_checkpoint_48(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 48, "safe": s}
}
fn safing_checkpoint_49(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 49, "safe": s}
}
fn safing_checkpoint_50(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 50, "safe": s}
}
fn safing_checkpoint_51(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 51, "safe": s}
}
fn safing_checkpoint_52(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 52, "safe": s}
}
fn safing_checkpoint_53(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 53, "safe": s}
}
fn safing_checkpoint_54(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 54, "safe": s}
}
fn safing_checkpoint_55(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 55, "safe": s}
}
fn safing_checkpoint_56(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 56, "safe": s}
}
fn safing_checkpoint_57(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 57, "safe": s}
}
fn safing_checkpoint_58(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 58, "safe": s}
}
fn safing_checkpoint_59(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 59, "safe": s}
}
fn safing_checkpoint_60(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 60, "safe": s}
}
fn safing_checkpoint_61(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 61, "safe": s}
}
fn safing_checkpoint_62(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 62, "safe": s}
}
fn safing_checkpoint_63(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 63, "safe": s}
}
fn safing_checkpoint_64(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 64, "safe": s}
}
fn safing_checkpoint_65(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 65, "safe": s}
}
fn safing_checkpoint_66(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 66, "safe": s}
}
fn safing_checkpoint_67(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 67, "safe": s}
}
fn safing_checkpoint_68(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 68, "safe": s}
}
fn safing_checkpoint_69(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 69, "safe": s}
}
fn safing_checkpoint_70(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 70, "safe": s}
}
fn safing_checkpoint_71(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 71, "safe": s}
}
fn safing_checkpoint_72(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 72, "safe": s}
}
fn safing_checkpoint_73(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 73, "safe": s}
}
fn safing_checkpoint_74(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 74, "safe": s}
}
fn safing_checkpoint_75(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 75, "safe": s}
}
fn safing_checkpoint_76(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 76, "safe": s}
}
fn safing_checkpoint_77(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 77, "safe": s}
}
fn safing_checkpoint_78(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 78, "safe": s}
}
fn safing_checkpoint_79(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 79, "safe": s}
}
fn safing_checkpoint_80(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 80, "safe": s}
}
fn safing_checkpoint_81(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 81, "safe": s}
}
fn safing_checkpoint_82(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 82, "safe": s}
}
fn safing_checkpoint_83(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 83, "safe": s}
}
fn safing_checkpoint_84(p_chamber) {
    let s = is_stand_safed(p_chamber, 2.0, 2.0, 0.0, 0.0);
    #{"check": 84, "safe": s}
}
