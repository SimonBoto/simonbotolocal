#!/bin/bash
set -euo pipefail

DATE=20260215
BATCH=batch_aa
NEXT_UID=7  # starts from 007

count=0
success=0
failed=()

while IFS= read -r old_path; do
  [[ -z "$old_path" || ! -f "$old_path" ]] && continue
  
  base=$(basename "$old_path" .md)
  if [[ "$base" =~ _[0-9]{8}_[0-9]{3}$ ]]; then
    echo "Skip already named: $old_path"
    continue
  fi
  
  dir=$(dirname "$old_path")
  
  # Snake case: replace spaces with _, specials with _, collapse __*, trim _
  core=$(echo "$base" | sed 's/ /_/g' | sed 's/[^a-zA-Z0-9_]/_/g' | sed 's/___*/_/g' | sed 's/^_//; s/_$//')
  
  uid=$(printf "%03d" $NEXT_UID)
  new_name="${core}_${DATE}_${uid}.md"
  new_path="${dir}/${new_name}"
  
  echo "Move: $old_path -> $new_path"
  
  if obsidian-cli move "$old_path" "$new_path"; then
    echo "✅ $uid"
    ((success++))
    NEXT_UID=$((NEXT_UID + 1))
  else
    echo "❌ FAILED $old_path"
    failed+=("$old_path")
  fi
  
  ((count++))
done < "$BATCH"

echo "Batch $BATCH: $count processed, $success success, ${#failed[@]} failed"
if [ ${#failed[@]} -gt 0 ]; then
  echo "Failed: ${failed[*]}"
fi
