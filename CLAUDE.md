# Dolphin AI Actions

## Project Overview

KDE Dolphin service menu actions that launch AI coding agents in Konsole at the selected directory. Target environment is Ubuntu 25.10 with KDE Plasma 6.4.5 on Wayland.

## Key Paths

- **Service menus install location:** `~/.local/share/kio/servicemenus/`
- **Actions source:** `actions/<action-id>/` — each contains a `.desktop` file, `install.sh`, and `uninstall.sh`
- **Spec:** `planning/SPEC.md`
- **Private notes (not for publishing):** `private`

## Conventions

- Each action gets its own subdirectory under `actions/`
- `.desktop` files follow the KDE 6 service menu format (`Type=Service`, `MimeType=inode/directory;`)
- Install scripts copy the `.desktop` file to the service menus directory; uninstall scripts remove it
- Multi-window layouts need a wrapper script (Wayland constraint) — stored alongside the `.desktop` file

## Current Status

- **Open In Claude:** Complete
- **Open In Claude Code (Safe Mode):** Complete
- **Open In Codex:** Complete
- **Multi-window actions:** Not yet built — see `planning/SPEC.md`

## Notes

- This is a work in progress
- The `private` file contains raw planning notes and should not be included in documentation
