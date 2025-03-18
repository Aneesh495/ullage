//! Native Rhai bindings for physical units, hardware controls, and telemetry

use crate::dsp::statistics::ChamberAcousticModel;
use crate::safety::interlock::AbortReason;
use crate::script::context::{SharedContext, SharedHal};
use rhai::Engine;
use std::time::Duration;

/// Register all native propulsion bindings into a Rhai Engine instance
pub fn register_bindings(engine: &mut Engine, ctx: SharedContext, hal: SharedHal) {
    // Mathematical and transcendental primitives on f64
    engine.register_fn("powf", |x: f64, y: f64| -> f64 { x.powf(y) });
    engine.register_fn("pow", |x: f64, y: f64| -> f64 { x.powf(y) });
    engine.register_fn("sqrt", |x: f64| -> f64 { x.max(0.0).sqrt() });
    engine.register_fn("exp", |x: f64| -> f64 { x.exp() });
    engine.register_fn("ln", |x: f64| -> f64 { if x > 0.0 { x.ln() } else { 0.0 } });
    engine.register_fn("log10", |x: f64| -> f64 { if x > 0.0 { x.log10() } else { 0.0 } });
    engine.register_fn("sin", |x: f64| -> f64 { x.sin() });
    engine.register_fn("cos", |x: f64| -> f64 { x.cos() });
    engine.register_fn("tan", |x: f64| -> f64 { x.tan() });
    engine.register_fn("asin", |x: f64| -> f64 { x.clamp(-1.0, 1.0).asin() });
    engine.register_fn("acos", |x: f64| -> f64 { x.clamp(-1.0, 1.0).acos() });
    engine.register_fn("atan", |x: f64| -> f64 { x.atan() });
    engine.register_fn("atan2", |y: f64, x: f64| -> f64 { y.atan2(x) });
    engine.register_fn("abs", |x: f64| -> f64 { x.abs() });
    engine.register_fn("max", |a: f64, b: f64| -> f64 { a.max(b) });
    engine.register_fn("min", |a: f64, b: f64| -> f64 { a.min(b) });

    // Logging binding
    {
        let ctx = ctx.clone();
        engine.register_fn("log_info", move |msg: &str| {
            if let Ok(mut c) = ctx.lock() {
                c.log(msg);
            }
        });
    }

    // Telemetry sensor read
    {
        let ctx = ctx.clone();
        engine.register_fn("get_sensor", move |tag: &str| -> f64 {
            if let Ok(c) = ctx.lock() {
                c.get_sensor(tag).unwrap_or(0.0)
            } else {
                0.0
            }
        });
    }

    // Telemetry sensor write (for simulation / HIL testing)
    {
        let ctx = ctx.clone();
        engine.register_fn("set_sensor", move |tag: &str, val: f64| {
            if let Ok(mut c) = ctx.lock() {
                c.set_sensor(tag, val);
            }
        });
    }

    // Valve commands
    {
        let hal = hal.clone();
        engine.register_fn("open_valve", move |tag: &str| -> bool {
            if let Ok(mut h) = hal.lock() {
                h.open_valve(tag).is_ok()
            } else {
                false
            }
        });
    }
    {
        let hal = hal.clone();
        engine.register_fn("close_valve", move |tag: &str| -> bool {
            if let Ok(mut h) = hal.lock() {
                h.close_valve(tag).is_ok()
            } else {
                false
            }
        });
    }
    {
        let hal = hal.clone();
        engine.register_fn("is_valve_open", move |tag: &str| -> bool {
            if let Ok(h) = hal.lock() {
                h.valves.get(tag).map(|v| v.is_open()).unwrap_or(false)
            } else {
                false
            }
        });
    }

    // Pintle throttle actuator commands
    {
        let hal = hal.clone();
        engine.register_fn("set_throttle", move |pct: f64| {
            if let Ok(mut h) = hal.lock() {
                h.pintle_actuator.set_throttle_pct(pct);
            }
        });
    }
    {
        let hal = hal.clone();
        engine.register_fn("get_throttle", move || -> f64 {
            if let Ok(h) = hal.lock() {
                h.pintle_actuator.throttle_pct()
            } else {
                0.0
            }
        });
    }

    // Torch igniter commands
    {
        let hal = hal.clone();
        engine.register_fn("start_igniter", move || {
            if let Ok(mut h) = hal.lock() {
                h.igniter.start_ignition_sequence();
            }
        });
    }
    {
        let hal = hal.clone();
        engine.register_fn("inject_igniter_propellant", move || {
            if let Ok(mut h) = hal.lock() {
                h.igniter.inject_torch_propellant();
            }
        });
    }
    {
        let hal = hal.clone();
        engine.register_fn("is_flame_confirmed", move || -> bool {
            if let Ok(h) = hal.lock() {
                h.igniter.is_flame_confirmed()
            } else {
                false
            }
        });
    }
    {
        let hal = hal.clone();
        engine.register_fn("safe_igniter", move || {
            if let Ok(mut h) = hal.lock() {
                h.igniter.safe();
            }
        });
    }

    // Emergency Abort and Safety
    {
        let ctx = ctx.clone();
        let hal = hal.clone();
        engine.register_fn("trip_abort", move |reason_str: &str| {
            if let Ok(mut c) = ctx.lock() {
                c.interlock.trip_abort(AbortReason::RedlineExceeded {
                    parameter: reason_str.to_string(),
                    value: 0.0,
                });
            }
            if let Ok(mut h) = hal.lock() {
                h.engage_emergency_purge();
            }
        });
    }
    {
        let ctx = ctx.clone();
        engine.register_fn("is_aborted", move || -> bool {
            if let Ok(c) = ctx.lock() {
                c.interlock.is_aborted()
            } else {
                true
            }
        });
    }

    // DSP Acoustic Mode Classifier
    engine.register_fn(
        "classify_cavity_mode",
        |obs_freq_hz: f64, diam_m: f64, len_m: f64, sound_speed_m_s: f64| -> String {
            let model = ChamberAcousticModel::new(diam_m, len_m, sound_speed_m_s);
            let mode = model.classify_mode(obs_freq_hz, 50.0);
            match mode {
                crate::dsp::statistics::AcousticCavityMode::LowFrequencyChug => "Chug".to_string(),
                crate::dsp::statistics::AcousticCavityMode::FirstLongitudinal(f) => {
                    format!("1L ({:.1} Hz)", f)
                }
                crate::dsp::statistics::AcousticCavityMode::FirstTangential(f) => {
                    format!("1T ({:.1} Hz)", f)
                }
                crate::dsp::statistics::AcousticCavityMode::FirstRadial(f) => {
                    format!("1R ({:.1} Hz)", f)
                }
                crate::dsp::statistics::AcousticCavityMode::BroadbandNoise => "Broadband".to_string(),
            }
        },
    );

    // Simulation advance helper
    {
        let hal = hal.clone();
        engine.register_fn("step_hardware", move |dt_millis: i64| {
            if let Ok(mut h) = hal.lock() {
                h.step(Duration::from_millis(dt_millis.max(0) as u64));
            }
        });
    }
}
