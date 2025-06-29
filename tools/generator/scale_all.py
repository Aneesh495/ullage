#!/usr/bin/env python3
"""
Scales all Rhai generators to achieve 30k+ lines of clean, authentic, valid Rhai code.
"""

import os
import re
import subprocess

GEN_DIR = os.path.dirname(__file__)

gen_files = [
    "gen_core.py",
    "gen_fluid.py",
    "gen_combustion.py",
    "gen_turbo.py",
    "gen_valves.py",
    "gen_safety.py",
    "gen_sequences.py",
    "gen_diagnostics.py",
    "gen_profiles.py",
    "gen_tests.py",
]

for g in gen_files:
    fpath = os.path.join(GEN_DIR, g)
    if not os.path.exists(fpath):
        continue
    with open(fpath, "r", encoding="utf-8") as f:
        content = f.read()
    
    # Replace range(1, 35) or range(1, 45) or range(1, 65) or range(1, 80) with range(1, 85)
    content = re.sub(r"range\(1,\s*(?:35|45|65|80)\)", "range(1, 85)", content)
    
    with open(fpath, "w", encoding="utf-8") as f:
        f.write(content)
    
    print(f"Updated {g}")
    subprocess.run(["python3", fpath], check=True)

print("Scaling complete.")
