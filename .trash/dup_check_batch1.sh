#!/bin/bash
set -euo pipefail
vault="TheOptimizedBrain"
exec > >(tee -a dup_batch1.log) 2>&1
echo "Starting dup check batch1 on $(date)"
head -20 filtered_orphans.txt > batch1.txt
processed=0
dups=0
skipped=0
while IFS= read -r file || [[ -n "$file" ]]; do
  if [[ ! -f "$file" ]]; then
    echo "SKIPPED (missing): $file"
    skipped=$((skipped + 1))
    continue
  fi
  base=$(basename "$file" .md)
  title=$(echo "$base" | sed -E 's/^(ron__|phd__|Zettel_|Dictionary_|Pp_)//i' | sed 's/_20[0-9][0-9][0-9][0-9][0-9][0-9]_[0-9][0-9][0-9]$//' | sed 's/__/ /g' | tr '_' ' ' | sed 's/^ *//;s/ *$//' | tr '[:upper:]' '[:lower:]')
  if [[ -z "$title" ]]; then
    echo "SKIPPED (no title): $file"
    skipped=$((skipped + 1))
    continue
  fi
  echo "=== Checking $file : '$title' ==="
  output=$(obsidian-cli search-content "$title" -v "$vault" 2>&1 || echo "error")
  if echo "$output" | grep -qi "no notes found"; then
    echo "UNIQUE: $file"
    echo "$file" >> uniques_batch1.txt
    processed=$((processed + 1))
  else
    echo "DUP or ERROR: $file"
    echo "Output: $output"
    echo "$file" >> dups_batch1.txt
    dups=$((dups + 1))
  fi
done < batch1.txt
echo "Batch1 complete ($(date)): Unique: $processed, Dups: $dups, Skipped: $skipped"
