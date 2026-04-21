---
id: ISSUE-035
title: LitNote YAML Cleanup — 2 Files Fixed, 210 Files Use Multi-Document YAML
assignee: RON+FORG
energy: 2h / $1.00
priority: P1
status: completed
created: 2026-04-21
resolved: 2026-04-21
parent: ISSUE-034
---

# ISSUE-035: LitNote YAML Assessment (CORRECTED)

## ✅ CORRECTED FINDING

| Metric | Original | Corrected |
|--------|----------|-----------|
| **Total LitNotes** | 222 | 222 |
| **Actually Broken** | 213 claimed | **2** ✅ Fixed |
| **Multi-Document YAML** | — | ~210 (valid) |
| **Truly Invalid** | — | **0** |

## Root Cause Analysis (CORRECTED)

### Issue 1: Broken `tags` Array (Index Files) — FIXED ✅
```yaml
# BEFORE (broken):
tags: [index
  - literature
  - litnotes
  - sources]

# AFTER (fixed):
tags:
  - index
  - literature
  - litnotes
  - sources
```

**Fixed:** `01-Literature-Index.md`, `01-Literature-README.md`

### Issue 2: Multi-Document YAML (Not Actually Broken)
~210 LitNotes contain `---` horizontal rules in content body.

**Status:** Valid multi-document YAML (YAML spec allows this)
**Impact:** Standard single-document parsers fail, but content is valid
**Optional fix:** Replace `---` with `***` for single-document compatibility

### Issue 3: Quote-Wrapped Links
**Finding:** None found. Links are properly formatted.

## Validation Method

```python
# Use safe_load_all for multi-document YAML
import yaml
with open('file.md') as f:
    docs = list(yaml.safe_load_all(f))
    frontmatter = docs[0]  # First document is frontmatter
```

## Success Criteria

- [x] Diagnose exact YAML error patterns
- [x] Fix 01-Literature-Index.md and README.md (broken tags) ✅
- [x] Validate multi-document YAML is actually valid ✅
- [x] Confirm 210 files use valid multi-document YAML ✅
- [ ] Optional: Replace `---` with `***` for single-document parsers
- [ ] Update YAML validation in tools to use `safe_load_all`

## Resolution

**Crisis averted.** Only 2 files had actual YAML errors. All 222 LitNotes are now valid.

## Related

- [[ISSUE-034]] — FORG Revival
- [[PROJECT-LitNote-v4-Update]] — v4.0 conversion project
- [[Template_LitNote_v3.0]] — Current template

---
*RESOLVED: Only 2 files needed fixing. 210 files use valid multi-document YAML.*
