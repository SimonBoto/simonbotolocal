# Zettel UID System v2.0 — Rule-Based Architecture

**Date:** 2026-02-22  
**Purpose:** Clear, hierarchical UID generation with semantic meaning

---

## 1. UID Philosophy

**UID = Unique IDentifier + Semantic Meaning**

Unlike Luhmann's sequential numbering (1, 1/1, 1/1a), our UIDs encode:
- **Type** — What kind of knowledge
- **Domain** — Which knowledge area
- **Sequence** — Creation order
- **Relations** — Link to parent/related

---

## 2. UID Format

```
{T}{DDD}-{SSSS}

Where:
T    = Type prefix (1 letter)
DDD  = Domain code (3 digits)
SSSS = Sequence (4 digits, 0001-9999)
```

### Examples
```
Z-001-0001  ← Zettel, Domain 001 (Insulin), #1
Z-001-0002  ← Zettel, Domain 001 (Insulin), #2
T-001-0001  ← TechRef, Domain 001 (Insulin), #1
L-001-0001  ← LitNote, Domain 001 (Insulin), #1
```

---

## 3. Type Prefixes (T)

| Prefix | Type | Folder | Use For |
|--------|------|--------|---------|
| **Z** | Zettel | 03-Zettels/ | Atomic knowledge units |
| **T** | TechRef | 04-Synthesis/ | Living technical references |
| **L** | LitNote | 02-Literature/ | Source processing notes |
| **R** | StaticRef | 01-References/Hub/ | Bibliographic cards |
| **C** | Claim | 03-Zettels/ (zettel-claim) | Falsifiable statements |
| **Q** | Question | 03-Zettels/ (zettel-q) | Research questions |

---

## 4. Domain Codes (DDD)

Domain codes group related knowledge. They create implicit relationships.

### Metabolism & Endocrinology (000-099)
| Code | Domain | Description |
|------|--------|-------------|
| 000 | General | Cross-domain concepts |
| 001 | Insulin | Insulin signaling, resistance |
| 002 | Glucagon | Counter-regulatory hormone |
| 003 | Leptin | Adipokine signaling |
| 004 | Adipose | Adipose tissue biology |
| 005 | Mitochondria | Energy metabolism |
| 010 | Glucose | Glucose transport, metabolism |

### Biomarkers (100-199)
| Code | Domain | Description |
|------|--------|-------------|
| 100 | Biomarker-General | Biomarker theory, methods |
| 101 | Adipic-Acid | C6 dicarboxylic acid |
| 102 | Organic-Acids | Urine OA panel |
| 103 | Fatty-Acids | Plasma TFA panel |
| 110 | VitD | Vitamin D metabolites |

### Disease & Clinical (200-299)
| Code | Domain | Description |
|------|--------|-------------|
| 200 | IR-General | Insulin resistance (clinical) |
| 201 | T2D | Type 2 diabetes |
| 202 | Metabolic-Syndrome | Mets criteria, diagnosis |
| 210 | Autoimmune | Hashimoto, RA, etc. |

### Methods & Protocols (300-399)
| Code | Domain | Description |
|------|--------|-------------|
| 300 | Metabolomics | Methods, platforms |
| 301 | GC-MS | Gas chromatography |
| 302 | LC-MS | Liquid chromatography |
| 310 | Statistics | Biostatistics |

### Reserved (900-999)
| Code | Domain | Description |
|------|--------|-------------|
| 900 | Meta | System notes, templates |
| 999 | Archive | Deprecated, legacy |

---

## 5. Sequence Rules (SSSS)

**Sequential, not hierarchical.**

Unlike Luhmann's Folgezettel (1/1, 1/1a), we use flat sequencing:
- Z-001-0001
- Z-001-0002
- Z-001-0003

**Why flat?** Obsidian's graph view shows hierarchy through links, not file names.

### Exception: Suffixes for Variants

For closely related zettels (different aspects of same entity):

```
Z-001-0001   ← Insulin receptor (main)
Z-001-0001a  ← Insulin receptor (structure detail)
Z-001-0001b  ← Insulin receptor (mutation detail)
```

**Use sparingly.** Prefer separate UIDs with links.

---

## 6. Special UIDs

### MOCs (Maps of Content)
```
MOC-{DDD}

Examples:
MOC-001  ← Insulin Signaling MOC
MOC-101  ← Adipic Acid Biomarker MOC
MOC-200  ← Insulin Resistance Clinical MOC
```

### Indices
```
IDX-{DDD}

Examples:
IDX-000  ← Master index
IDX-300  ← Methods index
```

### Projects
```
PRJ-{SSSS}

Examples:
PRJ-0001  ← PhD METHAP study
PRJ-0002  ← Vitamin D review
```

---

## 7. UID Generation Workflow

### Step 1: Determine Type
What am I creating?
- Atomic idea → Z
- Living reference → T
- Source processing → L

### Step 2: Determine Domain
What knowledge area?
- Insulin signaling → 001
- Adipic acid → 101
- GC-MS methods → 301

### Step 3: Get Next Sequence
Check existing files in domain, increment:
```
ls 03-Zettels/Z-001-* | sort | tail -1
→ Z-001-0016.md
→ Next: Z-001-0017.md
```

### Step 4: Create with Full Metadata

```yaml
---
uid: Z-001-0017
type: zettel
title: {{Title}}
aliases: [Z-001-0017, {{ShortName}}]
domain: 001
domain-name: Insulin_Signaling
tags: [zettel, insulin, ...]
parent-moc: [[MOC-001]]
---
```

---

## 8. File Naming Convention

### Zettels
```
{Descriptive_Title}_[{UID}].md

Examples:
Insulin_Receptor_Structure_[Z-001-0001].md
IRS_Serine_Phosphorylation_Causes_IR_[Z-001-0008].md
GLUT4_Vesicle_Translocation_[Z-001-0011].md
```

### TechRefs
```
{Topic}_TechRef_[{UID}].md

Examples:
Insulin_Signaling_TechRef_[T-001-0001].md
Adipic_Acid_Metabolism_TechRef_[T-101-0001].md
```

### LitNotes
```
{Author}{Year}_{KeyTopic}_[{UID}].md

Examples:
GutierrezRodelo2017_IR_Mechanisms_[L-001-0001].md
Ames2006_Triage_Theory_[L-000-0001].md
```

---

## 9. Migration from Old System

### Old Format → New Format

```
Old: Z_INSR_STRUCTURE_20260222_001_001001.md
New: Insulin_Receptor_Structure_[Z-001-0001].md

Mapping:
- Z_INSR_STRUCTURE → Insulin_Receptor_Structure (human readable)
- 20260222 → removed (date in YAML)
- 001 → domain 001
- 001001 → Z-001-0001 (new UID)
```

### Batch Rename Script

```bash
# Rename existing 17 zettels
for file in Z_*.md; do
    # Extract components
    # Generate new name
    # mv "$file" "$newname"
done
```

---

## 10. Current Domain Assignments

| Domain | Topic | Files |
|--------|-------|-------|
| 001 | Insulin Signaling | 17 zettels (to rename) |
| 101 | Adipic Acid | pending |
| 110 | Vitamin D | pending |
| 301 | GC-MS Methods | pending |

---

## 11. Validation Rules

Before saving a zettel:

- [ ] UID follows format: `{T}-{DDD}-{SSSS}`
- [ ] Filename includes UID in brackets: `[Z-001-0001]`
- [ ] Title is descriptive and human-readable
- [ ] Domain code exists in registry (this doc)
- [ ] Sequence is unique within domain
- [ ] YAML includes all required fields

---

*Last updated: 2026-02-22*
