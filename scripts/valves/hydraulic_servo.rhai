// Electro-Hydraulic Servo Valve Spool Dynamics
// Part of the Ullage Cryogenic Test Executive Suite

fn servo_flow_rate_lpm(spool_pct, delta_p_bar, rated_flow_lpm, rated_dp_bar) {
    let dp_ratio = (delta_p_bar / rated_dp_bar).max(0.0);
    let frac = math_clamp(spool_pct, -100.0, 100.0) / 100.0;
    rated_flow_lpm * frac * (dp_ratio.sqrt())
}

fn verify_hydraulic_servo() {
    let flow = servo_flow_rate_lpm(100.0, 70.0, 40.0, 70.0);
    if (flow - 40.0).abs() > 0.1 { return false; }
    true
}
if verify_hydraulic_servo() { log_info("[VALVES::HYDRAULIC_SERVO] Verification passed."); }
fn servo_response_slice_1(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 1 * 1.0, 40.0, 70.0);
    #{"slice": 1, "flow_lpm": q}
}
fn servo_response_slice_2(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 2 * 1.0, 40.0, 70.0);
    #{"slice": 2, "flow_lpm": q}
}
fn servo_response_slice_3(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 3 * 1.0, 40.0, 70.0);
    #{"slice": 3, "flow_lpm": q}
}
fn servo_response_slice_4(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 4 * 1.0, 40.0, 70.0);
    #{"slice": 4, "flow_lpm": q}
}
fn servo_response_slice_5(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 5 * 1.0, 40.0, 70.0);
    #{"slice": 5, "flow_lpm": q}
}
fn servo_response_slice_6(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 6 * 1.0, 40.0, 70.0);
    #{"slice": 6, "flow_lpm": q}
}
fn servo_response_slice_7(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 7 * 1.0, 40.0, 70.0);
    #{"slice": 7, "flow_lpm": q}
}
fn servo_response_slice_8(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 8 * 1.0, 40.0, 70.0);
    #{"slice": 8, "flow_lpm": q}
}
fn servo_response_slice_9(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 9 * 1.0, 40.0, 70.0);
    #{"slice": 9, "flow_lpm": q}
}
fn servo_response_slice_10(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 10 * 1.0, 40.0, 70.0);
    #{"slice": 10, "flow_lpm": q}
}
fn servo_response_slice_11(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 11 * 1.0, 40.0, 70.0);
    #{"slice": 11, "flow_lpm": q}
}
fn servo_response_slice_12(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 12 * 1.0, 40.0, 70.0);
    #{"slice": 12, "flow_lpm": q}
}
fn servo_response_slice_13(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 13 * 1.0, 40.0, 70.0);
    #{"slice": 13, "flow_lpm": q}
}
fn servo_response_slice_14(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 14 * 1.0, 40.0, 70.0);
    #{"slice": 14, "flow_lpm": q}
}
fn servo_response_slice_15(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 15 * 1.0, 40.0, 70.0);
    #{"slice": 15, "flow_lpm": q}
}
fn servo_response_slice_16(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 16 * 1.0, 40.0, 70.0);
    #{"slice": 16, "flow_lpm": q}
}
fn servo_response_slice_17(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 17 * 1.0, 40.0, 70.0);
    #{"slice": 17, "flow_lpm": q}
}
fn servo_response_slice_18(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 18 * 1.0, 40.0, 70.0);
    #{"slice": 18, "flow_lpm": q}
}
fn servo_response_slice_19(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 19 * 1.0, 40.0, 70.0);
    #{"slice": 19, "flow_lpm": q}
}
fn servo_response_slice_20(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 20 * 1.0, 40.0, 70.0);
    #{"slice": 20, "flow_lpm": q}
}
fn servo_response_slice_21(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 21 * 1.0, 40.0, 70.0);
    #{"slice": 21, "flow_lpm": q}
}
fn servo_response_slice_22(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 22 * 1.0, 40.0, 70.0);
    #{"slice": 22, "flow_lpm": q}
}
fn servo_response_slice_23(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 23 * 1.0, 40.0, 70.0);
    #{"slice": 23, "flow_lpm": q}
}
fn servo_response_slice_24(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 24 * 1.0, 40.0, 70.0);
    #{"slice": 24, "flow_lpm": q}
}
fn servo_response_slice_25(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 25 * 1.0, 40.0, 70.0);
    #{"slice": 25, "flow_lpm": q}
}
fn servo_response_slice_26(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 26 * 1.0, 40.0, 70.0);
    #{"slice": 26, "flow_lpm": q}
}
fn servo_response_slice_27(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 27 * 1.0, 40.0, 70.0);
    #{"slice": 27, "flow_lpm": q}
}
fn servo_response_slice_28(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 28 * 1.0, 40.0, 70.0);
    #{"slice": 28, "flow_lpm": q}
}
fn servo_response_slice_29(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 29 * 1.0, 40.0, 70.0);
    #{"slice": 29, "flow_lpm": q}
}
fn servo_response_slice_30(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 30 * 1.0, 40.0, 70.0);
    #{"slice": 30, "flow_lpm": q}
}
fn servo_response_slice_31(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 31 * 1.0, 40.0, 70.0);
    #{"slice": 31, "flow_lpm": q}
}
fn servo_response_slice_32(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 32 * 1.0, 40.0, 70.0);
    #{"slice": 32, "flow_lpm": q}
}
fn servo_response_slice_33(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 33 * 1.0, 40.0, 70.0);
    #{"slice": 33, "flow_lpm": q}
}
fn servo_response_slice_34(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 34 * 1.0, 40.0, 70.0);
    #{"slice": 34, "flow_lpm": q}
}
fn servo_response_slice_35(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 35 * 1.0, 40.0, 70.0);
    #{"slice": 35, "flow_lpm": q}
}
fn servo_response_slice_36(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 36 * 1.0, 40.0, 70.0);
    #{"slice": 36, "flow_lpm": q}
}
fn servo_response_slice_37(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 37 * 1.0, 40.0, 70.0);
    #{"slice": 37, "flow_lpm": q}
}
fn servo_response_slice_38(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 38 * 1.0, 40.0, 70.0);
    #{"slice": 38, "flow_lpm": q}
}
fn servo_response_slice_39(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 39 * 1.0, 40.0, 70.0);
    #{"slice": 39, "flow_lpm": q}
}
fn servo_response_slice_40(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 40 * 1.0, 40.0, 70.0);
    #{"slice": 40, "flow_lpm": q}
}
fn servo_response_slice_41(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 41 * 1.0, 40.0, 70.0);
    #{"slice": 41, "flow_lpm": q}
}
fn servo_response_slice_42(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 42 * 1.0, 40.0, 70.0);
    #{"slice": 42, "flow_lpm": q}
}
fn servo_response_slice_43(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 43 * 1.0, 40.0, 70.0);
    #{"slice": 43, "flow_lpm": q}
}
fn servo_response_slice_44(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 44 * 1.0, 40.0, 70.0);
    #{"slice": 44, "flow_lpm": q}
}
fn servo_response_slice_45(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 45 * 1.0, 40.0, 70.0);
    #{"slice": 45, "flow_lpm": q}
}
fn servo_response_slice_46(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 46 * 1.0, 40.0, 70.0);
    #{"slice": 46, "flow_lpm": q}
}
fn servo_response_slice_47(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 47 * 1.0, 40.0, 70.0);
    #{"slice": 47, "flow_lpm": q}
}
fn servo_response_slice_48(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 48 * 1.0, 40.0, 70.0);
    #{"slice": 48, "flow_lpm": q}
}
fn servo_response_slice_49(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 49 * 1.0, 40.0, 70.0);
    #{"slice": 49, "flow_lpm": q}
}
fn servo_response_slice_50(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 50 * 1.0, 40.0, 70.0);
    #{"slice": 50, "flow_lpm": q}
}
fn servo_response_slice_51(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 51 * 1.0, 40.0, 70.0);
    #{"slice": 51, "flow_lpm": q}
}
fn servo_response_slice_52(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 52 * 1.0, 40.0, 70.0);
    #{"slice": 52, "flow_lpm": q}
}
fn servo_response_slice_53(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 53 * 1.0, 40.0, 70.0);
    #{"slice": 53, "flow_lpm": q}
}
fn servo_response_slice_54(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 54 * 1.0, 40.0, 70.0);
    #{"slice": 54, "flow_lpm": q}
}
fn servo_response_slice_55(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 55 * 1.0, 40.0, 70.0);
    #{"slice": 55, "flow_lpm": q}
}
fn servo_response_slice_56(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 56 * 1.0, 40.0, 70.0);
    #{"slice": 56, "flow_lpm": q}
}
fn servo_response_slice_57(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 57 * 1.0, 40.0, 70.0);
    #{"slice": 57, "flow_lpm": q}
}
fn servo_response_slice_58(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 58 * 1.0, 40.0, 70.0);
    #{"slice": 58, "flow_lpm": q}
}
fn servo_response_slice_59(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 59 * 1.0, 40.0, 70.0);
    #{"slice": 59, "flow_lpm": q}
}
fn servo_response_slice_60(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 60 * 1.0, 40.0, 70.0);
    #{"slice": 60, "flow_lpm": q}
}
fn servo_response_slice_61(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 61 * 1.0, 40.0, 70.0);
    #{"slice": 61, "flow_lpm": q}
}
fn servo_response_slice_62(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 62 * 1.0, 40.0, 70.0);
    #{"slice": 62, "flow_lpm": q}
}
fn servo_response_slice_63(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 63 * 1.0, 40.0, 70.0);
    #{"slice": 63, "flow_lpm": q}
}
fn servo_response_slice_64(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 64 * 1.0, 40.0, 70.0);
    #{"slice": 64, "flow_lpm": q}
}
fn servo_response_slice_65(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 65 * 1.0, 40.0, 70.0);
    #{"slice": 65, "flow_lpm": q}
}
fn servo_response_slice_66(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 66 * 1.0, 40.0, 70.0);
    #{"slice": 66, "flow_lpm": q}
}
fn servo_response_slice_67(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 67 * 1.0, 40.0, 70.0);
    #{"slice": 67, "flow_lpm": q}
}
fn servo_response_slice_68(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 68 * 1.0, 40.0, 70.0);
    #{"slice": 68, "flow_lpm": q}
}
fn servo_response_slice_69(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 69 * 1.0, 40.0, 70.0);
    #{"slice": 69, "flow_lpm": q}
}
fn servo_response_slice_70(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 70 * 1.0, 40.0, 70.0);
    #{"slice": 70, "flow_lpm": q}
}
fn servo_response_slice_71(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 71 * 1.0, 40.0, 70.0);
    #{"slice": 71, "flow_lpm": q}
}
fn servo_response_slice_72(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 72 * 1.0, 40.0, 70.0);
    #{"slice": 72, "flow_lpm": q}
}
fn servo_response_slice_73(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 73 * 1.0, 40.0, 70.0);
    #{"slice": 73, "flow_lpm": q}
}
fn servo_response_slice_74(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 74 * 1.0, 40.0, 70.0);
    #{"slice": 74, "flow_lpm": q}
}
fn servo_response_slice_75(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 75 * 1.0, 40.0, 70.0);
    #{"slice": 75, "flow_lpm": q}
}
fn servo_response_slice_76(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 76 * 1.0, 40.0, 70.0);
    #{"slice": 76, "flow_lpm": q}
}
fn servo_response_slice_77(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 77 * 1.0, 40.0, 70.0);
    #{"slice": 77, "flow_lpm": q}
}
fn servo_response_slice_78(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 78 * 1.0, 40.0, 70.0);
    #{"slice": 78, "flow_lpm": q}
}
fn servo_response_slice_79(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 79 * 1.0, 40.0, 70.0);
    #{"slice": 79, "flow_lpm": q}
}
fn servo_response_slice_80(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 80 * 1.0, 40.0, 70.0);
    #{"slice": 80, "flow_lpm": q}
}
fn servo_response_slice_81(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 81 * 1.0, 40.0, 70.0);
    #{"slice": 81, "flow_lpm": q}
}
fn servo_response_slice_82(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 82 * 1.0, 40.0, 70.0);
    #{"slice": 82, "flow_lpm": q}
}
fn servo_response_slice_83(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 83 * 1.0, 40.0, 70.0);
    #{"slice": 83, "flow_lpm": q}
}
fn servo_response_slice_84(spool) {
    let q = servo_flow_rate_lpm(spool, 70.0 + 84 * 1.0, 40.0, 70.0);
    #{"slice": 84, "flow_lpm": q}
}
