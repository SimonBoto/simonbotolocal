---
load-priority: 3
type: reference
description: Extended documentation for TOOLS.md — git protocol, validation, batch processing
---

# TOOLS-REFERENCE.md — Extended Tools Documentation

> **Purpose:** Detailed git protocol, validation commands, batch processing for TOOLS.md  
> **Use when:** You need full examples, troubleshooting, or batch details

---

## Git Protocol

| Trigger | Action | Message Style | Example |
|---------|--------|---------------|---------|
| End of session | Commit all | `YYYY-MM-DD: [brief description]` | `2026-04-20: Issues system operational` |
| Batch complete | Commit batch | `YYYY-MM-DD: [X LitNotes, Y zettels] — [topic]` | `2026-04-20: 5 LitNotes, 12 zettels — insulin signaling` |
| Fix applied | Commit fix | `fix: [what was broken]` | `fix: YAML syntax in L-001-0042` |
| Before risky op | Checkpoint commit | `checkpoint: before [operation]` | `checkpoint: before MOC consolidation wave 2` |
| L4 action (per AUTONOMY.md) | Required checkpoint | `L4: [action description]` | `L4: Batch rename 100 files` |
| Batch processing (GOLD/SILVER/BRONZE) | Every 10 items | `batch: tier-X completed` | `batch: tier-GOLD completed` |

**Frequency:** Minimum 1×/session, ideally 2-3× for long sessions.
**Branch:** Main only (no feature branches unless you specify).
**Push:** You handle (I don't have push access).

---

## Validation Commands

### YAML Validation

```bash
# Check YAML is valid
head -20 file.md | yq eval '.' -
# Should parse without errors

# Batch check all zettels
for f in 03-Zettels/Conscious/*.md; do
  echo "Checking $f..."
  head -20 "$f" | yq eval '.' - > /dev/null 2>&1 || echo "YAML ERROR: $f"
done
```

### Link Validation

```bash
# Check for broken wiki-links
grep -r "\[\[" 03-Zettels/Conscious/ | grep -v "\.md\]\]" | head -20

# Find orphaned zettels (no incoming links)
# (Use QMD or custom script)
```

### UID Validation

```bash
# Check UID format compliance
# Format: {T}-{DDD}-{SSSS}
grep -r "uid:" 03-Zettels/Conscious/ | grep -v "^[a-z]*: Z-[0-9]\{3\}-[0-9]\{4\}$"
```

---

## Batch Processing (GOLD/SILVER/BRONZE)

### Tier Classification

| Tier | Criteria | Batch Size | Verification |
|------|----------|------------|--------------|
| **GOLD** | P0, high value, clear scope | ≤10 items | Spot check 2, 100% pass |
| **SILVER** | P1, medium complexity | ≤15 items | Spot check 3, 2/3 pass |
| **BRONZE** | P2, low risk, repetitive | ≤25 items | Spot check 2, 1/2 pass |

### Pre-Batch: Git Checkpoint

```bash
# Always checkpoint before batches
git add -A
git commit -m "checkpoint: before [batch description]"
```

### Mid-Batch: Senior Engineer Gate

After completing a batch, ask:
> "Would a senior engineer say this is overcomplicated?"

If yes → Simplify before committing.

**Example:**
```
Simplicity check: Would a senior engineer say this 200-line fix script is overcomplicated?
Yes — simplifying to 50 lines with clear comments.
```

### During Batch: Surgical Rule

- ✅ Fix only what batch targets
- ⚠️ Note adjacent issues for future batches
- ❌ Never fix adjacent issues in same batch

**Example:**
```
Surgical scope: Fix YAML in 219 LitNotes
Adjacent issues noticed: 3 broken links in 03-Zettels/ — noted for ISSUE-010
NOT fixing: Broken links (out of scope)
```

### Per-Batch: Goal-Driven Success Criteria

**Template:**
```
Batch: [Name]
- Target: [N files/items]
- Success: [specific, verifiable outcome]
- Verify: [spot check method]
- Result: [✅/❌ with evidence]
```

**Example:**
```
Batch: Add Core Principle
- Target: 355 zettels
- Success: Each has ## Core Principle with extracted sentence
- Verify: Spot check 5, all have valid content
- Result: ✅ 5/5 valid, batch complete
```

---

## Agent Ecosystem Details

| Agent | Workspace | Role | Integration |
|-------|-----------|------|-------------|
| **RON** | `~/.openclaw/workspace/` | Quality, curation, final authority | Vault-integrated |
| **FORG** | `~/.openclaw/workspace-forg/` | Bulk extraction, 98% cost savings | Vault-integrated |
| **SCOUT** | Uses OpenRouter API | Theme detection, exploration strategy | Queue-based |

**Handoff:** `08-Structure/Handoff/pending/`

---

## Daily Rituals

| Time | Ritual | Location |
|------|--------|----------|
| 03:00 | Dreaming (Light/REM/Deep) | `DREAMS.md` |
| 08:00 | RON reviews dreaming promotions | `DREAMS.md` → apply to vault |
| 20:00 Sunday | Weekly consolidation | `04-Synthesis/Weekly-Consolidation-Ritual` |

---

## Vault-to-Core-File Alignment

**TOOLS.md is the source of truth.** If vault structure evolves:
1. Update TOOLS.md documentation
2. Note change in daily log
3. Ensure all files remain aligned

**Current alignment verified:** 2026-04-20
- All folders in structure exist in vault
- `06-Structure/` removed, `08-Structure/` is the single system folder
- `Keywords/` folder removed (was deleted during reorganization)
- Root entry point is `00-INDEX.md` (not `00-MISSION.md`)
- All template filenames match actual files
- All dashboard files documented
- All zettel subfolders listed
- Issues/, Agents/, Skills/ added per ISSUE-002

---

_Last updated: 2026-04-21 (split from TOOLS.md to fix bootstrap truncation)_

*For core vault instructions — see TOOLS.md*  
*For agent startup modes — see AGENTS.md*  
*For identity and mission — see SOUL.md*
