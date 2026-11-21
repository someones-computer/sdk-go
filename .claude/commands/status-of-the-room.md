---
description: Report the state of the dev-session room in one pass, then nudge each idle session to take more work or archive itself
argument-hint: "[report-only]"
---

Invoke the `status-of-the-room` skill via the Skill tool, passing `$ARGUMENTS` as its args.

Some clients don't load a skill that's a symlink, and the Skill tool then answers `Unknown skill`.
If that happens, don't stop. Read `.claude/skills/status-of-the-room/SKILL.md` and follow it
yourself, with `$ARGUMENTS` as its arguments.

This project's client resolves typed `/name` commands only in `.claude/commands/`. That's the
only reason this file exists. Keep it a thin pointer. Put real changes in
`.claude/agent-standards/skills/status-of-the-room/SKILL.md` instead.
