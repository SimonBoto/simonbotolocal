---
uid: NAMING-AUDIT-001
type: audit
title: "CRITICAL Naming Audit — Blockers for OpenClaw Functionality"
date: 2026-04-22
status: active
---

# CRITICAL Naming Audit

> **11 files with spaces. 184 bare UID links. 705 potentially broken links.**
> **These WILL break OpenClaw functionality.**

---

## 🔴 Critical Issues (Fix Immediately)

### 1. Files with Spaces (11 files)

**Problem:** Spaces in filenames break wiki links and shell commands.

| File | Location |
|------|----------|
| `Free fatty acids analysis extended.md` | 00-Inbox/Fleeting/ |
| `New input.md` | 00-Inbox/Fleeting/ |
| `NKUA LITNOTE CONNECTION.md` | 00-Inbox/Fleeting/ |
| `anchor cgpt conversations to exctract as priority.md` | 00-Inbox/Fleeting/ |
| `Facebook Posts Collection.md` | 00-Inbox/Fleeting/ |
| `Analysis organic acids extended.md` | 00-Inbox/Fleeting/ |

**Fix:** Rename with underscores.

### 2. Bare UID Links (184 instances)

**Problem:** `[[Z-001-0129]]` instead of `[[Name_Z-001-0129]]`.

**Violates:** VAULT-GUIDE.md naming standard.

**Impact:**
- Links break if UID changes
- Human unreadable
- QMD search penalized

**Example fixes:**
```
❌ [[Z-001-0129]]
✅ [[Fracture_Risk_Stratification_Z-001-0129]]

❌ [[Z-001-0001]]
✅ [[Insulin_Receptor_Z-001-0001]]
```

### 3. Potentially Broken Links (705)

**Problem:** Links to files that don't exist.

**Causes:**
- Typos in filenames
- Moved files without updating links
- Deleted files with lingering references
- Aliases not resolved

**Impact:**
- Clicking link → "File not found"
- Broken knowledge graph
- Lost connections

---

## 🟡 Medium Issues (Fix This Week)

### 4. Greek Filenames

**Problem:** Greek characters in filenames may cause encoding issues.

**Examples:**
- `CGPT_0171_Πρόβλημα_σύνδεσης_Whatsapp_CGPT-0171.md`
- `CGPT_0144_Ιδρυση_Ιατρικής_Επιχείρησης_στην_Ελλάδα_CGPT-0144.md`

**Impact:**
- Cross-platform compatibility
- URL encoding issues
- Search indexing problems

**Note:** These are CGPT archives — lower priority.

---

## ✅ What's Working

| Check | Status |
|-------|--------|
| Zettel naming convention | ✅ 1,630 files correct |
| LitNote naming convention | ✅ 221 files correct |
| Synthesis naming convention | ✅ 36 files correct |
| YAML frontmatter | ✅ Standardized |
| Git tracking | ✅ Working |

---

## Fix Priority

| Priority | Issue | Count | Effort |
|----------|-------|-------|--------|
| **P0** | Files with spaces | 11 | 10 min |
| **P0** | Bare UID links | 184 | 2 hours |
| **P1** | Broken links | 705 | 4 hours |
| **P2** | Greek filenames | ~50 | 1 hour |

---

## The Naming Standard (Reminder)

```
✅ Correct: [[Insulin_Receptor_Z-001-0001]]
❌ Wrong:  [[Z-001-0001]]
❌ Wrong:  [[Insulin Receptor]]
❌ Wrong:  [[insulin_receptor]]
```

**Rule:** Always use full filename with UID.

---

## Recommendation

**Fix P0 issues NOW.** They actively break functionality.

**P0 fixes:**
1. Rename 11 files with spaces
2. Fix 184 bare UID links

**Then:** Run link validation weekly.

---

*Audit: NAMING-AUDIT-001*
*Date: 2026-04-22*
*Severity: CRITICAL*
