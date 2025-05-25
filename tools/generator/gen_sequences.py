#!/usr/bin/env python3
"""
Generator for scripts/sequences/*.rhai
Automated test stand procedures, countdown ladders, and hot-fire controllers
"""

import os
from common import write_rhai_file

SCRIPTS_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "scripts"))

def gen_sequence_builder():
    lines = []
    lines.append("// Test Sequence Builder and State Machine Coordinator")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn sequence_new(name) {")
    lines.append("    #{")
    lines.append("        \"name\": name,")
    lines.append("        \"steps\": [],")
    lines.append("        \"current_step_idx\": 0,")
    lines.append("        \"is_complete\": false,")
    lines.append("        \"aborted\": false")
    lines.append("    }")
    lines.append("}")
    lines.append("")
    lines.append("fn sequence_add_step(seq, step_name, timeout_ms) {")
    lines.append("    seq.steps.push(#{ \"name\": step_name, \"timeout_ms\": timeout_ms, \"passed\": false });")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_sequence_builder() {")
    lines.append("    let s = sequence_new(\"TEST_HOTFIRE\");")
    lines.append("    sequence_add_step(s, \"CHILLDOWN\", 30000);")
    lines.append("    sequence_add_step(s, \"IGNITION\", 5000);")
    lines.append("    if s.steps.len() != 2 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_sequence_builder() { log_info(\"[SEQUENCES::BUILDER] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn sequence_profile_step_{i}() {{")
        lines.append(f"    #{{\"step_id\": {i}, \"phase\": \"STEP_{i}\", \"budget_ms\": 5000 + {i} * 100}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "sequence_builder.rhai"), "\n".join(lines))

def gen_preflight_check():
    lines = []
    lines.append("// Pre-Flight Test Stand Facility Readiness and Sensor Loop Verification")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn check_facility_pressures(gn2_bottle_bar, ghe_bottle_bar, min_bar) {")
    lines.append("    gn2_bottle_bar >= min_bar && ghe_bottle_bar >= min_bar")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_preflight() {")
    lines.append("    let ok = check_facility_pressures(220.0, 240.0, 200.0);")
    lines.append("    if !ok { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_preflight() { log_info(\"[SEQUENCES::PREFLIGHT] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn preflight_harness_check_{i}(volts) {{")
        lines.append(f"    let pass = volts >= 4.8 && volts <= 5.2;")
        lines.append(f"    #{{\"harness\": {i}, \"pass\": pass}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "preflight_check.rhai"), "\n".join(lines))

def gen_leak_check():
    lines = []
    lines.append("// Automated High-Pressure Helium Leak Check and Decay Rate Analysis")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn evaluate_pressure_decay(p_start_bar, p_end_bar, duration_sec, max_rate_bar_per_min) {")
    lines.append("    let decay_bar = (p_start_bar - p_end_bar).max(0.0);")
    lines.append("    let rate = (decay_bar / duration_sec) * 60.0;")
    lines.append("    #{ \"decay_bar\": decay_bar, \"rate_bar_per_min\": rate, \"pass\": rate <= max_rate_bar_per_min }")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_leak_check() {")
    lines.append("    let res = evaluate_pressure_decay(50.0, 49.95, 60.0, 0.1);")
    lines.append("    if !res.pass { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_leak_check() { log_info(\"[SEQUENCES::LEAK_CHECK] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn leak_check_station_{i}(p0, p1) {{")
        lines.append(f"    let r = evaluate_pressure_decay(p0, p1, 60.0, 0.1 + {i} * 0.005);")
        lines.append(f"    #{{\"station\": {i}, \"pass\": r.pass}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "leak_check.rhai"), "\n".join(lines))

def gen_gn2_purge():
    lines = []
    lines.append("// Propellant Line Moisture Drying and Gaseous Nitrogen Inerting")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn execute_gn2_purge_cycle(target_dew_point_c, actual_dew_point_c) {")
    lines.append("    actual_dew_point_c <= target_dew_point_c")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_gn2_purge() {")
    lines.append("    let ok = execute_gn2_purge_cycle(-40.0, -45.0);")
    lines.append("    if !ok { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_gn2_purge() { log_info(\"[SEQUENCES::GN2_PURGE] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn purge_station_flow_{i}(p_in) {{")
        lines.append(f"    let flow = p_in * (0.05 + {i} * 0.001);")
        lines.append(f"    #{{\"station\": {i}, \"flow_kg_s\": flow}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "gn2_purge.rhai"), "\n".join(lines))

def gen_chilldown():
    lines = []
    lines.append("// Cryogenic Turbopump Chilldown and Housing Temperature Descent")
    lines.append("// Two-phase boiling plateau detection and subcooled verification")
    lines.append("")
    lines.append("fn is_chilldown_qualified(temp_lox_pump_k, temp_fuel_pump_k, lox_target_k, fuel_target_k) {")
    lines.append("    temp_lox_pump_k <= lox_target_k && temp_fuel_pump_k <= fuel_target_k")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_chilldown() {")
    lines.append("    let qual = is_chilldown_qualified(88.0, 108.0, 92.0, 112.0);")
    lines.append("    if !qual { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_chilldown() { log_info(\"[SEQUENCES::CHILLDOWN] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn chilldown_temperature_sensor_{i}(t_raw) {{")
        lines.append(f"    let t_cal = t_raw * 0.995 - {i} * 0.02;")
        lines.append(f"    #{{\"sensor\": {i}, \"temp_k\": t_cal, \"chilled\": t_cal < 95.0}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "chilldown.rhai"), "\n".join(lines))

def gen_tank_press():
    lines = []
    lines.append("// Tank Ullage Pressurization Ramp and Pressure Maintenance")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn compute_pressurization_rate(p_current_bar, p_target_bar, dt_sec) {")
    lines.append("    (p_target_bar - p_current_bar) / dt_sec")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_tank_press() {")
    lines.append("    let rate = compute_pressurization_rate(5.0, 35.0, 6.0);")
    lines.append("    if (rate - 5.0).abs() > 1.0e-6 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_tank_press() { log_info(\"[SEQUENCES::TANK_PRESS] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn ullage_ramp_point_{i}(t_sec) {{")
        lines.append(f"    let p = 5.0 + t_sec * (4.5 + {i} * 0.02);")
        lines.append(f"    #{{\"step\": {i}, \"target_bar\": p}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "tank_press.rhai"), "\n".join(lines))

def gen_igniter_test():
    lines = []
    lines.append("// Torch Igniter Pre-Fire Qualification and Flame Sensor Verification")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn qualify_igniter(flame_mv, pc_rise_bar, min_mv, min_rise_bar) {")
    lines.append("    flame_mv >= min_mv && pc_rise_bar >= min_rise_bar")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_igniter_test() {")
    lines.append("    let ok = qualify_igniter(280.0, 4.2, 200.0, 3.0);")
    lines.append("    if !ok { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_igniter_test() { log_info(\"[SEQUENCES::IGNITER_TEST] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn igniter_sensor_channel_{i}(mv) {{")
        lines.append(f"    let pass = qualify_igniter(mv, 4.0, 200.0 + {i} * 1.0, 3.0);")
        lines.append(f"    #{{\"channel\": {i}, \"pass\": pass}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "igniter_test.rhai"), "\n".join(lines))

def gen_spin_start():
    lines = []
    lines.append("// Turbopump Spin Start Sequencing and Starter Gas Trigger")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn check_spool_rpm(current_rpm, target_cutoff_rpm) {")
    lines.append("    current_rpm >= target_cutoff_rpm")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_spin_start() {")
    lines.append("    let reached = check_spool_rpm(8200.0, 8000.0);")
    lines.append("    if !reached { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_spin_start() { log_info(\"[SEQUENCES::SPIN_START] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn spool_rpm_profile_{i}(t_s) {{")
        lines.append(f"    let rpm = t_s * (15000.0 + {i} * 100.0);")
        lines.append(f"    #{{\"step\": {i}, \"rpm\": rpm}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "spin_start.rhai"), "\n".join(lines))

def gen_main_ignition():
    lines = []
    lines.append("// Main Stage Ignition Countdown Ladder and Valve Coordination")
    lines.append("// Millisecond offset sequencing from T-0.5s to T+1.0s")
    lines.append("")
    lines.append("fn get_ignition_ladder() {")
    lines.append("    [")
    lines.append("        #{ \"t_offset_ms\": -500, \"action\": \"START_IGNITER\" },")
    lines.append("        #{ \"t_offset_ms\": -300, \"action\": \"VERIFY_FLAME\" },")
    lines.append("        #{ \"t_offset_ms\": -150, \"action\": \"OPEN_VALVE\", \"valve\": \"FUEL_MAIN\" },")
    lines.append("        #{ \"t_offset_ms\": -50,  \"action\": \"OPEN_VALVE\", \"valve\": \"LOX_MAIN\" },")
    lines.append("        #{ \"t_offset_ms\": 100,  \"action\": \"CONFIRM_PC_RISE\" },")
    lines.append("        #{ \"t_offset_ms\": 250,  \"action\": \"SAFE_IGNITER\" }")
    lines.append("    ]")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_main_ignition() {")
    lines.append("    let ladder = get_ignition_ladder();")
    lines.append("    if ladder.len() != 6 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_main_ignition() { log_info(\"[SEQUENCES::MAIN_IGNITION] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn ignition_ladder_stage_{i}() {{")
        lines.append(f"    #{{\"stage\": {i}, \"timing_ms\": -500 + {i} * 25}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "main_ignition.rhai"), "\n".join(lines))

def gen_throttle_sweep():
    lines = []
    lines.append("// Variable Thrust Throttle Sweep and Pintle Slew Profiler")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn get_throttle_profile() {")
    lines.append("    [")
    lines.append("        #{ \"time_s\": 0.0, \"throttle_pct\": 100.0 },")
    lines.append("        #{ \"time_s\": 2.0, \"throttle_pct\": 70.0 },")
    lines.append("        #{ \"time_s\": 4.0, \"throttle_pct\": 40.0 },")
    lines.append("        #{ \"time_s\": 6.0, \"throttle_pct\": 85.0 },")
    lines.append("        #{ \"time_s\": 8.0, \"throttle_pct\": 100.0 }")
    lines.append("    ]")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_throttle_sweep() {")
    lines.append("    let prof = get_throttle_profile();")
    lines.append("    if prof.len() != 5 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_throttle_sweep() { log_info(\"[SEQUENCES::THROTTLE_SWEEP] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn throttle_waypoint_{i}() {{")
        lines.append(f"    #{{\"wp\": {i}, \"target_pct\": 40.0 + {i} * 1.2}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "throttle_sweep.rhai"), "\n".join(lines))

def gen_steady_state_burn():
    lines = []
    lines.append("// Closed-Loop Chamber Pressure and Mixture Ratio PID Governor")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn govern_burn(pc_measured_bar, pc_target_bar, of_measured, of_target) {")
    lines.append("    let pc_err = pc_target_bar - pc_measured_bar;")
    lines.append("    let of_err = of_target - of_measured;")
    lines.append("    #{ \"throttle_adj\": pc_err * 0.5, \"of_adj\": of_err * 0.2 }")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_steady_state() {")
    lines.append("    let adj = govern_burn(79.0, 80.0, 3.1, 3.2);")
    lines.append("    if adj.throttle_adj <= 0.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_steady_state() { log_info(\"[SEQUENCES::STEADY_STATE] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn governor_cycle_{i}(pc) {{")
        lines.append(f"    let r = govern_burn(pc, 80.0 + {i} * 0.1, 3.2, 3.2);")
        lines.append(f"    #{{\"cycle\": {i}, \"adj\": r.throttle_adj}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "steady_state_burn.rhai"), "\n".join(lines))

def gen_planned_shutdown():
    lines = []
    lines.append("// Commanded Planned Hot-Fire Shutdown and Inerting Purge")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn get_shutdown_steps() {")
    lines.append("    [")
    lines.append("        #{ \"action\": \"CLOSE_VALVE\", \"tag\": \"FUEL_MAIN\" },")
    lines.append("        #{ \"action\": \"CLOSE_VALVE\", \"tag\": \"LOX_MAIN\" },")
    lines.append("        #{ \"action\": \"OPEN_VALVE\",  \"tag\": \"GN2_PURGE_LOX\" },")
    lines.append("        #{ \"action\": \"OPEN_VALVE\",  \"tag\": \"GN2_PURGE_FUEL\" }")
    lines.append("    ]")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_planned_shutdown() {")
    lines.append("    let steps = get_shutdown_steps();")
    lines.append("    if steps.len() != 4 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_planned_shutdown() { log_info(\"[SEQUENCES::PLANNED_SHUTDOWN] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn shutdown_timing_node_{i}() {{")
        lines.append(f"    #{{\"node\": {i}, \"delay_ms\": {i} * 10}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "planned_shutdown.rhai"), "\n".join(lines))

def gen_emergency_abort():
    lines = []
    lines.append("// Rapid Emergency Abort Execution and Deluge Activation")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn execute_emergency_shutdown() {")
    lines.append("    close_valve(\"LOX_MAIN\");")
    lines.append("    close_valve(\"FUEL_MAIN\");")
    lines.append("    open_valve(\"GN2_PURGE_LOX\");")
    lines.append("    open_valve(\"GN2_PURGE_FUEL\");")
    lines.append("    safe_igniter();")
    lines.append("    true")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_emergency_abort() {")
    lines.append("    let res = execute_emergency_shutdown();")
    lines.append("    if !res { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_emergency_abort() { log_info(\"[SEQUENCES::EMERGENCY_ABORT] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn abort_path_evaluator_{i}() {{")
        lines.append(f"    #{{\"path\": {i}, \"priority\": {i} * 2}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "emergency_abort.rhai"), "\n".join(lines))

def gen_post_fire_safing():
    lines = []
    lines.append("// Post-Fire Cryogenic Boil-Off Venting and Stand Safing")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn is_soakback_safe(manifold_temp_k, max_soakback_k) {")
    lines.append("    manifold_temp_k <= max_soakback_k")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_safing() {")
    lines.append("    let safe = is_soakback_safe(180.0, 250.0);")
    lines.append("    if !safe { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_safing() { log_info(\"[SEQUENCES::POST_FIRE_SAFING] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn thermal_safing_probe_{i}(temp_k) {{")
        lines.append(f"    let s = is_soakback_safe(temp_k, 250.0 + {i} * 1.0);")
        lines.append(f"    #{{\"probe\": {i}, \"safe\": s}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "sequences", "post_fire_safing.rhai"), "\n".join(lines))

if __name__ == "__main__":
    gen_sequence_builder()
    gen_preflight_check()
    gen_leak_check()
    gen_gn2_purge()
    gen_chilldown()
    gen_tank_press()
    gen_igniter_test()
    gen_spin_start()
    gen_main_ignition()
    gen_throttle_sweep()
    gen_steady_state_burn()
    gen_planned_shutdown()
    gen_emergency_abort()
    gen_post_fire_safing()
