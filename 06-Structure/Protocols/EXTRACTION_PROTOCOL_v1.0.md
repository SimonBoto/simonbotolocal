---
uid: PROTOCOL-001-0001
type: protocol
title: Extraction Protocol Checklist v1.2
domain: 001
domain-name: Protocols
tags: [protocol, extraction, quality, checklist, zettelkasten]
parent-moc: 
status: active
created: 2026-02-24
updated: 2026-04-01
changes: "v1.2 — Added GOLD/SILVER/BRONZE tiers, L4 autonomy, synthesis triggers, permanent questions check, git checkpoint frequency"
---

# EXTRACTION PROTOCOL CHECKLIST v1.1

Quick reference for reviewing RON's extraction work.
Full protocol: `~/.openclaw/skills/vault-extraction/SKILL.md`

---

## PRE-FLIGHT
- [ ] RON read SKILL.md
- [ ] Checked COMMAND.md for domain/priority
- [ ] Git clean? (<20 uncommitted files)
- [ ] No other extraction running
- [ ] Reviewed PERMANENT_QUESTIONS.md — does this source answer any active questions?
- [ ] Checked SYNTHESIS_TRIGGERS.md — will this push any topic toward critical mass?

## PHASE 1: AUDIT
- [ ] Listed all Z-XXX- files
- [ ] Listed all R-XXX- files
- [ ] Identified highest UID per domain
- [ ] Found UID gaps (if any)
- [ ] Showed AUDIT_SNAPSHOT
- [ ] You acknowledged

## PHASE 2: PLAN
- [ ] Read source PDF completely
- [ ] Identified zettels (concepts → atoms)
- [ ] **PASS 1**: Formal bibliography scanned
- [ ] **PASS 2**: Inline citations scanned
- [ ] **PASS 3**: Legacy links noted (not created)
- [ ] Cross-checked against AUDIT
- [ ] Assigned sequential UIDs
- [ ] **Classified tier:**
  - **GOLD:** Deep extraction, 3-4 atomics, high value sources
  - **SILVER:** Medium upgrade, YAML + TL;DR + key findings
  - **BRONZE:** Standardization only, YAML fix
- [ ] Created EXTRACTION_PLAN.md
- [ ] **WAITED FOR YOUR APPROVAL** (unless L4 pre-authorized per AUTONOMY.md)

## PHASE 3: CREATE
- [ ] Cached templates (read once)
- [ ] **Max 3 items this batch** (reduced from 5 — prevents fatigue errors)
- [ ] **Git checkpoint every 5 items** (per AUTONOMY.md v2.1)
- [ ] Pre-write: No `{{` placeholders
- [ ] Each file: Written
- [ ] Each file: Verified exists
- [ ] Each file: Verified readable
- [ ] Each file: Verified YAML valid
- [ ] Each file: Verified UID matches filename
- [ ] **Self-audit after EACH item** (catch drift early)
- [ ] Logged: ✓ or ✗ per item

## PHASE 4: VERIFY — MANDATORY DONE CRITERIA

**Before claiming "complete," I MUST verify and report:**

| Check | How I Verify | Report Format |
|-------|--------------|---------------|
| **Citations present?** | Three-pass scan (formal ref list, inline cites, legacy format) | "✅ N citations verified" |
| **UIDs sequential?** | List all UIDs created, confirm no gaps | "UIDs: Z-001-0011 through Z-001-0017" |
| **Placeholders replaced?** | Search for `{{`, `TODO`, `FIX` | "✅ 0 placeholders remaining" |
| **Links work?** | Spot-check 3-5 internal links | "✅ Links verified" |

**If any check fails → status is "draft," NOT "complete"**

- [ ] Full ls of claimed files
- [ ] Full read of all created files (not spot-check)
- [ ] Verified YAML frontmatter
- [ ] Verified parent-moc link
- [ ] Verified source link
- [ ] **Done Criteria checklist completed (see table above)**
- [ ] Gap analysis: Created/Failed/Remaining
- [ ] Created VERIFICATION_REPORT
- [ ] **Synthesis check:** Any topics reached critical mass (6+ zettels)? Flag for synthesis.
- [ ] **MANDATORY PAUSE: Report verification results BEFORE claiming done**
- [ ] **YOU REVIEWED** (unless L4 pre-authorized)

## PHASE 5: UPDATE — STATUS RULES

| Status | When to Use | NEVER When |
|--------|-------------|------------|
| **complete** | All Done Criteria ✅, 100% verified, you reviewed | Any check failed, placeholders exist, UID gaps |
| **draft** | Created but verification incomplete | — |
| **processing** | Batched work, more to do | — |

**Rule: I cannot say "complete" without explicit verification report.**

- [ ] Status = "complete" ONLY if 100% verified AND Done Criteria met
- [ ] Status = "draft" if verification incomplete
- [ ] Status = "processing" if any failed/batched
- [ ] Zettels Created section with links
- [ ] Reference Hubs Created section with links
- [ ] **Verification Report section (mandatory)**
- [ ] Next Actions section (specific)
- [ ] QUEUE.md updated
- [ ] Git committed (or error logged)

---

## RED FLAGS - STOP AND REVIEW

| Issue | Action |
|-------|--------|
| **Status "complete" but Done Criteria not met** | **VIOLATION — Roll back status** |
| Status "complete" but <100% verified | DEMAND correction |
| Zettel links don't open | Files don't exist |
| Reference hub missing DOI | Incomplete extraction |
| Legacy atoms created | Violated protocol |
| Greek in new filenames | Violated naming rules |
| `{{placeholder}}` in content | Incomplete template fill |
| UID gaps in sequence | Ask why |
| Missing verification report | Demand Done Criteria checklist |
| Batch >3 items without approval | Scope creep |

---

## DOMAIN QUICK REFERENCE

| Topic | Domain | Example |
|-------|--------|---------|
| Insulin resistance mechanisms | 001 | Lipotoxicity, signaling |
| Adipic acid biomarker | 001 | Early IR detection |
| Metformin/AMPK | 101 | Drug mechanism |
| Pharmacometabolomics | 101 | Treatment response |
| Precision medicine | 101 | Responder stratification |
| Warburg effect | 101 | Immunometabolism |

Unclear? Default: 001

---

## BATCH HANDLING

If >3 zettels or >10 refs:
- Batch 1: 3 zettels + refs (reduced from 5)
- Status: "processing" (not "complete")
- Section: "Remaining for Batch 2: [list]"
- Self-audit after each item
- Schedule next session

---

## VERIFICATION SHORTCUT

Quick check (2 min):
```bash
cd /home/simon/Workspaces/TheOptimizedBrain
ls 03-Zettels/Conscious/ | grep "Z-XXX-" | wc -l
ls 02-References/Hub/ | grep "R-XXX-" | wc -l
git diff --stat HEAD~1
```

---

*Protocol: SKILL/vault-extraction v1.2*
*Created: 2026-02-24*
*Updated: 2026-04-01 — Aligned with CGPT v2.1: tiers, L4 autonomy, synthesis triggers*
*For: NKUA 3174/3175 + future extractions*
