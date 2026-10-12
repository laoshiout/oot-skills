#!/usr/bin/env bash
# Usage: scripts/new-skill.sh <skill-name>
set -euo pipefail
name="${1:?usage: new-skill.sh <skill-name>}"
[[ "$name" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]] || { echo "name must be lowercase-hyphen"; exit 1; }
root="$(cd "$(dirname "$0")/.." && pwd)"
dest="$root/skills/$name"
[ -e "$dest" ] && { echo "$dest exists"; exit 1; }
mkdir -p "$dest"
sed "s/your-skill-name .*/$name/" "$root/template/SKILL.md" > "$dest/SKILL.md"
echo "Created $dest/SKILL.md — remember to add it to .claude-plugin/marketplace.json"
