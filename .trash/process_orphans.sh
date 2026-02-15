#!/bin/bash
set -e
vault="TheOptimizedBrain"
cat > filtered_orphans.txt << 'EOF'
$(grep -E '^(./(Archive/Raw|Clinic|PhD)/|./(ron__|phd__|Zettel_|Dictionary_|Pp_)[^/]*\.md)' orphans.txt | grep -v -E '(memory|MOCs|Templates|Dashboards|Processed)')
EOF
filtered_count=$(wc -l < filtered_orphans.txt)
echo "Filtered orphans: $filtered_count" >> log.txt
processed=0
dups=0
skipped=0
while IFS= read -r file; do
  if [ ! -f "$file" ]; then
    skipped=$((skipped + 1))
    continue
  fi
  keyphrase=$(basename "$file" .md | sed 's/^[^_]*__\\|Zettel_\\|Dictionary_\\|Pp_//I; s/_20[0-9]\\{8\\}_[0-9]\\{3\\}\\.md$//; s/__/ /g; s/_/ /g; s/^\\s*//; s/\\s*$//; tr A-Z a-z')
  if [ -z "$keyphrase" ]; then
    skipped=$((skipped + 1))
    continue
  fi
  matches=$(obsidian-cli search-content "$keyphrase" -v "$vault" 2>/dev/null | grep -c '^Found' || echo 0)
  if [ "$matches" -gt 0 ]; then
    echo "DUP: $file ($keyphrase, $matches matches)" >> log.txt
    dups=$((dups + 1))
  else
    echo "UNIQUE: $file ($keyphrase)" >> log.txt
    processed=$((processed + 1))
  fi
done < filtered_orphans.txt
echo "Dup check complete. Unique: $processed, Dups: $dups, Skipped: $skipped" >> log.txt
