#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

web-ext lint -s src --self-hosted
