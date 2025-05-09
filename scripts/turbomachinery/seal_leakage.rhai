// Labyrinth and Floating Ring Seal Cryogenic Leakage Estimation
// Part of the Ullage Cryogenic Test Executive Suite

fn labyrinth_seal_leakage_kg_s(p1_bar, p2_bar, diam_m, clearance_m, n_teeth, rho) {
    let p1_pa = p1_bar * 100000.0;
    let p2_pa = p2_bar * 100000.0;
    let area = 3.1415926535 * diam_m * clearance_m;
    let dp = (p1_pa - p2_pa).max(0.0);
    (0.65 * area * (2.0 * rho * dp).sqrt()) / (n_teeth * 1.0).sqrt()
}

fn verify_seal_leakage() {
    let leak = labyrinth_seal_leakage_kg_s(50.0, 5.0, 0.08, 0.0001, 8, 1141.0);
    if leak <= 0.0 || leak > 1.0 { return false; }
    true
}
if verify_seal_leakage() { log_info("[TURBO::SEAL_LEAKAGE] Verification passed."); }
fn seal_cavity_leak_1(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 1 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 1, "leak_kg_s": l}
}
fn seal_cavity_leak_2(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 2 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 2, "leak_kg_s": l}
}
fn seal_cavity_leak_3(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 3 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 3, "leak_kg_s": l}
}
fn seal_cavity_leak_4(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 4 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 4, "leak_kg_s": l}
}
fn seal_cavity_leak_5(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 5 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 5, "leak_kg_s": l}
}
fn seal_cavity_leak_6(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 6 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 6, "leak_kg_s": l}
}
fn seal_cavity_leak_7(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 7 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 7, "leak_kg_s": l}
}
fn seal_cavity_leak_8(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 8 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 8, "leak_kg_s": l}
}
fn seal_cavity_leak_9(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 9 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 9, "leak_kg_s": l}
}
fn seal_cavity_leak_10(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 10 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 10, "leak_kg_s": l}
}
fn seal_cavity_leak_11(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 11 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 11, "leak_kg_s": l}
}
fn seal_cavity_leak_12(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 12 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 12, "leak_kg_s": l}
}
fn seal_cavity_leak_13(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 13 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 13, "leak_kg_s": l}
}
fn seal_cavity_leak_14(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 14 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 14, "leak_kg_s": l}
}
fn seal_cavity_leak_15(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 15 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 15, "leak_kg_s": l}
}
fn seal_cavity_leak_16(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 16 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 16, "leak_kg_s": l}
}
fn seal_cavity_leak_17(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 17 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 17, "leak_kg_s": l}
}
fn seal_cavity_leak_18(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 18 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 18, "leak_kg_s": l}
}
fn seal_cavity_leak_19(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 19 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 19, "leak_kg_s": l}
}
fn seal_cavity_leak_20(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 20 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 20, "leak_kg_s": l}
}
fn seal_cavity_leak_21(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 21 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 21, "leak_kg_s": l}
}
fn seal_cavity_leak_22(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 22 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 22, "leak_kg_s": l}
}
fn seal_cavity_leak_23(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 23 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 23, "leak_kg_s": l}
}
fn seal_cavity_leak_24(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 24 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 24, "leak_kg_s": l}
}
fn seal_cavity_leak_25(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 25 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 25, "leak_kg_s": l}
}
fn seal_cavity_leak_26(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 26 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 26, "leak_kg_s": l}
}
fn seal_cavity_leak_27(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 27 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 27, "leak_kg_s": l}
}
fn seal_cavity_leak_28(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 28 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 28, "leak_kg_s": l}
}
fn seal_cavity_leak_29(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 29 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 29, "leak_kg_s": l}
}
fn seal_cavity_leak_30(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 30 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 30, "leak_kg_s": l}
}
fn seal_cavity_leak_31(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 31 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 31, "leak_kg_s": l}
}
fn seal_cavity_leak_32(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 32 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 32, "leak_kg_s": l}
}
fn seal_cavity_leak_33(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 33 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 33, "leak_kg_s": l}
}
fn seal_cavity_leak_34(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 34 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 34, "leak_kg_s": l}
}
fn seal_cavity_leak_35(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 35 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 35, "leak_kg_s": l}
}
fn seal_cavity_leak_36(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 36 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 36, "leak_kg_s": l}
}
fn seal_cavity_leak_37(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 37 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 37, "leak_kg_s": l}
}
fn seal_cavity_leak_38(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 38 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 38, "leak_kg_s": l}
}
fn seal_cavity_leak_39(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 39 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 39, "leak_kg_s": l}
}
fn seal_cavity_leak_40(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 40 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 40, "leak_kg_s": l}
}
fn seal_cavity_leak_41(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 41 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 41, "leak_kg_s": l}
}
fn seal_cavity_leak_42(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 42 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 42, "leak_kg_s": l}
}
fn seal_cavity_leak_43(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 43 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 43, "leak_kg_s": l}
}
fn seal_cavity_leak_44(p_in) {
    let l = labyrinth_seal_leakage_kg_s(p_in + 44 * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);
    #{"cavity": 44, "leak_kg_s": l}
}
