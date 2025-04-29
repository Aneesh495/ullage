#!/usr/bin/env python3
"""
Generator for scripts/turbomachinery/*.rhai
Cryogenic turbopump hydraulics, inducer cavitation, and rotordynamics
"""

import os
from common import write_rhai_file

SCRIPTS_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "scripts"))

def gen_pump_hydraulics():
    lines = []
    lines.append("// Cryogenic Turbopump Impeller Hydraulics and Euler Head Rise")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn euler_head_rise_m(u2_m_s, v_theta2_m_s, u1_m_s, v_theta1_m_s) {")
    lines.append("    let g0 = 9.80665;")
    lines.append("    (u2_m_s * v_theta2_m_s - u1_m_s * v_theta1_m_s) / g0")
    lines.append("}")
    lines.append("")
    lines.append("fn pump_pressure_rise_bar(rho_kg_m3, head_rise_m, hydraulic_eff) {")
    lines.append("    let g0 = 9.80665;")
    lines.append("    let delta_p_pa = rho_kg_m3 * g0 * head_rise_m * hydraulic_eff;")
    lines.append("    delta_p_pa / 100000.0")
    lines.append("}")
    lines.append("")
    lines.append("fn pump_hydraulic_power_kw(mass_flow_kg_s, delta_p_bar, rho, eff) {")
    lines.append("    let delta_p_pa = delta_p_bar * 100000.0;")
    lines.append("    let vol_flow_m3_s = mass_flow_kg_s / rho;")
    lines.append("    ((vol_flow_m3_s * delta_p_pa) / eff) / 1000.0")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_pump_hydraulics() {")
    lines.append("    let h = euler_head_rise_m(200.0, 150.0, 50.0, 0.0);")
    lines.append("    if h <= 0.0 { return false; }")
    lines.append("    let dp = pump_pressure_rise_bar(1141.0, 1000.0, 0.75);")
    lines.append("    if dp < 50.0 || dp > 150.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_pump_hydraulics() { log_info(\"[TURBO::PUMP_HYDRAULICS] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn pump_performance_curve_{i}(flow_m3_s) {{")
        lines.append(f"    let dp = 100.0 - 50.0 * (flow_m3_s * (1.0 + {i} * 0.01)).powf(2.0);")
        lines.append(f"    #{{\"curve\": {i}, \"head_bar\": dp}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "turbomachinery", "pump_hydraulics.rhai"), "\n".join(lines))

def gen_turbine_aerodynamics():
    lines = []
    lines.append("// Axial Gas Turbine Aerodynamics and Expansion Power")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn turbine_spouting_velocity(delta_h_isentropic_j_kg) {")
    lines.append("    (2.0 * delta_h_isentropic_j_kg).sqrt()")
    lines.append("}")
    lines.append("")
    lines.append("fn turbine_shaft_power_kw(mass_flow_kg_s, delta_h_is, eff) {")
    lines.append("    (mass_flow_kg_s * delta_h_is * eff) / 1000.0")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_turbine() {")
    lines.append("    let c0 = turbine_spouting_velocity(200000.0);")
    lines.append("    if c0 < 600.0 || c0 > 700.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_turbine() { log_info(\"[TURBO::TURBINE_AERO] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn turbine_stage_power_{i}(mdot) {{")
        lines.append(f"    let p = turbine_shaft_power_kw(mdot, 200000.0 + {i} * 1000.0, 0.72);")
        lines.append(f"    #{{\"stage\": {i}, \"power_kw\": p}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "turbomachinery", "turbine_aerodynamics.rhai"), "\n".join(lines))

def gen_npsh_margin():
    lines = []
    lines.append("// Net Positive Suction Head (NPSH) and Suction Specific Speed")
    lines.append("// Cryogenic pump suction limit criteria")
    lines.append("")
    lines.append("fn npsh_available_m(p_inlet_bar, p_vapor_bar, rho, v_inlet_m_s) {")
    lines.append("    let g0 = 9.80665;")
    lines.append("    let delta_p_pa = (p_inlet_bar - p_vapor_bar) * 100000.0;")
    lines.append("    let static_head = delta_p_pa / (rho * g0);")
    lines.append("    let dynamic_head = (v_inlet_m_s * v_inlet_m_s) / (2.0 * g0);")
    lines.append("    static_head + dynamic_head")
    lines.append("}")
    lines.append("")
    lines.append("fn npsh_margin_ratio(npsh_a, npsh_r) {")
    lines.append("    npsh_a / npsh_r")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_npsh() {")
    lines.append("    let npsha = npsh_available_m(4.0, 1.2, 1141.0, 6.0);")
    lines.append("    if npsha <= 0.0 { return false; }")
    lines.append("    let ratio = npsh_margin_ratio(25.0, 15.0);")
    lines.append("    if ratio < 1.5 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_npsh() { log_info(\"[TURBO::NPSH_MARGIN] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn npsh_monitor_node_{i}(p_in) {{")
        lines.append(f"    let npsha = npsh_available_m(p_in + {i} * 0.05, 1.2, 1141.0, 6.0);")
        lines.append(f"    #{{\"node\": {i}, \"npsh_m\": npsha}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "turbomachinery", "npsh_margin.rhai"), "\n".join(lines))

def gen_inducer_cavitation():
    lines = []
    lines.append("// Helical Inducer Cavitation Inception and Breakdown")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn inducer_cavitation_number(p_in_bar, p_vapor_bar, rho, w1_rel_vel_m_s) {")
    lines.append("    let delta_p_pa = (p_in_bar - p_vapor_bar) * 100000.0;")
    lines.append("    let dynamic_p = 0.5 * rho * w1_rel_vel_m_s * w1_rel_vel_m_s;")
    lines.append("    delta_p_pa / dynamic_p")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_inducer() {")
    lines.append("    let sigma = inducer_cavitation_number(4.0, 1.0, 1141.0, 50.0);")
    lines.append("    if sigma <= 0.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_inducer() { log_info(\"[TURBO::INDUCER_CAVITATION] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn inducer_blade_element_{i}(w_rel) {{")
        lines.append(f"    let sig = inducer_cavitation_number(4.0, 1.0, 1141.0, w_rel + {i} * 0.5);")
        lines.append(f"    #{{\"blade\": {i}, \"sigma\": sig}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "turbomachinery", "inducer_cavitation.rhai"), "\n".join(lines))

def gen_shaft_dynamics():
    lines = []
    lines.append("// Rotor Shaft Whirling and Critical Speeds (Jeffcott Model)")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn critical_whirling_speed_rpm(bearing_stiffness_n_m, rotor_mass_kg) {")
    lines.append("    let omega_rad_s = (bearing_stiffness_n_m / rotor_mass_kg).sqrt();")
    lines.append("    omega_rad_s * (60.0 / (2.0 * 3.1415926535))")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_shaft_dynamics() {")
    lines.append("    let rpm = critical_whirling_speed_rpm(1.0e8, 12.0);")
    lines.append("    if rpm < 20000.0 || rpm > 40000.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_shaft_dynamics() { log_info(\"[TURBO::SHAFT_DYNAMICS] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn rotor_eigenvalue_node_{i}(stiffness) {{")
        lines.append(f"    let r = critical_whirling_speed_rpm(stiffness + {i} * 1.0e6, 12.0);")
        lines.append(f"    #{{\"mode\": {i}, \"crit_rpm\": r}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "turbomachinery", "shaft_dynamics.rhai"), "\n".join(lines))

def gen_bearing_vibration():
    lines = []
    lines.append("// Rolling Element Bearing Fault Frequencies and ISO 10816 Vibration")
    lines.append("// BPFO, BPFI, BSF, and FTF spectral analysis")
    lines.append("")
    lines.append("fn bearing_fault_frequencies(rpm, n_balls, ball_diam_mm, pitch_diam_mm, contact_angle_deg) {")
    lines.append("    let fr = rpm / 60.0;")
    lines.append("    let gamma = (ball_diam_mm / pitch_diam_mm) * (contact_angle_deg * 0.01745329).cos();")
    lines.append("    let bpfo = 0.5 * (n_balls * 1.0) * fr * (1.0 - gamma);")
    lines.append("    let bpfi = 0.5 * (n_balls * 1.0) * fr * (1.0 + gamma);")
    lines.append("    #{ \"bpfo_hz\": bpfo, \"bpfi_hz\": bpfi, \"shaft_hz\": fr }")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_bearing_vibration() {")
    lines.append("    let f = bearing_fault_frequencies(36000.0, 10, 8.0, 45.0, 15.0);")
    lines.append("    if f.shaft_hz != 600.0 { return false; }")
    lines.append("    if f.bpfo_hz <= 0.0 || f.bpfi_hz <= 0.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_bearing_vibration() { log_info(\"[TURBO::BEARING_VIBRATION] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn bearing_track_point_{i}(rpm) {{")
        lines.append(f"    let b = bearing_fault_frequencies(rpm + {i} * 100.0, 10, 8.0, 45.0, 15.0);")
        lines.append(f"    #{{\"point\": {i}, \"bpfo\": b.bpfo_hz}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "turbomachinery", "bearing_vibration.rhai"), "\n".join(lines))

def gen_seal_leakage():
    lines = []
    lines.append("// Labyrinth and Floating Ring Seal Cryogenic Leakage Estimation")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn labyrinth_seal_leakage_kg_s(p1_bar, p2_bar, diam_m, clearance_m, n_teeth, rho) {")
    lines.append("    let p1_pa = p1_bar * 100000.0;")
    lines.append("    let p2_pa = p2_bar * 100000.0;")
    lines.append("    let area = 3.1415926535 * diam_m * clearance_m;")
    lines.append("    let dp = (p1_pa - p2_pa).max(0.0);")
    lines.append("    (0.65 * area * (2.0 * rho * dp).sqrt()) / (n_teeth * 1.0).sqrt()")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_seal_leakage() {")
    lines.append("    let leak = labyrinth_seal_leakage_kg_s(50.0, 5.0, 0.08, 0.0001, 8, 1141.0);")
    lines.append("    if leak <= 0.0 || leak > 1.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_seal_leakage() { log_info(\"[TURBO::SEAL_LEAKAGE] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn seal_cavity_leak_{i}(p_in) {{")
        lines.append(f"    let l = labyrinth_seal_leakage_kg_s(p_in + {i} * 0.2, 5.0, 0.08, 0.0001, 8, 1141.0);")
        lines.append(f"    #{{\"cavity\": {i}, \"leak_kg_s\": l}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "turbomachinery", "seal_leakage.rhai"), "\n".join(lines))

def gen_spin_start():
    lines = []
    lines.append("// Turbine Gaseous Spin Start Spool-Up Transient Dynamics")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn spin_start_acceleration(starter_torque_nm, pump_drag_torque_nm, rotor_polar_inertia_kg_m2) {")
    lines.append("    let net_torque = starter_torque_nm - pump_drag_torque_nm;")
    lines.append("    net_torque / rotor_polar_inertia_kg_m2 // rad/s^2")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_spin_start() {")
    lines.append("    let alpha = spin_start_acceleration(150.0, 30.0, 0.05);")
    lines.append("    if (alpha - 2400.0).abs() > 1.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_spin_start() { log_info(\"[TURBO::SPIN_START] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn spin_start_timestep_{i}(torque) {{")
        lines.append(f"    let a = spin_start_acceleration(torque, 30.0 + {i} * 0.5, 0.05);")
        lines.append(f"    #{{\"step\": {i}, \"alpha_rad_s2\": a}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "turbomachinery", "spin_start.rhai"), "\n".join(lines))

def gen_power_balance():
    lines = []
    lines.append("// Turbopump Shaft Power Matching and Gas Generator Flow Budget")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn turbopump_power_balance(power_ox_kw, power_fuel_kw, mech_loss_kw, turbine_power_kw) {")
    lines.append("    let total_required = power_ox_kw + power_fuel_kw + mech_loss_kw;")
    lines.append("    turbine_power_kw - total_required")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_power_balance() {")
    lines.append("    let bal = turbopump_power_balance(1500.0, 1000.0, 50.0, 2600.0);")
    lines.append("    if (bal - 50.0).abs() > 1.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_power_balance() { log_info(\"[TURBO::POWER_BALANCE] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn power_balance_operating_point_{i}(p_ox) {{")
        lines.append(f"    let b = turbopump_power_balance(p_ox + {i} * 10.0, 1000.0, 50.0, 2600.0);")
        lines.append(f"    #{{\"pt\": {i}, \"power_residual_kw\": b}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "turbomachinery", "power_balance.rhai"), "\n".join(lines))

if __name__ == "__main__":
    gen_pump_hydraulics()
    gen_turbine_aerodynamics()
    gen_npsh_margin()
    gen_inducer_cavitation()
    gen_shaft_dynamics()
    gen_bearing_vibration()
    gen_seal_leakage()
    gen_spin_start()
    gen_power_balance()
