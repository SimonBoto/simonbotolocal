---
uid: PROTOCOL-001-0001
type: protocol
title: Extraction Protocol Checklist v1.0
domain: 001
domain-name: Protocols
tags: [protocol, extraction, quality, checklist, zettelkasten]
parent-moc: [[MOC-Protocols]]
status: active
created: 2026-02-24
---

# EXTRACTION PROTOCOL CHECKLIST v1.0

Quick reference for reviewing RON's extraction work.
Full protocol: `~/.openclaw/skills/vault-extraction/SKILL.md`

---

## PRE-FLIGHT
- [ ] RON read SKILL.md
- [ ] Checked COMMAND.md for domain/priority
- [ ] Git clean? (<20 uncommitted files)
- [ ] No other extraction running

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
- [ ] Created EXTRACTION_PLAN.md
- [ ] **WAITED FOR YOUR APPROVAL**

## PHASE 3: CREATE
- [ ] Cached templates (read once)
- [ ] Max 5 items this batch
- [ ] Pre-write: No `{{` placeholders
- [ ] Each file: Written
- [ ] Each file: Verified exists
- [ ] Each file: Verified readable
- [ ] Each file: Verified YAML valid
- [ ] Each file: Verified UID matches filename
- [ ] Logged: ✓ or ✗ per item

## PHASE 4: VERIFY
- [ ] Full ls of claimed files
- [ ] Full read of all created files (not spot-check)
- [ ] Verified YAML frontmatter
- [ ] Verified parent-moc link
- [ ] Verified source link
- [ ] Gap analysis: Created/Failed/Remaining
- [ ] Created VERIFICATION_REPORT
- [ ] **YOU REVIEWED**

## PHASE 5: UPDATE
- [ ] Status = "complete" ONLY if 100% verified
- [ ] Status = "processing" if any failed/batched
- [ ] Zettels Created section with links
- [ ] Reference Hubs Created section with links
- [ ] Verification Status section
- [ ] Next Actions section (specific)
- [ ] QUEUE.md updated
- [ ] Git committed (or error logged)

---

## RED FLAGS - STOP AND REVIEW

| Issue | Action |
|-------|--------|
| Status "complete" but <100% verified | DEMAND correction |
| Zettel links don't open | Files don't exist |
| Reference hub missing DOI | Incomplete extraction |
| Legacy atoms created | Violated protocol |
| Greek in new filenames | Violated naming rules |
| `{{placeholder}}` in content | Incomplete template fill |
| UID gaps in sequence | Ask why |

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

If >5 zettels or >10 refs:
- Batch 1: 5 zettels + refs
- Status: "processing"
- Section: "Remaining for Batch 2: [list]"
- Schedule next session

---

## VERIFICATION SHORTCUT

Quick check (2 min):
```bash
cd /home/simon/Workspaces/TheOptimizedBrain
ls 03-Zettels/Conscious/ | grep "Z-XXX-" | wc -l
ls 01-References/Hub/ | grep "R-XXX-" | wc -l
git diff --stat HEAD~1
```

---

*Protocol: SKILL/vault-extraction v1.0*
*Created: 2026-02-24*
*For: NKUA 3174/3175 + future extractions*
