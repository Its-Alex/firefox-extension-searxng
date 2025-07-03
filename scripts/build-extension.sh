#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

web-ext build -s src -o
