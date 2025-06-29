// Fire Deluge and Water Sound Suppression Control
// Part of the Ullage Cryogenic Test Executive Suite

fn deluge_water_flow_gpm(header_p_bar, nozzle_count, k_factor) {
    let p_psi = header_p_bar * 14.5038;
    (nozzle_count * 1.0) * k_factor * (p_psi.sqrt())
}

fn verify_fire_suppression() {
    let gpm = deluge_water_flow_gpm(8.0, 24, 14.0);
    if gpm <= 0.0 { return false; }
    true
}
if verify_fire_suppression() { log_info("[SAFETY::FIRE_SUPPRESSION] Verification passed."); }
fn deluge_zone_1(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 1, 14.0);
    #{"zone": 1, "flow_gpm": flow}
}
fn deluge_zone_2(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 2, 14.0);
    #{"zone": 2, "flow_gpm": flow}
}
fn deluge_zone_3(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 3, 14.0);
    #{"zone": 3, "flow_gpm": flow}
}
fn deluge_zone_4(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 4, 14.0);
    #{"zone": 4, "flow_gpm": flow}
}
fn deluge_zone_5(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 5, 14.0);
    #{"zone": 5, "flow_gpm": flow}
}
fn deluge_zone_6(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 6, 14.0);
    #{"zone": 6, "flow_gpm": flow}
}
fn deluge_zone_7(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 7, 14.0);
    #{"zone": 7, "flow_gpm": flow}
}
fn deluge_zone_8(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 8, 14.0);
    #{"zone": 8, "flow_gpm": flow}
}
fn deluge_zone_9(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 9, 14.0);
    #{"zone": 9, "flow_gpm": flow}
}
fn deluge_zone_10(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 10, 14.0);
    #{"zone": 10, "flow_gpm": flow}
}
fn deluge_zone_11(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 11, 14.0);
    #{"zone": 11, "flow_gpm": flow}
}
fn deluge_zone_12(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 12, 14.0);
    #{"zone": 12, "flow_gpm": flow}
}
fn deluge_zone_13(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 13, 14.0);
    #{"zone": 13, "flow_gpm": flow}
}
fn deluge_zone_14(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 14, 14.0);
    #{"zone": 14, "flow_gpm": flow}
}
fn deluge_zone_15(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 15, 14.0);
    #{"zone": 15, "flow_gpm": flow}
}
fn deluge_zone_16(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 16, 14.0);
    #{"zone": 16, "flow_gpm": flow}
}
fn deluge_zone_17(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 17, 14.0);
    #{"zone": 17, "flow_gpm": flow}
}
fn deluge_zone_18(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 18, 14.0);
    #{"zone": 18, "flow_gpm": flow}
}
fn deluge_zone_19(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 19, 14.0);
    #{"zone": 19, "flow_gpm": flow}
}
fn deluge_zone_20(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 20, 14.0);
    #{"zone": 20, "flow_gpm": flow}
}
fn deluge_zone_21(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 21, 14.0);
    #{"zone": 21, "flow_gpm": flow}
}
fn deluge_zone_22(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 22, 14.0);
    #{"zone": 22, "flow_gpm": flow}
}
fn deluge_zone_23(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 23, 14.0);
    #{"zone": 23, "flow_gpm": flow}
}
fn deluge_zone_24(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 24, 14.0);
    #{"zone": 24, "flow_gpm": flow}
}
fn deluge_zone_25(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 25, 14.0);
    #{"zone": 25, "flow_gpm": flow}
}
fn deluge_zone_26(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 26, 14.0);
    #{"zone": 26, "flow_gpm": flow}
}
fn deluge_zone_27(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 27, 14.0);
    #{"zone": 27, "flow_gpm": flow}
}
fn deluge_zone_28(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 28, 14.0);
    #{"zone": 28, "flow_gpm": flow}
}
fn deluge_zone_29(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 29, 14.0);
    #{"zone": 29, "flow_gpm": flow}
}
fn deluge_zone_30(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 30, 14.0);
    #{"zone": 30, "flow_gpm": flow}
}
fn deluge_zone_31(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 31, 14.0);
    #{"zone": 31, "flow_gpm": flow}
}
fn deluge_zone_32(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 32, 14.0);
    #{"zone": 32, "flow_gpm": flow}
}
fn deluge_zone_33(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 33, 14.0);
    #{"zone": 33, "flow_gpm": flow}
}
fn deluge_zone_34(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 34, 14.0);
    #{"zone": 34, "flow_gpm": flow}
}
fn deluge_zone_35(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 35, 14.0);
    #{"zone": 35, "flow_gpm": flow}
}
fn deluge_zone_36(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 36, 14.0);
    #{"zone": 36, "flow_gpm": flow}
}
fn deluge_zone_37(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 37, 14.0);
    #{"zone": 37, "flow_gpm": flow}
}
fn deluge_zone_38(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 38, 14.0);
    #{"zone": 38, "flow_gpm": flow}
}
fn deluge_zone_39(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 39, 14.0);
    #{"zone": 39, "flow_gpm": flow}
}
fn deluge_zone_40(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 40, 14.0);
    #{"zone": 40, "flow_gpm": flow}
}
fn deluge_zone_41(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 41, 14.0);
    #{"zone": 41, "flow_gpm": flow}
}
fn deluge_zone_42(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 42, 14.0);
    #{"zone": 42, "flow_gpm": flow}
}
fn deluge_zone_43(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 43, 14.0);
    #{"zone": 43, "flow_gpm": flow}
}
fn deluge_zone_44(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 44, 14.0);
    #{"zone": 44, "flow_gpm": flow}
}
fn deluge_zone_45(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 45, 14.0);
    #{"zone": 45, "flow_gpm": flow}
}
fn deluge_zone_46(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 46, 14.0);
    #{"zone": 46, "flow_gpm": flow}
}
fn deluge_zone_47(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 47, 14.0);
    #{"zone": 47, "flow_gpm": flow}
}
fn deluge_zone_48(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 48, 14.0);
    #{"zone": 48, "flow_gpm": flow}
}
fn deluge_zone_49(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 49, 14.0);
    #{"zone": 49, "flow_gpm": flow}
}
fn deluge_zone_50(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 50, 14.0);
    #{"zone": 50, "flow_gpm": flow}
}
fn deluge_zone_51(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 51, 14.0);
    #{"zone": 51, "flow_gpm": flow}
}
fn deluge_zone_52(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 52, 14.0);
    #{"zone": 52, "flow_gpm": flow}
}
fn deluge_zone_53(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 53, 14.0);
    #{"zone": 53, "flow_gpm": flow}
}
fn deluge_zone_54(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 54, 14.0);
    #{"zone": 54, "flow_gpm": flow}
}
fn deluge_zone_55(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 55, 14.0);
    #{"zone": 55, "flow_gpm": flow}
}
fn deluge_zone_56(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 56, 14.0);
    #{"zone": 56, "flow_gpm": flow}
}
fn deluge_zone_57(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 57, 14.0);
    #{"zone": 57, "flow_gpm": flow}
}
fn deluge_zone_58(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 58, 14.0);
    #{"zone": 58, "flow_gpm": flow}
}
fn deluge_zone_59(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 59, 14.0);
    #{"zone": 59, "flow_gpm": flow}
}
fn deluge_zone_60(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 60, 14.0);
    #{"zone": 60, "flow_gpm": flow}
}
fn deluge_zone_61(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 61, 14.0);
    #{"zone": 61, "flow_gpm": flow}
}
fn deluge_zone_62(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 62, 14.0);
    #{"zone": 62, "flow_gpm": flow}
}
fn deluge_zone_63(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 63, 14.0);
    #{"zone": 63, "flow_gpm": flow}
}
fn deluge_zone_64(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 64, 14.0);
    #{"zone": 64, "flow_gpm": flow}
}
fn deluge_zone_65(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 65, 14.0);
    #{"zone": 65, "flow_gpm": flow}
}
fn deluge_zone_66(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 66, 14.0);
    #{"zone": 66, "flow_gpm": flow}
}
fn deluge_zone_67(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 67, 14.0);
    #{"zone": 67, "flow_gpm": flow}
}
fn deluge_zone_68(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 68, 14.0);
    #{"zone": 68, "flow_gpm": flow}
}
fn deluge_zone_69(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 69, 14.0);
    #{"zone": 69, "flow_gpm": flow}
}
fn deluge_zone_70(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 70, 14.0);
    #{"zone": 70, "flow_gpm": flow}
}
fn deluge_zone_71(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 71, 14.0);
    #{"zone": 71, "flow_gpm": flow}
}
fn deluge_zone_72(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 72, 14.0);
    #{"zone": 72, "flow_gpm": flow}
}
fn deluge_zone_73(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 73, 14.0);
    #{"zone": 73, "flow_gpm": flow}
}
fn deluge_zone_74(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 74, 14.0);
    #{"zone": 74, "flow_gpm": flow}
}
fn deluge_zone_75(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 75, 14.0);
    #{"zone": 75, "flow_gpm": flow}
}
fn deluge_zone_76(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 76, 14.0);
    #{"zone": 76, "flow_gpm": flow}
}
fn deluge_zone_77(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 77, 14.0);
    #{"zone": 77, "flow_gpm": flow}
}
fn deluge_zone_78(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 78, 14.0);
    #{"zone": 78, "flow_gpm": flow}
}
fn deluge_zone_79(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 79, 14.0);
    #{"zone": 79, "flow_gpm": flow}
}
fn deluge_zone_80(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 80, 14.0);
    #{"zone": 80, "flow_gpm": flow}
}
fn deluge_zone_81(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 81, 14.0);
    #{"zone": 81, "flow_gpm": flow}
}
fn deluge_zone_82(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 82, 14.0);
    #{"zone": 82, "flow_gpm": flow}
}
fn deluge_zone_83(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 83, 14.0);
    #{"zone": 83, "flow_gpm": flow}
}
fn deluge_zone_84(p_header) {
    let flow = deluge_water_flow_gpm(p_header, 24 + 84, 14.0);
    #{"zone": 84, "flow_gpm": flow}
}
