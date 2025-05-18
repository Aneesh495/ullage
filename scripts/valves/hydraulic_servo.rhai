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
