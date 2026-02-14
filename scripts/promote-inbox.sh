#!/bin/bash
# Promote Inbox → Literature Atomic
cd "$(obsidian-cli print-default)"
find 00-Inbox -name '*.pdf.extract.md' | head -5 | while read f; do
  slug=$(basename "$f" .md | sed 's/[^a-z0-9]/-/g' | cut -c1-20)
  obsidian-cli create "Literature/$(date +%Y%m%dT%H%M)-$slug" --template "Templates/Template_Zettel.md"
  obsidian-cli move "$f" "Literature/Unprocessed/"
done
echo "Promoted 5 extracts ✅"
git add . && git commit -m "Daily promote: 5 extracts" || true
