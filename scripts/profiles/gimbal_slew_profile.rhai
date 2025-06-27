// Thrust Vector Control Dynamic Gimbal Slew Test
// Part of the Ullage Cryogenic Test Executive Suite

fn get_gimbal_slew_pattern() {
    #{ "pitch_max_deg": 6.0, "yaw_max_deg": 6.0, "slew_rate_deg_s": 15.0 }
}

fn verify_gimbal_slew() {
    let g = get_gimbal_slew_pattern();
    if g.pitch_max_deg != 6.0 { return false; }
    true
}
if verify_gimbal_slew() { log_info("[PROFILES::GIMBAL_SLEW] Verification passed."); }
fn gimbal_circle_waypoint_1(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 1 * 0.01);
    #{"wp": 1, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_2(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 2 * 0.01);
    #{"wp": 2, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_3(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 3 * 0.01);
    #{"wp": 3, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_4(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 4 * 0.01);
    #{"wp": 4, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_5(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 5 * 0.01);
    #{"wp": 5, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_6(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 6 * 0.01);
    #{"wp": 6, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_7(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 7 * 0.01);
    #{"wp": 7, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_8(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 8 * 0.01);
    #{"wp": 8, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_9(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 9 * 0.01);
    #{"wp": 9, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_10(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 10 * 0.01);
    #{"wp": 10, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_11(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 11 * 0.01);
    #{"wp": 11, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_12(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 12 * 0.01);
    #{"wp": 12, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_13(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 13 * 0.01);
    #{"wp": 13, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_14(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 14 * 0.01);
    #{"wp": 14, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_15(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 15 * 0.01);
    #{"wp": 15, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_16(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 16 * 0.01);
    #{"wp": 16, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_17(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 17 * 0.01);
    #{"wp": 17, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_18(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 18 * 0.01);
    #{"wp": 18, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_19(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 19 * 0.01);
    #{"wp": 19, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_20(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 20 * 0.01);
    #{"wp": 20, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_21(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 21 * 0.01);
    #{"wp": 21, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_22(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 22 * 0.01);
    #{"wp": 22, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_23(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 23 * 0.01);
    #{"wp": 23, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_24(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 24 * 0.01);
    #{"wp": 24, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_25(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 25 * 0.01);
    #{"wp": 25, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_26(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 26 * 0.01);
    #{"wp": 26, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_27(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 27 * 0.01);
    #{"wp": 27, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_28(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 28 * 0.01);
    #{"wp": 28, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_29(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 29 * 0.01);
    #{"wp": 29, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_30(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 30 * 0.01);
    #{"wp": 30, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_31(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 31 * 0.01);
    #{"wp": 31, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_32(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 32 * 0.01);
    #{"wp": 32, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_33(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 33 * 0.01);
    #{"wp": 33, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_34(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 34 * 0.01);
    #{"wp": 34, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_35(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 35 * 0.01);
    #{"wp": 35, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_36(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 36 * 0.01);
    #{"wp": 36, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_37(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 37 * 0.01);
    #{"wp": 37, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_38(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 38 * 0.01);
    #{"wp": 38, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_39(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 39 * 0.01);
    #{"wp": 39, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_40(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 40 * 0.01);
    #{"wp": 40, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_41(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 41 * 0.01);
    #{"wp": 41, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_42(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 42 * 0.01);
    #{"wp": 42, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_43(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 43 * 0.01);
    #{"wp": 43, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_44(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 44 * 0.01);
    #{"wp": 44, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
