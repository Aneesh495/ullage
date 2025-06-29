// Bartz Equation and Regenerative Cooling Throat Heat Flux
// Convective thermal loading along rocket nozzle contour

fn bartz_heat_transfer_coeff(cstar, d_throat, pc_bar, cp_gas, prandtl, mach) {
    let pc_pa = pc_bar * 100000.0;
    let mach_corr = 1.0 + 0.1 * mach * mach;
    let hg = (0.026 / (d_throat.powf(0.2))) * ((pc_pa / cstar).powf(0.8)) * cp_gas / (prandtl.powf(0.6));
    hg / mach_corr
}

fn verify_heat_flux() {
    let hg = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, 1.0);
    if hg <= 0.0 { return false; }
    true
}
if verify_heat_flux() { log_info("[COMBUSTION::HEAT_FLUX] Verification passed."); }
fn throat_thermal_station_1(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 1 * 0.01);
    #{"station": 1, "hg_w_m2_k": h}
}
fn throat_thermal_station_2(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 2 * 0.01);
    #{"station": 2, "hg_w_m2_k": h}
}
fn throat_thermal_station_3(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 3 * 0.01);
    #{"station": 3, "hg_w_m2_k": h}
}
fn throat_thermal_station_4(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 4 * 0.01);
    #{"station": 4, "hg_w_m2_k": h}
}
fn throat_thermal_station_5(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 5 * 0.01);
    #{"station": 5, "hg_w_m2_k": h}
}
fn throat_thermal_station_6(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 6 * 0.01);
    #{"station": 6, "hg_w_m2_k": h}
}
fn throat_thermal_station_7(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 7 * 0.01);
    #{"station": 7, "hg_w_m2_k": h}
}
fn throat_thermal_station_8(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 8 * 0.01);
    #{"station": 8, "hg_w_m2_k": h}
}
fn throat_thermal_station_9(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 9 * 0.01);
    #{"station": 9, "hg_w_m2_k": h}
}
fn throat_thermal_station_10(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 10 * 0.01);
    #{"station": 10, "hg_w_m2_k": h}
}
fn throat_thermal_station_11(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 11 * 0.01);
    #{"station": 11, "hg_w_m2_k": h}
}
fn throat_thermal_station_12(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 12 * 0.01);
    #{"station": 12, "hg_w_m2_k": h}
}
fn throat_thermal_station_13(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 13 * 0.01);
    #{"station": 13, "hg_w_m2_k": h}
}
fn throat_thermal_station_14(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 14 * 0.01);
    #{"station": 14, "hg_w_m2_k": h}
}
fn throat_thermal_station_15(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 15 * 0.01);
    #{"station": 15, "hg_w_m2_k": h}
}
fn throat_thermal_station_16(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 16 * 0.01);
    #{"station": 16, "hg_w_m2_k": h}
}
fn throat_thermal_station_17(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 17 * 0.01);
    #{"station": 17, "hg_w_m2_k": h}
}
fn throat_thermal_station_18(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 18 * 0.01);
    #{"station": 18, "hg_w_m2_k": h}
}
fn throat_thermal_station_19(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 19 * 0.01);
    #{"station": 19, "hg_w_m2_k": h}
}
fn throat_thermal_station_20(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 20 * 0.01);
    #{"station": 20, "hg_w_m2_k": h}
}
fn throat_thermal_station_21(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 21 * 0.01);
    #{"station": 21, "hg_w_m2_k": h}
}
fn throat_thermal_station_22(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 22 * 0.01);
    #{"station": 22, "hg_w_m2_k": h}
}
fn throat_thermal_station_23(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 23 * 0.01);
    #{"station": 23, "hg_w_m2_k": h}
}
fn throat_thermal_station_24(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 24 * 0.01);
    #{"station": 24, "hg_w_m2_k": h}
}
fn throat_thermal_station_25(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 25 * 0.01);
    #{"station": 25, "hg_w_m2_k": h}
}
fn throat_thermal_station_26(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 26 * 0.01);
    #{"station": 26, "hg_w_m2_k": h}
}
fn throat_thermal_station_27(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 27 * 0.01);
    #{"station": 27, "hg_w_m2_k": h}
}
fn throat_thermal_station_28(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 28 * 0.01);
    #{"station": 28, "hg_w_m2_k": h}
}
fn throat_thermal_station_29(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 29 * 0.01);
    #{"station": 29, "hg_w_m2_k": h}
}
fn throat_thermal_station_30(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 30 * 0.01);
    #{"station": 30, "hg_w_m2_k": h}
}
fn throat_thermal_station_31(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 31 * 0.01);
    #{"station": 31, "hg_w_m2_k": h}
}
fn throat_thermal_station_32(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 32 * 0.01);
    #{"station": 32, "hg_w_m2_k": h}
}
fn throat_thermal_station_33(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 33 * 0.01);
    #{"station": 33, "hg_w_m2_k": h}
}
fn throat_thermal_station_34(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 34 * 0.01);
    #{"station": 34, "hg_w_m2_k": h}
}
fn throat_thermal_station_35(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 35 * 0.01);
    #{"station": 35, "hg_w_m2_k": h}
}
fn throat_thermal_station_36(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 36 * 0.01);
    #{"station": 36, "hg_w_m2_k": h}
}
fn throat_thermal_station_37(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 37 * 0.01);
    #{"station": 37, "hg_w_m2_k": h}
}
fn throat_thermal_station_38(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 38 * 0.01);
    #{"station": 38, "hg_w_m2_k": h}
}
fn throat_thermal_station_39(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 39 * 0.01);
    #{"station": 39, "hg_w_m2_k": h}
}
fn throat_thermal_station_40(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 40 * 0.01);
    #{"station": 40, "hg_w_m2_k": h}
}
fn throat_thermal_station_41(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 41 * 0.01);
    #{"station": 41, "hg_w_m2_k": h}
}
fn throat_thermal_station_42(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 42 * 0.01);
    #{"station": 42, "hg_w_m2_k": h}
}
fn throat_thermal_station_43(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 43 * 0.01);
    #{"station": 43, "hg_w_m2_k": h}
}
fn throat_thermal_station_44(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 44 * 0.01);
    #{"station": 44, "hg_w_m2_k": h}
}
fn throat_thermal_station_45(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 45 * 0.01);
    #{"station": 45, "hg_w_m2_k": h}
}
fn throat_thermal_station_46(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 46 * 0.01);
    #{"station": 46, "hg_w_m2_k": h}
}
fn throat_thermal_station_47(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 47 * 0.01);
    #{"station": 47, "hg_w_m2_k": h}
}
fn throat_thermal_station_48(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 48 * 0.01);
    #{"station": 48, "hg_w_m2_k": h}
}
fn throat_thermal_station_49(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 49 * 0.01);
    #{"station": 49, "hg_w_m2_k": h}
}
fn throat_thermal_station_50(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 50 * 0.01);
    #{"station": 50, "hg_w_m2_k": h}
}
fn throat_thermal_station_51(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 51 * 0.01);
    #{"station": 51, "hg_w_m2_k": h}
}
fn throat_thermal_station_52(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 52 * 0.01);
    #{"station": 52, "hg_w_m2_k": h}
}
fn throat_thermal_station_53(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 53 * 0.01);
    #{"station": 53, "hg_w_m2_k": h}
}
fn throat_thermal_station_54(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 54 * 0.01);
    #{"station": 54, "hg_w_m2_k": h}
}
fn throat_thermal_station_55(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 55 * 0.01);
    #{"station": 55, "hg_w_m2_k": h}
}
fn throat_thermal_station_56(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 56 * 0.01);
    #{"station": 56, "hg_w_m2_k": h}
}
fn throat_thermal_station_57(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 57 * 0.01);
    #{"station": 57, "hg_w_m2_k": h}
}
fn throat_thermal_station_58(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 58 * 0.01);
    #{"station": 58, "hg_w_m2_k": h}
}
fn throat_thermal_station_59(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 59 * 0.01);
    #{"station": 59, "hg_w_m2_k": h}
}
fn throat_thermal_station_60(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 60 * 0.01);
    #{"station": 60, "hg_w_m2_k": h}
}
fn throat_thermal_station_61(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 61 * 0.01);
    #{"station": 61, "hg_w_m2_k": h}
}
fn throat_thermal_station_62(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 62 * 0.01);
    #{"station": 62, "hg_w_m2_k": h}
}
fn throat_thermal_station_63(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 63 * 0.01);
    #{"station": 63, "hg_w_m2_k": h}
}
fn throat_thermal_station_64(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 64 * 0.01);
    #{"station": 64, "hg_w_m2_k": h}
}
fn throat_thermal_station_65(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 65 * 0.01);
    #{"station": 65, "hg_w_m2_k": h}
}
fn throat_thermal_station_66(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 66 * 0.01);
    #{"station": 66, "hg_w_m2_k": h}
}
fn throat_thermal_station_67(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 67 * 0.01);
    #{"station": 67, "hg_w_m2_k": h}
}
fn throat_thermal_station_68(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 68 * 0.01);
    #{"station": 68, "hg_w_m2_k": h}
}
fn throat_thermal_station_69(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 69 * 0.01);
    #{"station": 69, "hg_w_m2_k": h}
}
fn throat_thermal_station_70(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 70 * 0.01);
    #{"station": 70, "hg_w_m2_k": h}
}
fn throat_thermal_station_71(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 71 * 0.01);
    #{"station": 71, "hg_w_m2_k": h}
}
fn throat_thermal_station_72(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 72 * 0.01);
    #{"station": 72, "hg_w_m2_k": h}
}
fn throat_thermal_station_73(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 73 * 0.01);
    #{"station": 73, "hg_w_m2_k": h}
}
fn throat_thermal_station_74(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 74 * 0.01);
    #{"station": 74, "hg_w_m2_k": h}
}
fn throat_thermal_station_75(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 75 * 0.01);
    #{"station": 75, "hg_w_m2_k": h}
}
fn throat_thermal_station_76(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 76 * 0.01);
    #{"station": 76, "hg_w_m2_k": h}
}
fn throat_thermal_station_77(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 77 * 0.01);
    #{"station": 77, "hg_w_m2_k": h}
}
fn throat_thermal_station_78(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 78 * 0.01);
    #{"station": 78, "hg_w_m2_k": h}
}
fn throat_thermal_station_79(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 79 * 0.01);
    #{"station": 79, "hg_w_m2_k": h}
}
fn throat_thermal_station_80(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 80 * 0.01);
    #{"station": 80, "hg_w_m2_k": h}
}
fn throat_thermal_station_81(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 81 * 0.01);
    #{"station": 81, "hg_w_m2_k": h}
}
fn throat_thermal_station_82(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 82 * 0.01);
    #{"station": 82, "hg_w_m2_k": h}
}
fn throat_thermal_station_83(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 83 * 0.01);
    #{"station": 83, "hg_w_m2_k": h}
}
fn throat_thermal_station_84(mach) {
    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + 84 * 0.01);
    #{"station": 84, "hg_w_m2_k": h}
}
