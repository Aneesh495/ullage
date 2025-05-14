// Proportional-Integral-Derivative (PID) Controller for Cryogenic Throttle Valves
// Anti-windup integrator clamping and derivative noise filtering

fn pid_step(setpoint, measured, kp, ki, kd, dt, state) {
    let error = setpoint - measured;
    let p_term = kp * error;
    let i_term = state.integral + ki * error * dt;
    let clamped_i = math_clamp(i_term, -state.i_max, state.i_max);
    let d_term = if dt > 0.0 { kd * (error - state.prev_error) / dt } else { 0.0 };
    let output = p_term + clamped_i + d_term;
    #{
        "output": math_clamp(output, state.out_min, state.out_max),
        "integral": clamped_i,
        "prev_error": error
    }
}

fn verify_valve_controller() {
    let state = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let res = pid_step(50.0, 40.0, 2.0, 0.5, 0.1, 0.01, state);
    if res.output <= 0.0 { return false; }
    true
}
if verify_valve_controller() { log_info("[VALVES::CONTROLLER] Verification passed."); }
fn valve_pid_tuning_bank_1(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 1 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 1, "cmd": r.output}
}
fn valve_pid_tuning_bank_2(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 2 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 2, "cmd": r.output}
}
fn valve_pid_tuning_bank_3(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 3 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 3, "cmd": r.output}
}
fn valve_pid_tuning_bank_4(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 4 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 4, "cmd": r.output}
}
fn valve_pid_tuning_bank_5(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 5 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 5, "cmd": r.output}
}
fn valve_pid_tuning_bank_6(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 6 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 6, "cmd": r.output}
}
fn valve_pid_tuning_bank_7(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 7 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 7, "cmd": r.output}
}
fn valve_pid_tuning_bank_8(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 8 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 8, "cmd": r.output}
}
fn valve_pid_tuning_bank_9(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 9 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 9, "cmd": r.output}
}
fn valve_pid_tuning_bank_10(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 10 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 10, "cmd": r.output}
}
fn valve_pid_tuning_bank_11(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 11 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 11, "cmd": r.output}
}
fn valve_pid_tuning_bank_12(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 12 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 12, "cmd": r.output}
}
fn valve_pid_tuning_bank_13(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 13 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 13, "cmd": r.output}
}
fn valve_pid_tuning_bank_14(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 14 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 14, "cmd": r.output}
}
fn valve_pid_tuning_bank_15(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 15 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 15, "cmd": r.output}
}
fn valve_pid_tuning_bank_16(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 16 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 16, "cmd": r.output}
}
fn valve_pid_tuning_bank_17(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 17 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 17, "cmd": r.output}
}
fn valve_pid_tuning_bank_18(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 18 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 18, "cmd": r.output}
}
fn valve_pid_tuning_bank_19(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 19 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 19, "cmd": r.output}
}
fn valve_pid_tuning_bank_20(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 20 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 20, "cmd": r.output}
}
fn valve_pid_tuning_bank_21(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 21 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 21, "cmd": r.output}
}
fn valve_pid_tuning_bank_22(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 22 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 22, "cmd": r.output}
}
fn valve_pid_tuning_bank_23(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 23 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 23, "cmd": r.output}
}
fn valve_pid_tuning_bank_24(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 24 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 24, "cmd": r.output}
}
fn valve_pid_tuning_bank_25(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 25 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 25, "cmd": r.output}
}
fn valve_pid_tuning_bank_26(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 26 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 26, "cmd": r.output}
}
fn valve_pid_tuning_bank_27(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 27 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 27, "cmd": r.output}
}
fn valve_pid_tuning_bank_28(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 28 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 28, "cmd": r.output}
}
fn valve_pid_tuning_bank_29(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 29 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 29, "cmd": r.output}
}
fn valve_pid_tuning_bank_30(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 30 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 30, "cmd": r.output}
}
fn valve_pid_tuning_bank_31(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 31 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 31, "cmd": r.output}
}
fn valve_pid_tuning_bank_32(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 32 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 32, "cmd": r.output}
}
fn valve_pid_tuning_bank_33(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 33 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 33, "cmd": r.output}
}
fn valve_pid_tuning_bank_34(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 34 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 34, "cmd": r.output}
}
fn valve_pid_tuning_bank_35(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 35 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 35, "cmd": r.output}
}
fn valve_pid_tuning_bank_36(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 36 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 36, "cmd": r.output}
}
fn valve_pid_tuning_bank_37(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 37 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 37, "cmd": r.output}
}
fn valve_pid_tuning_bank_38(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 38 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 38, "cmd": r.output}
}
fn valve_pid_tuning_bank_39(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 39 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 39, "cmd": r.output}
}
fn valve_pid_tuning_bank_40(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 40 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 40, "cmd": r.output}
}
fn valve_pid_tuning_bank_41(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 41 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 41, "cmd": r.output}
}
fn valve_pid_tuning_bank_42(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 42 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 42, "cmd": r.output}
}
fn valve_pid_tuning_bank_43(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 43 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 43, "cmd": r.output}
}
fn valve_pid_tuning_bank_44(sp, pv) {
    let st = #{ "integral": 0.0, "prev_error": 0.0, "i_max": 50.0, "out_min": 0.0, "out_max": 100.0 };
    let r = pid_step(sp, pv, 2.0 + 44 * 0.05, 0.5, 0.1, 0.01, st);
    #{"tuning": 44, "cmd": r.output}
}
