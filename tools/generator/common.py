#!/usr/bin/env python3
"""
Common utilities for generating high-fidelity Rhai modules
"""

import os
import sys

def write_rhai_file(fpath, content):
    # Strict validation of zero em-dash and en-dash
    if "\u2014" in content:
        raise ValueError(f"Em-dash detected in generated content for {fpath}")
    if "\u2013" in content:
        raise ValueError(f"En-dash detected in generated content for {fpath}")
    
    os.makedirs(os.path.dirname(fpath), exist_ok=True)
    with open(fpath, "w", encoding="utf-8") as f:
        f.write(content.strip() + "\n")
    print(f"Generated: {fpath} ({len(content.splitlines())} lines)")
