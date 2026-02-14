#!/bin/bash
cd "$(dirname "$0")/../"
DATE=$(date +%Y-%m-%d)
LOG="memory/junk-purge.log"
echo "$(date): Starting weekly junk purge to 77-Archive/junk" >> "$LOG"

mkdir -p 77-Archive/junk

# Purge old junk: Untitled, temp, _NOISE, >30d old dupes etc.
find . -maxdepth 4 -type f \( -name "*Untitled*" -o -name "*temp*" -o -name "*dup*" -o -path "*/_NOISE/*" -o -path "*/junk/*" \) -mtime +7 -print -exec mv -v {} 77-Archive/junk/ \; >> "$LOG" 2>&1

# Obsidian CLI if viable for links
# TODO: batch obsidian-cli move if syntax confirmed

echo "$(date): Purge complete" >> "$LOG"