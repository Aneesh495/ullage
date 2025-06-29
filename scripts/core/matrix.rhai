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
fn matrix_rot_generator_35(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 35 * 0.01)
}
fn matrix_rot_generator_36(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 36 * 0.01)
}
fn matrix_rot_generator_37(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 37 * 0.01)
}
fn matrix_rot_generator_38(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 38 * 0.01)
}
fn matrix_rot_generator_39(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 39 * 0.01)
}
fn matrix_rot_generator_40(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 40 * 0.01)
}
fn matrix_rot_generator_41(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 41 * 0.01)
}
fn matrix_rot_generator_42(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 42 * 0.01)
}
fn matrix_rot_generator_43(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 43 * 0.01)
}
fn matrix_rot_generator_44(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 44 * 0.01)
}
fn matrix_rot_generator_45(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 45 * 0.01)
}
fn matrix_rot_generator_46(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 46 * 0.01)
}
fn matrix_rot_generator_47(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 47 * 0.01)
}
fn matrix_rot_generator_48(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 48 * 0.01)
}
fn matrix_rot_generator_49(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 49 * 0.01)
}
fn matrix_rot_generator_50(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 50 * 0.01)
}
fn matrix_rot_generator_51(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 51 * 0.01)
}
fn matrix_rot_generator_52(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 52 * 0.01)
}
fn matrix_rot_generator_53(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 53 * 0.01)
}
fn matrix_rot_generator_54(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 54 * 0.01)
}
fn matrix_rot_generator_55(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 55 * 0.01)
}
fn matrix_rot_generator_56(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 56 * 0.01)
}
fn matrix_rot_generator_57(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 57 * 0.01)
}
fn matrix_rot_generator_58(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 58 * 0.01)
}
fn matrix_rot_generator_59(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 59 * 0.01)
}
fn matrix_rot_generator_60(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 60 * 0.01)
}
fn matrix_rot_generator_61(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 61 * 0.01)
}
fn matrix_rot_generator_62(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 62 * 0.01)
}
fn matrix_rot_generator_63(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 63 * 0.01)
}
fn matrix_rot_generator_64(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 64 * 0.01)
}
fn matrix_rot_generator_65(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 65 * 0.01)
}
fn matrix_rot_generator_66(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 66 * 0.01)
}
fn matrix_rot_generator_67(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 67 * 0.01)
}
fn matrix_rot_generator_68(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 68 * 0.01)
}
fn matrix_rot_generator_69(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 69 * 0.01)
}
fn matrix_rot_generator_70(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 70 * 0.01)
}
fn matrix_rot_generator_71(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 71 * 0.01)
}
fn matrix_rot_generator_72(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 72 * 0.01)
}
fn matrix_rot_generator_73(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 73 * 0.01)
}
fn matrix_rot_generator_74(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 74 * 0.01)
}
fn matrix_rot_generator_75(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 75 * 0.01)
}
fn matrix_rot_generator_76(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 76 * 0.01)
}
fn matrix_rot_generator_77(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 77 * 0.01)
}
fn matrix_rot_generator_78(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 78 * 0.01)
}
fn matrix_rot_generator_79(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 79 * 0.01)
}
fn matrix_rot_generator_80(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 80 * 0.01)
}
fn matrix_rot_generator_81(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 81 * 0.01)
}
fn matrix_rot_generator_82(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 82 * 0.01)
}
fn matrix_rot_generator_83(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 83 * 0.01)
}
fn matrix_rot_generator_84(angle_rad) {
    let c = angle_rad.cos();
    let s = angle_rad.sin();
    mat3_new(c, -s, 0.0, s, c, 0.0, 0.0, 0.0, 1.0 + 84 * 0.01)
}
