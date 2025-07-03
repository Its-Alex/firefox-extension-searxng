#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

web-ext sign -s src --channel unlisted --amo-metadata amo-metadata.json
