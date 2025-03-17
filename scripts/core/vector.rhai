// 3D and 4D Vector Algebra and Kinematics
// Part of the Ullage Cryogenic Test Executive Suite

fn vec3_new(x, y, z) { #{ "x": x, "y": y, "z": z } }
fn vec3_zero() { vec3_new(0.0, 0.0, 0.0) }
fn vec3_add(a, b) { vec3_new(a.x + b.x, a.y + b.y, a.z + b.z) }
fn vec3_sub(a, b) { vec3_new(a.x - b.x, a.y - b.y, a.z - b.z) }
fn vec3_scale(v, s) { vec3_new(v.x * s, v.y * s, v.z * s) }
fn vec3_dot(a, b) { a.x * b.x + a.y * b.y + a.z * b.z }
fn vec3_cross(a, b) {
    vec3_new(
        a.y * b.z - a.z * b.y,
        a.z * b.x - a.x * b.z,
        a.x * b.y - a.y * b.x
    )
}
fn vec3_norm_sq(v) { vec3_dot(v, v) }
fn vec3_norm(v) { (vec3_norm_sq(v)).sqrt() }
fn vec3_normalize(v) {
    let n = vec3_norm(v);
    if n > 1.0e-12 { vec3_scale(v, 1.0 / n) } else { vec3_zero() }
}
fn vec3_lerp(a, b, t) {
    vec3_add(a, vec3_scale(vec3_sub(b, a), t))
}
fn vec3_dist(a, b) { vec3_norm(vec3_sub(a, b)) }

fn verify_vector() {
    let v1 = vec3_new(1.0, 0.0, 0.0);
    let v2 = vec3_new(0.0, 1.0, 0.0);
    let v3 = vec3_cross(v1, v2);
    if (v3.z - 1.0).abs() > 1.0e-6 { return false; }
    true
}
if verify_vector() { log_info("[CORE::VECTOR] Verification passed."); }
fn vector_transform_pipeline_1(v, factor) {
    let scaled = vec3_scale(v, factor + 1 * 0.05);
    vec3_add(scaled, vec3_new(1 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_2(v, factor) {
    let scaled = vec3_scale(v, factor + 2 * 0.05);
    vec3_add(scaled, vec3_new(2 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_3(v, factor) {
    let scaled = vec3_scale(v, factor + 3 * 0.05);
    vec3_add(scaled, vec3_new(3 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_4(v, factor) {
    let scaled = vec3_scale(v, factor + 4 * 0.05);
    vec3_add(scaled, vec3_new(4 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_5(v, factor) {
    let scaled = vec3_scale(v, factor + 5 * 0.05);
    vec3_add(scaled, vec3_new(5 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_6(v, factor) {
    let scaled = vec3_scale(v, factor + 6 * 0.05);
    vec3_add(scaled, vec3_new(6 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_7(v, factor) {
    let scaled = vec3_scale(v, factor + 7 * 0.05);
    vec3_add(scaled, vec3_new(7 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_8(v, factor) {
    let scaled = vec3_scale(v, factor + 8 * 0.05);
    vec3_add(scaled, vec3_new(8 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_9(v, factor) {
    let scaled = vec3_scale(v, factor + 9 * 0.05);
    vec3_add(scaled, vec3_new(9 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_10(v, factor) {
    let scaled = vec3_scale(v, factor + 10 * 0.05);
    vec3_add(scaled, vec3_new(10 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_11(v, factor) {
    let scaled = vec3_scale(v, factor + 11 * 0.05);
    vec3_add(scaled, vec3_new(11 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_12(v, factor) {
    let scaled = vec3_scale(v, factor + 12 * 0.05);
    vec3_add(scaled, vec3_new(12 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_13(v, factor) {
    let scaled = vec3_scale(v, factor + 13 * 0.05);
    vec3_add(scaled, vec3_new(13 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_14(v, factor) {
    let scaled = vec3_scale(v, factor + 14 * 0.05);
    vec3_add(scaled, vec3_new(14 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_15(v, factor) {
    let scaled = vec3_scale(v, factor + 15 * 0.05);
    vec3_add(scaled, vec3_new(15 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_16(v, factor) {
    let scaled = vec3_scale(v, factor + 16 * 0.05);
    vec3_add(scaled, vec3_new(16 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_17(v, factor) {
    let scaled = vec3_scale(v, factor + 17 * 0.05);
    vec3_add(scaled, vec3_new(17 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_18(v, factor) {
    let scaled = vec3_scale(v, factor + 18 * 0.05);
    vec3_add(scaled, vec3_new(18 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_19(v, factor) {
    let scaled = vec3_scale(v, factor + 19 * 0.05);
    vec3_add(scaled, vec3_new(19 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_20(v, factor) {
    let scaled = vec3_scale(v, factor + 20 * 0.05);
    vec3_add(scaled, vec3_new(20 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_21(v, factor) {
    let scaled = vec3_scale(v, factor + 21 * 0.05);
    vec3_add(scaled, vec3_new(21 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_22(v, factor) {
    let scaled = vec3_scale(v, factor + 22 * 0.05);
    vec3_add(scaled, vec3_new(22 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_23(v, factor) {
    let scaled = vec3_scale(v, factor + 23 * 0.05);
    vec3_add(scaled, vec3_new(23 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_24(v, factor) {
    let scaled = vec3_scale(v, factor + 24 * 0.05);
    vec3_add(scaled, vec3_new(24 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_25(v, factor) {
    let scaled = vec3_scale(v, factor + 25 * 0.05);
    vec3_add(scaled, vec3_new(25 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_26(v, factor) {
    let scaled = vec3_scale(v, factor + 26 * 0.05);
    vec3_add(scaled, vec3_new(26 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_27(v, factor) {
    let scaled = vec3_scale(v, factor + 27 * 0.05);
    vec3_add(scaled, vec3_new(27 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_28(v, factor) {
    let scaled = vec3_scale(v, factor + 28 * 0.05);
    vec3_add(scaled, vec3_new(28 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_29(v, factor) {
    let scaled = vec3_scale(v, factor + 29 * 0.05);
    vec3_add(scaled, vec3_new(29 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_30(v, factor) {
    let scaled = vec3_scale(v, factor + 30 * 0.05);
    vec3_add(scaled, vec3_new(30 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_31(v, factor) {
    let scaled = vec3_scale(v, factor + 31 * 0.05);
    vec3_add(scaled, vec3_new(31 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_32(v, factor) {
    let scaled = vec3_scale(v, factor + 32 * 0.05);
    vec3_add(scaled, vec3_new(32 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_33(v, factor) {
    let scaled = vec3_scale(v, factor + 33 * 0.05);
    vec3_add(scaled, vec3_new(33 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_34(v, factor) {
    let scaled = vec3_scale(v, factor + 34 * 0.05);
    vec3_add(scaled, vec3_new(34 * 0.1, 0.0, 0.0))
}
