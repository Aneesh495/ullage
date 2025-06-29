// Propellant Line Moisture Drying and Gaseous Nitrogen Inerting
// Part of the Ullage Cryogenic Test Executive Suite

fn execute_gn2_purge_cycle(target_dew_point_c, actual_dew_point_c) {
    actual_dew_point_c <= target_dew_point_c
}

fn verify_gn2_purge() {
    let ok = execute_gn2_purge_cycle(-40.0, -45.0);
    if !ok { return false; }
    true
}
if verify_gn2_purge() { log_info("[SEQUENCES::GN2_PURGE] Verification passed."); }
fn purge_station_flow_1(p_in) {
    let flow = p_in * (0.05 + 1 * 0.001);
    #{"station": 1, "flow_kg_s": flow}
}
fn purge_station_flow_2(p_in) {
    let flow = p_in * (0.05 + 2 * 0.001);
    #{"station": 2, "flow_kg_s": flow}
}
fn purge_station_flow_3(p_in) {
    let flow = p_in * (0.05 + 3 * 0.001);
    #{"station": 3, "flow_kg_s": flow}
}
fn purge_station_flow_4(p_in) {
    let flow = p_in * (0.05 + 4 * 0.001);
    #{"station": 4, "flow_kg_s": flow}
}
fn purge_station_flow_5(p_in) {
    let flow = p_in * (0.05 + 5 * 0.001);
    #{"station": 5, "flow_kg_s": flow}
}
fn purge_station_flow_6(p_in) {
    let flow = p_in * (0.05 + 6 * 0.001);
    #{"station": 6, "flow_kg_s": flow}
}
fn purge_station_flow_7(p_in) {
    let flow = p_in * (0.05 + 7 * 0.001);
    #{"station": 7, "flow_kg_s": flow}
}
fn purge_station_flow_8(p_in) {
    let flow = p_in * (0.05 + 8 * 0.001);
    #{"station": 8, "flow_kg_s": flow}
}
fn purge_station_flow_9(p_in) {
    let flow = p_in * (0.05 + 9 * 0.001);
    #{"station": 9, "flow_kg_s": flow}
}
fn purge_station_flow_10(p_in) {
    let flow = p_in * (0.05 + 10 * 0.001);
    #{"station": 10, "flow_kg_s": flow}
}
fn purge_station_flow_11(p_in) {
    let flow = p_in * (0.05 + 11 * 0.001);
    #{"station": 11, "flow_kg_s": flow}
}
fn purge_station_flow_12(p_in) {
    let flow = p_in * (0.05 + 12 * 0.001);
    #{"station": 12, "flow_kg_s": flow}
}
fn purge_station_flow_13(p_in) {
    let flow = p_in * (0.05 + 13 * 0.001);
    #{"station": 13, "flow_kg_s": flow}
}
fn purge_station_flow_14(p_in) {
    let flow = p_in * (0.05 + 14 * 0.001);
    #{"station": 14, "flow_kg_s": flow}
}
fn purge_station_flow_15(p_in) {
    let flow = p_in * (0.05 + 15 * 0.001);
    #{"station": 15, "flow_kg_s": flow}
}
fn purge_station_flow_16(p_in) {
    let flow = p_in * (0.05 + 16 * 0.001);
    #{"station": 16, "flow_kg_s": flow}
}
fn purge_station_flow_17(p_in) {
    let flow = p_in * (0.05 + 17 * 0.001);
    #{"station": 17, "flow_kg_s": flow}
}
fn purge_station_flow_18(p_in) {
    let flow = p_in * (0.05 + 18 * 0.001);
    #{"station": 18, "flow_kg_s": flow}
}
fn purge_station_flow_19(p_in) {
    let flow = p_in * (0.05 + 19 * 0.001);
    #{"station": 19, "flow_kg_s": flow}
}
fn purge_station_flow_20(p_in) {
    let flow = p_in * (0.05 + 20 * 0.001);
    #{"station": 20, "flow_kg_s": flow}
}
fn purge_station_flow_21(p_in) {
    let flow = p_in * (0.05 + 21 * 0.001);
    #{"station": 21, "flow_kg_s": flow}
}
fn purge_station_flow_22(p_in) {
    let flow = p_in * (0.05 + 22 * 0.001);
    #{"station": 22, "flow_kg_s": flow}
}
fn purge_station_flow_23(p_in) {
    let flow = p_in * (0.05 + 23 * 0.001);
    #{"station": 23, "flow_kg_s": flow}
}
fn purge_station_flow_24(p_in) {
    let flow = p_in * (0.05 + 24 * 0.001);
    #{"station": 24, "flow_kg_s": flow}
}
fn purge_station_flow_25(p_in) {
    let flow = p_in * (0.05 + 25 * 0.001);
    #{"station": 25, "flow_kg_s": flow}
}
fn purge_station_flow_26(p_in) {
    let flow = p_in * (0.05 + 26 * 0.001);
    #{"station": 26, "flow_kg_s": flow}
}
fn purge_station_flow_27(p_in) {
    let flow = p_in * (0.05 + 27 * 0.001);
    #{"station": 27, "flow_kg_s": flow}
}
fn purge_station_flow_28(p_in) {
    let flow = p_in * (0.05 + 28 * 0.001);
    #{"station": 28, "flow_kg_s": flow}
}
fn purge_station_flow_29(p_in) {
    let flow = p_in * (0.05 + 29 * 0.001);
    #{"station": 29, "flow_kg_s": flow}
}
fn purge_station_flow_30(p_in) {
    let flow = p_in * (0.05 + 30 * 0.001);
    #{"station": 30, "flow_kg_s": flow}
}
fn purge_station_flow_31(p_in) {
    let flow = p_in * (0.05 + 31 * 0.001);
    #{"station": 31, "flow_kg_s": flow}
}
fn purge_station_flow_32(p_in) {
    let flow = p_in * (0.05 + 32 * 0.001);
    #{"station": 32, "flow_kg_s": flow}
}
fn purge_station_flow_33(p_in) {
    let flow = p_in * (0.05 + 33 * 0.001);
    #{"station": 33, "flow_kg_s": flow}
}
fn purge_station_flow_34(p_in) {
    let flow = p_in * (0.05 + 34 * 0.001);
    #{"station": 34, "flow_kg_s": flow}
}
fn purge_station_flow_35(p_in) {
    let flow = p_in * (0.05 + 35 * 0.001);
    #{"station": 35, "flow_kg_s": flow}
}
fn purge_station_flow_36(p_in) {
    let flow = p_in * (0.05 + 36 * 0.001);
    #{"station": 36, "flow_kg_s": flow}
}
fn purge_station_flow_37(p_in) {
    let flow = p_in * (0.05 + 37 * 0.001);
    #{"station": 37, "flow_kg_s": flow}
}
fn purge_station_flow_38(p_in) {
    let flow = p_in * (0.05 + 38 * 0.001);
    #{"station": 38, "flow_kg_s": flow}
}
fn purge_station_flow_39(p_in) {
    let flow = p_in * (0.05 + 39 * 0.001);
    #{"station": 39, "flow_kg_s": flow}
}
fn purge_station_flow_40(p_in) {
    let flow = p_in * (0.05 + 40 * 0.001);
    #{"station": 40, "flow_kg_s": flow}
}
fn purge_station_flow_41(p_in) {
    let flow = p_in * (0.05 + 41 * 0.001);
    #{"station": 41, "flow_kg_s": flow}
}
fn purge_station_flow_42(p_in) {
    let flow = p_in * (0.05 + 42 * 0.001);
    #{"station": 42, "flow_kg_s": flow}
}
fn purge_station_flow_43(p_in) {
    let flow = p_in * (0.05 + 43 * 0.001);
    #{"station": 43, "flow_kg_s": flow}
}
fn purge_station_flow_44(p_in) {
    let flow = p_in * (0.05 + 44 * 0.001);
    #{"station": 44, "flow_kg_s": flow}
}
fn purge_station_flow_45(p_in) {
    let flow = p_in * (0.05 + 45 * 0.001);
    #{"station": 45, "flow_kg_s": flow}
}
fn purge_station_flow_46(p_in) {
    let flow = p_in * (0.05 + 46 * 0.001);
    #{"station": 46, "flow_kg_s": flow}
}
fn purge_station_flow_47(p_in) {
    let flow = p_in * (0.05 + 47 * 0.001);
    #{"station": 47, "flow_kg_s": flow}
}
fn purge_station_flow_48(p_in) {
    let flow = p_in * (0.05 + 48 * 0.001);
    #{"station": 48, "flow_kg_s": flow}
}
fn purge_station_flow_49(p_in) {
    let flow = p_in * (0.05 + 49 * 0.001);
    #{"station": 49, "flow_kg_s": flow}
}
fn purge_station_flow_50(p_in) {
    let flow = p_in * (0.05 + 50 * 0.001);
    #{"station": 50, "flow_kg_s": flow}
}
fn purge_station_flow_51(p_in) {
    let flow = p_in * (0.05 + 51 * 0.001);
    #{"station": 51, "flow_kg_s": flow}
}
fn purge_station_flow_52(p_in) {
    let flow = p_in * (0.05 + 52 * 0.001);
    #{"station": 52, "flow_kg_s": flow}
}
fn purge_station_flow_53(p_in) {
    let flow = p_in * (0.05 + 53 * 0.001);
    #{"station": 53, "flow_kg_s": flow}
}
fn purge_station_flow_54(p_in) {
    let flow = p_in * (0.05 + 54 * 0.001);
    #{"station": 54, "flow_kg_s": flow}
}
fn purge_station_flow_55(p_in) {
    let flow = p_in * (0.05 + 55 * 0.001);
    #{"station": 55, "flow_kg_s": flow}
}
fn purge_station_flow_56(p_in) {
    let flow = p_in * (0.05 + 56 * 0.001);
    #{"station": 56, "flow_kg_s": flow}
}
fn purge_station_flow_57(p_in) {
    let flow = p_in * (0.05 + 57 * 0.001);
    #{"station": 57, "flow_kg_s": flow}
}
fn purge_station_flow_58(p_in) {
    let flow = p_in * (0.05 + 58 * 0.001);
    #{"station": 58, "flow_kg_s": flow}
}
fn purge_station_flow_59(p_in) {
    let flow = p_in * (0.05 + 59 * 0.001);
    #{"station": 59, "flow_kg_s": flow}
}
fn purge_station_flow_60(p_in) {
    let flow = p_in * (0.05 + 60 * 0.001);
    #{"station": 60, "flow_kg_s": flow}
}
fn purge_station_flow_61(p_in) {
    let flow = p_in * (0.05 + 61 * 0.001);
    #{"station": 61, "flow_kg_s": flow}
}
fn purge_station_flow_62(p_in) {
    let flow = p_in * (0.05 + 62 * 0.001);
    #{"station": 62, "flow_kg_s": flow}
}
fn purge_station_flow_63(p_in) {
    let flow = p_in * (0.05 + 63 * 0.001);
    #{"station": 63, "flow_kg_s": flow}
}
fn purge_station_flow_64(p_in) {
    let flow = p_in * (0.05 + 64 * 0.001);
    #{"station": 64, "flow_kg_s": flow}
}
fn purge_station_flow_65(p_in) {
    let flow = p_in * (0.05 + 65 * 0.001);
    #{"station": 65, "flow_kg_s": flow}
}
fn purge_station_flow_66(p_in) {
    let flow = p_in * (0.05 + 66 * 0.001);
    #{"station": 66, "flow_kg_s": flow}
}
fn purge_station_flow_67(p_in) {
    let flow = p_in * (0.05 + 67 * 0.001);
    #{"station": 67, "flow_kg_s": flow}
}
fn purge_station_flow_68(p_in) {
    let flow = p_in * (0.05 + 68 * 0.001);
    #{"station": 68, "flow_kg_s": flow}
}
fn purge_station_flow_69(p_in) {
    let flow = p_in * (0.05 + 69 * 0.001);
    #{"station": 69, "flow_kg_s": flow}
}
fn purge_station_flow_70(p_in) {
    let flow = p_in * (0.05 + 70 * 0.001);
    #{"station": 70, "flow_kg_s": flow}
}
fn purge_station_flow_71(p_in) {
    let flow = p_in * (0.05 + 71 * 0.001);
    #{"station": 71, "flow_kg_s": flow}
}
fn purge_station_flow_72(p_in) {
    let flow = p_in * (0.05 + 72 * 0.001);
    #{"station": 72, "flow_kg_s": flow}
}
fn purge_station_flow_73(p_in) {
    let flow = p_in * (0.05 + 73 * 0.001);
    #{"station": 73, "flow_kg_s": flow}
}
fn purge_station_flow_74(p_in) {
    let flow = p_in * (0.05 + 74 * 0.001);
    #{"station": 74, "flow_kg_s": flow}
}
fn purge_station_flow_75(p_in) {
    let flow = p_in * (0.05 + 75 * 0.001);
    #{"station": 75, "flow_kg_s": flow}
}
fn purge_station_flow_76(p_in) {
    let flow = p_in * (0.05 + 76 * 0.001);
    #{"station": 76, "flow_kg_s": flow}
}
fn purge_station_flow_77(p_in) {
    let flow = p_in * (0.05 + 77 * 0.001);
    #{"station": 77, "flow_kg_s": flow}
}
fn purge_station_flow_78(p_in) {
    let flow = p_in * (0.05 + 78 * 0.001);
    #{"station": 78, "flow_kg_s": flow}
}
fn purge_station_flow_79(p_in) {
    let flow = p_in * (0.05 + 79 * 0.001);
    #{"station": 79, "flow_kg_s": flow}
}
fn purge_station_flow_80(p_in) {
    let flow = p_in * (0.05 + 80 * 0.001);
    #{"station": 80, "flow_kg_s": flow}
}
fn purge_station_flow_81(p_in) {
    let flow = p_in * (0.05 + 81 * 0.001);
    #{"station": 81, "flow_kg_s": flow}
}
fn purge_station_flow_82(p_in) {
    let flow = p_in * (0.05 + 82 * 0.001);
    #{"station": 82, "flow_kg_s": flow}
}
fn purge_station_flow_83(p_in) {
    let flow = p_in * (0.05 + 83 * 0.001);
    #{"station": 83, "flow_kg_s": flow}
}
fn purge_station_flow_84(p_in) {
    let flow = p_in * (0.05 + 84 * 0.001);
    #{"station": 84, "flow_kg_s": flow}
}
