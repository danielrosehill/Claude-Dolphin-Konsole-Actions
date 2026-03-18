#!/bin/bash
# Install "Open In Claude Code (Safe Mode)" Dolphin service menu action

SERVICEMENUS_DIR="$HOME/.local/share/kio/servicemenus"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$SERVICEMENUS_DIR"
cp "$SCRIPT_DIR/open-in-claude-code-safe.desktop" "$SERVICEMENUS_DIR/"

echo "Installed: Open In Claude Code (Safe Mode)"
echo "Right-click a folder in Dolphin to use it."
