#!/usr/bin/env python3
"""
Generator for scripts/valves/*.rhai
Cryogenic valve kinematics, actuator servos, and seat stiction diagnostics
"""

import os
from common import write_rhai_file

SCRIPTS_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "scripts"))

def gen_valve_controller():
    lines = []
    lines.append("// Proportional-Integral-Derivative (PID) Controller for Cryogenic Throttle Valves")
    lines.append("// Anti-windup integrator clamping and derivative noise filtering")
    lines.append("")
    lines.append("fn pid_step(setpoint, measured, kp, ki, kd, dt, state) {")
    lines.append("    let error = setpoint - measured;")
    lines.append("    let p_term = kp * error;")
    lines.append("    let i_term = state.integral + ki * error * dt;")
    lines.append("    let clamped_i = math_clamp(i_term, -state.i_max, state.i_max);")
    lines.append("    let d_term = if dt > 0.0 { kd * (error - state.prev_error) / dt } else { 0.0 };")
    lines.append("    let output = p_term + clamped_i + d_term;")
    lines.append("    #{")
    lines.append("        \"output\": math_clamp(output, state.out_min, state.out_max),")
    lines.append("        \"integral\": clamped_i,")
    lines.append("        \"prev_error\": error")
    lines.append("    }")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_valve_controller() {")
    lines.append("    let state = #{ \"integral\": 0.0, \"prev_error\": 0.0, \"i_max\": 50.0, \"out_min\": 0.0, \"out_max\": 100.0 };")
    lines.append("    let res = pid_step(50.0, 40.0, 2.0, 0.5, 0.1, 0.01, state);")
    lines.append("    if res.output <= 0.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_valve_controller() { log_info(\"[VALVES::CONTROLLER] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn valve_pid_tuning_bank_{i}(sp, pv) {{")
        lines.append(f"    let st = #{{ \"integral\": 0.0, \"prev_error\": 0.0, \"i_max\": 50.0, \"out_min\": 0.0, \"out_max\": 100.0 }};")
        lines.append(f"    let r = pid_step(sp, pv, 2.0 + {i} * 0.05, 0.5, 0.1, 0.01, st);")
        lines.append(f"    #{{\"tuning\": {i}, \"cmd\": r.output}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "valves", "valve_controller.rhai"), "\n".join(lines))

def gen_response_profiler():
    lines = []
    lines.append("// Valve Response Profiler and Kinematic Transit Metrics")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn calculate_transit_time_ms(start_time_ns, end_time_ns) {")
    lines.append("    (end_time_ns - start_time_ns) / 1000000")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_response_profiler() {")
    lines.append("    let t = calculate_transit_time_ms(100000000, 220000000);")
    lines.append("    if t != 120 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_response_profiler() { log_info(\"[VALVES::PROFILER] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn response_profile_curve_{i}(t_ms) {{")
        lines.append(f"    let pos = smoothstep(0.0, 100.0 + {i} * 2.0, t_ms);")
        lines.append(f"    #{{\"profile\": {i}, \"pos_pct\": pos * 100.0}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "valves", "response_profiler.rhai"), "\n".join(lines))

def gen_stiction_detection():
    lines = []
    lines.append("// Cryogenic Valve Seat Stiction and Coulomb Friction Estimator")
    lines.append("// Stribeck friction curves and seal breakaway resistance")
    lines.append("")
    lines.append("fn detect_valve_stiction(commanded_pos_pct, actual_pos_pct, pilot_dp_bar, threshold_bar) {")
    lines.append("    let pos_error = (commanded_pos_pct - actual_pos_pct).abs();")
    lines.append("    if pos_error > 5.0 && pilot_dp_bar > threshold_bar {")
    lines.append("        return true; // Stiction detected: pilot force applied without movement")
    lines.append("    }")
    lines.append("    false")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_stiction() {")
    lines.append("    let stick = detect_valve_stiction(100.0, 0.0, 8.0, 5.0);")
    lines.append("    if !stick { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_stiction() { log_info(\"[VALVES::STICTION] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn stiction_scan_node_{i}(dp) {{")
        lines.append(f"    let s = detect_valve_stiction(100.0, 0.0, dp, 5.0 + {i} * 0.1);")
        lines.append(f"    #{{\"node\": {i}, \"stiction\": s}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "valves", "stiction_detection.rhai"), "\n".join(lines))

def gen_pneumatic_actuator():
    lines = []
    lines.append("// Pneumatic Actuator Cylinder Pressure and Spring Return Mechanics")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn pneumatic_net_force_n(pilot_p_bar, piston_area_sq_m, spring_preload_n, spring_k_n_m, stroke_m) {")
    lines.append("    let p_pa = pilot_p_bar * 100000.0;")
    lines.append("    let pressure_force = p_pa * piston_area_sq_m;")
    lines.append("    let spring_force = spring_preload_n + spring_k_n_m * stroke_m;")
    lines.append("    pressure_force - spring_force")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_pneumatic() {")
    lines.append("    let force = pneumatic_net_force_n(6.0, 0.01, 1000.0, 10000.0, 0.02);")
    lines.append("    if force <= 0.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_pneumatic() { log_info(\"[VALVES::PNEUMATIC] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn pneumatic_stroke_step_{i}(p_bar) {{")
        lines.append(f"    let f = pneumatic_net_force_n(p_bar, 0.01, 1000.0, 10000.0, {i} * 0.001);")
        lines.append(f"    #{{\"step\": {i}, \"net_force_n\": f}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "valves", "pneumatic_actuator.rhai"), "\n".join(lines))

def gen_hydraulic_servo():
    lines = []
    lines.append("// Electro-Hydraulic Servo Valve Spool Dynamics")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn servo_flow_rate_lpm(spool_pct, delta_p_bar, rated_flow_lpm, rated_dp_bar) {")
    lines.append("    let dp_ratio = (delta_p_bar / rated_dp_bar).max(0.0);")
    lines.append("    let frac = math_clamp(spool_pct, -100.0, 100.0) / 100.0;")
    lines.append("    rated_flow_lpm * frac * (dp_ratio.sqrt())")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_hydraulic_servo() {")
    lines.append("    let flow = servo_flow_rate_lpm(100.0, 70.0, 40.0, 70.0);")
    lines.append("    if (flow - 40.0).abs() > 0.1 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_hydraulic_servo() { log_info(\"[VALVES::HYDRAULIC_SERVO] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn servo_response_slice_{i}(spool) {{")
        lines.append(f"    let q = servo_flow_rate_lpm(spool, 70.0 + {i} * 1.0, 40.0, 70.0);")
        lines.append(f"    #{{\"slice\": {i}, \"flow_lpm\": q}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "valves", "hydraulic_servo.rhai"), "\n".join(lines))

def gen_pintle_actuator():
    lines = []
    lines.append("// Pintle Linear Ball Screw Actuator and Backlash Compensator")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn compensate_backlash(target_mm, current_mm, backlash_mm, last_dir) {")
    lines.append("    let dir = math_sign(target_mm - current_mm);")
    lines.append("    if dir != 0.0 && dir != last_dir {")
    lines.append("        return target_mm + dir * backlash_mm;")
    lines.append("    }")
    lines.append("    target_mm")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_pintle_actuator() {")
    lines.append("    let comp = compensate_backlash(10.0, 5.0, 0.02, -1.0);")
    lines.append("    if (comp - 10.02).abs() > 1.0e-6 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_pintle_actuator() { log_info(\"[VALVES::PINTLE_ACTUATOR] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn pintle_travel_node_{i}(target) {{")
        lines.append(f"    let c = compensate_backlash(target, 5.0, 0.02 + {i} * 0.001, -1.0);")
        lines.append(f"    #{{\"node\": {i}, \"compensated_mm\": c}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "valves", "pintle_actuator.rhai"), "\n".join(lines))

def gen_seal_decay():
    lines = []
    lines.append("// Valve Seat Seal Pressure Decay and Leakage Qualification")
    lines.append("// ASME / MSS-SP cryogenic seat leak rate verification")
    lines.append("")
    lines.append("fn leak_rate_sccm(test_vol_cc, p_start_bar, p_end_bar, time_sec) {")
    lines.append("    let delta_p_atm = (p_start_bar - p_end_bar) / 1.01325;")
    lines.append("    if time_sec <= 0.0 { return 0.0; }")
    lines.append("    (test_vol_cc * delta_p_atm * 60.0) / time_sec")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_seal_decay() {")
    lines.append("    let leak = leak_rate_sccm(1000.0, 30.0, 29.98, 60.0);")
    lines.append("    if leak <= 0.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_seal_decay() { log_info(\"[VALVES::SEAL_DECAY] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn seal_decay_channel_{i}(time_s) {{")
        lines.append(f"    let q = leak_rate_sccm(1000.0, 30.0, 29.98 - {i} * 0.001, time_s);")
        lines.append(f"    #{{\"ch\": {i}, \"leak_sccm\": q}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "valves", "seal_decay.rhai"), "\n".join(lines))

if __name__ == "__main__":
    gen_valve_controller()
    gen_response_profiler()
    gen_stiction_detection()
    gen_pneumatic_actuator()
    gen_hydraulic_servo()
    gen_pintle_actuator()
    gen_seal_decay()
