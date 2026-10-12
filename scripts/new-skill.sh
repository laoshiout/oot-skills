#!/usr/bin/env bash
# Usage: scripts/new-skill.sh <skill-name>
set -euo pipefail
name="${1:?usage: new-skill.sh <skill-name>}"
[[ "$name" =~ ^oot-[a-z0-9]+(-[a-z0-9]+)*$ ]] || { echo "name must be lowercase-hyphen and start with oot-"; exit 1; }
root="$(cd "$(dirname "$0")/.." && pwd)"
dest="$root/skills/$name"
[ -e "$dest" ] && { echo "$dest exists"; exit 1; }
mkdir -p "$dest"
sed "s/^name: .*/name: $name/" "$root/template/SKILL.md" > "$dest/SKILL.md"
echo "Created $dest/SKILL.md"
