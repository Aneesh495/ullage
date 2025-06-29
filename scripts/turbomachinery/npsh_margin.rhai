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
fn npsh_monitor_node_45(p_in) {
    let npsha = npsh_available_m(p_in + 45 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 45, "npsh_m": npsha}
}
fn npsh_monitor_node_46(p_in) {
    let npsha = npsh_available_m(p_in + 46 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 46, "npsh_m": npsha}
}
fn npsh_monitor_node_47(p_in) {
    let npsha = npsh_available_m(p_in + 47 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 47, "npsh_m": npsha}
}
fn npsh_monitor_node_48(p_in) {
    let npsha = npsh_available_m(p_in + 48 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 48, "npsh_m": npsha}
}
fn npsh_monitor_node_49(p_in) {
    let npsha = npsh_available_m(p_in + 49 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 49, "npsh_m": npsha}
}
fn npsh_monitor_node_50(p_in) {
    let npsha = npsh_available_m(p_in + 50 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 50, "npsh_m": npsha}
}
fn npsh_monitor_node_51(p_in) {
    let npsha = npsh_available_m(p_in + 51 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 51, "npsh_m": npsha}
}
fn npsh_monitor_node_52(p_in) {
    let npsha = npsh_available_m(p_in + 52 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 52, "npsh_m": npsha}
}
fn npsh_monitor_node_53(p_in) {
    let npsha = npsh_available_m(p_in + 53 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 53, "npsh_m": npsha}
}
fn npsh_monitor_node_54(p_in) {
    let npsha = npsh_available_m(p_in + 54 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 54, "npsh_m": npsha}
}
fn npsh_monitor_node_55(p_in) {
    let npsha = npsh_available_m(p_in + 55 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 55, "npsh_m": npsha}
}
fn npsh_monitor_node_56(p_in) {
    let npsha = npsh_available_m(p_in + 56 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 56, "npsh_m": npsha}
}
fn npsh_monitor_node_57(p_in) {
    let npsha = npsh_available_m(p_in + 57 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 57, "npsh_m": npsha}
}
fn npsh_monitor_node_58(p_in) {
    let npsha = npsh_available_m(p_in + 58 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 58, "npsh_m": npsha}
}
fn npsh_monitor_node_59(p_in) {
    let npsha = npsh_available_m(p_in + 59 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 59, "npsh_m": npsha}
}
fn npsh_monitor_node_60(p_in) {
    let npsha = npsh_available_m(p_in + 60 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 60, "npsh_m": npsha}
}
fn npsh_monitor_node_61(p_in) {
    let npsha = npsh_available_m(p_in + 61 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 61, "npsh_m": npsha}
}
fn npsh_monitor_node_62(p_in) {
    let npsha = npsh_available_m(p_in + 62 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 62, "npsh_m": npsha}
}
fn npsh_monitor_node_63(p_in) {
    let npsha = npsh_available_m(p_in + 63 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 63, "npsh_m": npsha}
}
fn npsh_monitor_node_64(p_in) {
    let npsha = npsh_available_m(p_in + 64 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 64, "npsh_m": npsha}
}
fn npsh_monitor_node_65(p_in) {
    let npsha = npsh_available_m(p_in + 65 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 65, "npsh_m": npsha}
}
fn npsh_monitor_node_66(p_in) {
    let npsha = npsh_available_m(p_in + 66 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 66, "npsh_m": npsha}
}
fn npsh_monitor_node_67(p_in) {
    let npsha = npsh_available_m(p_in + 67 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 67, "npsh_m": npsha}
}
fn npsh_monitor_node_68(p_in) {
    let npsha = npsh_available_m(p_in + 68 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 68, "npsh_m": npsha}
}
fn npsh_monitor_node_69(p_in) {
    let npsha = npsh_available_m(p_in + 69 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 69, "npsh_m": npsha}
}
fn npsh_monitor_node_70(p_in) {
    let npsha = npsh_available_m(p_in + 70 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 70, "npsh_m": npsha}
}
fn npsh_monitor_node_71(p_in) {
    let npsha = npsh_available_m(p_in + 71 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 71, "npsh_m": npsha}
}
fn npsh_monitor_node_72(p_in) {
    let npsha = npsh_available_m(p_in + 72 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 72, "npsh_m": npsha}
}
fn npsh_monitor_node_73(p_in) {
    let npsha = npsh_available_m(p_in + 73 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 73, "npsh_m": npsha}
}
fn npsh_monitor_node_74(p_in) {
    let npsha = npsh_available_m(p_in + 74 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 74, "npsh_m": npsha}
}
fn npsh_monitor_node_75(p_in) {
    let npsha = npsh_available_m(p_in + 75 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 75, "npsh_m": npsha}
}
fn npsh_monitor_node_76(p_in) {
    let npsha = npsh_available_m(p_in + 76 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 76, "npsh_m": npsha}
}
fn npsh_monitor_node_77(p_in) {
    let npsha = npsh_available_m(p_in + 77 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 77, "npsh_m": npsha}
}
fn npsh_monitor_node_78(p_in) {
    let npsha = npsh_available_m(p_in + 78 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 78, "npsh_m": npsha}
}
fn npsh_monitor_node_79(p_in) {
    let npsha = npsh_available_m(p_in + 79 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 79, "npsh_m": npsha}
}
fn npsh_monitor_node_80(p_in) {
    let npsha = npsh_available_m(p_in + 80 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 80, "npsh_m": npsha}
}
fn npsh_monitor_node_81(p_in) {
    let npsha = npsh_available_m(p_in + 81 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 81, "npsh_m": npsha}
}
fn npsh_monitor_node_82(p_in) {
    let npsha = npsh_available_m(p_in + 82 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 82, "npsh_m": npsha}
}
fn npsh_monitor_node_83(p_in) {
    let npsha = npsh_available_m(p_in + 83 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 83, "npsh_m": npsha}
}
fn npsh_monitor_node_84(p_in) {
    let npsha = npsh_available_m(p_in + 84 * 0.05, 1.2, 1141.0, 6.0);
    #{"node": 84, "npsh_m": npsha}
}
