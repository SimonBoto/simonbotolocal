#!/bin/bash
set -euo pipefail

old_dirs=(1Literature Clinic Dashboards Literature "Maps-of-Content" Nutrition PhD)

declare -A map=(
  [1Literature]=22-Literature
  [Literature]=22-Literature
  [Clinic]=44-Clinic
  [Dashboards]=11-Dashboards
  ["Maps-of-Content"]=55-Maps-of-Content
  [Nutrition]=66-Nutrition
  [PhD]=33-PhD
)

echo "Starting MD move with fixed find..."
count=0
moved_files=()
while IFS= read -r -d '' md; do
  rel="${md#./}"
  old_base="${rel%%/*}"
  if [[ -v map[$old_base] ]]; then
    new_base="${map[$old_base]}"
    subpath="${rel#${old_base}/}"
    newpath="${new_base}/${subpath}"
    mkdir -p "$(dirname "$newpath")"
    echo "MOVING MD: $md -> $newpath"
    obsidian-cli move "$md" "$newpath" -v TheOptimizedBrain
    moved_files+=("$md -> $newpath")
    ((count++))
  else
    echo "Skipping unknown base: $old_base for $md"
  fi
done < <(find "${old_dirs[@]}" -iname "*.md" -type f -print0 | sort -z)

echo "Moved $count MD files."
echo "Moved: ${moved_files[*]}"
