#!/bin/bash
# Pre-Migration Vault Scan Script
# Run this BEFORE any migration steps

echo "=========================================="
echo "PRE-MIGRATION VAULT SCAN"
echo "=========================================="
echo "Date: $(date)"
echo ""

VAULT_DIR="/home/simon/Workspaces/TheOptimizedBrain"
cd "$VAULT_DIR" || { echo "ERROR: Cannot access vault"; exit 1; }

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ERRORS=0
WARNINGS=0

echo "1. GIT STATUS CHECK"
echo "-------------------"
UNCOMMITTED=$(git status --short | grep -v ".obsidian" | wc -l)
if [ "$UNCOMMITTED" -eq 0 ]; then
    echo -e "${GREEN}✅${NC} No uncommitted changes (except .obsidian)"
else
    echo -e "${RED}❌${NC} $UNCOMMITTED uncommitted files:"
    git status --short | grep -v ".obsidian"
    echo "   ACTION: Commit these before migration"
    ((ERRORS++))
fi
echo ""

echo "2. FILE COUNT BASELINE"
echo "----------------------"
echo "   Markdown files: $(find . -name '*.md' -type f | wc -l)"
echo "   Zettels (04-Zettels/): $(ls 04-Zettels/*.md 2>/dev/null | wc -l)"
echo "   MOCs (55-MOCs/): $(ls 55-MOCs/*.md 2>/dev/null | wc -l)"
echo "   LitNotes (66b/): $(ls 66-Literature/66b-LitNotes/*.md 2>/dev/null | wc -l)"
echo "   TechRefs (66c/): $(ls 66-Literature/66c-TechRefs/*.md 2>/dev/null | wc -l)"
echo "   Templates (11/): $(ls 11-Templates/*.md 2>/dev/null | wc -l)"
echo ""

echo "3. GIT BRANCH CHECK"
echo "-------------------"
CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" = "main" ]; then
    echo -e "${GREEN}✅${NC} On main branch"
else
    echo -e "${RED}❌${NC} Not on main branch (currently: $CURRENT_BRANCH)"
    ((ERRORS++))
fi
echo ""

echo "4. BACKUP VERIFICATION"
echo "----------------------"
# External archive
if [ -f "/tmp/TheOptimizedBrain-BACKUP-20260222-1825.tar.gz" ]; then
    ARCHIVE_SIZE=$(du -h /tmp/TheOptimizedBrain-BACKUP-20260222-1825.tar.gz | cut -f1)
    echo -e "${GREEN}✅${NC} External archive: $ARCHIVE_SIZE"
else
    echo -e "${RED}❌${NC} External archive NOT FOUND"
    echo "   Expected: /tmp/TheOptimizedBrain-BACKUP-20260222-1825.tar.gz"
    ((ERRORS++))
fi

# Git backup branch
if git branch | grep -q "backup-pre-v4.0-migration"; then
    echo -e "${GREEN}✅${NC} Git backup branch: backup-pre-v4.0-migration"
else
    echo -e "${RED}❌${NC} Git backup branch NOT FOUND"
    ((ERRORS++))
fi

# Git tag
if git tag | grep -q "v3.0-final"; then
    echo -e "${GREEN}✅${NC} Git tag: v3.0-final"
else
    echo -e "${RED}❌${NC} Git tag NOT FOUND"
    ((ERRORS++))
fi
echo ""

echo "5. OBSIDIAN STATE CHECK"
echo "-----------------------"
echo -e "${YELLOW}⚠️${NC}  MANUAL CHECK REQUIRED:"
echo "   1. Is Obsidian closed?"
echo "   2. Check for .obsidian/workspace.lock"
if [ -f ".obsidian/workspace.lock" ]; then
    echo -e "   ${RED}❌${NC} workspace.lock EXISTS (Obsidian is open!)"
    ((WARNINGS++))
else
    echo -e "   ${GREEN}✅${NC} workspace.lock not found (Obsidian likely closed)"
fi
echo ""

echo "6. OTHER SESSIONS CHECK"
echo "-----------------------"
echo -e "${YELLOW}⚠️${NC}  MANUAL CHECK REQUIRED:"
echo "   1. Any subagent sessions active?"
echo "   2. Any pending tasks in 22-Dashboards/01-QUEUE.md?"
echo "   3. Any file operations in progress?"
QUEUE_TASKS=$(grep -c "^- \[ \]" 22-Dashboards/01-QUEUE.md 2>/dev/null || echo "0")
if [ "$QUEUE_TASKS" -gt 0 ]; then
    echo -e "   ${YELLOW}⚠️${NC}  $QUEUE_TASKS tasks in QUEUE (may be okay if not active)"
    ((WARNINGS++))
else
    echo -e "   ${GREEN}✅${NC} No tasks in QUEUE"
fi
echo ""

echo "7. DASHBOARD LINKS AUDIT"
echo "------------------------"
echo "Links that will BREAK after migration:"
BROKEN_COUNT=0

# Check index.html
if grep -q "file=02-Atomic" ~/.openclaw/workspace/dashboard/index.html 2>/dev/null; then
    echo -e "   ${RED}❌${NC} index.html: 02-Atomic link found"
    ((BROKEN_COUNT++))
fi
if grep -q "file=66-Literature/Refs" ~/.openclaw/workspace/dashboard/index.html 2>/dev/null; then
    echo -e "   ${RED}❌${NC} index.html: 66-Literature/Refs link found"
    ((BROKEN_COUNT++))
fi

# Check DAILY_OPS.md
if grep -q "11-Templates/" 22-Dashboards/DAILY_OPS.md 2>/dev/null; then
    echo -e "   ${RED}❌${NC} DAILY_OPS.md: 11-Templates/ link found"
    ((BROKEN_COUNT++))
fi

if [ "$BROKEN_COUNT" -eq 0 ]; then
    echo -e "   ${GREEN}✅${NC} No broken links detected (already fixed?)"
else
    echo "   These will be fixed by fix-dashboard-links.sh"
fi
echo ""

echo "8. DISK SPACE CHECK"
echo "-------------------"
AVAILABLE=$(df -h . | tail -1 | awk '{print $4}')
echo "   Available space: $AVAILABLE"
echo ""

echo "9. GENERATING SCAN REPORT"
echo "-------------------------"
SCAN_FILE="/tmp/vault-pre-migration-scan-$(date +%Y%m%d-%H%M).txt"
cat > "$SCAN_FILE" << EOF
PRE-MIGRATION SCAN REPORT
Generated: $(date)
Vault: $VAULT_DIR

GIT STATUS:
$(git status --short | grep -v ".obsidian")

BRANCH: $CURRENT_BRANCH
COMMITS AHEAD: $(git rev-list --count origin/main..main 2>/dev/null || echo "unknown")

FILE COUNTS:
- Markdown: $(find . -name '*.md' -type f | wc -l)
- Zettels: $(ls 04-Zettels/*.md 2>/dev/null | wc -l)
- MOCs: $(ls 55-MOCs/*.md 2>/dev/null | wc -l)

BACKUP STATUS:
- External archive: $(test -f /tmp/TheOptimizedBrain-BACKUP-20260222-1825.tar.gz && echo "EXISTS" || echo "MISSING")
- Git backup branch: $(git branch | grep backup-pre-v4.0-migration | wc -l) found
- Git tag: $(git tag | grep v3.0-final | wc -l) found

ERRORS: $ERRORS
WARNINGS: $WARNINGS

READY FOR MIGRATION: $(test $ERRORS -eq 0 && echo "YES" || echo "NO")
EOF

echo "   Report saved: $SCAN_FILE"
echo ""

echo "=========================================="
echo "SCAN SUMMARY"
echo "=========================================="
if [ $ERRORS -eq 0 ]; then
    echo -e "${GREEN}✅ PASSED${NC} — Ready for migration"
    echo "   Errors: $ERRORS | Warnings: $WARNINGS"
    exit 0
else
    echo -e "${RED}❌ FAILED${NC} — Fix errors before migration"
    echo "   Errors: $ERRORS | Warnings: $WARNINGS"
    echo ""
    echo "Fix these issues, then re-run this script."
    exit 1
fi
