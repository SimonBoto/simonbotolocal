# Phase 2 Execution Runbook — Complete v4.0 Migration
## FULL MIGRATION — Trigger: "Execute Phase 2"

**⚠️ WARNING:** This is a DESTRUCTIVE operation that moves files  
**Status:** PREPARED — Review before executing  
**Estimated Time:** 2-3 hours  
**Risk:** MEDIUM-HIGH (moves 17+ files, updates links)  
**Prerequisite:** Phase 1 completed (or can run standalone)

---

## Pre-Migration Safety Checklist

### CRITICAL: Backup Verification

**Before executing Phase 2, confirm:**

```bash
# 1. Check git status
cd /home/simon/Workspaces/TheOptimizedBrain/
git status
# Should be: clean working tree, ahead of origin

# 2. Push current state to remote (BACKUP)
git push origin main
# Verify: "Everything up-to-date" or commits pushed

# 3. Create local backup branch
git branch backup-pre-phase2
git tag v3.0-final-before-migration

# 4. Verify backup exists
git branch -a | grep backup
git tag | grep v3.0

echo "✅ Backup confirmed"
```

**If push fails (no remote configured):**
- Option A: Configure remote first
- Option B: Copy entire vault to external backup
- Option C: Proceed with local backup branch only (riskier)

**Your call:** Configure remote or proceed with local-only backup?

---

## Phase 2 Overview

### What Gets Moved/Modified

| Source (v3.0) | Destination (v4.0) | Count |
|---------------|-------------------|-------|
| `04-Zettels/*.md` | `03-Zettels/03a-Conscious/*.md` | 17 zettels |
| `66-Literature/66b-LitNotes/*.md` | `02-LiteratureNotes/*.md` | 1 litnote |
| `66-Literature/66c-TechRefs/*.md` | `04-Synthesis/*.md` | 1 synthesis |
| `55-MOCs/*.md` | `05-Structure/05b-MOCs/*.md` | 1 MOC |
| `11-Templates/*.md` | `05-Structure/05a-Templates/*.md` | 16 templates |

**Total:** 36 files moved/renamed

---

## Step-by-Step Execution

### Step 0: Safety Checks (10 min)

```bash
cd /home/simon/Workspaces/TheOptimizedBrain/

# Verify we're on main branch
git branch --show-current
# Expected: main

# Verify clean status
git status --short
# Expected: empty (or only expected untracked files)

# Verify Phase 1 exists (if running standalone)
ls -d 03-Zettels/03a-Conscious 04-Synthesis 05-Structure/05b-MOCs 2>/dev/null
# If missing, run Phase 1 first

echo "✅ Safety checks passed"
```

---

### Step 1: Move Zettels — 04-Zettels/ → 03-Zettels/03a-Conscious/ (20 min)

**Current location:** `04-Zettels/`
**New location:** `03-Zettels/03a-Conscious/`
**Changes:** Add `status: conscious` to YAML

```bash
# List current zettels
cd /home/simon/Workspaces/TheOptimizedBrain/
ls 04-Zettels/*.md

# Move each zettel with status update
for file in 04-Zettels/*.md; do
    filename=$(basename "$file")
    
    # Read current content
    content=$(cat "$file")
    
    # Add status: conscious after type: line
    updated=$(echo "$content" | sed 's/^type: zettel.*/type: zettel\nstatus: conscious/')
    
    # Write to new location
    echo "$updated" > "03-Zettels/03a-Conscious/$filename"
    
    echo "Moved: $filename"
done

# Verify
echo "Files in 03-Zettels/03a-Conscious/:"
ls 03-Zettels/03a-Conscious/ | wc -l
echo "Expected: 17"
```

**Manual verification:** Check 2-3 files have `status: conscious` in YAML.

---

### Step 2: Move Literature Note — 66b/ → 02/ (5 min)

**Current:** `66-Literature/66b-LitNotes/Lit_GutierrezRodelo_IR_Mechanisms_2017.md`
**New:** `02-LiteratureNotes/GutierrezRodelo_2017_IR_Mechanisms_[L-001-0001].md`

```bash
# Move and rename
mv "66-Literature/66b-LitNotes/Lit_GutierrezRodelo_IR_Mechanisms_2017.md" \
   "02-LiteratureNotes/GutierrezRodelo_2017_IR_Mechanisms_[L-001-0001].md"

# Update internal links (if any self-references)
# (Check file for any hardcoded paths)

echo "✅ Literature note moved"
```

---

### Step 3: Move Synthesis — 66c/ → 04/ (5 min)

**Current:** `66-Literature/66c-TechRefs/Insulin_Signaling_TechRef_[T-001-0001].md`
**New:** `04-Synthesis/Insulin_Signaling_Synthesis_[S-001-0001].md`

```bash
# Move and rename (TechRef → Synthesis)
mv "66-Literature/66c-TechRefs/Insulin_Signaling_TechRef_[T-001-0001].md" \
   "04-Synthesis/Insulin_Signaling_Synthesis_[S-001-0001].md"

# Update type: tech-ref → type: synthesis
sed -i 's/type: tech-ref/type: synthesis/' \
   "04-Synthesis/Insulin_Signaling_Synthesis_[S-001-0001].md"

echo "✅ Synthesis moved and renamed"
```

---

### Step 4: Move MOC — 55/ → 05b/ (10 min)

**Current:** `55-MOCs/MOC-001.md`
**New:** `05-Structure/05b-MOCs/MOC-001.md`

```bash
# Move
mv "55-MOCs/MOC-001.md" "05-Structure/05b-MOCs/"

# Update all internal links in the MOC
# Old: [[Insulin_Receptor_[Z-001-0001]]]
# Still valid (filenames unchanged)

# But need to update paths to synthesis
sed -i 's/Insulin_Signaling_TechRef_\[T-001-0001\]/Insulin_Signaling_Synthesis_[S-001-0001]/g' \
   "05-Structure/05b-MOCs/MOC-001.md"

echo "✅ MOC moved and links updated"
```

---

### Step 5: Update Zettel Links — Point to New Synthesis (15 min)

**Problem:** Zettels have `[[Insulin_Signaling_TechRef_[T-001-0001]]]`
**Solution:** Update to `[[Insulin_Signaling_Synthesis_[S-001-0001]]]`

```bash
# Update all zettels
cd 03-Zettels/03a-Conscious/

for file in *.md; do
    sed -i 's/Insulin_Signaling_TechRef_\[T-001-0001\]/Insulin_Signaling_Synthesis_[S-001-0001]/g' "$file"
    echo "Updated: $file"
done

cd ../..

echo "✅ Zettel links updated"
```

---

### Step 6: Move Templates — 11/ → 05a/ (10 min)

**Current:** `11-Templates/*.md`
**New:** `05-Structure/05a-Templates/`

```bash
# Move all templates
mv 11-Templates/*.md 05-Structure/05a-Templates/

# Verify
echo "Templates moved:"
ls 05-Structure/05a-Templates/ | wc -l
echo "Expected: ~16"

echo "✅ Templates moved"
```

---

### Step 7: Update Synthesis Internal Links (10 min)

**Problem:** Synthesis file has links to zettels
**Solution:** Verify/update paths

```bash
# Check if synthesis has any hardcoded paths
grep -n "\[\[" 04-Synthesis/Insulin_Signaling_Synthesis_[S-001-0001].md | head -20

# If links are just [[Filename]], they should still work
# Obsidian resolves by filename, not path

# But update TechRef → Synthesis references
sed -i 's/TechRef/Synthesis/g' \
   04-Synthesis/Insulin_Signaling_Synthesis_[S-001-0001].md

echo "✅ Synthesis internal links checked"
```

---

### Step 8: Delete Empty v3.0 Folders (5 min)

```bash
# Remove empty folders
rmdir 04-Zettels/ 2>/dev/null || echo "04-Zettels/ not empty — check"
rmdir 55-MOCs/ 2>/dev/null || echo "55-MOCs/ not empty — check"
rmdir 66-Literature/66b-LitNotes/ 2>/dev/null
rmdir 66-Literature/66c-TechRefs/ 2>/dev/null
rmdir 66-Literature/ 2>/dev/null || echo "66-Literature/ not empty — check"
rmdir 11-Templates/ 2>/dev/null || echo "11-Templates/ not empty — check"

echo "✅ Empty folders removed"
```

**If "not empty" warnings:** Investigate before proceeding.

---

### Step 9: Update Documentation (10 min)

```bash
# Update SYSTEM_README_v3.0.md → SYSTEM_README_v4.0.md
mv SYSTEM_README_v3.0.md SYSTEM_README_v4.0.md

# Update internal references (if any hardcoded paths)
sed -i 's|04-Zettels/|03-Zettels/03a-Conscious/|g' SYSTEM_README_v4.0.md
sed -i 's|11-Templates/|05-Structure/05a-Templates/|g' SYSTEM_README_v4.0.md
sed -i 's|55-MOCs/|05-Structure/05b-MOCs/|g' SYSTEM_README_v4.0.md
sed -i 's|66-Literature/66b-LitNotes/|02-LiteratureNotes/|g' SYSTEM_README_v4.0.md
sed -i 's|66-Literature/66c-TechRefs/|04-Synthesis/|g' SYSTEM_README_v4.0.md

echo "✅ Documentation updated"
```

---

### Step 10: Verification (15 min)

```bash
echo "=== VERIFICATION ==="

echo "1. Zettels in new location:"
ls 03-Zettels/03a-Conscious/ | wc -l
echo "   Expected: 17"

echo "2. Literature note:"
ls 02-LiteratureNotes/
echo "   Expected: GutierrezRodelo_2017_IR_Mechanisms_[L-001-0001].md"

echo "3. Synthesis:"
ls 04-Synthesis/
echo "   Expected: Insulin_Signaling_Synthesis_[S-001-0001].md"

echo "4. MOC:"
ls 05-Structure/05b-MOCs/
echo "   Expected: MOC-001.md"

echo "5. Templates:"
ls 05-Structure/05a-Templates/ | wc -l
echo "   Expected: 16+"

echo "6. Old folders empty/deleted:"
ls 04-Zettels/ 2>/dev/null || echo "   04-Zettels/ deleted ✓"
ls 55-MOCs/ 2>/dev/null || echo "   55-MOCs/ deleted ✓"
ls 11-Templates/ 2>/dev/null || echo "   11-Templates/ deleted ✓"

echo "7. Sample zettel has status: conscious"
grep -l "status: conscious" 03-Zettels/03a-Conscious/*.md | wc -l
echo "   Expected: 17"

echo "=== VERIFICATION COMPLETE ==="
```

---

### Step 11: Git Commit (5 min)

```bash
cd /home/simon/Workspaces/TheOptimizedBrain/

# Stage all changes
git add -A

# Commit with detailed message
git commit -m "BREAKING: Phase 2 — Complete v4.0 migration

MIGRATION SUMMARY:
- 17 zettels: 04-Zettels/ → 03-Zettels/03a-Conscious/
- 1 litnote: 66-Literature/66b/ → 02-LiteratureNotes/
- 1 synthesis: 66-Literature/66c/ → 04-Synthesis/ (renamed TechRef→Synthesis)
- 1 MOC: 55-MOCs/ → 05-Structure/05b-MOCs/
- 16 templates: 11-Templates/ → 05-Structure/05a-Templates/

CHANGES:
- Added status: conscious to all zettels
- Renamed TechRef → Synthesis (type and filename)
- Updated internal links (TechRef references)
- Deleted empty v3.0 folders
- Updated documentation

NEW STRUCTURE:
├── 00-Inbox/
├── 01-References/
├── 02-LiteratureNotes/
├── 03-Zettels/03a-Conscious/ (17 zettels)
├── 04-Synthesis/
├── 05-Structure/
└── 09-System/

BREAKING CHANGE: Old paths no longer valid.
Refs: PHASE1_EXECUTION_RUNBOOK.md, VAULT_REORGANIZATION_PLAN_v4.0.md"

# Push to remote (backup)
git push origin main

echo "✅ Phase 2 committed and pushed"
```

---

## Post-Migration: Subagent Coordination

**Update subagent's working context:**

```
NEW PATHS (v4.0):
- Zettels: 03-Zettels/03a-Conscious/
- LitNotes: 02-LiteratureNotes/
- Synthesis: 04-Synthesis/
- MOCs: 05-Structure/05b-MOCs/
- Templates: 05-Structure/05a-Templates/

DEPRECATED (do not use):
- 04-Zettels/ (moved)
- 55-MOCs/ (moved)
- 66-Literature/ (restructured)
- 11-Templates/ (moved)
```

---

## Rollback Procedure (If Needed)

```bash
cd /home/simon/Workspaces/TheOptimizedBrain/

# Option 1: Revert commit
git revert HEAD --no-commit
git commit -m "Revert: Rollback v4.0 migration"

# Option 2: Restore from backup branch
git checkout backup-pre-phase2

# Option 3: Hard reset (DANGEROUS — loses uncommitted work)
git reset --hard v3.0-final-before-migration
```

**Data loss:** ZERO (if backup branch exists)

---

## Execution Checklist

**Before Phase 2:**
- [ ] Backup verified (git push + backup branch)
- [ ] Phase 1 complete (or running standalone)
- [ ] Time allocated (2-3 hours)
- [ ] No pending work in subagent
- [ ] You approve execution

**During Phase 2:**
- [ ] Step 0: Safety checks
- [ ] Step 1: Move zettels (add status: conscious)
- [ ] Step 2: Move litnote
- [ ] Step 3: Move synthesis (rename TechRef→Synthesis)
- [ ] Step 4: Move MOC
- [ ] Step 5: Update zettel links
- [ ] Step 6: Move templates
- [ ] Step 7: Update synthesis links
- [ ] Step 8: Delete empty folders
- [ ] Step 9: Update documentation
- [ ] Step 10: Verification
- [ ] Step 11: Git commit + push

**After Phase 2:**
- [ ] All 17 zettels accessible
- [ ] All links working
- [ ] Subagent notified
- [ ] Monitoring for 24h

---

## Answer: Should We Update Backup?

**YES — ABSOLUTELY.**

**Required before Phase 2:**
1. `git push origin main` — Push all commits to remote
2. `git branch backup-pre-phase2` — Local backup branch
3. `git tag v3.0-final-before-migration` — Tagged release

**Without backup:** If migration fails, we lose work.

**With backup:** One command to restore.

---

## Document Status

**Status:** READY TO EXECUTE  
**Trigger Phrase:** "Execute Phase 2"  
**Prerequisites:** Backup confirmed, Phase 1 complete (or standalone)  
**Estimated Duration:** 2-3 hours  
**Last Updated:** 2026-02-22
