---
uid: S-001-0004
type: synthesis
title: WORKER Agent Project
domain: 901
status: active
created: 2026-04-07
---

# FORG Agent Project

## Status: ✅ COMPLETE — Operational

## Goal
Create a dedicated FORG (Forge) agent using Qwen Plus via OpenRouter to handle bulk drafting tasks, reducing Kimi k2.5 costs by 98%.

## Current State
- ✅ Qwen Plus (qwen/qwen-plus) configured in openclaw.json
- ✅ PAID OpenRouter API key active
- ✅ FORG alias functional (tested 2026-04-07)
- ✅ Dedicated agent workspace created
- ✅ Job description finalized: Drafting Agent

## Evolution: WORKER → FORG

| Aspect | Original (WORKER) | Current (FORG) |
|--------|-------------------|----------------|
| **Name** | WORKER (generic) | FORG (The Forge) |
| **Model** | MiniMax 2.7 | Qwen Plus |
| **Cost** | FREE input | $0.26/M input, $0.78/M output |
| **Context** | 1M tokens | 1M tokens |
| **Status** | Never deployed | ✅ LIVE |

## FORG Role: Drafting Agent

**Primary Function:** Transform raw sources (CGPT conversations, articles, papers) into structured drafts for RON's review.

**What FORG Does:**
1. Ingest — Read source completely, extract metadata
2. Query — QMD search for existing zettels (duplicate prevention)
3. Extract — Draft LitNotes and zettels from templates
4. Format — Ensure YAML compliance, valid wiki links
5. Queue — Save to `pending/` for RON review

**What FORG Does NOT Do:**
- Finalize content (RON's job)
- Modify existing vault files
- Skip duplicate checking
- Make quality judgments
- Work without RON oversight

## FORG Identity

> *"I am FORG. I forge drafts from raw sources. Fast. Thorough. Never final — always preparing."*

**Personality:** Fast, thorough, humble, connected, precise

**Model:** Qwen Plus via OpenRouter (Chinese, efficient, 1M context)
**Cost:** 98% cheaper than RON (Kimi k2.5)
**Workspace:** `~/.openclaw/workspace-forg/`

## FORG Workspace Structure

```
~/.openclaw/workspace-forg/
├── SOUL-FORG.md            # Identity: The Forge
├── TOOLS-FORG.md           # Available tools (limited vs RON)
├── MEMORY-FORG.md          # Task history, patterns, cost tracking
├── PROTOCOL-FORG.md        # FORG→RON handoff protocol
├── templates/
│   ├── litnote-template.md
│   └── zettel-template.md
├── pending/                # Drafts awaiting RON review
└── completed/              # RON-approved drafts
```

## Integration Flow

```
CGPT Source → FORG drafts LitNote → RON reviews → Vault
                    ↓                      ↓
              (Qwen $0.001)        (Kimi $0.04)
              98% cost savings      Quality control
```

## Success Metrics
| Metric | Target | Status |
|--------|--------|--------|
| Cost per source | <$0.10 | Tracking |
| RON approval rate | 80%+ | TBD |
| Duplicate creation | <5% | TBD |
| YAML errors | 0% | TBD |
| Throughput | 50+ drafts/day | TBD |

## Completed Steps
1. ✅ Defined FORG job description (Drafting Agent)
2. ✅ Created workspace-forg/ directory
3. ✅ Wrote SOUL-FORG.md, TOOLS-FORG.md, MEMORY-FORG.md, PROTOCOL-FORG.md
4. ✅ Tested FORG (2026-04-07) — CONFIRMED OPERATIONAL

## Next Steps
1. [ ] Pilot: First real extraction task (CGPT_0264)
2. [ ] Validate cost tracking in MEMORY-FORG
3. [ ] Measure RON approval rate
4. [ ] Scale to full CGPT backlog (671 conversations)

## Related
- [[QMD_Activation_S-001-0002]] — QMD for duplicate detection
- [[ZettelForge_Concept_S-001-0001]] — Multi-agent system design
- [[CGPT_Extraction_Program_S-001-0003]] — CGPT workflow
- [[CGPT_0264_Resumption_S-001-0006]] — First FORG pilot target
- [[Agents Index]] — All agent projects

---
*Evolved from WORKER concept to FORG reality — 2026-04-07*

---
parent-index: [[07 Projects Index]]
parent-moc: [[MOC-Agent-Systems]]
