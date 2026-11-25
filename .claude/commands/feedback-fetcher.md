---
description: Find new feedback on open PRs, tell the owning session, and offer a fix. Nothing goes out until you agree
argument-hint: "[once] [prs=7,9] [all]  optional: prs= limits the sweep to those PRs. all also reads PRs that other people wrote"
---

Invoke the `feedback-fetcher` skill via the Skill tool, passing `$ARGUMENTS` as its args.

Some clients don't load a skill that's a symlink, and the Skill tool then answers `Unknown skill`.
If that happens, don't stop. Read `.claude/skills/feedback-fetcher/SKILL.md` and follow it yourself,
with `$ARGUMENTS` as its arguments. Its `allowed-tools` line is then advice, not a limit.

This project's client resolves typed `/name` commands only in `.claude/commands/`. It doesn't
look in `.claude/skills/`. That's the only reason this file exists. The skill itself is the
real source of behavior. Keep this file a thin pointer. Put real changes in
`.claude/agent-standards/skills/feedback-fetcher/SKILL.md` instead.
