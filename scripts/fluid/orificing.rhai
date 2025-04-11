// Sharp-Edged Metering Orifice and Flow Restrictor Sizing
// Part of the Ullage Cryogenic Test Executive Suite

fn orifice_flow_kg_s(cd, area_sq_m, rho, delta_p_bar) {
    let dp_pa = delta_p_bar * 100000.0;
    if dp_pa <= 0.0 { return 0.0; }
    cd * area_sq_m * (2.0 * rho * dp_pa).sqrt()
}

fn verify_orificing() {
    let flow = orifice_flow_kg_s(0.62, 0.0001, 1000.0, 5.0);
    if flow <= 0.0 { return false; }
    true
}
if verify_orificing() { log_info("[FLUID::ORIFICING] Verification passed."); }
fn orifice_plate_spec_1(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 1 * 0.02), 1141.0, dp);
    #{"plate": 1, "flow": f}
}
fn orifice_plate_spec_2(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 2 * 0.02), 1141.0, dp);
    #{"plate": 2, "flow": f}
}
fn orifice_plate_spec_3(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 3 * 0.02), 1141.0, dp);
    #{"plate": 3, "flow": f}
}
fn orifice_plate_spec_4(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 4 * 0.02), 1141.0, dp);
    #{"plate": 4, "flow": f}
}
fn orifice_plate_spec_5(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 5 * 0.02), 1141.0, dp);
    #{"plate": 5, "flow": f}
}
fn orifice_plate_spec_6(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 6 * 0.02), 1141.0, dp);
    #{"plate": 6, "flow": f}
}
fn orifice_plate_spec_7(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 7 * 0.02), 1141.0, dp);
    #{"plate": 7, "flow": f}
}
fn orifice_plate_spec_8(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 8 * 0.02), 1141.0, dp);
    #{"plate": 8, "flow": f}
}
fn orifice_plate_spec_9(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 9 * 0.02), 1141.0, dp);
    #{"plate": 9, "flow": f}
}
fn orifice_plate_spec_10(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 10 * 0.02), 1141.0, dp);
    #{"plate": 10, "flow": f}
}
fn orifice_plate_spec_11(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 11 * 0.02), 1141.0, dp);
    #{"plate": 11, "flow": f}
}
fn orifice_plate_spec_12(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 12 * 0.02), 1141.0, dp);
    #{"plate": 12, "flow": f}
}
fn orifice_plate_spec_13(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 13 * 0.02), 1141.0, dp);
    #{"plate": 13, "flow": f}
}
fn orifice_plate_spec_14(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 14 * 0.02), 1141.0, dp);
    #{"plate": 14, "flow": f}
}
fn orifice_plate_spec_15(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 15 * 0.02), 1141.0, dp);
    #{"plate": 15, "flow": f}
}
fn orifice_plate_spec_16(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 16 * 0.02), 1141.0, dp);
    #{"plate": 16, "flow": f}
}
fn orifice_plate_spec_17(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 17 * 0.02), 1141.0, dp);
    #{"plate": 17, "flow": f}
}
fn orifice_plate_spec_18(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 18 * 0.02), 1141.0, dp);
    #{"plate": 18, "flow": f}
}
fn orifice_plate_spec_19(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 19 * 0.02), 1141.0, dp);
    #{"plate": 19, "flow": f}
}
fn orifice_plate_spec_20(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 20 * 0.02), 1141.0, dp);
    #{"plate": 20, "flow": f}
}
fn orifice_plate_spec_21(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 21 * 0.02), 1141.0, dp);
    #{"plate": 21, "flow": f}
}
fn orifice_plate_spec_22(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 22 * 0.02), 1141.0, dp);
    #{"plate": 22, "flow": f}
}
fn orifice_plate_spec_23(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 23 * 0.02), 1141.0, dp);
    #{"plate": 23, "flow": f}
}
fn orifice_plate_spec_24(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 24 * 0.02), 1141.0, dp);
    #{"plate": 24, "flow": f}
}
fn orifice_plate_spec_25(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 25 * 0.02), 1141.0, dp);
    #{"plate": 25, "flow": f}
}
fn orifice_plate_spec_26(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 26 * 0.02), 1141.0, dp);
    #{"plate": 26, "flow": f}
}
fn orifice_plate_spec_27(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 27 * 0.02), 1141.0, dp);
    #{"plate": 27, "flow": f}
}
fn orifice_plate_spec_28(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 28 * 0.02), 1141.0, dp);
    #{"plate": 28, "flow": f}
}
fn orifice_plate_spec_29(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 29 * 0.02), 1141.0, dp);
    #{"plate": 29, "flow": f}
}
fn orifice_plate_spec_30(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 30 * 0.02), 1141.0, dp);
    #{"plate": 30, "flow": f}
}
fn orifice_plate_spec_31(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 31 * 0.02), 1141.0, dp);
    #{"plate": 31, "flow": f}
}
fn orifice_plate_spec_32(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 32 * 0.02), 1141.0, dp);
    #{"plate": 32, "flow": f}
}
fn orifice_plate_spec_33(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 33 * 0.02), 1141.0, dp);
    #{"plate": 33, "flow": f}
}
fn orifice_plate_spec_34(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 34 * 0.02), 1141.0, dp);
    #{"plate": 34, "flow": f}
}
fn orifice_plate_spec_35(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 35 * 0.02), 1141.0, dp);
    #{"plate": 35, "flow": f}
}
fn orifice_plate_spec_36(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 36 * 0.02), 1141.0, dp);
    #{"plate": 36, "flow": f}
}
fn orifice_plate_spec_37(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 37 * 0.02), 1141.0, dp);
    #{"plate": 37, "flow": f}
}
fn orifice_plate_spec_38(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 38 * 0.02), 1141.0, dp);
    #{"plate": 38, "flow": f}
}
fn orifice_plate_spec_39(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 39 * 0.02), 1141.0, dp);
    #{"plate": 39, "flow": f}
}
fn orifice_plate_spec_40(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 40 * 0.02), 1141.0, dp);
    #{"plate": 40, "flow": f}
}
fn orifice_plate_spec_41(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 41 * 0.02), 1141.0, dp);
    #{"plate": 41, "flow": f}
}
fn orifice_plate_spec_42(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 42 * 0.02), 1141.0, dp);
    #{"plate": 42, "flow": f}
}
fn orifice_plate_spec_43(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 43 * 0.02), 1141.0, dp);
    #{"plate": 43, "flow": f}
}
fn orifice_plate_spec_44(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 44 * 0.02), 1141.0, dp);
    #{"plate": 44, "flow": f}
}
