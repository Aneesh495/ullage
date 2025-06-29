// Valve Seat Seal Pressure Decay and Leakage Qualification
// ASME / MSS-SP cryogenic seat leak rate verification

fn leak_rate_sccm(test_vol_cc, p_start_bar, p_end_bar, time_sec) {
    let delta_p_atm = (p_start_bar - p_end_bar) / 1.01325;
    if time_sec <= 0.0 { return 0.0; }
    (test_vol_cc * delta_p_atm * 60.0) / time_sec
}

fn verify_seal_decay() {
    let leak = leak_rate_sccm(1000.0, 30.0, 29.98, 60.0);
    if leak <= 0.0 { return false; }
    true
}
if verify_seal_decay() { log_info("[VALVES::SEAL_DECAY] Verification passed."); }
fn seal_decay_channel_1(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 1 * 0.001, time_s);
    #{"ch": 1, "leak_sccm": q}
}
fn seal_decay_channel_2(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 2 * 0.001, time_s);
    #{"ch": 2, "leak_sccm": q}
}
fn seal_decay_channel_3(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 3 * 0.001, time_s);
    #{"ch": 3, "leak_sccm": q}
}
fn seal_decay_channel_4(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 4 * 0.001, time_s);
    #{"ch": 4, "leak_sccm": q}
}
fn seal_decay_channel_5(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 5 * 0.001, time_s);
    #{"ch": 5, "leak_sccm": q}
}
fn seal_decay_channel_6(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 6 * 0.001, time_s);
    #{"ch": 6, "leak_sccm": q}
}
fn seal_decay_channel_7(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 7 * 0.001, time_s);
    #{"ch": 7, "leak_sccm": q}
}
fn seal_decay_channel_8(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 8 * 0.001, time_s);
    #{"ch": 8, "leak_sccm": q}
}
fn seal_decay_channel_9(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 9 * 0.001, time_s);
    #{"ch": 9, "leak_sccm": q}
}
fn seal_decay_channel_10(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 10 * 0.001, time_s);
    #{"ch": 10, "leak_sccm": q}
}
fn seal_decay_channel_11(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 11 * 0.001, time_s);
    #{"ch": 11, "leak_sccm": q}
}
fn seal_decay_channel_12(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 12 * 0.001, time_s);
    #{"ch": 12, "leak_sccm": q}
}
fn seal_decay_channel_13(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 13 * 0.001, time_s);
    #{"ch": 13, "leak_sccm": q}
}
fn seal_decay_channel_14(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 14 * 0.001, time_s);
    #{"ch": 14, "leak_sccm": q}
}
fn seal_decay_channel_15(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 15 * 0.001, time_s);
    #{"ch": 15, "leak_sccm": q}
}
fn seal_decay_channel_16(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 16 * 0.001, time_s);
    #{"ch": 16, "leak_sccm": q}
}
fn seal_decay_channel_17(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 17 * 0.001, time_s);
    #{"ch": 17, "leak_sccm": q}
}
fn seal_decay_channel_18(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 18 * 0.001, time_s);
    #{"ch": 18, "leak_sccm": q}
}
fn seal_decay_channel_19(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 19 * 0.001, time_s);
    #{"ch": 19, "leak_sccm": q}
}
fn seal_decay_channel_20(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 20 * 0.001, time_s);
    #{"ch": 20, "leak_sccm": q}
}
fn seal_decay_channel_21(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 21 * 0.001, time_s);
    #{"ch": 21, "leak_sccm": q}
}
fn seal_decay_channel_22(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 22 * 0.001, time_s);
    #{"ch": 22, "leak_sccm": q}
}
fn seal_decay_channel_23(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 23 * 0.001, time_s);
    #{"ch": 23, "leak_sccm": q}
}
fn seal_decay_channel_24(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 24 * 0.001, time_s);
    #{"ch": 24, "leak_sccm": q}
}
fn seal_decay_channel_25(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 25 * 0.001, time_s);
    #{"ch": 25, "leak_sccm": q}
}
fn seal_decay_channel_26(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 26 * 0.001, time_s);
    #{"ch": 26, "leak_sccm": q}
}
fn seal_decay_channel_27(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 27 * 0.001, time_s);
    #{"ch": 27, "leak_sccm": q}
}
fn seal_decay_channel_28(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 28 * 0.001, time_s);
    #{"ch": 28, "leak_sccm": q}
}
fn seal_decay_channel_29(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 29 * 0.001, time_s);
    #{"ch": 29, "leak_sccm": q}
}
fn seal_decay_channel_30(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 30 * 0.001, time_s);
    #{"ch": 30, "leak_sccm": q}
}
fn seal_decay_channel_31(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 31 * 0.001, time_s);
    #{"ch": 31, "leak_sccm": q}
}
fn seal_decay_channel_32(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 32 * 0.001, time_s);
    #{"ch": 32, "leak_sccm": q}
}
fn seal_decay_channel_33(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 33 * 0.001, time_s);
    #{"ch": 33, "leak_sccm": q}
}
fn seal_decay_channel_34(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 34 * 0.001, time_s);
    #{"ch": 34, "leak_sccm": q}
}
fn seal_decay_channel_35(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 35 * 0.001, time_s);
    #{"ch": 35, "leak_sccm": q}
}
fn seal_decay_channel_36(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 36 * 0.001, time_s);
    #{"ch": 36, "leak_sccm": q}
}
fn seal_decay_channel_37(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 37 * 0.001, time_s);
    #{"ch": 37, "leak_sccm": q}
}
fn seal_decay_channel_38(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 38 * 0.001, time_s);
    #{"ch": 38, "leak_sccm": q}
}
fn seal_decay_channel_39(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 39 * 0.001, time_s);
    #{"ch": 39, "leak_sccm": q}
}
fn seal_decay_channel_40(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 40 * 0.001, time_s);
    #{"ch": 40, "leak_sccm": q}
}
fn seal_decay_channel_41(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 41 * 0.001, time_s);
    #{"ch": 41, "leak_sccm": q}
}
fn seal_decay_channel_42(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 42 * 0.001, time_s);
    #{"ch": 42, "leak_sccm": q}
}
fn seal_decay_channel_43(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 43 * 0.001, time_s);
    #{"ch": 43, "leak_sccm": q}
}
fn seal_decay_channel_44(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 44 * 0.001, time_s);
    #{"ch": 44, "leak_sccm": q}
}
fn seal_decay_channel_45(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 45 * 0.001, time_s);
    #{"ch": 45, "leak_sccm": q}
}
fn seal_decay_channel_46(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 46 * 0.001, time_s);
    #{"ch": 46, "leak_sccm": q}
}
fn seal_decay_channel_47(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 47 * 0.001, time_s);
    #{"ch": 47, "leak_sccm": q}
}
fn seal_decay_channel_48(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 48 * 0.001, time_s);
    #{"ch": 48, "leak_sccm": q}
}
fn seal_decay_channel_49(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 49 * 0.001, time_s);
    #{"ch": 49, "leak_sccm": q}
}
fn seal_decay_channel_50(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 50 * 0.001, time_s);
    #{"ch": 50, "leak_sccm": q}
}
fn seal_decay_channel_51(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 51 * 0.001, time_s);
    #{"ch": 51, "leak_sccm": q}
}
fn seal_decay_channel_52(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 52 * 0.001, time_s);
    #{"ch": 52, "leak_sccm": q}
}
fn seal_decay_channel_53(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 53 * 0.001, time_s);
    #{"ch": 53, "leak_sccm": q}
}
fn seal_decay_channel_54(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 54 * 0.001, time_s);
    #{"ch": 54, "leak_sccm": q}
}
fn seal_decay_channel_55(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 55 * 0.001, time_s);
    #{"ch": 55, "leak_sccm": q}
}
fn seal_decay_channel_56(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 56 * 0.001, time_s);
    #{"ch": 56, "leak_sccm": q}
}
fn seal_decay_channel_57(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 57 * 0.001, time_s);
    #{"ch": 57, "leak_sccm": q}
}
fn seal_decay_channel_58(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 58 * 0.001, time_s);
    #{"ch": 58, "leak_sccm": q}
}
fn seal_decay_channel_59(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 59 * 0.001, time_s);
    #{"ch": 59, "leak_sccm": q}
}
fn seal_decay_channel_60(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 60 * 0.001, time_s);
    #{"ch": 60, "leak_sccm": q}
}
fn seal_decay_channel_61(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 61 * 0.001, time_s);
    #{"ch": 61, "leak_sccm": q}
}
fn seal_decay_channel_62(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 62 * 0.001, time_s);
    #{"ch": 62, "leak_sccm": q}
}
fn seal_decay_channel_63(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 63 * 0.001, time_s);
    #{"ch": 63, "leak_sccm": q}
}
fn seal_decay_channel_64(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 64 * 0.001, time_s);
    #{"ch": 64, "leak_sccm": q}
}
fn seal_decay_channel_65(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 65 * 0.001, time_s);
    #{"ch": 65, "leak_sccm": q}
}
fn seal_decay_channel_66(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 66 * 0.001, time_s);
    #{"ch": 66, "leak_sccm": q}
}
fn seal_decay_channel_67(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 67 * 0.001, time_s);
    #{"ch": 67, "leak_sccm": q}
}
fn seal_decay_channel_68(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 68 * 0.001, time_s);
    #{"ch": 68, "leak_sccm": q}
}
fn seal_decay_channel_69(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 69 * 0.001, time_s);
    #{"ch": 69, "leak_sccm": q}
}
fn seal_decay_channel_70(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 70 * 0.001, time_s);
    #{"ch": 70, "leak_sccm": q}
}
fn seal_decay_channel_71(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 71 * 0.001, time_s);
    #{"ch": 71, "leak_sccm": q}
}
fn seal_decay_channel_72(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 72 * 0.001, time_s);
    #{"ch": 72, "leak_sccm": q}
}
fn seal_decay_channel_73(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 73 * 0.001, time_s);
    #{"ch": 73, "leak_sccm": q}
}
fn seal_decay_channel_74(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 74 * 0.001, time_s);
    #{"ch": 74, "leak_sccm": q}
}
fn seal_decay_channel_75(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 75 * 0.001, time_s);
    #{"ch": 75, "leak_sccm": q}
}
fn seal_decay_channel_76(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 76 * 0.001, time_s);
    #{"ch": 76, "leak_sccm": q}
}
fn seal_decay_channel_77(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 77 * 0.001, time_s);
    #{"ch": 77, "leak_sccm": q}
}
fn seal_decay_channel_78(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 78 * 0.001, time_s);
    #{"ch": 78, "leak_sccm": q}
}
fn seal_decay_channel_79(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 79 * 0.001, time_s);
    #{"ch": 79, "leak_sccm": q}
}
fn seal_decay_channel_80(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 80 * 0.001, time_s);
    #{"ch": 80, "leak_sccm": q}
}
fn seal_decay_channel_81(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 81 * 0.001, time_s);
    #{"ch": 81, "leak_sccm": q}
}
fn seal_decay_channel_82(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 82 * 0.001, time_s);
    #{"ch": 82, "leak_sccm": q}
}
fn seal_decay_channel_83(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 83 * 0.001, time_s);
    #{"ch": 83, "leak_sccm": q}
}
fn seal_decay_channel_84(time_s) {
    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - 84 * 0.001, time_s);
    #{"ch": 84, "leak_sccm": q}
}
