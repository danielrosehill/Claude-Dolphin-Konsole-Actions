# Dolphin AI Actions

Dolphin right-click context menu actions (KDE service menus) for opening a selected directory in AI coding agents.

## Available actions

| Action | Command | Status |
|---|---|---|
| [Open In Claude](actions/open-in-claude-code/) | `claude --dangerously-skip-permissions` | Ready |
| [Open In Claude Code (Safe Mode)](actions/open-in-claude-code-safe/) | `claude` | Ready |
| [Open In Codex](actions/open-in-codex/) | `codex` | Ready |

Each action opens Konsole at the selected directory and starts the corresponding CLI.

## Requirements

- KDE Plasma with Dolphin and Konsole
- The CLI for the action you want to install (`claude` or `codex`) available on your `PATH`

The actions use the KDE 6 service-menu directory: `~/.local/share/kio/servicemenus/`.

## Installation

Each action has its own installer. For example:

```bash
cd actions/open-in-codex
./install.sh
```

To install a Claude action instead, run the installer in its action directory:

```bash
cd actions/open-in-claude-code
./install.sh
```

Restart Dolphin if the new entry does not appear immediately:

```bash
kquitapp6 dolphin
dolphin &
```

## Uninstallation

Run the matching uninstaller from the action directory:

```bash
cd actions/open-in-codex
./uninstall.sh
```

## Repository structure

```text
actions/           # One directory per service-menu action
planning/          # Specifications and future ideas
screenshots/       # Screenshots of working actions
```

See [planning/SPEC.md](planning/SPEC.md) for implementation details and planned layouts.
