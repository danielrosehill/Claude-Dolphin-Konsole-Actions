# Claude Dolphin & Konsole Actions

> **Work in Progress**

Dolphin right-click context menu actions (KDE service menus) for launching Claude Code and related tools in structured window layouts.

## Environment

- Ubuntu 25.10 (Questing Quokka)
- KDE Plasma 6.4.5 / Wayland
- Dolphin 25.08.1
- Konsole 25.08.1

## Actions

| # | Action | Layout | Status |
|---|--------|--------|--------|
| 1 | [Open In Claude](actions/open-in-claude-code/) | Single terminal | Done |
| 2 | Claude + Raw Terminal | 2/3 + 1/3 split | Planned |
| 3 | Super Claude (2x / 4x) | Grid of Claude instances | Planned |
| 4 | Claude + Terminal + File Manager | Three-pane | Planned |
| 5 | Claude + File Manager | 2/3 + 1/3 split | Planned |

## Structure

```
actions/           # .desktop files, install & uninstall scripts per action
planning/          # Specification and design documents
screenshots/       # Screenshots of working actions
```

## Installation

Each action has its own `install.sh` and `uninstall.sh`:

```bash
cd actions/open-in-claude-code
./install.sh    # Copies .desktop file to ~/.local/share/kio/servicemenus/
./uninstall.sh  # Removes it
```

## Specification

See [planning/SPEC.md](planning/SPEC.md) for the full specification.
