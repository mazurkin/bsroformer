#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail
set -o monitor
set -o noglob

# calculate the script's directory
SCRIPT_DIR=$(dirname -- "$(readlink -f -- "${BASH_SOURCE[0]}")")
declare -r SCRIPT_DIR

# calculate the package directory
PACKAGE_DIR=$(dirname -- "${SCRIPT_DIR}")
declare -r -x PACKAGE_DIR

export PYTHONDONTWRITEBYTECODE="1"
export PYTHONUNBUFFERED="1"
export PYTHONWARNINGS="ignore"

exec conda run --no-capture-output --live-stream --name bsroformer \
    bs-roformer-infer \
        --models_dir "${PACKAGE_DIR}/models" \
        --input_folder "${PACKAGE_DIR}/input" \
        --store_dir "${PACKAGE_DIR}/separated"
