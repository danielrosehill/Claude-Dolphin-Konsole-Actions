#!/bin/bash
# Uninstall the "Open In Codex" Dolphin service menu action.

set -euo pipefail

rm -f "$HOME/.local/share/kio/servicemenus/open-in-codex.desktop"

echo "Uninstalled: Open In Codex"
