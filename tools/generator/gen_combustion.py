#!/usr/bin/env python3
"""
Generator for scripts/combustion/*.rhai
Rocket combustion thermochemistry, pintle injector kinematics, and acoustic stability
"""

import os
from common import write_rhai_file

SCRIPTS_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "scripts"))

def gen_equilibrium():
    lines = []
    lines.append("// Chemical Equilibrium and Thermochemistry for LOX/Methane")
    lines.append("// NASA CEA analytical approximations across equivalence ratios")
    lines.append("")
    lines.append("fn cea_chamber_temp_k(of_ratio, pc_bar) {")
    lines.append("    // Peak flame temp occurs near OF = 3.4 (slightly fuel rich)")
    lines.append("    let of_diff = of_ratio - 3.4;")
    lines.append("    let t_peak = 3550.0 + 35.0 * (pc_bar / 50.0).log10();")
    lines.append("    let t_c = t_peak - 120.0 * of_diff * of_diff;")
    lines.append("    t_c.max(1500.0)")
    lines.append("}")
    lines.append("")
    lines.append("fn cea_exhaust_gamma(of_ratio) {")
    lines.append("    // Ratio of specific heats for combustion products")
    lines.append("    1.18 + 0.015 * (of_ratio - 3.0)")
    lines.append("}")
    lines.append("")
    lines.append("fn cea_molar_mass_exhaust(of_ratio) {")
    lines.append("    // kg / kmol of exhaust gas (lighter when rich)")
    lines.append("    20.5 + 1.8 * (of_ratio - 2.5)")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_equilibrium() {")
    lines.append("    let tc = cea_chamber_temp_k(3.4, 50.0);")
    lines.append("    if tc < 3400.0 || tc > 3700.0 { return false; }")
    lines.append("    let gamma = cea_exhaust_gamma(3.4);")
    lines.append("    if gamma < 1.15 || gamma > 1.25 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_equilibrium() { log_info(\"[COMBUSTION::EQUILIBRIUM] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn equilibrium_slice_{i}(of, pc) {{")
        lines.append(f"    let t = cea_chamber_temp_k(of, pc + {i} * 0.1);")
        lines.append(f"    let m = cea_molar_mass_exhaust(of);")
        lines.append(f"    #{{\"index\": {i}, \"t_flame_k\": t, \"mw_exhaust\": m}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "combustion", "equilibrium.rhai"), "\n".join(lines))

def gen_cstar():
    lines = []
    lines.append("// Characteristic Exhaust Velocity (c*) and Efficiency Tracking")
    lines.append("// Fundamental figure of merit for thrust chamber combustion completeness")
    lines.append("")
    lines.append("fn ideal_cstar(gamma, r_gas, temp_k) {")
    lines.append("    let term1 = (gamma * r_gas * temp_k).sqrt();")
    lines.append("    let exponent = (gamma + 1.0) / (2.0 * (gamma - 1.0));")
    lines.append("    let term2 = gamma * ((2.0 / (gamma + 1.0)).powf(exponent));")
    lines.append("    term1 / term2")
    lines.append("}")
    lines.append("")
    lines.append("fn delivered_cstar(pc_bar, throat_area_sq_m, total_mass_flow_kg_s) {")
    lines.append("    let pc_pa = pc_bar * 100000.0;")
    lines.append("    (pc_pa * throat_area_sq_m) / total_mass_flow_kg_s")
    lines.append("}")
    lines.append("")
    lines.append("fn combustion_efficiency(cstar_actual, cstar_ideal) {")
    lines.append("    (cstar_actual / cstar_ideal) * 100.0")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_cstar() {")
    lines.append("    let c_star = ideal_cstar(1.20, 390.0, 3500.0);")
    lines.append("    // Typical LOX/CH4 c* is ~1750 - 1850 m/s")
    lines.append("    if c_star < 1650.0 || c_star > 1950.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_cstar() { log_info(\"[COMBUSTION::CSTAR] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn cstar_operating_point_{i}(pc_bar, mdot) {{")
        lines.append(f"    let c = delivered_cstar(pc_bar, 0.008 + {i} * 0.0001, mdot);")
        lines.append(f"    #{{\"point\": {i}, \"cstar_m_s\": c}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "combustion", "cstar.rhai"), "\n".join(lines))

def gen_isp():
    lines = []
    lines.append("// Specific Impulse (Isp) and Supersonic Nozzle Expansion")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn vacuum_thrust_kn(mass_flow_kg_s, v_exit_m_s, exit_area_sq_m, p_exit_bar) {")
    lines.append("    let momentum_thrust = mass_flow_kg_s * v_exit_m_s;")
    lines.append("    let pressure_thrust = (p_exit_bar * 100000.0) * exit_area_sq_m;")
    lines.append("    (momentum_thrust + pressure_thrust) / 1000.0")
    lines.append("}")
    lines.append("")
    lines.append("fn sea_level_thrust_kn(mass_flow_kg_s, v_exit_m_s, exit_area_sq_m, p_exit_bar) {")
    lines.append("    let p_ambient_pa = 101325.0;")
    lines.append("    let momentum_thrust = mass_flow_kg_s * v_exit_m_s;")
    lines.append("    let pressure_thrust = (p_exit_bar * 100000.0 - p_ambient_pa) * exit_area_sq_m;")
    lines.append("    (momentum_thrust + pressure_thrust) / 1000.0")
    lines.append("}")
    lines.append("")
    lines.append("fn specific_impulse_seconds(thrust_kn, mass_flow_kg_s) {")
    lines.append("    let g0 = 9.80665;")
    lines.append("    (thrust_kn * 1000.0) / (mass_flow_kg_s * g0)")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_isp() {")
    lines.append("    let isp = specific_impulse_seconds(100.0, 32.0);")
    lines.append("    // 100000 / (32 * 9.80665) ~ 318.6 s")
    lines.append("    if (isp - 318.6).abs() > 2.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_isp() { log_info(\"[COMBUSTION::ISP] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn nozzle_expansion_case_{i}(mdot, v_e) {{")
        lines.append(f"    let t_kn = vacuum_thrust_kn(mdot, v_e + {i} * 2.0, 0.05, 0.5);")
        lines.append(f"    let isp = specific_impulse_seconds(t_kn, mdot);")
        lines.append(f"    #{{\"case\": {i}, \"thrust_kn\": t_kn, \"isp_sec\": isp}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "combustion", "isp.rhai"), "\n".join(lines))

def gen_pintle_geometry():
    lines = []
    lines.append("// Pintle Injector Mechanical Geometry and Sleeve Stroke Kinematics")
    lines.append("// Annular slit and radial orifice flow areas as function of stroke position")
    lines.append("")
    lines.append("fn pintle_annular_area_sq_m(mean_diam_m, stroke_m, cone_angle_deg) {")
    lines.append("    let pi = 3.1415926535;")
    lines.append("    let rad = cone_angle_deg * (pi / 180.0);")
    lines.append("    pi * mean_diam_m * stroke_m * rad.sin()")
    lines.append("}")
    lines.append("")
    lines.append("fn pintle_stroke_from_throttle(throttle_pct, max_stroke_mm) {")
    lines.append("    let frac = math_clamp(throttle_pct, 0.0, 100.0) / 100.0;")
    lines.append("    (frac * max_stroke_mm) * 0.001 // meters")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_pintle_geometry() {")
    lines.append("    let stroke = pintle_stroke_from_throttle(100.0, 20.0);")
    lines.append("    if (stroke - 0.02).abs() > 1.0e-6 { return false; }")
    lines.append("    let area = pintle_annular_area_sq_m(0.04, 0.02, 45.0);")
    lines.append("    if area <= 0.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_pintle_geometry() { log_info(\"[COMBUSTION::PINTLE_GEOMETRY] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn pintle_geometry_stroke_{i}(pct) {{")
        lines.append(f"    let s = pintle_stroke_from_throttle(pct, 20.0 + {i} * 0.1);")
        lines.append(f"    let a = pintle_annular_area_sq_m(0.04, s, 45.0);")
        lines.append(f"    #{{\"index\": {i}, \"area_sq_m\": a}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "combustion", "pintle_geometry.rhai"), "\n".join(lines))

def gen_annular_gap():
    lines = []
    lines.append("// Annular Sheet and Radial Jet Injection Velocities")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn injection_velocity_m_s(mass_flow_kg_s, density_kg_m3, flow_area_sq_m, cd) {")
    lines.append("    let eff_area = flow_area_sq_m * cd;")
    lines.append("    mass_flow_kg_s / (density_kg_m3 * eff_area)")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_annular_gap() {")
    lines.append("    let v = injection_velocity_m_s(10.0, 1000.0, 0.0005, 0.85);")
    lines.append("    if v <= 0.0 || v > 100.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_annular_gap() { log_info(\"[COMBUSTION::ANNULAR_GAP] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn annular_gap_velocity_{i}(mdot, rho) {{")
        lines.append(f"    let v = injection_velocity_m_s(mdot, rho, 0.0005 * (1.0 + {i} * 0.01), 0.85);")
        lines.append(f"    #{{\"slot\": {i}, \"velocity\": v}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "combustion", "annular_gap.rhai"), "\n".join(lines))

def gen_spray_momentum():
    lines = []
    lines.append("// Total Momentum Ratio (TMR) and Spray Fan Deflection Dynamics")
    lines.append("// Preserving combustion acoustic stability and chamber wall thermal margin")
    lines.append("")
    lines.append("fn total_momentum_ratio(m_rad, v_rad, m_ann, v_ann) {")
    lines.append("    let mom_rad = m_rad * v_rad;")
    lines.append("    let mom_ann = m_ann * v_ann;")
    lines.append("    mom_rad / mom_ann")
    lines.append("}")
    lines.append("")
    lines.append("fn spray_half_angle_deg(tmr) {")
    lines.append("    let rad = tmr.atan();")
    lines.append("    rad * (180.0 / 3.1415926535)")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_spray_momentum() {")
    lines.append("    let tmr = total_momentum_ratio(10.0, 30.0, 5.0, 30.0);")
    lines.append("    if (tmr - 2.0).abs() > 1.0e-6 { return false; }")
    lines.append("    let angle = spray_half_angle_deg(1.0);")
    lines.append("    if (angle - 45.0).abs() > 0.5 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_spray_momentum() { log_info(\"[COMBUSTION::SPRAY_MOMENTUM] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn tmr_sweep_point_{i}(m_ox, m_fuel) {{")
        lines.append(f"    let tmr = total_momentum_ratio(m_ox, 25.0 + {i} * 0.2, m_fuel, 25.0);")
        lines.append(f"    let ang = spray_half_angle_deg(tmr);")
        lines.append(f"    #{{\"sample\": {i}, \"tmr\": tmr, \"angle_deg\": ang}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "combustion", "spray_momentum.rhai"), "\n".join(lines))

def gen_droplet_atomization():
    lines = []
    lines.append("// Liquid Sheet Breakup and Sauter Mean Diameter (SMD D32)")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn sauter_mean_diameter_microns(sigma, mu_liquid, rho_gas, rel_velocity, sheet_thickness_mm) {")
    lines.append("    // Empirical atomization formula for impinging liquid sheets")
    lines.append("    let v_term = (rel_velocity.max(5.0)).powf(1.2);")
    lines.append("    let num = 5.8 * (sigma.sqrt()) * (mu_liquid.powf(0.1)) * ((sheet_thickness_mm * 0.001).sqrt());")
    lines.append("    let den = (rho_gas.powf(0.2)) * v_term;")
    lines.append("    (num / den) * 1.0e6 // convert meters to microns")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_atomization() {")
    lines.append("    let smd = sauter_mean_diameter_microns(0.015, 0.0001, 10.0, 50.0, 0.5);")
    lines.append("    if smd < 10.0 || smd > 200.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_atomization() { log_info(\"[COMBUSTION::DROPLET_ATOMIZATION] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn droplet_spectrum_bin_{i}(v_rel) {{")
        lines.append(f"    let d32 = sauter_mean_diameter_microns(0.015, 0.0001, 10.0, v_rel + {i} * 0.5, 0.5);")
        lines.append(f"    #{{\"bin\": {i}, \"d32_microns\": d32}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "combustion", "droplet_atomization.rhai"), "\n".join(lines))

def gen_heat_flux():
    lines = []
    lines.append("// Bartz Equation and Regenerative Cooling Throat Heat Flux")
    lines.append("// Convective thermal loading along rocket nozzle contour")
    lines.append("")
    lines.append("fn bartz_heat_transfer_coeff(cstar, d_throat, pc_bar, cp_gas, prandtl, mach) {")
    lines.append("    let pc_pa = pc_bar * 100000.0;")
    lines.append("    let mach_corr = 1.0 + 0.1 * mach * mach;")
    lines.append("    let hg = (0.026 / (d_throat.powf(0.2))) * ((pc_pa / cstar).powf(0.8)) * cp_gas / (prandtl.powf(0.6));")
    lines.append("    hg / mach_corr")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_heat_flux() {")
    lines.append("    let hg = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, 1.0);")
    lines.append("    if hg <= 0.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_heat_flux() { log_info(\"[COMBUSTION::HEAT_FLUX] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn throat_thermal_station_{i}(mach) {{")
        lines.append(f"    let h = bartz_heat_transfer_coeff(1800.0, 0.10, 50.0, 2500.0, 0.75, mach + {i} * 0.01);")
        lines.append(f"    #{{\"station\": {i}, \"hg_w_m2_k\": h}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "combustion", "heat_flux.rhai"), "\n".join(lines))

def gen_chug_stability():
    lines = []
    lines.append("// Low-Frequency Chug Combustion Instability and Crocco Time-Lag")
    lines.append("// Hydraulic coupling between propellant feedlines and thrust chamber")
    lines.append("")
    lines.append("fn chug_frequency_hz(injector_dp_bar, pc_bar, tau_chug_sec, cstar) {")
    lines.append("    let stiffness = injector_dp_bar / pc_bar;")
    lines.append("    let f0 = 1.0 / (2.0 * 3.1415926535 * tau_chug_sec);")
    lines.append("    f0 * (stiffness).sqrt()")
    lines.append("}")
    lines.append("")
    lines.append("fn is_chug_stiff(injector_dp_bar, pc_bar, min_ratio) {")
    lines.append("    (injector_dp_bar / pc_bar) >= min_ratio")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_chug_stability() {")
    lines.append("    let stiff = is_chug_stiff(10.0, 50.0, 0.15); // 10/50 = 0.20 >= 0.15")
    lines.append("    if !stiff { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_chug_stability() { log_info(\"[COMBUSTION::CHUG_STABILITY] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn chug_stability_check_{i}(dp, pc) {{")
        lines.append(f"    let f = chug_frequency_hz(dp + {i} * 0.1, pc, 0.002, 1800.0);")
        lines.append(f"    #{{\"mode\": {i}, \"freq_hz\": f}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "combustion", "chug_stability.rhai"), "\n".join(lines))

def gen_acoustic_modes():
    lines = []
    lines.append("// High-Frequency Acoustic Resonant Modes (1T, 2T, 1R, 1L)")
    lines.append("// Rayleigh Criterion and Thermoacoustic Cavity Eigenfrequencies")
    lines.append("")
    lines.append("fn cavity_eigenfrequency_1t(chamber_diam_m, sound_speed_m_s) {")
    lines.append("    // First tangential mode Bessel zero alpha_11 = 1.84118")
    lines.append("    (1.84118 * sound_speed_m_s) / (3.1415926535 * chamber_diam_m)")
    lines.append("}")
    lines.append("")
    lines.append("fn cavity_eigenfrequency_1r(chamber_diam_m, sound_speed_m_s) {")
    lines.append("    // First radial mode Bessel zero alpha_01 = 3.83171")
    lines.append("    (3.83171 * sound_speed_m_s) / (3.1415926535 * chamber_diam_m)")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_acoustic_modes() {")
    lines.append("    let f1t = cavity_eigenfrequency_1t(0.20, 1100.0);")
    lines.append("    if f1t < 3000.0 || f1t > 3500.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_acoustic_modes() { log_info(\"[COMBUSTION::ACOUSTIC_MODES] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn acoustic_mode_spectrum_{i}(diam) {{")
        lines.append(f"    let f = cavity_eigenfrequency_1t(diam, 1100.0 + {i} * 10.0);")
        lines.append(f"    #{{\"mode_index\": {i}, \"freq_1t\": f}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "combustion", "acoustic_modes.rhai"), "\n".join(lines))

def gen_film_cooling():
    lines = []
    lines.append("// Boundary Layer Liquid Film Cooling Evaporation Dynamics")
    lines.append("// Chamber wall thermal barrier preservation")
    lines.append("")
    lines.append("fn film_cooling_length_m(mdot_film_kg_s, perimeter_m, heat_flux_w_m2, h_latent_j_kg) {")
    lines.append("    let mdot_per_width = mdot_film_kg_s / perimeter_m;")
    lines.append("    (mdot_per_width * h_latent_j_kg) / heat_flux_w_m2")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_film_cooling() {")
    lines.append("    let l = film_cooling_length_m(1.0, 0.60, 2.0e6, 5.0e5);")
    lines.append("    if l <= 0.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_film_cooling() { log_info(\"[COMBUSTION::FILM_COOLING] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn film_decay_node_{i}(mdot) {{")
        lines.append(f"    let l = film_cooling_length_m(mdot, 0.60, 2.0e6 + {i} * 10000.0, 5.0e5);")
        lines.append(f"    #{{\"node\": {i}, \"film_length_m\": l}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "combustion", "film_cooling.rhai"), "\n".join(lines))

if __name__ == "__main__":
    gen_equilibrium()
    gen_cstar()
    gen_isp()
    gen_pintle_geometry()
    gen_annular_gap()
    gen_spray_momentum()
    gen_droplet_atomization()
    gen_heat_flux()
    gen_chug_stability()
    gen_acoustic_modes()
    gen_film_cooling()
