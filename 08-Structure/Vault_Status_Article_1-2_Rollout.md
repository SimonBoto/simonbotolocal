---
date: 2026-04-05
type: vault-status
---

# Vault Status — Article 1-2 Standard Rollout

## Facebook Collection Progress

| Article | Status | LitNote | Zettels | Refs | PMID |
|---------|--------|---------|---------|------|------|
| 1 Aspirin | ✅ Complete | L-002-0246 | 5 | 2 | 40044852 |
| 2 Vitamin D | ✅ Complete | L-002-0168 | 5 | 4 | — |
| 3 Carb Restriction | ✅ Complete | L-002-0169 | 3 | 1 | — |
| 4 Hashimoto | ✅ Complete | L-002-0170 | 3 | 1 | 38552311 |
| 5-21 | ⏳ Pending | — | — | — | — |
| 22-59 | ⏳ Not started | — | — | — | — |

## Standards Established

### LitNote YAML (Article 1-2)
```yaml
---
uid: L-002-XXXX
type: lit-note  # ← HYPHEN = upgraded standard
title: "..."
source-inbox: "[[INBOX-Article-N-Topic]]"
authors: "..."
year: "..."
journal: "..."
doi: "..."
pmid: "..."  # when available
tier: GOLD
status: active
parent-moc: "[[MOC-Verified-Exists]]"
extraction-date: YYYY-MM-DD
zettel-count: N
reference-count: N
tags:
  - lit-note
  - topic-tag
  - author-year
---
```

### Type Marker System
| Type | Meaning | Action |
|------|---------|--------|
| `lit-note` | ✅ Article 1-2 standard | None — complete |
| `litnote` | ⏳ Legacy, needs audit | Review and upgrade |

## Quality Checklist
- [x] Separate INBOX file per article
- [x] All zettels have source-reference
- [x] No Snowball References in LitNotes
- [x] All reference notes have PMID/DOI
- [x] MOCs verified to exist
- [x] Tags present for Obsidian
- [x] All links functional

## Next Actions
1. Audit Articles 5-21 (17 articles)
2. Continue meticulous line-by-line review
3. Merge any duplicates found
4. Add PMID/DOI where missing

---
*Updated: 2026-04-05 | Articles 1-4: COMPLETE*
