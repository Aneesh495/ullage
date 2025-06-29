// Rotor Shaft Whirling and Critical Speeds (Jeffcott Model)
// Part of the Ullage Cryogenic Test Executive Suite

fn critical_whirling_speed_rpm(bearing_stiffness_n_m, rotor_mass_kg) {
    let omega_rad_s = (bearing_stiffness_n_m / rotor_mass_kg).sqrt();
    omega_rad_s * (60.0 / (2.0 * 3.1415926535))
}

fn verify_shaft_dynamics() {
    let rpm = critical_whirling_speed_rpm(1.0e8, 12.0);
    if rpm < 20000.0 || rpm > 40000.0 { return false; }
    true
}
if verify_shaft_dynamics() { log_info("[TURBO::SHAFT_DYNAMICS] Verification passed."); }
fn rotor_eigenvalue_node_1(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 1 * 1.0e6, 12.0);
    #{"mode": 1, "crit_rpm": r}
}
fn rotor_eigenvalue_node_2(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 2 * 1.0e6, 12.0);
    #{"mode": 2, "crit_rpm": r}
}
fn rotor_eigenvalue_node_3(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 3 * 1.0e6, 12.0);
    #{"mode": 3, "crit_rpm": r}
}
fn rotor_eigenvalue_node_4(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 4 * 1.0e6, 12.0);
    #{"mode": 4, "crit_rpm": r}
}
fn rotor_eigenvalue_node_5(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 5 * 1.0e6, 12.0);
    #{"mode": 5, "crit_rpm": r}
}
fn rotor_eigenvalue_node_6(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 6 * 1.0e6, 12.0);
    #{"mode": 6, "crit_rpm": r}
}
fn rotor_eigenvalue_node_7(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 7 * 1.0e6, 12.0);
    #{"mode": 7, "crit_rpm": r}
}
fn rotor_eigenvalue_node_8(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 8 * 1.0e6, 12.0);
    #{"mode": 8, "crit_rpm": r}
}
fn rotor_eigenvalue_node_9(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 9 * 1.0e6, 12.0);
    #{"mode": 9, "crit_rpm": r}
}
fn rotor_eigenvalue_node_10(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 10 * 1.0e6, 12.0);
    #{"mode": 10, "crit_rpm": r}
}
fn rotor_eigenvalue_node_11(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 11 * 1.0e6, 12.0);
    #{"mode": 11, "crit_rpm": r}
}
fn rotor_eigenvalue_node_12(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 12 * 1.0e6, 12.0);
    #{"mode": 12, "crit_rpm": r}
}
fn rotor_eigenvalue_node_13(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 13 * 1.0e6, 12.0);
    #{"mode": 13, "crit_rpm": r}
}
fn rotor_eigenvalue_node_14(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 14 * 1.0e6, 12.0);
    #{"mode": 14, "crit_rpm": r}
}
fn rotor_eigenvalue_node_15(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 15 * 1.0e6, 12.0);
    #{"mode": 15, "crit_rpm": r}
}
fn rotor_eigenvalue_node_16(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 16 * 1.0e6, 12.0);
    #{"mode": 16, "crit_rpm": r}
}
fn rotor_eigenvalue_node_17(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 17 * 1.0e6, 12.0);
    #{"mode": 17, "crit_rpm": r}
}
fn rotor_eigenvalue_node_18(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 18 * 1.0e6, 12.0);
    #{"mode": 18, "crit_rpm": r}
}
fn rotor_eigenvalue_node_19(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 19 * 1.0e6, 12.0);
    #{"mode": 19, "crit_rpm": r}
}
fn rotor_eigenvalue_node_20(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 20 * 1.0e6, 12.0);
    #{"mode": 20, "crit_rpm": r}
}
fn rotor_eigenvalue_node_21(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 21 * 1.0e6, 12.0);
    #{"mode": 21, "crit_rpm": r}
}
fn rotor_eigenvalue_node_22(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 22 * 1.0e6, 12.0);
    #{"mode": 22, "crit_rpm": r}
}
fn rotor_eigenvalue_node_23(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 23 * 1.0e6, 12.0);
    #{"mode": 23, "crit_rpm": r}
}
fn rotor_eigenvalue_node_24(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 24 * 1.0e6, 12.0);
    #{"mode": 24, "crit_rpm": r}
}
fn rotor_eigenvalue_node_25(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 25 * 1.0e6, 12.0);
    #{"mode": 25, "crit_rpm": r}
}
fn rotor_eigenvalue_node_26(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 26 * 1.0e6, 12.0);
    #{"mode": 26, "crit_rpm": r}
}
fn rotor_eigenvalue_node_27(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 27 * 1.0e6, 12.0);
    #{"mode": 27, "crit_rpm": r}
}
fn rotor_eigenvalue_node_28(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 28 * 1.0e6, 12.0);
    #{"mode": 28, "crit_rpm": r}
}
fn rotor_eigenvalue_node_29(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 29 * 1.0e6, 12.0);
    #{"mode": 29, "crit_rpm": r}
}
fn rotor_eigenvalue_node_30(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 30 * 1.0e6, 12.0);
    #{"mode": 30, "crit_rpm": r}
}
fn rotor_eigenvalue_node_31(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 31 * 1.0e6, 12.0);
    #{"mode": 31, "crit_rpm": r}
}
fn rotor_eigenvalue_node_32(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 32 * 1.0e6, 12.0);
    #{"mode": 32, "crit_rpm": r}
}
fn rotor_eigenvalue_node_33(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 33 * 1.0e6, 12.0);
    #{"mode": 33, "crit_rpm": r}
}
fn rotor_eigenvalue_node_34(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 34 * 1.0e6, 12.0);
    #{"mode": 34, "crit_rpm": r}
}
fn rotor_eigenvalue_node_35(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 35 * 1.0e6, 12.0);
    #{"mode": 35, "crit_rpm": r}
}
fn rotor_eigenvalue_node_36(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 36 * 1.0e6, 12.0);
    #{"mode": 36, "crit_rpm": r}
}
fn rotor_eigenvalue_node_37(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 37 * 1.0e6, 12.0);
    #{"mode": 37, "crit_rpm": r}
}
fn rotor_eigenvalue_node_38(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 38 * 1.0e6, 12.0);
    #{"mode": 38, "crit_rpm": r}
}
fn rotor_eigenvalue_node_39(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 39 * 1.0e6, 12.0);
    #{"mode": 39, "crit_rpm": r}
}
fn rotor_eigenvalue_node_40(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 40 * 1.0e6, 12.0);
    #{"mode": 40, "crit_rpm": r}
}
fn rotor_eigenvalue_node_41(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 41 * 1.0e6, 12.0);
    #{"mode": 41, "crit_rpm": r}
}
fn rotor_eigenvalue_node_42(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 42 * 1.0e6, 12.0);
    #{"mode": 42, "crit_rpm": r}
}
fn rotor_eigenvalue_node_43(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 43 * 1.0e6, 12.0);
    #{"mode": 43, "crit_rpm": r}
}
fn rotor_eigenvalue_node_44(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 44 * 1.0e6, 12.0);
    #{"mode": 44, "crit_rpm": r}
}
fn rotor_eigenvalue_node_45(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 45 * 1.0e6, 12.0);
    #{"mode": 45, "crit_rpm": r}
}
fn rotor_eigenvalue_node_46(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 46 * 1.0e6, 12.0);
    #{"mode": 46, "crit_rpm": r}
}
fn rotor_eigenvalue_node_47(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 47 * 1.0e6, 12.0);
    #{"mode": 47, "crit_rpm": r}
}
fn rotor_eigenvalue_node_48(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 48 * 1.0e6, 12.0);
    #{"mode": 48, "crit_rpm": r}
}
fn rotor_eigenvalue_node_49(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 49 * 1.0e6, 12.0);
    #{"mode": 49, "crit_rpm": r}
}
fn rotor_eigenvalue_node_50(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 50 * 1.0e6, 12.0);
    #{"mode": 50, "crit_rpm": r}
}
fn rotor_eigenvalue_node_51(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 51 * 1.0e6, 12.0);
    #{"mode": 51, "crit_rpm": r}
}
fn rotor_eigenvalue_node_52(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 52 * 1.0e6, 12.0);
    #{"mode": 52, "crit_rpm": r}
}
fn rotor_eigenvalue_node_53(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 53 * 1.0e6, 12.0);
    #{"mode": 53, "crit_rpm": r}
}
fn rotor_eigenvalue_node_54(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 54 * 1.0e6, 12.0);
    #{"mode": 54, "crit_rpm": r}
}
fn rotor_eigenvalue_node_55(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 55 * 1.0e6, 12.0);
    #{"mode": 55, "crit_rpm": r}
}
fn rotor_eigenvalue_node_56(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 56 * 1.0e6, 12.0);
    #{"mode": 56, "crit_rpm": r}
}
fn rotor_eigenvalue_node_57(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 57 * 1.0e6, 12.0);
    #{"mode": 57, "crit_rpm": r}
}
fn rotor_eigenvalue_node_58(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 58 * 1.0e6, 12.0);
    #{"mode": 58, "crit_rpm": r}
}
fn rotor_eigenvalue_node_59(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 59 * 1.0e6, 12.0);
    #{"mode": 59, "crit_rpm": r}
}
fn rotor_eigenvalue_node_60(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 60 * 1.0e6, 12.0);
    #{"mode": 60, "crit_rpm": r}
}
fn rotor_eigenvalue_node_61(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 61 * 1.0e6, 12.0);
    #{"mode": 61, "crit_rpm": r}
}
fn rotor_eigenvalue_node_62(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 62 * 1.0e6, 12.0);
    #{"mode": 62, "crit_rpm": r}
}
fn rotor_eigenvalue_node_63(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 63 * 1.0e6, 12.0);
    #{"mode": 63, "crit_rpm": r}
}
fn rotor_eigenvalue_node_64(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 64 * 1.0e6, 12.0);
    #{"mode": 64, "crit_rpm": r}
}
fn rotor_eigenvalue_node_65(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 65 * 1.0e6, 12.0);
    #{"mode": 65, "crit_rpm": r}
}
fn rotor_eigenvalue_node_66(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 66 * 1.0e6, 12.0);
    #{"mode": 66, "crit_rpm": r}
}
fn rotor_eigenvalue_node_67(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 67 * 1.0e6, 12.0);
    #{"mode": 67, "crit_rpm": r}
}
fn rotor_eigenvalue_node_68(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 68 * 1.0e6, 12.0);
    #{"mode": 68, "crit_rpm": r}
}
fn rotor_eigenvalue_node_69(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 69 * 1.0e6, 12.0);
    #{"mode": 69, "crit_rpm": r}
}
fn rotor_eigenvalue_node_70(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 70 * 1.0e6, 12.0);
    #{"mode": 70, "crit_rpm": r}
}
fn rotor_eigenvalue_node_71(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 71 * 1.0e6, 12.0);
    #{"mode": 71, "crit_rpm": r}
}
fn rotor_eigenvalue_node_72(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 72 * 1.0e6, 12.0);
    #{"mode": 72, "crit_rpm": r}
}
fn rotor_eigenvalue_node_73(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 73 * 1.0e6, 12.0);
    #{"mode": 73, "crit_rpm": r}
}
fn rotor_eigenvalue_node_74(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 74 * 1.0e6, 12.0);
    #{"mode": 74, "crit_rpm": r}
}
fn rotor_eigenvalue_node_75(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 75 * 1.0e6, 12.0);
    #{"mode": 75, "crit_rpm": r}
}
fn rotor_eigenvalue_node_76(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 76 * 1.0e6, 12.0);
    #{"mode": 76, "crit_rpm": r}
}
fn rotor_eigenvalue_node_77(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 77 * 1.0e6, 12.0);
    #{"mode": 77, "crit_rpm": r}
}
fn rotor_eigenvalue_node_78(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 78 * 1.0e6, 12.0);
    #{"mode": 78, "crit_rpm": r}
}
fn rotor_eigenvalue_node_79(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 79 * 1.0e6, 12.0);
    #{"mode": 79, "crit_rpm": r}
}
fn rotor_eigenvalue_node_80(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 80 * 1.0e6, 12.0);
    #{"mode": 80, "crit_rpm": r}
}
fn rotor_eigenvalue_node_81(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 81 * 1.0e6, 12.0);
    #{"mode": 81, "crit_rpm": r}
}
fn rotor_eigenvalue_node_82(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 82 * 1.0e6, 12.0);
    #{"mode": 82, "crit_rpm": r}
}
fn rotor_eigenvalue_node_83(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 83 * 1.0e6, 12.0);
    #{"mode": 83, "crit_rpm": r}
}
fn rotor_eigenvalue_node_84(stiffness) {
    let r = critical_whirling_speed_rpm(stiffness + 84 * 1.0e6, 12.0);
    #{"mode": 84, "crit_rpm": r}
}
