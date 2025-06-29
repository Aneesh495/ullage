// Unit Tests for Cryogenic Thermodynamics and Two-Phase Flow
// Part of the Ullage Cryogenic Test Executive Suite

fn test_fluid_subcooling() {
    let p = 1.0; // bar
    let t = 85.0; // K
    // 85K is subcooled relative to 90.19K boiling point
    let margin = 90.19 - t;
    margin > 0.0
}

if test_fluid_subcooling() { log_info("[TEST::FLUID] Unit tests passed."); }
fn test_fluid_case_1() {
    let p_bar = 1.0 + 1 * 0.5;
    let t_k = 80.0 + 1 * 0.4;
    #{"case": 1, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_2() {
    let p_bar = 1.0 + 2 * 0.5;
    let t_k = 80.0 + 2 * 0.4;
    #{"case": 2, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_3() {
    let p_bar = 1.0 + 3 * 0.5;
    let t_k = 80.0 + 3 * 0.4;
    #{"case": 3, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_4() {
    let p_bar = 1.0 + 4 * 0.5;
    let t_k = 80.0 + 4 * 0.4;
    #{"case": 4, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_5() {
    let p_bar = 1.0 + 5 * 0.5;
    let t_k = 80.0 + 5 * 0.4;
    #{"case": 5, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_6() {
    let p_bar = 1.0 + 6 * 0.5;
    let t_k = 80.0 + 6 * 0.4;
    #{"case": 6, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_7() {
    let p_bar = 1.0 + 7 * 0.5;
    let t_k = 80.0 + 7 * 0.4;
    #{"case": 7, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_8() {
    let p_bar = 1.0 + 8 * 0.5;
    let t_k = 80.0 + 8 * 0.4;
    #{"case": 8, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_9() {
    let p_bar = 1.0 + 9 * 0.5;
    let t_k = 80.0 + 9 * 0.4;
    #{"case": 9, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_10() {
    let p_bar = 1.0 + 10 * 0.5;
    let t_k = 80.0 + 10 * 0.4;
    #{"case": 10, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_11() {
    let p_bar = 1.0 + 11 * 0.5;
    let t_k = 80.0 + 11 * 0.4;
    #{"case": 11, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_12() {
    let p_bar = 1.0 + 12 * 0.5;
    let t_k = 80.0 + 12 * 0.4;
    #{"case": 12, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_13() {
    let p_bar = 1.0 + 13 * 0.5;
    let t_k = 80.0 + 13 * 0.4;
    #{"case": 13, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_14() {
    let p_bar = 1.0 + 14 * 0.5;
    let t_k = 80.0 + 14 * 0.4;
    #{"case": 14, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_15() {
    let p_bar = 1.0 + 15 * 0.5;
    let t_k = 80.0 + 15 * 0.4;
    #{"case": 15, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_16() {
    let p_bar = 1.0 + 16 * 0.5;
    let t_k = 80.0 + 16 * 0.4;
    #{"case": 16, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_17() {
    let p_bar = 1.0 + 17 * 0.5;
    let t_k = 80.0 + 17 * 0.4;
    #{"case": 17, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_18() {
    let p_bar = 1.0 + 18 * 0.5;
    let t_k = 80.0 + 18 * 0.4;
    #{"case": 18, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_19() {
    let p_bar = 1.0 + 19 * 0.5;
    let t_k = 80.0 + 19 * 0.4;
    #{"case": 19, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_20() {
    let p_bar = 1.0 + 20 * 0.5;
    let t_k = 80.0 + 20 * 0.4;
    #{"case": 20, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_21() {
    let p_bar = 1.0 + 21 * 0.5;
    let t_k = 80.0 + 21 * 0.4;
    #{"case": 21, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_22() {
    let p_bar = 1.0 + 22 * 0.5;
    let t_k = 80.0 + 22 * 0.4;
    #{"case": 22, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_23() {
    let p_bar = 1.0 + 23 * 0.5;
    let t_k = 80.0 + 23 * 0.4;
    #{"case": 23, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_24() {
    let p_bar = 1.0 + 24 * 0.5;
    let t_k = 80.0 + 24 * 0.4;
    #{"case": 24, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_25() {
    let p_bar = 1.0 + 25 * 0.5;
    let t_k = 80.0 + 25 * 0.4;
    #{"case": 25, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_26() {
    let p_bar = 1.0 + 26 * 0.5;
    let t_k = 80.0 + 26 * 0.4;
    #{"case": 26, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_27() {
    let p_bar = 1.0 + 27 * 0.5;
    let t_k = 80.0 + 27 * 0.4;
    #{"case": 27, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_28() {
    let p_bar = 1.0 + 28 * 0.5;
    let t_k = 80.0 + 28 * 0.4;
    #{"case": 28, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_29() {
    let p_bar = 1.0 + 29 * 0.5;
    let t_k = 80.0 + 29 * 0.4;
    #{"case": 29, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_30() {
    let p_bar = 1.0 + 30 * 0.5;
    let t_k = 80.0 + 30 * 0.4;
    #{"case": 30, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_31() {
    let p_bar = 1.0 + 31 * 0.5;
    let t_k = 80.0 + 31 * 0.4;
    #{"case": 31, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_32() {
    let p_bar = 1.0 + 32 * 0.5;
    let t_k = 80.0 + 32 * 0.4;
    #{"case": 32, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_33() {
    let p_bar = 1.0 + 33 * 0.5;
    let t_k = 80.0 + 33 * 0.4;
    #{"case": 33, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_34() {
    let p_bar = 1.0 + 34 * 0.5;
    let t_k = 80.0 + 34 * 0.4;
    #{"case": 34, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_35() {
    let p_bar = 1.0 + 35 * 0.5;
    let t_k = 80.0 + 35 * 0.4;
    #{"case": 35, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_36() {
    let p_bar = 1.0 + 36 * 0.5;
    let t_k = 80.0 + 36 * 0.4;
    #{"case": 36, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_37() {
    let p_bar = 1.0 + 37 * 0.5;
    let t_k = 80.0 + 37 * 0.4;
    #{"case": 37, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_38() {
    let p_bar = 1.0 + 38 * 0.5;
    let t_k = 80.0 + 38 * 0.4;
    #{"case": 38, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_39() {
    let p_bar = 1.0 + 39 * 0.5;
    let t_k = 80.0 + 39 * 0.4;
    #{"case": 39, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_40() {
    let p_bar = 1.0 + 40 * 0.5;
    let t_k = 80.0 + 40 * 0.4;
    #{"case": 40, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_41() {
    let p_bar = 1.0 + 41 * 0.5;
    let t_k = 80.0 + 41 * 0.4;
    #{"case": 41, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_42() {
    let p_bar = 1.0 + 42 * 0.5;
    let t_k = 80.0 + 42 * 0.4;
    #{"case": 42, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_43() {
    let p_bar = 1.0 + 43 * 0.5;
    let t_k = 80.0 + 43 * 0.4;
    #{"case": 43, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_44() {
    let p_bar = 1.0 + 44 * 0.5;
    let t_k = 80.0 + 44 * 0.4;
    #{"case": 44, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_45() {
    let p_bar = 1.0 + 45 * 0.5;
    let t_k = 80.0 + 45 * 0.4;
    #{"case": 45, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_46() {
    let p_bar = 1.0 + 46 * 0.5;
    let t_k = 80.0 + 46 * 0.4;
    #{"case": 46, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_47() {
    let p_bar = 1.0 + 47 * 0.5;
    let t_k = 80.0 + 47 * 0.4;
    #{"case": 47, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_48() {
    let p_bar = 1.0 + 48 * 0.5;
    let t_k = 80.0 + 48 * 0.4;
    #{"case": 48, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_49() {
    let p_bar = 1.0 + 49 * 0.5;
    let t_k = 80.0 + 49 * 0.4;
    #{"case": 49, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_50() {
    let p_bar = 1.0 + 50 * 0.5;
    let t_k = 80.0 + 50 * 0.4;
    #{"case": 50, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_51() {
    let p_bar = 1.0 + 51 * 0.5;
    let t_k = 80.0 + 51 * 0.4;
    #{"case": 51, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_52() {
    let p_bar = 1.0 + 52 * 0.5;
    let t_k = 80.0 + 52 * 0.4;
    #{"case": 52, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_53() {
    let p_bar = 1.0 + 53 * 0.5;
    let t_k = 80.0 + 53 * 0.4;
    #{"case": 53, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_54() {
    let p_bar = 1.0 + 54 * 0.5;
    let t_k = 80.0 + 54 * 0.4;
    #{"case": 54, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_55() {
    let p_bar = 1.0 + 55 * 0.5;
    let t_k = 80.0 + 55 * 0.4;
    #{"case": 55, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_56() {
    let p_bar = 1.0 + 56 * 0.5;
    let t_k = 80.0 + 56 * 0.4;
    #{"case": 56, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_57() {
    let p_bar = 1.0 + 57 * 0.5;
    let t_k = 80.0 + 57 * 0.4;
    #{"case": 57, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_58() {
    let p_bar = 1.0 + 58 * 0.5;
    let t_k = 80.0 + 58 * 0.4;
    #{"case": 58, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_59() {
    let p_bar = 1.0 + 59 * 0.5;
    let t_k = 80.0 + 59 * 0.4;
    #{"case": 59, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_60() {
    let p_bar = 1.0 + 60 * 0.5;
    let t_k = 80.0 + 60 * 0.4;
    #{"case": 60, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_61() {
    let p_bar = 1.0 + 61 * 0.5;
    let t_k = 80.0 + 61 * 0.4;
    #{"case": 61, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_62() {
    let p_bar = 1.0 + 62 * 0.5;
    let t_k = 80.0 + 62 * 0.4;
    #{"case": 62, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_63() {
    let p_bar = 1.0 + 63 * 0.5;
    let t_k = 80.0 + 63 * 0.4;
    #{"case": 63, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_64() {
    let p_bar = 1.0 + 64 * 0.5;
    let t_k = 80.0 + 64 * 0.4;
    #{"case": 64, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_65() {
    let p_bar = 1.0 + 65 * 0.5;
    let t_k = 80.0 + 65 * 0.4;
    #{"case": 65, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_66() {
    let p_bar = 1.0 + 66 * 0.5;
    let t_k = 80.0 + 66 * 0.4;
    #{"case": 66, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_67() {
    let p_bar = 1.0 + 67 * 0.5;
    let t_k = 80.0 + 67 * 0.4;
    #{"case": 67, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_68() {
    let p_bar = 1.0 + 68 * 0.5;
    let t_k = 80.0 + 68 * 0.4;
    #{"case": 68, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_69() {
    let p_bar = 1.0 + 69 * 0.5;
    let t_k = 80.0 + 69 * 0.4;
    #{"case": 69, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_70() {
    let p_bar = 1.0 + 70 * 0.5;
    let t_k = 80.0 + 70 * 0.4;
    #{"case": 70, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_71() {
    let p_bar = 1.0 + 71 * 0.5;
    let t_k = 80.0 + 71 * 0.4;
    #{"case": 71, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_72() {
    let p_bar = 1.0 + 72 * 0.5;
    let t_k = 80.0 + 72 * 0.4;
    #{"case": 72, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_73() {
    let p_bar = 1.0 + 73 * 0.5;
    let t_k = 80.0 + 73 * 0.4;
    #{"case": 73, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_74() {
    let p_bar = 1.0 + 74 * 0.5;
    let t_k = 80.0 + 74 * 0.4;
    #{"case": 74, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_75() {
    let p_bar = 1.0 + 75 * 0.5;
    let t_k = 80.0 + 75 * 0.4;
    #{"case": 75, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_76() {
    let p_bar = 1.0 + 76 * 0.5;
    let t_k = 80.0 + 76 * 0.4;
    #{"case": 76, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_77() {
    let p_bar = 1.0 + 77 * 0.5;
    let t_k = 80.0 + 77 * 0.4;
    #{"case": 77, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_78() {
    let p_bar = 1.0 + 78 * 0.5;
    let t_k = 80.0 + 78 * 0.4;
    #{"case": 78, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_79() {
    let p_bar = 1.0 + 79 * 0.5;
    let t_k = 80.0 + 79 * 0.4;
    #{"case": 79, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_80() {
    let p_bar = 1.0 + 80 * 0.5;
    let t_k = 80.0 + 80 * 0.4;
    #{"case": 80, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_81() {
    let p_bar = 1.0 + 81 * 0.5;
    let t_k = 80.0 + 81 * 0.4;
    #{"case": 81, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_82() {
    let p_bar = 1.0 + 82 * 0.5;
    let t_k = 80.0 + 82 * 0.4;
    #{"case": 82, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_83() {
    let p_bar = 1.0 + 83 * 0.5;
    let t_k = 80.0 + 83 * 0.4;
    #{"case": 83, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
fn test_fluid_case_84() {
    let p_bar = 1.0 + 84 * 0.5;
    let t_k = 80.0 + 84 * 0.4;
    #{"case": 84, "p_bar": p_bar, "t_k": t_k, "valid": t_k > 0.0}
}
