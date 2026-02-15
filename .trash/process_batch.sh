#!/bin/bash
set -euo pipefail

orphans=( $(cat orphans.txt) )
batch_start=${1:-0}
batch_size=${2:-10}

processed=0
dups=0

for ((i=batch_start; i&lt;batch_start+batch_size &amp;&amp; i&lt;${#orphans[@]}; i++)); do
  f=&quot;${orphans[i]}&quot;
  if [[ $f =~ ^\[([a-z0-9]+__) *([^]]+)\]_ ]]; then
    pref=&quot;${BASH_REMATCH[1]}&quot;
    topic=&quot;${BASH_REMATCH[2]}&quot;
    kebab=$(echo &quot;$topic&quot; | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/_/-/g' | sed 's/\\-+-/\\-/g' | sed 's/^\\-//;s/\\-$//' | sed 's/[^a-z0-9-]/ /g' | sed 's/ - /-/g')
    case $pref in
      ron__)
        if echo &quot;$kebab&quot; | grep -qiE &quot;vitamin|mineral|micronutrient|enzyme|cofactor|fat-soluble&quot; ; then folder=&quot;Nutrition/Vitamins/&quot;
        elif echo &quot;$kebab&quot; | grep -qiE &quot;insulin|resistance|ldl|nafld|metabolic|syndrome|macronutrients|obesity|cholesterol&quot; ; then folder=&quot;Nutrition/Metabolic-Syndrome/&quot;
        elif echo &quot;$kebab&quot; | grep -qiE &quot;gut|dysbiosis|ibd|crohn|colitis|junctions|mucosal|brain-axis&quot; ; then folder=&quot;Nutrition/Gut/&quot;
        else folder=&quot;Nutrition/Risks/&quot;
        fi
        ;;
      phd__)
        if echo &quot;$kebab&quot; | grep -qiE &quot;biomarker|cutoff|ir|me-1-2|nafld|pcos|prevalence|adipic|suberic|ffa|homocysteine|metals|microminerals|micronutrient&quot; ; then folder=&quot;PhD/Biomarkers/&quot;
        elif echo &quot;$kebab&quot; | grep -qiE &quot;metabolomics|metabolomic|metabolite|aconitate|omic|mc|tsoukalas&quot; ; then folder=&quot;PhD/Metabolomics/&quot;
        elif echo &quot;$kebab&quot; | grep -qiE &quot;clinical|report|diagnostic|protocol|genova|linus|reaven&quot; ; then folder=&quot;PhD/Clinic/Protocols/&quot;
        else folder=&quot;PhD/Biomarkers/&quot;
        fi
        ;;
      moc_*)
        folder=&quot;Maps-of-Content/&quot;
        kebab=&quot;moc-${kebab}&quot;
        ;;
      *)
        echo &quot;SKIP unknown pref: $f&quot;
        continue
        ;;
    esac
    target=&quot;${folder}${kebab}.md&quot;
    # Dup check: target exists or content dup
    if [ -f &quot;$target&quot; ]; then
      echo &quot;DUP FILE: $f (target $target exists)&quot;
      mkdir -p .trash
      mv &quot;$f&quot; .trash/
      ((dups++))
    else
      # Quick content dup check
      if obsidian-cli search-content &quot;$topic&quot; | grep -qi &quot;$topic&quot; &gt;/dev/null 2&gt;&amp;1; then
        echo &quot;DUP CONTENT: $f&quot;
        mkdir -p .trash
        mv &quot;$f&quot; .trash/
        ((dups++))
      else
        echo &quot;MOVE: $f -&gt; $target&quot;
        obsidian-cli move &quot;$f&quot; &quot;$target&quot;
        ((processed++))
      fi
    fi
  else
    echo &quot;PARSE FAIL: $f&quot;
  fi
done
echo &quot;Batch $batch_start-$((batch_start+batch_size-1)): processed $processed, dups $dups&quot;