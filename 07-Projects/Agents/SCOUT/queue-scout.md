---
uid: SCOUT-QUEUE-001
type: queue
title: "SCOUT Priority Queue — CGPT Conversations"
date: 2026-04-22
status: active
---

# SCOUT Priority Queue

> **671 CGPT conversations ranked by clinical and research value.**
> **FORG processes top 10 each night shift.**

---

## Queue Statistics

| Metric | Value |
|--------|-------|
| **Total conversations** | 671 |
| **Processed** | 0 |
| **Remaining** | 671 |
| **Nightly target** | 10 |
| **ETA completion** | 67 nights (~10 weeks) |

---

## Priority Tiers

### 🔥 Tier 1: Clinical & PhD (Process First)

| Priority | CGPT ID | Topic | Why Priority |
|----------|---------|-------|--------------|
| 1 | CGPT-0001 | Insulin resistance mechanisms | Core PhD topic |
| 2 | CGPT-0002 | Metabolic syndrome protocols | Direct clinic application |
| 3 | CGPT-0003 | Vitamin D dosing | High-dose VitD focus |
| 4 | CGPT-0004 | Adipic acid biomarker | METHAP trial biomarker |
| 5 | CGPT-0005 | Gut microbiome & IR | Gut-thyroid axis |
| 6 | CGPT-0006 | Inflammation resolution | Clinical protocol |
| 7 | CGPT-0007 | Mitochondrial function | Core metabolism |
| 8 | CGPT-0008 | OAT interpretation | Clinic diagnostic |
| 9 | CGPT-0009 | Hashimoto's thyroiditis | PhD focus |
| 10 | CGPT-0010 | miR-21/155 markers | METHAP biomarkers |

### 🟡 Tier 2: Research & Knowledge

| Priority | CGPT ID | Topic | Why Priority |
|----------|---------|-------|--------------|
| 11-30 | CGPT-0011 to 0030 | Metabolomics, nutrition, supplements | Research foundation |

### 🟢 Tier 3: General & Personal

| Priority | CGPT ID | Topic | Why Priority |
|----------|---------|-------|--------------|
| 31-100 | CGPT-0031 to 0100 | Technology, philosophy, personal | Lower clinical relevance |

### ⚪ Tier 4: Archive

| Priority | CGPT ID | Topic | Why Priority |
|----------|---------|-------|--------------|
| 101-671 | CGPT-0101+ | Various | Process last or archive |

---

## Tonight's Batch (Batch-001)

| # | CGPT ID | File | Status |
|---|---------|------|--------|
| 1 | CGPT-0001 | `clinical/CGPT_0001_*` | Pending |
| 2 | CGPT-0002 | `clinical/CGPT_0002_*` | Pending |
| 3 | CGPT-0003 | `clinical/CGPT_0003_*` | Pending |
| 4 | CGPT-0004 | `clinical/CGPT_0004_*` | Pending |
| 5 | CGPT-0005 | `clinical/CGPT_0005_*` | Pending |
| 6 | CGPT-0006 | `clinical/CGPT_0006_*` | Pending |
| 7 | CGPT-0007 | `clinical/CGPT_0007_*` | Pending |
| 8 | CGPT-0008 | `clinical/CGPT_0008_*` | Pending |
| 9 | CGPT-0009 | `clinical/CGPT_0009_*` | Pending |
| 10 | CGPT-0010 | `clinical/CGPT_0010_*` | Pending |

---

## Processing Protocol

### FORG Instructions

```
1. Read CGPT conversation
2. Extract core claims (3-5)
3. Create LitNote with YAML v4.0
4. Extract 3-8 zettels per conversation
5. Validate: YAML, links, sources
6. Save to pending/
7. Log: success/failure/quality
```

### Quality Criteria

| Check | Threshold |
|-------|-----------|
| YAML valid | 100% |
| Core claims extracted | ≥3 |
| Zettels created | 3-8 |
| Source linked | Yes |
| Clinical relevance | Marked |

---

## Night Shift Schedule

| Time | Agent | Action |
|------|-------|--------|
| 00:00 | SCOUT | Refresh queue, check priorities |
| 00:30 | FORG | Start Batch-001 |
| 02:30 | FORG | Complete Batch-001 (10 conversations) |
| 02:30 | FORG | Start Batch-002 if capacity |
| 06:00 | FORG | Stop, save all pending work |
| 08:00 | RON | Morning review and validation |

---

## Cost Tracking

| Metric | Value |
|--------|-------|
| **Cost per conversation** | ~$0.20 (Grok 4.1 Fast) |
| **Cost per night (10 conv)** | ~$2.00 |
| **Total backlog cost** | ~$134 |
| **Monthly cost (300 conv)** | ~$60 |

---

## Update Log

| Date | Change | Trigger |
|------|--------|---------|
| 2026-04-22 | Queue created | ISSUE-029 activation |

---

*Queue: SCOUT-QUEUE-001*
*Next review: Daily at 00:00*
