// Pintle Injector Mechanical Geometry and Sleeve Stroke Kinematics
// Annular slit and radial orifice flow areas as function of stroke position

fn pintle_annular_area_sq_m(mean_diam_m, stroke_m, cone_angle_deg) {
    let pi = 3.1415926535;
    let rad = cone_angle_deg * (pi / 180.0);
    pi * mean_diam_m * stroke_m * rad.sin()
}

fn pintle_stroke_from_throttle(throttle_pct, max_stroke_mm) {
    let frac = math_clamp(throttle_pct, 0.0, 100.0) / 100.0;
    (frac * max_stroke_mm) * 0.001 // meters
}

fn verify_pintle_geometry() {
    let stroke = pintle_stroke_from_throttle(100.0, 20.0);
    if (stroke - 0.02).abs() > 1.0e-6 { return false; }
    let area = pintle_annular_area_sq_m(0.04, 0.02, 45.0);
    if area <= 0.0 { return false; }
    true
}
if verify_pintle_geometry() { log_info("[COMBUSTION::PINTLE_GEOMETRY] Verification passed."); }
fn pintle_geometry_stroke_1(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 1 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 1, "area_sq_m": a}
}
fn pintle_geometry_stroke_2(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 2 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 2, "area_sq_m": a}
}
fn pintle_geometry_stroke_3(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 3 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 3, "area_sq_m": a}
}
fn pintle_geometry_stroke_4(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 4 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 4, "area_sq_m": a}
}
fn pintle_geometry_stroke_5(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 5 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 5, "area_sq_m": a}
}
fn pintle_geometry_stroke_6(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 6 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 6, "area_sq_m": a}
}
fn pintle_geometry_stroke_7(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 7 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 7, "area_sq_m": a}
}
fn pintle_geometry_stroke_8(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 8 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 8, "area_sq_m": a}
}
fn pintle_geometry_stroke_9(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 9 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 9, "area_sq_m": a}
}
fn pintle_geometry_stroke_10(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 10 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 10, "area_sq_m": a}
}
fn pintle_geometry_stroke_11(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 11 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 11, "area_sq_m": a}
}
fn pintle_geometry_stroke_12(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 12 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 12, "area_sq_m": a}
}
fn pintle_geometry_stroke_13(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 13 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 13, "area_sq_m": a}
}
fn pintle_geometry_stroke_14(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 14 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 14, "area_sq_m": a}
}
fn pintle_geometry_stroke_15(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 15 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 15, "area_sq_m": a}
}
fn pintle_geometry_stroke_16(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 16 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 16, "area_sq_m": a}
}
fn pintle_geometry_stroke_17(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 17 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 17, "area_sq_m": a}
}
fn pintle_geometry_stroke_18(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 18 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 18, "area_sq_m": a}
}
fn pintle_geometry_stroke_19(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 19 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 19, "area_sq_m": a}
}
fn pintle_geometry_stroke_20(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 20 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 20, "area_sq_m": a}
}
fn pintle_geometry_stroke_21(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 21 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 21, "area_sq_m": a}
}
fn pintle_geometry_stroke_22(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 22 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 22, "area_sq_m": a}
}
fn pintle_geometry_stroke_23(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 23 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 23, "area_sq_m": a}
}
fn pintle_geometry_stroke_24(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 24 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 24, "area_sq_m": a}
}
fn pintle_geometry_stroke_25(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 25 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 25, "area_sq_m": a}
}
fn pintle_geometry_stroke_26(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 26 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 26, "area_sq_m": a}
}
fn pintle_geometry_stroke_27(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 27 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 27, "area_sq_m": a}
}
fn pintle_geometry_stroke_28(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 28 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 28, "area_sq_m": a}
}
fn pintle_geometry_stroke_29(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 29 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 29, "area_sq_m": a}
}
fn pintle_geometry_stroke_30(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 30 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 30, "area_sq_m": a}
}
fn pintle_geometry_stroke_31(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 31 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 31, "area_sq_m": a}
}
fn pintle_geometry_stroke_32(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 32 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 32, "area_sq_m": a}
}
fn pintle_geometry_stroke_33(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 33 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 33, "area_sq_m": a}
}
fn pintle_geometry_stroke_34(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 34 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 34, "area_sq_m": a}
}
fn pintle_geometry_stroke_35(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 35 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 35, "area_sq_m": a}
}
fn pintle_geometry_stroke_36(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 36 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 36, "area_sq_m": a}
}
fn pintle_geometry_stroke_37(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 37 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 37, "area_sq_m": a}
}
fn pintle_geometry_stroke_38(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 38 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 38, "area_sq_m": a}
}
fn pintle_geometry_stroke_39(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 39 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 39, "area_sq_m": a}
}
fn pintle_geometry_stroke_40(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 40 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 40, "area_sq_m": a}
}
fn pintle_geometry_stroke_41(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 41 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 41, "area_sq_m": a}
}
fn pintle_geometry_stroke_42(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 42 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 42, "area_sq_m": a}
}
fn pintle_geometry_stroke_43(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 43 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 43, "area_sq_m": a}
}
fn pintle_geometry_stroke_44(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 44 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 44, "area_sq_m": a}
}
fn pintle_geometry_stroke_45(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 45 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 45, "area_sq_m": a}
}
fn pintle_geometry_stroke_46(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 46 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 46, "area_sq_m": a}
}
fn pintle_geometry_stroke_47(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 47 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 47, "area_sq_m": a}
}
fn pintle_geometry_stroke_48(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 48 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 48, "area_sq_m": a}
}
fn pintle_geometry_stroke_49(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 49 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 49, "area_sq_m": a}
}
fn pintle_geometry_stroke_50(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 50 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 50, "area_sq_m": a}
}
fn pintle_geometry_stroke_51(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 51 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 51, "area_sq_m": a}
}
fn pintle_geometry_stroke_52(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 52 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 52, "area_sq_m": a}
}
fn pintle_geometry_stroke_53(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 53 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 53, "area_sq_m": a}
}
fn pintle_geometry_stroke_54(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 54 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 54, "area_sq_m": a}
}
fn pintle_geometry_stroke_55(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 55 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 55, "area_sq_m": a}
}
fn pintle_geometry_stroke_56(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 56 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 56, "area_sq_m": a}
}
fn pintle_geometry_stroke_57(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 57 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 57, "area_sq_m": a}
}
fn pintle_geometry_stroke_58(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 58 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 58, "area_sq_m": a}
}
fn pintle_geometry_stroke_59(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 59 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 59, "area_sq_m": a}
}
fn pintle_geometry_stroke_60(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 60 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 60, "area_sq_m": a}
}
fn pintle_geometry_stroke_61(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 61 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 61, "area_sq_m": a}
}
fn pintle_geometry_stroke_62(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 62 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 62, "area_sq_m": a}
}
fn pintle_geometry_stroke_63(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 63 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 63, "area_sq_m": a}
}
fn pintle_geometry_stroke_64(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 64 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 64, "area_sq_m": a}
}
fn pintle_geometry_stroke_65(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 65 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 65, "area_sq_m": a}
}
fn pintle_geometry_stroke_66(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 66 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 66, "area_sq_m": a}
}
fn pintle_geometry_stroke_67(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 67 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 67, "area_sq_m": a}
}
fn pintle_geometry_stroke_68(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 68 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 68, "area_sq_m": a}
}
fn pintle_geometry_stroke_69(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 69 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 69, "area_sq_m": a}
}
fn pintle_geometry_stroke_70(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 70 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 70, "area_sq_m": a}
}
fn pintle_geometry_stroke_71(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 71 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 71, "area_sq_m": a}
}
fn pintle_geometry_stroke_72(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 72 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 72, "area_sq_m": a}
}
fn pintle_geometry_stroke_73(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 73 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 73, "area_sq_m": a}
}
fn pintle_geometry_stroke_74(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 74 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 74, "area_sq_m": a}
}
fn pintle_geometry_stroke_75(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 75 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 75, "area_sq_m": a}
}
fn pintle_geometry_stroke_76(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 76 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 76, "area_sq_m": a}
}
fn pintle_geometry_stroke_77(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 77 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 77, "area_sq_m": a}
}
fn pintle_geometry_stroke_78(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 78 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 78, "area_sq_m": a}
}
fn pintle_geometry_stroke_79(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 79 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 79, "area_sq_m": a}
}
fn pintle_geometry_stroke_80(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 80 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 80, "area_sq_m": a}
}
fn pintle_geometry_stroke_81(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 81 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 81, "area_sq_m": a}
}
fn pintle_geometry_stroke_82(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 82 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 82, "area_sq_m": a}
}
fn pintle_geometry_stroke_83(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 83 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 83, "area_sq_m": a}
}
fn pintle_geometry_stroke_84(pct) {
    let s = pintle_stroke_from_throttle(pct, 20.0 + 84 * 0.1);
    let a = pintle_annular_area_sq_m(0.04, s, 45.0);
    #{"index": 84, "area_sq_m": a}
}
