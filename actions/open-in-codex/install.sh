#!/bin/bash
# Install the "Open In Codex" Dolphin service menu action.

set -euo pipefail

SERVICEMENUS_DIR="$HOME/.local/share/kio/servicemenus"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if ! command -v codex >/dev/null 2>&1; then
    echo "Warning: codex is not currently available on PATH." >&2
fi

mkdir -p "$SERVICEMENUS_DIR"
cp "$SCRIPT_DIR/open-in-codex.desktop" "$SERVICEMENUS_DIR/"

echo "Installed: Open In Codex"
echo "Right-click a folder in Dolphin to use it."
