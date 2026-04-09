---
uid: PROJECT-PHD-027
type: project-protocol
title: "FORG LitNote Update Protocol"
status: active
created: 2026-04-09
updated: 2026-04-09
---

# FORG LitNote Update Protocol

**Purpose:** Systematic conversion of legacy LitNotes to v4.0 canonical format  
**Scope:** LitNotes ONLY (zettels excluded — see [[PROJECT-Zettel-v4-Update]])  
**Target:** 159 LitNotes in `01-Literature/` root  
**Batch size:** 2–5 LitNotes per FORG task  
**Cost target:** <$0.10 per batch

---

## Project Context

| | |
|---|---|
| **Parent Project** | [[PROJECT-LitNote-v4-Update]] |
| **Next Project** | [[PROJECT-Zettel-v4-Update]] (queued) |
| **Chain Rule** | Confirm previous, prepare next |

---

## Workflow

```
RON: Exemplar → Prepare FORG task → Spawn FORG
                    ↓
FORG: Process batch → Write outputs → Signal complete
                    ↓
RON: Validate → Move to vault → Git commit → Next batch
```

---

## Phase 1: RON Preparation

### 1.1 Select Batch
- **Criteria:** CGPT anchor group
- **Size:** 2–5 LitNotes (keep FORG focused)
- **Priority:** Small anchors first (test velocity)

| Batch | Anchor | LitNotes | Status |
|-------|--------|----------|--------|
| 0 | Exemplar | 1 (L-001-0654) | 🟡 RON doing |
| 1 | CGPT-0647 | 2 | ⏳ Ready |
| 2 | CGPT-0393 | 5 | ⏳ Queue |
| 3 | CGPT-0264 | 4 | ⏳ Queue |
| 4+ | Others | ~147 | ⏳ Queue |

### 1.2 Gather Source Files
```bash
cd ~/Workspaces/TheOptimizedBrain

# Copy LitNotes to pending/
cp 01-Literature/L-XXX-XXXX_Title_CGPT-XXXX.md \
   ~/workspace/pending/source-L-XXX-XXXX.md
```

### 1.3 Prepare FORG Task File

Create `pending/forg-task-BATCH-NAME.md`:

```markdown
---
task: litnote-update-v4
batch: CGPT-0647-1
litnotes:
  - L-001-0654
  - L-001-0655
total_litnotes: 2
status: ready
---

# FORG Task: LitNote v4.0 Update

## Your Role
Convert legacy LitNotes to v4.0 canonical format.
Be precise. Preserve all content. Do not hallucinate.

## Source Files (Attached)
- `source-L-001-0654.md` — Legacy LitNote
- `source-L-001-0655.md` — Legacy LitNote

## Template (Reference)
- `Template_LitNote.md` — v4.0 canonical

## Exemplar (Reference — Done by RON)
- `exemplar-L-001-0654.md` — v4.0 conversion

## Output Requirements

For each LitNote, write to `pending/output-L-XXX-XXXX.md`:

### YAML (ALL fields required)
```yaml
---
uid: L-XXX-XXXX
type: lit-note
title: "Source_Title_L-XXX-XXXX"
aliases:
  - L-XXX-XXXX
  - Short-Alias
source-origin: chatgpt-archive
authors: ""
year: ""
journal: ""
doi: ""
pmid: ""
pmcid: ""
tier: GOLD|SILVER|BRONZE
relevance: "High|Medium|Low — why"
status: complete
parent-moc: "[[MOC-Topic]]"
parent-index: "[[01-Literature-Index]]"
extraction-date: "YYYY-MM-DD"
source-inbox: "[[CGPT_XXXX_Anchor]]"
zettel-count: N
reference-count: N
reviewed_by: "FORG"
created: "YYYY-MM-DD"
updated: "2026-04-09"
tags:
  - lit-note
  - topic-tags
---
```

### Body Sections
1. **Source** — type, location, context, date
2. **Core Claim** — 1 compact paragraph
3. **Core Concepts Extracted** — numbered, each with:
   - Category (Mechanism/Pathway/Process/etc.)
   - What the source gives (quoted or paraphrased)
   - Why it matters
   - Candidate zettel link
4. **Zettels Created** — list with descriptions
5. **References Used** — honest state
6. **Structural Links** — parent MOC, related
7. **Connections** — themes, clusters, contradictions
8. **Processing Checklist**
9. **Support State**
10. **Promotion Notes**

## Critical Rules

1. **Preserve ALL content** — Nothing dropped from source
2. **Convert bracket syntax** — `aliases: [a, b]` → `aliases:\n  - a\n  - b`
3. **Quote all links** — `"[[MOC-Topic]]"` not `[[MOC-Topic]]`
4. **Full filenames** — `[[Z-001-1125_Title]]` not `[[Z-001-1125]]`
5. **Kebab-case** — `[[MOC-Cancer-Therapy]]` not `[[MOC Cancer Therapy]]`
6. **Remove `extraction-quality`** — Redundant with `tier`
7. **Add missing fields** — `source-origin`, `reviewed_by`, `created`, `updated`
8. **Honest support state** — No fabricated references

## Self-Validation (Check Before Output)

- [ ] All source content preserved?
- [ ] Bracket syntax converted to YAML lists?
- [ ] All links quoted?
- [ ] Full filenames used (no bare UIDs)?
- [ ] `extraction-quality` removed?
- [ ] Missing fields added?
- [ ] YAML valid (no syntax errors)?

## Signal Completion

Update this file's frontmatter:
```yaml
status: complete
completed_at: "2026-04-09 HH:MM"
files_written:
  - pending/output-L-001-0654.md
  - pending/output-L-001-0655.md
notes: |
  Any issues or observations.
```
```

---

## Phase 2: FORG Execution

### 2.1 Spawn FORG
```bash
# Via OpenClaw sessions_spawn
runtime: "subagent"
agentId: "FORG"
task: "Process pending/forg-task-CGPT-0647-1.md with all attached source files"
```

### 2.2 FORG Outputs
- Writes to `pending/output-L-XXX-XXXX.md` for each LitNote
- Updates task file with `status: complete`

---

## Phase 3: RON Review

### 3.1 Validate
```bash
cd ~/workspace/pending

# Check files exist
ls -la output-L-*.md

# Validate YAML
head -30 output-L-*.md

# Check for bare UIDs (should return NOTHING)
grep -E '\[\[L-[0-9]{3}-[0-9]{4}\]\]' output-L-*.md
grep -E '\[\[Z-[0-9]{3}-[0-9]{4}\]\]' output-L-*.md

# Check for unquoted links
grep -E 'parent-moc: \[\[' output-L-*.md  # Should all have quotes
```

### 3.2 Content Review
- Compare source → output side-by-side
- Verify no content lost
- Check all v4.0 fields present

### 3.3 Move to Vault
```bash
cd ~/Workspaces/TheOptimizedBrain

for f in ~/workspace/pending/output-L-*.md; do
  # Extract UID from filename
  uid=$(basename "$f" .md | sed 's/output-//')
  # Find original filename pattern
  original=$(ls 01-Literature/${uid}_*.md)
  # Replace
  cp "$f" "$original"
done
```

### 3.4 Git Commit
```bash
git add -A
git commit -m "2026-04-09: LitNote v4.0 — CGPT-0647 batch (2 LitNotes)"
```

---

## Cost Estimation

| Component | Tokens | Cost |
|-----------|--------|------|
| Template + exemplar | ~3K | $0.001 |
| Source LitNotes (2×) | ~4K | $0.001 |
| FORG output (2×) | ~4K | $0.003 |
| **Per batch (2 LitNotes)** | **~11K** | **~$0.005** |

**Conservative:** $0.05 per batch (with iteration)  
**159 LitNotes ≈ 80 batches → $4.00 total**

---

## Success Criteria

1. ✅ 100% content preservation
2. ✅ 100% v4.0 YAML compliance
3. ✅ Zero bare UIDs
4. ✅ All links quoted
5. ✅ Git commit per batch
6. ✅ Cost <$0.10 per batch

---

## Current Status

- **Exemplar:** L-001-0654 (RON preparing)
- **Batch 1:** CGPT-0647 (2 LitNotes) — ready after exemplar
- **Protocol:** v1.1 (LitNotes-only scope)

---

## Related

- [[PROJECT-LitNote-v4-Update]] — Parent project
- [[PROJECT-Zettel-v4-Update]] — Next project (queued)
- [[Template_LitNote]] — v4.0 canonical template

---

*Protocol v1.1 — 2026-04-09*
*Scope: LitNotes only | Zettels in [[PROJECT-Zettel-v4-Update]]*
