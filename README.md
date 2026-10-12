# oot-skills

Personal collection of [Agent Skills](https://agentskills.io) (`SKILL.md` standard), usable with Claude Code, Codex, Cursor and other agents.

## Install

Any agent (via the [`skills`](https://github.com/vercel-labs/skills) CLI):

```bash
npx skills add laoshiout/oot-skills            # all skills
npx skills add laoshiout/oot-skills --skill hello-skill
```

Claude Code (plugin marketplace):

```
/plugin marketplace add laoshiout/oot-skills
/plugin install oot-skills@oot-skills
```

Manual: copy or symlink `skills/<name>` into `~/.claude/skills/` (or `.claude/skills/` in a project).

> The repo is private: make sure `gh auth login` / git credentials are set up on the installing machine.

## Layout

```
skills/<skill-name>/SKILL.md   # one folder per skill (+ optional scripts/, reference files)
template/SKILL.md              # starting template
scripts/new-skill.sh           # scaffold a new skill
.claude-plugin/                # Claude Code plugin + marketplace manifests
```

## Add a skill

```bash
scripts/new-skill.sh my-skill
# edit skills/my-skill/SKILL.md, then add "./skills/my-skill" to .claude-plugin/marketplace.json
```

Rules: folder name == `name` in frontmatter (lowercase, hyphens); `description` must say what it does *and* when to use it.
