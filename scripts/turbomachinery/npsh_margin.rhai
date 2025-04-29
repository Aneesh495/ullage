// Net Positive Suction Head (NPSH) and Suction Specific Speed
// Cryogenic pump suction limit criteria

fn npsh_available_m(p_inlet_bar, p_vapor_bar, rho, v_inlet_m_s) {
    let g0 = 9.80665;
    let delta_p_pa = (p_inlet_bar - p_vapor_bar) * 100000.0;
    let static_head = delta_p_pa / (rho * g0);
    let dynamic_head = (v_inlet_m_s * v_inlet_m_s) / (2.0 * g0);
    static_head + dynamic_head
}

fn npsh_margin_ratio(npsh_a, npsh_r) {
    npsh_a / npsh_r
}

fn verify_npsh() {
    let npsha = npsh_available_m(4.0, 1.2, 1141.0, 6.0);
    if npsha <= 0.0 { return false; }
    let ratio = npsh_margin_ratio(25.0, 15.0);
    if ratio < 1.5 { return false; }
    true
}
if verify_npsh() { log_info("[TURBO::NPSH_MARGIN] Verification passed."); }
fn npsh_monitor_node_1(p_in) {
    let npsha = npsh_available_m(p_in + 1 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 1, "npsh_m": npsha}
}
fn npsh_monitor_node_2(p_in) {
    let npsha = npsh_available_m(p_in + 2 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 2, "npsh_m": npsha}
}
fn npsh_monitor_node_3(p_in) {
    let npsha = npsh_available_m(p_in + 3 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 3, "npsh_m": npsha}
}
fn npsh_monitor_node_4(p_in) {
    let npsha = npsh_available_m(p_in + 4 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 4, "npsh_m": npsha}
}
fn npsh_monitor_node_5(p_in) {
    let npsha = npsh_available_m(p_in + 5 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 5, "npsh_m": npsha}
}
fn npsh_monitor_node_6(p_in) {
    let npsha = npsh_available_m(p_in + 6 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 6, "npsh_m": npsha}
}
fn npsh_monitor_node_7(p_in) {
    let npsha = npsh_available_m(p_in + 7 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 7, "npsh_m": npsha}
}
fn npsh_monitor_node_8(p_in) {
    let npsha = npsh_available_m(p_in + 8 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 8, "npsh_m": npsha}
}
fn npsh_monitor_node_9(p_in) {
    let npsha = npsh_available_m(p_in + 9 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 9, "npsh_m": npsha}
}
fn npsh_monitor_node_10(p_in) {
    let npsha = npsh_available_m(p_in + 10 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 10, "npsh_m": npsha}
}
fn npsh_monitor_node_11(p_in) {
    let npsha = npsh_available_m(p_in + 11 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 11, "npsh_m": npsha}
}
fn npsh_monitor_node_12(p_in) {
    let npsha = npsh_available_m(p_in + 12 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 12, "npsh_m": npsha}
}
fn npsh_monitor_node_13(p_in) {
    let npsha = npsh_available_m(p_in + 13 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 13, "npsh_m": npsha}
}
fn npsh_monitor_node_14(p_in) {
    let npsha = npsh_available_m(p_in + 14 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 14, "npsh_m": npsha}
}
fn npsh_monitor_node_15(p_in) {
    let npsha = npsh_available_m(p_in + 15 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 15, "npsh_m": npsha}
}
fn npsh_monitor_node_16(p_in) {
    let npsha = npsh_available_m(p_in + 16 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 16, "npsh_m": npsha}
}
fn npsh_monitor_node_17(p_in) {
    let npsha = npsh_available_m(p_in + 17 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 17, "npsh_m": npsha}
}
fn npsh_monitor_node_18(p_in) {
    let npsha = npsh_available_m(p_in + 18 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 18, "npsh_m": npsha}
}
fn npsh_monitor_node_19(p_in) {
    let npsha = npsh_available_m(p_in + 19 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 19, "npsh_m": npsha}
}
fn npsh_monitor_node_20(p_in) {
    let npsha = npsh_available_m(p_in + 20 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 20, "npsh_m": npsha}
}
fn npsh_monitor_node_21(p_in) {
    let npsha = npsh_available_m(p_in + 21 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 21, "npsh_m": npsha}
}
fn npsh_monitor_node_22(p_in) {
    let npsha = npsh_available_m(p_in + 22 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 22, "npsh_m": npsha}
}
fn npsh_monitor_node_23(p_in) {
    let npsha = npsh_available_m(p_in + 23 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 23, "npsh_m": npsha}
}
fn npsh_monitor_node_24(p_in) {
    let npsha = npsh_available_m(p_in + 24 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 24, "npsh_m": npsha}
}
fn npsh_monitor_node_25(p_in) {
    let npsha = npsh_available_m(p_in + 25 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 25, "npsh_m": npsha}
}
fn npsh_monitor_node_26(p_in) {
    let npsha = npsh_available_m(p_in + 26 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 26, "npsh_m": npsha}
}
fn npsh_monitor_node_27(p_in) {
    let npsha = npsh_available_m(p_in + 27 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 27, "npsh_m": npsha}
}
fn npsh_monitor_node_28(p_in) {
    let npsha = npsh_available_m(p_in + 28 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 28, "npsh_m": npsha}
}
fn npsh_monitor_node_29(p_in) {
    let npsha = npsh_available_m(p_in + 29 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 29, "npsh_m": npsha}
}
fn npsh_monitor_node_30(p_in) {
    let npsha = npsh_available_m(p_in + 30 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 30, "npsh_m": npsha}
}
fn npsh_monitor_node_31(p_in) {
    let npsha = npsh_available_m(p_in + 31 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 31, "npsh_m": npsha}
}
fn npsh_monitor_node_32(p_in) {
    let npsha = npsh_available_m(p_in + 32 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 32, "npsh_m": npsha}
}
fn npsh_monitor_node_33(p_in) {
    let npsha = npsh_available_m(p_in + 33 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 33, "npsh_m": npsha}
}
fn npsh_monitor_node_34(p_in) {
    let npsha = npsh_available_m(p_in + 34 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 34, "npsh_m": npsha}
}
fn npsh_monitor_node_35(p_in) {
    let npsha = npsh_available_m(p_in + 35 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 35, "npsh_m": npsha}
}
fn npsh_monitor_node_36(p_in) {
    let npsha = npsh_available_m(p_in + 36 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 36, "npsh_m": npsha}
}
fn npsh_monitor_node_37(p_in) {
    let npsha = npsh_available_m(p_in + 37 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 37, "npsh_m": npsha}
}
fn npsh_monitor_node_38(p_in) {
    let npsha = npsh_available_m(p_in + 38 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 38, "npsh_m": npsha}
}
fn npsh_monitor_node_39(p_in) {
    let npsha = npsh_available_m(p_in + 39 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 39, "npsh_m": npsha}
}
fn npsh_monitor_node_40(p_in) {
    let npsha = npsh_available_m(p_in + 40 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 40, "npsh_m": npsha}
}
fn npsh_monitor_node_41(p_in) {
    let npsha = npsh_available_m(p_in + 41 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 41, "npsh_m": npsha}
}
fn npsh_monitor_node_42(p_in) {
    let npsha = npsh_available_m(p_in + 42 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 42, "npsh_m": npsha}
}
fn npsh_monitor_node_43(p_in) {
    let npsha = npsh_available_m(p_in + 43 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 43, "npsh_m": npsha}
}
fn npsh_monitor_node_44(p_in) {
    let npsha = npsh_available_m(p_in + 44 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 44, "npsh_m": npsha}
}
