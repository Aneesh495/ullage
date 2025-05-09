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
