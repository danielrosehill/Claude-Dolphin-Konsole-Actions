# KRunner Integration

## Idea

Investigate whether a KRunner plugin can be created to complement the Dolphin service menu actions. KRunner is the KDE launcher (Alt+Space) and supports custom runners.

## Use Cases

- **Open folder in an AI coding agent** — type a path or folder name in KRunner, select Claude or Codex, and launch Konsole with that agent at the path. This would complement the existing "Open In Terminal" KRunner action.
- **All actions via KRunner** — potentially expose all Dolphin AI actions as KRunner results, so users aren't limited to right-clicking in Dolphin.

## Research Needed

- What format do KDE 6 / Plasma 6 KRunner plugins use?
- Can a KRunner plugin reuse the same `.desktop` service menu entries, or does it need its own plugin format?
- Are there existing KRunner plugins for "Open in Terminal" that could be adapted?
- Does KRunner support passing a directory path as an argument to custom actions?

## Priority

Low — nice-to-have after the core Dolphin actions are built.
