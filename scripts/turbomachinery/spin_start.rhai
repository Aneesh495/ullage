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
fn spin_start_timestep_45(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 45 * 0.5, 0.05);
    #{"step": 45, "alpha_rad_s2": a}
}
fn spin_start_timestep_46(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 46 * 0.5, 0.05);
    #{"step": 46, "alpha_rad_s2": a}
}
fn spin_start_timestep_47(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 47 * 0.5, 0.05);
    #{"step": 47, "alpha_rad_s2": a}
}
fn spin_start_timestep_48(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 48 * 0.5, 0.05);
    #{"step": 48, "alpha_rad_s2": a}
}
fn spin_start_timestep_49(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 49 * 0.5, 0.05);
    #{"step": 49, "alpha_rad_s2": a}
}
fn spin_start_timestep_50(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 50 * 0.5, 0.05);
    #{"step": 50, "alpha_rad_s2": a}
}
fn spin_start_timestep_51(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 51 * 0.5, 0.05);
    #{"step": 51, "alpha_rad_s2": a}
}
fn spin_start_timestep_52(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 52 * 0.5, 0.05);
    #{"step": 52, "alpha_rad_s2": a}
}
fn spin_start_timestep_53(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 53 * 0.5, 0.05);
    #{"step": 53, "alpha_rad_s2": a}
}
fn spin_start_timestep_54(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 54 * 0.5, 0.05);
    #{"step": 54, "alpha_rad_s2": a}
}
fn spin_start_timestep_55(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 55 * 0.5, 0.05);
    #{"step": 55, "alpha_rad_s2": a}
}
fn spin_start_timestep_56(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 56 * 0.5, 0.05);
    #{"step": 56, "alpha_rad_s2": a}
}
fn spin_start_timestep_57(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 57 * 0.5, 0.05);
    #{"step": 57, "alpha_rad_s2": a}
}
fn spin_start_timestep_58(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 58 * 0.5, 0.05);
    #{"step": 58, "alpha_rad_s2": a}
}
fn spin_start_timestep_59(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 59 * 0.5, 0.05);
    #{"step": 59, "alpha_rad_s2": a}
}
fn spin_start_timestep_60(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 60 * 0.5, 0.05);
    #{"step": 60, "alpha_rad_s2": a}
}
fn spin_start_timestep_61(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 61 * 0.5, 0.05);
    #{"step": 61, "alpha_rad_s2": a}
}
fn spin_start_timestep_62(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 62 * 0.5, 0.05);
    #{"step": 62, "alpha_rad_s2": a}
}
fn spin_start_timestep_63(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 63 * 0.5, 0.05);
    #{"step": 63, "alpha_rad_s2": a}
}
fn spin_start_timestep_64(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 64 * 0.5, 0.05);
    #{"step": 64, "alpha_rad_s2": a}
}
fn spin_start_timestep_65(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 65 * 0.5, 0.05);
    #{"step": 65, "alpha_rad_s2": a}
}
fn spin_start_timestep_66(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 66 * 0.5, 0.05);
    #{"step": 66, "alpha_rad_s2": a}
}
fn spin_start_timestep_67(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 67 * 0.5, 0.05);
    #{"step": 67, "alpha_rad_s2": a}
}
fn spin_start_timestep_68(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 68 * 0.5, 0.05);
    #{"step": 68, "alpha_rad_s2": a}
}
fn spin_start_timestep_69(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 69 * 0.5, 0.05);
    #{"step": 69, "alpha_rad_s2": a}
}
fn spin_start_timestep_70(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 70 * 0.5, 0.05);
    #{"step": 70, "alpha_rad_s2": a}
}
fn spin_start_timestep_71(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 71 * 0.5, 0.05);
    #{"step": 71, "alpha_rad_s2": a}
}
fn spin_start_timestep_72(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 72 * 0.5, 0.05);
    #{"step": 72, "alpha_rad_s2": a}
}
fn spin_start_timestep_73(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 73 * 0.5, 0.05);
    #{"step": 73, "alpha_rad_s2": a}
}
fn spin_start_timestep_74(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 74 * 0.5, 0.05);
    #{"step": 74, "alpha_rad_s2": a}
}
fn spin_start_timestep_75(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 75 * 0.5, 0.05);
    #{"step": 75, "alpha_rad_s2": a}
}
fn spin_start_timestep_76(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 76 * 0.5, 0.05);
    #{"step": 76, "alpha_rad_s2": a}
}
fn spin_start_timestep_77(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 77 * 0.5, 0.05);
    #{"step": 77, "alpha_rad_s2": a}
}
fn spin_start_timestep_78(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 78 * 0.5, 0.05);
    #{"step": 78, "alpha_rad_s2": a}
}
fn spin_start_timestep_79(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 79 * 0.5, 0.05);
    #{"step": 79, "alpha_rad_s2": a}
}
fn spin_start_timestep_80(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 80 * 0.5, 0.05);
    #{"step": 80, "alpha_rad_s2": a}
}
fn spin_start_timestep_81(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 81 * 0.5, 0.05);
    #{"step": 81, "alpha_rad_s2": a}
}
fn spin_start_timestep_82(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 82 * 0.5, 0.05);
    #{"step": 82, "alpha_rad_s2": a}
}
fn spin_start_timestep_83(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 83 * 0.5, 0.05);
    #{"step": 83, "alpha_rad_s2": a}
}
fn spin_start_timestep_84(torque) {
    let a = spin_start_acceleration(torque, 30.0 + 84 * 0.5, 0.05);
    #{"step": 84, "alpha_rad_s2": a}
}
