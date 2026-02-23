#!/bin/bash
# MOC Link Fix Script — Run AFTER v4.0 migration
# Fixes all 9 MOCs with path references

echo "=========================================="
echo "MOC LINK FIX SCRIPT"
echo "Run this AFTER v4.0 migration Phase 2"
echo "=========================================="
echo ""

cd /home/simon/Workspaces/TheOptimizedBrain/05-Structure/05b-MOCs/ || {
    echo "ERROR: Cannot access 05-Structure/05b-MOCs/"
    echo "Make sure Phase 2 (file moves) completed first"
    exit 1
}

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo "1. Fixing 55-MOCs/ self-references..."
echo "   Files: Insulin_Signaling.md, MOC_INDEX.md, MOC_OPTIMIZATION_PLAN.md"
sed -i 's|55-MOCs/|05-Structure/05b-MOCs/|g' \
    Insulin_Signaling.md \
    MOC_INDEX.md \
    MOC_OPTIMIZATION_PLAN.md 2>/dev/null
echo "   ✅ Done"
echo ""

echo "2. Fixing 66-Literature/ references..."
echo "   Files: clinic-queue-moc.md, Literature.md, MOC_Hidden_Hunger*.md, MOC_DT_*.md"
for file in clinic-queue-moc.md Literature.md MOC_Hidden_Hunger_*.md MOC_DT_*.md; do
    if [ -f "$file" ]; then
        sed -i 's|66-Literature/|77-Archive/Legacy_20260222/Refs-Legacy/|g' "$file" 2>/dev/null
        echo "   Fixed: $file"
    fi
done
echo "   ✅ Done"
echo ""

echo "3. Fixing 02-Atomic references..."
echo "   File: MOC_NAMING_CLEANUP_PLAN.md"
sed -i 's|02-Atomic|77-Archive/Legacy_20260222/02-Atomic-Legacy|g' \
    MOC_NAMING_CLEANUP_PLAN.md 2>/dev/null
echo "   ✅ Done"
echo ""

echo "4. Fixing 11-Templates/ references..."
echo "   Files: MOC_INDEX.md, MOC_OPTIMIZATION_PLAN.md, PhD_IR_MOC.md"
sed -i 's|11-Templates/|05-Structure/05a-Templates/|g' \
    MOC_INDEX.md \
    MOC_OPTIMIZATION_PLAN.md \
    PhD_IR_MOC.md 2>/dev/null
echo "   ✅ Done"
echo ""

echo "=========================================="
echo "VERIFICATION"
echo "=========================================="

BROKEN_55=$(grep -r "55-MOCs/" *.md 2>/dev/null | wc -l)
BROKEN_66=$(grep -r "66-Literature/" *.md 2>/dev/null | wc -l)
BROKEN_02=$(grep -r "02-Atomic" *.md 2>/dev/null | grep -v "77-Archive" | wc -l)
BROKEN_11=$(grep -r "11-Templates/" *.md 2>/dev/null | wc -l)

echo "Remaining old path references:"
echo "  55-MOCs/: $BROKEN_55 (expected: 0)"
echo "  66-Literature/: $BROKEN_66 (expected: 0)"
echo "  02-Atomic: $BROKEN_02 (expected: 0)"
echo "  11-Templates/: $BROKEN_11 (expected: 0)"
echo ""

TOTAL=$((BROKEN_55 + BROKEN_66 + BROKEN_02 + BROKEN_11))

if [ "$TOTAL" -eq 0 ]; then
    echo -e "${GREEN}✅ ALL MOC LINKS FIXED!${NC}"
    echo ""
    echo "Next: git commit these changes"
    exit 0
else
    echo -e "${YELLOW}⚠️  Some references remain — check manually:${NC}"
    grep -r "55-MOCs/\|66-Literature/\|02-Atomic\|11-Templates/" *.md 2>/dev/null | head -10
    echo ""
    echo "You may need to fix these manually or they may be intentional"
    exit 1
fi
