# Claude Dolphin & Konsole Actions — Specification

## Environment

| Parameter | Value |
|---|---|
| OS | Ubuntu 25.10 (Questing Quokka) |
| Desktop Environment | KDE Plasma 6.4.5 |
| Display Server | Wayland |
| File Manager | Dolphin 25.08.1 |
| Terminal Emulator | Konsole 25.08.1 |
| Service Menu Path | `~/.local/share/kio/servicemenus/` |

## Purpose

This repository develops **Dolphin right-click context menu actions** (KDE service menus) that launch Claude Code and related tools in structured window layouts. Each action is a `.desktop` file installed into the KDE service menus directory.

### Repository Deliverables

For each action:

- `.desktop` service menu entry
- Install script
- Uninstall script
- Screenshot (when working)

## Design Principles

- Actions appear in Dolphin's right-click context menu on **directories**
- Multi-window actions require a **window wrapper** to maintain grid/split layouts under Wayland
- Konsole is the preferred terminal; alternatives acceptable where needed
- All actions open in/at the path of the right-clicked directory

## Actions

### 1. Open In Claude (Existing — Installed)

**ID:** `open-in-claude-code`
**Status:** Installed and working
**Layout:** Single window
**Description:** Opens Konsole at the selected directory and launches `claude` with `--dangerously-skip-permissions` (all tool calls auto-approved).

```ini
[Desktop Entry]
Type=Service
ServiceTypes=KonqPopupMenu/Plugin
MimeType=inode/directory;
Actions=openInClaudeCode
X-KDE-Priority=TopLevel

[Desktop Action openInClaudeCode]
Name=Open In Claude
Icon=utilities-terminal
Exec=konsole -e bash -c 'cd "%f" && claude --dangerously-skip-permissions'
```

---

### 1b. Open In Claude Code (Safe Mode) (Installed)

**ID:** `open-in-claude-code-safe`
**Status:** Installed and working
**Layout:** Single window
**Description:** Opens Konsole at the selected directory and launches `claude` with default (safe) permissions — tool calls require approval.

```ini
[Desktop Entry]
Type=Service
ServiceTypes=KonqPopupMenu/Plugin
MimeType=inode/directory;
Actions=openInClaudeCodeSafe
X-KDE-Priority=TopLevel

[Desktop Action openInClaudeCodeSafe]
Name=Open In Claude Code (Safe Mode)
Icon=utilities-terminal
Exec=konsole -e bash -c 'cd "%f" && claude'
```

---

### 2. Claude + Raw Terminal (Split)

**ID:** `claude-split-terminal`
**Status:** Not yet created
**Layout:** Horizontal split — ~2/3 left, ~1/3 right
**Description:** Opens two panes side by side:

| Left (~2/3) | Right (~1/3) |
|---|---|
| Konsole running `claude` | Konsole (raw terminal, no claude) |

Both open at the selected directory path. May use Konsole's built-in split/tab/profile features or a window wrapper.

---

### 3. Super Claude (Multi-Instance)

**ID:** `super-claude-2x` / `super-claude-4x`
**Status:** Not yet created
**Layout:** Grid of Claude instances

Two variants:

- **2x:** Two Claude CLI instances side by side
- **4x:** Four Claude CLI instances in a 2x2 grid

Requires a window wrapper to maintain the grid layout.

---

### 4. Claude + Terminal + File Manager

**ID:** `claude-terminal-filemanager`
**Status:** Not yet created
**Layout:** Three-pane layout
**Description:** Opens three elements bound together:

| Left | Center | Right |
|---|---|---|
| Konsole running `claude` | Raw terminal (no claude) | File manager (PCManFM or default) at directory |

Requires a window wrapper to bind three windows together.

---

### 5. Claude + File Manager

**ID:** `claude-filemanager`
**Status:** Not yet created
**Layout:** Horizontal split — ~2/3 left, ~1/3 right
**Description:** Opens two panes side by side:

| Left (~2/3) | Right (~1/3) |
|---|---|
| Konsole running `claude` | File manager at directory |

---

## Future Scope

- **Arbitrary combinations:** Allow users to define custom layouts (e.g., Claude + terminal + 2x file manager, file manager at subpaths, etc.)
- Not in current scope — initial focus is the five actions above.

## Technical Considerations

- **Wayland compatibility:** Window positioning/tiling must work under Wayland (KDE Plasma 6 on Wayland)
- **Window wrapper:** Multi-window actions need a mechanism to spawn and arrange multiple windows in a defined layout. Options to investigate:
  - Konsole profiles with split views (for terminal-only layouts)
  - KDE KWin scripting / window rules
  - A launcher script using `kdotool` or similar
  - `tmux`/`zellij` for terminal-only multi-pane layouts
- **Service menu format:** KDE 6 uses `~/.local/share/kio/servicemenus/*.desktop`
