#!/bin/bash
set -euo pipefail
DATE=20260215
BATCH="$1"
NEXT_UID="$2"
success=0
failed=0
skipped=0
while read -r old; do
  if [ ! -f "$old" ]; then
    echo "Gone: $old"
    skipped=$((skipped + 1))
    continue
  fi
  base=$(basename "$old" .md)
  if echo "$base" | grep -q '_[0-9]\{8\}_[0-9]\{3\}$'; then
    echo "Skip: $old"
    skipped=$((skipped + 1))
    continue
  fi
  dir=$(dirname "$old")
  core=$(echo "$base" | sed 's/[[:space:]]\+/_/g' | sed 's/[^a-zA-Z0-9_]/_/g' | sed 's/__\+/_/g' | sed 's/^_//;s/_$//')
  uid=$(printf "%03d" "$NEXT_UID")
  new_path="$dir/${core}_${DATE}_${uid}.md"
  echo "Move: $old -> $new_path"
  if obsidian-cli move "$old" "$new_path"; then
    echo "✅ $uid"
    success=$((success + 1))
    NEXT_UID=$((NEXT_UID + 1))
  else
    echo "❌ FAILED: $old"
    failed=$((failed + 1))
  fi
done < "$BATCH"
echo "Batch $BATCH complete: $success success, $failed failed, $skipped skipped"
echo "Next UID: $(printf '%03d' "$NEXT_UID")"
