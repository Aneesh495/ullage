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
fn pogo_mode_node_45(f_struct) {
    let danger = pogo_susceptibility(18.0 + 45 * 0.1, f_struct, 1.0);
    #{"node": 45, "pogo_alert": danger}
}
fn pogo_mode_node_46(f_struct) {
    let danger = pogo_susceptibility(18.0 + 46 * 0.1, f_struct, 1.0);
    #{"node": 46, "pogo_alert": danger}
}
fn pogo_mode_node_47(f_struct) {
    let danger = pogo_susceptibility(18.0 + 47 * 0.1, f_struct, 1.0);
    #{"node": 47, "pogo_alert": danger}
}
fn pogo_mode_node_48(f_struct) {
    let danger = pogo_susceptibility(18.0 + 48 * 0.1, f_struct, 1.0);
    #{"node": 48, "pogo_alert": danger}
}
fn pogo_mode_node_49(f_struct) {
    let danger = pogo_susceptibility(18.0 + 49 * 0.1, f_struct, 1.0);
    #{"node": 49, "pogo_alert": danger}
}
fn pogo_mode_node_50(f_struct) {
    let danger = pogo_susceptibility(18.0 + 50 * 0.1, f_struct, 1.0);
    #{"node": 50, "pogo_alert": danger}
}
fn pogo_mode_node_51(f_struct) {
    let danger = pogo_susceptibility(18.0 + 51 * 0.1, f_struct, 1.0);
    #{"node": 51, "pogo_alert": danger}
}
fn pogo_mode_node_52(f_struct) {
    let danger = pogo_susceptibility(18.0 + 52 * 0.1, f_struct, 1.0);
    #{"node": 52, "pogo_alert": danger}
}
fn pogo_mode_node_53(f_struct) {
    let danger = pogo_susceptibility(18.0 + 53 * 0.1, f_struct, 1.0);
    #{"node": 53, "pogo_alert": danger}
}
fn pogo_mode_node_54(f_struct) {
    let danger = pogo_susceptibility(18.0 + 54 * 0.1, f_struct, 1.0);
    #{"node": 54, "pogo_alert": danger}
}
fn pogo_mode_node_55(f_struct) {
    let danger = pogo_susceptibility(18.0 + 55 * 0.1, f_struct, 1.0);
    #{"node": 55, "pogo_alert": danger}
}
fn pogo_mode_node_56(f_struct) {
    let danger = pogo_susceptibility(18.0 + 56 * 0.1, f_struct, 1.0);
    #{"node": 56, "pogo_alert": danger}
}
fn pogo_mode_node_57(f_struct) {
    let danger = pogo_susceptibility(18.0 + 57 * 0.1, f_struct, 1.0);
    #{"node": 57, "pogo_alert": danger}
}
fn pogo_mode_node_58(f_struct) {
    let danger = pogo_susceptibility(18.0 + 58 * 0.1, f_struct, 1.0);
    #{"node": 58, "pogo_alert": danger}
}
fn pogo_mode_node_59(f_struct) {
    let danger = pogo_susceptibility(18.0 + 59 * 0.1, f_struct, 1.0);
    #{"node": 59, "pogo_alert": danger}
}
fn pogo_mode_node_60(f_struct) {
    let danger = pogo_susceptibility(18.0 + 60 * 0.1, f_struct, 1.0);
    #{"node": 60, "pogo_alert": danger}
}
fn pogo_mode_node_61(f_struct) {
    let danger = pogo_susceptibility(18.0 + 61 * 0.1, f_struct, 1.0);
    #{"node": 61, "pogo_alert": danger}
}
fn pogo_mode_node_62(f_struct) {
    let danger = pogo_susceptibility(18.0 + 62 * 0.1, f_struct, 1.0);
    #{"node": 62, "pogo_alert": danger}
}
fn pogo_mode_node_63(f_struct) {
    let danger = pogo_susceptibility(18.0 + 63 * 0.1, f_struct, 1.0);
    #{"node": 63, "pogo_alert": danger}
}
fn pogo_mode_node_64(f_struct) {
    let danger = pogo_susceptibility(18.0 + 64 * 0.1, f_struct, 1.0);
    #{"node": 64, "pogo_alert": danger}
}
fn pogo_mode_node_65(f_struct) {
    let danger = pogo_susceptibility(18.0 + 65 * 0.1, f_struct, 1.0);
    #{"node": 65, "pogo_alert": danger}
}
fn pogo_mode_node_66(f_struct) {
    let danger = pogo_susceptibility(18.0 + 66 * 0.1, f_struct, 1.0);
    #{"node": 66, "pogo_alert": danger}
}
fn pogo_mode_node_67(f_struct) {
    let danger = pogo_susceptibility(18.0 + 67 * 0.1, f_struct, 1.0);
    #{"node": 67, "pogo_alert": danger}
}
fn pogo_mode_node_68(f_struct) {
    let danger = pogo_susceptibility(18.0 + 68 * 0.1, f_struct, 1.0);
    #{"node": 68, "pogo_alert": danger}
}
fn pogo_mode_node_69(f_struct) {
    let danger = pogo_susceptibility(18.0 + 69 * 0.1, f_struct, 1.0);
    #{"node": 69, "pogo_alert": danger}
}
fn pogo_mode_node_70(f_struct) {
    let danger = pogo_susceptibility(18.0 + 70 * 0.1, f_struct, 1.0);
    #{"node": 70, "pogo_alert": danger}
}
fn pogo_mode_node_71(f_struct) {
    let danger = pogo_susceptibility(18.0 + 71 * 0.1, f_struct, 1.0);
    #{"node": 71, "pogo_alert": danger}
}
fn pogo_mode_node_72(f_struct) {
    let danger = pogo_susceptibility(18.0 + 72 * 0.1, f_struct, 1.0);
    #{"node": 72, "pogo_alert": danger}
}
fn pogo_mode_node_73(f_struct) {
    let danger = pogo_susceptibility(18.0 + 73 * 0.1, f_struct, 1.0);
    #{"node": 73, "pogo_alert": danger}
}
fn pogo_mode_node_74(f_struct) {
    let danger = pogo_susceptibility(18.0 + 74 * 0.1, f_struct, 1.0);
    #{"node": 74, "pogo_alert": danger}
}
fn pogo_mode_node_75(f_struct) {
    let danger = pogo_susceptibility(18.0 + 75 * 0.1, f_struct, 1.0);
    #{"node": 75, "pogo_alert": danger}
}
fn pogo_mode_node_76(f_struct) {
    let danger = pogo_susceptibility(18.0 + 76 * 0.1, f_struct, 1.0);
    #{"node": 76, "pogo_alert": danger}
}
fn pogo_mode_node_77(f_struct) {
    let danger = pogo_susceptibility(18.0 + 77 * 0.1, f_struct, 1.0);
    #{"node": 77, "pogo_alert": danger}
}
fn pogo_mode_node_78(f_struct) {
    let danger = pogo_susceptibility(18.0 + 78 * 0.1, f_struct, 1.0);
    #{"node": 78, "pogo_alert": danger}
}
fn pogo_mode_node_79(f_struct) {
    let danger = pogo_susceptibility(18.0 + 79 * 0.1, f_struct, 1.0);
    #{"node": 79, "pogo_alert": danger}
}
fn pogo_mode_node_80(f_struct) {
    let danger = pogo_susceptibility(18.0 + 80 * 0.1, f_struct, 1.0);
    #{"node": 80, "pogo_alert": danger}
}
fn pogo_mode_node_81(f_struct) {
    let danger = pogo_susceptibility(18.0 + 81 * 0.1, f_struct, 1.0);
    #{"node": 81, "pogo_alert": danger}
}
fn pogo_mode_node_82(f_struct) {
    let danger = pogo_susceptibility(18.0 + 82 * 0.1, f_struct, 1.0);
    #{"node": 82, "pogo_alert": danger}
}
fn pogo_mode_node_83(f_struct) {
    let danger = pogo_susceptibility(18.0 + 83 * 0.1, f_struct, 1.0);
    #{"node": 83, "pogo_alert": danger}
}
fn pogo_mode_node_84(f_struct) {
    let danger = pogo_susceptibility(18.0 + 84 * 0.1, f_struct, 1.0);
    #{"node": 84, "pogo_alert": danger}
}
