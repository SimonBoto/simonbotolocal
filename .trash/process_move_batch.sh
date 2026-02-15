#!/bin/bash
orphans=( $(cat orphans.txt) )
start=${1:-0}
batch_size=${2:-10}
end=$((start + batch_size))
processed=0
dups=0
skips=0
mkdir -p .trash Nutrition/{Vitamins,Risks,Gut,Metabolic-Syndrome,Obesity} PhD/{Biomarkers,Metabolomics,Clinic/Protocols} Maps-of-Content
for ((i=start; i&lt;end &amp;&amp; i&lt;${#orphans[@]} ; i++)); do
  f="${orphans[i]}"
  parts=$(echo "$f" | sed 's/^\\[\\([a-z_]*__\\)\\([^]]*\\)\\]_.*\\.md$/\\1 \\2/')
  if [ $? -ne 0 ] || [ -z "$parts" ]; then
    echo "PARSE FAIL: $f"
    ((skips++))
    continue
  fi
  pref=$(echo "$parts" | cut -d' ' -f1)
  topic=$(echo "$parts" | cut -d' ' -f2- | sed 's/^[[:space:]]*//')
  if [ -z "$pref" ] || [ -z "$topic" ]; then
    echo "PARSE FAIL2: $f"
    ((skips++))
    continue
  fi
  kebab=$(echo "$topic" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g; s/_/-/g; s/--\\+-/\\-/g; s/^-\\+//; s/-\\+$//')
  folder=""
  case "$pref" in
    ron__)
      if echo "$kebab" | grep -q "vitamin\\|mineral\\|micronutrient\\|enzyme\\|cofactor\\|fat-soluble" ; then
        folder="Nutrition/Vitamins/"
      elif echo "$kebab" | grep -q "insulin\\|resistance\\|ldl\\|nafld\\|metabolic\\|syndrome\\|macronutrients\\|cholesterol\\|empty-calories\\|modifiable-risk" ; then
        folder="Nutrition/Metabolic-Syndrome/"
      elif echo "$kebab" | grep -q "gut\\|dysbiosis\\|ibd\\|crohns\\|colitis\\|tight-junctions\\|mucosal-barrier\\|gut-brain-axis" ; then
        folder="Nutrition/Gut/"
      elif echo "$kebab" | grep -q "obesity" ; then
        folder="Nutrition/Obesity/"
      else
        folder="Nutrition/Risks/"
      fi
      ;;
    phd__)
      if echo "$kebab" | grep -q "metabolomics\\|metabolomic\\|metabolite\\|aconitate\\|omic" ; then
        folder="PhD/Metabolomics/"
      elif echo "$kebab" | grep -q "clinical\\|report\\|diagnostic\\|protocol\\|genova\\|linus\\|reaven\\|heart" ; then
        folder="PhD/Clinic/Protocols/"
      else
        folder="PhD/Biomarkers/"
      fi
      ;;
    moc_*)
      folder="Maps-of-Content/"
      kebab="moc-${kebab}"
      ;;
    *)
      echo "UNKNOWN: $pref $f"
      ((skips++))
      continue
      ;;
  esac
  target="${folder}${kebab}.md"
  if [ -f "$target" ]; then
    echo "DUP FILE: mv $f .trash/"
    mv "$f" .trash/
    ((dups++))
  else
    echo "MOVE: obsidian-cli move \"$f\" \"$target\""
    obsidian-cli move "$f" "$target"
    if [ $? -eq 0 ]; then
      ((processed++))
    else
      echo "MOVE FAILED: $f"
      ((skips++))
    fi
  fi
done
echo "Batch $start-$(($end-1)): processed $processed, dups $dups, skips $skips, remaining $(( ${#orphans[@]} - end ))"