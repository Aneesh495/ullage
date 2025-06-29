// Full-Duration Qualification Burn (QTR) Multi-Point Profile
// 120-second duty-cycle burn with multi-stage throttling

fn get_qualification_profile() {
    [
        #{ "t_start": 0.0,   "t_end": 10.0,  "throttle": 100.0 },
        #{ "t_start": 10.0,  "t_end": 30.0,  "throttle": 80.0 },
        #{ "t_start": 30.0,  "t_end": 60.0,  "throttle": 50.0 },
        #{ "t_start": 60.0,  "t_end": 90.0,  "throttle": 70.0 },
        #{ "t_start": 90.0,  "t_end": 120.0, "throttle": 100.0 }
    ]
}

fn verify_qualification_burn() {
    let q = get_qualification_profile();
    if q.len() != 5 { return false; }
    true
}
if verify_qualification_burn() { log_info("[PROFILES::QUAL_BURN] Verification passed."); }
fn qual_burn_slice_1() {
    #{"slice": 1, "duration_s": 1 * 2.5}
}
fn qual_burn_slice_2() {
    #{"slice": 2, "duration_s": 2 * 2.5}
}
fn qual_burn_slice_3() {
    #{"slice": 3, "duration_s": 3 * 2.5}
}
fn qual_burn_slice_4() {
    #{"slice": 4, "duration_s": 4 * 2.5}
}
fn qual_burn_slice_5() {
    #{"slice": 5, "duration_s": 5 * 2.5}
}
fn qual_burn_slice_6() {
    #{"slice": 6, "duration_s": 6 * 2.5}
}
fn qual_burn_slice_7() {
    #{"slice": 7, "duration_s": 7 * 2.5}
}
fn qual_burn_slice_8() {
    #{"slice": 8, "duration_s": 8 * 2.5}
}
fn qual_burn_slice_9() {
    #{"slice": 9, "duration_s": 9 * 2.5}
}
fn qual_burn_slice_10() {
    #{"slice": 10, "duration_s": 10 * 2.5}
}
fn qual_burn_slice_11() {
    #{"slice": 11, "duration_s": 11 * 2.5}
}
fn qual_burn_slice_12() {
    #{"slice": 12, "duration_s": 12 * 2.5}
}
fn qual_burn_slice_13() {
    #{"slice": 13, "duration_s": 13 * 2.5}
}
fn qual_burn_slice_14() {
    #{"slice": 14, "duration_s": 14 * 2.5}
}
fn qual_burn_slice_15() {
    #{"slice": 15, "duration_s": 15 * 2.5}
}
fn qual_burn_slice_16() {
    #{"slice": 16, "duration_s": 16 * 2.5}
}
fn qual_burn_slice_17() {
    #{"slice": 17, "duration_s": 17 * 2.5}
}
fn qual_burn_slice_18() {
    #{"slice": 18, "duration_s": 18 * 2.5}
}
fn qual_burn_slice_19() {
    #{"slice": 19, "duration_s": 19 * 2.5}
}
fn qual_burn_slice_20() {
    #{"slice": 20, "duration_s": 20 * 2.5}
}
fn qual_burn_slice_21() {
    #{"slice": 21, "duration_s": 21 * 2.5}
}
fn qual_burn_slice_22() {
    #{"slice": 22, "duration_s": 22 * 2.5}
}
fn qual_burn_slice_23() {
    #{"slice": 23, "duration_s": 23 * 2.5}
}
fn qual_burn_slice_24() {
    #{"slice": 24, "duration_s": 24 * 2.5}
}
fn qual_burn_slice_25() {
    #{"slice": 25, "duration_s": 25 * 2.5}
}
fn qual_burn_slice_26() {
    #{"slice": 26, "duration_s": 26 * 2.5}
}
fn qual_burn_slice_27() {
    #{"slice": 27, "duration_s": 27 * 2.5}
}
fn qual_burn_slice_28() {
    #{"slice": 28, "duration_s": 28 * 2.5}
}
fn qual_burn_slice_29() {
    #{"slice": 29, "duration_s": 29 * 2.5}
}
fn qual_burn_slice_30() {
    #{"slice": 30, "duration_s": 30 * 2.5}
}
fn qual_burn_slice_31() {
    #{"slice": 31, "duration_s": 31 * 2.5}
}
fn qual_burn_slice_32() {
    #{"slice": 32, "duration_s": 32 * 2.5}
}
fn qual_burn_slice_33() {
    #{"slice": 33, "duration_s": 33 * 2.5}
}
fn qual_burn_slice_34() {
    #{"slice": 34, "duration_s": 34 * 2.5}
}
fn qual_burn_slice_35() {
    #{"slice": 35, "duration_s": 35 * 2.5}
}
fn qual_burn_slice_36() {
    #{"slice": 36, "duration_s": 36 * 2.5}
}
fn qual_burn_slice_37() {
    #{"slice": 37, "duration_s": 37 * 2.5}
}
fn qual_burn_slice_38() {
    #{"slice": 38, "duration_s": 38 * 2.5}
}
fn qual_burn_slice_39() {
    #{"slice": 39, "duration_s": 39 * 2.5}
}
fn qual_burn_slice_40() {
    #{"slice": 40, "duration_s": 40 * 2.5}
}
fn qual_burn_slice_41() {
    #{"slice": 41, "duration_s": 41 * 2.5}
}
fn qual_burn_slice_42() {
    #{"slice": 42, "duration_s": 42 * 2.5}
}
fn qual_burn_slice_43() {
    #{"slice": 43, "duration_s": 43 * 2.5}
}
fn qual_burn_slice_44() {
    #{"slice": 44, "duration_s": 44 * 2.5}
}
fn qual_burn_slice_45() {
    #{"slice": 45, "duration_s": 45 * 2.5}
}
fn qual_burn_slice_46() {
    #{"slice": 46, "duration_s": 46 * 2.5}
}
fn qual_burn_slice_47() {
    #{"slice": 47, "duration_s": 47 * 2.5}
}
fn qual_burn_slice_48() {
    #{"slice": 48, "duration_s": 48 * 2.5}
}
fn qual_burn_slice_49() {
    #{"slice": 49, "duration_s": 49 * 2.5}
}
fn qual_burn_slice_50() {
    #{"slice": 50, "duration_s": 50 * 2.5}
}
fn qual_burn_slice_51() {
    #{"slice": 51, "duration_s": 51 * 2.5}
}
fn qual_burn_slice_52() {
    #{"slice": 52, "duration_s": 52 * 2.5}
}
fn qual_burn_slice_53() {
    #{"slice": 53, "duration_s": 53 * 2.5}
}
fn qual_burn_slice_54() {
    #{"slice": 54, "duration_s": 54 * 2.5}
}
fn qual_burn_slice_55() {
    #{"slice": 55, "duration_s": 55 * 2.5}
}
fn qual_burn_slice_56() {
    #{"slice": 56, "duration_s": 56 * 2.5}
}
fn qual_burn_slice_57() {
    #{"slice": 57, "duration_s": 57 * 2.5}
}
fn qual_burn_slice_58() {
    #{"slice": 58, "duration_s": 58 * 2.5}
}
fn qual_burn_slice_59() {
    #{"slice": 59, "duration_s": 59 * 2.5}
}
fn qual_burn_slice_60() {
    #{"slice": 60, "duration_s": 60 * 2.5}
}
fn qual_burn_slice_61() {
    #{"slice": 61, "duration_s": 61 * 2.5}
}
fn qual_burn_slice_62() {
    #{"slice": 62, "duration_s": 62 * 2.5}
}
fn qual_burn_slice_63() {
    #{"slice": 63, "duration_s": 63 * 2.5}
}
fn qual_burn_slice_64() {
    #{"slice": 64, "duration_s": 64 * 2.5}
}
fn qual_burn_slice_65() {
    #{"slice": 65, "duration_s": 65 * 2.5}
}
fn qual_burn_slice_66() {
    #{"slice": 66, "duration_s": 66 * 2.5}
}
fn qual_burn_slice_67() {
    #{"slice": 67, "duration_s": 67 * 2.5}
}
fn qual_burn_slice_68() {
    #{"slice": 68, "duration_s": 68 * 2.5}
}
fn qual_burn_slice_69() {
    #{"slice": 69, "duration_s": 69 * 2.5}
}
fn qual_burn_slice_70() {
    #{"slice": 70, "duration_s": 70 * 2.5}
}
fn qual_burn_slice_71() {
    #{"slice": 71, "duration_s": 71 * 2.5}
}
fn qual_burn_slice_72() {
    #{"slice": 72, "duration_s": 72 * 2.5}
}
fn qual_burn_slice_73() {
    #{"slice": 73, "duration_s": 73 * 2.5}
}
fn qual_burn_slice_74() {
    #{"slice": 74, "duration_s": 74 * 2.5}
}
fn qual_burn_slice_75() {
    #{"slice": 75, "duration_s": 75 * 2.5}
}
fn qual_burn_slice_76() {
    #{"slice": 76, "duration_s": 76 * 2.5}
}
fn qual_burn_slice_77() {
    #{"slice": 77, "duration_s": 77 * 2.5}
}
fn qual_burn_slice_78() {
    #{"slice": 78, "duration_s": 78 * 2.5}
}
fn qual_burn_slice_79() {
    #{"slice": 79, "duration_s": 79 * 2.5}
}
fn qual_burn_slice_80() {
    #{"slice": 80, "duration_s": 80 * 2.5}
}
fn qual_burn_slice_81() {
    #{"slice": 81, "duration_s": 81 * 2.5}
}
fn qual_burn_slice_82() {
    #{"slice": 82, "duration_s": 82 * 2.5}
}
fn qual_burn_slice_83() {
    #{"slice": 83, "duration_s": 83 * 2.5}
}
fn qual_burn_slice_84() {
    #{"slice": 84, "duration_s": 84 * 2.5}
}
