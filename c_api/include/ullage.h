/*==============================================================================
  Ullage C FFI Interface
  Native C Client API for Hardware-in-the-Loop Integration
  Copyright (c) 2026 Aneesh Krishna Parthasarathy. Licensed under ISC.
==============================================================================*/

#ifndef ULLAGE_H
#define ULLAGE_H

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void* ullage_engine_handle_t;

typedef struct {
    uint16_t channel_id;
    uint64_t timestamp_ns;
    double raw_volts;
    double engineering_val;
    uint32_t health_flags;
} ullage_sensor_record_t;

/* Engine lifecycle */
ullage_engine_handle_t ullage_create_engine(const char* scripts_directory);
void ullage_destroy_engine(ullage_engine_handle_t handle);

/* Script execution */
int32_t ullage_run_script(ullage_engine_handle_t handle, const char* script_path);

/* Real-time Hardware Controls */
bool ullage_open_valve(ullage_engine_handle_t handle, const char* valve_tag);
bool ullage_close_valve(ullage_engine_handle_t handle, const char* valve_tag);
bool ullage_is_valve_open(ullage_engine_handle_t handle, const char* valve_tag);
void ullage_set_throttle_pct(ullage_engine_handle_t handle, double throttle_pct);
double ullage_get_throttle_pct(ullage_engine_handle_t handle);

/* Safety and Redlines */
void ullage_trip_abort(ullage_engine_handle_t handle, const char* reason);
bool ullage_is_aborted(ullage_engine_handle_t handle);

/* Telemetry Ingestion */
double ullage_get_sensor_reading(ullage_engine_handle_t handle, const char* sensor_tag);
void ullage_inject_sensor_reading(ullage_engine_handle_t handle, const char* sensor_tag, double val);

#ifdef __cplusplus
}
#endif

#endif /* ULLAGE_H */
