#!/bin/bash
# Zettel Chain Links (Bulk)
cd "$(obsidian-cli print-default --path-only)" || cd .

echo "# Chain Audit $(date)" > Dashboards/ChainReport.md

# 1. IR Chain (PhD)
echo "## IR Chain" >> Dashboards/ChainReport.md
ir_files=$(find PhD -name '*IR*' -o -name '*insulin*' -type f -name '*.md' | sort)
ids=()
for f in $ir_files; do
  id=$(grep '^id:' "$f" | head -1 | sed 's/id: //')
  [ -n "$id" ] && ids+=("$id")
done
prev=""; for id in "${ids[@]}"; do
  file=$(find PhD -name "*$id*" -type f | head -1)
  [ -n "$file" ] && sed -i "/## Chain/i- ← [[${prev} | Prev]]\n- → [[${id} | Next]]" "$file" || echo "Skip $id"
  prev="$id"
done
echo "IR chained: ${#ids[@]} files" >> Dashboards/ChainReport.md

# 2. Literature Sources → PhD Raw
echo "## Lit → PhD Sources" >> Dashboards/ChainReport.md
lit_phd=0
for lit in Literature/STUDY/*.md; do
  slug=$(basename "$lit" .md | sed 's/pdf.*//')
  phd_file=$(find PhD -name "*$slug*" -type f | head -1)
  [ -f "$phd_file" ] && {
    lit_id=$(grep '^id:' "$lit" | head -1 | sed 's/id: //')
    sed -i "/## Sources/i- [[${phd_file##*/} | PhD Raw]]" "$lit"
    ((lit_phd++))
  }
done
echo "Lit-PhD links: $lit_phd" >> Dashboards/ChainReport.md

git add Dashboards/ChainReport.md || true
echo "✅ Chains added; report: Dashboards/ChainReport.md"
