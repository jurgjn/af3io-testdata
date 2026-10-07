#!/bin/bash
set -euo pipefail
URL="https://zenodo.org/records/16920556/files/pools_5k.tar?download=1"

curl -sSL "$URL" 2>/dev/null | tar -xf - --occurrence \
    pools_5k_0040f80.zip pools_5k_03752e2.zip pools_5k_070f28a.zip || true

for f in pools_5k_0040f80.zip pools_5k_03752e2.zip pools_5k_070f28a.zip; do
    unzip -n "$f"
done

rm pools_5k_0040f80.zip pools_5k_03752e2.zip pools_5k_070f28a.zip

zstd -r --rm pools_5k_0040f80/
zstd -r --rm pools_5k_03752e2/
zstd -r --rm pools_5k_070f28a/
