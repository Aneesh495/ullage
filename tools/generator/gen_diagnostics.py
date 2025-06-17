#!/usr/bin/env python3
"""
Generator for scripts/diagnostics/*.rhai
Combustion roughness, spectral diagnostics, and sensor drift estimators
"""

import os
from common import write_rhai_file

SCRIPTS_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "scripts"))

def gen_spectral_density():
    lines = []
    lines.append("// Spectral Power Density Calculation and Discrete Bin Slicing")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn compute_psd_bin(mag_spectrum, bin_idx, sample_rate, n_fft) {")
    lines.append("    let f = (bin_idx * 1.0) * (sample_rate / (n_fft * 1.0));")
    lines.append("    let pwr = mag_spectrum[bin_idx] * mag_spectrum[bin_idx];")
    lines.append("    #{ \"freq_hz\": f, \"power\": pwr }")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_spectral_density() {")
    lines.append("    let mags = [1.0, 5.0, 2.0, 0.5];")
    lines.append("    let bin = compute_psd_bin(mags, 1, 1000.0, 4);")
    lines.append("    if (bin.power - 25.0).abs() > 1.0e-6 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_spectral_density() { log_info(\"[DIAG::SPECTRAL] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn spectral_window_{i}(val) {{")
        lines.append(f"    #{{\"band\": {i}, \"center_hz\": {i} * 250.0, \"energy\": val * (1.0 + {i} * 0.01)}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "diagnostics", "spectral_density.rhai"), "\n".join(lines))

def gen_acoustic_peaks():
    lines = []
    lines.append("// High-Frequency Acoustic Peak Detection and Quality Factor (Q)")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn compute_q_factor(f_res, f_half_lo, f_half_hi) {")
    lines.append("    let bandwidth = (f_half_hi - f_half_lo).abs();")
    lines.append("    if bandwidth <= 0.0 { return 0.0; }")
    lines.append("    f_res / bandwidth")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_acoustic_peaks() {")
    lines.append("    let q = compute_q_factor(3200.0, 3180.0, 3220.0);")
    lines.append("    if (q - 80.0).abs() > 1.0e-6 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_acoustic_peaks() { log_info(\"[DIAG::ACOUSTIC_PEAKS] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn acoustic_peak_tracker_{i}(f) {{")
        lines.append(f"    let q = compute_q_factor(f, f - 20.0, f + 20.0);")
        lines.append(f"    #{{\"tracker\": {i}, \"q\": q}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "diagnostics", "acoustic_peaks.rhai"), "\n".join(lines))

def gen_pogo_suppression():
    lines = []
    lines.append("// POGO Oscillation Coupling and Feedline Resonator Monitoring")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn pogo_susceptibility(feed_freq_hz, struct_freq_hz, delta_crit_hz) {")
    lines.append("    (feed_freq_hz - struct_freq_hz).abs() <= delta_crit_hz")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_pogo() {")
    lines.append("    let pogo = pogo_susceptibility(18.5, 19.0, 1.0);")
    lines.append("    if !pogo { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_pogo() { log_info(\"[DIAG::POGO] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn pogo_mode_node_{i}(f_struct) {{")
        lines.append(f"    let danger = pogo_susceptibility(18.0 + {i} * 0.1, f_struct, 1.0);")
        lines.append(f"    #{{\"node\": {i}, \"pogo_alert\": danger}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "diagnostics", "pogo_suppression.rhai"), "\n".join(lines))

def gen_thermal_soakback():
    lines = []
    lines.append("// Post-Shutdown Thermal Soakback Conduction Modeling")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn soakback_temp_rise_k(q_absorbed_j, thermal_mass_j_k) {")
    lines.append("    q_absorbed_j / thermal_mass_j_k")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_thermal_soakback() {")
    lines.append("    let dt = soakback_temp_rise_k(50000.0, 1000.0);")
    lines.append("    if (dt - 50.0).abs() > 1.0e-6 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_thermal_soakback() { log_info(\"[DIAG::SOAKBACK] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn thermal_soakback_zone_{i}(q) {{")
        lines.append(f"    let dt = soakback_temp_rise_k(q, 1000.0 + {i} * 50.0);")
        lines.append(f"    #{{\"zone\": {i}, \"delta_t_k\": dt}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "diagnostics", "thermal_soakback.rhai"), "\n".join(lines))

def gen_sensor_cross_check():
    lines = []
    lines.append("// Dual and Triple Redundant Sensor Cross-Check Consistency")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn cross_check_sensors(s_a, s_b, max_delta) {")
    lines.append("    (s_a - s_b).abs() <= max_delta")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_cross_check() {")
    lines.append("    let ok = cross_check_sensors(80.0, 80.8, 1.0);")
    lines.append("    if !ok { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_cross_check() { log_info(\"[DIAG::CROSS_CHECK] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn cross_check_pair_{i}(a, b) {{")
        lines.append(f"    let pass = cross_check_sensors(a, b, 1.0 + {i} * 0.05);")
        lines.append(f"    #{{\"pair\": {i}, \"pass\": pass}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "diagnostics", "sensor_cross_check.rhai"), "\n".join(lines))

def gen_drift_estimator():
    lines = []
    lines.append("// Sensor Zero-Offset and Sensitivity Drift Estimator")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn estimate_drift(current_zero_v, cal_zero_v) {")
    lines.append("    current_zero_v - cal_zero_v")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_drift() {")
    lines.append("    let d = estimate_drift(0.015, 0.010);")
    lines.append("    if (d - 0.005).abs() > 1.0e-6 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_drift() { log_info(\"[DIAG::DRIFT] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn channel_drift_history_{i}(v) {{")
        lines.append(f"    let drift = estimate_drift(v, 0.010 + {i} * 0.0001);")
        lines.append(f"    #{{\"channel\": {i}, \"drift_v\": drift}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "diagnostics", "drift_estimator.rhai"), "\n".join(lines))

def gen_combustion_roughness():
    lines = []
    lines.append("// Running Combustion Roughness Index: Delta Pc(RMS) / Pc(Mean)")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn compute_roughness_pct(pc_rms, pc_mean) {")
    lines.append("    if pc_mean <= 0.0 { return 0.0; }")
    lines.append("    (pc_rms / pc_mean) * 100.0")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_roughness() {")
    lines.append("    let r = compute_roughness_pct(1.6, 80.0);")
    lines.append("    if (r - 2.0).abs() > 1.0e-6 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_roughness() { log_info(\"[DIAG::ROUGHNESS] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn roughness_window_monitor_{i}(rms) {{")
        lines.append(f"    let rough = compute_roughness_pct(rms, 80.0 + {i} * 0.2);")
        lines.append(f"    #{{\"window\": {i}, \"roughness_pct\": rough}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "diagnostics", "combustion_roughness.rhai"), "\n".join(lines))

def gen_efficiency_tracker():
    lines = []
    lines.append("// Combustion c* and Specific Impulse Delivered Efficiency")
    lines.append("// Part of the Ullage Cryogenic Test Executive Suite")
    lines.append("")
    lines.append("fn calculate_burn_efficiency(cstar_actual, cstar_theoretical) {")
    lines.append("    (cstar_actual / cstar_theoretical) * 100.0")
    lines.append("}")
    lines.append("")
    lines.append("fn verify_efficiency() {")
    lines.append("    let eff = calculate_burn_efficiency(1750.0, 1800.0);")
    lines.append("    if eff < 95.0 || eff > 100.0 { return false; }")
    lines.append("    true")
    lines.append("}")
    lines.append("if verify_efficiency() { log_info(\"[DIAG::EFFICIENCY] Verification passed.\"); }")

    for i in range(1, 45):
        lines.append(f"fn efficiency_sample_{i}(c_act) {{")
        lines.append(f"    let e = calculate_burn_efficiency(c_act, 1800.0 + {i} * 2.0);")
        lines.append(f"    #{{\"sample\": {i}, \"efficiency_pct\": e}}")
        lines.append(f"}}")

    write_rhai_file(os.path.join(SCRIPTS_DIR, "diagnostics", "efficiency_tracker.rhai"), "\n".join(lines))

if __name__ == "__main__":
    gen_spectral_density()
    gen_acoustic_peaks()
    gen_pogo_suppression()
    gen_thermal_soakback()
    gen_sensor_cross_check()
    gen_drift_estimator()
    gen_combustion_roughness()
    gen_efficiency_tracker()
