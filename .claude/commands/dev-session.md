---
description: Set up, resume, or hand off a development room. This session becomes the clearinghouse and starts each subsession from .claude/dev-session.yaml
argument-hint: "[resume|handoff|dry-run|status|tick] [only=key,key] [spike:<key>] [no-patrol]"
---

Invoke the `dev-session` skill via the Skill tool, passing `$ARGUMENTS` as its args.

Some clients don't load a skill that's a symlink, and the Skill tool then answers `Unknown skill`.
If that happens, don't stop. Read `.claude/skills/dev-session/SKILL.md` and follow it yourself, with
`$ARGUMENTS` as its arguments.

This project's client resolves typed `/name` commands only in `.claude/commands/`. It doesn't
look in `.claude/skills/`. That's the only reason this file exists. Keep this file a thin
pointer. Put real changes in `.claude/agent-standards/skills/dev-session/SKILL.md` instead.
