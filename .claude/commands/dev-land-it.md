---
description: Draw a roadmap of the steps that stand between the topics of this thread and landed. Highlight in gold each step with nothing in its way
argument-hint: ""
---

Invoke the `dev-land-it` skill via the Skill tool.

Some clients don't load a skill that's a symlink, and the Skill tool then answers `Unknown skill`.
If that happens, don't stop. Read `.claude/skills/dev-land-it/SKILL.md` and follow it yourself.

This project's client resolves typed `/name` commands only in `.claude/commands/`. That's the
reason this file exists.
