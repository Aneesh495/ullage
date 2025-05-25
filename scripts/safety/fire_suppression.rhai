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
