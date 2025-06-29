// Telemetry Limit Evaluator with Persistence Debounce
// Part of the Ullage Cryogenic Test Executive Suite

fn evaluate_limit(val, min_val, max_val, current_consecutive, debounce) {
    let out_of_bounds = val < min_val || val > max_val;
    let count = if out_of_bounds { current_consecutive + 1 } else { 0 };
    let tripped = count >= debounce;
    #{ "tripped": tripped, "consecutive": count }
}

fn verify_limit_evaluator() {
    let res1 = evaluate_limit(105.0, 0.0, 100.0, 0, 2);
    if res1.tripped { return false; }
    let res2 = evaluate_limit(105.0, 0.0, 100.0, 1, 2);
    if !res2.tripped { return false; }
    true
}
if verify_limit_evaluator() { log_info("[SAFETY::LIMIT_EVALUATOR] Verification passed."); }
fn limit_check_station_1(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 1 * 0.5, 0, 2);
    #{"station": 1, "tripped": r.tripped}
}
fn limit_check_station_2(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 2 * 0.5, 0, 2);
    #{"station": 2, "tripped": r.tripped}
}
fn limit_check_station_3(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 3 * 0.5, 0, 2);
    #{"station": 3, "tripped": r.tripped}
}
fn limit_check_station_4(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 4 * 0.5, 0, 2);
    #{"station": 4, "tripped": r.tripped}
}
fn limit_check_station_5(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 5 * 0.5, 0, 2);
    #{"station": 5, "tripped": r.tripped}
}
fn limit_check_station_6(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 6 * 0.5, 0, 2);
    #{"station": 6, "tripped": r.tripped}
}
fn limit_check_station_7(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 7 * 0.5, 0, 2);
    #{"station": 7, "tripped": r.tripped}
}
fn limit_check_station_8(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 8 * 0.5, 0, 2);
    #{"station": 8, "tripped": r.tripped}
}
fn limit_check_station_9(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 9 * 0.5, 0, 2);
    #{"station": 9, "tripped": r.tripped}
}
fn limit_check_station_10(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 10 * 0.5, 0, 2);
    #{"station": 10, "tripped": r.tripped}
}
fn limit_check_station_11(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 11 * 0.5, 0, 2);
    #{"station": 11, "tripped": r.tripped}
}
fn limit_check_station_12(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 12 * 0.5, 0, 2);
    #{"station": 12, "tripped": r.tripped}
}
fn limit_check_station_13(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 13 * 0.5, 0, 2);
    #{"station": 13, "tripped": r.tripped}
}
fn limit_check_station_14(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 14 * 0.5, 0, 2);
    #{"station": 14, "tripped": r.tripped}
}
fn limit_check_station_15(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 15 * 0.5, 0, 2);
    #{"station": 15, "tripped": r.tripped}
}
fn limit_check_station_16(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 16 * 0.5, 0, 2);
    #{"station": 16, "tripped": r.tripped}
}
fn limit_check_station_17(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 17 * 0.5, 0, 2);
    #{"station": 17, "tripped": r.tripped}
}
fn limit_check_station_18(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 18 * 0.5, 0, 2);
    #{"station": 18, "tripped": r.tripped}
}
fn limit_check_station_19(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 19 * 0.5, 0, 2);
    #{"station": 19, "tripped": r.tripped}
}
fn limit_check_station_20(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 20 * 0.5, 0, 2);
    #{"station": 20, "tripped": r.tripped}
}
fn limit_check_station_21(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 21 * 0.5, 0, 2);
    #{"station": 21, "tripped": r.tripped}
}
fn limit_check_station_22(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 22 * 0.5, 0, 2);
    #{"station": 22, "tripped": r.tripped}
}
fn limit_check_station_23(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 23 * 0.5, 0, 2);
    #{"station": 23, "tripped": r.tripped}
}
fn limit_check_station_24(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 24 * 0.5, 0, 2);
    #{"station": 24, "tripped": r.tripped}
}
fn limit_check_station_25(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 25 * 0.5, 0, 2);
    #{"station": 25, "tripped": r.tripped}
}
fn limit_check_station_26(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 26 * 0.5, 0, 2);
    #{"station": 26, "tripped": r.tripped}
}
fn limit_check_station_27(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 27 * 0.5, 0, 2);
    #{"station": 27, "tripped": r.tripped}
}
fn limit_check_station_28(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 28 * 0.5, 0, 2);
    #{"station": 28, "tripped": r.tripped}
}
fn limit_check_station_29(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 29 * 0.5, 0, 2);
    #{"station": 29, "tripped": r.tripped}
}
fn limit_check_station_30(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 30 * 0.5, 0, 2);
    #{"station": 30, "tripped": r.tripped}
}
fn limit_check_station_31(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 31 * 0.5, 0, 2);
    #{"station": 31, "tripped": r.tripped}
}
fn limit_check_station_32(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 32 * 0.5, 0, 2);
    #{"station": 32, "tripped": r.tripped}
}
fn limit_check_station_33(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 33 * 0.5, 0, 2);
    #{"station": 33, "tripped": r.tripped}
}
fn limit_check_station_34(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 34 * 0.5, 0, 2);
    #{"station": 34, "tripped": r.tripped}
}
fn limit_check_station_35(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 35 * 0.5, 0, 2);
    #{"station": 35, "tripped": r.tripped}
}
fn limit_check_station_36(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 36 * 0.5, 0, 2);
    #{"station": 36, "tripped": r.tripped}
}
fn limit_check_station_37(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 37 * 0.5, 0, 2);
    #{"station": 37, "tripped": r.tripped}
}
fn limit_check_station_38(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 38 * 0.5, 0, 2);
    #{"station": 38, "tripped": r.tripped}
}
fn limit_check_station_39(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 39 * 0.5, 0, 2);
    #{"station": 39, "tripped": r.tripped}
}
fn limit_check_station_40(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 40 * 0.5, 0, 2);
    #{"station": 40, "tripped": r.tripped}
}
fn limit_check_station_41(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 41 * 0.5, 0, 2);
    #{"station": 41, "tripped": r.tripped}
}
fn limit_check_station_42(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 42 * 0.5, 0, 2);
    #{"station": 42, "tripped": r.tripped}
}
fn limit_check_station_43(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 43 * 0.5, 0, 2);
    #{"station": 43, "tripped": r.tripped}
}
fn limit_check_station_44(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 44 * 0.5, 0, 2);
    #{"station": 44, "tripped": r.tripped}
}
fn limit_check_station_45(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 45 * 0.5, 0, 2);
    #{"station": 45, "tripped": r.tripped}
}
fn limit_check_station_46(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 46 * 0.5, 0, 2);
    #{"station": 46, "tripped": r.tripped}
}
fn limit_check_station_47(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 47 * 0.5, 0, 2);
    #{"station": 47, "tripped": r.tripped}
}
fn limit_check_station_48(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 48 * 0.5, 0, 2);
    #{"station": 48, "tripped": r.tripped}
}
fn limit_check_station_49(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 49 * 0.5, 0, 2);
    #{"station": 49, "tripped": r.tripped}
}
fn limit_check_station_50(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 50 * 0.5, 0, 2);
    #{"station": 50, "tripped": r.tripped}
}
fn limit_check_station_51(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 51 * 0.5, 0, 2);
    #{"station": 51, "tripped": r.tripped}
}
fn limit_check_station_52(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 52 * 0.5, 0, 2);
    #{"station": 52, "tripped": r.tripped}
}
fn limit_check_station_53(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 53 * 0.5, 0, 2);
    #{"station": 53, "tripped": r.tripped}
}
fn limit_check_station_54(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 54 * 0.5, 0, 2);
    #{"station": 54, "tripped": r.tripped}
}
fn limit_check_station_55(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 55 * 0.5, 0, 2);
    #{"station": 55, "tripped": r.tripped}
}
fn limit_check_station_56(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 56 * 0.5, 0, 2);
    #{"station": 56, "tripped": r.tripped}
}
fn limit_check_station_57(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 57 * 0.5, 0, 2);
    #{"station": 57, "tripped": r.tripped}
}
fn limit_check_station_58(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 58 * 0.5, 0, 2);
    #{"station": 58, "tripped": r.tripped}
}
fn limit_check_station_59(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 59 * 0.5, 0, 2);
    #{"station": 59, "tripped": r.tripped}
}
fn limit_check_station_60(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 60 * 0.5, 0, 2);
    #{"station": 60, "tripped": r.tripped}
}
fn limit_check_station_61(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 61 * 0.5, 0, 2);
    #{"station": 61, "tripped": r.tripped}
}
fn limit_check_station_62(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 62 * 0.5, 0, 2);
    #{"station": 62, "tripped": r.tripped}
}
fn limit_check_station_63(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 63 * 0.5, 0, 2);
    #{"station": 63, "tripped": r.tripped}
}
fn limit_check_station_64(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 64 * 0.5, 0, 2);
    #{"station": 64, "tripped": r.tripped}
}
fn limit_check_station_65(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 65 * 0.5, 0, 2);
    #{"station": 65, "tripped": r.tripped}
}
fn limit_check_station_66(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 66 * 0.5, 0, 2);
    #{"station": 66, "tripped": r.tripped}
}
fn limit_check_station_67(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 67 * 0.5, 0, 2);
    #{"station": 67, "tripped": r.tripped}
}
fn limit_check_station_68(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 68 * 0.5, 0, 2);
    #{"station": 68, "tripped": r.tripped}
}
fn limit_check_station_69(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 69 * 0.5, 0, 2);
    #{"station": 69, "tripped": r.tripped}
}
fn limit_check_station_70(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 70 * 0.5, 0, 2);
    #{"station": 70, "tripped": r.tripped}
}
fn limit_check_station_71(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 71 * 0.5, 0, 2);
    #{"station": 71, "tripped": r.tripped}
}
fn limit_check_station_72(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 72 * 0.5, 0, 2);
    #{"station": 72, "tripped": r.tripped}
}
fn limit_check_station_73(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 73 * 0.5, 0, 2);
    #{"station": 73, "tripped": r.tripped}
}
fn limit_check_station_74(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 74 * 0.5, 0, 2);
    #{"station": 74, "tripped": r.tripped}
}
fn limit_check_station_75(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 75 * 0.5, 0, 2);
    #{"station": 75, "tripped": r.tripped}
}
fn limit_check_station_76(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 76 * 0.5, 0, 2);
    #{"station": 76, "tripped": r.tripped}
}
fn limit_check_station_77(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 77 * 0.5, 0, 2);
    #{"station": 77, "tripped": r.tripped}
}
fn limit_check_station_78(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 78 * 0.5, 0, 2);
    #{"station": 78, "tripped": r.tripped}
}
fn limit_check_station_79(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 79 * 0.5, 0, 2);
    #{"station": 79, "tripped": r.tripped}
}
fn limit_check_station_80(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 80 * 0.5, 0, 2);
    #{"station": 80, "tripped": r.tripped}
}
fn limit_check_station_81(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 81 * 0.5, 0, 2);
    #{"station": 81, "tripped": r.tripped}
}
fn limit_check_station_82(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 82 * 0.5, 0, 2);
    #{"station": 82, "tripped": r.tripped}
}
fn limit_check_station_83(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 83 * 0.5, 0, 2);
    #{"station": 83, "tripped": r.tripped}
}
fn limit_check_station_84(val) {
    let r = evaluate_limit(val, 0.0, 100.0 + 84 * 0.5, 0, 2);
    #{"station": 84, "tripped": r.tripped}
}
