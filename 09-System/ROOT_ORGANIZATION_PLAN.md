# Root-Level Notes Analysis & Organization Plan

**Date:** 2026-02-22  
**Status:** Planning — Optimal placement identified

---

## Current Root-Level Files (16)

```
00-MISSION.md                          5.2K
BACKUP_CONFIRMATION_20260222.md        2.0K
CONTINUITY_PLAN.md                     5.3K
PHASE1_EXECUTION_RUNBOOK.md            10K
PHASE2_EXECUTION_RUNBOOK.md            11.8K
SESSION_HANDOFF_v4.0_MIGRATION.md      4.0K
SYSTEM_README_v3.0.md                  5.6K
threekeys.md                           494B
V4.0_MIGRATION_SUMMARY.md              11K
V4.0_TEMPLATE_REQUIREMENTS.md          6.8K
VAULT_OPTIMIZATION_PROPOSAL.md         8.6K
VAULT_REORGANIZATION_PLAN_v4.0.md      12.6K
ZETTEL_ARCHITECTURE_DESIGN.md          10.9K
ZETTELKASTEN_PHILOSOPHY.md             11.2K
ZETTELKASTEN_TECHREF_PROPOSAL.md       7.2K
ZETTEL_NAMING_HIERARCHY_REDUX.md       7.6K
```

---

## Categorization & Optimal Placement

### Category 1: Entry Points (Keep in Root)

| File | Purpose | Action |
|------|---------|--------|
| **00-MISSION.md** | North star / mission statement | ✅ Keep in root |
| **SYSTEM_README_v3.0.md** | System documentation | Keep for now, update to v4.0 |

**Rationale:** These are entry points. Anyone opening the vault sees these first.

---

### Category 2: Security Risk (DELETE IMMEDIATELY)

| File | Issue | Action |
|------|-------|--------|
| **threekeys.md** | Contains API keys in plaintext | 🔴 DELETE NOW — Move to `~/.openclaw/CREDENTIALS_VAULT.md` |

**Security Risk:** API keys in vault = compromised if vault is shared/pushed.

**Already exists in:** `~/.openclaw/CREDENTIALS_VAULT.md` (per MEMORY.md)  
**Action:** Delete duplicate from vault.

---

### Category 3: Temporary/Transient (Archive)

| File | Purpose | Action |
|------|---------|--------|
| **BACKUP_CONFIRMATION_20260222.md** | One-time backup note | 🟡 Archive to `77-Archive/` or delete after migration |

**Rationale:** Single-use document. Not needed long-term.

---

### Category 4: Execution Runbooks (Move to 99-System/)

| File | Purpose | Destination |
|------|---------|-------------|
| **PHASE1_EXECUTION_RUNBOOK.md** | Migration Phase 1 guide | `99-System/Migration/` |
| **PHASE2_EXECUTION_RUNBOOK.md** | Migration Phase 2 guide | `99-System/Migration/` |
| **SESSION_HANDOFF_v4.0_MIGRATION.md** | Session continuity | `99-System/Migration/` |
| **CONTINUITY_PLAN.md** | Continuity protocols | `99-System/Migration/` |

**Rationale:** These are system operational documents. Belong with other system docs.

---

### Category 5: Architecture & Philosophy (Move to 99-System/)

| File | Purpose | Destination |
|------|---------|-------------|
| **ZETTELKASTEN_PHILOSOPHY.md** | Zettelkasten theory | `99-System/Philosophy/` |
| **ZETTEL_ARCHITECTURE_DESIGN.md** | Architecture spec | `99-System/Architecture/` |
| **ZETTELKASTEN_TECHREF_PROPOSAL.md** | TechRef concept | `99-System/Architecture/` |
| **ZETTEL_NAMING_HIERARCHY_REDUX.md** | Naming conventions | `99-System/Architecture/` |
| **VAULT_OPTIMIZATION_PROPOSAL.md** | Optimization ideas | `99-System/Architecture/` |
| **V4.0_TEMPLATE_REQUIREMENTS.md** | Template specs | `99-System/Architecture/` |

**Rationale:** These are foundational documents about the vault's design and philosophy.

---

### Category 6: Migration Planning (Move to 99-System/Migration/)

| File | Purpose | Destination |
|------|---------|-------------|
| **V4.0_MIGRATION_SUMMARY.md** | Migration summary | `99-System/Migration/` |
| **VAULT_REORGANIZATION_PLAN_v4.0.md** | Reorganization plan | `99-System/Migration/` |

**Rationale:** Specific to v4.0 migration. Keep together with runbooks.

---

## Proposed New Structure

### Keep in Root (2)
```
00-MISSION.md
START_HERE.md (if exists, or create from SYSTEM_README)
```

### Delete (1)
```
threekeys.md → DELETE (security risk, already in ~/.openclaw/)
```

### Move to 99-System/ (12)
```
99-System/
├── Migration/
│   ├── PHASE1_EXECUTION_RUNBOOK.md
│   ├── PHASE2_EXECUTION_RUNBOOK.md
│   ├── SESSION_HANDOFF_v4.0_MIGRATION.md
│   ├── CONTINUITY_PLAN.md
│   ├── V4.0_MIGRATION_SUMMARY.md
│   └── VAULT_REORGANIZATION_PLAN_v4.0.md
│
├── Architecture/
│   ├── ZETTEL_ARCHITECTURE_DESIGN.md
│   ├── ZETTELKASTEN_TECHREF_PROPOSAL.md
│   ├── ZETTEL_NAMING_HIERARCHY_REDUX.md
│   ├── VAULT_OPTIMIZATION_PROPOSAL.md
│   └── V4.0_TEMPLATE_REQUIREMENTS.md
│
├── Philosophy/
│   └── ZETTELKASTEN_PHILOSOPHY.md
│
└── Legacy/
    └── SYSTEM_README_v3.0.md (after v4.0 migration)
```

### Archive (1)
```
77-Archive/Transient/
└── BACKUP_CONFIRMATION_20260222.md
```

---

## Execution Plan (GREEN ops)

### Step 1: Security (CRITICAL)
```bash
cd /home/simon/Workspaces/TheOptimizedBrain/
# Verify keys exist in safe location
grep -q "operouter" ~/.openclaw/CREDENTIALS_VAULT.md && echo "Keys safe" || echo "WARNING: Backup keys first"

# Delete from vault
git rm threekeys.md
git commit -m "security: Remove API keys from vault (already in ~/.openclaw/)"
```

### Step 2: Create Structure
```bash
mkdir -p 99-System/{Migration,Architecture,Philosophy}
mkdir -p 77-Archive/Transient
```

### Step 3: Move Files
```bash
# Migration docs
mv PHASE1_EXECUTION_RUNBOOK.md 99-System/Migration/
mv PHASE2_EXECUTION_RUNBOOK.md 99-System/Migration/
mv SESSION_HANDOFF_v4.0_MIGRATION.md 99-System/Migration/
mv CONTINUITY_PLAN.md 99-System/Migration/
mv V4.0_MIGRATION_SUMMARY.md 99-System/Migration/
mv VAULT_REORGANIZATION_PLAN_v4.0.md 99-System/Migration/

# Architecture docs
mv ZETTEL_ARCHITECTURE_DESIGN.md 99-System/Architecture/
mv ZETTELKASTEN_TECHREF_PROPOSAL.md 99-System/Architecture/
mv ZETTEL_NAMING_HIERARCHY_REDUX.md 99-System/Architecture/
mv VAULT_OPTIMIZATION_PROPOSAL.md 99-System/Architecture/
mv V4.0_TEMPLATE_REQUIREMENTS.md 99-System/Architecture/

# Philosophy
mv ZETTELKASTEN_PHILOSOPHY.md 99-System/Philosophy/

# Archive transient
mv BACKUP_CONFIRMATION_20260222.md 77-Archive/Transient/
```

### Step 4: Update References
```bash
# Update SYSTEM_README_v3.0.md with new paths
sed -i 's|PHASE1_EXECUTION_RUNBOOK.md|99-System/Migration/PHASE1_EXECUTION_RUNBOOK.md|g' SYSTEM_README_v3.0.md
# ... etc for other references
```

### Step 5: Commit
```bash
git add -A
git commit -m "refactor: Organize root-level docs into 99-System/

- Security: Delete threekeys.md (API keys already in ~/.openclaw/)
- Move 6 migration docs → 99-System/Migration/
- Move 5 architecture docs → 99-System/Architecture/
- Move 1 philosophy doc → 99-System/Philosophy/
- Archive 1 transient doc → 77-Archive/Transient/
- Keep 00-MISSION.md in root (entry point)

Root now clean: only entry points remain."
```

---

## Questions for You

### Q1: Keep SYSTEM_README_v3.0.md in root?
- **A:** Yes, until v4.0 migration complete, then archive
- **B:** Move to 99-System/ now
- **C:** Delete (redundant with other docs)

### Q2: Create START_HERE.md?
- **A:** Yes — Single entry point linking to everything
- **B:** No — 00-MISSION.md is sufficient

### Q3: Threekeys.md — already confirmed safe?
- **I need you to verify:** `grep "operouter" ~/.openclaw/CREDENTIALS_VAULT.md` exists

### Q4: Archive or delete BACKUP_CONFIRMATION?
- **A:** Archive to 77-Archive/Transient/
- **B:** Delete entirely (single-use)

---

## Summary

| Category | Count | Action |
|----------|-------|--------|
| **Keep in root** | 2 | Entry points |
| **Delete** | 1 | Security (threekeys.md) |
| **Move to 99-System/Migration/** | 6 | Execution guides |
| **Move to 99-System/Architecture/** | 5 | Design docs |
| **Move to 99-System/Philosophy/** | 1 | Theory |
| **Archive** | 1 | Transient |

**Total organized:** 15 of 16 files  
**Root after:** Clean (only 00-MISSION.md + optionally START_HERE.md)

---

**Say:**
- "Execute organization" — Move all files per plan
- "Answer Q1-Q4" — Respond to questions
- "Modify plan" — Change something
