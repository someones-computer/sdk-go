#!/usr/bin/env bash
# SessionStart hook: stop a session that starts in the wrong folder.
#
# A skill session can open in a folder that is not the project root. A common case is the
# `.claude/agent-standards` submodule checkout. The forgejo scripts then read the `origin` remote
# of that folder and act on another repo (lexi issue 3).
#
# The hook compares two repos:
#   - the repo of the start folder: the `origin` remote of the folder where the session opened.
#   - the repo of the project, taken from the first source that answers:
#       1. FORGEJO_PROJECT_REPO, an owner/name.
#       2. `repo=owner/name` in .claude/agent-standards.conf of CLAUDE_PROJECT_DIR.
#       3. The `origin` of the superproject, when the start folder is a submodule checkout.
#       4. The `origin` of CLAUDE_PROJECT_DIR, when that folder differs from the start folder.
# A mismatch stops the session with a clear message. A project that no source names gets no check.
#
# stdin:  the hook JSON: {"cwd": "...", "source": "..."}
# stdout: on a mismatch, the JSON {"continue": false, "stopReason": "..."}. Silent otherwise.
# Never fatal. Every path exits 0, and a folder with no origin remote gets no check.
#
# Canonical copy: agent-standards/hooks/check-start-folder.sh. Symlink it into .claude/hooks/.
set -uo pipefail

# normalise <url-or-owner/name>: print owner/name, lower case, or nothing.
normalise() {
    local u="$1"
    u=$(printf '%s' "$u" | sed -E 's#^(https?://[^/]+/|ssh://[^/]+/|[^@/]+@[^:]+:)##; s#\.git$##; s#/+$##')
    case "$u" in */*) printf '%s' "$u" | tr '[:upper:]' '[:lower:]' ;; esac
}

origin_of() {  # $1 = folder. Prints the normalised owner/name of its origin, or nothing.
    local url
    url=$(git -C "$1" remote get-url origin 2>/dev/null) || return 0
    normalise "$url"
}

input=""
[ -t 0 ] || input=$(cat 2>/dev/null || true)
cwd="" source_kind="startup"
if [ -n "$input" ] && command -v jq >/dev/null 2>&1; then
    cwd=$(printf '%s' "$input" | jq -r '.cwd // empty' 2>/dev/null || true)
    source_kind=$(printf '%s' "$input" | jq -r '.source // "startup"' 2>/dev/null || echo startup)
fi
[ "$source_kind" = "startup" ] || exit 0
command -v git >/dev/null 2>&1 || exit 0

start="${cwd:-$PWD}"
project="${CLAUDE_PROJECT_DIR:-}"
[ -d "$start" ] || exit 0
actual=$(origin_of "$start")
[ -n "$actual" ] || exit 0

expected=$(normalise "${FORGEJO_PROJECT_REPO:-}")
if [ -z "$expected" ] && [ -n "$project" ] && [ -f "$project/.claude/agent-standards.conf" ]; then
    expected=$(normalise "$(sed -n 's/^repo=//p' "$project/.claude/agent-standards.conf" | head -n 1)")
fi
if [ -z "$expected" ]; then
    super=$(git -C "$start" rev-parse --show-superproject-working-tree 2>/dev/null || true)
    [ -n "$super" ] && expected=$(origin_of "$super")
fi
if [ -z "$expected" ] && [ -n "$project" ] && [ -d "$project" ] \
    && [ "$(cd -P "$project" 2>/dev/null && pwd)" != "$(cd -P "$start" 2>/dev/null && pwd)" ]; then
    expected=$(origin_of "$project")
fi
[ -n "$expected" ] || exit 0
[ "$expected" != "$actual" ] || exit 0

msg="Wrong start folder. The session opened in $start, where origin is $actual. The project repo is $expected. The forgejo scripts read origin, so they would act on the wrong repo. Start the session again in the project root."
if command -v jq >/dev/null 2>&1; then
    jq -n --arg m "$msg" '{continue: false, stopReason: $m}'
else
    printf '{"continue": false, "stopReason": "%s"}\n' "$(printf '%s' "$msg" | sed 's/\\/\\\\/g; s/"/\\"/g')"
fi
exit 0
