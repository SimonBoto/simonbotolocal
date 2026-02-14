#!/bin/bash
cd "$(dirname "$0")/../"
DATE=$(date +%Y-%m-%d)
LOG="memory/vault-triage.log"
echo "$(date): Starting vault triage: root loose MD/Zettel_* → 00-Inbox" >> "$LOG"

# Ensure target
mkdir -p 00-Inbox

# Move root loose files: non-prefixed MD or loose Zettel_* (not date-formatted)
for file in *.md Zettel_*[!0-9]*.md Zettel_*[!_]*[!0-9]*.md; do
  if [ -f "$file" ] && [[ ! "$file" =~ ^(Zettel_[0-9]{8}_.*\.md|AGENTS\.md|MEMORY\.md|USER\.md|IDENTITY\.md|SOUL\.md|TOOLS\.md|PATHS\.md|HEARTBEAT\.md)$ ]]; then
    obsidian-cli move "$PWD/$file" "00-Inbox/$file" 2>>"$LOG" || mv "$file" "00-Inbox/" && echo "$(date): Moved $file to 00-Inbox" >> "$LOG"
  fi
done

echo "$(date): Triage complete" >> "$LOG"