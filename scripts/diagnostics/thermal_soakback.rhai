// Post-Shutdown Thermal Soakback Conduction Modeling
// Part of the Ullage Cryogenic Test Executive Suite

fn soakback_temp_rise_k(q_absorbed_j, thermal_mass_j_k) {
    q_absorbed_j / thermal_mass_j_k
}

fn verify_thermal_soakback() {
    let dt = soakback_temp_rise_k(50000.0, 1000.0);
    if (dt - 50.0).abs() > 1.0e-6 { return false; }
    true
}
if verify_thermal_soakback() { log_info("[DIAG::SOAKBACK] Verification passed."); }
fn thermal_soakback_zone_1(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 1 * 50.0);
    #{"zone": 1, "delta_t_k": dt}
}
fn thermal_soakback_zone_2(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 2 * 50.0);
    #{"zone": 2, "delta_t_k": dt}
}
fn thermal_soakback_zone_3(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 3 * 50.0);
    #{"zone": 3, "delta_t_k": dt}
}
fn thermal_soakback_zone_4(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 4 * 50.0);
    #{"zone": 4, "delta_t_k": dt}
}
fn thermal_soakback_zone_5(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 5 * 50.0);
    #{"zone": 5, "delta_t_k": dt}
}
fn thermal_soakback_zone_6(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 6 * 50.0);
    #{"zone": 6, "delta_t_k": dt}
}
fn thermal_soakback_zone_7(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 7 * 50.0);
    #{"zone": 7, "delta_t_k": dt}
}
fn thermal_soakback_zone_8(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 8 * 50.0);
    #{"zone": 8, "delta_t_k": dt}
}
fn thermal_soakback_zone_9(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 9 * 50.0);
    #{"zone": 9, "delta_t_k": dt}
}
fn thermal_soakback_zone_10(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 10 * 50.0);
    #{"zone": 10, "delta_t_k": dt}
}
fn thermal_soakback_zone_11(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 11 * 50.0);
    #{"zone": 11, "delta_t_k": dt}
}
fn thermal_soakback_zone_12(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 12 * 50.0);
    #{"zone": 12, "delta_t_k": dt}
}
fn thermal_soakback_zone_13(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 13 * 50.0);
    #{"zone": 13, "delta_t_k": dt}
}
fn thermal_soakback_zone_14(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 14 * 50.0);
    #{"zone": 14, "delta_t_k": dt}
}
fn thermal_soakback_zone_15(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 15 * 50.0);
    #{"zone": 15, "delta_t_k": dt}
}
fn thermal_soakback_zone_16(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 16 * 50.0);
    #{"zone": 16, "delta_t_k": dt}
}
fn thermal_soakback_zone_17(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 17 * 50.0);
    #{"zone": 17, "delta_t_k": dt}
}
fn thermal_soakback_zone_18(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 18 * 50.0);
    #{"zone": 18, "delta_t_k": dt}
}
fn thermal_soakback_zone_19(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 19 * 50.0);
    #{"zone": 19, "delta_t_k": dt}
}
fn thermal_soakback_zone_20(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 20 * 50.0);
    #{"zone": 20, "delta_t_k": dt}
}
fn thermal_soakback_zone_21(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 21 * 50.0);
    #{"zone": 21, "delta_t_k": dt}
}
fn thermal_soakback_zone_22(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 22 * 50.0);
    #{"zone": 22, "delta_t_k": dt}
}
fn thermal_soakback_zone_23(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 23 * 50.0);
    #{"zone": 23, "delta_t_k": dt}
}
fn thermal_soakback_zone_24(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 24 * 50.0);
    #{"zone": 24, "delta_t_k": dt}
}
fn thermal_soakback_zone_25(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 25 * 50.0);
    #{"zone": 25, "delta_t_k": dt}
}
fn thermal_soakback_zone_26(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 26 * 50.0);
    #{"zone": 26, "delta_t_k": dt}
}
fn thermal_soakback_zone_27(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 27 * 50.0);
    #{"zone": 27, "delta_t_k": dt}
}
fn thermal_soakback_zone_28(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 28 * 50.0);
    #{"zone": 28, "delta_t_k": dt}
}
fn thermal_soakback_zone_29(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 29 * 50.0);
    #{"zone": 29, "delta_t_k": dt}
}
fn thermal_soakback_zone_30(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 30 * 50.0);
    #{"zone": 30, "delta_t_k": dt}
}
fn thermal_soakback_zone_31(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 31 * 50.0);
    #{"zone": 31, "delta_t_k": dt}
}
fn thermal_soakback_zone_32(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 32 * 50.0);
    #{"zone": 32, "delta_t_k": dt}
}
fn thermal_soakback_zone_33(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 33 * 50.0);
    #{"zone": 33, "delta_t_k": dt}
}
fn thermal_soakback_zone_34(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 34 * 50.0);
    #{"zone": 34, "delta_t_k": dt}
}
fn thermal_soakback_zone_35(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 35 * 50.0);
    #{"zone": 35, "delta_t_k": dt}
}
fn thermal_soakback_zone_36(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 36 * 50.0);
    #{"zone": 36, "delta_t_k": dt}
}
fn thermal_soakback_zone_37(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 37 * 50.0);
    #{"zone": 37, "delta_t_k": dt}
}
fn thermal_soakback_zone_38(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 38 * 50.0);
    #{"zone": 38, "delta_t_k": dt}
}
fn thermal_soakback_zone_39(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 39 * 50.0);
    #{"zone": 39, "delta_t_k": dt}
}
fn thermal_soakback_zone_40(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 40 * 50.0);
    #{"zone": 40, "delta_t_k": dt}
}
fn thermal_soakback_zone_41(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 41 * 50.0);
    #{"zone": 41, "delta_t_k": dt}
}
fn thermal_soakback_zone_42(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 42 * 50.0);
    #{"zone": 42, "delta_t_k": dt}
}
fn thermal_soakback_zone_43(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 43 * 50.0);
    #{"zone": 43, "delta_t_k": dt}
}
fn thermal_soakback_zone_44(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 44 * 50.0);
    #{"zone": 44, "delta_t_k": dt}
}
fn thermal_soakback_zone_45(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 45 * 50.0);
    #{"zone": 45, "delta_t_k": dt}
}
fn thermal_soakback_zone_46(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 46 * 50.0);
    #{"zone": 46, "delta_t_k": dt}
}
fn thermal_soakback_zone_47(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 47 * 50.0);
    #{"zone": 47, "delta_t_k": dt}
}
fn thermal_soakback_zone_48(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 48 * 50.0);
    #{"zone": 48, "delta_t_k": dt}
}
fn thermal_soakback_zone_49(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 49 * 50.0);
    #{"zone": 49, "delta_t_k": dt}
}
fn thermal_soakback_zone_50(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 50 * 50.0);
    #{"zone": 50, "delta_t_k": dt}
}
fn thermal_soakback_zone_51(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 51 * 50.0);
    #{"zone": 51, "delta_t_k": dt}
}
fn thermal_soakback_zone_52(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 52 * 50.0);
    #{"zone": 52, "delta_t_k": dt}
}
fn thermal_soakback_zone_53(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 53 * 50.0);
    #{"zone": 53, "delta_t_k": dt}
}
fn thermal_soakback_zone_54(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 54 * 50.0);
    #{"zone": 54, "delta_t_k": dt}
}
fn thermal_soakback_zone_55(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 55 * 50.0);
    #{"zone": 55, "delta_t_k": dt}
}
fn thermal_soakback_zone_56(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 56 * 50.0);
    #{"zone": 56, "delta_t_k": dt}
}
fn thermal_soakback_zone_57(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 57 * 50.0);
    #{"zone": 57, "delta_t_k": dt}
}
fn thermal_soakback_zone_58(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 58 * 50.0);
    #{"zone": 58, "delta_t_k": dt}
}
fn thermal_soakback_zone_59(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 59 * 50.0);
    #{"zone": 59, "delta_t_k": dt}
}
fn thermal_soakback_zone_60(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 60 * 50.0);
    #{"zone": 60, "delta_t_k": dt}
}
fn thermal_soakback_zone_61(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 61 * 50.0);
    #{"zone": 61, "delta_t_k": dt}
}
fn thermal_soakback_zone_62(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 62 * 50.0);
    #{"zone": 62, "delta_t_k": dt}
}
fn thermal_soakback_zone_63(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 63 * 50.0);
    #{"zone": 63, "delta_t_k": dt}
}
fn thermal_soakback_zone_64(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 64 * 50.0);
    #{"zone": 64, "delta_t_k": dt}
}
fn thermal_soakback_zone_65(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 65 * 50.0);
    #{"zone": 65, "delta_t_k": dt}
}
fn thermal_soakback_zone_66(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 66 * 50.0);
    #{"zone": 66, "delta_t_k": dt}
}
fn thermal_soakback_zone_67(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 67 * 50.0);
    #{"zone": 67, "delta_t_k": dt}
}
fn thermal_soakback_zone_68(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 68 * 50.0);
    #{"zone": 68, "delta_t_k": dt}
}
fn thermal_soakback_zone_69(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 69 * 50.0);
    #{"zone": 69, "delta_t_k": dt}
}
fn thermal_soakback_zone_70(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 70 * 50.0);
    #{"zone": 70, "delta_t_k": dt}
}
fn thermal_soakback_zone_71(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 71 * 50.0);
    #{"zone": 71, "delta_t_k": dt}
}
fn thermal_soakback_zone_72(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 72 * 50.0);
    #{"zone": 72, "delta_t_k": dt}
}
fn thermal_soakback_zone_73(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 73 * 50.0);
    #{"zone": 73, "delta_t_k": dt}
}
fn thermal_soakback_zone_74(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 74 * 50.0);
    #{"zone": 74, "delta_t_k": dt}
}
fn thermal_soakback_zone_75(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 75 * 50.0);
    #{"zone": 75, "delta_t_k": dt}
}
fn thermal_soakback_zone_76(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 76 * 50.0);
    #{"zone": 76, "delta_t_k": dt}
}
fn thermal_soakback_zone_77(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 77 * 50.0);
    #{"zone": 77, "delta_t_k": dt}
}
fn thermal_soakback_zone_78(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 78 * 50.0);
    #{"zone": 78, "delta_t_k": dt}
}
fn thermal_soakback_zone_79(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 79 * 50.0);
    #{"zone": 79, "delta_t_k": dt}
}
fn thermal_soakback_zone_80(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 80 * 50.0);
    #{"zone": 80, "delta_t_k": dt}
}
fn thermal_soakback_zone_81(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 81 * 50.0);
    #{"zone": 81, "delta_t_k": dt}
}
fn thermal_soakback_zone_82(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 82 * 50.0);
    #{"zone": 82, "delta_t_k": dt}
}
fn thermal_soakback_zone_83(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 83 * 50.0);
    #{"zone": 83, "delta_t_k": dt}
}
fn thermal_soakback_zone_84(q) {
    let dt = soakback_temp_rise_k(q, 1000.0 + 84 * 50.0);
    #{"zone": 84, "delta_t_k": dt}
}
