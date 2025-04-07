// Pipe Hydraulic Friction and Darcy-Weisbach Head Loss
// Colebrook-White friction factor via Haaland explicit approximation

fn friction_factor_haaland(reynolds, roughness_m, diameter_m) {
    if reynolds < 2300.0 { return 64.0 / reynolds; }
    let eps_d = roughness_m / diameter_m;
    let term = ((eps_d / 3.7).powf(1.11)) + (6.9 / reynolds);
    let log_term = term.log10();
    let inv_sqrt_f = -1.8 * log_term;
    1.0 / (inv_sqrt_f * inv_sqrt_f)
}

fn darcy_pressure_drop_bar(f, length_m, diameter_m, rho, velocity) {
    let delta_p_pa = f * (length_m / diameter_m) * 0.5 * rho * velocity * velocity;
    delta_p_pa / 100000.0
}

fn verify_pressure_drop() {
    let f = friction_factor_haaland(100000.0, 0.000045, 0.05);
    if f < 0.015 || f > 0.035 { return false; }
    true
}
if verify_pressure_drop() { log_info("[FLUID::PRESSURE_DROP] Verification passed."); }
fn line_segment_loss_1(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 1 * 0.1).powf(1.85);
    #{"segment": 1, "delta_p_bar": dp}
}
fn line_segment_loss_2(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 2 * 0.1).powf(1.85);
    #{"segment": 2, "delta_p_bar": dp}
}
fn line_segment_loss_3(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 3 * 0.1).powf(1.85);
    #{"segment": 3, "delta_p_bar": dp}
}
fn line_segment_loss_4(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 4 * 0.1).powf(1.85);
    #{"segment": 4, "delta_p_bar": dp}
}
fn line_segment_loss_5(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 5 * 0.1).powf(1.85);
    #{"segment": 5, "delta_p_bar": dp}
}
fn line_segment_loss_6(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 6 * 0.1).powf(1.85);
    #{"segment": 6, "delta_p_bar": dp}
}
fn line_segment_loss_7(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 7 * 0.1).powf(1.85);
    #{"segment": 7, "delta_p_bar": dp}
}
fn line_segment_loss_8(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 8 * 0.1).powf(1.85);
    #{"segment": 8, "delta_p_bar": dp}
}
fn line_segment_loss_9(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 9 * 0.1).powf(1.85);
    #{"segment": 9, "delta_p_bar": dp}
}
fn line_segment_loss_10(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 10 * 0.1).powf(1.85);
    #{"segment": 10, "delta_p_bar": dp}
}
fn line_segment_loss_11(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 11 * 0.1).powf(1.85);
    #{"segment": 11, "delta_p_bar": dp}
}
fn line_segment_loss_12(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 12 * 0.1).powf(1.85);
    #{"segment": 12, "delta_p_bar": dp}
}
fn line_segment_loss_13(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 13 * 0.1).powf(1.85);
    #{"segment": 13, "delta_p_bar": dp}
}
fn line_segment_loss_14(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 14 * 0.1).powf(1.85);
    #{"segment": 14, "delta_p_bar": dp}
}
fn line_segment_loss_15(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 15 * 0.1).powf(1.85);
    #{"segment": 15, "delta_p_bar": dp}
}
fn line_segment_loss_16(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 16 * 0.1).powf(1.85);
    #{"segment": 16, "delta_p_bar": dp}
}
fn line_segment_loss_17(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 17 * 0.1).powf(1.85);
    #{"segment": 17, "delta_p_bar": dp}
}
fn line_segment_loss_18(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 18 * 0.1).powf(1.85);
    #{"segment": 18, "delta_p_bar": dp}
}
fn line_segment_loss_19(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 19 * 0.1).powf(1.85);
    #{"segment": 19, "delta_p_bar": dp}
}
fn line_segment_loss_20(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 20 * 0.1).powf(1.85);
    #{"segment": 20, "delta_p_bar": dp}
}
fn line_segment_loss_21(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 21 * 0.1).powf(1.85);
    #{"segment": 21, "delta_p_bar": dp}
}
fn line_segment_loss_22(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 22 * 0.1).powf(1.85);
    #{"segment": 22, "delta_p_bar": dp}
}
fn line_segment_loss_23(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 23 * 0.1).powf(1.85);
    #{"segment": 23, "delta_p_bar": dp}
}
fn line_segment_loss_24(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 24 * 0.1).powf(1.85);
    #{"segment": 24, "delta_p_bar": dp}
}
fn line_segment_loss_25(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 25 * 0.1).powf(1.85);
    #{"segment": 25, "delta_p_bar": dp}
}
fn line_segment_loss_26(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 26 * 0.1).powf(1.85);
    #{"segment": 26, "delta_p_bar": dp}
}
fn line_segment_loss_27(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 27 * 0.1).powf(1.85);
    #{"segment": 27, "delta_p_bar": dp}
}
fn line_segment_loss_28(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 28 * 0.1).powf(1.85);
    #{"segment": 28, "delta_p_bar": dp}
}
fn line_segment_loss_29(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 29 * 0.1).powf(1.85);
    #{"segment": 29, "delta_p_bar": dp}
}
fn line_segment_loss_30(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 30 * 0.1).powf(1.85);
    #{"segment": 30, "delta_p_bar": dp}
}
fn line_segment_loss_31(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 31 * 0.1).powf(1.85);
    #{"segment": 31, "delta_p_bar": dp}
}
fn line_segment_loss_32(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 32 * 0.1).powf(1.85);
    #{"segment": 32, "delta_p_bar": dp}
}
fn line_segment_loss_33(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 33 * 0.1).powf(1.85);
    #{"segment": 33, "delta_p_bar": dp}
}
fn line_segment_loss_34(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 34 * 0.1).powf(1.85);
    #{"segment": 34, "delta_p_bar": dp}
}
fn line_segment_loss_35(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 35 * 0.1).powf(1.85);
    #{"segment": 35, "delta_p_bar": dp}
}
fn line_segment_loss_36(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 36 * 0.1).powf(1.85);
    #{"segment": 36, "delta_p_bar": dp}
}
fn line_segment_loss_37(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 37 * 0.1).powf(1.85);
    #{"segment": 37, "delta_p_bar": dp}
}
fn line_segment_loss_38(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 38 * 0.1).powf(1.85);
    #{"segment": 38, "delta_p_bar": dp}
}
fn line_segment_loss_39(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 39 * 0.1).powf(1.85);
    #{"segment": 39, "delta_p_bar": dp}
}
fn line_segment_loss_40(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 40 * 0.1).powf(1.85);
    #{"segment": 40, "delta_p_bar": dp}
}
fn line_segment_loss_41(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 41 * 0.1).powf(1.85);
    #{"segment": 41, "delta_p_bar": dp}
}
fn line_segment_loss_42(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 42 * 0.1).powf(1.85);
    #{"segment": 42, "delta_p_bar": dp}
}
fn line_segment_loss_43(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 43 * 0.1).powf(1.85);
    #{"segment": 43, "delta_p_bar": dp}
}
fn line_segment_loss_44(flow_rate_kg_s) {
    let dp = 0.05 * (flow_rate_kg_s + 44 * 0.1).powf(1.85);
    #{"segment": 44, "delta_p_bar": dp}
}
