#!/usr/bin/env bash
# Stop hook. A session sometimes ends its turn with "the design is in PR 125, please approve" and
# the user has never seen the design in chat. A link is not the design. This hook reads the last
# assistant message. When the message asks the user to approve, review, or sign off on a design,
# it checks that the message holds the design itself. If it does not, the hook holds the stop once.
#
# Canonical copy: agent-standards/hooks/check-design-shown.sh. A consuming project symlinks it into
# .claude/hooks/ and registers it as a Stop hook next to check-named-work.sh.
# Docs: docs/Topics/Design-Shown.md.
#
# Rules:
#   - A line is an ask when it names a design word (design, proposal, approach, architecture,
#     spec, plan) and an approval word (approve, approval, sign off, go-ahead, ok to build,
#     before I build, review, agree).
#   - The message shows the design when, after the hook removes each link target and bare address,
#     it holds one of these:
#       * three or more list or table lines, or
#       * a fenced block of three or more lines (a diagram, a sketch), or
#       * a rendered picture in this turn (a show_widget or Artifact call after the last user
#         prompt in the transcript).
#   - Every other message that asks for design approval is a hit.
#   - The hook blocks one time for each turn. The stop that follows a block has stop_hook_active
#     set, and the hook lets it pass. It cannot loop.
#
# The hook fails open on every fault: no jq, bad stdin, or no message. A subagent stop passes.
#
# Test table: hooks/check-design-shown.test.sh.
#
# stdin:  {"session_id":"...","transcript_path":"...","stop_hook_active":bool,
#          "last_assistant_message":"..."}
# stdout: {"decision":"block","reason":"..."} to hold the stop once, or nothing (exit 0).
set -uo pipefail

command -v jq >/dev/null 2>&1 || exit 0

INPUT=$(cat 2>/dev/null || true)
[ -n "$INPUT" ] || exit 0

[ "$(printf '%s' "$INPUT" | jq -r '.stop_hook_active // false' 2>/dev/null)" = "false" ] || exit 0
[ -z "$(printf '%s' "$INPUT" | jq -r '.agent_id // empty' 2>/dev/null)" ] || exit 0

TRANSCRIPT=$(printf '%s' "$INPUT" | jq -r '.transcript_path // empty' 2>/dev/null)
TEXT=$(printf '%s' "$INPUT" | jq -r '.last_assistant_message // empty' 2>/dev/null)
if [ -z "$TEXT" ]; then
    if [ -n "$TRANSCRIPT" ] && [ -r "$TRANSCRIPT" ]; then
        # shellcheck disable=SC2016  # the $ names are jq variables
        TEXT=$(jq -nR '[inputs | fromjson? | select(.type == "assistant" and .isSidechain != true)
            | .message.content | if type == "string" then . else (map(select(.type == "text") | .text) | join("\n")) end
            | select(length > 0)] | last // ""' -r "$TRANSCRIPT" 2>/dev/null)
    fi
fi
[ -n "$TEXT" ] || exit 0

DESIGN='design|proposal|approach|architecture|spec|plan'
ASK='approv|sign[- ]?off|go-?ahead|ok(ay)? to (build|implement|proceed|start)|before i (build|code|implement|start)|review (it|the|this)|do you agree|agree (with|to)'

ask=no
while IFS= read -r line; do
    lower=$(printf '%s' "$line" | tr '[:upper:]' '[:lower:]')
    if printf '%s' "$lower" | grep -Eq "$DESIGN" && printf '%s' "$lower" | grep -Eq "$ASK"; then
        ask=yes
        break
    fi
done <<<"$TEXT"
[ "$ask" = yes ] || exit 0

# A rendered picture in this turn counts as the design. The turn starts at the last user prompt.
if [ -n "$TRANSCRIPT" ] && [ -r "$TRANSCRIPT" ]; then
    # shellcheck disable=SC2016  # the $ names are jq variables
    shown=$(jq -s '
        [.[] | select(.isSidechain != true)] as $m
        | ([$m | to_entries[]
            | select(.value.type == "user"
                and (.value.message.content
                    | if type == "string" then true
                      else any(.[]; .type == "text") end))
            | .key] | last // -1) as $u
        | [$m[($u + 1):][] | select(.type == "assistant") | .message.content
            | if type == "array" then .[] | select(.type == "tool_use") | .name else empty end
            | select(test("show_widget|^Artifact$"))] | length > 0' "$TRANSCRIPT" 2>/dev/null) || shown=false
    [ "$shown" = true ] && exit 0
fi

# Strip link targets and bare addresses, so a link adds no body. Count list lines, table rows, and
# the lines inside fenced blocks.
body=0
fence=no
fenced=0
while IFS= read -r line; do
    case "$line" in
        '```'*)
            if [ "$fence" = no ]; then fence=yes; fenced=0; else
                fence=no
                [ "$fenced" -ge 3 ] && body=$((body + 3))
            fi
            continue
            ;;
    esac
    if [ "$fence" = yes ]; then
        [ -n "${line//[[:space:]]/}" ] && fenced=$((fenced + 1))
        continue
    fi
    clean=$(printf '%s' "$line" | sed -E 's/\]\([^)]*\)/]/g; s#https?://[^[:space:])]+##g')
    case "$clean" in
        [[:space:]]*'- '* | '- '* | [[:space:]]*'* '* | '* '* | [[:space:]]*[0-9].' '* | [0-9].' '* | '|'*)
            # A table separator row (|---|---|) is no body.
            if printf '%s' "$clean" | grep -Eq '^[[:space:]]*\|[-:| ]+\|?[[:space:]]*$'; then continue; fi
            body=$((body + 1))
            ;;
    esac
done <<<"$TEXT"
[ "$body" -lt 3 ] || exit 0

REASON="Your report asks the user to approve or review a design, but the message does not show the design. A link, a PR, or a file path is not the design. The user must see it in this chat before the ask. Show now: (1) a picture or a table of the structure, or at least three short lines of the key choices, (2) each open decision with its options, cost, and your recommendation. Then ask. See docs/Topics/Design-Shown.md."
jq -cn --arg r "$REASON" '{decision: "block", reason: $r}' 2>/dev/null || exit 0
exit 0
