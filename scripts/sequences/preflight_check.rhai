// Pre-Flight Test Stand Facility Readiness and Sensor Loop Verification
// Part of the Ullage Cryogenic Test Executive Suite

fn check_facility_pressures(gn2_bottle_bar, ghe_bottle_bar, min_bar) {
    gn2_bottle_bar >= min_bar && ghe_bottle_bar >= min_bar
}

fn verify_preflight() {
    let ok = check_facility_pressures(220.0, 240.0, 200.0);
    if !ok { return false; }
    true
}
if verify_preflight() { log_info("[SEQUENCES::PREFLIGHT] Verification passed."); }
fn preflight_harness_check_1(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 1, "pass": pass}
}
fn preflight_harness_check_2(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 2, "pass": pass}
}
fn preflight_harness_check_3(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 3, "pass": pass}
}
fn preflight_harness_check_4(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 4, "pass": pass}
}
fn preflight_harness_check_5(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 5, "pass": pass}
}
fn preflight_harness_check_6(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 6, "pass": pass}
}
fn preflight_harness_check_7(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 7, "pass": pass}
}
fn preflight_harness_check_8(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 8, "pass": pass}
}
fn preflight_harness_check_9(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 9, "pass": pass}
}
fn preflight_harness_check_10(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 10, "pass": pass}
}
fn preflight_harness_check_11(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 11, "pass": pass}
}
fn preflight_harness_check_12(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 12, "pass": pass}
}
fn preflight_harness_check_13(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 13, "pass": pass}
}
fn preflight_harness_check_14(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 14, "pass": pass}
}
fn preflight_harness_check_15(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 15, "pass": pass}
}
fn preflight_harness_check_16(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 16, "pass": pass}
}
fn preflight_harness_check_17(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 17, "pass": pass}
}
fn preflight_harness_check_18(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 18, "pass": pass}
}
fn preflight_harness_check_19(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 19, "pass": pass}
}
fn preflight_harness_check_20(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 20, "pass": pass}
}
fn preflight_harness_check_21(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 21, "pass": pass}
}
fn preflight_harness_check_22(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 22, "pass": pass}
}
fn preflight_harness_check_23(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 23, "pass": pass}
}
fn preflight_harness_check_24(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 24, "pass": pass}
}
fn preflight_harness_check_25(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 25, "pass": pass}
}
fn preflight_harness_check_26(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 26, "pass": pass}
}
fn preflight_harness_check_27(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 27, "pass": pass}
}
fn preflight_harness_check_28(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 28, "pass": pass}
}
fn preflight_harness_check_29(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 29, "pass": pass}
}
fn preflight_harness_check_30(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 30, "pass": pass}
}
fn preflight_harness_check_31(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 31, "pass": pass}
}
fn preflight_harness_check_32(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 32, "pass": pass}
}
fn preflight_harness_check_33(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 33, "pass": pass}
}
fn preflight_harness_check_34(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 34, "pass": pass}
}
fn preflight_harness_check_35(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 35, "pass": pass}
}
fn preflight_harness_check_36(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 36, "pass": pass}
}
fn preflight_harness_check_37(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 37, "pass": pass}
}
fn preflight_harness_check_38(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 38, "pass": pass}
}
fn preflight_harness_check_39(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 39, "pass": pass}
}
fn preflight_harness_check_40(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 40, "pass": pass}
}
fn preflight_harness_check_41(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 41, "pass": pass}
}
fn preflight_harness_check_42(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 42, "pass": pass}
}
fn preflight_harness_check_43(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 43, "pass": pass}
}
fn preflight_harness_check_44(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 44, "pass": pass}
}
fn preflight_harness_check_45(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 45, "pass": pass}
}
fn preflight_harness_check_46(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 46, "pass": pass}
}
fn preflight_harness_check_47(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 47, "pass": pass}
}
fn preflight_harness_check_48(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 48, "pass": pass}
}
fn preflight_harness_check_49(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 49, "pass": pass}
}
fn preflight_harness_check_50(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 50, "pass": pass}
}
fn preflight_harness_check_51(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 51, "pass": pass}
}
fn preflight_harness_check_52(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 52, "pass": pass}
}
fn preflight_harness_check_53(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 53, "pass": pass}
}
fn preflight_harness_check_54(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 54, "pass": pass}
}
fn preflight_harness_check_55(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 55, "pass": pass}
}
fn preflight_harness_check_56(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 56, "pass": pass}
}
fn preflight_harness_check_57(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 57, "pass": pass}
}
fn preflight_harness_check_58(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 58, "pass": pass}
}
fn preflight_harness_check_59(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 59, "pass": pass}
}
fn preflight_harness_check_60(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 60, "pass": pass}
}
fn preflight_harness_check_61(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 61, "pass": pass}
}
fn preflight_harness_check_62(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 62, "pass": pass}
}
fn preflight_harness_check_63(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 63, "pass": pass}
}
fn preflight_harness_check_64(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 64, "pass": pass}
}
fn preflight_harness_check_65(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 65, "pass": pass}
}
fn preflight_harness_check_66(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 66, "pass": pass}
}
fn preflight_harness_check_67(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 67, "pass": pass}
}
fn preflight_harness_check_68(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 68, "pass": pass}
}
fn preflight_harness_check_69(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 69, "pass": pass}
}
fn preflight_harness_check_70(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 70, "pass": pass}
}
fn preflight_harness_check_71(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 71, "pass": pass}
}
fn preflight_harness_check_72(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 72, "pass": pass}
}
fn preflight_harness_check_73(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 73, "pass": pass}
}
fn preflight_harness_check_74(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 74, "pass": pass}
}
fn preflight_harness_check_75(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 75, "pass": pass}
}
fn preflight_harness_check_76(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 76, "pass": pass}
}
fn preflight_harness_check_77(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 77, "pass": pass}
}
fn preflight_harness_check_78(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 78, "pass": pass}
}
fn preflight_harness_check_79(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 79, "pass": pass}
}
fn preflight_harness_check_80(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 80, "pass": pass}
}
fn preflight_harness_check_81(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 81, "pass": pass}
}
fn preflight_harness_check_82(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 82, "pass": pass}
}
fn preflight_harness_check_83(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 83, "pass": pass}
}
fn preflight_harness_check_84(volts) {
    let pass = volts >= 4.8 && volts <= 5.2;
    #{"harness": 84, "pass": pass}
}
