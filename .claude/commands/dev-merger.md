---
description: Evaluate each open pull request of the dev-session room and land the ready ones, one at a time, under the merge-queue grant
argument-hint: "[once]"
---

Invoke the `dev-merger` skill via the Skill tool, passing `$ARGUMENTS` as its args.

Some clients don't load a skill that's a symlink, and the Skill tool then answers `Unknown skill`.
If that happens, don't stop. Read `.claude/skills/dev-merger/SKILL.md` and follow it
yourself, with `$ARGUMENTS` as its arguments.

This project's client resolves typed `/name` commands only in `.claude/commands/`. That's the
only reason this file exists. Keep it a thin pointer. Put real changes in
`.claude/agent-standards/skills/dev-merger/SKILL.md` instead.
