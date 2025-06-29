// Chemical Equilibrium and Thermochemistry for LOX/Methane
// NASA CEA analytical approximations across equivalence ratios

fn cea_chamber_temp_k(of_ratio, pc_bar) {
    // Peak flame temp occurs near OF = 3.4 (slightly fuel rich)
    let of_diff = of_ratio - 3.4;
    let t_peak = 3550.0 + 35.0 * (pc_bar / 50.0).log10();
    let t_c = t_peak - 120.0 * of_diff * of_diff;
    t_c.max(1500.0)
}

fn cea_exhaust_gamma(of_ratio) {
    // Ratio of specific heats for combustion products
    1.18 + 0.015 * (of_ratio - 3.0)
}

fn cea_molar_mass_exhaust(of_ratio) {
    // kg / kmol of exhaust gas (lighter when rich)
    20.5 + 1.8 * (of_ratio - 2.5)
}

fn verify_equilibrium() {
    let tc = cea_chamber_temp_k(3.4, 50.0);
    if tc < 3400.0 || tc > 3700.0 { return false; }
    let gamma = cea_exhaust_gamma(3.4);
    if gamma < 1.15 || gamma > 1.25 { return false; }
    true
}
if verify_equilibrium() { log_info("[COMBUSTION::EQUILIBRIUM] Verification passed."); }
fn equilibrium_slice_1(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 1 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 1, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_2(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 2 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 2, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_3(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 3 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 3, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_4(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 4 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 4, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_5(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 5 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 5, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_6(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 6 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 6, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_7(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 7 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 7, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_8(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 8 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 8, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_9(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 9 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 9, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_10(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 10 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 10, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_11(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 11 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 11, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_12(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 12 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 12, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_13(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 13 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 13, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_14(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 14 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 14, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_15(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 15 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 15, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_16(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 16 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 16, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_17(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 17 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 17, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_18(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 18 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 18, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_19(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 19 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 19, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_20(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 20 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 20, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_21(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 21 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 21, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_22(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 22 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 22, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_23(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 23 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 23, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_24(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 24 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 24, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_25(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 25 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 25, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_26(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 26 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 26, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_27(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 27 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 27, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_28(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 28 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 28, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_29(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 29 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 29, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_30(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 30 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 30, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_31(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 31 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 31, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_32(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 32 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 32, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_33(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 33 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 33, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_34(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 34 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 34, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_35(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 35 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 35, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_36(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 36 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 36, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_37(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 37 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 37, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_38(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 38 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 38, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_39(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 39 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 39, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_40(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 40 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 40, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_41(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 41 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 41, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_42(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 42 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 42, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_43(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 43 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 43, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_44(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 44 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 44, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_45(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 45 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 45, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_46(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 46 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 46, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_47(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 47 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 47, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_48(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 48 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 48, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_49(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 49 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 49, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_50(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 50 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 50, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_51(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 51 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 51, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_52(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 52 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 52, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_53(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 53 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 53, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_54(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 54 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 54, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_55(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 55 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 55, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_56(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 56 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 56, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_57(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 57 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 57, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_58(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 58 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 58, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_59(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 59 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 59, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_60(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 60 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 60, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_61(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 61 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 61, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_62(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 62 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 62, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_63(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 63 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 63, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_64(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 64 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 64, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_65(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 65 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 65, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_66(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 66 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 66, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_67(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 67 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 67, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_68(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 68 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 68, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_69(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 69 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 69, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_70(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 70 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 70, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_71(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 71 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 71, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_72(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 72 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 72, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_73(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 73 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 73, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_74(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 74 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 74, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_75(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 75 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 75, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_76(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 76 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 76, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_77(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 77 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 77, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_78(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 78 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 78, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_79(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 79 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 79, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_80(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 80 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 80, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_81(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 81 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 81, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_82(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 82 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 82, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_83(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 83 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 83, "t_flame_k": t, "mw_exhaust": m}
}
fn equilibrium_slice_84(of, pc) {
    let t = cea_chamber_temp_k(of, pc + 84 * 0.1);
    let m = cea_molar_mass_exhaust(of);
    #{"index": 84, "t_flame_k": t, "mw_exhaust": m}
}
