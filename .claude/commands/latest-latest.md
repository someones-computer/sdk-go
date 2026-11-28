---
description: Bring the project to the newest main and the newest agent-standards, run the installer, and prove the wiring with check-wiring.sh --ci
argument-hint: "[check]  check only reads and reports. The default also installs and opens the pull request"
---

Invoke the `latest-latest` skill via the Skill tool, passing `$ARGUMENTS` as its args.

Some clients don't load a skill that's a symlink, and the Skill tool then answers `Unknown skill`.
If that happens, don't stop. Read `.claude/skills/latest-latest/SKILL.md` and follow it yourself,
with `$ARGUMENTS` as its arguments. Its `allowed-tools` line is then advice, not a limit.

This project's client resolves typed `/name` commands only in `.claude/commands/`. That's the
only reason this file exists. Keep it a thin pointer. Put real changes in
`.claude/agent-standards/skills/latest-latest/SKILL.md` instead.
