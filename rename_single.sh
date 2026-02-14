#!/bin/bash
DATE=20260215
OLD_PATH="$1"
NEXT_UID="$2"
if [ ! -f "$OLD_PATH" ]; then
  echo "File not found: $OLD_PATH"
  exit 1
fi
base=$(basename "$OLD_PATH" .md)
if echo "$base" | grep -q '_[0-9]\{8\}_[0-9]\{3\}$'; then
  echo "Already named: $OLD_PATH"
  exit 0
fi
dir=$(dirname "$OLD_PATH")
core=$(echo "$base" | tr ' ' '_' | sed 's/[^a-zA-Z0-9_]/_/g;s/__*/_/g;s/^_//;s/_$//')
uid=$(printf "%03d" "$NEXT_UID")
new_path="$dir/${core}_${DATE}_${uid}.md"
echo "Moving $OLD_PATH -> $new_path"
if obsidian-cli move "$OLD_PATH" "$new_path"; then
  echo "✅ Success: $uid. Next UID: $((NEXT_UID + 1))"
  exit 0
else
  echo "❌ Failed"
  exit 1
fi
