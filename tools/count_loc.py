#!/usr/bin/env python3
"""
Language Breakdown and Line-of-Code Counter
Scans repository and reports exact SLOC counts.

Copyright (c) 2026 Aneesh Krishna Parthasarathy
Licensed under the ISC License.
"""

import os
import sys

EXT_MAP = {
    ".rhai": "Rhai",
    ".rs": "Rust",
    ".sail": "Sail",
    ".c": "C",
    ".h": "C Header",
    ".py": "Python",
    ".md": "Markdown",
    ".toml": "TOML",
    ".yml": "YAML",
    ".yaml": "YAML",
}

EXCLUDE_DIRS = {".git", "target", "build", "dist", "__pycache__"}

def count_repository_loc(root_dir):
    stats = {}
    total = 0
    for root, dirs, files in os.walk(root_dir):
        dirs[:] = [d for d in dirs if d not in EXCLUDE_DIRS]
        for f in files:
            ext = os.path.splitext(f)[1].lower()
            lang = EXT_MAP.get(ext, None)
            if not lang:
                continue
            fpath = os.path.join(root, f)
            try:
                with open(fpath, "r", encoding="utf-8", errors="ignore") as fp:
                    count = len(fp.readlines())
                    stats[lang] = stats.get(lang, 0) + count
                    total += count
            except Exception:
                pass
    return stats, total

def main():
    root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
    stats, total = count_repository_loc(root)
    print("================================================================================")
    print("  ULLAGE LINE-OF-CODE REPOSITORY BREAKDOWN")
    print("================================================================================")
    for lang, lines in sorted(stats.items(), key=lambda x: -x[1]):
        pct = (lines / total) * 100.0 if total > 0 else 0.0
        print(f"  {lang:<12} : {lines:>7} lines ({pct:5.1f}%)")
    print("--------------------------------------------------------------------------------")
    print(f"  TOTAL        : {total:>7} lines (100.0%)")
    print("================================================================================")

if __name__ == "__main__":
    main()
