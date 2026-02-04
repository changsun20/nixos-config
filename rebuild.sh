#!/bin/bash

set -e

if [ -z "$1" ]; then
    echo "Error: Hostname argument required" >&2
    echo "Usage: $0 <hostname>" >&2
    exit 1
fi

treefmt .
git add .
sudo nixos-rebuild switch --flake .#"$1"
