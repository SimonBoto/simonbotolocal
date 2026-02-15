#!/bin/bash
set -euo pipefail

declare -A map=(
  [1Literature]=22-Literature
  [Literature]=22-Literature
  [Clinic]=44-Clinic
  [Dashboards]=11-Dashboards
  [Maps-of-Content]=55-Maps-of-Content
  [Nutrition]=66-Nutrition
  [PhD]=33-PhD
)

for old in "${!map[@]}"; do
  new="${map[$old]}"
  if [[ -d "$old" ]]; then
    if [[ -n "$(ls -A "$old")" ]]; then
      echo "Moving contents of $old/ to $new/"
      mv "$old"/* "$new"/ 2>/dev/null || echo "No files to move or error"
    else
      echo "$old/ is empty"
    fi
  else
    echo "$old does not exist"
  fi
done
echo "Non-MD moves completed."
