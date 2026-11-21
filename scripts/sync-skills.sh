#!/usr/bin/env bash
# Copy the design stack's skills into a project's .claude/skills/, so Claude Code cloud sessions
# (which don't load plugins) get them too. Run from anywhere:
#   bash /path/to/claude-design-stack/scripts/sync-skills.sh /path/to/project
# Re-run to update; it replaces only the stack's own skill folders and writes
# .claude/skills/DESIGN-STACK.md with the version and commit copied.
set -euo pipefail

stack_dir="$(cd "$(dirname "$0")/.." && pwd)"
project="${1:?usage: sync-skills.sh <project-dir>}"
target="$(cd "$project" && pwd)/.claude/skills"
skills=(design-review ui-ux-pro-max frontend-design impeccable web-design-guidelines webapp-testing)

mkdir -p "$target"
for s in "${skills[@]}"; do
  rm -rf "${target:?}/$s"
  cp -R "$stack_dir/skills/$s" "$target/$s"
done

version="$(sed -n 's/.*"version": *"\([^"]*\)".*/\1/p' "$stack_dir/.claude-plugin/plugin.json" | head -1)"
commit="$(git -C "$stack_dir" rev-parse --short HEAD 2>/dev/null || echo unknown)"
cat > "$target/DESIGN-STACK.md" <<NOTE
# Design stack (copied)

These skill folders are copies from the design stack repository (claude-design-stack),
version $version, commit $commit. Don't edit them here: change the stack repository and run
its scripts/sync-skills.sh again. The project's own design profile is .claude/design-stack.md.

Copied: ${skills[*]}
Licences and sources: THIRD_PARTY_NOTICES.md in the stack repository, and each skill's LICENSE file.
NOTE
echo "Copied ${#skills[@]} skills (design-stack $version, $commit) to $target"
