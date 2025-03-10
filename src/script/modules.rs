//! Rhai script module loader and file system resolver

use rhai::{Engine, Scope, AST};
use std::collections::HashMap;
use std::fs;
use std::path::{Path, PathBuf};
use std::sync::Mutex;

/// Caching module loader for Rhai script trees
pub struct ScriptModuleLoader {
    base_dir: PathBuf,
    #[allow(dead_code)]
    compiled_cache: Mutex<HashMap<String, AST>>,
}

impl ScriptModuleLoader {
    pub fn new<P: AsRef<Path>>(base_dir: P) -> Self {
        Self {
            base_dir: base_dir.as_ref().to_path_buf(),
            compiled_cache: Mutex::new(HashMap::new()),
        }
    }

    /// Load, parse, and compile a script file into an AST
    pub fn compile_file(&self, engine: &Engine, rel_path: &str) -> Result<AST, String> {
        let mut full_path = self.base_dir.join(rel_path);
        if !full_path.exists() && !rel_path.ends_with(".rhai") {
            full_path = self.base_dir.join(format!("{}.rhai", rel_path));
        }

        if !full_path.exists() {
            return Err(format!("Script file not found: {}", full_path.display()));
        }

        let script_text = fs::read_to_string(&full_path)
            .map_err(|e| format!("Failed to read script file {}: {}", full_path.display(), e))?;

        engine
            .compile(&script_text)
            .map_err(|e| format!("Syntax error in {}: {}", full_path.display(), e))
    }

    /// Execute a script file within a provided scope
    pub fn run_file(&self, engine: &Engine, scope: &mut Scope, rel_path: &str) -> Result<(), String> {
        let ast = self.compile_file(engine, rel_path)?;
        engine
            .run_ast_with_scope(scope, &ast)
            .map_err(|e| format!("Runtime error in {}: {}", rel_path, e))
    }
}
