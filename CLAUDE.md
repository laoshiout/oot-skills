# oot-skills 仓库规则

## 新增 skill
- 一律用 `scripts/new-skill.sh oot-<名字>` 生成，不要手建目录。
- **所有 skill 名必须以 `oot-` 开头**（避免与其他来源的 skill 冲突）：小写字母、数字、连字符。
- 目录名 = `skills/<name>/`，必须与 SKILL.md frontmatter 的 `name` 完全一致。
- `description` 要写清「做什么 + 何时触发」（含中英文触发词），Agent 靠它决定是否加载。
- 简单 skill 只放一个 SKILL.md；内容过长再拆文件（见下方标准）。
- 新增或改名后同步更新 README（中英两份）里涉及 skill 的内容。

## 写 skill 的标准
依据 [Agent Skills 规范](https://agentskills.io/specification) 与 skill-creator 的实践：
- frontmatter：`name`（≤64 字符，不以连字符开头/结尾，无连续连字符）和 `description`（≤1024 字符）必填；其余字段（`license`、`compatibility`、`metadata`、`allowed-tools`）按需，多数 skill 不需要。
- `description` 是唯一的触发依据，所有「何时使用」写在这里而不是正文；Agent 倾向少触发，所以要写得主动一些，列出具体场景和关键词。
- 渐进加载：description 常驻上下文；SKILL.md 正文触发后整体加载，控制在 500 行 / 约 5000 token 内；更细的内容放 `references/`，脚本放 `scripts/`，模板素材放 `assets/`，从 SKILL.md 一层相对路径引用并说明何时读。
- 用祈使句写步骤，并解释「为什么」，少用全大写的 MUST/NEVER；固定输出格式用模板或示例给出。
- 简单 skill 只需要一个 SKILL.md；只有出现确定性、重复的操作（校验、转换）时才加脚本。
- 不含恶意或会让用户意外的内容。
