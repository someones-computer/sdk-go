---
description: Cowork with the user on one topic. Bring up the app in the browser pane, change it in small steps while the user watches, and hold all commits until the user ends the work
argument-hint: "<topic>"
---

Invoke the `dev-with-me` skill via the Skill tool, passing `$ARGUMENTS` as its args.

Some clients don't load a skill that's a symlink, and the Skill tool then answers `Unknown skill`.
If that happens, don't stop. Read `.claude/skills/dev-with-me/SKILL.md` and follow it
yourself, with `$ARGUMENTS` as its arguments.

This project's client resolves typed `/name` commands only in `.claude/commands/`. That's the
only reason this file exists. Keep it a thin pointer. Put real changes in
`.claude/agent-standards/skills/dev-with-me/SKILL.md` instead.
