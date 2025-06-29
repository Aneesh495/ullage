// Cavitating Venturi Mass Flow Regulation and Sonic Choking
// Acoustic decoupling of propellant feedlines from combustion oscillations

fn venturi_choked_mass_flow(cd, throat_area_sq_m, rho_upstream, p_in_bar, p_vapor_bar) {
    let delta_p_pa = (p_in_bar - p_vapor_bar) * 100000.0;
    if delta_p_pa <= 0.0 { return 0.0; }
    cd * throat_area_sq_m * (2.0 * rho_upstream * delta_p_pa).sqrt()
}

fn venturi_is_choked(p_recovery_bar, p_in_bar, critical_ratio) {
    let r = p_recovery_bar / p_in_bar;
    r <= critical_ratio
}

fn verify_venturi() {
    let mdot = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, 40.0, 1.0);
    if mdot < 10.0 || mdot > 100.0 { return false; }
    true
}
if verify_venturi() { log_info("[FLUID::CAVITATING_VENTURI] Verification passed."); }
fn venturi_calibration_point_1(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 1 * 0.5, 1.0);
    #{"venturi": 1, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_2(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 2 * 0.5, 1.0);
    #{"venturi": 2, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_3(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 3 * 0.5, 1.0);
    #{"venturi": 3, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_4(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 4 * 0.5, 1.0);
    #{"venturi": 4, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_5(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 5 * 0.5, 1.0);
    #{"venturi": 5, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_6(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 6 * 0.5, 1.0);
    #{"venturi": 6, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_7(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 7 * 0.5, 1.0);
    #{"venturi": 7, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_8(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 8 * 0.5, 1.0);
    #{"venturi": 8, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_9(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 9 * 0.5, 1.0);
    #{"venturi": 9, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_10(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 10 * 0.5, 1.0);
    #{"venturi": 10, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_11(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 11 * 0.5, 1.0);
    #{"venturi": 11, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_12(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 12 * 0.5, 1.0);
    #{"venturi": 12, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_13(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 13 * 0.5, 1.0);
    #{"venturi": 13, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_14(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 14 * 0.5, 1.0);
    #{"venturi": 14, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_15(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 15 * 0.5, 1.0);
    #{"venturi": 15, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_16(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 16 * 0.5, 1.0);
    #{"venturi": 16, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_17(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 17 * 0.5, 1.0);
    #{"venturi": 17, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_18(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 18 * 0.5, 1.0);
    #{"venturi": 18, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_19(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 19 * 0.5, 1.0);
    #{"venturi": 19, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_20(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 20 * 0.5, 1.0);
    #{"venturi": 20, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_21(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 21 * 0.5, 1.0);
    #{"venturi": 21, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_22(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 22 * 0.5, 1.0);
    #{"venturi": 22, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_23(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 23 * 0.5, 1.0);
    #{"venturi": 23, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_24(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 24 * 0.5, 1.0);
    #{"venturi": 24, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_25(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 25 * 0.5, 1.0);
    #{"venturi": 25, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_26(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 26 * 0.5, 1.0);
    #{"venturi": 26, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_27(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 27 * 0.5, 1.0);
    #{"venturi": 27, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_28(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 28 * 0.5, 1.0);
    #{"venturi": 28, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_29(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 29 * 0.5, 1.0);
    #{"venturi": 29, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_30(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 30 * 0.5, 1.0);
    #{"venturi": 30, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_31(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 31 * 0.5, 1.0);
    #{"venturi": 31, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_32(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 32 * 0.5, 1.0);
    #{"venturi": 32, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_33(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 33 * 0.5, 1.0);
    #{"venturi": 33, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_34(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 34 * 0.5, 1.0);
    #{"venturi": 34, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_35(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 35 * 0.5, 1.0);
    #{"venturi": 35, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_36(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 36 * 0.5, 1.0);
    #{"venturi": 36, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_37(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 37 * 0.5, 1.0);
    #{"venturi": 37, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_38(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 38 * 0.5, 1.0);
    #{"venturi": 38, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_39(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 39 * 0.5, 1.0);
    #{"venturi": 39, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_40(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 40 * 0.5, 1.0);
    #{"venturi": 40, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_41(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 41 * 0.5, 1.0);
    #{"venturi": 41, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_42(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 42 * 0.5, 1.0);
    #{"venturi": 42, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_43(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 43 * 0.5, 1.0);
    #{"venturi": 43, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_44(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 44 * 0.5, 1.0);
    #{"venturi": 44, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_45(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 45 * 0.5, 1.0);
    #{"venturi": 45, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_46(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 46 * 0.5, 1.0);
    #{"venturi": 46, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_47(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 47 * 0.5, 1.0);
    #{"venturi": 47, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_48(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 48 * 0.5, 1.0);
    #{"venturi": 48, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_49(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 49 * 0.5, 1.0);
    #{"venturi": 49, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_50(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 50 * 0.5, 1.0);
    #{"venturi": 50, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_51(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 51 * 0.5, 1.0);
    #{"venturi": 51, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_52(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 52 * 0.5, 1.0);
    #{"venturi": 52, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_53(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 53 * 0.5, 1.0);
    #{"venturi": 53, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_54(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 54 * 0.5, 1.0);
    #{"venturi": 54, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_55(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 55 * 0.5, 1.0);
    #{"venturi": 55, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_56(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 56 * 0.5, 1.0);
    #{"venturi": 56, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_57(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 57 * 0.5, 1.0);
    #{"venturi": 57, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_58(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 58 * 0.5, 1.0);
    #{"venturi": 58, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_59(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 59 * 0.5, 1.0);
    #{"venturi": 59, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_60(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 60 * 0.5, 1.0);
    #{"venturi": 60, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_61(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 61 * 0.5, 1.0);
    #{"venturi": 61, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_62(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 62 * 0.5, 1.0);
    #{"venturi": 62, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_63(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 63 * 0.5, 1.0);
    #{"venturi": 63, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_64(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 64 * 0.5, 1.0);
    #{"venturi": 64, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_65(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 65 * 0.5, 1.0);
    #{"venturi": 65, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_66(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 66 * 0.5, 1.0);
    #{"venturi": 66, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_67(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 67 * 0.5, 1.0);
    #{"venturi": 67, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_68(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 68 * 0.5, 1.0);
    #{"venturi": 68, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_69(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 69 * 0.5, 1.0);
    #{"venturi": 69, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_70(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 70 * 0.5, 1.0);
    #{"venturi": 70, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_71(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 71 * 0.5, 1.0);
    #{"venturi": 71, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_72(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 72 * 0.5, 1.0);
    #{"venturi": 72, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_73(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 73 * 0.5, 1.0);
    #{"venturi": 73, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_74(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 74 * 0.5, 1.0);
    #{"venturi": 74, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_75(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 75 * 0.5, 1.0);
    #{"venturi": 75, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_76(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 76 * 0.5, 1.0);
    #{"venturi": 76, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_77(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 77 * 0.5, 1.0);
    #{"venturi": 77, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_78(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 78 * 0.5, 1.0);
    #{"venturi": 78, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_79(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 79 * 0.5, 1.0);
    #{"venturi": 79, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_80(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 80 * 0.5, 1.0);
    #{"venturi": 80, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_81(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 81 * 0.5, 1.0);
    #{"venturi": 81, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_82(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 82 * 0.5, 1.0);
    #{"venturi": 82, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_83(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 83 * 0.5, 1.0);
    #{"venturi": 83, "mass_flow_kg_s": m}
}
fn venturi_calibration_point_84(p_feed_bar) {
    let m = venturi_choked_mass_flow(0.96, 0.0005, 1141.0, p_feed_bar + 84 * 0.5, 1.0);
    #{"venturi": 84, "mass_flow_kg_s": m}
}
