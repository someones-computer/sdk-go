#!/usr/bin/env bash
# SessionStart check: is the agent-standards submodule actually there, and do the symlinks
# that depend on it resolve? It also reports a project whose .claude/settings.json doesn't
# register the PreToolUse VCS guard, hooks/vcs-guard.sh. It names a missing triage-loop stop
# hook, hooks/triage-loop-stop.sh, through the installer's drift list.
#
# This file is COPIED into each consuming repo as .claude/check-wiring.sh, never symlinked
# into .claude/agent-standards/hooks/ the way the other hooks are. The failure it detects is
# "the submodule is empty", and a script living inside the submodule does not exist in that
# state, so it could never fire. It has to survive the condition it reports on.
#
# Canonical copy: agent-standards/hooks/check-wiring.sh. The two are byte-identical.
# bin/install.sh makes the copy, and bin/install.sh --check reports a stale one. Change the
# canonical one first.
#
# A project may own a copy of one shared skill, command, hook, or bin script. It lists the path in
# .claude/own-copies. bin/install.sh --check reads that list, so this script needs no code for it.
#
# The failure mode is silent and expensive: with the submodule uninitialised, CLAUDE.md's
# `@.claude/agent-standards/...` imports resolve to nothing and every symlink under
# .claude/{commands,hooks,skills} dangles. Claude Code reports none of that -- the shared
# working agreement simply is not in context, and the session proceeds as if it never existed.
#
# Submodules are per-worktree. `git submodule update --init` in the main checkout does not
# populate a worktree created later by `git worktree add`, so this fires most often on a
# fresh worktree rather than a fresh clone.
#
# It also inits every other submodule of the project, because a fresh worktree has them all
# empty. A submodule that stays empty gets a warning with the command to fix it.
#
# Register in .claude/settings.json:
#   {"hooks":{"SessionStart":[{"hooks":[{"type":"command",
#     "command":"\"$CLAUDE_PROJECT_DIR\"/.claude/check-wiring.sh","timeout":15}]}]}}
#
# stdout from a SessionStart hook is injected into the session as context, so anything printed
# here is what Claude sees. Silent on success. Always exits 0 in that mode -- a wiring check
# must never be the reason a session fails to start.
#
# An uninitialised submodule is self-healing: `git submodule update --init --recursive` is
# read-only with respect to everything except .claude/agent-standards/ itself, safe to run
# unconditionally, and idempotent, so this attempts it before reporting anything. In a linked
# worktree it first borrows the objects of the main checkout's populated submodule, so the
# clone is local and fits the hook's time budget. A fresh `git worktree add` is the usual case. Only a
# failed recovery (offline, no local object cache, dangling symlink pointing past what the
# pinned commit contains) surfaces as a warning.
#
# `--ci` mode is the exception to "always exits 0": it prints to stderr and exits 1 on a real
# fault, for a consuming project's own pipeline. A real fault is an empty agent-standards
# submodule, a dangling symlink, a missing CLAUDE.md import, or a missing quality-gate table. A
# stale stamp, a stale copy of this script, and the rest of the installer's drift list are
# warnings on stderr in a pipeline run (GITHUB_ACTIONS=true). A local run, such as the commit
# guard, still fails on them. A pipeline job fails on them only when the pull request moves the
# .claude/agent-standards pin itself. A pin bump then owes the install. A job on main, or on a
# pull request that leaves the pin alone, stays green, so a new standards release never turns
# every consumer red. The base of the pull request comes from GITHUB_BASE_REF, or from the first
# parent of a merge commit. The mode also checks the two facts
# `skills/self-check` otherwise verifies by hand -- the CLAUDE.md import line and a documented
# quality gate -- since both are plain greps, not judgement calls, and CI should not have to
# wait for someone to run `/self-check` or start a fresh session to catch that kind of drift.
# An empty submodule other than agent-standards is a warning on stderr in this mode. It doesn't
# change the exit status. An empty agent-standards submodule still fails.
# A consuming project's CI checks out the submodule itself (checkout's own `submodules: true`
# already fails the job if that step fails), so `--ci` runs the canonical copy under
# .claude/agent-standards/hooks/ directly -- no project-local copy needed for this mode, only
# for the SessionStart hook's own bootstrapping problem (see above).
#
#   .claude/agent-standards/hooks/check-wiring.sh --ci
#
# OPT-IN AUTO-UPDATE. A project that sets `auto-update=true` in .claude/agent-standards.conf lets
# this hook update agent-standards on its own at session start (session mode only, never --ci).
# It fetches the submodule, moves the pin forward to the newest upstream commit, and runs
# bin/install.sh. The pin moves with no review. The default is off. The hook leaves the result
# uncommitted and never commits or pushes. A dirty checkout, a failed fetch, a pin that is not an
# ancestor of upstream, or a file the installer must not overwrite stops the update with one
# printed line. The normal drift warning then follows as usual.
set -uo pipefail

# A git hook runs with GIT_DIR and its siblings set. They make every `git -C <dir>` read the
# repository that runs the hook, not <dir>. A pre-push hook then read the parent's HEAD as the
# submodule's commit and reported a false "moved" on every push from a linked worktree.
unset GIT_DIR GIT_WORK_TREE GIT_INDEX_FILE GIT_PREFIX GIT_COMMON_DIR GIT_OBJECT_DIRECTORY GIT_ALTERNATE_OBJECT_DIRECTORIES

ci=0
[ "${1:-}" = "--ci" ] && ci=1
# The absolute path of this script, taken before the cd below. The auto-update runs it again.
wiring_self="$(cd "$(dirname "$0")" 2>/dev/null && pwd -P)/$(basename "$0")"

# Print the nearest ancestor of the current directory that holds a .git entry. It is not `git
# rev-parse --show-toplevel`. A submodule keeps a relative core.worktree in its shared config.
# A linked worktree of it resolves that path against its own git dir, and --show-toplevel then
# names the .git/modules directory. The wiring check then ran against a tree with no templates.
top_of() {
    local d
    d=$(pwd -P)
    while [ -n "$d" ] && [ "$d" != / ]; do
        [ -e "$d/.git" ] && { printf '%s\n' "$d"; return 0; }
        d=${d%/*}
    done
    return 1
}

# In a linked worktree, CLAUDE_PROJECT_DIR names the main checkout. Check the worktree instead.
# A linked worktree has a git dir that differs from the common git dir. A CLAUDE_PROJECT_DIR
# that belongs to another repository stays in force.
gitdir=$(cd "$(git rev-parse --git-dir 2>/dev/null)" 2>/dev/null && pwd -P)
commondir=$(cd "$(git rev-parse --git-common-dir 2>/dev/null)" 2>/dev/null && pwd -P)
projcommon=""
[ -n "${CLAUDE_PROJECT_DIR:-}" ] &&
    projcommon=$(cd "$CLAUDE_PROJECT_DIR" 2>/dev/null && cd "$(git rev-parse --git-common-dir 2>/dev/null)" 2>/dev/null && pwd -P)
if [ -n "$gitdir" ] && [ "$gitdir" != "$commondir" ] && { [ -z "${CLAUDE_PROJECT_DIR:-}" ] || [ "$projcommon" = "$commondir" ]; }; then
    root=$(top_of)
else
    root="${CLAUDE_PROJECT_DIR:-$(top_of || pwd)}"
fi
cd "$root" 2>/dev/null || exit 0

# agent-standards itself has no submodule. Its own root is the source.
self=0
if [ ! -e .claude/agent-standards ] && [ -f bin/install.sh ] && [ -f hooks/check-wiring.sh ]; then
    self=1
fi

# --- Session start: git and tools ------------------------------------------------------------
# Session mode only. The faults of the project folder and of the tools go into ONE list, so the
# first message of a session names every fault at once. A project folder with a wiped .git
# passed this hook in silence before. tools/preflight.sh lists the missing tools and logins.
# It lives in the submodule, so a project without the submodule falls back to a plain jq test.
have_jq=1
command -v jq >/dev/null 2>&1 || have_jq=0
preflight=.claude/agent-standards/tools/preflight.sh
[ "$self" -eq 1 ] && preflight=tools/preflight.sh
session_faults() {
    local n=0 line
    local -a lines=()
    if ! git rev-parse --git-dir >/dev/null 2>&1; then
        lines+=("this folder holds no working git repository ($root). The history may have vanished. Check .git before you trust any file here")
    fi
    if [ -f "$preflight" ]; then
        while IFS= read -r line; do
            [ -n "$line" ] && lines+=("$line")
        done < <(bash "$preflight" 2>/dev/null)
    elif [ "$have_jq" -eq 0 ]; then
        lines+=("jq is not installed. Install it with your package manager, for example: brew install jq")
    fi
    [ "${#lines[@]}" -gt 0 ] || return 0
    echo "WARNING: the session start check found ${#lines[@]} fault(s):"
    for line in "${lines[@]}"; do
        n=$((n + 1))
        echo "  $n. $line"
    done
}

if [ "$ci" -eq 0 ] && ! git rev-parse --git-dir >/dev/null 2>&1; then
    # The checks below all need git. Report and stop.
    session_faults
    exit 0
fi

if [ "$self" -eq 0 ]; then
    [ -f .gitmodules ] && grep -q 'agent-standards' .gitmodules 2>/dev/null || exit 0
fi

if [ "$self" -eq 0 ] && [ ! -f .claude/agent-standards/CLAUDE.md ]; then
    # Never wait on a credential prompt. The hook has no terminal and a 15 second budget.
    export GIT_TERMINAL_PROMPT=0
    # A new worktree has its own empty submodule, but the main checkout usually has the
    # submodule populated. Borrow its objects, so the clone is local and fast. The commit that
    # the worktree pins may be missing there. Then git fetches it from the submodule URL as usual.
    main=$(git worktree list --porcelain 2>/dev/null | sed -n '1s/^worktree //p')
    if [ -n "$main" ] && [ "$main" != "$root" ] && [ -f "$main/.claude/agent-standards/CLAUDE.md" ]; then
        git submodule update --init --recursive --reference "$main/.claude/agent-standards" \
            -- .claude/agent-standards >/dev/null 2>&1
    fi
    if [ ! -f .claude/agent-standards/CLAUDE.md ]; then
        git submodule update --init --recursive -- .claude/agent-standards >/dev/null 2>&1
    fi
fi

# --- Opt-in auto-update ---------------------------------------------------------------------
# One line on stdout says what happened. Every stop goes through auto_update_skip.
auto_update_flag=.claude/agent-standards.conf
auto_update_on() {
    [ -f "$auto_update_flag" ] &&
        grep -Eqi '^[[:space:]]*auto-update[[:space:]]*=[[:space:]]*(true|on|yes|1)[[:space:]]*$' "$auto_update_flag"
}
auto_update_skip() {
    echo "agent-standards auto-update skipped: $1. The install stays as it is."
    return 0
}
auto_update() {
    local sub=.claude/agent-standards installer old new status report blocked note
    local -a limit=()
    installer=$sub/bin/install.sh
    export GIT_TERMINAL_PROMPT=0
    if [ -n "$(git status --porcelain 2>/dev/null)" ]; then
        auto_update_skip "the checkout has uncommitted changes. Commit or stash them first"; return 0
    fi
    command -v timeout >/dev/null 2>&1 && limit=(timeout 10)
    if ! ${limit[@]+"${limit[@]}"} git -C "$sub" fetch -q origin >/dev/null 2>&1; then
        auto_update_skip "git fetch failed in $sub (offline, or no access)"; return 0
    fi
    old=$(git -C "$sub" rev-parse HEAD 2>/dev/null)
    new=$(git -C "$sub" rev-parse -q --verify 'origin/HEAD^{commit}' 2>/dev/null ||
        git -C "$sub" rev-parse -q --verify 'origin/main^{commit}' 2>/dev/null)
    if [ -z "$old" ] || [ -z "$new" ]; then
        auto_update_skip "the newest upstream commit is not known"; return 0
    fi
    if [ "$new" != "$old" ] && ! git -C "$sub" merge-base --is-ancestor "$old" "$new" 2>/dev/null; then
        auto_update_skip "the pin ${old:0:9} is not behind upstream ${new:0:9}, so this is not a plain update"; return 0
    fi
    if [ -f "$installer" ]; then
        report=$(bash "$installer" --check "$root" 2>&1); status=$?
        blocked=$(printf '%s\n' "$report" | grep -m1 'by hand' | sed 's/^[[:space:]-]*//')
        if [ -n "$blocked" ]; then
            auto_update_skip "a file blocks the installer ($blocked)"; return 0
        fi
        # Already on the newest commit and already installed: nothing to do.
        [ "$new" = "$old" ] && [ "$status" -eq 0 ] && return 0
    elif [ "$new" = "$old" ]; then
        return 0
    fi
    if [ "$new" != "$old" ] && ! git -C "$sub" checkout -q "$new" >/dev/null 2>&1; then
        auto_update_skip "git could not check out ${new:0:9} in $sub"; return 0
    fi
    if [ ! -f "$installer" ] || ! bash "$installer" "$root" >/dev/null 2>&1; then
        [ "$new" != "$old" ] && git -C "$sub" checkout -q "$old" >/dev/null 2>&1
        auto_update_skip "the installer failed, so the pin went back to ${old:0:9}"; return 0
    fi
    if [ "$new" != "$old" ]; then
        note="moved the pin from ${old:0:9} to ${new:0:9} and ran the installer"
    else
        note="ran the installer to match the pin at ${old:0:9}"
    fi
    echo "agent-standards auto-update: $note. The changes are uncommitted. A person must commit them."
    return 0
}
# Run the update, then run this script again. The installer may replace this very file, and bash
# reads a script as it goes, so the brace group is parsed whole and ends in an exec.
if [ "$ci" -eq 0 ] && [ "$self" -eq 0 ] && [ -z "${AGENT_STANDARDS_NO_UPDATE:-}" ] &&
    [ -f .claude/agent-standards/CLAUDE.md ] && auto_update_on; then
    { auto_update; AGENT_STANDARDS_NO_UPDATE=1 exec bash "$wiring_self" "$@"; }
fi

[ "$ci" -eq 0 ] && session_faults

# --- Every other submodule ------------------------------------------------------------------
# A fresh worktree has every submodule of the project empty, not only agent-standards. The
# project's own plans and builds then fail one error at a time ("Module not installed"). Try
# one init for all of them. Name each one that stays empty, with the command that fixes it.
# `git submodule status` marks an uninitialised submodule with a leading dash.
empty_subs() {
    git submodule status 2>/dev/null | sed -n 's/^-[0-9a-f]* \([^ ]*\).*/\1/p'
}
emptysubs=""
if [ -f .gitmodules ] && [ -n "$(empty_subs)" ]; then
    export GIT_TERMINAL_PROMPT=0
    limit=()
    command -v timeout >/dev/null 2>&1 && limit=(timeout 10)
    # In a linked worktree, borrow the objects of the main checkout's populated copy of each
    # submodule, as for agent-standards above. The clone is then local. Without it, each
    # submodule is a full network clone, and a fresh worktree can pass the hook's time budget.
    # `--reference` applies to one level only, so the walk goes down one level at a time.
    main=$(git worktree list --porcelain 2>/dev/null | sed -n '1s/^worktree //p')
    [ "$main" = "$root" ] && main=""
    # One call for each path, so one broken submodule can't stop the others.
    init_empty_subs() {
        local repo=$1 mainrepo=$2 depth=${3:-0} sub
        # A cut-short clone can leave a folder that git reads as its parent. The parent's status
        # then lists that folder as "." and the walk never ends. A depth cap stops it.
        [ "$depth" -lt 8 ] || return 0
        while IFS= read -r sub; do
            case $sub in . | ./ | "") continue ;; esac
            if [ -n "$mainrepo" ] && [ -e "$mainrepo/$sub/.git" ] &&
                ${limit[@]+"${limit[@]}"} git -C "$repo" submodule update --init \
                    --reference "$mainrepo/$sub" -- "$sub" >/dev/null 2>&1; then
                :
            else
                ${limit[@]+"${limit[@]}"} git -C "$repo" submodule update --init -- "$sub" >/dev/null 2>&1 || true
            fi
            # An empty directory would make `git -C` report the parent's submodules.
            [ -e "$repo/$sub/.git" ] || continue
            # A folder that is not its own repository belongs to the parent. Stop here.
            [ "$(git -C "$repo/$sub" rev-parse --show-toplevel 2>/dev/null)" = "$(cd "$repo/$sub" && pwd -P)" ] || continue
            init_empty_subs "$repo/$sub" "${mainrepo:+$mainrepo/$sub}" $((depth + 1))
        done < <(git -C "$repo" submodule status 2>/dev/null | sed -n 's/^-[0-9a-f]* \([^ ]*\).*/\1/p')
    }
    init_empty_subs "$root" "$main"
    emptysubs=$(empty_subs | tr '\n' ' ')
    emptysubs=${emptysubs% }
fi

problems=""

if [ "$self" -eq 0 ] && [ ! -f .claude/agent-standards/CLAUDE.md ]; then
    problems="the submodule is not checked out (.claude/agent-standards/ is empty) -- automatic recovery via 'git submodule update --init --recursive' failed"
else
    broken=""
    for link in .claude/commands/* .claude/hooks/* .claude/skills/*; do
        [ -e "$link" ] && continue          # resolves fine
        [ -L "$link" ] || continue          # a real missing glob, not a dangling link
        broken="$broken ${link}"
    done
    [ -n "$broken" ] && problems="these symlinks dangle:$broken"

    if [ "$ci" -eq 1 ] && [ "$self" -eq 0 ] && [ -f CLAUDE.md ]; then
        if ! grep -qF '@.claude/agent-standards/CLAUDE.md' CLAUDE.md; then
            problems="${problems:+$problems; }root CLAUDE.md is missing the '@.claude/agent-standards/CLAUDE.md' import"
        fi
        if ! grep -qiE 'quality gate|docs/Topics/(Testing|CI)\.md' CLAUDE.md; then
            problems="${problems:+$problems; }root CLAUDE.md has no 'Quality gate' table or docs/Topics/Testing.md|CI.md link"
        fi
    fi
fi

# The install (hook symlinks, this script's own copy, the settings.json entries, and the stamp
# of the submodule commit) belongs to bin/install.sh. Its --check mode lists each difference.
# This is what makes a submodule bump visible: the pin moves, the stamp stays, and the list
# names each file that changed. A pin older than bin/install.sh has no installer, so it falls
# back to the plain vcs-guard registration test below.
installer=.claude/agent-standards/bin/install.sh
[ "$self" -eq 1 ] && installer=bin/install.sh
drift=""
# The installer needs jq. Without jq its error text would pose as a drift list. In a session
# the fault list above names jq and the install command, so the drift check stays out of it.
if [ -f "$installer" ] && { [ "$have_jq" -eq 1 ] || [ "$ci" -eq 1 ]; }; then
    drift=$(bash "$installer" --check "$root" 2>&1) || true
    [ -n "$drift" ] || drift=""
fi

# The VCS guard (hooks/vcs-guard.sh) only runs when .claude/settings.json registers it. Without
# it, the VCS and language rules live in prose alone. This is a separate finding from a broken
# submodule: the working agreement still loads, so it gets its own, shorter warning below.
unguarded=""
if [ ! -f "$installer" ] && ! grep -qF 'vcs-guard.sh' .claude/settings.json 2>/dev/null; then
    unguarded=".claude/settings.json doesn't register the PreToolUse hook .claude/hooks/vcs-guard.sh"
fi

# The triage-loop stop hook (hooks/triage-loop-stop.sh) reminds the nurse to walk the beads. With
# the installer, the drift list above names a missing link or a missing settings entry. This
# check covers a pin that has no installer, and it is a session warning only. It never fails
# --ci. A project that imports the /triage-loop skill is the one that needs the hook, and the
# hook does nothing for any other turn.
nostop=""
if [ ! -f "$installer" ] && [ -e .claude/skills/triage-loop ] &&
    ! grep -qF 'triage-loop-stop.sh' .claude/settings.json 2>/dev/null; then
    nostop=".claude/settings.json doesn't register the Stop hook .claude/hooks/triage-loop-stop.sh, so nothing reminds the triage-loop nurse to walk the beads"
fi

# The push hook (git-hooks/pre-push) blocks a push on a lint finding, but only when
# core.hooksPath points at git-hooks/. Installing it is the user's choice, so this is a
# session warning only. It never fails --ci. Only agent-standards itself is checked: a
# consuming project keeps the hook in its submodule, and the project owner decides.
nohook=""
if [ "$self" -eq 1 ] && [ -d git-hooks ]; then
    hp=$(git config --get core.hooksPath 2>/dev/null || true)
    hkhook=$(git rev-parse --git-common-dir 2>/dev/null)/hooks/pre-push
    case "$hp" in
        git-hooks | */git-hooks) ;;
        *) if ! grep -qs 'hk' "$hkhook"; then
               nohook="no git hook is installed (core.hooksPath is '${hp:-unset}'), so a lint finding won't block a commit or a push here. The user installs the hooks with 'mise run hooks', or with git-hooks/install.sh"
           fi ;;
    esac
fi

# hk and mise run the lint on commit and the unit tests on push. They are opt-in for the user,
# so a project with no hk.pkl gets a session note and never a failure. Only a project that
# imports agent-standards is told. agent-standards itself has the nohook note above.
nohk=""
if [ "$self" -eq 0 ] && [ -f .claude/agent-standards/templates/hk.pkl ] && [ ! -f hk.pkl ]; then
    nohk="this project has no hk.pkl, so no git hook lints a commit or tests a push. See .claude/agent-standards/docs/Topics/Git-Hooks-hk.md"
fi

subnote=""
if [ -n "$emptysubs" ]; then
    subnote="these submodules are empty and the automatic init failed: $emptysubs. Run 'git submodule update --init --recursive' in $root"
fi

# pin_moved: succeeds when this change moves the .claude/agent-standards pin. The base is the
# target branch of a pull request (GITHUB_BASE_REF), else the first parent of a merge commit.
# With no base, the answer is no, so a plain push never fails on drift.
pin_moved() {
    local sub=.claude/agent-standards base="" b cur old
    [ "$self" -eq 0 ] || return 1
    if [ -n "${GITHUB_BASE_REF:-}" ]; then
        for b in "origin/$GITHUB_BASE_REF" "$GITHUB_BASE_REF"; do
            git rev-parse -q --verify "$b^{commit}" >/dev/null 2>&1 && { base=$b; break; }
        done
    fi
    if [ -z "$base" ] && git rev-parse -q --verify 'HEAD^2' >/dev/null 2>&1; then
        base='HEAD^1'
    fi
    [ -n "$base" ] || return 1
    cur=$(git rev-parse -q --verify "HEAD:$sub" 2>/dev/null) || return 1
    old=$(git rev-parse -q --verify "$base:$sub" 2>/dev/null) || return 0
    [ "$cur" != "$old" ]
}

if [ "$ci" -eq 1 ]; then
    # An empty submodule is a warning here, not a fault. A consumer's CI checkout may leave a
    # submodule empty on purpose, and the wiring doesn't need it. The agent-standards submodule
    # is the one the wiring needs. Its absence is a fault, and `problems` already holds it.
    [ -n "$subnote" ] && echo "agent-standards wiring check warning: $subnote" >&2
    # Drift (a stale stamp, a stale copy) fails a local run, such as the commit guard. A
    # pipeline run (GITHUB_ACTIONS=true) only warns, unless the change moves the pin.
    lenient=0
    [ "${GITHUB_ACTIONS:-}" = "true" ] && lenient=1
    if [ "$lenient" -eq 1 ] && ! pin_moved; then
        [ -n "$unguarded" ] && echo "agent-standards wiring check warning: $unguarded" >&2
        [ -n "$drift" ] && echo "agent-standards wiring check warning: $drift" >&2
    else
        [ -n "$unguarded" ] && problems="${problems:+$problems; }$unguarded"
        [ -n "$drift" ] && problems="${problems:+$problems; }$drift"
    fi
    [ -z "$problems" ] && exit 0
    echo "agent-standards wiring check failed: $problems" >&2
    exit 1
fi

if [ -n "$drift" ]; then
    cat <<EOF
WARNING: this project's agent-standards install is out of date.
$drift

This line is a status report. It asks nothing of this session. Do not change .claude/ because of
it, and do not ask the user about it. The triage-loop wiring gate runs the installer, and so does
a person. Read the changed files the list names: a new skill, hook, or rule may change how you
must work here.
EOF
fi

if [ -n "$unguarded" ]; then
    cat <<EOF
WARNING: $unguarded.
No hook enforces the VCS rules (no gh, no force-push, no --no-verify, no commit on main, no AI
attribution, ASD-STE100 commit messages). Tell the user. The fix is in
.claude/agent-standards/README.md, section "Version control guard hook".
EOF
fi

if [ -n "$subnote" ]; then
    echo "WARNING: $subnote. A plan or a build that needs them fails until you do."
fi

if [ -n "$nostop" ]; then
    echo "NOTE: $nostop. The fix is bin/install.sh in the submodule."
fi

if [ -n "$nohook" ]; then
    echo "NOTE: $nohook. Run git-hooks/pre-push by hand before each push."
fi

if [ -n "$nohk" ]; then
    echo "NOTE: $nohk. Tell the user once. Do not add the hooks yourself, because a git hook is a standing change for every worktree."
fi

[ -z "$problems" ] && exit 0

cat <<EOF
WARNING -- the agent-standards wiring in this repo is broken and could not self-heal: $problems

The shared working agreement (answering style, VCS rules, slash commands, skills) is NOT
loaded in this session, and nothing else will tell you that. Automatic recovery via
'git submodule update --init --recursive' was already attempted and did not fix it -- likely
no network/no local object cache for a missing submodule, or, if the submodule is populated
and a symlink still dangles, the link points at something the pinned commit does not contain
(bump the pin, or repoint a typo'd link at a path that exists under .claude/agent-standards/).

Diagnose and fix by hand, then confirm .claude/agent-standards/CLAUDE.md exists and re-read
this repo's CLAUDE.md.
EOF
exit 0
