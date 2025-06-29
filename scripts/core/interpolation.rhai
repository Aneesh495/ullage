// Numerical Interpolation and Spline Routines
// Part of the Ullage Cryogenic Test Executive Suite

fn lerp_1d(x0, y0, x1, y1, x) {
    if (x1 - x0).abs() < 1.0e-12 { return y0; }
    let t = (x - x0) / (x1 - x0);
    y0 + t * (y1 - y0)
}
fn table_lookup_linear(xs, ys, x) {
    let n = xs.len();
    if n == 0 { return 0.0; }
    if x <= xs[0] { return ys[0]; }
    if x >= xs[n - 1] { return ys[n - 1]; }
    let i = 0;
    while i < n - 1 {
        if x >= xs[i] && x <= xs[i + 1] {
            return lerp_1d(xs[i], ys[i], xs[i + 1], ys[i + 1], x);
        }
        i += 1;
    }
    ys[n - 1]
}
fn verify_interpolation() {
    let xs = [0.0, 10.0, 20.0];
    let ys = [0.0, 100.0, 200.0];
    let y = table_lookup_linear(xs, ys, 5.0);
    if (y - 50.0).abs() > 1.0e-6 { return false; }
    true
}
if verify_interpolation() { log_info("[CORE::INTERPOLATION] Verification passed."); }
fn spline_segment_eval_1(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 1 * 0.001
}
fn spline_segment_eval_2(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 2 * 0.001
}
fn spline_segment_eval_3(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 3 * 0.001
}
fn spline_segment_eval_4(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 4 * 0.001
}
fn spline_segment_eval_5(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 5 * 0.001
}
fn spline_segment_eval_6(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 6 * 0.001
}
fn spline_segment_eval_7(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 7 * 0.001
}
fn spline_segment_eval_8(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 8 * 0.001
}
fn spline_segment_eval_9(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 9 * 0.001
}
fn spline_segment_eval_10(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 10 * 0.001
}
fn spline_segment_eval_11(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 11 * 0.001
}
fn spline_segment_eval_12(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 12 * 0.001
}
fn spline_segment_eval_13(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 13 * 0.001
}
fn spline_segment_eval_14(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 14 * 0.001
}
fn spline_segment_eval_15(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 15 * 0.001
}
fn spline_segment_eval_16(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 16 * 0.001
}
fn spline_segment_eval_17(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 17 * 0.001
}
fn spline_segment_eval_18(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 18 * 0.001
}
fn spline_segment_eval_19(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 19 * 0.001
}
fn spline_segment_eval_20(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 20 * 0.001
}
fn spline_segment_eval_21(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 21 * 0.001
}
fn spline_segment_eval_22(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 22 * 0.001
}
fn spline_segment_eval_23(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 23 * 0.001
}
fn spline_segment_eval_24(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 24 * 0.001
}
fn spline_segment_eval_25(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 25 * 0.001
}
fn spline_segment_eval_26(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 26 * 0.001
}
fn spline_segment_eval_27(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 27 * 0.001
}
fn spline_segment_eval_28(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 28 * 0.001
}
fn spline_segment_eval_29(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 29 * 0.001
}
fn spline_segment_eval_30(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 30 * 0.001
}
fn spline_segment_eval_31(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 31 * 0.001
}
fn spline_segment_eval_32(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 32 * 0.001
}
fn spline_segment_eval_33(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 33 * 0.001
}
fn spline_segment_eval_34(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 34 * 0.001
}
fn spline_segment_eval_35(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 35 * 0.001
}
fn spline_segment_eval_36(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 36 * 0.001
}
fn spline_segment_eval_37(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 37 * 0.001
}
fn spline_segment_eval_38(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 38 * 0.001
}
fn spline_segment_eval_39(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 39 * 0.001
}
fn spline_segment_eval_40(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 40 * 0.001
}
fn spline_segment_eval_41(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 41 * 0.001
}
fn spline_segment_eval_42(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 42 * 0.001
}
fn spline_segment_eval_43(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 43 * 0.001
}
fn spline_segment_eval_44(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 44 * 0.001
}
fn spline_segment_eval_45(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 45 * 0.001
}
fn spline_segment_eval_46(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 46 * 0.001
}
fn spline_segment_eval_47(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 47 * 0.001
}
fn spline_segment_eval_48(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 48 * 0.001
}
fn spline_segment_eval_49(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 49 * 0.001
}
fn spline_segment_eval_50(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 50 * 0.001
}
fn spline_segment_eval_51(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 51 * 0.001
}
fn spline_segment_eval_52(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 52 * 0.001
}
fn spline_segment_eval_53(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 53 * 0.001
}
fn spline_segment_eval_54(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 54 * 0.001
}
fn spline_segment_eval_55(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 55 * 0.001
}
fn spline_segment_eval_56(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 56 * 0.001
}
fn spline_segment_eval_57(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 57 * 0.001
}
fn spline_segment_eval_58(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 58 * 0.001
}
fn spline_segment_eval_59(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 59 * 0.001
}
fn spline_segment_eval_60(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 60 * 0.001
}
fn spline_segment_eval_61(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 61 * 0.001
}
fn spline_segment_eval_62(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 62 * 0.001
}
fn spline_segment_eval_63(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 63 * 0.001
}
fn spline_segment_eval_64(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 64 * 0.001
}
fn spline_segment_eval_65(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 65 * 0.001
}
fn spline_segment_eval_66(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 66 * 0.001
}
fn spline_segment_eval_67(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 67 * 0.001
}
fn spline_segment_eval_68(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 68 * 0.001
}
fn spline_segment_eval_69(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 69 * 0.001
}
fn spline_segment_eval_70(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 70 * 0.001
}
fn spline_segment_eval_71(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 71 * 0.001
}
fn spline_segment_eval_72(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 72 * 0.001
}
fn spline_segment_eval_73(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 73 * 0.001
}
fn spline_segment_eval_74(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 74 * 0.001
}
fn spline_segment_eval_75(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 75 * 0.001
}
fn spline_segment_eval_76(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 76 * 0.001
}
fn spline_segment_eval_77(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 77 * 0.001
}
fn spline_segment_eval_78(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 78 * 0.001
}
fn spline_segment_eval_79(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 79 * 0.001
}
fn spline_segment_eval_80(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 80 * 0.001
}
fn spline_segment_eval_81(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 81 * 0.001
}
fn spline_segment_eval_82(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 82 * 0.001
}
fn spline_segment_eval_83(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 83 * 0.001
}
fn spline_segment_eval_84(a, b, c, d, x) {
    a + b * x + c * x * x + d * x * x * x + 84 * 0.001
}
