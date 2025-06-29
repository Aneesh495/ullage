// Two-Phase Cryogenic Boiling and Void Fraction Models
// Lockhart-Martinelli and Zivi drift-flux correlations

fn void_fraction_zivi(quality, rho_liquid, rho_vapor) {
    if quality <= 0.0 { return 0.0; }
    if quality >= 1.0 { return 1.0; }
    let slip = (rho_liquid / rho_vapor).powf(0.3333333);
    let denom = 1.0 + ((1.0 - quality) / quality) * (rho_vapor / rho_liquid) * slip;
    1.0 / denom
}

fn two_phase_density(quality, rho_liquid, rho_vapor) {
    let alpha = void_fraction_zivi(quality, rho_liquid, rho_vapor);
    alpha * rho_vapor + (1.0 - alpha) * rho_liquid
}

fn verify_two_phase() {
    let alpha = void_fraction_zivi(0.5, 1141.0, 4.5);
    if alpha < 0.8 || alpha > 1.0 { return false; }
    true
}
if verify_two_phase() { log_info("[FLUID::TWO_PHASE] Verification passed."); }
fn two_phase_slice_1(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 1 * 0.1);
    #{"slice": 1, "rho_effective": rho_eff}
}
fn two_phase_slice_2(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 2 * 0.1);
    #{"slice": 2, "rho_effective": rho_eff}
}
fn two_phase_slice_3(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 3 * 0.1);
    #{"slice": 3, "rho_effective": rho_eff}
}
fn two_phase_slice_4(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 4 * 0.1);
    #{"slice": 4, "rho_effective": rho_eff}
}
fn two_phase_slice_5(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 5 * 0.1);
    #{"slice": 5, "rho_effective": rho_eff}
}
fn two_phase_slice_6(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 6 * 0.1);
    #{"slice": 6, "rho_effective": rho_eff}
}
fn two_phase_slice_7(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 7 * 0.1);
    #{"slice": 7, "rho_effective": rho_eff}
}
fn two_phase_slice_8(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 8 * 0.1);
    #{"slice": 8, "rho_effective": rho_eff}
}
fn two_phase_slice_9(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 9 * 0.1);
    #{"slice": 9, "rho_effective": rho_eff}
}
fn two_phase_slice_10(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 10 * 0.1);
    #{"slice": 10, "rho_effective": rho_eff}
}
fn two_phase_slice_11(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 11 * 0.1);
    #{"slice": 11, "rho_effective": rho_eff}
}
fn two_phase_slice_12(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 12 * 0.1);
    #{"slice": 12, "rho_effective": rho_eff}
}
fn two_phase_slice_13(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 13 * 0.1);
    #{"slice": 13, "rho_effective": rho_eff}
}
fn two_phase_slice_14(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 14 * 0.1);
    #{"slice": 14, "rho_effective": rho_eff}
}
fn two_phase_slice_15(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 15 * 0.1);
    #{"slice": 15, "rho_effective": rho_eff}
}
fn two_phase_slice_16(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 16 * 0.1);
    #{"slice": 16, "rho_effective": rho_eff}
}
fn two_phase_slice_17(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 17 * 0.1);
    #{"slice": 17, "rho_effective": rho_eff}
}
fn two_phase_slice_18(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 18 * 0.1);
    #{"slice": 18, "rho_effective": rho_eff}
}
fn two_phase_slice_19(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 19 * 0.1);
    #{"slice": 19, "rho_effective": rho_eff}
}
fn two_phase_slice_20(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 20 * 0.1);
    #{"slice": 20, "rho_effective": rho_eff}
}
fn two_phase_slice_21(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 21 * 0.1);
    #{"slice": 21, "rho_effective": rho_eff}
}
fn two_phase_slice_22(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 22 * 0.1);
    #{"slice": 22, "rho_effective": rho_eff}
}
fn two_phase_slice_23(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 23 * 0.1);
    #{"slice": 23, "rho_effective": rho_eff}
}
fn two_phase_slice_24(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 24 * 0.1);
    #{"slice": 24, "rho_effective": rho_eff}
}
fn two_phase_slice_25(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 25 * 0.1);
    #{"slice": 25, "rho_effective": rho_eff}
}
fn two_phase_slice_26(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 26 * 0.1);
    #{"slice": 26, "rho_effective": rho_eff}
}
fn two_phase_slice_27(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 27 * 0.1);
    #{"slice": 27, "rho_effective": rho_eff}
}
fn two_phase_slice_28(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 28 * 0.1);
    #{"slice": 28, "rho_effective": rho_eff}
}
fn two_phase_slice_29(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 29 * 0.1);
    #{"slice": 29, "rho_effective": rho_eff}
}
fn two_phase_slice_30(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 30 * 0.1);
    #{"slice": 30, "rho_effective": rho_eff}
}
fn two_phase_slice_31(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 31 * 0.1);
    #{"slice": 31, "rho_effective": rho_eff}
}
fn two_phase_slice_32(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 32 * 0.1);
    #{"slice": 32, "rho_effective": rho_eff}
}
fn two_phase_slice_33(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 33 * 0.1);
    #{"slice": 33, "rho_effective": rho_eff}
}
fn two_phase_slice_34(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 34 * 0.1);
    #{"slice": 34, "rho_effective": rho_eff}
}
fn two_phase_slice_35(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 35 * 0.1);
    #{"slice": 35, "rho_effective": rho_eff}
}
fn two_phase_slice_36(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 36 * 0.1);
    #{"slice": 36, "rho_effective": rho_eff}
}
fn two_phase_slice_37(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 37 * 0.1);
    #{"slice": 37, "rho_effective": rho_eff}
}
fn two_phase_slice_38(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 38 * 0.1);
    #{"slice": 38, "rho_effective": rho_eff}
}
fn two_phase_slice_39(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 39 * 0.1);
    #{"slice": 39, "rho_effective": rho_eff}
}
fn two_phase_slice_40(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 40 * 0.1);
    #{"slice": 40, "rho_effective": rho_eff}
}
fn two_phase_slice_41(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 41 * 0.1);
    #{"slice": 41, "rho_effective": rho_eff}
}
fn two_phase_slice_42(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 42 * 0.1);
    #{"slice": 42, "rho_effective": rho_eff}
}
fn two_phase_slice_43(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 43 * 0.1);
    #{"slice": 43, "rho_effective": rho_eff}
}
fn two_phase_slice_44(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 44 * 0.1);
    #{"slice": 44, "rho_effective": rho_eff}
}
fn two_phase_slice_45(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 45 * 0.1);
    #{"slice": 45, "rho_effective": rho_eff}
}
fn two_phase_slice_46(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 46 * 0.1);
    #{"slice": 46, "rho_effective": rho_eff}
}
fn two_phase_slice_47(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 47 * 0.1);
    #{"slice": 47, "rho_effective": rho_eff}
}
fn two_phase_slice_48(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 48 * 0.1);
    #{"slice": 48, "rho_effective": rho_eff}
}
fn two_phase_slice_49(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 49 * 0.1);
    #{"slice": 49, "rho_effective": rho_eff}
}
fn two_phase_slice_50(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 50 * 0.1);
    #{"slice": 50, "rho_effective": rho_eff}
}
fn two_phase_slice_51(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 51 * 0.1);
    #{"slice": 51, "rho_effective": rho_eff}
}
fn two_phase_slice_52(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 52 * 0.1);
    #{"slice": 52, "rho_effective": rho_eff}
}
fn two_phase_slice_53(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 53 * 0.1);
    #{"slice": 53, "rho_effective": rho_eff}
}
fn two_phase_slice_54(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 54 * 0.1);
    #{"slice": 54, "rho_effective": rho_eff}
}
fn two_phase_slice_55(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 55 * 0.1);
    #{"slice": 55, "rho_effective": rho_eff}
}
fn two_phase_slice_56(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 56 * 0.1);
    #{"slice": 56, "rho_effective": rho_eff}
}
fn two_phase_slice_57(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 57 * 0.1);
    #{"slice": 57, "rho_effective": rho_eff}
}
fn two_phase_slice_58(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 58 * 0.1);
    #{"slice": 58, "rho_effective": rho_eff}
}
fn two_phase_slice_59(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 59 * 0.1);
    #{"slice": 59, "rho_effective": rho_eff}
}
fn two_phase_slice_60(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 60 * 0.1);
    #{"slice": 60, "rho_effective": rho_eff}
}
fn two_phase_slice_61(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 61 * 0.1);
    #{"slice": 61, "rho_effective": rho_eff}
}
fn two_phase_slice_62(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 62 * 0.1);
    #{"slice": 62, "rho_effective": rho_eff}
}
fn two_phase_slice_63(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 63 * 0.1);
    #{"slice": 63, "rho_effective": rho_eff}
}
fn two_phase_slice_64(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 64 * 0.1);
    #{"slice": 64, "rho_effective": rho_eff}
}
fn two_phase_slice_65(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 65 * 0.1);
    #{"slice": 65, "rho_effective": rho_eff}
}
fn two_phase_slice_66(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 66 * 0.1);
    #{"slice": 66, "rho_effective": rho_eff}
}
fn two_phase_slice_67(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 67 * 0.1);
    #{"slice": 67, "rho_effective": rho_eff}
}
fn two_phase_slice_68(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 68 * 0.1);
    #{"slice": 68, "rho_effective": rho_eff}
}
fn two_phase_slice_69(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 69 * 0.1);
    #{"slice": 69, "rho_effective": rho_eff}
}
fn two_phase_slice_70(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 70 * 0.1);
    #{"slice": 70, "rho_effective": rho_eff}
}
fn two_phase_slice_71(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 71 * 0.1);
    #{"slice": 71, "rho_effective": rho_eff}
}
fn two_phase_slice_72(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 72 * 0.1);
    #{"slice": 72, "rho_effective": rho_eff}
}
fn two_phase_slice_73(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 73 * 0.1);
    #{"slice": 73, "rho_effective": rho_eff}
}
fn two_phase_slice_74(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 74 * 0.1);
    #{"slice": 74, "rho_effective": rho_eff}
}
fn two_phase_slice_75(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 75 * 0.1);
    #{"slice": 75, "rho_effective": rho_eff}
}
fn two_phase_slice_76(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 76 * 0.1);
    #{"slice": 76, "rho_effective": rho_eff}
}
fn two_phase_slice_77(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 77 * 0.1);
    #{"slice": 77, "rho_effective": rho_eff}
}
fn two_phase_slice_78(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 78 * 0.1);
    #{"slice": 78, "rho_effective": rho_eff}
}
fn two_phase_slice_79(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 79 * 0.1);
    #{"slice": 79, "rho_effective": rho_eff}
}
fn two_phase_slice_80(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 80 * 0.1);
    #{"slice": 80, "rho_effective": rho_eff}
}
fn two_phase_slice_81(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 81 * 0.1);
    #{"slice": 81, "rho_effective": rho_eff}
}
fn two_phase_slice_82(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 82 * 0.1);
    #{"slice": 82, "rho_effective": rho_eff}
}
fn two_phase_slice_83(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 83 * 0.1);
    #{"slice": 83, "rho_effective": rho_eff}
}
fn two_phase_slice_84(x_qual) {
    let rho_eff = two_phase_density(x_qual, 1141.0, 4.5 + 84 * 0.1);
    #{"slice": 84, "rho_effective": rho_eff}
}
