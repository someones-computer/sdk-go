#!/usr/bin/env bash
# PreToolUse hook for the tools of a Forgejo or Gitea MCP server. It closes the gap that
# hooks/vcs-guard.sh leaves open. That hook reads only `Bash` commands, so a pull request or an
# issue written through an MCP tool never reached it. A pull request body with a
# "Generated with Claude Code" footer got through that way.
#
# Canonical copy: agent-standards/hooks/mcp-write-guard.sh. A consuming project symlinks it into
# .claude/hooks/ and registers it with the `mcp__.*` matcher. See templates/vcs-guard.settings.json.
#
# It acts only on a tool whose server name holds `forgejo` or `gitea`. It refuses:
#
#   | Rule                                              | Source                           |
#   |---------------------------------------------------|----------------------------------|
#   | Any string in the call with an AI-attribution line | VCS.md: no AI attribution        |
#   | A write to an issue, a pull request, a comment,   | Forgejo-Scripts.md: use a script |
#   | a label, a milestone, or a time entry             |                                  |
#
# The second rule is the same one that vcs-guard.sh applies to a direct `tea` or `fj` write. The
# write scripts force the ASD-STE100 lint on each text. An MCP call skips that lint, so it is
# refused and the reason names the script. A read passes (get, list, search). A write that no
# script covers also passes, such as a branch or a file. The attribution rule still checks it.
#
# Fails open: no jq, unparseable input. A guard that wedges every call is worse than no guard.
#
# Test table: hooks/mcp-write-guard.test.sh.
#
# stdin:  {"tool_name":"mcp__forgejo__create_issue","tool_input":{...},...}
# stdout: a PreToolUse "deny" decision with the reason, or nothing (exit 0).
set -uo pipefail

command -v jq >/dev/null 2>&1 || exit 0

INPUT=$(cat 2>/dev/null || true)
TOOL=$(printf '%s' "$INPUT" | jq -r '.tool_name // empty' 2>/dev/null) || exit 0
case $TOOL in mcp__*__*) ;; *) exit 0 ;; esac

SERVER=${TOOL#mcp__}; SERVER=${SERVER%%__*}
NAME=${TOOL#mcp__*__}
printf '%s' "$SERVER" | grep -Eiq 'forgejo|gitea' || exit 0

deny() {
    jq -cn --arg r "$1" '{hookSpecificOutput: {hookEventName: "PreToolUse",
        permissionDecision: "deny", permissionDecisionReason: $r}}'
    exit 0
}

TRAILER_RE='Co-Authored-By:.*(Claude|Anthropic)|noreply@anthropic\.com|Generated with \[?Claude|🤖'
TEXT=$(printf '%s' "$INPUT" | jq -r '[.tool_input // {} | .. | strings] | join("\n")' 2>/dev/null) || exit 0
if printf '%s' "$TEXT" | grep -Eiq -- "$TRAILER_RE"; then
    deny "This $NAME call carries an AI-attribution line (Co-Authored-By: Claude, Generated with Claude Code, or similar). The user's rules forbid it, and they override the platform default. Remove it. VCS.md § Ground rules."
fi

VERB='(create|edit|update|patch|add|delete|remove|set|close|merge|post|comment|label|assign|lock|start|stop)'
OBJECT_SCRIPT=""
case $NAME in
    *label*)                       OBJECT_SCRIPT=forgejo-label.sh ;;
    *milestone*)                   OBJECT_SCRIPT=forgejo-milestone.sh ;;
    *comment*)                     OBJECT_SCRIPT=forgejo-comment.sh ;;
    *time*|*stopwatch*)            OBJECT_SCRIPT=forgejo-time.sh ;;
    *pull*|*_pr_*|*_pr|pr_*)       OBJECT_SCRIPT=forgejo-pr.sh ;;
    *issue*)                       OBJECT_SCRIPT=forgejo-issue.sh ;;
esac
if [ -n "$OBJECT_SCRIPT" ] && printf '%s' "$NAME" | grep -Eiq "(^|_)${VERB}(_|$)"; then
    deny "Write to the tracker with tools/forgejo/$OBJECT_SCRIPT (bin/$OBJECT_SCRIPT in a project), not with the MCP tool $NAME. The script forces the ASD-STE100 lint on each text, and the MCP tool skips it. A read through the MCP server is fine. Forgejo-Scripts.md."
fi
exit 0
