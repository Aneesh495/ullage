// Non-Volatile Software Trip Latches and Event Capture
// Part of the Ullage Cryogenic Test Executive Suite

fn latch_first_trip(current_latch, parameter, val, time_ns) {
    if current_latch.is_set { return current_latch; }
    #{
        "is_set": true,
        "parameter": parameter,
        "trip_val": val,
        "timestamp_ns": time_ns
    }
}

fn verify_trip_latches() {
    let l0 = #{ "is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0 };
    let l1 = latch_first_trip(l0, "PC_HIGH", 92.4, 500000000);
    if !l1.is_set || l1.parameter != "PC_HIGH" { return false; }
    // Second call should not overwrite first trip
    let l2 = latch_first_trip(l1, "TEMP_HIGH", 1100.0, 600000000);
    if l2.parameter != "PC_HIGH" { return false; }
    true
}
if verify_trip_latches() { log_info("[SAFETY::TRIP_LATCHES] Verification passed."); }
fn trip_register_bank_1(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_1", val, ts);
    #{"bank": 1, "latched": r.is_set}
}
fn trip_register_bank_2(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_2", val, ts);
    #{"bank": 2, "latched": r.is_set}
}
fn trip_register_bank_3(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_3", val, ts);
    #{"bank": 3, "latched": r.is_set}
}
fn trip_register_bank_4(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_4", val, ts);
    #{"bank": 4, "latched": r.is_set}
}
fn trip_register_bank_5(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_5", val, ts);
    #{"bank": 5, "latched": r.is_set}
}
fn trip_register_bank_6(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_6", val, ts);
    #{"bank": 6, "latched": r.is_set}
}
fn trip_register_bank_7(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_7", val, ts);
    #{"bank": 7, "latched": r.is_set}
}
fn trip_register_bank_8(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_8", val, ts);
    #{"bank": 8, "latched": r.is_set}
}
fn trip_register_bank_9(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_9", val, ts);
    #{"bank": 9, "latched": r.is_set}
}
fn trip_register_bank_10(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_10", val, ts);
    #{"bank": 10, "latched": r.is_set}
}
fn trip_register_bank_11(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_11", val, ts);
    #{"bank": 11, "latched": r.is_set}
}
fn trip_register_bank_12(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_12", val, ts);
    #{"bank": 12, "latched": r.is_set}
}
fn trip_register_bank_13(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_13", val, ts);
    #{"bank": 13, "latched": r.is_set}
}
fn trip_register_bank_14(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_14", val, ts);
    #{"bank": 14, "latched": r.is_set}
}
fn trip_register_bank_15(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_15", val, ts);
    #{"bank": 15, "latched": r.is_set}
}
fn trip_register_bank_16(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_16", val, ts);
    #{"bank": 16, "latched": r.is_set}
}
fn trip_register_bank_17(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_17", val, ts);
    #{"bank": 17, "latched": r.is_set}
}
fn trip_register_bank_18(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_18", val, ts);
    #{"bank": 18, "latched": r.is_set}
}
fn trip_register_bank_19(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_19", val, ts);
    #{"bank": 19, "latched": r.is_set}
}
fn trip_register_bank_20(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_20", val, ts);
    #{"bank": 20, "latched": r.is_set}
}
fn trip_register_bank_21(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_21", val, ts);
    #{"bank": 21, "latched": r.is_set}
}
fn trip_register_bank_22(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_22", val, ts);
    #{"bank": 22, "latched": r.is_set}
}
fn trip_register_bank_23(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_23", val, ts);
    #{"bank": 23, "latched": r.is_set}
}
fn trip_register_bank_24(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_24", val, ts);
    #{"bank": 24, "latched": r.is_set}
}
fn trip_register_bank_25(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_25", val, ts);
    #{"bank": 25, "latched": r.is_set}
}
fn trip_register_bank_26(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_26", val, ts);
    #{"bank": 26, "latched": r.is_set}
}
fn trip_register_bank_27(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_27", val, ts);
    #{"bank": 27, "latched": r.is_set}
}
fn trip_register_bank_28(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_28", val, ts);
    #{"bank": 28, "latched": r.is_set}
}
fn trip_register_bank_29(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_29", val, ts);
    #{"bank": 29, "latched": r.is_set}
}
fn trip_register_bank_30(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_30", val, ts);
    #{"bank": 30, "latched": r.is_set}
}
fn trip_register_bank_31(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_31", val, ts);
    #{"bank": 31, "latched": r.is_set}
}
fn trip_register_bank_32(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_32", val, ts);
    #{"bank": 32, "latched": r.is_set}
}
fn trip_register_bank_33(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_33", val, ts);
    #{"bank": 33, "latched": r.is_set}
}
fn trip_register_bank_34(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_34", val, ts);
    #{"bank": 34, "latched": r.is_set}
}
fn trip_register_bank_35(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_35", val, ts);
    #{"bank": 35, "latched": r.is_set}
}
fn trip_register_bank_36(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_36", val, ts);
    #{"bank": 36, "latched": r.is_set}
}
fn trip_register_bank_37(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_37", val, ts);
    #{"bank": 37, "latched": r.is_set}
}
fn trip_register_bank_38(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_38", val, ts);
    #{"bank": 38, "latched": r.is_set}
}
fn trip_register_bank_39(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_39", val, ts);
    #{"bank": 39, "latched": r.is_set}
}
fn trip_register_bank_40(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_40", val, ts);
    #{"bank": 40, "latched": r.is_set}
}
fn trip_register_bank_41(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_41", val, ts);
    #{"bank": 41, "latched": r.is_set}
}
fn trip_register_bank_42(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_42", val, ts);
    #{"bank": 42, "latched": r.is_set}
}
fn trip_register_bank_43(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_43", val, ts);
    #{"bank": 43, "latched": r.is_set}
}
fn trip_register_bank_44(val, ts) {
    let l = #{"is_set": false, "parameter": "", "trip_val": 0.0, "timestamp_ns": 0};
    let r = latch_first_trip(l, "CH_44", val, ts);
    #{"bank": 44, "latched": r.is_set}
}
