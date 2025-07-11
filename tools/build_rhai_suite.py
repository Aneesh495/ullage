#!/usr/bin/env python3
"""
Ullage Rhai Automation Suite Code Generator
Generates modular, high-fidelity Rhai propulsion simulation, automation,
and diagnostic modules with full mathematical derivations and unit tests.

Copyright (c) 2026 Aneesh Krishna Parthasarathy
Licensed under the ISC License.
"""

import os
import sys

SCRIPTS_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "scripts"))

def ensure_dir(path):
    os.makedirs(path, exist_ok=True)

print("Building Rhai script suite...")
