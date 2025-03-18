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
