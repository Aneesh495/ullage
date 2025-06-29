// Helical Inducer Cavitation Inception and Breakdown
// Part of the Ullage Cryogenic Test Executive Suite

fn inducer_cavitation_number(p_in_bar, p_vapor_bar, rho, w1_rel_vel_m_s) {
    let delta_p_pa = (p_in_bar - p_vapor_bar) * 100000.0;
    let dynamic_p = 0.5 * rho * w1_rel_vel_m_s * w1_rel_vel_m_s;
    delta_p_pa / dynamic_p
}

fn verify_inducer() {
    let sigma = inducer_cavitation_number(4.0, 1.0, 1141.0, 50.0);
    if sigma <= 0.0 { return false; }
    true
}
if verify_inducer() { log_info("[TURBO::INDUCER_CAVITATION] Verification passed."); }
fn inducer_blade_element_1(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 1 * 0.5);
    #{"blade": 1, "sigma": sig}
}
fn inducer_blade_element_2(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 2 * 0.5);
    #{"blade": 2, "sigma": sig}
}
fn inducer_blade_element_3(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 3 * 0.5);
    #{"blade": 3, "sigma": sig}
}
fn inducer_blade_element_4(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 4 * 0.5);
    #{"blade": 4, "sigma": sig}
}
fn inducer_blade_element_5(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 5 * 0.5);
    #{"blade": 5, "sigma": sig}
}
fn inducer_blade_element_6(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 6 * 0.5);
    #{"blade": 6, "sigma": sig}
}
fn inducer_blade_element_7(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 7 * 0.5);
    #{"blade": 7, "sigma": sig}
}
fn inducer_blade_element_8(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 8 * 0.5);
    #{"blade": 8, "sigma": sig}
}
fn inducer_blade_element_9(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 9 * 0.5);
    #{"blade": 9, "sigma": sig}
}
fn inducer_blade_element_10(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 10 * 0.5);
    #{"blade": 10, "sigma": sig}
}
fn inducer_blade_element_11(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 11 * 0.5);
    #{"blade": 11, "sigma": sig}
}
fn inducer_blade_element_12(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 12 * 0.5);
    #{"blade": 12, "sigma": sig}
}
fn inducer_blade_element_13(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 13 * 0.5);
    #{"blade": 13, "sigma": sig}
}
fn inducer_blade_element_14(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 14 * 0.5);
    #{"blade": 14, "sigma": sig}
}
fn inducer_blade_element_15(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 15 * 0.5);
    #{"blade": 15, "sigma": sig}
}
fn inducer_blade_element_16(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 16 * 0.5);
    #{"blade": 16, "sigma": sig}
}
fn inducer_blade_element_17(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 17 * 0.5);
    #{"blade": 17, "sigma": sig}
}
fn inducer_blade_element_18(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 18 * 0.5);
    #{"blade": 18, "sigma": sig}
}
fn inducer_blade_element_19(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 19 * 0.5);
    #{"blade": 19, "sigma": sig}
}
fn inducer_blade_element_20(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 20 * 0.5);
    #{"blade": 20, "sigma": sig}
}
fn inducer_blade_element_21(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 21 * 0.5);
    #{"blade": 21, "sigma": sig}
}
fn inducer_blade_element_22(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 22 * 0.5);
    #{"blade": 22, "sigma": sig}
}
fn inducer_blade_element_23(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 23 * 0.5);
    #{"blade": 23, "sigma": sig}
}
fn inducer_blade_element_24(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 24 * 0.5);
    #{"blade": 24, "sigma": sig}
}
fn inducer_blade_element_25(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 25 * 0.5);
    #{"blade": 25, "sigma": sig}
}
fn inducer_blade_element_26(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 26 * 0.5);
    #{"blade": 26, "sigma": sig}
}
fn inducer_blade_element_27(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 27 * 0.5);
    #{"blade": 27, "sigma": sig}
}
fn inducer_blade_element_28(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 28 * 0.5);
    #{"blade": 28, "sigma": sig}
}
fn inducer_blade_element_29(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 29 * 0.5);
    #{"blade": 29, "sigma": sig}
}
fn inducer_blade_element_30(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 30 * 0.5);
    #{"blade": 30, "sigma": sig}
}
fn inducer_blade_element_31(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 31 * 0.5);
    #{"blade": 31, "sigma": sig}
}
fn inducer_blade_element_32(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 32 * 0.5);
    #{"blade": 32, "sigma": sig}
}
fn inducer_blade_element_33(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 33 * 0.5);
    #{"blade": 33, "sigma": sig}
}
fn inducer_blade_element_34(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 34 * 0.5);
    #{"blade": 34, "sigma": sig}
}
fn inducer_blade_element_35(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 35 * 0.5);
    #{"blade": 35, "sigma": sig}
}
fn inducer_blade_element_36(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 36 * 0.5);
    #{"blade": 36, "sigma": sig}
}
fn inducer_blade_element_37(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 37 * 0.5);
    #{"blade": 37, "sigma": sig}
}
fn inducer_blade_element_38(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 38 * 0.5);
    #{"blade": 38, "sigma": sig}
}
fn inducer_blade_element_39(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 39 * 0.5);
    #{"blade": 39, "sigma": sig}
}
fn inducer_blade_element_40(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 40 * 0.5);
    #{"blade": 40, "sigma": sig}
}
fn inducer_blade_element_41(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 41 * 0.5);
    #{"blade": 41, "sigma": sig}
}
fn inducer_blade_element_42(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 42 * 0.5);
    #{"blade": 42, "sigma": sig}
}
fn inducer_blade_element_43(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 43 * 0.5);
    #{"blade": 43, "sigma": sig}
}
fn inducer_blade_element_44(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 44 * 0.5);
    #{"blade": 44, "sigma": sig}
}
fn inducer_blade_element_45(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 45 * 0.5);
    #{"blade": 45, "sigma": sig}
}
fn inducer_blade_element_46(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 46 * 0.5);
    #{"blade": 46, "sigma": sig}
}
fn inducer_blade_element_47(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 47 * 0.5);
    #{"blade": 47, "sigma": sig}
}
fn inducer_blade_element_48(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 48 * 0.5);
    #{"blade": 48, "sigma": sig}
}
fn inducer_blade_element_49(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 49 * 0.5);
    #{"blade": 49, "sigma": sig}
}
fn inducer_blade_element_50(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 50 * 0.5);
    #{"blade": 50, "sigma": sig}
}
fn inducer_blade_element_51(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 51 * 0.5);
    #{"blade": 51, "sigma": sig}
}
fn inducer_blade_element_52(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 52 * 0.5);
    #{"blade": 52, "sigma": sig}
}
fn inducer_blade_element_53(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 53 * 0.5);
    #{"blade": 53, "sigma": sig}
}
fn inducer_blade_element_54(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 54 * 0.5);
    #{"blade": 54, "sigma": sig}
}
fn inducer_blade_element_55(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 55 * 0.5);
    #{"blade": 55, "sigma": sig}
}
fn inducer_blade_element_56(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 56 * 0.5);
    #{"blade": 56, "sigma": sig}
}
fn inducer_blade_element_57(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 57 * 0.5);
    #{"blade": 57, "sigma": sig}
}
fn inducer_blade_element_58(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 58 * 0.5);
    #{"blade": 58, "sigma": sig}
}
fn inducer_blade_element_59(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 59 * 0.5);
    #{"blade": 59, "sigma": sig}
}
fn inducer_blade_element_60(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 60 * 0.5);
    #{"blade": 60, "sigma": sig}
}
fn inducer_blade_element_61(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 61 * 0.5);
    #{"blade": 61, "sigma": sig}
}
fn inducer_blade_element_62(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 62 * 0.5);
    #{"blade": 62, "sigma": sig}
}
fn inducer_blade_element_63(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 63 * 0.5);
    #{"blade": 63, "sigma": sig}
}
fn inducer_blade_element_64(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 64 * 0.5);
    #{"blade": 64, "sigma": sig}
}
fn inducer_blade_element_65(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 65 * 0.5);
    #{"blade": 65, "sigma": sig}
}
fn inducer_blade_element_66(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 66 * 0.5);
    #{"blade": 66, "sigma": sig}
}
fn inducer_blade_element_67(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 67 * 0.5);
    #{"blade": 67, "sigma": sig}
}
fn inducer_blade_element_68(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 68 * 0.5);
    #{"blade": 68, "sigma": sig}
}
fn inducer_blade_element_69(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 69 * 0.5);
    #{"blade": 69, "sigma": sig}
}
fn inducer_blade_element_70(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 70 * 0.5);
    #{"blade": 70, "sigma": sig}
}
fn inducer_blade_element_71(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 71 * 0.5);
    #{"blade": 71, "sigma": sig}
}
fn inducer_blade_element_72(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 72 * 0.5);
    #{"blade": 72, "sigma": sig}
}
fn inducer_blade_element_73(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 73 * 0.5);
    #{"blade": 73, "sigma": sig}
}
fn inducer_blade_element_74(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 74 * 0.5);
    #{"blade": 74, "sigma": sig}
}
fn inducer_blade_element_75(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 75 * 0.5);
    #{"blade": 75, "sigma": sig}
}
fn inducer_blade_element_76(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 76 * 0.5);
    #{"blade": 76, "sigma": sig}
}
fn inducer_blade_element_77(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 77 * 0.5);
    #{"blade": 77, "sigma": sig}
}
fn inducer_blade_element_78(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 78 * 0.5);
    #{"blade": 78, "sigma": sig}
}
fn inducer_blade_element_79(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 79 * 0.5);
    #{"blade": 79, "sigma": sig}
}
fn inducer_blade_element_80(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 80 * 0.5);
    #{"blade": 80, "sigma": sig}
}
fn inducer_blade_element_81(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 81 * 0.5);
    #{"blade": 81, "sigma": sig}
}
fn inducer_blade_element_82(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 82 * 0.5);
    #{"blade": 82, "sigma": sig}
}
fn inducer_blade_element_83(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 83 * 0.5);
    #{"blade": 83, "sigma": sig}
}
fn inducer_blade_element_84(w_rel) {
    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + 84 * 0.5);
    #{"blade": 84, "sigma": sig}
}
