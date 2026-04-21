---
uid: S-001-0014
type: synthesis
project: SCOUT Agent
title: "SCOUT Agent — Strategic Cognitive Organizer"
date: 2026-04-14
aliases: [SCOUT, Strategic-Agent]
domain: 901
tags: [project, agent, scout, exploration, automation]
status: active
parent-moc: [[07-Projects-Index]]
parent-index: [[PROJECT_CONTROL_BOARD]]
---

# SCOUT Agent — Strategic Cognitive Organizer

> **Purpose:** Exploration strategy, CGPT prioritization, research theme detection  
> **Model:** NVIDIA Nemotron 3 Super 120B (OpenRouter free tier)  
> **Cost:** $0 (free tier)  
> **Created:** 2026-04-14

---

## Mission

SCOUT analyzes the CGPT conversation backlog to identify:
1. **Themes** — What topics cluster together?
2. **Priorities** — What should be extracted first?
3. **Connections** — Which CGPTs relate to each other?
4. **Synthesis opportunities** — When does extraction enable higher-order knowledge?

---

## Architecture

```
CGPT Backlog (673 conversations)
    ↓
SCOUT (NVIDIA Nemotron 120B) — Theme detection, prioritization
    ↓
queue-scout.md — Ordered, themed extraction queue
    ↓
FORG (Qwen Plus) — Extraction, zettel creation
    ↓
RON (Kimi k2.5) — Quality validation, vault integration
```

---

## Specifications

| Attribute | Value |
|-----------|-------|
| **Model** | nvidia/nemotron-3-super-120b-a12b:free |
| **Parameters** | 120B (12B active per token, MoE) |
| **Context window** | 262K tokens |
| **Response time** | ~30 seconds per analysis |
| **Cost** | $0 (OpenRouter free tier) |
| **Fallback** | elephant-alpha (if rate limited) |

---

## Capabilities

### 1. Type Classification
- hypothesis
- methodology  
- clinical_case
- literature_review

### 2. Priority Assignment
- **P0** — PhD/METHAP related (adipic acid, Hashimoto's, insulin resistance)
- **P1** — Clinical relevance (patient protocols, biomarkers)
- **P2** — Methodology (statistics, study design)
- **P3** — General knowledge (supplements, mechanisms)

### 3. Theme Detection
Identifies clusters like:
- "12 CGPTs discuss adipic acid biomarkers"
- "8 CGPTs cover OPLS-DA methodology"
- "Cross-connection: CGPT_0264 and CGPT_0586 both mention insulin resistance"

### 4. Synthesis Potential
Flags opportunities:
- "After extracting 3 adipic acid CGPTs → create MOC-Adipic-Acid"
- "CGPT_0133 + CGPT_0586 → Vitamin D synthesis candidate"

---

## Output Format

SCOUT generates `queue-scout.md`:

```markdown
# SCOUT Analysis — Batch 001

## Theme Detection
| Theme | CGPTs | Urgency |
|-------|-------|---------|
| Adipic acid biomarkers | 12 | P0 |
| OPLS-DA methodology | 8 | P2 |

## Recommended Order
1. P0: Adipic acid batch
2. P1: Vitamin D batch
3. P2: Methodology batch

## Cross-Connections
- CGPT_0264 ↔ CGPT_0586: Insulin resistance overlap

## Synthesis Candidates
- After P0 batch: Create MOC-Adipic-Acid-Biomarker
```

---

## Configuration

**File:** `~/.openclaw/workspace/SCOUT-CONFIG.md`

**API Key:** OpenRouter (free tier)
```bash
export OPENROUTER_API_KEY="sk-or-v1-..."
export SCOUT_MODEL="nvidia/nemotron-3-super-120b-a12b:free"
```

---

## Comparison: SCOUT vs LOCOl

| Aspect | LOCOl (Deprecated) | SCOUT (Current) |
|--------|-------------------|-----------------|
| **Model** | Gemma 2B (local) | Nemotron 120B (cloud) |
| **Quality** | ❌ Weak reasoning | ✅ Excellent reasoning |
| **Speed** | 1-2 seconds | 30 seconds |
| **Cost** | $0 | $0 (free tier) |
| **Reliability** | ❌ Unreliable | ✅ Consistent |
| **Priority accuracy** | Poor | Good (needs tuning) |

**Why LOCOl failed:** Local models (Gemma 2B) hallucinated, produced inconsistent JSON, crashed with SIGKILL. SCOUT uses proven cloud infrastructure.

---

## Status

| Milestone | Status | Date |
|-----------|--------|------|
| Agent created | ✅ Complete | 2026-04-14 |
| Model tested | ✅ Complete | 2026-04-14 |
| Configuration | ✅ Complete | 2026-04-14 |
| Integration with FORG | ✅ Complete | 2026-04-14 (queue-scout.md) |
| Pilot test (10 CGPTs) | 📋 Ready | Awaiting user initiation |
| Full deployment | 📋 Planned | After pilot validation |

## Integration

SCOUT outputs to `08-Structure/Handoff/queue-scout.md`  
FORG reads queue-scout.md for prioritized extraction order  
RON validates SCOUT's prioritization during morning review

---

## Next Steps

1. **Pilot test:** Run SCOUT on 10 CGPTs
2. **Validate:** Compare SCOUT's prioritization to manual review
3. **Iterate:** Tune priority detection (currently conservative)
4. **Scale:** Process full 673 CGPT backlog

---

## Related

- [[FORG_Agent_Project_S-001-0004]] — Extraction agent
- [[CGPT_Extraction_Program_S-001-0003]] — Overall extraction program
- [[PROJECT_CONTROL_BOARD]] — Active work tracking
- [[SCOUT-CONFIG]] — Configuration file

---

*SCOUT v0.1 — Strategic exploration for the Triangle*  
*Created 2026-04-14*
