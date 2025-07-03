#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

rm -rf searx-stream.zip || true
zip -r -FS searx-stream.zip ./* \
    --exclude '*.*' \
    --exclude '*scripts*' \
    --exclude '*LICENSE*' \
    --exclude '*README.md*'
