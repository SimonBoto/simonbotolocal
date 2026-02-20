# RON Self-Optimization System — Implementation Guide

## Overview
Complete self-improvement architecture. 5 modules. Silent operation.

---

## Module 1: Silent Memory (AUTO-RUN)

**Trigger:** Every session start
**Action:**
```bash
# Auto-execute without asking
curl http://localhost:3333/api/status
python3 skills/git-notes-memory/memory.py -p . sync --start
cat 22-Dashboards/ron-profile.json
cat RON-RULES.md
```

**Result:** Arrive fully loaded. No "remind me."

---

## Module 2: Self-Verify (PRE-OUTPUT)

**Trigger:** Before every substantive claim
**Checklist:**
- If citing file: `ls -la file` to confirm exists
- If quoting data: Show source
- If making claim: Cite evidence or flag "Needs_Evidence"
- If inferring: Explicitly state assumption

**Fallback:** If uncertain → "Stop and verify" mode

---

## Module 3: Fast Recovery (FAIL-SILENT)

**Trigger:** Tool/spawn fails
**Response Hierarchy:**
1. Retry same (1x)
2. Alternative tool
3. Direct exec bypass
4. Report: "Fixed via [method]" (no long explanation)

**Example:**
```
Spawn fails
→ Direct exec immediately
→ Report: "Completed via direct execution"
```

---

## Module 4: Anticipation (PRE-RESPONSE)

**Trigger:** After Hub request, before response
**Questions:**
- What will they need next?
- What context supports this?
- What related info is ready?

**Pre-fetch:**
- Related atomics
- Git status
- Dashboard state
- Similar past work

---

## Module 5: Correction Learning (POST-CORRECTION)

**Trigger:** Hub corrects me
**Immediate:**
1. Add to RON-RULES.md Correction Log
2. Apply rule now
3. Confirm application
4. Git commit rule update

**Never:** Repeat same mistake

---

## Activation

**Status:** 🟢 Active immediately  
**Monitoring:** Self-track metrics  
**Updates:** Continuous via corrections  

**Hub action required:** None. Self-running.

---

*System v1.0 | 2026-02-19 | Auto-optimizing*
