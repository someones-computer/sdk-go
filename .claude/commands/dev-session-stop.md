---
description: Shut down a /dev-session room in order. Wind down every session, settle every pull request, archive, and report what only the user can do
argument-hint: "[dry-run]"
---

Invoke the `dev-session-stop` skill via the Skill tool, passing `$ARGUMENTS` as its args.

Some clients don't load a skill that's a symlink, and the Skill tool then answers `Unknown skill`.
If that happens, don't stop. Read `.claude/skills/dev-session-stop/SKILL.md` and follow it
yourself, with `$ARGUMENTS` as its arguments.

This project's client resolves typed `/name` commands only in `.claude/commands/`. That's the
only reason this file exists. Keep it a thin pointer. Put real changes in
`.claude/agent-standards/skills/dev-session-stop/SKILL.md` instead.
