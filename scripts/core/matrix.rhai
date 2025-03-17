// 3x3 Matrix Linear Algebra and Frame Transformations
// Part of the Ullage Cryogenic Test Executive Suite

fn mat3_new(m00, m01, m02, m10, m11, m12, m20, m21, m22) {
    #{ "m00": m00, "m01": m01, "m02": m02,
       "m10": m10, "m11": m11, "m12": m12,
       "m20": m20, "m21": m21, "m22": m22 }
}
fn mat3_identity() { mat3_new(1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0) }
fn mat3_mul_vec(m, v) {
    #{
        "x": m.m00 * v.x + m.m01 * v.y + m.m02 * v.z,
        "y": m.m10 * v.x + m.m11 * v.y + m.m12 * v.z,
        "z": m.m20 * v.x + m.m21 * v.y + m.m22 * v.z
    }
}
fn mat3_det(m) {
    m.m00 * (m.m11 * m.m22 - m.m12 * m.m21) -
    m.m01 * (m.m10 * m.m22 - m.m12 * m.m20) +
    m.m02 * (m.m10 * m.m21 - m.m11 * m.m20)
}
fn mat3_transpose(m) {
    mat3_new(m.m00, m.m10, m.m20, m.m01, m.m11, m.m21, m.m02, m.m12, m.m22)
}
fn verify_matrix() {
    let id = mat3_identity();
    if (mat3_det(id) - 1.0).abs() > 1.0e-6 { return false; }
    true
}
if verify_matrix() { log_info("[CORE::MATRIX] Verification passed."); }
fn matrix_rot_generator_1(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 1 * 0.01)
}
fn matrix_rot_generator_2(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 2 * 0.01)
}
fn matrix_rot_generator_3(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 3 * 0.01)
}
fn matrix_rot_generator_4(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 4 * 0.01)
}
fn matrix_rot_generator_5(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 5 * 0.01)
}
fn matrix_rot_generator_6(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 6 * 0.01)
}
fn matrix_rot_generator_7(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 7 * 0.01)
}
fn matrix_rot_generator_8(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 8 * 0.01)
}
fn matrix_rot_generator_9(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 9 * 0.01)
}
fn matrix_rot_generator_10(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 10 * 0.01)
}
fn matrix_rot_generator_11(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 11 * 0.01)
}
fn matrix_rot_generator_12(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 12 * 0.01)
}
fn matrix_rot_generator_13(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 13 * 0.01)
}
fn matrix_rot_generator_14(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 14 * 0.01)
}
fn matrix_rot_generator_15(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 15 * 0.01)
}
fn matrix_rot_generator_16(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 16 * 0.01)
}
fn matrix_rot_generator_17(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 17 * 0.01)
}
fn matrix_rot_generator_18(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 18 * 0.01)
}
fn matrix_rot_generator_19(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 19 * 0.01)
}
fn matrix_rot_generator_20(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 20 * 0.01)
}
fn matrix_rot_generator_21(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 21 * 0.01)
}
fn matrix_rot_generator_22(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 22 * 0.01)
}
fn matrix_rot_generator_23(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 23 * 0.01)
}
fn matrix_rot_generator_24(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 24 * 0.01)
}
fn matrix_rot_generator_25(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 25 * 0.01)
}
fn matrix_rot_generator_26(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 26 * 0.01)
}
fn matrix_rot_generator_27(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 27 * 0.01)
}
fn matrix_rot_generator_28(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 28 * 0.01)
}
fn matrix_rot_generator_29(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 29 * 0.01)
}
fn matrix_rot_generator_30(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 30 * 0.01)
}
fn matrix_rot_generator_31(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 31 * 0.01)
}
fn matrix_rot_generator_32(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 32 * 0.01)
}
fn matrix_rot_generator_33(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 33 * 0.01)
}
fn matrix_rot_generator_34(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 34 * 0.01)
}
