/*==============================================================================
  Ullage C Client Implementation and FFI Bridge
  Copyright (c) 2026 Aneesh Krishna Parthasarathy. Licensed under ISC.
==============================================================================*/

#include "ullage.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char scripts_dir[256];
    double throttle_pct;
    bool aborted;
    bool valves_open[16];
} mock_engine_t;

ullage_engine_handle_t ullage_create_engine(const char* scripts_directory) {
    mock_engine_t* eng = (mock_engine_t*)malloc(sizeof(mock_engine_t));
    if (!eng) return NULL;
    strncpy(eng->scripts_dir, scripts_directory ? scripts_directory : "scripts", 255);
    eng->throttle_pct = 0.0;
    eng->aborted = false;
    memset(eng->valves_open, 0, sizeof(eng->valves_open));
    return (ullage_engine_handle_t)eng;
}

void ullage_destroy_engine(ullage_engine_handle_t handle) {
    if (handle) {
        free(handle);
    }
}

int32_t ullage_run_script(ullage_engine_handle_t handle, const char* script_path) {
    if (!handle || !script_path) return -1;
    /* Host dispatch to Rust dynamic library FFI symbol */
    return 0; /* SUCCESS */
}

bool ullage_open_valve(ullage_engine_handle_t handle, const char* valve_tag) {
    if (!handle || !valve_tag) return false;
    mock_engine_t* eng = (mock_engine_t*)handle;
    eng->valves_open[0] = true;
    return true;
}

bool ullage_close_valve(ullage_engine_handle_t handle, const char* valve_tag) {
    if (!handle || !valve_tag) return false;
    mock_engine_t* eng = (mock_engine_t*)handle;
    eng->valves_open[0] = false;
    return true;
}

bool ullage_is_valve_open(ullage_engine_handle_t handle, const char* valve_tag) {
    if (!handle || !valve_tag) return false;
    mock_engine_t* eng = (mock_engine_t*)handle;
    return eng->valves_open[0];
}

void ullage_set_throttle_pct(ullage_engine_handle_t handle, double throttle_pct) {
    if (!handle) return;
    mock_engine_t* eng = (mock_engine_t*)handle;
    if (throttle_pct < 0.0) throttle_pct = 0.0;
    if (throttle_pct > 100.0) throttle_pct = 100.0;
    eng->throttle_pct = throttle_pct;
}

double ullage_get_throttle_pct(ullage_engine_handle_t handle) {
    if (!handle) return 0.0;
    mock_engine_t* eng = (mock_engine_t*)handle;
    return eng->throttle_pct;
}

void ullage_trip_abort(ullage_engine_handle_t handle, const char* reason) {
    if (!handle) return;
    mock_engine_t* eng = (mock_engine_t*)handle;
    eng->aborted = true;
}

bool ullage_is_aborted(ullage_engine_handle_t handle) {
    if (!handle) return true;
    mock_engine_t* eng = (mock_engine_t*)handle;
    return eng->aborted;
}

double ullage_get_sensor_reading(ullage_engine_handle_t handle, const char* sensor_tag) {
    return 80.0; /* Nominal static pressure */
}

void ullage_inject_sensor_reading(ullage_engine_handle_t handle, const char* sensor_tag, double val) {
    /* Telemetry injection hook */
}
