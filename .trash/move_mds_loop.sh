#!/bin/bash
set -euo pipefail

dirs=( "1Literature" "Clinic" "Dashboards" "Literature" "Maps-of-Content" "Nutrition" "PhD" )

for dir in "${dirs[@]}"; do
  if [[ ! -d "$dir" ]]; then
    echo "Dir $dir does not exist, skipping"
    continue
  fi
  find "$dir" -name "*.md" -type f -print0 | while IFS= read -r -d '' md; do
    case "$dir" in
      "1Literature"|"Literature") newd="22-Literature" ;;
      "Clinic") newd="44-Clinic" ;;
      "Dashboards") newd="11-Dashboards" ;;
      "Maps-of-Content") newd="55-Maps-of-Content" ;;
      "Nutrition") newd="66-Nutrition" ;;
      "PhD") newd="33-PhD" ;;
      *) echo "Unknown dir $dir"; continue ;;
    esac
    rel="${md#$dir/}"
    newpath="$newd/$rel"
    mkdir -p "$(dirname "$newpath")"
    echo "MOVING MD: $md -> $newpath"
    if obsidian-cli move "$md" "$newpath" -v TheOptimizedBrain; then
      echo "Success"
    else
      echo "Failed"
    fi
  done
done
echo "MD moves completed."
