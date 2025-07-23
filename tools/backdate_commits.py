#!/usr/bin/env python3
"""
Backdate commit history across a chosen 6-10 month low-activity window
using RNG with roughly even spacing and natural variance.

Copyright (c) 2026 Aneesh Krishna Parthasarathy
Licensed under the ISC License.
"""

import os
import random
import subprocess
import sys
from datetime import datetime, timedelta

def main():
    repo_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
    os.chdir(repo_dir)

    # 1. Fetch commits in chronological order
    commits = subprocess.check_output(
        ["git", "rev-list", "--reverse", "HEAD"], text=True
    ).strip().split("\n")
    num_commits = len(commits)
    print(f"Total commits to rewrite: {num_commits}")

    # 2. Configure time window: 2024-12-10 to 2025-07-22 (224 days, ~7.36 months)
    start_date = datetime(2024, 12, 10)
    end_date = datetime(2025, 7, 22)
    total_days = (end_date - start_date).days

    random.seed(495)

    steps = []
    for _ in range(num_commits - 1):
        r = random.random()
        if r < 0.12:
            step = 0
        elif r < 0.35:
            step = random.randint(1, 2)
        elif r < 0.75:
            step = random.randint(3, 4)
        elif r < 0.92:
            step = random.randint(5, 6)
        else:
            step = random.randint(6, 7)
        steps.append(step)

    diff = total_days - sum(steps)
    indices = list(range(len(steps)))
    random.shuffle(indices)
    for idx in indices:
        if diff == 0:
            break
        if diff > 0:
            steps[idx] += 1
            diff -= 1
        elif diff < 0 and steps[idx] > 1:
            steps[idx] -= 1
            diff += 1

    day_offsets = [0]
    cum = 0
    for s in steps:
        cum += s
        day_offsets.append(cum)

    def sample_time_of_day():
        r = random.random()
        if r < 0.12:
            hour = random.randint(9, 11)
            minute = random.randint(15, 59)
        elif r < 0.45:
            hour = random.randint(12, 17)
            minute = random.randint(5, 55)
        elif r < 0.85:
            hour = random.randint(18, 22)
            minute = random.randint(5, 55)
        else:
            hour = random.choice([23, 0])
            minute = random.randint(5, 55)
        second = random.randint(10, 58)
        return hour, minute, second

    commit_dts = []
    last_dt = None
    for offset in day_offsets:
        base_day = start_date + timedelta(days=offset)
        valid = False
        attempts = 0
        while not valid and attempts < 100:
            attempts += 1
            h, m, s = sample_time_of_day()
            if h == 0:
                dt = base_day + timedelta(days=1, hours=0, minutes=m, seconds=s)
            else:
                dt = base_day + timedelta(hours=h, minutes=m, seconds=s)
            if last_dt is None or dt > last_dt + timedelta(minutes=45):
                valid = True
        if not valid:
            dt = last_dt + timedelta(
                hours=random.randint(2, 5), minutes=random.randint(10, 40)
            )
        last_dt = dt
        commit_dts.append(dt)

    dst_switch = datetime(2025, 3, 9, 2, 0, 0)
    timestamps = []
    for dt in commit_dts:
        tz = "-0500" if dt < dst_switch else "-0400"
        timestamps.append(dt.strftime("%Y-%m-%d %H:%M:%S") + " " + tz)

    # 3. Rewrite commit tree objects
    parent = None
    new_commits = []

    for i, commit in enumerate(commits):
        tree = subprocess.check_output(
            ["git", "rev-parse", f"{commit}^{{tree}}"], text=True
        ).strip()
        msg = subprocess.check_output(
            ["git", "log", "-1", "--format=%B", commit], text=True
        )
        author_name = subprocess.check_output(
            ["git", "log", "-1", "--format=%an", commit], text=True
        ).strip()
        author_email = subprocess.check_output(
            ["git", "log", "-1", "--format=%ae", commit], text=True
        ).strip()

        date_str = timestamps[i]

        env = os.environ.copy()
        env["GIT_AUTHOR_NAME"] = author_name
        env["GIT_AUTHOR_EMAIL"] = author_email
        env["GIT_AUTHOR_DATE"] = date_str
        env["GIT_COMMITTER_NAME"] = author_name
        env["GIT_COMMITTER_EMAIL"] = author_email
        env["GIT_COMMITTER_DATE"] = date_str

        cmd = ["git", "commit-tree", tree]
        if parent:
            cmd.extend(["-p", parent])

        new_commit = subprocess.check_output(
            cmd, input=msg, text=True, env=env
        ).strip()
        parent = new_commit
        new_commits.append(new_commit)

    print(f"Old HEAD: {commits[-1]}")
    print(f"New HEAD: {parent}")

    # 4. Update main branch to new HEAD
    subprocess.check_call(["git", "reset", "--hard", parent])
    print("Branch main successfully reset to backdated HEAD.")

if __name__ == "__main__":
    main()
