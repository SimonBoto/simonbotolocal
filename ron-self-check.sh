#!/bin/bash
# RON Self-Check Protocol — Run at session start
# Auto-executes without Hub intervention

echo "🦞 RON Self-Check Starting..."

# 1. Silent Memory Load
echo "Loading rules and context..."
cat RON-RULES.md > /dev/null 2>&1
cat 22-Dashboards/ron-profile.json > /dev/null 2>&1

# 2. System Status
echo "Checking dashboard..."
curl -s http://localhost:3333/api/status | jq -r '.ron.status' 2>/dev/null || echo "Dashboard check skipped"

# 3. Git Sync
echo "Syncing memory..."
python3 skills/git-notes-memory/memory.py -p . sync --start 2>/dev/null || true

# 4. Load Today
echo "Loading today's context..."
TODAY=$(date +%Y-%m-%d)
cat memory/${TODAY}.md 2>/dev/null || echo "No daily log yet"

echo "✅ Self-check complete. Ready for Hub."
