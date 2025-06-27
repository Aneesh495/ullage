// Propellant Depletion Test Profile and Cavitation Cutoff Detection
// Part of the Ullage Cryogenic Test Executive Suite

fn is_depletion_triggered(inlet_p_bar, min_suction_p_bar) {
    inlet_p_bar <= min_suction_p_bar
}

fn verify_depletion() {
    let trig = is_depletion_triggered(1.5, 2.0);
    if !trig { return false; }
    true
}
if verify_depletion() { log_info("[PROFILES::DEPLETION] Verification passed."); }
fn suction_pressure_descent_1(t_s) {
    let p = 5.0 - t_s * (0.2 + 1 * 0.005);
    #{"sample": 1, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_2(t_s) {
    let p = 5.0 - t_s * (0.2 + 2 * 0.005);
    #{"sample": 2, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_3(t_s) {
    let p = 5.0 - t_s * (0.2 + 3 * 0.005);
    #{"sample": 3, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_4(t_s) {
    let p = 5.0 - t_s * (0.2 + 4 * 0.005);
    #{"sample": 4, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_5(t_s) {
    let p = 5.0 - t_s * (0.2 + 5 * 0.005);
    #{"sample": 5, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_6(t_s) {
    let p = 5.0 - t_s * (0.2 + 6 * 0.005);
    #{"sample": 6, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_7(t_s) {
    let p = 5.0 - t_s * (0.2 + 7 * 0.005);
    #{"sample": 7, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_8(t_s) {
    let p = 5.0 - t_s * (0.2 + 8 * 0.005);
    #{"sample": 8, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_9(t_s) {
    let p = 5.0 - t_s * (0.2 + 9 * 0.005);
    #{"sample": 9, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_10(t_s) {
    let p = 5.0 - t_s * (0.2 + 10 * 0.005);
    #{"sample": 10, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_11(t_s) {
    let p = 5.0 - t_s * (0.2 + 11 * 0.005);
    #{"sample": 11, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_12(t_s) {
    let p = 5.0 - t_s * (0.2 + 12 * 0.005);
    #{"sample": 12, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_13(t_s) {
    let p = 5.0 - t_s * (0.2 + 13 * 0.005);
    #{"sample": 13, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_14(t_s) {
    let p = 5.0 - t_s * (0.2 + 14 * 0.005);
    #{"sample": 14, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_15(t_s) {
    let p = 5.0 - t_s * (0.2 + 15 * 0.005);
    #{"sample": 15, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_16(t_s) {
    let p = 5.0 - t_s * (0.2 + 16 * 0.005);
    #{"sample": 16, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_17(t_s) {
    let p = 5.0 - t_s * (0.2 + 17 * 0.005);
    #{"sample": 17, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_18(t_s) {
    let p = 5.0 - t_s * (0.2 + 18 * 0.005);
    #{"sample": 18, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_19(t_s) {
    let p = 5.0 - t_s * (0.2 + 19 * 0.005);
    #{"sample": 19, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_20(t_s) {
    let p = 5.0 - t_s * (0.2 + 20 * 0.005);
    #{"sample": 20, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_21(t_s) {
    let p = 5.0 - t_s * (0.2 + 21 * 0.005);
    #{"sample": 21, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_22(t_s) {
    let p = 5.0 - t_s * (0.2 + 22 * 0.005);
    #{"sample": 22, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_23(t_s) {
    let p = 5.0 - t_s * (0.2 + 23 * 0.005);
    #{"sample": 23, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_24(t_s) {
    let p = 5.0 - t_s * (0.2 + 24 * 0.005);
    #{"sample": 24, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_25(t_s) {
    let p = 5.0 - t_s * (0.2 + 25 * 0.005);
    #{"sample": 25, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_26(t_s) {
    let p = 5.0 - t_s * (0.2 + 26 * 0.005);
    #{"sample": 26, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_27(t_s) {
    let p = 5.0 - t_s * (0.2 + 27 * 0.005);
    #{"sample": 27, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_28(t_s) {
    let p = 5.0 - t_s * (0.2 + 28 * 0.005);
    #{"sample": 28, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_29(t_s) {
    let p = 5.0 - t_s * (0.2 + 29 * 0.005);
    #{"sample": 29, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_30(t_s) {
    let p = 5.0 - t_s * (0.2 + 30 * 0.005);
    #{"sample": 30, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_31(t_s) {
    let p = 5.0 - t_s * (0.2 + 31 * 0.005);
    #{"sample": 31, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_32(t_s) {
    let p = 5.0 - t_s * (0.2 + 32 * 0.005);
    #{"sample": 32, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_33(t_s) {
    let p = 5.0 - t_s * (0.2 + 33 * 0.005);
    #{"sample": 33, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_34(t_s) {
    let p = 5.0 - t_s * (0.2 + 34 * 0.005);
    #{"sample": 34, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_35(t_s) {
    let p = 5.0 - t_s * (0.2 + 35 * 0.005);
    #{"sample": 35, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_36(t_s) {
    let p = 5.0 - t_s * (0.2 + 36 * 0.005);
    #{"sample": 36, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_37(t_s) {
    let p = 5.0 - t_s * (0.2 + 37 * 0.005);
    #{"sample": 37, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_38(t_s) {
    let p = 5.0 - t_s * (0.2 + 38 * 0.005);
    #{"sample": 38, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_39(t_s) {
    let p = 5.0 - t_s * (0.2 + 39 * 0.005);
    #{"sample": 39, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_40(t_s) {
    let p = 5.0 - t_s * (0.2 + 40 * 0.005);
    #{"sample": 40, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_41(t_s) {
    let p = 5.0 - t_s * (0.2 + 41 * 0.005);
    #{"sample": 41, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_42(t_s) {
    let p = 5.0 - t_s * (0.2 + 42 * 0.005);
    #{"sample": 42, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_43(t_s) {
    let p = 5.0 - t_s * (0.2 + 43 * 0.005);
    #{"sample": 43, "inlet_p_bar": p.max(0.5)}
}
fn suction_pressure_descent_44(t_s) {
    let p = 5.0 - t_s * (0.2 + 44 * 0.005);
    #{"sample": 44, "inlet_p_bar": p.max(0.5)}
}
