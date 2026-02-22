#!/bin/bash
# Dashboard Link Fix Script — Run AFTER v4.0 migration
# Created: 2026-02-22
# Purpose: Fix broken obsidian:// links post-migration

echo "=== Dashboard Link Fix Script ==="
echo "Run this AFTER v4.0 migration is complete"
echo ""

# Fix 1: index.html — Update 02-Atomic link
echo "Fixing: index.html (02-Atomic → archive)..."
sed -i 's|file=02-Atomic|file=77-Archive/Legacy_20260222/02-Atomic-Legacy|g' \
  ~/.openclaw/workspace/dashboard/index.html

# Fix 2: index.html — Update 66-Literature/Refs link
echo "Fixing: index.html (66-Literature/Refs → archive)..."
sed -i 's|file=66-Literature/Refs|file=77-Archive/Legacy_20260222/Refs-Legacy|g' \
  ~/.openclaw/workspace/dashboard/index.html

# Fix 3: DAILY_OPS.md — Update 11-Templates/ link
echo "Fixing: DAILY_OPS.md (11-Templates/ → 05-Structure/05a-Templates/)..."
sed -i 's|11-Templates/|05-Structure/05a-Templates/|g' \
  /home/simon/Workspaces/TheOptimizedBrain/22-Dashboards/DAILY_OPS.md

echo ""
echo "=== Verification ==="
echo "Checking for remaining broken links..."

count1=$(grep -c "file=02-Atomic" ~/.openclaw/workspace/dashboard/index.html 2>/dev/null || echo "0")
count2=$(grep -c "file=66-Literature/Refs" ~/.openclaw/workspace/dashboard/index.html 2>/dev/null || echo "0")
count3=$(grep -c "11-Templates/" /home/simon/Workspaces/TheOptimizedBrain/22-Dashboards/DAILY_OPS.md 2>/dev/null || echo "0")

echo "Broken links remaining:"
echo "  02-Atomic: $count1 (expected: 0)"
echo "  66-Literature/Refs: $count2 (expected: 0)"
echo "  11-Templates/: $count3 (expected: 0)"

if [ "$count1" -eq 0 ] && [ "$count2" -eq 0 ] && [ "$count3" -eq 0 ]; then
    echo ""
    echo "✅ All dashboard links fixed!"
    echo "Next: git commit these changes"
else
    echo ""
    echo "⚠️ Some links may still need manual fixing"
fi
