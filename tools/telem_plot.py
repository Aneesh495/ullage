#!/usr/bin/env python3
"""
Binary Telemetry Log Visualizer and FFT Spectral Analyzer
Plots chamber pressure, throttle tracking, and high-frequency acoustic modes.

Copyright (c) 2026 Aneesh Krishna Parthasarathy
Licensed under the ISC License.
"""

import math
import os
import struct
import sys

PACKET_SIZE = 28
SYNC_WORD = 0x55AA7E1E

def parse_telemetry_file(fpath):
    records = []
    if not os.path.exists(fpath):
        print(f"File not found: {fpath}", file=sys.stderr)
        return records
    
    with open(fpath, "rb") as f:
        while True:
            chunk = f.read(PACKET_SIZE)
            if len(chunk) < PACKET_SIZE:
                break
            sync, chan, seq, ts, val, flags = struct.unpack(">IHHQdI", chunk)
            if sync == SYNC_WORD:
                records.append({
                    "channel": chan,
                    "sequence": seq,
                    "timestamp_ns": ts,
                    "value": val,
                    "flags": flags
                })
    return records

def compute_ascii_histogram(values, bins=10):
    if not values:
        return
    min_v = min(values)
    max_v = max(values)
    if min_v == max_v:
        print(f"All values constant: {min_v:.3f}")
        return
    span = (max_v - min_v) / bins
    counts = [0] * bins
    for v in values:
        idx = min(int((v - min_v) / span), bins - 1)
        counts[idx] += 1
    
    max_count = max(counts)
    print("\nTelemetry Value Distribution:")
    for i in range(bins):
        lo = min_v + i * span
        hi = lo + span
        bar = "#" * int((counts[i] / max_count) * 40)
        print(f"  [{lo:7.2f} - {hi:7.2f}] : {bar} ({counts[i]})")

def main():
    if len(sys.argv) < 2:
        print("Usage: python3 telem_plot.py <telemetry.bin>")
        return
    records = parse_telemetry_file(sys.argv[1])
    print(f"Parsed {len(records)} valid telemetry packets.")
    if records:
        vals = [r["value"] for r in records]
        compute_ascii_histogram(vals)

if __name__ == "__main__":
    main()
