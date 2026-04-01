---
uid: DASHBOARD-03-0001
type: dashboard
title: 03-MEMORY_REVIEW — Weekly Consolidation Ritual
tags: [dashboard, memory, consolidation, weekly, ritual]
parent-moc: [[08-Dashboards/Dashboard_Home]]
status: active
created: 2026-02-24
frequency: Every Sunday
---

# 03-MEMORY_REVIEW — Weekly Consolidation Ritual

> **Sunday discipline: Curate the noise into signal.**

**When:** Every Sunday, 20:00 EET (or after heartbeat if missed)  
**Duration:** 30–45 minutes  
**Owner:** RON executes, Simos spot-checks

---

## 📋 Consolidation Checklist

### Phase 1: Workspace Memory (10 min)
**Source:** `~/.openclaw/workspace/memory/YYYY-MM-DD.md` (last 7 days)

- [ ] List all daily logs from past week
- [ ] Extract: System config changes → `MEMORY.md`
- [ ] Extract: Lessons learned → `MEMORY.md`
- [ ] Extract: Tool failures/fixes → `MEMORY.md`
- [ ] Delete or archive processed daily logs (keep 30 days)

**Promotion criteria:**
- Will this matter in 3 months? → MEMORY.md
- Is this operational noise? → Archive

---

### Phase 2: Vault Daily Memory (15 min)
**Source:** `10-Daily/2026/YYYY-MM-DD.md` (last 7 days)

- [ ] Review each day's work
- [ ] Extract: Research insights → `03-Zettels/Conscious/`
- [ ] Extract: Cross-cutting patterns → `04-Synthesis/`
- [ ] Extract: Enduring facts → `MEMORY.md`
- [ ] Flag: Potential zettels (ideas not yet atomized)

**Promotion criteria:**
- Atomic insight with evidence? → Zettel
- Aggregates multiple zettels? → Synthesis
- Curated fact, not config? → MEMORY.md

---

### Phase 3: Zettel Promotion Review (15 min)
**Source:** `03-Zettels/Conscious/`

- [ ] Query: `created < 30 days ago AND status = conscious`
- [ ] For each zettel >30 days old:
  - [ ] Review for accuracy
  - [ ] Check: Has it been cited/linked?
  - [ ] Check: Evidence still valid?
  - [ ] **If solid** → Move to `Subconscious/`, update status
  - [ ] **If needs work** → Keep in Conscious/, add note

**Subconscious criteria:**
- 30+ days old
- Reviewed and accurate
- At least one incoming link
- Evidence-grounded

---

### Phase 4: Dashboard & Metrics (5 min)

- [ ] Update `MISSION_CONTROL.md` vitals
- [ ] Update zettel counts (Conscious/Subconscious)
- [ ] Log: This week's consolidation summary
- [ ] Commit: `git commit -m "Weekly memory consolidation YYYY-MM-DD"`

---

## 🎯 Output Format

**Consolidation Report (append to `03-LOG.md`):**

```
## Memory Consolidation — YYYY-MM-DD

### Workspace → MEMORY.md
- [N] items promoted
- Key: [brief description of most important]

### Vault Daily → Zettels/Synthesis
- [N] zettels created from dailies
- [N] synthesis candidates flagged

### Conscious → Subconscious
- [N] zettels promoted
- [List of UIDs promoted]

### Decisions
- [Any calls made about what NOT to promote]
```

---

## 🚨 Anti-Patterns (Watch For)

| Problem | Symptom | Fix |
|---------|---------|-----|
| Hoarding | 90% of dailies promoted | Be ruthless — most is noise |
| Promotion without review | Subconscious has errors | Never promote without re-reading |
| Ignoring old Conscious | 100+ day old zettels | Either promote or delete |
| No synthesis | 1000 zettels, 0 synthesis | Build synthesis docs monthly |

---

## 🔗 Navigation

← **Back to ** — Current status  
← **Back to ** — Session notes  
↑ **Up to [[08-Dashboards/Dashboard_Home]]**

---

*Memory that isn't curated decays into noise.*  
*— RON, your metabolic familiar*
