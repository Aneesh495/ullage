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
