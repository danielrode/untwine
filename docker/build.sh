#!/usr/bin/env bash
# Author: Daniel Rode
# Dependencies:
#   Podman 5.3.1


VER=1.4.0  # Container version


# Exit on error
set -e

# Change directory to where this script is
cd "$(dirname "$0")"

# Build container
echo "Building container..."
podman build \
  --label "Version=$VER" \
  --tag "vogeler-lab/untwine:${VER}" \
  . \
;
