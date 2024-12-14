# Ullage Cryogenic Test Executive and Rhai Automation Suite
# Makefile for building, testing, verifying, and running diagnostics

.PHONY: all build release test verify lint clean check-dashes bench

CARGO ?= cargo
PYTHON ?= python3

all: check-dashes build test

build:
	$(CARGO) build

release:
	$(CARGO) build --release

test:
	$(CARGO) test --all

verify: check-dashes
	$(CARGO) test --all -- --nocapture
	$(PYTHON) tools/check_no_em_dash.py
	$(CARGO) run -- verify

check-dashes:
	$(PYTHON) tools/check_no_em_dash.py

bench:
	$(CARGO) bench --all || $(CARGO) test --release -- --nocapture

clean:
	$(CARGO) clean
	rm -rf dist/ build/
