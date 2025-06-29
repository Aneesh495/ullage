// Redundant Sensor Voting and Disagreement Isolation
// 2-out-of-2 and 2-out-of-3 (2oo3) Triple Modular Redundancy (TMR)

fn vote_2oo3(s1, s2, s3, max_delta) {
    let d12 = (s1 - s2).abs() <= max_delta;
    let d23 = (s2 - s3).abs() <= max_delta;
    let d13 = (s1 - s3).abs() <= max_delta;
    if d12 && d23 && d13 {
        return #{ "val": (s1 + s2 + s3) / 3.0, "consensus": 3, "fault": false };
    } else if d12 {
        return #{ "val": (s1 + s2) / 2.0, "consensus": 2, "fault": false };
    } else if d23 {
        return #{ "val": (s2 + s3) / 2.0, "consensus": 2, "fault": false };
    } else if d13 {
        return #{ "val": (s1 + s3) / 2.0, "consensus": 2, "fault": false };
    }
    #{ "val": s1, "consensus": 0, "fault": true }
}

fn verify_dual_voting() {
    let v = vote_2oo3(82.0, 82.5, 120.0, 2.0);
    if v.fault || v.consensus != 2 { return false; }
    if (v.val - 82.25).abs() > 1.0e-6 { return false; }
    true
}
if verify_dual_voting() { log_info("[SAFETY::DUAL_VOTING] Verification passed."); }
fn voting_channel_group_1(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 1 * 0.05);
    #{"group": 1, "voted_val": r.val}
}
fn voting_channel_group_2(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 2 * 0.05);
    #{"group": 2, "voted_val": r.val}
}
fn voting_channel_group_3(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 3 * 0.05);
    #{"group": 3, "voted_val": r.val}
}
fn voting_channel_group_4(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 4 * 0.05);
    #{"group": 4, "voted_val": r.val}
}
fn voting_channel_group_5(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 5 * 0.05);
    #{"group": 5, "voted_val": r.val}
}
fn voting_channel_group_6(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 6 * 0.05);
    #{"group": 6, "voted_val": r.val}
}
fn voting_channel_group_7(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 7 * 0.05);
    #{"group": 7, "voted_val": r.val}
}
fn voting_channel_group_8(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 8 * 0.05);
    #{"group": 8, "voted_val": r.val}
}
fn voting_channel_group_9(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 9 * 0.05);
    #{"group": 9, "voted_val": r.val}
}
fn voting_channel_group_10(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 10 * 0.05);
    #{"group": 10, "voted_val": r.val}
}
fn voting_channel_group_11(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 11 * 0.05);
    #{"group": 11, "voted_val": r.val}
}
fn voting_channel_group_12(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 12 * 0.05);
    #{"group": 12, "voted_val": r.val}
}
fn voting_channel_group_13(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 13 * 0.05);
    #{"group": 13, "voted_val": r.val}
}
fn voting_channel_group_14(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 14 * 0.05);
    #{"group": 14, "voted_val": r.val}
}
fn voting_channel_group_15(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 15 * 0.05);
    #{"group": 15, "voted_val": r.val}
}
fn voting_channel_group_16(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 16 * 0.05);
    #{"group": 16, "voted_val": r.val}
}
fn voting_channel_group_17(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 17 * 0.05);
    #{"group": 17, "voted_val": r.val}
}
fn voting_channel_group_18(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 18 * 0.05);
    #{"group": 18, "voted_val": r.val}
}
fn voting_channel_group_19(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 19 * 0.05);
    #{"group": 19, "voted_val": r.val}
}
fn voting_channel_group_20(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 20 * 0.05);
    #{"group": 20, "voted_val": r.val}
}
fn voting_channel_group_21(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 21 * 0.05);
    #{"group": 21, "voted_val": r.val}
}
fn voting_channel_group_22(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 22 * 0.05);
    #{"group": 22, "voted_val": r.val}
}
fn voting_channel_group_23(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 23 * 0.05);
    #{"group": 23, "voted_val": r.val}
}
fn voting_channel_group_24(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 24 * 0.05);
    #{"group": 24, "voted_val": r.val}
}
fn voting_channel_group_25(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 25 * 0.05);
    #{"group": 25, "voted_val": r.val}
}
fn voting_channel_group_26(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 26 * 0.05);
    #{"group": 26, "voted_val": r.val}
}
fn voting_channel_group_27(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 27 * 0.05);
    #{"group": 27, "voted_val": r.val}
}
fn voting_channel_group_28(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 28 * 0.05);
    #{"group": 28, "voted_val": r.val}
}
fn voting_channel_group_29(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 29 * 0.05);
    #{"group": 29, "voted_val": r.val}
}
fn voting_channel_group_30(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 30 * 0.05);
    #{"group": 30, "voted_val": r.val}
}
fn voting_channel_group_31(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 31 * 0.05);
    #{"group": 31, "voted_val": r.val}
}
fn voting_channel_group_32(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 32 * 0.05);
    #{"group": 32, "voted_val": r.val}
}
fn voting_channel_group_33(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 33 * 0.05);
    #{"group": 33, "voted_val": r.val}
}
fn voting_channel_group_34(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 34 * 0.05);
    #{"group": 34, "voted_val": r.val}
}
fn voting_channel_group_35(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 35 * 0.05);
    #{"group": 35, "voted_val": r.val}
}
fn voting_channel_group_36(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 36 * 0.05);
    #{"group": 36, "voted_val": r.val}
}
fn voting_channel_group_37(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 37 * 0.05);
    #{"group": 37, "voted_val": r.val}
}
fn voting_channel_group_38(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 38 * 0.05);
    #{"group": 38, "voted_val": r.val}
}
fn voting_channel_group_39(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 39 * 0.05);
    #{"group": 39, "voted_val": r.val}
}
fn voting_channel_group_40(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 40 * 0.05);
    #{"group": 40, "voted_val": r.val}
}
fn voting_channel_group_41(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 41 * 0.05);
    #{"group": 41, "voted_val": r.val}
}
fn voting_channel_group_42(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 42 * 0.05);
    #{"group": 42, "voted_val": r.val}
}
fn voting_channel_group_43(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 43 * 0.05);
    #{"group": 43, "voted_val": r.val}
}
fn voting_channel_group_44(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 44 * 0.05);
    #{"group": 44, "voted_val": r.val}
}
fn voting_channel_group_45(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 45 * 0.05);
    #{"group": 45, "voted_val": r.val}
}
fn voting_channel_group_46(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 46 * 0.05);
    #{"group": 46, "voted_val": r.val}
}
fn voting_channel_group_47(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 47 * 0.05);
    #{"group": 47, "voted_val": r.val}
}
fn voting_channel_group_48(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 48 * 0.05);
    #{"group": 48, "voted_val": r.val}
}
fn voting_channel_group_49(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 49 * 0.05);
    #{"group": 49, "voted_val": r.val}
}
fn voting_channel_group_50(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 50 * 0.05);
    #{"group": 50, "voted_val": r.val}
}
fn voting_channel_group_51(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 51 * 0.05);
    #{"group": 51, "voted_val": r.val}
}
fn voting_channel_group_52(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 52 * 0.05);
    #{"group": 52, "voted_val": r.val}
}
fn voting_channel_group_53(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 53 * 0.05);
    #{"group": 53, "voted_val": r.val}
}
fn voting_channel_group_54(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 54 * 0.05);
    #{"group": 54, "voted_val": r.val}
}
fn voting_channel_group_55(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 55 * 0.05);
    #{"group": 55, "voted_val": r.val}
}
fn voting_channel_group_56(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 56 * 0.05);
    #{"group": 56, "voted_val": r.val}
}
fn voting_channel_group_57(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 57 * 0.05);
    #{"group": 57, "voted_val": r.val}
}
fn voting_channel_group_58(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 58 * 0.05);
    #{"group": 58, "voted_val": r.val}
}
fn voting_channel_group_59(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 59 * 0.05);
    #{"group": 59, "voted_val": r.val}
}
fn voting_channel_group_60(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 60 * 0.05);
    #{"group": 60, "voted_val": r.val}
}
fn voting_channel_group_61(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 61 * 0.05);
    #{"group": 61, "voted_val": r.val}
}
fn voting_channel_group_62(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 62 * 0.05);
    #{"group": 62, "voted_val": r.val}
}
fn voting_channel_group_63(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 63 * 0.05);
    #{"group": 63, "voted_val": r.val}
}
fn voting_channel_group_64(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 64 * 0.05);
    #{"group": 64, "voted_val": r.val}
}
fn voting_channel_group_65(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 65 * 0.05);
    #{"group": 65, "voted_val": r.val}
}
fn voting_channel_group_66(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 66 * 0.05);
    #{"group": 66, "voted_val": r.val}
}
fn voting_channel_group_67(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 67 * 0.05);
    #{"group": 67, "voted_val": r.val}
}
fn voting_channel_group_68(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 68 * 0.05);
    #{"group": 68, "voted_val": r.val}
}
fn voting_channel_group_69(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 69 * 0.05);
    #{"group": 69, "voted_val": r.val}
}
fn voting_channel_group_70(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 70 * 0.05);
    #{"group": 70, "voted_val": r.val}
}
fn voting_channel_group_71(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 71 * 0.05);
    #{"group": 71, "voted_val": r.val}
}
fn voting_channel_group_72(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 72 * 0.05);
    #{"group": 72, "voted_val": r.val}
}
fn voting_channel_group_73(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 73 * 0.05);
    #{"group": 73, "voted_val": r.val}
}
fn voting_channel_group_74(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 74 * 0.05);
    #{"group": 74, "voted_val": r.val}
}
fn voting_channel_group_75(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 75 * 0.05);
    #{"group": 75, "voted_val": r.val}
}
fn voting_channel_group_76(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 76 * 0.05);
    #{"group": 76, "voted_val": r.val}
}
fn voting_channel_group_77(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 77 * 0.05);
    #{"group": 77, "voted_val": r.val}
}
fn voting_channel_group_78(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 78 * 0.05);
    #{"group": 78, "voted_val": r.val}
}
fn voting_channel_group_79(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 79 * 0.05);
    #{"group": 79, "voted_val": r.val}
}
fn voting_channel_group_80(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 80 * 0.05);
    #{"group": 80, "voted_val": r.val}
}
fn voting_channel_group_81(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 81 * 0.05);
    #{"group": 81, "voted_val": r.val}
}
fn voting_channel_group_82(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 82 * 0.05);
    #{"group": 82, "voted_val": r.val}
}
fn voting_channel_group_83(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 83 * 0.05);
    #{"group": 83, "voted_val": r.val}
}
fn voting_channel_group_84(s1, s2, s3) {
    let r = vote_2oo3(s1, s2, s3, 2.0 + 84 * 0.05);
    #{"group": 84, "voted_val": r.val}
}
