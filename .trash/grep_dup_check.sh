#!/bin/bash
set -euo pipefail
vault_path="."
exec > >(tee -a grep_dup.log) 2>&1
echo "GREP Dup check on $(date)"
all_md=$(find . -name '*.md' | grep -v -f <(echo -e "orphans.txt\nfiltered_orphans.txt\nbatch1.txt\ndups_batch1.txt\nuniques_batch1.txt\nlog.txt\ndup_batch1.log\ngrep_dup.log"))
echo "All other MD files count: $(echo "$all_md" | wc -l)"
> uniques.txt
> dups.txt
while IFS= read -r file || [[ -n "$file" ]]; do
  if [[ ! -f "$file" ]]; then continue; fi
  base=$(basename "$file" .md)
  phrases=($(echo "$base" | sed -E 's/^(ron__|phd__|Zettel_|Dictionary_|Pp_)//i' | sed 's/_20[0-9][0-9][0-9][0-9][0-9][0-9]_[0-9][0-9][0-9]$//' | tr '_' '\n' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' | grep . | head -3))
  is_dup=false
  for phrase in "${phrases[@]}"; do
    phrase_lower=$(echo "$phrase" | tr '[:upper:]' '[:lower:]')
    if [[ -n "$phrase_lower" && ${#phrase_lower} -gt 3 ]]; then
      matches=$(grep -i -l "$phrase_lower" $all_md 2>/dev/null | wc -l)
      if [[ $matches -gt 0 ]]; then
        is_dup=true
        break
      fi
    fi
  done
  if [[ $is_dup == true ]]; then
    echo "DUP: $file"
    echo "$file" >> dups.txt
  else
    echo "UNIQUE: $file"
    echo "$file" >> uniques.txt
  fi
done < filtered_orphans.txt
echo "Full grep dup check complete ($(date))"
echo "Uniques: $(wc -l < uniques.txt)"
echo "Dups: $(wc -l < dups.txt)"
