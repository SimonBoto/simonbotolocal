---
uid: PRJ-CONTROL-0001
type: project-dashboard
title: "Project Control Board"
date: 2026-04-07
aliases: [PROJECT-CONTROL, ACTIVE-WORK]
tags: [projects, dashboard, active-work, kanban]
parent-moc: [[07 Projects Index]]
parent-index: [[07 Projects Index]]
status: active
---

# Project Control Board

> **Single source of truth for all parallel work streams**
> 
> *Update this daily. Stale = useless.*

---

## 🎯 ACTIVE SPRINT (April 7-14, 2026)

| Priority | Project | Status | Owner | Blocker | Next Action |
|----------|---------|--------|-------|---------|-------------|
| P0 | **FORG Deployment** | 🟡 In Progress | RON | None | First real extraction task |
| P0 | **CGPT_0264 Completion** | ⏸️ Paused | RON | FORG ready | Resume with FORG→RON workflow |
| P1 | **QMD Embeddings** | 🟡 Background | System | CPU only | Wait for completion (~2h) |
| P1 | **Vault Alignment** | ✅ Complete | RON | None | All systems aligned |
| P2 | **Clinic Training Docs** | ⏸️ On Hold | — | FORG priority | Queue for post-CGPT_0264 |
| P2 | **PhD Hypothesis Draft** | ⏸️ On Hold | — | University block | Parallel reading only |

---

## 📊 PROJECT INVENTORY

### 🤖 Agents (NEW)
| Project | Status | Model | Cost Savings | Notes |
|---------|--------|-------|--------------|-------|
| [[FORG_Agent_Project_S-001-0004\|FORG Agent]] | ✅ Operational | Qwen Plus | 98% | Tested 2026-04-07 |
| RESEARCH Agent | 📋 Planned | TBD | — | After FORG proven |
| EDITOR Agent | 📋 Planned | TBD | — | P2 priority |

### 🛠️ Tools
| Project | Status | Blocker | ETA |
|---------|--------|---------|-----|
| [[ZettelForge_Concept_S-001-0001\|ZettelForge]] | 🟡 Ready | FORG pilot | 1 week |
| [[QMD_Activation_S-001-0002\|QMD Activation]] | ✅ Active | None | Running |
| [[QMD_Embedding_Project_S-001-0005\|QMD Embeddings]] | 🟡 18% | GPU VRAM | ~2h CPU |
| [[OpenClaw_Model_Cleanup_S-001-0007\|Model Cleanup]] | ✅ Complete | — | Done |

### 📥 Extraction
| Project | Status | Progress | Next Action |
|---------|--------|----------|-------------|
| [[CGPT_Extraction_Program_S-001-0003\|CGPT Program]] | 🟡 Active | 17/688 anchors | Scale with FORG |
| [[CGPT_0264_Resumption_S-001-0006\|CGPT_0264]] | ⏸️ Paused | 5/11 LitNotes | Resume post-FORG test |
| Facebook Collection | ✅ Complete | 158/158 | Archived |

### 🏥 Clinic
| Project | Status | Blocker | Notes |
|---------|--------|---------|-------|
| Operations | 🟢 Active | None | Daily workflow |
| Training Curriculum | ⏸️ On Hold | Time | Post-extraction backlog |

### 🔬 PhD
| Project | Status | Blocker | Notes |
|---------|--------|---------|-------|
| METHAP Trial | 🔴 Blocked | University | ClinicalTrials.gov pending |
| Literature Review | 🟢 Active | None | Parallel to main work |

---

## 🔄 DAILY STANDUP TEMPLATE

*Copy this to daily notes, fill in:*

```markdown
## Standup — 2026-04-XX

### Yesterday
- [ ] 

### Today
- [ ] 

### Blockers
- 

### FORG Tasks (if applicable)
- [ ] 
```

---

## 📈 VELOCITY TRACKING

| Week | FORG Drafts | RON Reviews | CGPT Anchors | Cost |
|------|-------------|-------------|--------------|------|
| Apr 7-13 | — | — | — | — |

*Start tracking after FORG pilot.*

---

## 🚨 ESCALATION RULES

| Condition | Action |
|-----------|--------|
| Status stale >48h | Update or archive |
| Blocker >1 week | Escalate to P0 or drop |
| FORG approval <80% | Review protocol |
| Cost >$10/day | Audit usage |

---

## RELATED
- [[07 Projects Index]] — Full project archive
- [[00-COMMAND]] — System priorities
- [[01-HANDOFF]] — Session state

---
*Last updated: 2026-04-07 14:18*
*Next review: Daily*
