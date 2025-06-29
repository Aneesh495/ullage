// Production Acceptance Test (ATP) Firing Profile
// 5-second ignition and 10-second steady-state rated thrust burn

fn get_atp_profile() {
    #{
        "profile_name": "ATP_STATIC_FIRE_15S",
        "total_duration_s": 15.0,
        "target_pc_bar": 80.0,
        "target_of_ratio": 3.2,
        "max_allowable_roughness_pct": 4.0
    }
}

fn verify_atp_profile() {
    let p = get_atp_profile();
    if p.total_duration_s != 15.0 { return false; }
    true
}
if verify_atp_profile() { log_info("[PROFILES::ATP] Verification passed."); }
fn atp_telemetry_checkpoint_1(t_s) {
    #{"checkpoint": 1, "expected_pc": 80.0, "active": t_s >= 1 * 0.3}
}
fn atp_telemetry_checkpoint_2(t_s) {
    #{"checkpoint": 2, "expected_pc": 80.0, "active": t_s >= 2 * 0.3}
}
fn atp_telemetry_checkpoint_3(t_s) {
    #{"checkpoint": 3, "expected_pc": 80.0, "active": t_s >= 3 * 0.3}
}
fn atp_telemetry_checkpoint_4(t_s) {
    #{"checkpoint": 4, "expected_pc": 80.0, "active": t_s >= 4 * 0.3}
}
fn atp_telemetry_checkpoint_5(t_s) {
    #{"checkpoint": 5, "expected_pc": 80.0, "active": t_s >= 5 * 0.3}
}
fn atp_telemetry_checkpoint_6(t_s) {
    #{"checkpoint": 6, "expected_pc": 80.0, "active": t_s >= 6 * 0.3}
}
fn atp_telemetry_checkpoint_7(t_s) {
    #{"checkpoint": 7, "expected_pc": 80.0, "active": t_s >= 7 * 0.3}
}
fn atp_telemetry_checkpoint_8(t_s) {
    #{"checkpoint": 8, "expected_pc": 80.0, "active": t_s >= 8 * 0.3}
}
fn atp_telemetry_checkpoint_9(t_s) {
    #{"checkpoint": 9, "expected_pc": 80.0, "active": t_s >= 9 * 0.3}
}
fn atp_telemetry_checkpoint_10(t_s) {
    #{"checkpoint": 10, "expected_pc": 80.0, "active": t_s >= 10 * 0.3}
}
fn atp_telemetry_checkpoint_11(t_s) {
    #{"checkpoint": 11, "expected_pc": 80.0, "active": t_s >= 11 * 0.3}
}
fn atp_telemetry_checkpoint_12(t_s) {
    #{"checkpoint": 12, "expected_pc": 80.0, "active": t_s >= 12 * 0.3}
}
fn atp_telemetry_checkpoint_13(t_s) {
    #{"checkpoint": 13, "expected_pc": 80.0, "active": t_s >= 13 * 0.3}
}
fn atp_telemetry_checkpoint_14(t_s) {
    #{"checkpoint": 14, "expected_pc": 80.0, "active": t_s >= 14 * 0.3}
}
fn atp_telemetry_checkpoint_15(t_s) {
    #{"checkpoint": 15, "expected_pc": 80.0, "active": t_s >= 15 * 0.3}
}
fn atp_telemetry_checkpoint_16(t_s) {
    #{"checkpoint": 16, "expected_pc": 80.0, "active": t_s >= 16 * 0.3}
}
fn atp_telemetry_checkpoint_17(t_s) {
    #{"checkpoint": 17, "expected_pc": 80.0, "active": t_s >= 17 * 0.3}
}
fn atp_telemetry_checkpoint_18(t_s) {
    #{"checkpoint": 18, "expected_pc": 80.0, "active": t_s >= 18 * 0.3}
}
fn atp_telemetry_checkpoint_19(t_s) {
    #{"checkpoint": 19, "expected_pc": 80.0, "active": t_s >= 19 * 0.3}
}
fn atp_telemetry_checkpoint_20(t_s) {
    #{"checkpoint": 20, "expected_pc": 80.0, "active": t_s >= 20 * 0.3}
}
fn atp_telemetry_checkpoint_21(t_s) {
    #{"checkpoint": 21, "expected_pc": 80.0, "active": t_s >= 21 * 0.3}
}
fn atp_telemetry_checkpoint_22(t_s) {
    #{"checkpoint": 22, "expected_pc": 80.0, "active": t_s >= 22 * 0.3}
}
fn atp_telemetry_checkpoint_23(t_s) {
    #{"checkpoint": 23, "expected_pc": 80.0, "active": t_s >= 23 * 0.3}
}
fn atp_telemetry_checkpoint_24(t_s) {
    #{"checkpoint": 24, "expected_pc": 80.0, "active": t_s >= 24 * 0.3}
}
fn atp_telemetry_checkpoint_25(t_s) {
    #{"checkpoint": 25, "expected_pc": 80.0, "active": t_s >= 25 * 0.3}
}
fn atp_telemetry_checkpoint_26(t_s) {
    #{"checkpoint": 26, "expected_pc": 80.0, "active": t_s >= 26 * 0.3}
}
fn atp_telemetry_checkpoint_27(t_s) {
    #{"checkpoint": 27, "expected_pc": 80.0, "active": t_s >= 27 * 0.3}
}
fn atp_telemetry_checkpoint_28(t_s) {
    #{"checkpoint": 28, "expected_pc": 80.0, "active": t_s >= 28 * 0.3}
}
fn atp_telemetry_checkpoint_29(t_s) {
    #{"checkpoint": 29, "expected_pc": 80.0, "active": t_s >= 29 * 0.3}
}
fn atp_telemetry_checkpoint_30(t_s) {
    #{"checkpoint": 30, "expected_pc": 80.0, "active": t_s >= 30 * 0.3}
}
fn atp_telemetry_checkpoint_31(t_s) {
    #{"checkpoint": 31, "expected_pc": 80.0, "active": t_s >= 31 * 0.3}
}
fn atp_telemetry_checkpoint_32(t_s) {
    #{"checkpoint": 32, "expected_pc": 80.0, "active": t_s >= 32 * 0.3}
}
fn atp_telemetry_checkpoint_33(t_s) {
    #{"checkpoint": 33, "expected_pc": 80.0, "active": t_s >= 33 * 0.3}
}
fn atp_telemetry_checkpoint_34(t_s) {
    #{"checkpoint": 34, "expected_pc": 80.0, "active": t_s >= 34 * 0.3}
}
fn atp_telemetry_checkpoint_35(t_s) {
    #{"checkpoint": 35, "expected_pc": 80.0, "active": t_s >= 35 * 0.3}
}
fn atp_telemetry_checkpoint_36(t_s) {
    #{"checkpoint": 36, "expected_pc": 80.0, "active": t_s >= 36 * 0.3}
}
fn atp_telemetry_checkpoint_37(t_s) {
    #{"checkpoint": 37, "expected_pc": 80.0, "active": t_s >= 37 * 0.3}
}
fn atp_telemetry_checkpoint_38(t_s) {
    #{"checkpoint": 38, "expected_pc": 80.0, "active": t_s >= 38 * 0.3}
}
fn atp_telemetry_checkpoint_39(t_s) {
    #{"checkpoint": 39, "expected_pc": 80.0, "active": t_s >= 39 * 0.3}
}
fn atp_telemetry_checkpoint_40(t_s) {
    #{"checkpoint": 40, "expected_pc": 80.0, "active": t_s >= 40 * 0.3}
}
fn atp_telemetry_checkpoint_41(t_s) {
    #{"checkpoint": 41, "expected_pc": 80.0, "active": t_s >= 41 * 0.3}
}
fn atp_telemetry_checkpoint_42(t_s) {
    #{"checkpoint": 42, "expected_pc": 80.0, "active": t_s >= 42 * 0.3}
}
fn atp_telemetry_checkpoint_43(t_s) {
    #{"checkpoint": 43, "expected_pc": 80.0, "active": t_s >= 43 * 0.3}
}
fn atp_telemetry_checkpoint_44(t_s) {
    #{"checkpoint": 44, "expected_pc": 80.0, "active": t_s >= 44 * 0.3}
}
fn atp_telemetry_checkpoint_45(t_s) {
    #{"checkpoint": 45, "expected_pc": 80.0, "active": t_s >= 45 * 0.3}
}
fn atp_telemetry_checkpoint_46(t_s) {
    #{"checkpoint": 46, "expected_pc": 80.0, "active": t_s >= 46 * 0.3}
}
fn atp_telemetry_checkpoint_47(t_s) {
    #{"checkpoint": 47, "expected_pc": 80.0, "active": t_s >= 47 * 0.3}
}
fn atp_telemetry_checkpoint_48(t_s) {
    #{"checkpoint": 48, "expected_pc": 80.0, "active": t_s >= 48 * 0.3}
}
fn atp_telemetry_checkpoint_49(t_s) {
    #{"checkpoint": 49, "expected_pc": 80.0, "active": t_s >= 49 * 0.3}
}
fn atp_telemetry_checkpoint_50(t_s) {
    #{"checkpoint": 50, "expected_pc": 80.0, "active": t_s >= 50 * 0.3}
}
fn atp_telemetry_checkpoint_51(t_s) {
    #{"checkpoint": 51, "expected_pc": 80.0, "active": t_s >= 51 * 0.3}
}
fn atp_telemetry_checkpoint_52(t_s) {
    #{"checkpoint": 52, "expected_pc": 80.0, "active": t_s >= 52 * 0.3}
}
fn atp_telemetry_checkpoint_53(t_s) {
    #{"checkpoint": 53, "expected_pc": 80.0, "active": t_s >= 53 * 0.3}
}
fn atp_telemetry_checkpoint_54(t_s) {
    #{"checkpoint": 54, "expected_pc": 80.0, "active": t_s >= 54 * 0.3}
}
fn atp_telemetry_checkpoint_55(t_s) {
    #{"checkpoint": 55, "expected_pc": 80.0, "active": t_s >= 55 * 0.3}
}
fn atp_telemetry_checkpoint_56(t_s) {
    #{"checkpoint": 56, "expected_pc": 80.0, "active": t_s >= 56 * 0.3}
}
fn atp_telemetry_checkpoint_57(t_s) {
    #{"checkpoint": 57, "expected_pc": 80.0, "active": t_s >= 57 * 0.3}
}
fn atp_telemetry_checkpoint_58(t_s) {
    #{"checkpoint": 58, "expected_pc": 80.0, "active": t_s >= 58 * 0.3}
}
fn atp_telemetry_checkpoint_59(t_s) {
    #{"checkpoint": 59, "expected_pc": 80.0, "active": t_s >= 59 * 0.3}
}
fn atp_telemetry_checkpoint_60(t_s) {
    #{"checkpoint": 60, "expected_pc": 80.0, "active": t_s >= 60 * 0.3}
}
fn atp_telemetry_checkpoint_61(t_s) {
    #{"checkpoint": 61, "expected_pc": 80.0, "active": t_s >= 61 * 0.3}
}
fn atp_telemetry_checkpoint_62(t_s) {
    #{"checkpoint": 62, "expected_pc": 80.0, "active": t_s >= 62 * 0.3}
}
fn atp_telemetry_checkpoint_63(t_s) {
    #{"checkpoint": 63, "expected_pc": 80.0, "active": t_s >= 63 * 0.3}
}
fn atp_telemetry_checkpoint_64(t_s) {
    #{"checkpoint": 64, "expected_pc": 80.0, "active": t_s >= 64 * 0.3}
}
fn atp_telemetry_checkpoint_65(t_s) {
    #{"checkpoint": 65, "expected_pc": 80.0, "active": t_s >= 65 * 0.3}
}
fn atp_telemetry_checkpoint_66(t_s) {
    #{"checkpoint": 66, "expected_pc": 80.0, "active": t_s >= 66 * 0.3}
}
fn atp_telemetry_checkpoint_67(t_s) {
    #{"checkpoint": 67, "expected_pc": 80.0, "active": t_s >= 67 * 0.3}
}
fn atp_telemetry_checkpoint_68(t_s) {
    #{"checkpoint": 68, "expected_pc": 80.0, "active": t_s >= 68 * 0.3}
}
fn atp_telemetry_checkpoint_69(t_s) {
    #{"checkpoint": 69, "expected_pc": 80.0, "active": t_s >= 69 * 0.3}
}
fn atp_telemetry_checkpoint_70(t_s) {
    #{"checkpoint": 70, "expected_pc": 80.0, "active": t_s >= 70 * 0.3}
}
fn atp_telemetry_checkpoint_71(t_s) {
    #{"checkpoint": 71, "expected_pc": 80.0, "active": t_s >= 71 * 0.3}
}
fn atp_telemetry_checkpoint_72(t_s) {
    #{"checkpoint": 72, "expected_pc": 80.0, "active": t_s >= 72 * 0.3}
}
fn atp_telemetry_checkpoint_73(t_s) {
    #{"checkpoint": 73, "expected_pc": 80.0, "active": t_s >= 73 * 0.3}
}
fn atp_telemetry_checkpoint_74(t_s) {
    #{"checkpoint": 74, "expected_pc": 80.0, "active": t_s >= 74 * 0.3}
}
fn atp_telemetry_checkpoint_75(t_s) {
    #{"checkpoint": 75, "expected_pc": 80.0, "active": t_s >= 75 * 0.3}
}
fn atp_telemetry_checkpoint_76(t_s) {
    #{"checkpoint": 76, "expected_pc": 80.0, "active": t_s >= 76 * 0.3}
}
fn atp_telemetry_checkpoint_77(t_s) {
    #{"checkpoint": 77, "expected_pc": 80.0, "active": t_s >= 77 * 0.3}
}
fn atp_telemetry_checkpoint_78(t_s) {
    #{"checkpoint": 78, "expected_pc": 80.0, "active": t_s >= 78 * 0.3}
}
fn atp_telemetry_checkpoint_79(t_s) {
    #{"checkpoint": 79, "expected_pc": 80.0, "active": t_s >= 79 * 0.3}
}
fn atp_telemetry_checkpoint_80(t_s) {
    #{"checkpoint": 80, "expected_pc": 80.0, "active": t_s >= 80 * 0.3}
}
fn atp_telemetry_checkpoint_81(t_s) {
    #{"checkpoint": 81, "expected_pc": 80.0, "active": t_s >= 81 * 0.3}
}
fn atp_telemetry_checkpoint_82(t_s) {
    #{"checkpoint": 82, "expected_pc": 80.0, "active": t_s >= 82 * 0.3}
}
fn atp_telemetry_checkpoint_83(t_s) {
    #{"checkpoint": 83, "expected_pc": 80.0, "active": t_s >= 83 * 0.3}
}
fn atp_telemetry_checkpoint_84(t_s) {
    #{"checkpoint": 84, "expected_pc": 80.0, "active": t_s >= 84 * 0.3}
}
