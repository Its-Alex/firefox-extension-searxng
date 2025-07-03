#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

# Prepare recipients arguments for age
recipient_args=()
for pubkey in ./ssh-keys/*.pub; do
    if [ -f "$pubkey" ]; then
        recipient_args+=("-R" "$pubkey")
    fi
done

age "${recipient_args[@]}" -o .env.age .env
