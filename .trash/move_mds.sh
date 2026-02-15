#!/bin/bash
set -euo pipefail

olddirs="1Literature Clinic Dashboards Literature Maps-of-Content Nutrition PhD"
mapping=(
  "1Literature:22-Literature"
  "Literature:22-Literature"
  "Clinic:44-Clinic"
  "Dashboards:11-Dashboards"
  "Maps-of-Content:55-Maps-of-Content"
  "Nutrition:66-Nutrition"
  "PhD:33-PhD"
)

declare -A map
for pair in "${mapping[@]}"; do
  IFS=':' read -r old new <<< "$pair"
  map["$old"]="$new"
done

echo "Starting MD move..."
count=0
find $olddirs -name "*.md" -type f | sort | while read -r md; do
  rel="${md#./}"
  old_base="${rel%%/*}"
  if [[ -v map[$old_base] ]]; then
    new_base="${map[$old_base]}"
    subpath="${rel#${old_base}/}"
    newpath="${new_base}/${subpath}"
    mkdir -p "$(dirname "$newpath")"
    echo "MOVING MD: $md -> $newpath"
    obsidian-cli move "$md" "$newpath" -v TheOptimizedBrain
    ((count++))
  else
    echo "Skipping unknown base: $old_base for $md"
  fi
done
echo "Moved $count MD files."
