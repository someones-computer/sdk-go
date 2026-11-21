---
description: Collate the work not done yet from TODO files, memory, the tracker, and past sessions. Ask about blockers. Offer sessions to start in parallel
argument-hint: "[scope]  optional: a label, a milestone, or a path to narrow the sweep"
---

Invoke the `whats-next` skill via the Skill tool, passing `$ARGUMENTS` as its args.

Some clients don't load a skill that's a symlink, and the Skill tool then answers `Unknown skill`.
If that happens, don't stop. Read `.claude/skills/whats-next/SKILL.md` and follow it yourself, with
`$ARGUMENTS` as its arguments. Its `allowed-tools` line is then advice, not a limit.

This project's client resolves typed `/name` commands only in `.claude/commands/`. It doesn't
look in `.claude/skills/`. That's the only reason this file exists. The skill itself is the
real source of behavior (same name, same frontmatter shape). Keep this file a thin pointer. Put
real changes in `.claude/agent-standards/skills/whats-next/SKILL.md` instead.
