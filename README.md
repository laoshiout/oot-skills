# oot-skills

[中文](README.md) | [English](README.en.md)

个人 [Agent Skills](https://agentskills.io)（`SKILL.md` 标准）合集，适用于 Claude Code、Codex、Cursor 等支持该标准的 Agent。

## 安装

通用方式（通过 [`skills`](https://github.com/vercel-labs/skills) CLI）：

```bash
npx skills add laoshiout/oot-skills                    # 安装全部
npx skills add laoshiout/oot-skills --skill <名字>     # 只装某一个
```

Claude Code（插件市场）：

```
/plugin marketplace add laoshiout/oot-skills
/plugin install oot-skills@oot-skills
```

手动：把 `skills/<名字>` 复制或软链到 `~/.claude/skills/`（项目级则放 `.claude/skills/`）。

> 本仓库为私有仓库，安装的机器需先完成 `gh auth login` 或配置好 git 凭据。

## 目录结构

```
skills/<skill-name>/SKILL.md   # 每个 skill 一个文件夹（可附带 scripts/、参考文档等）
template/SKILL.md              # 新 skill 模板
scripts/new-skill.sh           # 一键生成新 skill
.claude-plugin/                # Claude Code 插件与市场配置
```

## 新增 skill

```bash
scripts/new-skill.sh oot-my-skill
# 编辑 skills/my-skill/SKILL.md 后提交即可，插件会自动发现 skills/ 下的内容
```

规范：文件夹名必须与 frontmatter 中的 `name` 一致（小写加连字符）；`description` 要同时写清“做什么”和“何时使用”。
