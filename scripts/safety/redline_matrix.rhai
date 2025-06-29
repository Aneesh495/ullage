// Dynamic Flight-Envelope-Dependent Redline Matrix
// Real-time parameter boundaries adjusted for ignition, steady-state, and throttling

fn get_envelope_redlines(phase_name, throttle_pct) {
    let frac = throttle_pct / 100.0;
    if phase_name == "IGNITION" {
        return #{
            "pc_min_bar": 5.0,
            "pc_max_bar": 95.0,
            "turb_temp_max_k": 1050.0,
            "vib_rms_g_max": 45.0,
            "debounce_samples": 2
        };
    } else if phase_name == "STEADY_STATE" {
        let nom_pc = 80.0 * frac;
        return #{
            "pc_min_bar": nom_pc * 0.85,
            "pc_max_bar": nom_pc * 1.15,
            "turb_temp_max_k": 920.0,
            "vib_rms_g_max": 28.0,
            "debounce_samples": 3
        };
    }
    // Default fallback limits
    #{ "pc_min_bar": 0.0, "pc_max_bar": 110.0, "turb_temp_max_k": 1100.0, "vib_rms_g_max": 50.0, "debounce_samples": 1 }
}

fn verify_redline_matrix() {
    let lim = get_envelope_redlines("STEADY_STATE", 100.0);
    if lim.pc_min_bar < 60.0 || lim.pc_max_bar > 100.0 { return false; }
    true
}
if verify_redline_matrix() { log_info("[SAFETY::REDLINE_MATRIX] Verification passed."); }
fn adaptive_boundary_channel_1(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 1, "pc_limit": r.pc_max_bar + 1 * 0.1}
}
fn adaptive_boundary_channel_2(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 2, "pc_limit": r.pc_max_bar + 2 * 0.1}
}
fn adaptive_boundary_channel_3(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 3, "pc_limit": r.pc_max_bar + 3 * 0.1}
}
fn adaptive_boundary_channel_4(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 4, "pc_limit": r.pc_max_bar + 4 * 0.1}
}
fn adaptive_boundary_channel_5(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 5, "pc_limit": r.pc_max_bar + 5 * 0.1}
}
fn adaptive_boundary_channel_6(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 6, "pc_limit": r.pc_max_bar + 6 * 0.1}
}
fn adaptive_boundary_channel_7(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 7, "pc_limit": r.pc_max_bar + 7 * 0.1}
}
fn adaptive_boundary_channel_8(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 8, "pc_limit": r.pc_max_bar + 8 * 0.1}
}
fn adaptive_boundary_channel_9(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 9, "pc_limit": r.pc_max_bar + 9 * 0.1}
}
fn adaptive_boundary_channel_10(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 10, "pc_limit": r.pc_max_bar + 10 * 0.1}
}
fn adaptive_boundary_channel_11(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 11, "pc_limit": r.pc_max_bar + 11 * 0.1}
}
fn adaptive_boundary_channel_12(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 12, "pc_limit": r.pc_max_bar + 12 * 0.1}
}
fn adaptive_boundary_channel_13(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 13, "pc_limit": r.pc_max_bar + 13 * 0.1}
}
fn adaptive_boundary_channel_14(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 14, "pc_limit": r.pc_max_bar + 14 * 0.1}
}
fn adaptive_boundary_channel_15(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 15, "pc_limit": r.pc_max_bar + 15 * 0.1}
}
fn adaptive_boundary_channel_16(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 16, "pc_limit": r.pc_max_bar + 16 * 0.1}
}
fn adaptive_boundary_channel_17(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 17, "pc_limit": r.pc_max_bar + 17 * 0.1}
}
fn adaptive_boundary_channel_18(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 18, "pc_limit": r.pc_max_bar + 18 * 0.1}
}
fn adaptive_boundary_channel_19(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 19, "pc_limit": r.pc_max_bar + 19 * 0.1}
}
fn adaptive_boundary_channel_20(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 20, "pc_limit": r.pc_max_bar + 20 * 0.1}
}
fn adaptive_boundary_channel_21(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 21, "pc_limit": r.pc_max_bar + 21 * 0.1}
}
fn adaptive_boundary_channel_22(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 22, "pc_limit": r.pc_max_bar + 22 * 0.1}
}
fn adaptive_boundary_channel_23(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 23, "pc_limit": r.pc_max_bar + 23 * 0.1}
}
fn adaptive_boundary_channel_24(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 24, "pc_limit": r.pc_max_bar + 24 * 0.1}
}
fn adaptive_boundary_channel_25(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 25, "pc_limit": r.pc_max_bar + 25 * 0.1}
}
fn adaptive_boundary_channel_26(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 26, "pc_limit": r.pc_max_bar + 26 * 0.1}
}
fn adaptive_boundary_channel_27(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 27, "pc_limit": r.pc_max_bar + 27 * 0.1}
}
fn adaptive_boundary_channel_28(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 28, "pc_limit": r.pc_max_bar + 28 * 0.1}
}
fn adaptive_boundary_channel_29(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 29, "pc_limit": r.pc_max_bar + 29 * 0.1}
}
fn adaptive_boundary_channel_30(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 30, "pc_limit": r.pc_max_bar + 30 * 0.1}
}
fn adaptive_boundary_channel_31(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 31, "pc_limit": r.pc_max_bar + 31 * 0.1}
}
fn adaptive_boundary_channel_32(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 32, "pc_limit": r.pc_max_bar + 32 * 0.1}
}
fn adaptive_boundary_channel_33(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 33, "pc_limit": r.pc_max_bar + 33 * 0.1}
}
fn adaptive_boundary_channel_34(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 34, "pc_limit": r.pc_max_bar + 34 * 0.1}
}
fn adaptive_boundary_channel_35(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 35, "pc_limit": r.pc_max_bar + 35 * 0.1}
}
fn adaptive_boundary_channel_36(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 36, "pc_limit": r.pc_max_bar + 36 * 0.1}
}
fn adaptive_boundary_channel_37(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 37, "pc_limit": r.pc_max_bar + 37 * 0.1}
}
fn adaptive_boundary_channel_38(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 38, "pc_limit": r.pc_max_bar + 38 * 0.1}
}
fn adaptive_boundary_channel_39(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 39, "pc_limit": r.pc_max_bar + 39 * 0.1}
}
fn adaptive_boundary_channel_40(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 40, "pc_limit": r.pc_max_bar + 40 * 0.1}
}
fn adaptive_boundary_channel_41(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 41, "pc_limit": r.pc_max_bar + 41 * 0.1}
}
fn adaptive_boundary_channel_42(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 42, "pc_limit": r.pc_max_bar + 42 * 0.1}
}
fn adaptive_boundary_channel_43(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 43, "pc_limit": r.pc_max_bar + 43 * 0.1}
}
fn adaptive_boundary_channel_44(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 44, "pc_limit": r.pc_max_bar + 44 * 0.1}
}
fn adaptive_boundary_channel_45(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 45, "pc_limit": r.pc_max_bar + 45 * 0.1}
}
fn adaptive_boundary_channel_46(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 46, "pc_limit": r.pc_max_bar + 46 * 0.1}
}
fn adaptive_boundary_channel_47(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 47, "pc_limit": r.pc_max_bar + 47 * 0.1}
}
fn adaptive_boundary_channel_48(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 48, "pc_limit": r.pc_max_bar + 48 * 0.1}
}
fn adaptive_boundary_channel_49(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 49, "pc_limit": r.pc_max_bar + 49 * 0.1}
}
fn adaptive_boundary_channel_50(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 50, "pc_limit": r.pc_max_bar + 50 * 0.1}
}
fn adaptive_boundary_channel_51(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 51, "pc_limit": r.pc_max_bar + 51 * 0.1}
}
fn adaptive_boundary_channel_52(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 52, "pc_limit": r.pc_max_bar + 52 * 0.1}
}
fn adaptive_boundary_channel_53(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 53, "pc_limit": r.pc_max_bar + 53 * 0.1}
}
fn adaptive_boundary_channel_54(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 54, "pc_limit": r.pc_max_bar + 54 * 0.1}
}
fn adaptive_boundary_channel_55(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 55, "pc_limit": r.pc_max_bar + 55 * 0.1}
}
fn adaptive_boundary_channel_56(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 56, "pc_limit": r.pc_max_bar + 56 * 0.1}
}
fn adaptive_boundary_channel_57(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 57, "pc_limit": r.pc_max_bar + 57 * 0.1}
}
fn adaptive_boundary_channel_58(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 58, "pc_limit": r.pc_max_bar + 58 * 0.1}
}
fn adaptive_boundary_channel_59(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 59, "pc_limit": r.pc_max_bar + 59 * 0.1}
}
fn adaptive_boundary_channel_60(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 60, "pc_limit": r.pc_max_bar + 60 * 0.1}
}
fn adaptive_boundary_channel_61(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 61, "pc_limit": r.pc_max_bar + 61 * 0.1}
}
fn adaptive_boundary_channel_62(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 62, "pc_limit": r.pc_max_bar + 62 * 0.1}
}
fn adaptive_boundary_channel_63(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 63, "pc_limit": r.pc_max_bar + 63 * 0.1}
}
fn adaptive_boundary_channel_64(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 64, "pc_limit": r.pc_max_bar + 64 * 0.1}
}
fn adaptive_boundary_channel_65(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 65, "pc_limit": r.pc_max_bar + 65 * 0.1}
}
fn adaptive_boundary_channel_66(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 66, "pc_limit": r.pc_max_bar + 66 * 0.1}
}
fn adaptive_boundary_channel_67(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 67, "pc_limit": r.pc_max_bar + 67 * 0.1}
}
fn adaptive_boundary_channel_68(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 68, "pc_limit": r.pc_max_bar + 68 * 0.1}
}
fn adaptive_boundary_channel_69(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 69, "pc_limit": r.pc_max_bar + 69 * 0.1}
}
fn adaptive_boundary_channel_70(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 70, "pc_limit": r.pc_max_bar + 70 * 0.1}
}
fn adaptive_boundary_channel_71(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 71, "pc_limit": r.pc_max_bar + 71 * 0.1}
}
fn adaptive_boundary_channel_72(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 72, "pc_limit": r.pc_max_bar + 72 * 0.1}
}
fn adaptive_boundary_channel_73(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 73, "pc_limit": r.pc_max_bar + 73 * 0.1}
}
fn adaptive_boundary_channel_74(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 74, "pc_limit": r.pc_max_bar + 74 * 0.1}
}
fn adaptive_boundary_channel_75(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 75, "pc_limit": r.pc_max_bar + 75 * 0.1}
}
fn adaptive_boundary_channel_76(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 76, "pc_limit": r.pc_max_bar + 76 * 0.1}
}
fn adaptive_boundary_channel_77(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 77, "pc_limit": r.pc_max_bar + 77 * 0.1}
}
fn adaptive_boundary_channel_78(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 78, "pc_limit": r.pc_max_bar + 78 * 0.1}
}
fn adaptive_boundary_channel_79(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 79, "pc_limit": r.pc_max_bar + 79 * 0.1}
}
fn adaptive_boundary_channel_80(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 80, "pc_limit": r.pc_max_bar + 80 * 0.1}
}
fn adaptive_boundary_channel_81(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 81, "pc_limit": r.pc_max_bar + 81 * 0.1}
}
fn adaptive_boundary_channel_82(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 82, "pc_limit": r.pc_max_bar + 82 * 0.1}
}
fn adaptive_boundary_channel_83(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 83, "pc_limit": r.pc_max_bar + 83 * 0.1}
}
fn adaptive_boundary_channel_84(phase, throttle) {
    let r = get_envelope_redlines(phase, throttle);
    #{"channel": 84, "pc_limit": r.pc_max_bar + 84 * 0.1}
}
