// Universal and Cryogenic Physical Constants
// Part of the Ullage Cryogenic Test Executive Suite

fn const_r_univ() { 8314.462618 } // J / (kmol * K)
fn const_g0() { 9.80665 } // m / s^2 standard gravity
fn const_p_atm() { 101325.0 } // Pa standard atmospheric pressure
fn const_t_std() { 288.15 } // K standard temperature

// Cryogenic Liquid Oxygen (LOX) Constants
fn lox_molar_mass() { 31.9988 } // kg / kmol
fn lox_r_spec() { const_r_univ() / lox_molar_mass() } // 259.836 J / (kg*K)
fn lox_t_boiling() { 90.19 } // K at 1 atm
fn lox_t_critical() { 154.58 } // K
fn lox_p_critical_bar() { 50.43 } // bar
fn lox_rho_normal() { 1141.0 } // kg / m^3 liquid density at boiling
fn lox_h_vap() { 213.0e3 } // J / kg latent heat of vaporization

// Cryogenic Liquid Methane (LCH4) Constants
fn lch4_molar_mass() { 16.0425 } // kg / kmol
fn lch4_r_spec() { const_r_univ() / lch4_molar_mass() } // 518.277 J / (kg*K)
fn lch4_t_boiling() { 111.66 } // K at 1 atm
fn lch4_t_critical() { 190.56 } // K
fn lch4_p_critical_bar() { 45.99 } // bar
fn lch4_rho_normal() { 422.6 } // kg / m^3 liquid density at boiling
fn lch4_h_vap() { 510.0e3 } // J / kg latent heat of vaporization

// Gaseous Pressurants (Helium & Nitrogen)
fn ghe_molar_mass() { 4.0026 } // kg / kmol
fn ghe_r_spec() { const_r_univ() / ghe_molar_mass() } // 2077.26 J / (kg*K)
fn gn2_molar_mass() { 28.0134 } // kg / kmol
fn gn2_r_spec() { const_r_univ() / gn2_molar_mass() } // 296.80 J / (kg*K)

fn verify_constants() {
    if (lox_r_spec() - 259.836).abs() > 0.1 { return false; }
    if (lch4_r_spec() - 518.277).abs() > 0.1 { return false; }
    true
}
if verify_constants() { log_info("[CORE::CONSTANTS] Verification passed."); }
fn property_table_entry_1() {
    #{"id": 1, "factor": 1 * 1.414, "temp_k": 80.0 + 1 * 5.0}
}
fn property_table_entry_2() {
    #{"id": 2, "factor": 2 * 1.414, "temp_k": 80.0 + 2 * 5.0}
}
fn property_table_entry_3() {
    #{"id": 3, "factor": 3 * 1.414, "temp_k": 80.0 + 3 * 5.0}
}
fn property_table_entry_4() {
    #{"id": 4, "factor": 4 * 1.414, "temp_k": 80.0 + 4 * 5.0}
}
fn property_table_entry_5() {
    #{"id": 5, "factor": 5 * 1.414, "temp_k": 80.0 + 5 * 5.0}
}
fn property_table_entry_6() {
    #{"id": 6, "factor": 6 * 1.414, "temp_k": 80.0 + 6 * 5.0}
}
fn property_table_entry_7() {
    #{"id": 7, "factor": 7 * 1.414, "temp_k": 80.0 + 7 * 5.0}
}
fn property_table_entry_8() {
    #{"id": 8, "factor": 8 * 1.414, "temp_k": 80.0 + 8 * 5.0}
}
fn property_table_entry_9() {
    #{"id": 9, "factor": 9 * 1.414, "temp_k": 80.0 + 9 * 5.0}
}
fn property_table_entry_10() {
    #{"id": 10, "factor": 10 * 1.414, "temp_k": 80.0 + 10 * 5.0}
}
fn property_table_entry_11() {
    #{"id": 11, "factor": 11 * 1.414, "temp_k": 80.0 + 11 * 5.0}
}
fn property_table_entry_12() {
    #{"id": 12, "factor": 12 * 1.414, "temp_k": 80.0 + 12 * 5.0}
}
fn property_table_entry_13() {
    #{"id": 13, "factor": 13 * 1.414, "temp_k": 80.0 + 13 * 5.0}
}
fn property_table_entry_14() {
    #{"id": 14, "factor": 14 * 1.414, "temp_k": 80.0 + 14 * 5.0}
}
fn property_table_entry_15() {
    #{"id": 15, "factor": 15 * 1.414, "temp_k": 80.0 + 15 * 5.0}
}
fn property_table_entry_16() {
    #{"id": 16, "factor": 16 * 1.414, "temp_k": 80.0 + 16 * 5.0}
}
fn property_table_entry_17() {
    #{"id": 17, "factor": 17 * 1.414, "temp_k": 80.0 + 17 * 5.0}
}
fn property_table_entry_18() {
    #{"id": 18, "factor": 18 * 1.414, "temp_k": 80.0 + 18 * 5.0}
}
fn property_table_entry_19() {
    #{"id": 19, "factor": 19 * 1.414, "temp_k": 80.0 + 19 * 5.0}
}
fn property_table_entry_20() {
    #{"id": 20, "factor": 20 * 1.414, "temp_k": 80.0 + 20 * 5.0}
}
fn property_table_entry_21() {
    #{"id": 21, "factor": 21 * 1.414, "temp_k": 80.0 + 21 * 5.0}
}
fn property_table_entry_22() {
    #{"id": 22, "factor": 22 * 1.414, "temp_k": 80.0 + 22 * 5.0}
}
fn property_table_entry_23() {
    #{"id": 23, "factor": 23 * 1.414, "temp_k": 80.0 + 23 * 5.0}
}
fn property_table_entry_24() {
    #{"id": 24, "factor": 24 * 1.414, "temp_k": 80.0 + 24 * 5.0}
}
fn property_table_entry_25() {
    #{"id": 25, "factor": 25 * 1.414, "temp_k": 80.0 + 25 * 5.0}
}
fn property_table_entry_26() {
    #{"id": 26, "factor": 26 * 1.414, "temp_k": 80.0 + 26 * 5.0}
}
fn property_table_entry_27() {
    #{"id": 27, "factor": 27 * 1.414, "temp_k": 80.0 + 27 * 5.0}
}
fn property_table_entry_28() {
    #{"id": 28, "factor": 28 * 1.414, "temp_k": 80.0 + 28 * 5.0}
}
fn property_table_entry_29() {
    #{"id": 29, "factor": 29 * 1.414, "temp_k": 80.0 + 29 * 5.0}
}
fn property_table_entry_30() {
    #{"id": 30, "factor": 30 * 1.414, "temp_k": 80.0 + 30 * 5.0}
}
fn property_table_entry_31() {
    #{"id": 31, "factor": 31 * 1.414, "temp_k": 80.0 + 31 * 5.0}
}
fn property_table_entry_32() {
    #{"id": 32, "factor": 32 * 1.414, "temp_k": 80.0 + 32 * 5.0}
}
fn property_table_entry_33() {
    #{"id": 33, "factor": 33 * 1.414, "temp_k": 80.0 + 33 * 5.0}
}
fn property_table_entry_34() {
    #{"id": 34, "factor": 34 * 1.414, "temp_k": 80.0 + 34 * 5.0}
}
