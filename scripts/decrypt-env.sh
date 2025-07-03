#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

# Prepare identities arguments for age
identity_args=()
for key in ~/.ssh/*; do
    if [ -f "$key" ] && ! [[ "$key" == *.pub ]] && [ -f "$key.pub" ]; then
        identity_args+=("-i" "$key")
    fi
done

age -d "${identity_args[@]}" -o .env .env.age
