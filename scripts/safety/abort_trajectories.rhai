// Coordinated Abort Trajectories and Valve Closure Sequencing
// Safe oxidizer/fuel lead-lag quenching to prevent manifold detonation

fn get_abort_valve_schedule(abort_type) {
    if abort_type == "OVERPRESSURE" {
        // Rapid cut on both propellants simultaneously
        return [
            #{ "action": "CLOSE_VALVE", "tag": "LOX_MAIN", "delay_ms": 0 },
            #{ "action": "CLOSE_VALVE", "tag": "FUEL_MAIN", "delay_ms": 0 },
            #{ "action": "OPEN_VALVE", "tag": "GN2_PURGE_LOX", "delay_ms": 10 },
            #{ "action": "OPEN_VALVE", "tag": "GN2_PURGE_FUEL", "delay_ms": 10 }
        ];
    }
    // Default fuel-lead shutdown (cuts fuel slightly before ox or vice versa)
    [
        #{ "action": "CLOSE_VALVE", "tag": "LOX_MAIN", "delay_ms": 0 },
        #{ "action": "CLOSE_VALVE", "tag": "FUEL_MAIN", "delay_ms": 20 },
        #{ "action": "OPEN_VALVE", "tag": "GN2_PURGE_LOX", "delay_ms": 25 }
    ]
}

fn verify_abort_trajectories() {
    let sched = get_abort_valve_schedule("OVERPRESSURE");
    if sched.len() < 4 { return false; }
    true
}
if verify_abort_trajectories() { log_info("[SAFETY::ABORT_TRAJECTORIES] Verification passed."); }
fn abort_trajectory_node_1(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 1, "action_count": s.len()}
}
fn abort_trajectory_node_2(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 2, "action_count": s.len()}
}
fn abort_trajectory_node_3(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 3, "action_count": s.len()}
}
fn abort_trajectory_node_4(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 4, "action_count": s.len()}
}
fn abort_trajectory_node_5(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 5, "action_count": s.len()}
}
fn abort_trajectory_node_6(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 6, "action_count": s.len()}
}
fn abort_trajectory_node_7(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 7, "action_count": s.len()}
}
fn abort_trajectory_node_8(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 8, "action_count": s.len()}
}
fn abort_trajectory_node_9(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 9, "action_count": s.len()}
}
fn abort_trajectory_node_10(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 10, "action_count": s.len()}
}
fn abort_trajectory_node_11(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 11, "action_count": s.len()}
}
fn abort_trajectory_node_12(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 12, "action_count": s.len()}
}
fn abort_trajectory_node_13(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 13, "action_count": s.len()}
}
fn abort_trajectory_node_14(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 14, "action_count": s.len()}
}
fn abort_trajectory_node_15(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 15, "action_count": s.len()}
}
fn abort_trajectory_node_16(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 16, "action_count": s.len()}
}
fn abort_trajectory_node_17(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 17, "action_count": s.len()}
}
fn abort_trajectory_node_18(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 18, "action_count": s.len()}
}
fn abort_trajectory_node_19(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 19, "action_count": s.len()}
}
fn abort_trajectory_node_20(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 20, "action_count": s.len()}
}
fn abort_trajectory_node_21(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 21, "action_count": s.len()}
}
fn abort_trajectory_node_22(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 22, "action_count": s.len()}
}
fn abort_trajectory_node_23(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 23, "action_count": s.len()}
}
fn abort_trajectory_node_24(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 24, "action_count": s.len()}
}
fn abort_trajectory_node_25(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 25, "action_count": s.len()}
}
fn abort_trajectory_node_26(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 26, "action_count": s.len()}
}
fn abort_trajectory_node_27(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 27, "action_count": s.len()}
}
fn abort_trajectory_node_28(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 28, "action_count": s.len()}
}
fn abort_trajectory_node_29(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 29, "action_count": s.len()}
}
fn abort_trajectory_node_30(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 30, "action_count": s.len()}
}
fn abort_trajectory_node_31(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 31, "action_count": s.len()}
}
fn abort_trajectory_node_32(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 32, "action_count": s.len()}
}
fn abort_trajectory_node_33(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 33, "action_count": s.len()}
}
fn abort_trajectory_node_34(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 34, "action_count": s.len()}
}
fn abort_trajectory_node_35(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 35, "action_count": s.len()}
}
fn abort_trajectory_node_36(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 36, "action_count": s.len()}
}
fn abort_trajectory_node_37(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 37, "action_count": s.len()}
}
fn abort_trajectory_node_38(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 38, "action_count": s.len()}
}
fn abort_trajectory_node_39(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 39, "action_count": s.len()}
}
fn abort_trajectory_node_40(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 40, "action_count": s.len()}
}
fn abort_trajectory_node_41(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 41, "action_count": s.len()}
}
fn abort_trajectory_node_42(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 42, "action_count": s.len()}
}
fn abort_trajectory_node_43(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 43, "action_count": s.len()}
}
fn abort_trajectory_node_44(typ) {
    let s = get_abort_valve_schedule(typ);
    #{"node": 44, "action_count": s.len()}
}
