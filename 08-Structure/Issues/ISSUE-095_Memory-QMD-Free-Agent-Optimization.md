---
uid: ISSUE-095
status: Closed
priority: P0
created: 2026-04-24
tags: [memory, qmd, scout, forg, indexing]
related: [ISSUE-092, ISSUE-094]

---

# ISSUE-095: Memory System Optimization + QMD Indexing + Free Agent

## Summary
**Problem:** Memory 85% optimal (ISSUE-092 gaps fixed). QMD 100% complete but needs free agent maintenance. No YAML indexing agent.

**Goal:** 95% memory alignment. Auto QMD + YAML audit. Free SCOUT indexing.

## Success Criteria
- [ ] Memory: Weekly consolidation cron
- [ ] QMD: Daily index + alert gaps
- [ ] Free Agent: SCOUT audits vault YAML (flag only, no edits)
- [ ] Cost: <$0.01/day (Nemotron free)

## Proposed Solutions
1. **Memory Cron:** Daily flush + dreaming batch
2. **QMD Agent:** SCOUT `qmd index --force` + status report
3. **YAML Audit:** SCOUT flags invalid YAML/links (read-only)
4. **FORG Refinements:** Optimize implementation

**FORG Task:** Refine solutions + predict spawn cost.

---

_Last updated: 2026-04-24_
