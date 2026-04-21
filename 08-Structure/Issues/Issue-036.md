---
id: ISSUE-036
title: LitNote Comprehensive Audit — Full Vault Health Assessment
assignee: RON+FORG+SCOUT
energy: 16h / $10.00
priority: P1
status: planning
created: 2026-04-21
---

# ISSUE-036: LitNote Comprehensive Audit

> **Goal:** Make 01-Literature/ the cleanest, most reliable folder in the vault

## Scope

Complete assessment of all 222 LitNotes across 8 dimensions:

| # | Dimension | What We Check | Tool/Method |
|---|-----------|---------------|-------------|
| 1 | **YAML Validity** | Frontmatter parses correctly | Python yaml.safe_load_all |
| 2 | **YAML Standard** | Required fields present | Schema validation |
| 3 | **Body Structure** | Sections, headers, formatting | Pattern matching |
| 4 | **WikiLinks** | Valid syntax, no broken targets | Regex + file existence |
| 5 | **Phantom Links** | Links to non-existent notes | File existence check |
| 6 | **MOC Links** | parent-moc valid and exists | Cross-reference |
| 7 | **Index Links** | parent-index valid and exists | Cross-reference |
| 8 | **Content Quality** | Core claim, concepts, snowball | Heuristic scoring |

---

## Phase 1: Automated Scan (FORG + SCOUT)

### 1.1 YAML Validity Scan
**Script:** `audit-yaml-validity.py`
```python
for each litnote:
    extract frontmatter
    try yaml.safe_load_all()
    if fails: log error type
    check: emdash, smart quotes, duplicate keys
```

**Output:** `audit-reports/YAML-INVALID.md`

### 1.2 Required Fields Scan
**Check presence of:**
- uid
- type (should be `litnote` not `lit.note`)
- title
- source-origin
- parent-moc
- parent-index
- extraction-date
- zettel-count

**Output:** `audit-reports/MISSING-FIELDS.md`

### 1.3 WikiLink Syntax Scan
**Pattern:** `\[\[([^\]]+)\]\]`
**Check for:**
- Empty links: `[[]]`
- Markdown in links: `[[## Source]]`
- Special chars: `[[Note|Alias]]` (avoid)
- Bare UIDs: `[[L-001-0001]]` (should have title)

**Output:** `audit-reports/INVALID-LINKS.md`

### 1.4 Phantom Links Scan
**For each wiki link in content:**
- Check if target file exists
- Log broken links

**Output:** `audit-reports/PHANTOM-LINKS.md`

### 1.5 MOC/Index Validation
**Check:**
- parent-moc points to existing MOC
- parent-index points to existing Index
- MOC actually links back to LitNote

**Output:** `audit-reports/ORPHAN-MOCS.md`

---

## Phase 2: Content Quality (SCOUT)

### 2.1 Structure Assessment
**Check for:**
- Core claim section
- Numbered concepts (1, 2, 3...)
- ## Source section
- ## Related References section
- Status checklist

**Score:** 0-5 per section

### 2.2 Zettel Extraction Audit
**Cross-check:**
- zettel-count matches actual zettels created
- Zettel links in content are valid
- Source-litnote backlinks exist

**Output:** `audit-reports/ZETTEL-MISMATCH.md`

---

## Phase 3: Manual Review (RON)

### 3.1 Sample Review
**Review 10% random sample (22 LitNotes):**
- Deep quality assessment
- Clinical accuracy check
- Link verification

### 3.2 Tier Classification
**Re-classify tiers:**
- GOLD: Complete, accurate, well-linked
- SILVER: Good but gaps
- BRONZE: Needs work
- PENDING: Incomplete

---

## Deliverables

| Deliverable | Format | Owner |
|-------------|--------|-------|
| Audit Report | `audit-reports/LITNOTE-AUDIT-2026-04-21.md` | RON |
| Error List | `audit-reports/ALL-ERRORS.csv` | FORG |
| Fix Queue | `audit-reports/FIX-QUEUE.md` | SCOUT |
| Clean LitNotes | 222 validated files | All |

---

## Success Criteria

- [ ] 100% YAML valid
- [ ] 0 phantom links
- [ ] 100% MOC/index connectivity
- [ ] All GOLD tier LitNotes verified
- [ ] Automated validation in git hooks

---

## Timeline

| Day | Phase | Output |
|-----|-------|--------|
| 1 | Automated scans (1.1-1.5) | Error lists |
| 2 | Content quality (2.1-2.2) | Quality scores |
| 3 | Manual review (3.1-3.2) | Tier reclassification |
| 4 | Batch fixes | Clean vault |
| 5 | Validation + hooks | Prevention system |

---

*Cleanest working folder — the standard for the entire vault.*
