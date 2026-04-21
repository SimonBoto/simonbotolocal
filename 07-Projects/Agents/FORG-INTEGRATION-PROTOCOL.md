---
uid: FORG-PROTOCOL-001
type: protocol
title: "FORG Integration Protocol v1.0"
date: 2026-04-16
status: active
---

# FORG Integration Protocol v1.0

> RON gates, FORG executes. High quality, low cost.

## Cost Savings
- FORG: $0.26/M input, $0.78/M output
- RON: $40/M tokens
- **Savings: 98% on bulk work**

## Cost Optimization Principle
**Fewer fixes = lower cost.** Explicit error documentation upfront reduces verification overhead. Pilot 002 was over-cautious (87k tokens). Target: 40-50k tokens per similar batch.

---

## Workflow: "RON Triage → FORG Draft → RON Review"

```
Your Input → RON Triage (30s, $0.10)
                ↓
    [Complex?] → RON handles directly
    [Clear?]   → Queue for FORG
                ↓
         FORG Drafts (2-3min, $0.05-0.15)
                ↓
         RON Review Gate (1min, $0.20)
                ↓
         [Pass] → Move to vault
         [Fail] → Fix or return to FORG
```

---

## RON Triage Decision Tree

| Input Characteristic | Decision |
|---------------------|----------|
| Ambiguous/unclear | RON handles |
| Complex synthesis needed | RON handles |
| Clear structure, single source | FORG queue |
| Reference present | RON fetches first, then FORG |
| Batch of similar inputs | FORG batch |

---

## FORG Handoff Package (Required)

Every FORG task MUST include:

1. **Raw input** (translated if non-English)
2. **Full citation** (RON-fetched if available)
3. **Template paths** (absolute paths, not names)
4. **Explicit success criteria** (checklist)
5. **Output locations** (absolute paths)
6. **Common failure patterns** (see below)

---

## Common FORG Failure Patterns (Document Upfront)

**Critical:** List these in EVERY handoff to prevent errors = fewer fixes = lower cost.

### Pattern 1: Wrong `type` field
**Wrong:** `type: lit-note`  
**Correct:** `type: litnote` (no hyphen)

### Pattern 2: Wrong `parent-index`
**Wrong:** `parent-index: "[[Templates-Index]]"`  
**Correct:** `parent-index: "[[03-Zettels-Conscious]]"` (zettels)
**Correct:** `parent-index: "[[01-Literature-Index]]"` (LitNotes)

### Pattern 3: YAML spacing errors
**Wrong:** ` domain:` (space before)  
**Correct:** `domain:` (no leading space)

### Pattern 4: Missing `related:` field
**Required:** All zettels need `related:` with 2-3 sibling links

### Pattern 5: Bare UIDs in links
**Wrong:** `[[Z-001-0001]]`  
**Correct:** `[[Diabetes_Risk_Factor_Z-001-0001]]` (full filename)

### Pattern 6: Wrong link format (UID position)
**Wrong:** `[[Z-001-0001_Diabetes_Risk]]` (UID first)  
**Correct:** `[[Diabetes_Risk_Z-001-0001]]` (title first, UID last)

**Rule:** Links must match actual filename exactly. Filename = Title_UID.md

---

## FORG Pre-Flight Checklist (Lightweight)

**Goal:** Catch errors without excessive token use.

```yaml
Quick verify (10 seconds):
- [ ] type: litnote (NOT lit-note) — if LitNote
- [ ] parent-index: [[03-Zettels-Conscious]] — if zettel
- [ ] related: has 2-3 entries — if zettel
- [ ] No leading spaces in YAML

Done. Don't over-verify.
```

---

## Success Criteria Template

Every handoff must include:

```markdown
## SUCCESS CRITERIA
- [ ] All YAML fields match template EXACTLY
- [ ] type: litnote (NOT lit-note)
- [ ] parent-index: [[03-Zettels-Conscious]] for zettels
- [ ] related: field with 2-3 sibling links
- [ ] ## Source section with LitNote link
- [ ] ## Status Checklist present
- [ ] No bare UIDs — full filenames only
- [ ] No YAML spacing errors
```

---

## Batch Optimization

| Batch Size | Type | Savings |
|------------|------|---------|
| 3-5 similar | Clinical studies | +20% |
| 5-10 short | News/articles | +15% |
| Mixed | Triage first | Baseline |

---

## Safety Guardrails

1. **FORG never commits** — RON reviews every batch
2. **FORG never deletes** — Create-only, enforced
3. **YAML validation** — Automated before handoff back
4. **Git checkpoint** — RON commits before FORG batch
5. **Failure threshold** — If >20% fail review, pause and reassess

---

## RON Review Gate Checklist

- [ ] All YAML fields exact match
- [ ] type field correct (litnote, not lit-note)
- [ ] parent-index correct
- [ ] related: present
- [ ] ## Source present
- [ ] ## Status Checklist present
- [ ] No bare UIDs
- [ ] Content accurate to source
- [ ] Zettels atomic (one idea each)

---

## Version History

- v1.0 (2026-04-16) — Pilot learnings incorporated
