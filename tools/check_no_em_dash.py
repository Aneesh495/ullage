#!/usr/bin/env python3
"""
Strict Em-Dash and En-Dash Compliance Checker
Scans all text, code, documentation, and configuration files.
Guarantees zero occurrences of Unicode em-dash (U+2014) and en-dash (U+2013).

Copyright (c) 2026 Aneesh Krishna Parthasarathy
Licensed under the ISC License.
"""

import os
import sys

EXCLUDE_DIRS = {".git", "bin", "build", "__pycache__", ".zig-cache"}
EXCLUDE_EXTS = {".png", ".jpg", ".jpeg", ".ico", ".pdf", ".pyc", ".o", ".a", ".so", ".dylib", ".DS_Store"}

def scan_directory(root_dir):
    violations = []
    total_files = 0
    for root, dirs, files in os.walk(root_dir):
        dirs[:] = [d for d in dirs if d not in EXCLUDE_DIRS]
        for fname in files:
            ext = os.path.splitext(fname)[1].lower()
            if ext in EXCLUDE_EXTS:
                continue
            fpath = os.path.join(root, fname)
            rel_path = os.path.relpath(fpath, root_dir)
            total_files += 1
            try:
                with open(fpath, "r", encoding="utf-8", errors="replace") as f:
                    for line_idx, line in enumerate(f, 1):
                        if "\u2014" in line:
                            violations.append((rel_path, line_idx, "em-dash (U+2014)", line.strip()))
                        if "\u2013" in line:
                            violations.append((rel_path, line_idx, "en-dash (U+2013)", line.strip()))
            except Exception as e:
                print(f"Error reading {rel_path}: {e}", file=sys.stderr)
    return violations, total_files

def main():
    root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
    violations, total_files = scan_directory(root)
    if violations:
        print(f"FAILURE: Detected {len(violations)} dash violation(s):", file=sys.stderr)
        for path, line_no, kind, text in violations:
            print(f"  {path}:{line_no} [{kind}] -> {text}", file=sys.stderr)
        sys.exit(1)
    else:
        print(f"PASS: Scanned {total_files} files. Zero em-dash and en-dash violations found.")

if __name__ == "__main__":
    main()
