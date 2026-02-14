#!/bin/bash
# Zettel Link Audit
cd "$(obsidian-cli print-default --path-only)" || cd .
echo "# Link Audit $(date)" > Dashboards/LinkReport.md
obsidian-cli search "\\[\\[" | sort | uniq -c | sort -nr >> Dashboards/LinkReport.md
echo "
## Orphans (No Outlinks)
" >> Dashboards/LinkReport.md
obsidian-cli search !outlinks >> Dashboards/LinkReport.md
echo "
Stats: Total links $(grep -c '\\[\\[' **/*.md 2>/dev/null || 0), Orphans $(obsidian-cli search !outlinks | wc -l)" >> Dashboards/LinkReport.md
git add Dashboards/LinkReport.md || true
echo "✅ Audit complete: Dashboards/LinkReport.md"
