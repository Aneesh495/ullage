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
fn vector_transform_pipeline_35(v, factor) {
    let scaled = vec3_scale(v, factor + 35 * 0.05);
    vec3_add(scaled, vec3_new(35 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_36(v, factor) {
    let scaled = vec3_scale(v, factor + 36 * 0.05);
    vec3_add(scaled, vec3_new(36 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_37(v, factor) {
    let scaled = vec3_scale(v, factor + 37 * 0.05);
    vec3_add(scaled, vec3_new(37 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_38(v, factor) {
    let scaled = vec3_scale(v, factor + 38 * 0.05);
    vec3_add(scaled, vec3_new(38 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_39(v, factor) {
    let scaled = vec3_scale(v, factor + 39 * 0.05);
    vec3_add(scaled, vec3_new(39 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_40(v, factor) {
    let scaled = vec3_scale(v, factor + 40 * 0.05);
    vec3_add(scaled, vec3_new(40 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_41(v, factor) {
    let scaled = vec3_scale(v, factor + 41 * 0.05);
    vec3_add(scaled, vec3_new(41 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_42(v, factor) {
    let scaled = vec3_scale(v, factor + 42 * 0.05);
    vec3_add(scaled, vec3_new(42 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_43(v, factor) {
    let scaled = vec3_scale(v, factor + 43 * 0.05);
    vec3_add(scaled, vec3_new(43 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_44(v, factor) {
    let scaled = vec3_scale(v, factor + 44 * 0.05);
    vec3_add(scaled, vec3_new(44 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_45(v, factor) {
    let scaled = vec3_scale(v, factor + 45 * 0.05);
    vec3_add(scaled, vec3_new(45 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_46(v, factor) {
    let scaled = vec3_scale(v, factor + 46 * 0.05);
    vec3_add(scaled, vec3_new(46 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_47(v, factor) {
    let scaled = vec3_scale(v, factor + 47 * 0.05);
    vec3_add(scaled, vec3_new(47 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_48(v, factor) {
    let scaled = vec3_scale(v, factor + 48 * 0.05);
    vec3_add(scaled, vec3_new(48 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_49(v, factor) {
    let scaled = vec3_scale(v, factor + 49 * 0.05);
    vec3_add(scaled, vec3_new(49 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_50(v, factor) {
    let scaled = vec3_scale(v, factor + 50 * 0.05);
    vec3_add(scaled, vec3_new(50 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_51(v, factor) {
    let scaled = vec3_scale(v, factor + 51 * 0.05);
    vec3_add(scaled, vec3_new(51 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_52(v, factor) {
    let scaled = vec3_scale(v, factor + 52 * 0.05);
    vec3_add(scaled, vec3_new(52 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_53(v, factor) {
    let scaled = vec3_scale(v, factor + 53 * 0.05);
    vec3_add(scaled, vec3_new(53 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_54(v, factor) {
    let scaled = vec3_scale(v, factor + 54 * 0.05);
    vec3_add(scaled, vec3_new(54 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_55(v, factor) {
    let scaled = vec3_scale(v, factor + 55 * 0.05);
    vec3_add(scaled, vec3_new(55 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_56(v, factor) {
    let scaled = vec3_scale(v, factor + 56 * 0.05);
    vec3_add(scaled, vec3_new(56 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_57(v, factor) {
    let scaled = vec3_scale(v, factor + 57 * 0.05);
    vec3_add(scaled, vec3_new(57 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_58(v, factor) {
    let scaled = vec3_scale(v, factor + 58 * 0.05);
    vec3_add(scaled, vec3_new(58 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_59(v, factor) {
    let scaled = vec3_scale(v, factor + 59 * 0.05);
    vec3_add(scaled, vec3_new(59 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_60(v, factor) {
    let scaled = vec3_scale(v, factor + 60 * 0.05);
    vec3_add(scaled, vec3_new(60 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_61(v, factor) {
    let scaled = vec3_scale(v, factor + 61 * 0.05);
    vec3_add(scaled, vec3_new(61 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_62(v, factor) {
    let scaled = vec3_scale(v, factor + 62 * 0.05);
    vec3_add(scaled, vec3_new(62 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_63(v, factor) {
    let scaled = vec3_scale(v, factor + 63 * 0.05);
    vec3_add(scaled, vec3_new(63 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_64(v, factor) {
    let scaled = vec3_scale(v, factor + 64 * 0.05);
    vec3_add(scaled, vec3_new(64 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_65(v, factor) {
    let scaled = vec3_scale(v, factor + 65 * 0.05);
    vec3_add(scaled, vec3_new(65 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_66(v, factor) {
    let scaled = vec3_scale(v, factor + 66 * 0.05);
    vec3_add(scaled, vec3_new(66 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_67(v, factor) {
    let scaled = vec3_scale(v, factor + 67 * 0.05);
    vec3_add(scaled, vec3_new(67 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_68(v, factor) {
    let scaled = vec3_scale(v, factor + 68 * 0.05);
    vec3_add(scaled, vec3_new(68 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_69(v, factor) {
    let scaled = vec3_scale(v, factor + 69 * 0.05);
    vec3_add(scaled, vec3_new(69 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_70(v, factor) {
    let scaled = vec3_scale(v, factor + 70 * 0.05);
    vec3_add(scaled, vec3_new(70 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_71(v, factor) {
    let scaled = vec3_scale(v, factor + 71 * 0.05);
    vec3_add(scaled, vec3_new(71 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_72(v, factor) {
    let scaled = vec3_scale(v, factor + 72 * 0.05);
    vec3_add(scaled, vec3_new(72 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_73(v, factor) {
    let scaled = vec3_scale(v, factor + 73 * 0.05);
    vec3_add(scaled, vec3_new(73 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_74(v, factor) {
    let scaled = vec3_scale(v, factor + 74 * 0.05);
    vec3_add(scaled, vec3_new(74 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_75(v, factor) {
    let scaled = vec3_scale(v, factor + 75 * 0.05);
    vec3_add(scaled, vec3_new(75 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_76(v, factor) {
    let scaled = vec3_scale(v, factor + 76 * 0.05);
    vec3_add(scaled, vec3_new(76 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_77(v, factor) {
    let scaled = vec3_scale(v, factor + 77 * 0.05);
    vec3_add(scaled, vec3_new(77 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_78(v, factor) {
    let scaled = vec3_scale(v, factor + 78 * 0.05);
    vec3_add(scaled, vec3_new(78 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_79(v, factor) {
    let scaled = vec3_scale(v, factor + 79 * 0.05);
    vec3_add(scaled, vec3_new(79 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_80(v, factor) {
    let scaled = vec3_scale(v, factor + 80 * 0.05);
    vec3_add(scaled, vec3_new(80 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_81(v, factor) {
    let scaled = vec3_scale(v, factor + 81 * 0.05);
    vec3_add(scaled, vec3_new(81 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_82(v, factor) {
    let scaled = vec3_scale(v, factor + 82 * 0.05);
    vec3_add(scaled, vec3_new(82 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_83(v, factor) {
    let scaled = vec3_scale(v, factor + 83 * 0.05);
    vec3_add(scaled, vec3_new(83 * 0.1, 0.0, 0.0))
}
fn vector_transform_pipeline_84(v, factor) {
    let scaled = vec3_scale(v, factor + 84 * 0.05);
    vec3_add(scaled, vec3_new(84 * 0.1, 0.0, 0.0))
}
