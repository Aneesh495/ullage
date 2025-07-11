//! Rhai Engine initialization and sandboxing configuration

use crate::script::bindings::register_bindings;
use crate::script::context::{ScriptExecutionContext, SharedContext, SharedHal};
use crate::script::modules::ScriptModuleLoader;
use rhai::{Engine, Scope};
use std::path::Path;
use std::sync::{Arc, Mutex};

/// Wrapper around the sandboxed Rhai script engine
pub struct UllageScriptEngine {
    engine: Engine,
    pub context: SharedContext,
    pub hal: SharedHal,
    pub loader: ScriptModuleLoader,
}

impl UllageScriptEngine {
    pub fn new<P: AsRef<Path>>(scripts_dir: P) -> Self {
        let mut engine = Engine::new();

        // Configure deterministic execution limits to prevent infinite loops or memory exhaustion
        engine.set_max_expr_depths(64, 64);
        engine.set_max_call_levels(64);
        engine.set_max_operations(500_000); // 500k operations fuel budget

        let context = Arc::new(Mutex::new(ScriptExecutionContext::new()));
        let hal = Arc::new(Mutex::new(crate::hardware::hal::StandHal::new()));

        register_bindings(&mut engine, context.clone(), hal.clone());

        let loader = ScriptModuleLoader::new(scripts_dir);

        Self {
            engine,
            context,
            hal,
            loader,
        }
    }

    pub fn eval<T: Clone + Send + Sync + 'static>(&self, script: &str) -> Result<T, String> {
        let mut scope = Scope::new();
        self.engine
            .eval_with_scope::<T>(&mut scope, script)
            .map_err(|e| e.to_string())
    }

    pub fn run_script_file(&self, rel_path: &str) -> Result<(), String> {
        let mut scope = Scope::new();
        self.loader.run_file(&self.engine, &mut scope, rel_path)
    }

    pub fn engine(&self) -> &Engine {
        &self.engine
    }

    pub fn engine_mut(&mut self) -> &mut Engine {
        &mut self.engine
    }
}
