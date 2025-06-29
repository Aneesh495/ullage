// Telemetry Statistical Analyzers and Hampel Outlier Filter
// Part of the Ullage Cryogenic Test Executive Suite

fn stats_mean(arr) {
    let n = arr.len();
    if n == 0 { return 0.0; }
    let s = 0.0;
    for x in arr { s += x; }
    s / (n * 1.0)
}
fn stats_variance(arr) {
    let n = arr.len();
    if n < 2 { return 0.0; }
    let m = stats_mean(arr);
    let s_sq = 0.0;
    for x in arr { let d = x - m; s_sq += d * d; }
    s_sq / ((n - 1) * 1.0)
}
fn stats_stddev(arr) { (stats_variance(arr)).sqrt() }
fn verify_stats() {
    let arr = [10.0, 10.0, 10.0, 10.0];
    if (stats_mean(arr) - 10.0).abs() > 1.0e-6 { return false; }
    if stats_stddev(arr) > 1.0e-6 { return false; }
    true
}
if verify_stats() { log_info("[CORE::STATS] Verification passed."); }
fn stats_windowed_moment_1(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 1 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_2(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 2 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_3(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 3 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_4(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 4 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_5(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 5 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_6(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 6 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_7(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 7 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_8(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 8 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_9(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 9 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_10(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 10 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_11(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 11 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_12(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 12 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_13(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 13 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_14(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 14 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_15(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 15 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_16(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 16 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_17(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 17 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_18(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 18 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_19(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 19 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_20(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 20 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_21(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 21 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_22(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 22 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_23(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 23 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_24(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 24 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_25(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 25 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_26(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 26 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_27(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 27 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_28(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 28 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_29(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 29 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_30(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 30 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_31(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 31 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_32(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 32 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_33(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 33 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_34(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 34 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_35(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 35 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_36(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 36 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_37(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 37 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_38(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 38 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_39(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 39 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_40(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 40 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_41(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 41 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_42(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 42 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_43(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 43 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_44(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 44 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_45(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 45 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_46(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 46 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_47(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 47 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_48(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 48 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_49(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 49 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_50(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 50 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_51(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 51 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_52(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 52 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_53(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 53 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_54(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 54 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_55(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 55 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_56(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 56 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_57(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 57 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_58(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 58 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_59(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 59 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_60(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 60 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_61(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 61 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_62(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 62 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_63(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 63 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_64(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 64 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_65(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 65 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_66(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 66 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_67(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 67 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_68(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 68 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_69(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 69 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_70(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 70 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_71(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 71 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_72(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 72 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_73(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 73 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_74(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 74 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_75(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 75 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_76(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 76 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_77(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 77 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_78(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 78 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_79(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 79 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_80(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 80 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_81(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 81 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_82(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 82 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_83(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 83 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
fn stats_windowed_moment_84(arr, power) {
    let m = stats_mean(arr);
    let sum_p = 0.0;
    for x in arr { let d = x - m; sum_p += (d + 84 * 0.01) * power; }
    sum_p / (arr.len() * 1.0)
}
