// Turbine Gaseous Spin Start Spool-Up Transient Dynamics
// Part of the Ullage Cryogenic Test Executive Suite

fn spin_start_acceleration(starter_torque_nm, pump_drag_torque_nm, rotor_polar_inertia_kg_m2) {
    let net_torque = starter_torque_nm - pump_drag_torque_nm;
    net_torque / rotor_polar_inertia_kg_m2 // rad/s^2
}

fn verify_spin_start() {
    let alpha = spin_start_acceleration(150.0, 30.0, 0.05);
    if (alpha - 2400.0).abs() > 1.0 { return false; }
    true
}
if verify_spin_start() { log_info("[TURBO::SPIN_START] Verification passed."); }
fn spin_start_timestep_1(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 1 * 0.5, 0.05);
    #{"step": 1, "alpha_rad_s2": a}
}
fn spin_start_timestep_2(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 2 * 0.5, 0.05);
    #{"step": 2, "alpha_rad_s2": a}
}
fn spin_start_timestep_3(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 3 * 0.5, 0.05);
    #{"step": 3, "alpha_rad_s2": a}
}
fn spin_start_timestep_4(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 4 * 0.5, 0.05);
    #{"step": 4, "alpha_rad_s2": a}
}
fn spin_start_timestep_5(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 5 * 0.5, 0.05);
    #{"step": 5, "alpha_rad_s2": a}
}
fn spin_start_timestep_6(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 6 * 0.5, 0.05);
    #{"step": 6, "alpha_rad_s2": a}
}
fn spin_start_timestep_7(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 7 * 0.5, 0.05);
    #{"step": 7, "alpha_rad_s2": a}
}
fn spin_start_timestep_8(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 8 * 0.5, 0.05);
    #{"step": 8, "alpha_rad_s2": a}
}
fn spin_start_timestep_9(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 9 * 0.5, 0.05);
    #{"step": 9, "alpha_rad_s2": a}
}
fn spin_start_timestep_10(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 10 * 0.5, 0.05);
    #{"step": 10, "alpha_rad_s2": a}
}
fn spin_start_timestep_11(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 11 * 0.5, 0.05);
    #{"step": 11, "alpha_rad_s2": a}
}
fn spin_start_timestep_12(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 12 * 0.5, 0.05);
    #{"step": 12, "alpha_rad_s2": a}
}
fn spin_start_timestep_13(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 13 * 0.5, 0.05);
    #{"step": 13, "alpha_rad_s2": a}
}
fn spin_start_timestep_14(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 14 * 0.5, 0.05);
    #{"step": 14, "alpha_rad_s2": a}
}
fn spin_start_timestep_15(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 15 * 0.5, 0.05);
    #{"step": 15, "alpha_rad_s2": a}
}
fn spin_start_timestep_16(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 16 * 0.5, 0.05);
    #{"step": 16, "alpha_rad_s2": a}
}
fn spin_start_timestep_17(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 17 * 0.5, 0.05);
    #{"step": 17, "alpha_rad_s2": a}
}
fn spin_start_timestep_18(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 18 * 0.5, 0.05);
    #{"step": 18, "alpha_rad_s2": a}
}
fn spin_start_timestep_19(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 19 * 0.5, 0.05);
    #{"step": 19, "alpha_rad_s2": a}
}
fn spin_start_timestep_20(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 20 * 0.5, 0.05);
    #{"step": 20, "alpha_rad_s2": a}
}
fn spin_start_timestep_21(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 21 * 0.5, 0.05);
    #{"step": 21, "alpha_rad_s2": a}
}
fn spin_start_timestep_22(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 22 * 0.5, 0.05);
    #{"step": 22, "alpha_rad_s2": a}
}
fn spin_start_timestep_23(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 23 * 0.5, 0.05);
    #{"step": 23, "alpha_rad_s2": a}
}
fn spin_start_timestep_24(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 24 * 0.5, 0.05);
    #{"step": 24, "alpha_rad_s2": a}
}
fn spin_start_timestep_25(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 25 * 0.5, 0.05);
    #{"step": 25, "alpha_rad_s2": a}
}
fn spin_start_timestep_26(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 26 * 0.5, 0.05);
    #{"step": 26, "alpha_rad_s2": a}
}
fn spin_start_timestep_27(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 27 * 0.5, 0.05);
    #{"step": 27, "alpha_rad_s2": a}
}
fn spin_start_timestep_28(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 28 * 0.5, 0.05);
    #{"step": 28, "alpha_rad_s2": a}
}
fn spin_start_timestep_29(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 29 * 0.5, 0.05);
    #{"step": 29, "alpha_rad_s2": a}
}
fn spin_start_timestep_30(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 30 * 0.5, 0.05);
    #{"step": 30, "alpha_rad_s2": a}
}
fn spin_start_timestep_31(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 31 * 0.5, 0.05);
    #{"step": 31, "alpha_rad_s2": a}
}
fn spin_start_timestep_32(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 32 * 0.5, 0.05);
    #{"step": 32, "alpha_rad_s2": a}
}
fn spin_start_timestep_33(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 33 * 0.5, 0.05);
    #{"step": 33, "alpha_rad_s2": a}
}
fn spin_start_timestep_34(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 34 * 0.5, 0.05);
    #{"step": 34, "alpha_rad_s2": a}
}
fn spin_start_timestep_35(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 35 * 0.5, 0.05);
    #{"step": 35, "alpha_rad_s2": a}
}
fn spin_start_timestep_36(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 36 * 0.5, 0.05);
    #{"step": 36, "alpha_rad_s2": a}
}
fn spin_start_timestep_37(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 37 * 0.5, 0.05);
    #{"step": 37, "alpha_rad_s2": a}
}
fn spin_start_timestep_38(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 38 * 0.5, 0.05);
    #{"step": 38, "alpha_rad_s2": a}
}
fn spin_start_timestep_39(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 39 * 0.5, 0.05);
    #{"step": 39, "alpha_rad_s2": a}
}
fn spin_start_timestep_40(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 40 * 0.5, 0.05);
    #{"step": 40, "alpha_rad_s2": a}
}
fn spin_start_timestep_41(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 41 * 0.5, 0.05);
    #{"step": 41, "alpha_rad_s2": a}
}
fn spin_start_timestep_42(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 42 * 0.5, 0.05);
    #{"step": 42, "alpha_rad_s2": a}
}
fn spin_start_timestep_43(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 43 * 0.5, 0.05);
    #{"step": 43, "alpha_rad_s2": a}
}
fn spin_start_timestep_44(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 44 * 0.5, 0.05);
    #{"step": 44, "alpha_rad_s2": a}
}
