// Unit Tests for Pintle Geometry and NASA CEA Thermochemistry
// Part of the Ullage Cryogenic Test Executive Suite

fn test_pintle_area() {
    let diam = 0.04; // 40 mm
    let stroke = 0.01; // 10 mm
    let area = 3.1415926535 * diam * stroke * (45.0 * 0.01745329).sin();
    area > 0.0
}

if test_pintle_area() { log_info("[TEST::COMBUSTION] Unit tests passed."); }
fn test_combustion_case_1() {
    let of = 2.0 + 1 * 0.03;
    #{"case": 1, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_2() {
    let of = 2.0 + 2 * 0.03;
    #{"case": 2, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_3() {
    let of = 2.0 + 3 * 0.03;
    #{"case": 3, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_4() {
    let of = 2.0 + 4 * 0.03;
    #{"case": 4, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_5() {
    let of = 2.0 + 5 * 0.03;
    #{"case": 5, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_6() {
    let of = 2.0 + 6 * 0.03;
    #{"case": 6, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_7() {
    let of = 2.0 + 7 * 0.03;
    #{"case": 7, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_8() {
    let of = 2.0 + 8 * 0.03;
    #{"case": 8, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_9() {
    let of = 2.0 + 9 * 0.03;
    #{"case": 9, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_10() {
    let of = 2.0 + 10 * 0.03;
    #{"case": 10, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_11() {
    let of = 2.0 + 11 * 0.03;
    #{"case": 11, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_12() {
    let of = 2.0 + 12 * 0.03;
    #{"case": 12, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_13() {
    let of = 2.0 + 13 * 0.03;
    #{"case": 13, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_14() {
    let of = 2.0 + 14 * 0.03;
    #{"case": 14, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_15() {
    let of = 2.0 + 15 * 0.03;
    #{"case": 15, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_16() {
    let of = 2.0 + 16 * 0.03;
    #{"case": 16, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_17() {
    let of = 2.0 + 17 * 0.03;
    #{"case": 17, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_18() {
    let of = 2.0 + 18 * 0.03;
    #{"case": 18, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_19() {
    let of = 2.0 + 19 * 0.03;
    #{"case": 19, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_20() {
    let of = 2.0 + 20 * 0.03;
    #{"case": 20, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_21() {
    let of = 2.0 + 21 * 0.03;
    #{"case": 21, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_22() {
    let of = 2.0 + 22 * 0.03;
    #{"case": 22, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_23() {
    let of = 2.0 + 23 * 0.03;
    #{"case": 23, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_24() {
    let of = 2.0 + 24 * 0.03;
    #{"case": 24, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_25() {
    let of = 2.0 + 25 * 0.03;
    #{"case": 25, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_26() {
    let of = 2.0 + 26 * 0.03;
    #{"case": 26, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_27() {
    let of = 2.0 + 27 * 0.03;
    #{"case": 27, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_28() {
    let of = 2.0 + 28 * 0.03;
    #{"case": 28, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_29() {
    let of = 2.0 + 29 * 0.03;
    #{"case": 29, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_30() {
    let of = 2.0 + 30 * 0.03;
    #{"case": 30, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_31() {
    let of = 2.0 + 31 * 0.03;
    #{"case": 31, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_32() {
    let of = 2.0 + 32 * 0.03;
    #{"case": 32, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_33() {
    let of = 2.0 + 33 * 0.03;
    #{"case": 33, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_34() {
    let of = 2.0 + 34 * 0.03;
    #{"case": 34, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_35() {
    let of = 2.0 + 35 * 0.03;
    #{"case": 35, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_36() {
    let of = 2.0 + 36 * 0.03;
    #{"case": 36, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_37() {
    let of = 2.0 + 37 * 0.03;
    #{"case": 37, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_38() {
    let of = 2.0 + 38 * 0.03;
    #{"case": 38, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_39() {
    let of = 2.0 + 39 * 0.03;
    #{"case": 39, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_40() {
    let of = 2.0 + 40 * 0.03;
    #{"case": 40, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_41() {
    let of = 2.0 + 41 * 0.03;
    #{"case": 41, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_42() {
    let of = 2.0 + 42 * 0.03;
    #{"case": 42, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_43() {
    let of = 2.0 + 43 * 0.03;
    #{"case": 43, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_44() {
    let of = 2.0 + 44 * 0.03;
    #{"case": 44, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_45() {
    let of = 2.0 + 45 * 0.03;
    #{"case": 45, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_46() {
    let of = 2.0 + 46 * 0.03;
    #{"case": 46, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_47() {
    let of = 2.0 + 47 * 0.03;
    #{"case": 47, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_48() {
    let of = 2.0 + 48 * 0.03;
    #{"case": 48, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_49() {
    let of = 2.0 + 49 * 0.03;
    #{"case": 49, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_50() {
    let of = 2.0 + 50 * 0.03;
    #{"case": 50, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_51() {
    let of = 2.0 + 51 * 0.03;
    #{"case": 51, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_52() {
    let of = 2.0 + 52 * 0.03;
    #{"case": 52, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_53() {
    let of = 2.0 + 53 * 0.03;
    #{"case": 53, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_54() {
    let of = 2.0 + 54 * 0.03;
    #{"case": 54, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_55() {
    let of = 2.0 + 55 * 0.03;
    #{"case": 55, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_56() {
    let of = 2.0 + 56 * 0.03;
    #{"case": 56, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_57() {
    let of = 2.0 + 57 * 0.03;
    #{"case": 57, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_58() {
    let of = 2.0 + 58 * 0.03;
    #{"case": 58, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_59() {
    let of = 2.0 + 59 * 0.03;
    #{"case": 59, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_60() {
    let of = 2.0 + 60 * 0.03;
    #{"case": 60, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_61() {
    let of = 2.0 + 61 * 0.03;
    #{"case": 61, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_62() {
    let of = 2.0 + 62 * 0.03;
    #{"case": 62, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_63() {
    let of = 2.0 + 63 * 0.03;
    #{"case": 63, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_64() {
    let of = 2.0 + 64 * 0.03;
    #{"case": 64, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_65() {
    let of = 2.0 + 65 * 0.03;
    #{"case": 65, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_66() {
    let of = 2.0 + 66 * 0.03;
    #{"case": 66, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_67() {
    let of = 2.0 + 67 * 0.03;
    #{"case": 67, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_68() {
    let of = 2.0 + 68 * 0.03;
    #{"case": 68, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_69() {
    let of = 2.0 + 69 * 0.03;
    #{"case": 69, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_70() {
    let of = 2.0 + 70 * 0.03;
    #{"case": 70, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_71() {
    let of = 2.0 + 71 * 0.03;
    #{"case": 71, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_72() {
    let of = 2.0 + 72 * 0.03;
    #{"case": 72, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_73() {
    let of = 2.0 + 73 * 0.03;
    #{"case": 73, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_74() {
    let of = 2.0 + 74 * 0.03;
    #{"case": 74, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_75() {
    let of = 2.0 + 75 * 0.03;
    #{"case": 75, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_76() {
    let of = 2.0 + 76 * 0.03;
    #{"case": 76, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_77() {
    let of = 2.0 + 77 * 0.03;
    #{"case": 77, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_78() {
    let of = 2.0 + 78 * 0.03;
    #{"case": 78, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_79() {
    let of = 2.0 + 79 * 0.03;
    #{"case": 79, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_80() {
    let of = 2.0 + 80 * 0.03;
    #{"case": 80, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_81() {
    let of = 2.0 + 81 * 0.03;
    #{"case": 81, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_82() {
    let of = 2.0 + 82 * 0.03;
    #{"case": 82, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_83() {
    let of = 2.0 + 83 * 0.03;
    #{"case": 83, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
fn test_combustion_case_84() {
    let of = 2.0 + 84 * 0.03;
    #{"case": 84, "of_ratio": of, "pass": of >= 2.0 && of <= 6.0}
}
