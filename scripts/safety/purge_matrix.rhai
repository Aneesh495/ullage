// Emergency Nitrogen Purge Activation and Line Inerting
// Part of the Ullage Cryogenic Test Executive Suite

fn purge_manifold_mass_flow(manifold_p_bar, nozzle_area_sq_m) {
    let p_pa = manifold_p_bar * 100000.0;
    let gamma = 1.40;
    let r_gn2 = 296.8;
    let t_k = 280.0;
    // Choked flow formula for GN2 blast
    let c_star = (gamma * r_gn2 * t_k).sqrt() / (gamma * ((2.0 / (gamma + 1.0)).powf((gamma + 1.0)/(2.0*(gamma - 1.0)))));
    (p_pa * nozzle_area_sq_m) / c_star
}

fn verify_purge_matrix() {
    let flow = purge_manifold_mass_flow(30.0, 0.0002);
    if flow <= 0.0 { return false; }
    true
}
if verify_purge_matrix() { log_info("[SAFETY::PURGE_MATRIX] Verification passed."); }
fn gn2_purge_orifice_1(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 1 * 0.2, 0.0002);
    #{"orifice": 1, "purge_kg_s": q}
}
fn gn2_purge_orifice_2(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 2 * 0.2, 0.0002);
    #{"orifice": 2, "purge_kg_s": q}
}
fn gn2_purge_orifice_3(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 3 * 0.2, 0.0002);
    #{"orifice": 3, "purge_kg_s": q}
}
fn gn2_purge_orifice_4(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 4 * 0.2, 0.0002);
    #{"orifice": 4, "purge_kg_s": q}
}
fn gn2_purge_orifice_5(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 5 * 0.2, 0.0002);
    #{"orifice": 5, "purge_kg_s": q}
}
fn gn2_purge_orifice_6(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 6 * 0.2, 0.0002);
    #{"orifice": 6, "purge_kg_s": q}
}
fn gn2_purge_orifice_7(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 7 * 0.2, 0.0002);
    #{"orifice": 7, "purge_kg_s": q}
}
fn gn2_purge_orifice_8(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 8 * 0.2, 0.0002);
    #{"orifice": 8, "purge_kg_s": q}
}
fn gn2_purge_orifice_9(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 9 * 0.2, 0.0002);
    #{"orifice": 9, "purge_kg_s": q}
}
fn gn2_purge_orifice_10(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 10 * 0.2, 0.0002);
    #{"orifice": 10, "purge_kg_s": q}
}
fn gn2_purge_orifice_11(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 11 * 0.2, 0.0002);
    #{"orifice": 11, "purge_kg_s": q}
}
fn gn2_purge_orifice_12(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 12 * 0.2, 0.0002);
    #{"orifice": 12, "purge_kg_s": q}
}
fn gn2_purge_orifice_13(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 13 * 0.2, 0.0002);
    #{"orifice": 13, "purge_kg_s": q}
}
fn gn2_purge_orifice_14(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 14 * 0.2, 0.0002);
    #{"orifice": 14, "purge_kg_s": q}
}
fn gn2_purge_orifice_15(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 15 * 0.2, 0.0002);
    #{"orifice": 15, "purge_kg_s": q}
}
fn gn2_purge_orifice_16(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 16 * 0.2, 0.0002);
    #{"orifice": 16, "purge_kg_s": q}
}
fn gn2_purge_orifice_17(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 17 * 0.2, 0.0002);
    #{"orifice": 17, "purge_kg_s": q}
}
fn gn2_purge_orifice_18(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 18 * 0.2, 0.0002);
    #{"orifice": 18, "purge_kg_s": q}
}
fn gn2_purge_orifice_19(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 19 * 0.2, 0.0002);
    #{"orifice": 19, "purge_kg_s": q}
}
fn gn2_purge_orifice_20(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 20 * 0.2, 0.0002);
    #{"orifice": 20, "purge_kg_s": q}
}
fn gn2_purge_orifice_21(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 21 * 0.2, 0.0002);
    #{"orifice": 21, "purge_kg_s": q}
}
fn gn2_purge_orifice_22(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 22 * 0.2, 0.0002);
    #{"orifice": 22, "purge_kg_s": q}
}
fn gn2_purge_orifice_23(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 23 * 0.2, 0.0002);
    #{"orifice": 23, "purge_kg_s": q}
}
fn gn2_purge_orifice_24(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 24 * 0.2, 0.0002);
    #{"orifice": 24, "purge_kg_s": q}
}
fn gn2_purge_orifice_25(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 25 * 0.2, 0.0002);
    #{"orifice": 25, "purge_kg_s": q}
}
fn gn2_purge_orifice_26(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 26 * 0.2, 0.0002);
    #{"orifice": 26, "purge_kg_s": q}
}
fn gn2_purge_orifice_27(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 27 * 0.2, 0.0002);
    #{"orifice": 27, "purge_kg_s": q}
}
fn gn2_purge_orifice_28(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 28 * 0.2, 0.0002);
    #{"orifice": 28, "purge_kg_s": q}
}
fn gn2_purge_orifice_29(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 29 * 0.2, 0.0002);
    #{"orifice": 29, "purge_kg_s": q}
}
fn gn2_purge_orifice_30(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 30 * 0.2, 0.0002);
    #{"orifice": 30, "purge_kg_s": q}
}
fn gn2_purge_orifice_31(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 31 * 0.2, 0.0002);
    #{"orifice": 31, "purge_kg_s": q}
}
fn gn2_purge_orifice_32(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 32 * 0.2, 0.0002);
    #{"orifice": 32, "purge_kg_s": q}
}
fn gn2_purge_orifice_33(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 33 * 0.2, 0.0002);
    #{"orifice": 33, "purge_kg_s": q}
}
fn gn2_purge_orifice_34(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 34 * 0.2, 0.0002);
    #{"orifice": 34, "purge_kg_s": q}
}
fn gn2_purge_orifice_35(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 35 * 0.2, 0.0002);
    #{"orifice": 35, "purge_kg_s": q}
}
fn gn2_purge_orifice_36(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 36 * 0.2, 0.0002);
    #{"orifice": 36, "purge_kg_s": q}
}
fn gn2_purge_orifice_37(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 37 * 0.2, 0.0002);
    #{"orifice": 37, "purge_kg_s": q}
}
fn gn2_purge_orifice_38(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 38 * 0.2, 0.0002);
    #{"orifice": 38, "purge_kg_s": q}
}
fn gn2_purge_orifice_39(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 39 * 0.2, 0.0002);
    #{"orifice": 39, "purge_kg_s": q}
}
fn gn2_purge_orifice_40(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 40 * 0.2, 0.0002);
    #{"orifice": 40, "purge_kg_s": q}
}
fn gn2_purge_orifice_41(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 41 * 0.2, 0.0002);
    #{"orifice": 41, "purge_kg_s": q}
}
fn gn2_purge_orifice_42(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 42 * 0.2, 0.0002);
    #{"orifice": 42, "purge_kg_s": q}
}
fn gn2_purge_orifice_43(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 43 * 0.2, 0.0002);
    #{"orifice": 43, "purge_kg_s": q}
}
fn gn2_purge_orifice_44(p_bar) {
    let q = purge_manifold_mass_flow(p_bar + 44 * 0.2, 0.0002);
    #{"orifice": 44, "purge_kg_s": q}
}
