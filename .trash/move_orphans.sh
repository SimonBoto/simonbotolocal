#!/bin/bash
mkdir -p .trash Nutrition/{Vitamins,Risks,Gut,Metabolic-Syndrome,Obesity} PhD/{Biomarkers,Metabolomics,Clinic/Protocols} "Maps-of-Content"
cat > orphan_stats.md << 'END'
# Orphan Processing Log
Date: 2026-02-15
END
processed=0
dups=0
skips=0
orphans=( $(cat orphans.txt) )
for f in "${orphans[@]}"; do
  if [[ $f =~ ^\[([a-z_]+__)([^]]+)\]_ ]]; then
    pref="${BASH_REMATCH[1]}"
    topic="${BASH_REMATCH[2]}"
    kebab=$(echo "$topic" | tr '[:upper:]' '[:lower:]' | sed 's/_/-/g' | sed 's/--\+/-/g' | sed 's/^-/'' | sed 's/-$//')
    folder=""
    case "$pref" in
      ron__)
        if echo "$kebab" | grep -iqE 'vitamin|mineral|micronutrient|enzyme|cofactor|fat.soluble|k2|d.synthesis' ; then
          folder="Nutrition/Vitamins/"
        elif echo "$kebab" | grep -iqE 'insulin|resistance|ldl|cholesterol|macronutrients|nafld|obesity|metabolic.syndrome|syndrome|empty.calories|modifiable.risk|protein|nutrient.density|recommended.daily.allowance' ; then
          folder="Nutrition/Metabolic-Syndrome/"
        elif echo "$kebab" | grep -iqE 'gut|dysbiosis|ibd|inflammatory.bowel|crohns|colitis|tight.junctions|gut.mucosal.barrier|gut.brain.axis' ; then
          folder="Nutrition/Gut/"
        else
          folder="Nutrition/Risks/"
        fi
        ;;
      phd__)
        if echo "$kebab" | grep -iqE 'metabolomics|metabolomic|metabolite|aconitate|omic|mc.intro|mc.tsoukalas' ; then
          folder="PhD/Metabolomics/"
        elif echo "$kebab" | grep -iqE 'clinical.report|diagnostic.tools|protocol|genova.books|linus.pauling|reaven|heart.metabolic' ; then
          folder="PhD/Clinic/Protocols/"
        else
          folder="PhD/Biomarkers/"
        fi
        ;;
    esac
    if [ -n "$folder" ]; then
      target="$folder$kebab.md"
      if [ -f "$target" ]; then
        echo "DUP: $f -> .trash/$f"
        mv "$f" .trash/
        ((dups++))
      else
        echo "MOVING: $f -> $target"
        obsidian-cli move "$f" "$target"
        ((processed++))
      fi
    else
      echo "NO FOLDER: $f"
      ((skips++))
    fi
  elif [[ $f =~ ^\[moc_ ]]; then
    kebab=$(echo "$f" | sed 's/^\[moc_\([^]]*\)\]_.*/moc-\L\1/' | sed 's/_/-/g' | sed 's/--\+/-/g' | sed 's/^-/'' | sed 's/-$//')
    target="Maps-of-Content/$kebab.md"
    if [ -f "$target" ]; then
      mv "$f" .trash/
      ((dups++))
    else
      echo "MOVING MOC: $f -> $target"
      obsidian-cli move "$f" "$target"
      ((processed++))
    fi
  else
    echo "SKIP: $f"
    ((skips++))
  fi
done
echo "Processed $processed, dups trashed $dups, skips $skips" >> orphan_stats.md
ls -1 *.md | grep -E '(ron__|phd__|moc_)' | wc -l >> orphan_stats.md
echo "Root prefixed remaining: " $(ls -1 *.md | grep -E '(ron__|phd__|moc_)' | wc -l)
find . -name "*.md" | wc -l >> orphan_stats.md
END