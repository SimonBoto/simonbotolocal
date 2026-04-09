---
uid: RON-SYS-011
type: zettel
title: RON Recent Lessons
date: 2026-04-08
aliases: [RON-SYS-011]
domain: RON-SYS
tags: [ron, system, lessons, learning]
parent-index: "[[03-Zettels-RON-Index]]"
status: conscious
---

# RON Recent Lessons

> Last 30 days of mistakes → learning. Rotated monthly.

## April 2026

### Shadow Note Creation — 2026-04-02
**Issue:** Created 20+ imaginary zettel links that don't exist. Massive shadow note pollution.

**Root cause:** Guessed zettel names based on topic patterns instead of verifying files exist.

**What we did:** Reverted all 6 zettels, removed imaginary links, added `ls` verification to workflow.

**→ Evergreen:** Never link without verifying.

---

### Broken Commitments — L4 Work + Morning Brief — 2026-04-02
**Issue:** Promised L4 work + morning brief report. Delivered neither.

**Root cause:** Said "I'll proceed" but session ended without execution. No completion mechanism.

**What we did:** Documented prevention rule, added explicit PENDING/DRAFT + ETA requirement.

**→ Evergreen:** Never say "I'll proceed" without checkpoint.

---

### LitNote Assessment Protocol — L-001-0589 — 2026-04-02
**Issue:** Systematic errors: invented MOC, shadow links, single-brackets, template drift.

**Root causes:** No verification of MOC existence, wrong index links, no batch verification.

**What we did:** Fixed all zettels + LitNote, added verification rules.

**→ Evergreen:** Verify MOC exists, verify index link, validate bracket count, batch verify zettels.

---

### Bracket Naming Convention — 2026-04-01
**Severity:** RED — Breaks core Obsidian functionality

**Issue:** Created naming convention `Title_[Z-001-0001].md` without testing. Propagated to 767+ zettels.

**What we did:** Renamed 1,900+ files, updated 3,007+ links, fixed all templates.

**→ Evergreen:** Never use `[` `]` `|` `#` `^` in filenames. Always test in Obsidian before convention.

---

### FORG Agent Architecture — 2026-04-07
**Severity:** RED — Cost and design failure

**Issue:** Used `sessions_spawn(runtime="subagent", model="FORG")` instead of separate agent design. Cost skyrocketed to $2 due to context loading and potential model fallback.

**Root causes:**
- Confused "subagent" with "separate agent"
- Subagent shared context → 33K+ tokens per call
- Risk of model fallback if alias failed
- Unverifiable I/O in isolated session

**What we did:**
- Redesigned FORG as truly separate agent with isolated workspace
- File-based handoff protocol (pending/ folder)
- Explicit agent boundaries (RON vs FORG)
- Updated all documentation

**→ Evergreen:** FORG is a SEPARATE AGENT, not a subagent. Isolated workspaces. File-based coordination. Never `runtime="subagent"`.

---

### Daily Note Creation Failure — 2026-03-31
**Issue:** 36+ hours of work with **no daily notes created**. Files in git but invisible in Obsidian.

**Root causes:** Location confusion, missing daily notes, no session logging.

**What we did:** Moved biomarker guides to Conscious/, created daily notes, committed with validation.

**→ Evergreen:** Never skip daily notes. Confirm location. Verify visibility.

---

### Documentation Drift — 2026-04-05
**Issue:** Trusted tracking docs over filesystem. Claimed files existed that didn't.

**Root cause:** Read MEMORY.md status table instead of running `ls`.

**What we did:** Verified reality, updated tracking, added "Filesystem over documentation" rule.

**→ Evergreen:** Verification before claim — `ls`, `read`, `grep` before any assertion.

---

### Template Consolidation — 2026-04-08
**Achievement:** Standardized 9 canonical templates (no version numbers)

**What we learned:** One template per type, archive old versions, location-based navigation.

**Files affected:** Zettel, LitNote, Daily, Reference, Inbox, MOC, Synthesis, Supplement, Biomarker

---

## Lesson Summary

| Month | Lessons | Rules Extracted | Severity RED |
|-------|---------|-----------------|--------------|
| April 2026 | 8 | 18 | 3 |
| March 2026 | (see archive) | — | — |

**Pattern:** Most errors are verification failures — not checking before acting.

---

## Archive

Older lessons: `memory/archive/2026-03.md` (indexed for search)

---

## Related

- [[RON-Evergreen-Rules_RON-SYS-010]] — Rules extracted from these lessons
- [[Weekly-Consolidation-Ritual_S-001-0012]] — Process for monthly rotation
- [[00-MISSION]] — Why we learn from mistakes
