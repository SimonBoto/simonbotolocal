---
uid: RON-SYS-020
type: reference
title: MOC Creation Standard
date: 2026-04-14
---

# MOC Creation Standard

> **Required fields and format for all new MOCs.**

---

## Required YAML

```yaml
---
uid: YYYYMMDDHHMMSS        # Timestamp, unique
type: moc
title: MOC — [Descriptive Title]  # Em-dash, not colon
aliases:                    # Multiple variants
  - [MOC_ShortName]
  - [MOC_Full_Name]
domain: [NNN]              # 001=Insulin, 901=System, etc.
tags:
  - moc
  - [topic-tag]
  - [context-tag]
parent-moc: "[[MOCs-Index]]"  # ALWAYS link to parent
status: active             # or stub, draft
created: YYYY-MM-DD
---
```

## Required Content Structure

```markdown
# MOC: [Title]

> **One-line description of scope.**

---

## 🎯 Entry Points

**Core [concepts/components/topics]:**
- [[Zettel_Name_Z-XXX-XXXX]] — Brief description
- [[Zettel_Name_Z-XXX-XXXX]] — Brief description

---

## [Section Name]

### [Subsection]
- [[Zettel_Name_Z-XXX-XXXX]] — Description

---

## 🔗 Related MOCs

- [[MOC-Related-Topic]] — Why related
- [[MOC-Another-Topic]] — Why related

---

*Created YYYY-MM-DD [context]*
```

## Critical Rules

| Rule | Violation | Check |
|------|-----------|-------|
| UID = timestamp | `MOC-TOPIC-001` ❌ | `date +%Y%m%d%H%M%S` |
| Title uses em-dash | `MOC: Topic` ❌ | `MOC — Topic` ✅ |
| parent-moc present | Missing ❌ | `[[MOCs-Index]]` ✅ |
| Zettel links full | `[[Z-001-0001]]` ❌ | `[[Name_Z-001-0001]]` ✅ |
| Related MOCs section | Missing ❌ | Present ✅ |

---

*Standard established 2026-04-14 after MOC correction*
