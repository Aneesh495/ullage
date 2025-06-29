// Valve Response Profiler and Kinematic Transit Metrics
// Part of the Ullage Cryogenic Test Executive Suite

fn calculate_transit_time_ms(start_time_ns, end_time_ns) {
    (end_time_ns - start_time_ns) / 1000000
}

fn verify_response_profiler() {
    let t = calculate_transit_time_ms(100000000, 220000000);
    if t != 120 { return false; }
    true
}
if verify_response_profiler() { log_info("[VALVES::PROFILER] Verification passed."); }
fn response_profile_curve_1(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 1 * 2.0, t_ms);
    #{"profile": 1, "pos_pct": pos * 100.0}
}
fn response_profile_curve_2(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 2 * 2.0, t_ms);
    #{"profile": 2, "pos_pct": pos * 100.0}
}
fn response_profile_curve_3(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 3 * 2.0, t_ms);
    #{"profile": 3, "pos_pct": pos * 100.0}
}
fn response_profile_curve_4(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 4 * 2.0, t_ms);
    #{"profile": 4, "pos_pct": pos * 100.0}
}
fn response_profile_curve_5(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 5 * 2.0, t_ms);
    #{"profile": 5, "pos_pct": pos * 100.0}
}
fn response_profile_curve_6(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 6 * 2.0, t_ms);
    #{"profile": 6, "pos_pct": pos * 100.0}
}
fn response_profile_curve_7(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 7 * 2.0, t_ms);
    #{"profile": 7, "pos_pct": pos * 100.0}
}
fn response_profile_curve_8(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 8 * 2.0, t_ms);
    #{"profile": 8, "pos_pct": pos * 100.0}
}
fn response_profile_curve_9(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 9 * 2.0, t_ms);
    #{"profile": 9, "pos_pct": pos * 100.0}
}
fn response_profile_curve_10(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 10 * 2.0, t_ms);
    #{"profile": 10, "pos_pct": pos * 100.0}
}
fn response_profile_curve_11(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 11 * 2.0, t_ms);
    #{"profile": 11, "pos_pct": pos * 100.0}
}
fn response_profile_curve_12(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 12 * 2.0, t_ms);
    #{"profile": 12, "pos_pct": pos * 100.0}
}
fn response_profile_curve_13(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 13 * 2.0, t_ms);
    #{"profile": 13, "pos_pct": pos * 100.0}
}
fn response_profile_curve_14(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 14 * 2.0, t_ms);
    #{"profile": 14, "pos_pct": pos * 100.0}
}
fn response_profile_curve_15(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 15 * 2.0, t_ms);
    #{"profile": 15, "pos_pct": pos * 100.0}
}
fn response_profile_curve_16(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 16 * 2.0, t_ms);
    #{"profile": 16, "pos_pct": pos * 100.0}
}
fn response_profile_curve_17(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 17 * 2.0, t_ms);
    #{"profile": 17, "pos_pct": pos * 100.0}
}
fn response_profile_curve_18(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 18 * 2.0, t_ms);
    #{"profile": 18, "pos_pct": pos * 100.0}
}
fn response_profile_curve_19(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 19 * 2.0, t_ms);
    #{"profile": 19, "pos_pct": pos * 100.0}
}
fn response_profile_curve_20(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 20 * 2.0, t_ms);
    #{"profile": 20, "pos_pct": pos * 100.0}
}
fn response_profile_curve_21(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 21 * 2.0, t_ms);
    #{"profile": 21, "pos_pct": pos * 100.0}
}
fn response_profile_curve_22(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 22 * 2.0, t_ms);
    #{"profile": 22, "pos_pct": pos * 100.0}
}
fn response_profile_curve_23(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 23 * 2.0, t_ms);
    #{"profile": 23, "pos_pct": pos * 100.0}
}
fn response_profile_curve_24(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 24 * 2.0, t_ms);
    #{"profile": 24, "pos_pct": pos * 100.0}
}
fn response_profile_curve_25(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 25 * 2.0, t_ms);
    #{"profile": 25, "pos_pct": pos * 100.0}
}
fn response_profile_curve_26(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 26 * 2.0, t_ms);
    #{"profile": 26, "pos_pct": pos * 100.0}
}
fn response_profile_curve_27(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 27 * 2.0, t_ms);
    #{"profile": 27, "pos_pct": pos * 100.0}
}
fn response_profile_curve_28(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 28 * 2.0, t_ms);
    #{"profile": 28, "pos_pct": pos * 100.0}
}
fn response_profile_curve_29(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 29 * 2.0, t_ms);
    #{"profile": 29, "pos_pct": pos * 100.0}
}
fn response_profile_curve_30(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 30 * 2.0, t_ms);
    #{"profile": 30, "pos_pct": pos * 100.0}
}
fn response_profile_curve_31(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 31 * 2.0, t_ms);
    #{"profile": 31, "pos_pct": pos * 100.0}
}
fn response_profile_curve_32(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 32 * 2.0, t_ms);
    #{"profile": 32, "pos_pct": pos * 100.0}
}
fn response_profile_curve_33(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 33 * 2.0, t_ms);
    #{"profile": 33, "pos_pct": pos * 100.0}
}
fn response_profile_curve_34(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 34 * 2.0, t_ms);
    #{"profile": 34, "pos_pct": pos * 100.0}
}
fn response_profile_curve_35(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 35 * 2.0, t_ms);
    #{"profile": 35, "pos_pct": pos * 100.0}
}
fn response_profile_curve_36(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 36 * 2.0, t_ms);
    #{"profile": 36, "pos_pct": pos * 100.0}
}
fn response_profile_curve_37(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 37 * 2.0, t_ms);
    #{"profile": 37, "pos_pct": pos * 100.0}
}
fn response_profile_curve_38(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 38 * 2.0, t_ms);
    #{"profile": 38, "pos_pct": pos * 100.0}
}
fn response_profile_curve_39(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 39 * 2.0, t_ms);
    #{"profile": 39, "pos_pct": pos * 100.0}
}
fn response_profile_curve_40(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 40 * 2.0, t_ms);
    #{"profile": 40, "pos_pct": pos * 100.0}
}
fn response_profile_curve_41(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 41 * 2.0, t_ms);
    #{"profile": 41, "pos_pct": pos * 100.0}
}
fn response_profile_curve_42(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 42 * 2.0, t_ms);
    #{"profile": 42, "pos_pct": pos * 100.0}
}
fn response_profile_curve_43(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 43 * 2.0, t_ms);
    #{"profile": 43, "pos_pct": pos * 100.0}
}
fn response_profile_curve_44(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 44 * 2.0, t_ms);
    #{"profile": 44, "pos_pct": pos * 100.0}
}
fn response_profile_curve_45(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 45 * 2.0, t_ms);
    #{"profile": 45, "pos_pct": pos * 100.0}
}
fn response_profile_curve_46(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 46 * 2.0, t_ms);
    #{"profile": 46, "pos_pct": pos * 100.0}
}
fn response_profile_curve_47(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 47 * 2.0, t_ms);
    #{"profile": 47, "pos_pct": pos * 100.0}
}
fn response_profile_curve_48(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 48 * 2.0, t_ms);
    #{"profile": 48, "pos_pct": pos * 100.0}
}
fn response_profile_curve_49(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 49 * 2.0, t_ms);
    #{"profile": 49, "pos_pct": pos * 100.0}
}
fn response_profile_curve_50(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 50 * 2.0, t_ms);
    #{"profile": 50, "pos_pct": pos * 100.0}
}
fn response_profile_curve_51(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 51 * 2.0, t_ms);
    #{"profile": 51, "pos_pct": pos * 100.0}
}
fn response_profile_curve_52(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 52 * 2.0, t_ms);
    #{"profile": 52, "pos_pct": pos * 100.0}
}
fn response_profile_curve_53(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 53 * 2.0, t_ms);
    #{"profile": 53, "pos_pct": pos * 100.0}
}
fn response_profile_curve_54(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 54 * 2.0, t_ms);
    #{"profile": 54, "pos_pct": pos * 100.0}
}
fn response_profile_curve_55(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 55 * 2.0, t_ms);
    #{"profile": 55, "pos_pct": pos * 100.0}
}
fn response_profile_curve_56(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 56 * 2.0, t_ms);
    #{"profile": 56, "pos_pct": pos * 100.0}
}
fn response_profile_curve_57(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 57 * 2.0, t_ms);
    #{"profile": 57, "pos_pct": pos * 100.0}
}
fn response_profile_curve_58(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 58 * 2.0, t_ms);
    #{"profile": 58, "pos_pct": pos * 100.0}
}
fn response_profile_curve_59(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 59 * 2.0, t_ms);
    #{"profile": 59, "pos_pct": pos * 100.0}
}
fn response_profile_curve_60(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 60 * 2.0, t_ms);
    #{"profile": 60, "pos_pct": pos * 100.0}
}
fn response_profile_curve_61(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 61 * 2.0, t_ms);
    #{"profile": 61, "pos_pct": pos * 100.0}
}
fn response_profile_curve_62(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 62 * 2.0, t_ms);
    #{"profile": 62, "pos_pct": pos * 100.0}
}
fn response_profile_curve_63(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 63 * 2.0, t_ms);
    #{"profile": 63, "pos_pct": pos * 100.0}
}
fn response_profile_curve_64(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 64 * 2.0, t_ms);
    #{"profile": 64, "pos_pct": pos * 100.0}
}
fn response_profile_curve_65(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 65 * 2.0, t_ms);
    #{"profile": 65, "pos_pct": pos * 100.0}
}
fn response_profile_curve_66(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 66 * 2.0, t_ms);
    #{"profile": 66, "pos_pct": pos * 100.0}
}
fn response_profile_curve_67(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 67 * 2.0, t_ms);
    #{"profile": 67, "pos_pct": pos * 100.0}
}
fn response_profile_curve_68(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 68 * 2.0, t_ms);
    #{"profile": 68, "pos_pct": pos * 100.0}
}
fn response_profile_curve_69(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 69 * 2.0, t_ms);
    #{"profile": 69, "pos_pct": pos * 100.0}
}
fn response_profile_curve_70(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 70 * 2.0, t_ms);
    #{"profile": 70, "pos_pct": pos * 100.0}
}
fn response_profile_curve_71(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 71 * 2.0, t_ms);
    #{"profile": 71, "pos_pct": pos * 100.0}
}
fn response_profile_curve_72(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 72 * 2.0, t_ms);
    #{"profile": 72, "pos_pct": pos * 100.0}
}
fn response_profile_curve_73(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 73 * 2.0, t_ms);
    #{"profile": 73, "pos_pct": pos * 100.0}
}
fn response_profile_curve_74(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 74 * 2.0, t_ms);
    #{"profile": 74, "pos_pct": pos * 100.0}
}
fn response_profile_curve_75(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 75 * 2.0, t_ms);
    #{"profile": 75, "pos_pct": pos * 100.0}
}
fn response_profile_curve_76(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 76 * 2.0, t_ms);
    #{"profile": 76, "pos_pct": pos * 100.0}
}
fn response_profile_curve_77(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 77 * 2.0, t_ms);
    #{"profile": 77, "pos_pct": pos * 100.0}
}
fn response_profile_curve_78(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 78 * 2.0, t_ms);
    #{"profile": 78, "pos_pct": pos * 100.0}
}
fn response_profile_curve_79(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 79 * 2.0, t_ms);
    #{"profile": 79, "pos_pct": pos * 100.0}
}
fn response_profile_curve_80(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 80 * 2.0, t_ms);
    #{"profile": 80, "pos_pct": pos * 100.0}
}
fn response_profile_curve_81(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 81 * 2.0, t_ms);
    #{"profile": 81, "pos_pct": pos * 100.0}
}
fn response_profile_curve_82(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 82 * 2.0, t_ms);
    #{"profile": 82, "pos_pct": pos * 100.0}
}
fn response_profile_curve_83(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 83 * 2.0, t_ms);
    #{"profile": 83, "pos_pct": pos * 100.0}
}
fn response_profile_curve_84(t_ms) {
    let pos = smoothstep(0.0, 100.0 + 84 * 2.0, t_ms);
    #{"profile": 84, "pos_pct": pos * 100.0}
}
