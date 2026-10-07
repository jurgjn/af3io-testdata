#!/bin/bash
set -euo pipefail
rclone copy \
  $PROJECT/26.06_batch-infer/examples-dev/alphafold3_examples/alphafold3_examples-v3.0.4 \
  $PROJECT/26.10_af3io-testdata/alphafold3_examples \
  --include "/alphafold3_jsons/**" \
  --include "/alphafold3_predictions/**" \
  --include "/config.yaml" \
  --progress