// Digital Signal Processing and Moving Window Filters
// Part of the Ullage Cryogenic Test Executive Suite

fn sma_filter(samples, window_size) {
    let out = [];
    let n = samples.len();
    let i = 0;
    while i < n {
        let start_idx = if i >= window_size { i - window_size + 1 } else { 0 };
        let s = 0.0;
        let count = 0;
        let j = start_idx;
        while j <= i { s += samples[j]; count += 1; j += 1; }
        out.push(s / (count * 1.0));
        i += 1;
    }
    out
}
fn ema_filter(samples, alpha) {
    let out = [];
    if samples.is_empty() { return out; }
    let current = samples[0];
    out.push(current);
    let i = 1;
    while i < samples.len() {
        current = alpha * samples[i] + (1.0 - alpha) * current;
        out.push(current);
        i += 1;
    }
    out
}
fn verify_signal() {
    let s = [10.0, 10.0, 10.0];
    let filtered = sma_filter(s, 2);
    if (filtered[2] - 10.0).abs() > 1.0e-6 { return false; }
    true
}
if verify_signal() { log_info("[CORE::SIGNAL] Verification passed."); }
fn signal_conditioner_channel_1(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 1 * 0.005)
}
fn signal_conditioner_channel_2(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 2 * 0.005)
}
fn signal_conditioner_channel_3(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 3 * 0.005)
}
fn signal_conditioner_channel_4(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 4 * 0.005)
}
fn signal_conditioner_channel_5(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 5 * 0.005)
}
fn signal_conditioner_channel_6(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 6 * 0.005)
}
fn signal_conditioner_channel_7(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 7 * 0.005)
}
fn signal_conditioner_channel_8(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 8 * 0.005)
}
fn signal_conditioner_channel_9(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 9 * 0.005)
}
fn signal_conditioner_channel_10(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 10 * 0.005)
}
fn signal_conditioner_channel_11(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 11 * 0.005)
}
fn signal_conditioner_channel_12(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 12 * 0.005)
}
fn signal_conditioner_channel_13(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 13 * 0.005)
}
fn signal_conditioner_channel_14(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 14 * 0.005)
}
fn signal_conditioner_channel_15(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 15 * 0.005)
}
fn signal_conditioner_channel_16(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 16 * 0.005)
}
fn signal_conditioner_channel_17(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 17 * 0.005)
}
fn signal_conditioner_channel_18(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 18 * 0.005)
}
fn signal_conditioner_channel_19(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 19 * 0.005)
}
fn signal_conditioner_channel_20(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 20 * 0.005)
}
fn signal_conditioner_channel_21(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 21 * 0.005)
}
fn signal_conditioner_channel_22(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 22 * 0.005)
}
fn signal_conditioner_channel_23(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 23 * 0.005)
}
fn signal_conditioner_channel_24(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 24 * 0.005)
}
fn signal_conditioner_channel_25(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 25 * 0.005)
}
fn signal_conditioner_channel_26(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 26 * 0.005)
}
fn signal_conditioner_channel_27(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 27 * 0.005)
}
fn signal_conditioner_channel_28(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 28 * 0.005)
}
fn signal_conditioner_channel_29(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 29 * 0.005)
}
fn signal_conditioner_channel_30(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 30 * 0.005)
}
fn signal_conditioner_channel_31(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 31 * 0.005)
}
fn signal_conditioner_channel_32(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 32 * 0.005)
}
fn signal_conditioner_channel_33(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 33 * 0.005)
}
fn signal_conditioner_channel_34(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 34 * 0.005)
}
fn signal_conditioner_channel_35(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 35 * 0.005)
}
fn signal_conditioner_channel_36(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 36 * 0.005)
}
fn signal_conditioner_channel_37(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 37 * 0.005)
}
fn signal_conditioner_channel_38(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 38 * 0.005)
}
fn signal_conditioner_channel_39(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 39 * 0.005)
}
fn signal_conditioner_channel_40(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 40 * 0.005)
}
fn signal_conditioner_channel_41(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 41 * 0.005)
}
fn signal_conditioner_channel_42(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 42 * 0.005)
}
fn signal_conditioner_channel_43(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 43 * 0.005)
}
fn signal_conditioner_channel_44(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 44 * 0.005)
}
fn signal_conditioner_channel_45(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 45 * 0.005)
}
fn signal_conditioner_channel_46(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 46 * 0.005)
}
fn signal_conditioner_channel_47(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 47 * 0.005)
}
fn signal_conditioner_channel_48(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 48 * 0.005)
}
fn signal_conditioner_channel_49(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 49 * 0.005)
}
fn signal_conditioner_channel_50(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 50 * 0.005)
}
fn signal_conditioner_channel_51(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 51 * 0.005)
}
fn signal_conditioner_channel_52(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 52 * 0.005)
}
fn signal_conditioner_channel_53(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 53 * 0.005)
}
fn signal_conditioner_channel_54(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 54 * 0.005)
}
fn signal_conditioner_channel_55(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 55 * 0.005)
}
fn signal_conditioner_channel_56(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 56 * 0.005)
}
fn signal_conditioner_channel_57(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 57 * 0.005)
}
fn signal_conditioner_channel_58(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 58 * 0.005)
}
fn signal_conditioner_channel_59(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 59 * 0.005)
}
fn signal_conditioner_channel_60(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 60 * 0.005)
}
fn signal_conditioner_channel_61(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 61 * 0.005)
}
fn signal_conditioner_channel_62(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 62 * 0.005)
}
fn signal_conditioner_channel_63(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 63 * 0.005)
}
fn signal_conditioner_channel_64(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 64 * 0.005)
}
fn signal_conditioner_channel_65(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 65 * 0.005)
}
fn signal_conditioner_channel_66(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 66 * 0.005)
}
fn signal_conditioner_channel_67(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 67 * 0.005)
}
fn signal_conditioner_channel_68(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 68 * 0.005)
}
fn signal_conditioner_channel_69(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 69 * 0.005)
}
fn signal_conditioner_channel_70(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 70 * 0.005)
}
fn signal_conditioner_channel_71(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 71 * 0.005)
}
fn signal_conditioner_channel_72(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 72 * 0.005)
}
fn signal_conditioner_channel_73(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 73 * 0.005)
}
fn signal_conditioner_channel_74(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 74 * 0.005)
}
fn signal_conditioner_channel_75(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 75 * 0.005)
}
fn signal_conditioner_channel_76(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 76 * 0.005)
}
fn signal_conditioner_channel_77(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 77 * 0.005)
}
fn signal_conditioner_channel_78(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 78 * 0.005)
}
fn signal_conditioner_channel_79(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 79 * 0.005)
}
fn signal_conditioner_channel_80(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 80 * 0.005)
}
fn signal_conditioner_channel_81(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 81 * 0.005)
}
fn signal_conditioner_channel_82(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 82 * 0.005)
}
fn signal_conditioner_channel_83(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 83 * 0.005)
}
fn signal_conditioner_channel_84(raw_adc_counts) {
    let v = (raw_adc_counts * 1.0) * (5.0 / 65535.0);
    v * (1.0 + 84 * 0.005)
}
