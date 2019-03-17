#!/usr/bin/env bash

set -euo pipefail

IMAGE=${1:-mamachanko/bash}

docker \
    build \
    . \
    --tag ${IMAGE}:latest

docker \
    push \
    ${IMAGE}
