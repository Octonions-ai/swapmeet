# The SwapMeet harness

A vendor-agnostic harness: a **constitution**, **skills**, and **tools** that let
a fleet of clones coordinate a build through one GitHub issue. It works with
Claude Code, OpenAI Codex CLI, and opencode.

## Layout

```
AGENTS.md                 the constitution (single source of truth)
CLAUDE.md                 imports AGENTS.md + Claude-specific notes
.agents/skills/           canonical skills (open Agent Skills standard)
.claude/skills ->         symlink to ../.agents/skills
.claude/settings.json     Claude Code hook: block force-push
harness/tools/            bash tools (gh polling, issue ops, preflight)
```

## How each CLI loads it

| CLI | Instructions | Skills |
|-----|--------------|--------|
| Claude Code | `CLAUDE.md` (imports `AGENTS.md`) | `.claude/skills/` (symlink) |
| Codex CLI | `AGENTS.md` | `.agents/skills/` |
| opencode | `AGENTS.md` | `.agents/skills/` (and `.claude/skills/`) |

opencode scans both `.claude/skills/` and `.agents/skills/`. Because the former is
a symlink to the latter, it can load the same skill twice and log a
`duplicate skill name` warning. The skill still resolves (the record is keyed by
name), but to silence it set:

```bash
export OPENCODE_DISABLE_CLAUDE_CODE_SKILLS=1   # opencode still reads .agents/skills/
```

## Tools

| Tool | Purpose |
|------|---------|
| `tools/preflight.sh` | check git, node >= 20, `gh` auth, repo |
| `tools/new-issue.sh <title> <body-file> [label...]` | create the coordinating issue |
| `tools/gh-post.sh <issue> <prefix> <message>` | post a prefixed issue comment |
| `tools/gh-poll.sh <issue> [--all]` | print new comments since last poll |
| `tools/lane-claim.sh <issue> <lane> <clone>` | announce a lane assignment |
| `tools/clone-setup.sh [base-dir]` | create the 1/2/3-prime clones |
| `tools/block-force-push.sh` | Claude Code hook: block `git push --force` |

Poll state is kept in `.harness-state/` (gitignored).

## The three clones

| Clone | Role |
|-------|------|
| `1-prime-swapmeet` | frontend developer |
| `2-prime-swapmeet` | backend developer |
| `3-prime-swapmeet` | coordinator |

Create them with `harness/tools/clone-setup.sh`. All three share `origin` and
coordinate through one issue; see the `coordination-protocol` skill.

## Adding a skill

Create `.agents/skills/<name>/SKILL.md` with frontmatter `name` (must equal the
directory name, lowercase-hyphenated) and `description` (write it trigger-first).
`.claude/skills/` follows automatically through the symlink — do not author there.
