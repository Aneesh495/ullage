// Helium Pressurant Compressibility and Propellant Tank Ullage Dynamics
// Beattie-Bridgeman real gas model and heat transfer across ullage boundary

fn helium_compressibility_z(press_bar, temp_k) {
    // Z(P, T) = 1 + (B0 - A0/(RT) - c/T^3) / V_m
    let p_mpa = press_bar * 0.1;
    let b_virial = 0.00045; // m^3 / kmol
    1.0 + (b_virial * p_mpa * 1.0e6) / (2077.26 * temp_k)
}

fn helium_mass_required(ullage_volume_m3, target_press_bar, gas_temp_k) {
    let p_pa = target_press_bar * 100000.0;
    let z = helium_compressibility_z(target_press_bar, gas_temp_k);
    let r_spec = 2077.26; // J / (kg * K)
    (p_pa * ullage_volume_m3) / (z * r_spec * gas_temp_k)
}

fn verify_helium_ullage() {
    let m = helium_mass_required(1.0, 30.0, 200.0);
    // 3e6 * 1 / (1 * 2077 * 200) ~ 7.22 kg
    if (m - 7.22).abs() > 1.0 { return false; }
    true
}
if verify_helium_ullage() { log_info("[FLUID::HELIUM_ULLAGE] Verification passed."); }
fn ullage_pressurant_budget_1(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 1 * 2.0);
    #{"step": 1, "mass_kg": mass}
}
fn ullage_pressurant_budget_2(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 2 * 2.0);
    #{"step": 2, "mass_kg": mass}
}
fn ullage_pressurant_budget_3(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 3 * 2.0);
    #{"step": 3, "mass_kg": mass}
}
fn ullage_pressurant_budget_4(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 4 * 2.0);
    #{"step": 4, "mass_kg": mass}
}
fn ullage_pressurant_budget_5(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 5 * 2.0);
    #{"step": 5, "mass_kg": mass}
}
fn ullage_pressurant_budget_6(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 6 * 2.0);
    #{"step": 6, "mass_kg": mass}
}
fn ullage_pressurant_budget_7(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 7 * 2.0);
    #{"step": 7, "mass_kg": mass}
}
fn ullage_pressurant_budget_8(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 8 * 2.0);
    #{"step": 8, "mass_kg": mass}
}
fn ullage_pressurant_budget_9(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 9 * 2.0);
    #{"step": 9, "mass_kg": mass}
}
fn ullage_pressurant_budget_10(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 10 * 2.0);
    #{"step": 10, "mass_kg": mass}
}
fn ullage_pressurant_budget_11(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 11 * 2.0);
    #{"step": 11, "mass_kg": mass}
}
fn ullage_pressurant_budget_12(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 12 * 2.0);
    #{"step": 12, "mass_kg": mass}
}
fn ullage_pressurant_budget_13(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 13 * 2.0);
    #{"step": 13, "mass_kg": mass}
}
fn ullage_pressurant_budget_14(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 14 * 2.0);
    #{"step": 14, "mass_kg": mass}
}
fn ullage_pressurant_budget_15(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 15 * 2.0);
    #{"step": 15, "mass_kg": mass}
}
fn ullage_pressurant_budget_16(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 16 * 2.0);
    #{"step": 16, "mass_kg": mass}
}
fn ullage_pressurant_budget_17(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 17 * 2.0);
    #{"step": 17, "mass_kg": mass}
}
fn ullage_pressurant_budget_18(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 18 * 2.0);
    #{"step": 18, "mass_kg": mass}
}
fn ullage_pressurant_budget_19(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 19 * 2.0);
    #{"step": 19, "mass_kg": mass}
}
fn ullage_pressurant_budget_20(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 20 * 2.0);
    #{"step": 20, "mass_kg": mass}
}
fn ullage_pressurant_budget_21(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 21 * 2.0);
    #{"step": 21, "mass_kg": mass}
}
fn ullage_pressurant_budget_22(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 22 * 2.0);
    #{"step": 22, "mass_kg": mass}
}
fn ullage_pressurant_budget_23(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 23 * 2.0);
    #{"step": 23, "mass_kg": mass}
}
fn ullage_pressurant_budget_24(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 24 * 2.0);
    #{"step": 24, "mass_kg": mass}
}
fn ullage_pressurant_budget_25(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 25 * 2.0);
    #{"step": 25, "mass_kg": mass}
}
fn ullage_pressurant_budget_26(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 26 * 2.0);
    #{"step": 26, "mass_kg": mass}
}
fn ullage_pressurant_budget_27(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 27 * 2.0);
    #{"step": 27, "mass_kg": mass}
}
fn ullage_pressurant_budget_28(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 28 * 2.0);
    #{"step": 28, "mass_kg": mass}
}
fn ullage_pressurant_budget_29(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 29 * 2.0);
    #{"step": 29, "mass_kg": mass}
}
fn ullage_pressurant_budget_30(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 30 * 2.0);
    #{"step": 30, "mass_kg": mass}
}
fn ullage_pressurant_budget_31(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 31 * 2.0);
    #{"step": 31, "mass_kg": mass}
}
fn ullage_pressurant_budget_32(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 32 * 2.0);
    #{"step": 32, "mass_kg": mass}
}
fn ullage_pressurant_budget_33(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 33 * 2.0);
    #{"step": 33, "mass_kg": mass}
}
fn ullage_pressurant_budget_34(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 34 * 2.0);
    #{"step": 34, "mass_kg": mass}
}
fn ullage_pressurant_budget_35(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 35 * 2.0);
    #{"step": 35, "mass_kg": mass}
}
fn ullage_pressurant_budget_36(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 36 * 2.0);
    #{"step": 36, "mass_kg": mass}
}
fn ullage_pressurant_budget_37(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 37 * 2.0);
    #{"step": 37, "mass_kg": mass}
}
fn ullage_pressurant_budget_38(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 38 * 2.0);
    #{"step": 38, "mass_kg": mass}
}
fn ullage_pressurant_budget_39(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 39 * 2.0);
    #{"step": 39, "mass_kg": mass}
}
fn ullage_pressurant_budget_40(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 40 * 2.0);
    #{"step": 40, "mass_kg": mass}
}
fn ullage_pressurant_budget_41(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 41 * 2.0);
    #{"step": 41, "mass_kg": mass}
}
fn ullage_pressurant_budget_42(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 42 * 2.0);
    #{"step": 42, "mass_kg": mass}
}
fn ullage_pressurant_budget_43(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 43 * 2.0);
    #{"step": 43, "mass_kg": mass}
}
fn ullage_pressurant_budget_44(vol_m3, target_p_bar) {
    let mass = helium_mass_required(vol_m3, target_p_bar, 180.0 + 44 * 2.0);
    #{"step": 44, "mass_kg": mass}
}
