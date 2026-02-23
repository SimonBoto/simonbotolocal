---
uid: extraction-checklist-v1.0
type: system
title: "RON Extraction Checklist — Preventing Common Mistakes"
aliases: [Extraction_Checklist, Quality_Control]
domain: system
tags: [checklist, quality-control, extraction, zettels, litnotes]
parent-moc: [[09-System/Architecture]]
extraction-date: 2026-02-23
status: active
---

# 🎯 RON Extraction Checklist

> **Use before EVERY extraction session**  
> **Purpose:** Prevent UID conflicts, schema drift, malformed links

---

## PRE-EXTRACTION (Before Creating Any Files)

### ☐ Step 1: Check Existing UIDs
**Command to run:**
```bash
# Find highest existing UID in domain
grep -r "^uid: [ZL]-001-" /home/simon/Workspaces/TheOptimizedBrain/02-Literature/ /home/simon/Workspaces/TheOptimizedBrain/03-Zettels/Conscious/ | grep -oE "[0-9]+-?[0-9]*$" | sort -t- -k1 -n | tail -5
```

**What to record:**
- Highest LitNote UID: ___
- Highest Zettel UID: ___
- Next available LitNote: ___
- Next available Zettel: ___

**Why:** Prevents duplicate UIDs (critical error in DE3)

---

### ☐ Step 2: Load Template
**Required:** Read `06-Structure/Templates/Template_LitNote_v1.0.md`  
**Required:** Read `06-Structure/Templates/Template_Zettel_v1.0.md`

**Before creating ANY file:**
- [ ] Template YAML copied exactly
- [ ] No field omissions
- [ ] No "ad-hoc" modifications

**Why:** Prevents schema drift (DE3 had wrong `type`, missing fields)

---

### ☐ Step 3: Verify Source Exists
- [ ] PDF/asset is in `01-References/Assets/`
- [ ] Filename is descriptive (no Greek characters if possible)
- [ ] File is extractable (pdftotext test)

---

## DURING EXTRACTION (File Creation)

### ☐ Step 4: LitNote YAML Compliance

| Field | Required? | Check |
|-------|-----------|-------|
| `uid` | ✅ | Format: L-{DDD}-{SSSS} |
| `type` | ✅ | MUST be `lit-note` (with hyphen) |
| `title` | ✅ | Full descriptive title |
| `authors` | ✅ | All authors or institution |
| `year` | ✅ | Publication year |
| `journal` | ✅ | Source/publisher |
| `doi` | ⚪ | If available |
| `pmid` | ⚪ | If available |
| `pmcid` | ⚪ | If available |
| `tier` | ✅ | 1, 2, or 3 |
| `relevance` | ✅ | METHAP connection stated |
| `status` | ✅ | `processing` → `complete` |
| `aliases` | ✅ | Include UID as alias |
| `domain` | ✅ | Number code |
| `tags` | ✅ | Include `lit-note` |
| `parent-moc` | ✅ | Link to relevant MOC |
| `extraction-date` | ✅ | YYYY-MM-DD |

---

### ☐ Step 5: Zettel YAML Compliance

| Field | Required? | Check |
|-------|-----------|-------|
| `uid` | ✅ | Format: Z-{DDD}-{SSSS} |
| `type` | ✅ | MUST be `zettel` |
| `title` | ✅ | Atomic concept |
| `aliases` | ✅ | Include UID |
| `domain` | ✅ | Match LitNote |
| `tags` | ✅ | `zettel`, `conscious` |
| `parent-moc` | ✅ | MOC link |
| `extraction-date` | ✅ | YYYY-MM-DD |
| `source` | ✅ | [[LitNote_UID]] |
| `status` | ✅ | `conscious` |

---

### ☐ Step 6: Link Validation

**Before saving ANY file:**

Run validation command:
```bash
# Check for malformed Obsidian links
grep -nE "\[\[[^\]]+\[|\[\[[^\]]+\][^\]]*\]\]" /path/to/file.md
```

**Common malformations to check:**
- [ ] Double brackets inside: `[[Link_[with]_brackets]]` ❌
- [ ] Missing closing: `[[Unclosed` ❌
- [ ] Wrong format: `[Link]` instead of `[[Link]]` ❌

**Fix pattern:**
- `[[Name_[Z-001-0001]]]` → `[[Name_Z-001-0001]]`

**Why:** Prevents broken graph connections (Z-001-0020 error)

---

## POST-EXTRACTION (Before Git Commit)

### ☐ Step 7: Cross-Reference Check

**Verify all internal links resolve:**
```bash
# Extract all wiki-links from new files
grep -oE "\[\[[^\]]+\]\]" /path/to/new/files | sort | uniq
```

**Checklist:**
- [ ] All `[[Z-...]]` links point to existing zettels
- [ ] All `[[L-...]]` links point to existing LitNotes
- [ ] All `[[MOC-...]]` links exist
- [ ] No `[[TODO]]` or placeholder links remain

---

### ☐ Step 8: UID Uniqueness Verification

**Before commit, verify:**
```bash
# Check for duplicate UIDs across vault
grep -r "^uid: " /home/simon/Workspaces/TheOptimizedBrain/02-Literature/ /home/simon/Workspaces/TheOptimizedBrain/03-Zettels/ | sort | uniq -d
```

**Expected result:** Empty (no duplicates)

---

### ☐ Step 9: MOC Update

**After creating zettels:**
- [ ] Add to relevant MOC(s)
- [ ] Update counts/status
- [ ] Link from MOC back to new zettels

---

### ☐ Step 10: Git Commit Checklist

**Commit message must include:**
- [ ] Unit/source identifier (e.g., "DE3", "PMID12345")
- [ ] Count of zettels created
- [ ] Count of LitNotes created
- [ ] Any reference hubs created

**Example:**
```
DE3 extraction: 6 Tier 1 zettels + LitNote L-001-0003

- Zettels: phenotype mapping, oxidative stress, micronutrients,
  IR phenotype, dysbiosis, predictive metabolites
- LitNote: NKUA Metabolites and Phenotype (complete)
- MOC: Updated training progress
```

---

## ERROR RECOVERY (When Mistakes Happen)

### If Duplicate UID Found
1. **STOP** — do not create more files
2. Identify which UID is correct (earlier file wins)
3. Renumber later file to next available UID
4. Update all references in dependent files
5. Git commit: `git commit --amend` if recent, or new commit with `FIX:` prefix

### If Schema Drift Detected
1. Compare file against Template_*_v1.0
2. Fix YAML frontmatter
3. Run `grep -n` to find all instances of wrong pattern
4. Batch fix with `sed` if multiple files

### If Malformed Links Found
1. Identify pattern: `grep -rn "malformed_pattern" /path/`
2. Fix with sed: `sed -i 's/wrong/right/g' files`
3. Verify fix: open in Obsidian, check graph

---

## TEMPLATE QUICK REFERENCE

### LitNote Required YAML
```yaml
---
uid: L-001-0001
type: lit-note
title: "Full Title"
authors: "Author or Institution"
year: "YYYY"
journal: "Source"
doi: ""
pmid: ""
pmcid: ""
tier: 2
relevance: "Why this matters to METHAP"
status: processing  # → complete when done
aliases: [L-001-0001]
domain: 001
tags: [lit-note, tag1, tag2]
parent-moc: [[MOC-...]]
extraction-date: YYYY-MM-DD
---
```

### Zettel Required YAML
```yaml
---
uid: Z-001-0001
type: zettel
title: "Atomic Concept Title"
aliases: [Z-001-0001]
domain: 001
tags: [zettel, tag1, conscious]
parent-moc: [[MOC-...]]
extraction-date: YYYY-MM-DD
source: [[LitNote_L-001-0001]]
status: conscious
---
```

---

## QUALITY METRICS

Track per extraction session:
| Metric | Target | DE3 | Actual |
|--------|--------|-----|--------|
| UID conflicts | 0 | 1 ❌ | ___ |
| Schema violations | 0 | 1 ❌ | ___ |
| Malformed links | 0 | 1 ❌ | ___ |
| Missing MOC updates | 0 | 0 ✅ | ___ |
| Unverified claims | <3 | 3 ⚠️ | ___ |

---

*Created: 2026-02-23*  
*Purpose: Prevent DE3-class errors*  
*Review: Before every extraction*