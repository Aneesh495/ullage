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
fn orifice_plate_spec_45(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 45 * 0.02), 1141.0, dp);
    #{"plate": 45, "flow": f}
}
fn orifice_plate_spec_46(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 46 * 0.02), 1141.0, dp);
    #{"plate": 46, "flow": f}
}
fn orifice_plate_spec_47(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 47 * 0.02), 1141.0, dp);
    #{"plate": 47, "flow": f}
}
fn orifice_plate_spec_48(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 48 * 0.02), 1141.0, dp);
    #{"plate": 48, "flow": f}
}
fn orifice_plate_spec_49(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 49 * 0.02), 1141.0, dp);
    #{"plate": 49, "flow": f}
}
fn orifice_plate_spec_50(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 50 * 0.02), 1141.0, dp);
    #{"plate": 50, "flow": f}
}
fn orifice_plate_spec_51(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 51 * 0.02), 1141.0, dp);
    #{"plate": 51, "flow": f}
}
fn orifice_plate_spec_52(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 52 * 0.02), 1141.0, dp);
    #{"plate": 52, "flow": f}
}
fn orifice_plate_spec_53(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 53 * 0.02), 1141.0, dp);
    #{"plate": 53, "flow": f}
}
fn orifice_plate_spec_54(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 54 * 0.02), 1141.0, dp);
    #{"plate": 54, "flow": f}
}
fn orifice_plate_spec_55(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 55 * 0.02), 1141.0, dp);
    #{"plate": 55, "flow": f}
}
fn orifice_plate_spec_56(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 56 * 0.02), 1141.0, dp);
    #{"plate": 56, "flow": f}
}
fn orifice_plate_spec_57(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 57 * 0.02), 1141.0, dp);
    #{"plate": 57, "flow": f}
}
fn orifice_plate_spec_58(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 58 * 0.02), 1141.0, dp);
    #{"plate": 58, "flow": f}
}
fn orifice_plate_spec_59(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 59 * 0.02), 1141.0, dp);
    #{"plate": 59, "flow": f}
}
fn orifice_plate_spec_60(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 60 * 0.02), 1141.0, dp);
    #{"plate": 60, "flow": f}
}
fn orifice_plate_spec_61(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 61 * 0.02), 1141.0, dp);
    #{"plate": 61, "flow": f}
}
fn orifice_plate_spec_62(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 62 * 0.02), 1141.0, dp);
    #{"plate": 62, "flow": f}
}
fn orifice_plate_spec_63(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 63 * 0.02), 1141.0, dp);
    #{"plate": 63, "flow": f}
}
fn orifice_plate_spec_64(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 64 * 0.02), 1141.0, dp);
    #{"plate": 64, "flow": f}
}
fn orifice_plate_spec_65(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 65 * 0.02), 1141.0, dp);
    #{"plate": 65, "flow": f}
}
fn orifice_plate_spec_66(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 66 * 0.02), 1141.0, dp);
    #{"plate": 66, "flow": f}
}
fn orifice_plate_spec_67(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 67 * 0.02), 1141.0, dp);
    #{"plate": 67, "flow": f}
}
fn orifice_plate_spec_68(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 68 * 0.02), 1141.0, dp);
    #{"plate": 68, "flow": f}
}
fn orifice_plate_spec_69(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 69 * 0.02), 1141.0, dp);
    #{"plate": 69, "flow": f}
}
fn orifice_plate_spec_70(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 70 * 0.02), 1141.0, dp);
    #{"plate": 70, "flow": f}
}
fn orifice_plate_spec_71(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 71 * 0.02), 1141.0, dp);
    #{"plate": 71, "flow": f}
}
fn orifice_plate_spec_72(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 72 * 0.02), 1141.0, dp);
    #{"plate": 72, "flow": f}
}
fn orifice_plate_spec_73(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 73 * 0.02), 1141.0, dp);
    #{"plate": 73, "flow": f}
}
fn orifice_plate_spec_74(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 74 * 0.02), 1141.0, dp);
    #{"plate": 74, "flow": f}
}
fn orifice_plate_spec_75(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 75 * 0.02), 1141.0, dp);
    #{"plate": 75, "flow": f}
}
fn orifice_plate_spec_76(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 76 * 0.02), 1141.0, dp);
    #{"plate": 76, "flow": f}
}
fn orifice_plate_spec_77(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 77 * 0.02), 1141.0, dp);
    #{"plate": 77, "flow": f}
}
fn orifice_plate_spec_78(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 78 * 0.02), 1141.0, dp);
    #{"plate": 78, "flow": f}
}
fn orifice_plate_spec_79(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 79 * 0.02), 1141.0, dp);
    #{"plate": 79, "flow": f}
}
fn orifice_plate_spec_80(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 80 * 0.02), 1141.0, dp);
    #{"plate": 80, "flow": f}
}
fn orifice_plate_spec_81(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 81 * 0.02), 1141.0, dp);
    #{"plate": 81, "flow": f}
}
fn orifice_plate_spec_82(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 82 * 0.02), 1141.0, dp);
    #{"plate": 82, "flow": f}
}
fn orifice_plate_spec_83(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 83 * 0.02), 1141.0, dp);
    #{"plate": 83, "flow": f}
}
fn orifice_plate_spec_84(dp) {
    let f = orifice_flow_kg_s(0.62, 0.0001 * (1.0 + 84 * 0.02), 1141.0, dp);
    #{"plate": 84, "flow": f}
}
