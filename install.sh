#!/usr/bin/env bash
set -euo pipefail

# Symlink into home directory
cd "$(dirname "$0")"
stow -t ~ home

