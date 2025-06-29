// Unit Tests for Core Math, Vectors, and Interpolation
// Part of the Ullage Cryogenic Test Executive Suite

fn test_math_primitives() {
    let a = 5.0;
    let b = -5.0;
    if math_abs(b) != a { return false; }
    if math_clamp(15.0, 0.0, 10.0) != 10.0 { return false; }
    if math_clamp(-5.0, 0.0, 10.0) != 0.0 { return false; }
    true
}

if test_math_primitives() { log_info("[TEST::MATH] Unit tests passed."); }
fn test_math_case_1() {
    let val = 1 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 1, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_2() {
    let val = 2 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 2, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_3() {
    let val = 3 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 3, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_4() {
    let val = 4 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 4, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_5() {
    let val = 5 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 5, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_6() {
    let val = 6 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 6, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_7() {
    let val = 7 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 7, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_8() {
    let val = 8 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 8, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_9() {
    let val = 9 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 9, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_10() {
    let val = 10 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 10, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_11() {
    let val = 11 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 11, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_12() {
    let val = 12 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 12, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_13() {
    let val = 13 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 13, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_14() {
    let val = 14 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 14, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_15() {
    let val = 15 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 15, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_16() {
    let val = 16 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 16, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_17() {
    let val = 17 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 17, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_18() {
    let val = 18 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 18, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_19() {
    let val = 19 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 19, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_20() {
    let val = 20 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 20, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_21() {
    let val = 21 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 21, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_22() {
    let val = 22 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 22, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_23() {
    let val = 23 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 23, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_24() {
    let val = 24 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 24, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_25() {
    let val = 25 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 25, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_26() {
    let val = 26 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 26, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_27() {
    let val = 27 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 27, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_28() {
    let val = 28 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 28, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_29() {
    let val = 29 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 29, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_30() {
    let val = 30 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 30, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_31() {
    let val = 31 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 31, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_32() {
    let val = 32 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 32, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_33() {
    let val = 33 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 33, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_34() {
    let val = 34 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 34, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_35() {
    let val = 35 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 35, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_36() {
    let val = 36 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 36, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_37() {
    let val = 37 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 37, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_38() {
    let val = 38 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 38, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_39() {
    let val = 39 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 39, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_40() {
    let val = 40 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 40, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_41() {
    let val = 41 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 41, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_42() {
    let val = 42 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 42, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_43() {
    let val = 43 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 43, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_44() {
    let val = 44 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 44, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_45() {
    let val = 45 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 45, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_46() {
    let val = 46 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 46, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_47() {
    let val = 47 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 47, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_48() {
    let val = 48 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 48, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_49() {
    let val = 49 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 49, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_50() {
    let val = 50 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 50, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_51() {
    let val = 51 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 51, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_52() {
    let val = 52 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 52, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_53() {
    let val = 53 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 53, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_54() {
    let val = 54 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 54, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_55() {
    let val = 55 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 55, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_56() {
    let val = 56 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 56, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_57() {
    let val = 57 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 57, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_58() {
    let val = 58 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 58, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_59() {
    let val = 59 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 59, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_60() {
    let val = 60 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 60, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_61() {
    let val = 61 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 61, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_62() {
    let val = 62 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 62, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_63() {
    let val = 63 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 63, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_64() {
    let val = 64 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 64, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_65() {
    let val = 65 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 65, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_66() {
    let val = 66 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 66, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_67() {
    let val = 67 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 67, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_68() {
    let val = 68 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 68, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_69() {
    let val = 69 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 69, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_70() {
    let val = 70 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 70, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_71() {
    let val = 71 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 71, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_72() {
    let val = 72 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 72, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_73() {
    let val = 73 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 73, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_74() {
    let val = 74 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 74, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_75() {
    let val = 75 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 75, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_76() {
    let val = 76 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 76, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_77() {
    let val = 77 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 77, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_78() {
    let val = 78 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 78, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_79() {
    let val = 79 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 79, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_80() {
    let val = 80 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 80, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_81() {
    let val = 81 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 81, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_82() {
    let val = 82 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 82, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_83() {
    let val = 83 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 83, "result": cl, "pass": cl <= 50.0}
}
fn test_math_case_84() {
    let val = 84 * 1.5;
    let cl = math_clamp(val, 0.0, 50.0);
    #{"case": 84, "result": cl, "pass": cl <= 50.0}
}
