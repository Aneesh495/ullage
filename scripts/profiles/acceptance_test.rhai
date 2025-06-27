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
