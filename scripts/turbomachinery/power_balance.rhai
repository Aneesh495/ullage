// Turbopump Shaft Power Matching and Gas Generator Flow Budget
// Part of the Ullage Cryogenic Test Executive Suite

fn turbopump_power_balance(power_ox_kw, power_fuel_kw, mech_loss_kw, turbine_power_kw) {
    let total_required = power_ox_kw + power_fuel_kw + mech_loss_kw;
    turbine_power_kw - total_required
}

fn verify_power_balance() {
    let bal = turbopump_power_balance(1500.0, 1000.0, 50.0, 2600.0);
    if (bal - 50.0).abs() > 1.0 { return false; }
    true
}
if verify_power_balance() { log_info("[TURBO::POWER_BALANCE] Verification passed."); }
fn power_balance_operating_point_1(p_ox) {
    let b = turbopump_power_balance(p_ox + 1 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 1, "power_residual_kw": b}
}
fn power_balance_operating_point_2(p_ox) {
    let b = turbopump_power_balance(p_ox + 2 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 2, "power_residual_kw": b}
}
fn power_balance_operating_point_3(p_ox) {
    let b = turbopump_power_balance(p_ox + 3 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 3, "power_residual_kw": b}
}
fn power_balance_operating_point_4(p_ox) {
    let b = turbopump_power_balance(p_ox + 4 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 4, "power_residual_kw": b}
}
fn power_balance_operating_point_5(p_ox) {
    let b = turbopump_power_balance(p_ox + 5 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 5, "power_residual_kw": b}
}
fn power_balance_operating_point_6(p_ox) {
    let b = turbopump_power_balance(p_ox + 6 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 6, "power_residual_kw": b}
}
fn power_balance_operating_point_7(p_ox) {
    let b = turbopump_power_balance(p_ox + 7 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 7, "power_residual_kw": b}
}
fn power_balance_operating_point_8(p_ox) {
    let b = turbopump_power_balance(p_ox + 8 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 8, "power_residual_kw": b}
}
fn power_balance_operating_point_9(p_ox) {
    let b = turbopump_power_balance(p_ox + 9 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 9, "power_residual_kw": b}
}
fn power_balance_operating_point_10(p_ox) {
    let b = turbopump_power_balance(p_ox + 10 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 10, "power_residual_kw": b}
}
fn power_balance_operating_point_11(p_ox) {
    let b = turbopump_power_balance(p_ox + 11 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 11, "power_residual_kw": b}
}
fn power_balance_operating_point_12(p_ox) {
    let b = turbopump_power_balance(p_ox + 12 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 12, "power_residual_kw": b}
}
fn power_balance_operating_point_13(p_ox) {
    let b = turbopump_power_balance(p_ox + 13 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 13, "power_residual_kw": b}
}
fn power_balance_operating_point_14(p_ox) {
    let b = turbopump_power_balance(p_ox + 14 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 14, "power_residual_kw": b}
}
fn power_balance_operating_point_15(p_ox) {
    let b = turbopump_power_balance(p_ox + 15 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 15, "power_residual_kw": b}
}
fn power_balance_operating_point_16(p_ox) {
    let b = turbopump_power_balance(p_ox + 16 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 16, "power_residual_kw": b}
}
fn power_balance_operating_point_17(p_ox) {
    let b = turbopump_power_balance(p_ox + 17 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 17, "power_residual_kw": b}
}
fn power_balance_operating_point_18(p_ox) {
    let b = turbopump_power_balance(p_ox + 18 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 18, "power_residual_kw": b}
}
fn power_balance_operating_point_19(p_ox) {
    let b = turbopump_power_balance(p_ox + 19 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 19, "power_residual_kw": b}
}
fn power_balance_operating_point_20(p_ox) {
    let b = turbopump_power_balance(p_ox + 20 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 20, "power_residual_kw": b}
}
fn power_balance_operating_point_21(p_ox) {
    let b = turbopump_power_balance(p_ox + 21 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 21, "power_residual_kw": b}
}
fn power_balance_operating_point_22(p_ox) {
    let b = turbopump_power_balance(p_ox + 22 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 22, "power_residual_kw": b}
}
fn power_balance_operating_point_23(p_ox) {
    let b = turbopump_power_balance(p_ox + 23 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 23, "power_residual_kw": b}
}
fn power_balance_operating_point_24(p_ox) {
    let b = turbopump_power_balance(p_ox + 24 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 24, "power_residual_kw": b}
}
fn power_balance_operating_point_25(p_ox) {
    let b = turbopump_power_balance(p_ox + 25 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 25, "power_residual_kw": b}
}
fn power_balance_operating_point_26(p_ox) {
    let b = turbopump_power_balance(p_ox + 26 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 26, "power_residual_kw": b}
}
fn power_balance_operating_point_27(p_ox) {
    let b = turbopump_power_balance(p_ox + 27 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 27, "power_residual_kw": b}
}
fn power_balance_operating_point_28(p_ox) {
    let b = turbopump_power_balance(p_ox + 28 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 28, "power_residual_kw": b}
}
fn power_balance_operating_point_29(p_ox) {
    let b = turbopump_power_balance(p_ox + 29 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 29, "power_residual_kw": b}
}
fn power_balance_operating_point_30(p_ox) {
    let b = turbopump_power_balance(p_ox + 30 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 30, "power_residual_kw": b}
}
fn power_balance_operating_point_31(p_ox) {
    let b = turbopump_power_balance(p_ox + 31 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 31, "power_residual_kw": b}
}
fn power_balance_operating_point_32(p_ox) {
    let b = turbopump_power_balance(p_ox + 32 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 32, "power_residual_kw": b}
}
fn power_balance_operating_point_33(p_ox) {
    let b = turbopump_power_balance(p_ox + 33 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 33, "power_residual_kw": b}
}
fn power_balance_operating_point_34(p_ox) {
    let b = turbopump_power_balance(p_ox + 34 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 34, "power_residual_kw": b}
}
fn power_balance_operating_point_35(p_ox) {
    let b = turbopump_power_balance(p_ox + 35 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 35, "power_residual_kw": b}
}
fn power_balance_operating_point_36(p_ox) {
    let b = turbopump_power_balance(p_ox + 36 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 36, "power_residual_kw": b}
}
fn power_balance_operating_point_37(p_ox) {
    let b = turbopump_power_balance(p_ox + 37 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 37, "power_residual_kw": b}
}
fn power_balance_operating_point_38(p_ox) {
    let b = turbopump_power_balance(p_ox + 38 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 38, "power_residual_kw": b}
}
fn power_balance_operating_point_39(p_ox) {
    let b = turbopump_power_balance(p_ox + 39 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 39, "power_residual_kw": b}
}
fn power_balance_operating_point_40(p_ox) {
    let b = turbopump_power_balance(p_ox + 40 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 40, "power_residual_kw": b}
}
fn power_balance_operating_point_41(p_ox) {
    let b = turbopump_power_balance(p_ox + 41 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 41, "power_residual_kw": b}
}
fn power_balance_operating_point_42(p_ox) {
    let b = turbopump_power_balance(p_ox + 42 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 42, "power_residual_kw": b}
}
fn power_balance_operating_point_43(p_ox) {
    let b = turbopump_power_balance(p_ox + 43 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 43, "power_residual_kw": b}
}
fn power_balance_operating_point_44(p_ox) {
    let b = turbopump_power_balance(p_ox + 44 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 44, "power_residual_kw": b}
}
fn power_balance_operating_point_45(p_ox) {
    let b = turbopump_power_balance(p_ox + 45 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 45, "power_residual_kw": b}
}
fn power_balance_operating_point_46(p_ox) {
    let b = turbopump_power_balance(p_ox + 46 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 46, "power_residual_kw": b}
}
fn power_balance_operating_point_47(p_ox) {
    let b = turbopump_power_balance(p_ox + 47 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 47, "power_residual_kw": b}
}
fn power_balance_operating_point_48(p_ox) {
    let b = turbopump_power_balance(p_ox + 48 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 48, "power_residual_kw": b}
}
fn power_balance_operating_point_49(p_ox) {
    let b = turbopump_power_balance(p_ox + 49 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 49, "power_residual_kw": b}
}
fn power_balance_operating_point_50(p_ox) {
    let b = turbopump_power_balance(p_ox + 50 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 50, "power_residual_kw": b}
}
fn power_balance_operating_point_51(p_ox) {
    let b = turbopump_power_balance(p_ox + 51 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 51, "power_residual_kw": b}
}
fn power_balance_operating_point_52(p_ox) {
    let b = turbopump_power_balance(p_ox + 52 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 52, "power_residual_kw": b}
}
fn power_balance_operating_point_53(p_ox) {
    let b = turbopump_power_balance(p_ox + 53 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 53, "power_residual_kw": b}
}
fn power_balance_operating_point_54(p_ox) {
    let b = turbopump_power_balance(p_ox + 54 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 54, "power_residual_kw": b}
}
fn power_balance_operating_point_55(p_ox) {
    let b = turbopump_power_balance(p_ox + 55 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 55, "power_residual_kw": b}
}
fn power_balance_operating_point_56(p_ox) {
    let b = turbopump_power_balance(p_ox + 56 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 56, "power_residual_kw": b}
}
fn power_balance_operating_point_57(p_ox) {
    let b = turbopump_power_balance(p_ox + 57 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 57, "power_residual_kw": b}
}
fn power_balance_operating_point_58(p_ox) {
    let b = turbopump_power_balance(p_ox + 58 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 58, "power_residual_kw": b}
}
fn power_balance_operating_point_59(p_ox) {
    let b = turbopump_power_balance(p_ox + 59 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 59, "power_residual_kw": b}
}
fn power_balance_operating_point_60(p_ox) {
    let b = turbopump_power_balance(p_ox + 60 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 60, "power_residual_kw": b}
}
fn power_balance_operating_point_61(p_ox) {
    let b = turbopump_power_balance(p_ox + 61 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 61, "power_residual_kw": b}
}
fn power_balance_operating_point_62(p_ox) {
    let b = turbopump_power_balance(p_ox + 62 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 62, "power_residual_kw": b}
}
fn power_balance_operating_point_63(p_ox) {
    let b = turbopump_power_balance(p_ox + 63 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 63, "power_residual_kw": b}
}
fn power_balance_operating_point_64(p_ox) {
    let b = turbopump_power_balance(p_ox + 64 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 64, "power_residual_kw": b}
}
fn power_balance_operating_point_65(p_ox) {
    let b = turbopump_power_balance(p_ox + 65 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 65, "power_residual_kw": b}
}
fn power_balance_operating_point_66(p_ox) {
    let b = turbopump_power_balance(p_ox + 66 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 66, "power_residual_kw": b}
}
fn power_balance_operating_point_67(p_ox) {
    let b = turbopump_power_balance(p_ox + 67 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 67, "power_residual_kw": b}
}
fn power_balance_operating_point_68(p_ox) {
    let b = turbopump_power_balance(p_ox + 68 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 68, "power_residual_kw": b}
}
fn power_balance_operating_point_69(p_ox) {
    let b = turbopump_power_balance(p_ox + 69 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 69, "power_residual_kw": b}
}
fn power_balance_operating_point_70(p_ox) {
    let b = turbopump_power_balance(p_ox + 70 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 70, "power_residual_kw": b}
}
fn power_balance_operating_point_71(p_ox) {
    let b = turbopump_power_balance(p_ox + 71 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 71, "power_residual_kw": b}
}
fn power_balance_operating_point_72(p_ox) {
    let b = turbopump_power_balance(p_ox + 72 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 72, "power_residual_kw": b}
}
fn power_balance_operating_point_73(p_ox) {
    let b = turbopump_power_balance(p_ox + 73 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 73, "power_residual_kw": b}
}
fn power_balance_operating_point_74(p_ox) {
    let b = turbopump_power_balance(p_ox + 74 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 74, "power_residual_kw": b}
}
fn power_balance_operating_point_75(p_ox) {
    let b = turbopump_power_balance(p_ox + 75 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 75, "power_residual_kw": b}
}
fn power_balance_operating_point_76(p_ox) {
    let b = turbopump_power_balance(p_ox + 76 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 76, "power_residual_kw": b}
}
fn power_balance_operating_point_77(p_ox) {
    let b = turbopump_power_balance(p_ox + 77 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 77, "power_residual_kw": b}
}
fn power_balance_operating_point_78(p_ox) {
    let b = turbopump_power_balance(p_ox + 78 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 78, "power_residual_kw": b}
}
fn power_balance_operating_point_79(p_ox) {
    let b = turbopump_power_balance(p_ox + 79 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 79, "power_residual_kw": b}
}
fn power_balance_operating_point_80(p_ox) {
    let b = turbopump_power_balance(p_ox + 80 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 80, "power_residual_kw": b}
}
fn power_balance_operating_point_81(p_ox) {
    let b = turbopump_power_balance(p_ox + 81 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 81, "power_residual_kw": b}
}
fn power_balance_operating_point_82(p_ox) {
    let b = turbopump_power_balance(p_ox + 82 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 82, "power_residual_kw": b}
}
fn power_balance_operating_point_83(p_ox) {
    let b = turbopump_power_balance(p_ox + 83 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 83, "power_residual_kw": b}
}
fn power_balance_operating_point_84(p_ox) {
    let b = turbopump_power_balance(p_ox + 84 * 10.0, 1000.0, 50.0, 2600.0);
    #{"pt": 84, "power_residual_kw": b}
}
