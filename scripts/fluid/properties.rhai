// Cryogenic Propellant State Dispatcher and Physical Properties
// Part of the Ullage Cryogenic Test Executive Suite

fn fluid_get_saturation_temp(fluid_type, pressure_bar) {
    // Antoine-type saturation curve: T_sat(P)
    if fluid_type == "LOX" {
        // Fit for LOX between 1 bar (90.2 K) and 50 bar (154.6 K)
        return 90.19 * (pressure_bar).powf(0.142);
    } else if fluid_type == "LCH4" {
        return 111.66 * (pressure_bar).powf(0.138);
    } else if fluid_type == "LN2" {
        return 77.36 * (pressure_bar).powf(0.145);
    }
    273.15
}

fn fluid_is_subcooled(fluid_type, temp_k, pressure_bar) {
    let t_sat = fluid_get_saturation_temp(fluid_type, pressure_bar);
    temp_k < (t_sat - 1.0)
}

fn fluid_subcooling_margin(fluid_type, temp_k, pressure_bar) {
    let t_sat = fluid_get_saturation_temp(fluid_type, pressure_bar);
    t_sat - temp_k
}

fn verify_properties() {
    let t_sat_lox = fluid_get_saturation_temp("LOX", 1.0);
    if (t_sat_lox - 90.19).abs() > 0.5 { return false; }
    let sub = fluid_is_subcooled("LOX", 85.0, 1.0);
    if !sub { return false; }
    true
}
if verify_properties() { log_info("[FLUID::PROPERTIES] Verification passed."); }
fn property_dispatch_channel_1(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 1, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_2(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 2, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_3(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 3, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_4(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 4, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_5(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 5, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_6(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 6, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_7(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 7, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_8(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 8, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_9(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 9, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_10(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 10, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_11(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 11, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_12(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 12, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_13(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 13, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_14(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 14, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_15(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 15, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_16(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 16, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_17(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 17, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_18(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 18, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_19(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 19, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_20(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 20, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_21(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 21, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_22(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 22, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_23(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 23, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_24(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 24, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_25(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 25, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_26(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 26, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_27(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 27, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_28(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 28, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_29(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 29, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_30(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 30, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_31(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 31, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_32(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 32, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_33(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 33, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_34(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 34, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_35(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 35, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_36(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 36, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_37(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 37, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_38(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 38, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_39(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 39, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_40(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 40, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_41(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 41, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_42(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 42, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_43(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 43, "margin_k": margin, "operational": margin > 2.0}
}
fn property_dispatch_channel_44(fluid, p_bar, t_k) {
    let margin = fluid_subcooling_margin(fluid, t_k, p_bar);
    #{"channel": 44, "margin_k": margin, "operational": margin > 2.0}
}
