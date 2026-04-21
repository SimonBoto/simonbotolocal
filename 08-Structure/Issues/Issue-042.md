---
id: ISSUE-042
title: Night Shift Monitoring — Success Verification
assignee: RON
priority: P1
status: active
created: 2026-04-21
---

# Issue 042: Night Shift Monitoring

## Problem
SCOUT and FORG run autonomously 00:00-08:00. Need verification that they succeed.

## Schedule
- **00:00** — SCOUT + FORG start
- **03:00** — RON dreaming
- **08:00** — All should complete

## Morning Checklist (RON)

### SCOUT Verification
- [ ] Check `workspace-scout/output/CGPT-MAX-PREPROCESSING-REPORT.md`
- [ ] Verify 20-50 FORG briefs created
- [ ] Check for errors (>10 stops?)

### FORG Verification  
- [ ] Check `workspace-forg/output/ZETTEL-MAX-OPTIMIZATION-REPORT.md`
- [ ] Verify 200-500 zettels optimized
- [ ] Check for errors (>20 stops?)
- [ ] Review git diff (should show zettel changes)

### RON Verification
- [ ] Check `DREAMS.md` for promotion candidates

## Failure Protocol

| Scenario | Action |
|----------|--------|
| No reports generated | Check logs, reschedule |
| <50% target output | Debug, adjust task |
| Errors > threshold | Fix issues, retry tonight |
| Git conflicts | Manual resolution |

## Success Criteria
- [ ] Reports exist and are readable
- [ ] Output counts within 50% of target
- [ ] No critical errors
- [ ] Morning commit clean

---
