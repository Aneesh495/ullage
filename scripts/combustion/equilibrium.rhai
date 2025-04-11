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
