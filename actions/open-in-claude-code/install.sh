#!/bin/bash
# Install "Open In Claude" Dolphin service menu action

SERVICEMENUS_DIR="$HOME/.local/share/kio/servicemenus"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$SERVICEMENUS_DIR"
cp "$SCRIPT_DIR/open-in-claude-code.desktop" "$SERVICEMENUS_DIR/"

echo "Installed: Open In Claude"
echo "Right-click a folder in Dolphin to use it."
