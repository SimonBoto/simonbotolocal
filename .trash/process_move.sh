#!/bin/bash
set -euo pipefail
orphans=( $(cat orphans.txt) )
processed=0
dups=0
skips=0
mkdir -p .trash Nutrition/{Vitamins,Risks,Gut,Metabolic-Syndrome,Obesity} PhD/{Biomarkers,Metabolomics,'Clinic/Protocols'} 'Maps-of-Content'
for f in &quot;${orphans[@]}&quot;; do
  if [[ $f =~ ^\[([a-z]+__) ([^]]+)?\]_ ]]; then
    pref=&quot;${BASH_REMATCH[1]}&quot;
    topic=&quot;${BASH_REMATCH[2]:-unknown}&quot;
    if [ -z &quot;$topic&quot; ]; then
      echo &quot;PARSE FAIL topic empty: $f&quot;
      ((skips++))
      continue
    fi
    kebab=$(echo &quot;$topic&quot; | tr '[:upper:]' '[:lower:]' | sed 's/_/-/g' | sed 's/--\+/-/g' | sed 's/^\\-//;s/-$//' )
    folder=&quot;&quot;
    case &quot;$pref&quot; in
      ron__)
        if echo &quot;$kebab&quot; | grep -iq &quot;vitamin\\|mineral\\|micronutrient\\|enzyme\\|cofactor\\|fat-soluble&quot;; then
          folder=&quot;Nutrition/Vitamins/&quot;
        elif echo &quot;$kebab&quot; | grep -iq &quot;insulin\\|resistance\\|ldl\\|nafld\\|metabolic\\|syndrome\\|macronutrients\\|cholesterol\\|empty-calories\\|modifiable-risk-burden&quot;; then
          folder=&quot;Nutrition/Metabolic-Syndrome/&quot;
        elif echo &quot;$kebab&quot; | grep -iq &quot;gut\\|dysbiosis\\|ibd\\|crohns\\|colitis\\|tight-junctions\\|mucosal-barrier\\|gut-brain-axis&quot;; then
          folder=&quot;Nutrition/Gut/&quot;
        elif echo &quot;$kebab&quot; | grep -iq &quot;obesity&quot;; then
          folder=&quot;Nutrition/Obesity/&quot;
        else
          folder=&quot;Nutrition/Risks/&quot;
        fi
        ;;
      phd__)
        if echo &quot;$kebab&quot; | grep -iq &quot;metabolomics\\|metabolomic\\|metabolite\\|aconitate\\|omic\\|mc&quot;; then
          folder=&quot;PhD/Metabolomics/&quot;
        elif echo &quot;$kebab&quot; | grep -iq &quot;clinical\\|report\\|diagnostic\\|protocol\\|genova\\|linus\\|reaven\\|heart-metabolic&quot;; then
          folder=&quot;PhD/Clinic/Protocols/&quot;
        else
          folder=&quot;PhD/Biomarkers/&quot;
        fi
        ;;
      moc_*)
        folder=&quot;Maps-of-Content/&quot;
        kebab=&quot;moc-$kebab&quot;
        ;;
      *)
        echo &quot;UNKNOWN pref $pref: $f&quot;
        ((skips++))
        continue
        ;;
    esac
    target=&quot;$folder$kebab.md&quot;
    if [ -f &quot;$target&quot; ]; then
      echo &quot;DUP FILE: $f -&gt; .trash/$f&quot;
      mv &quot;$f&quot; .trash/
      ((dups++))
    else
      echo &quot;MOVE: $f -&gt; $target&quot;
      obsidian-cli move &quot;$f&quot; &quot;$target&quot;
      ((processed++))
    fi
  else
    echo &quot;PARSE FAIL regex: $f&quot;
    ((skips++))
  fi
done
echo &quot;TOTAL: processed $processed moves, $dups file dups trashed, $skips skips&quot;
ls -1 *.md | grep -E '(^ron__|^phd__|^moc_)' | wc -l