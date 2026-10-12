# oot-skills

[中文](README.md) | [English](README.en.md)

Personal collection of [Agent Skills](https://agentskills.io) (`SKILL.md` standard), usable with Claude Code, Codex, Cursor and other compatible agents.

## Install

Any agent (via the [`skills`](https://github.com/vercel-labs/skills) CLI):

```bash
npx skills add laoshiout/oot-skills                    # all skills
npx skills add laoshiout/oot-skills --skill <name>     # a single skill
```

Claude Code (plugin marketplace):

```
/plugin marketplace add laoshiout/oot-skills
/plugin install oot-skills@oot-skills
```

Manual: copy or symlink `skills/<name>` into `~/.claude/skills/` (or `.claude/skills/` in a project).

> The repo is private: run `gh auth login` or set up git credentials on the installing machine first.

## Layout

```
skills/<skill-name>/SKILL.md   # one folder per skill (+ optional scripts/, reference files)
template/SKILL.md              # starting template
scripts/new-skill.sh           # scaffold a new skill
.claude-plugin/                # Claude Code plugin + marketplace manifests
```

## Add a skill

```bash
scripts/new-skill.sh oot-my-skill
# edit skills/my-skill/SKILL.md and commit; the plugin auto-discovers everything under skills/
```

Rules: folder name must equal `name` in the frontmatter (lowercase, hyphens); `description` must say both what the skill does and when to use it.
