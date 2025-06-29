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
fn gimbal_circle_waypoint_45(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 45 * 0.01);
    #{"wp": 45, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_46(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 46 * 0.01);
    #{"wp": 46, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_47(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 47 * 0.01);
    #{"wp": 47, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_48(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 48 * 0.01);
    #{"wp": 48, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_49(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 49 * 0.01);
    #{"wp": 49, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_50(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 50 * 0.01);
    #{"wp": 50, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_51(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 51 * 0.01);
    #{"wp": 51, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_52(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 52 * 0.01);
    #{"wp": 52, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_53(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 53 * 0.01);
    #{"wp": 53, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_54(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 54 * 0.01);
    #{"wp": 54, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_55(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 55 * 0.01);
    #{"wp": 55, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_56(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 56 * 0.01);
    #{"wp": 56, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_57(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 57 * 0.01);
    #{"wp": 57, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_58(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 58 * 0.01);
    #{"wp": 58, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_59(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 59 * 0.01);
    #{"wp": 59, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_60(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 60 * 0.01);
    #{"wp": 60, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_61(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 61 * 0.01);
    #{"wp": 61, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_62(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 62 * 0.01);
    #{"wp": 62, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_63(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 63 * 0.01);
    #{"wp": 63, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_64(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 64 * 0.01);
    #{"wp": 64, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_65(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 65 * 0.01);
    #{"wp": 65, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_66(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 66 * 0.01);
    #{"wp": 66, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_67(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 67 * 0.01);
    #{"wp": 67, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_68(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 68 * 0.01);
    #{"wp": 68, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_69(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 69 * 0.01);
    #{"wp": 69, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_70(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 70 * 0.01);
    #{"wp": 70, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_71(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 71 * 0.01);
    #{"wp": 71, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_72(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 72 * 0.01);
    #{"wp": 72, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_73(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 73 * 0.01);
    #{"wp": 73, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_74(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 74 * 0.01);
    #{"wp": 74, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_75(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 75 * 0.01);
    #{"wp": 75, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_76(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 76 * 0.01);
    #{"wp": 76, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_77(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 77 * 0.01);
    #{"wp": 77, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_78(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 78 * 0.01);
    #{"wp": 78, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_79(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 79 * 0.01);
    #{"wp": 79, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_80(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 80 * 0.01);
    #{"wp": 80, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_81(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 81 * 0.01);
    #{"wp": 81, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_82(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 82 * 0.01);
    #{"wp": 82, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_83(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 83 * 0.01);
    #{"wp": 83, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
fn gimbal_circle_waypoint_84(t_s) {
    let ang = t_s * 2.0 * 3.1415926535 * (0.5 + 84 * 0.01);
    #{"wp": 84, "pitch": 5.0 * ang.sin(), "yaw": 5.0 * ang.cos()}
}
