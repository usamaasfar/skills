#!/usr/bin/env bash
# scripts/design.sh
# Sync design skills from .agents/skills/ into skills/design/
# Usage: ./scripts/design.sh

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$REPO_ROOT/.agents/skills"
DEST="$REPO_ROOT/skills/design"

SKILLS=(
  animate
  quieter
  shape
  optimize
  adapt
  impeccable
  clarify
  layout
  distill
  delight
  audit
  polish
  bolder
  frontend-design
  typeset
  critique
  colorize
  overdrive
)

echo "Syncing design skills: $SRC → $DEST"
echo

for skill in "${SKILLS[@]}"; do
  src_path="$SRC/$skill"
  dest_path="$DEST/$skill"

  if [ ! -d "$src_path" ]; then
    echo "  SKIP  $skill (not found in $SRC)"
    continue
  fi

  rm -rf "$dest_path"
  cp -r "$src_path" "$dest_path"
  echo "  OK    $skill"
done

echo
echo "Done. ${#SKILLS[@]} skills synced."
echo "SKILL.md at skills/design/SKILL.md was not touched."
