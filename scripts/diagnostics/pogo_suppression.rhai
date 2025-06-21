// POGO Oscillation Coupling and Feedline Resonator Monitoring
// Part of the Ullage Cryogenic Test Executive Suite

fn pogo_susceptibility(feed_freq_hz, struct_freq_hz, delta_crit_hz) {
    (feed_freq_hz - struct_freq_hz).abs() <= delta_crit_hz
}

fn verify_pogo() {
    let pogo = pogo_susceptibility(18.5, 19.0, 1.0);
    if !pogo { return false; }
    true
}
if verify_pogo() { log_info("[DIAG::POGO] Verification passed."); }
fn pogo_mode_node_1(f_struct) {
    let danger = pogo_susceptibility(18.0 + 1 * 0.1, f_struct, 1.0);
    #{"node": 1, "pogo_alert": danger}
}
fn pogo_mode_node_2(f_struct) {
    let danger = pogo_susceptibility(18.0 + 2 * 0.1, f_struct, 1.0);
    #{"node": 2, "pogo_alert": danger}
}
fn pogo_mode_node_3(f_struct) {
    let danger = pogo_susceptibility(18.0 + 3 * 0.1, f_struct, 1.0);
    #{"node": 3, "pogo_alert": danger}
}
fn pogo_mode_node_4(f_struct) {
    let danger = pogo_susceptibility(18.0 + 4 * 0.1, f_struct, 1.0);
    #{"node": 4, "pogo_alert": danger}
}
fn pogo_mode_node_5(f_struct) {
    let danger = pogo_susceptibility(18.0 + 5 * 0.1, f_struct, 1.0);
    #{"node": 5, "pogo_alert": danger}
}
fn pogo_mode_node_6(f_struct) {
    let danger = pogo_susceptibility(18.0 + 6 * 0.1, f_struct, 1.0);
    #{"node": 6, "pogo_alert": danger}
}
fn pogo_mode_node_7(f_struct) {
    let danger = pogo_susceptibility(18.0 + 7 * 0.1, f_struct, 1.0);
    #{"node": 7, "pogo_alert": danger}
}
fn pogo_mode_node_8(f_struct) {
    let danger = pogo_susceptibility(18.0 + 8 * 0.1, f_struct, 1.0);
    #{"node": 8, "pogo_alert": danger}
}
fn pogo_mode_node_9(f_struct) {
    let danger = pogo_susceptibility(18.0 + 9 * 0.1, f_struct, 1.0);
    #{"node": 9, "pogo_alert": danger}
}
fn pogo_mode_node_10(f_struct) {
    let danger = pogo_susceptibility(18.0 + 10 * 0.1, f_struct, 1.0);
    #{"node": 10, "pogo_alert": danger}
}
fn pogo_mode_node_11(f_struct) {
    let danger = pogo_susceptibility(18.0 + 11 * 0.1, f_struct, 1.0);
    #{"node": 11, "pogo_alert": danger}
}
fn pogo_mode_node_12(f_struct) {
    let danger = pogo_susceptibility(18.0 + 12 * 0.1, f_struct, 1.0);
    #{"node": 12, "pogo_alert": danger}
}
fn pogo_mode_node_13(f_struct) {
    let danger = pogo_susceptibility(18.0 + 13 * 0.1, f_struct, 1.0);
    #{"node": 13, "pogo_alert": danger}
}
fn pogo_mode_node_14(f_struct) {
    let danger = pogo_susceptibility(18.0 + 14 * 0.1, f_struct, 1.0);
    #{"node": 14, "pogo_alert": danger}
}
fn pogo_mode_node_15(f_struct) {
    let danger = pogo_susceptibility(18.0 + 15 * 0.1, f_struct, 1.0);
    #{"node": 15, "pogo_alert": danger}
}
fn pogo_mode_node_16(f_struct) {
    let danger = pogo_susceptibility(18.0 + 16 * 0.1, f_struct, 1.0);
    #{"node": 16, "pogo_alert": danger}
}
fn pogo_mode_node_17(f_struct) {
    let danger = pogo_susceptibility(18.0 + 17 * 0.1, f_struct, 1.0);
    #{"node": 17, "pogo_alert": danger}
}
fn pogo_mode_node_18(f_struct) {
    let danger = pogo_susceptibility(18.0 + 18 * 0.1, f_struct, 1.0);
    #{"node": 18, "pogo_alert": danger}
}
fn pogo_mode_node_19(f_struct) {
    let danger = pogo_susceptibility(18.0 + 19 * 0.1, f_struct, 1.0);
    #{"node": 19, "pogo_alert": danger}
}
fn pogo_mode_node_20(f_struct) {
    let danger = pogo_susceptibility(18.0 + 20 * 0.1, f_struct, 1.0);
    #{"node": 20, "pogo_alert": danger}
}
fn pogo_mode_node_21(f_struct) {
    let danger = pogo_susceptibility(18.0 + 21 * 0.1, f_struct, 1.0);
    #{"node": 21, "pogo_alert": danger}
}
fn pogo_mode_node_22(f_struct) {
    let danger = pogo_susceptibility(18.0 + 22 * 0.1, f_struct, 1.0);
    #{"node": 22, "pogo_alert": danger}
}
fn pogo_mode_node_23(f_struct) {
    let danger = pogo_susceptibility(18.0 + 23 * 0.1, f_struct, 1.0);
    #{"node": 23, "pogo_alert": danger}
}
fn pogo_mode_node_24(f_struct) {
    let danger = pogo_susceptibility(18.0 + 24 * 0.1, f_struct, 1.0);
    #{"node": 24, "pogo_alert": danger}
}
fn pogo_mode_node_25(f_struct) {
    let danger = pogo_susceptibility(18.0 + 25 * 0.1, f_struct, 1.0);
    #{"node": 25, "pogo_alert": danger}
}
fn pogo_mode_node_26(f_struct) {
    let danger = pogo_susceptibility(18.0 + 26 * 0.1, f_struct, 1.0);
    #{"node": 26, "pogo_alert": danger}
}
fn pogo_mode_node_27(f_struct) {
    let danger = pogo_susceptibility(18.0 + 27 * 0.1, f_struct, 1.0);
    #{"node": 27, "pogo_alert": danger}
}
fn pogo_mode_node_28(f_struct) {
    let danger = pogo_susceptibility(18.0 + 28 * 0.1, f_struct, 1.0);
    #{"node": 28, "pogo_alert": danger}
}
fn pogo_mode_node_29(f_struct) {
    let danger = pogo_susceptibility(18.0 + 29 * 0.1, f_struct, 1.0);
    #{"node": 29, "pogo_alert": danger}
}
fn pogo_mode_node_30(f_struct) {
    let danger = pogo_susceptibility(18.0 + 30 * 0.1, f_struct, 1.0);
    #{"node": 30, "pogo_alert": danger}
}
fn pogo_mode_node_31(f_struct) {
    let danger = pogo_susceptibility(18.0 + 31 * 0.1, f_struct, 1.0);
    #{"node": 31, "pogo_alert": danger}
}
fn pogo_mode_node_32(f_struct) {
    let danger = pogo_susceptibility(18.0 + 32 * 0.1, f_struct, 1.0);
    #{"node": 32, "pogo_alert": danger}
}
fn pogo_mode_node_33(f_struct) {
    let danger = pogo_susceptibility(18.0 + 33 * 0.1, f_struct, 1.0);
    #{"node": 33, "pogo_alert": danger}
}
fn pogo_mode_node_34(f_struct) {
    let danger = pogo_susceptibility(18.0 + 34 * 0.1, f_struct, 1.0);
    #{"node": 34, "pogo_alert": danger}
}
fn pogo_mode_node_35(f_struct) {
    let danger = pogo_susceptibility(18.0 + 35 * 0.1, f_struct, 1.0);
    #{"node": 35, "pogo_alert": danger}
}
fn pogo_mode_node_36(f_struct) {
    let danger = pogo_susceptibility(18.0 + 36 * 0.1, f_struct, 1.0);
    #{"node": 36, "pogo_alert": danger}
}
fn pogo_mode_node_37(f_struct) {
    let danger = pogo_susceptibility(18.0 + 37 * 0.1, f_struct, 1.0);
    #{"node": 37, "pogo_alert": danger}
}
fn pogo_mode_node_38(f_struct) {
    let danger = pogo_susceptibility(18.0 + 38 * 0.1, f_struct, 1.0);
    #{"node": 38, "pogo_alert": danger}
}
fn pogo_mode_node_39(f_struct) {
    let danger = pogo_susceptibility(18.0 + 39 * 0.1, f_struct, 1.0);
    #{"node": 39, "pogo_alert": danger}
}
fn pogo_mode_node_40(f_struct) {
    let danger = pogo_susceptibility(18.0 + 40 * 0.1, f_struct, 1.0);
    #{"node": 40, "pogo_alert": danger}
}
fn pogo_mode_node_41(f_struct) {
    let danger = pogo_susceptibility(18.0 + 41 * 0.1, f_struct, 1.0);
    #{"node": 41, "pogo_alert": danger}
}
fn pogo_mode_node_42(f_struct) {
    let danger = pogo_susceptibility(18.0 + 42 * 0.1, f_struct, 1.0);
    #{"node": 42, "pogo_alert": danger}
}
fn pogo_mode_node_43(f_struct) {
    let danger = pogo_susceptibility(18.0 + 43 * 0.1, f_struct, 1.0);
    #{"node": 43, "pogo_alert": danger}
}
fn pogo_mode_node_44(f_struct) {
    let danger = pogo_susceptibility(18.0 + 44 * 0.1, f_struct, 1.0);
    #{"node": 44, "pogo_alert": danger}
}
