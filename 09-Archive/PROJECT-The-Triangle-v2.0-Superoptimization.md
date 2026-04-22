---
uid: PROJECT-PHD-033
type: project
title: "The Triangle v2.0 — Superoptimization Architecture"
status: architecture-design
date: 2026-04-09
priority: P0
---

# PROJECT: The Triangle v2.0 — Superoptimization Architecture

**Status:** Architecture Design  
**Date:** 2026-04-09  
**Priority:** P0  
**Synthesizes:** CORAL + AutoAgent + Karpathy KB + Karpathy IDE + Superoptimization

---

## The Vision

> **"Go build knowledge on [topic]" — and the system works 24/7 until it's done.**

The Triangle evolves from a 2-agent manual system to a **self-optimizing superoptimizer**:
- **Autonomous:** No human direction needed for routine extraction
- **Self-improving:** Harness optimizes via meta-agent
- **Measurable:** Quality metrics drive continuous improvement
- **Forkable:** "Org code" that others can adapt

---

## Architecture Evolution

### v1.0 (Current): Manual Coordination
```
Human → RON → FORG → Output → RON validates → Human reviews
```

### v2.0 (Target): Superoptimization
```
Human: "Build knowledge on X"
    ↓
┌─────────────────────────────────────────────────────────────┐
│                    THE TRIANGLE v2.0                        │
├─────────────────────────────────────────────────────────────┤
│  [SCOUT] ← Explorer Agent                                   │
│  - Decides what to explore (CGPT from 673 backlog)          │
│  - Prioritizes based on MOC gaps, research agenda           │
│  - Hires/fires itself (creates sub-explorers as needed)     │
│  - Metrics: coverage, novelty, connection potential         │
├─────────────────────────────────────────────────────────────┤
│  [FORG] ← Task Agent (IC)                                   │
│  - Extracts LitNotes from selected CGPT                     │
│  - Creates zettels (3-8 per LitNote)                        │
│  - Maintains YAML v4.0 standard                             │
│  - Metrics: extraction time, token cost, quality score      │
├─────────────────────────────────────────────────────────────┤
│  [RON] ← Manager Agent                                      │
│  - Validates FORG outputs                                   │
│  - Integrates into vault                                    │
│  - Updates MOCs, indices                                    │
│  - Reports to human (morning review)                        │
│  - Metrics: validation pass rate, link integrity            │
├─────────────────────────────────────────────────────────────┤
│  [AutoAgent] ← Meta-Agent (Background)                      │
│  - Optimizes FORG's harness (prompts, tools, workflow)      │
│  - Reads failure traces, targets edits                      │
│  - Self-reflection: "Would this improve transfer?"          │
│  - Metrics: harness performance, iteration rate             │
└─────────────────────────────────────────────────────────────┘
    ↓
[QMD] ← Resource Store (search, indexing, embeddings)
[Git] ← Version Control + Metrics History
[Obsidian] ← IDE Frontend (knowledge visualization)
    ↓
Autonomous 24/7 knowledge synthesis
```

---

## Component Specifications

### SCOUT (Explorer Agent) — NEW

**Role:** Decides what knowledge to build

**Responsibilities:**
- Scan 673 CGPT backlog for extraction candidates
- Prioritize based on:
  - MOC coverage gaps
  - Research agenda alignment (PhD, clinic)
  - Connection potential to existing zettels
- Create sub-explorers for complex domains
- Self-terminate when queue optimized

**Memory:**
- Long-term: Research agenda, MOC structure, past extractions
- Working: Current candidate analysis

**Tools:**
- QMD search (find related content)
- MOC analysis (identify gaps)
- CGPT preview (assess complexity)

**Metrics:**
- Coverage score: % of research agenda addressed
- Novelty score: new concepts vs. existing
- Connection potential: estimated zettel links

---

### FORG (Task Agent) — ENHANCED

**Role:** Executes extraction

**Current:** Manual task-based
**v2.0:** Self-optimizing via AutoAgent

**AutoAgent Integration:**
- Meta-agent reads FORG's traces
- Modifies prompts, adds tools, refines workflow
- Runs 1000s of parallel sandbox iterations
- 24h cycles: optimize → eval → improve

**Emergent Behaviors (Expected):**
- Spot checking (isolated evals for speed)
- Verification loops (self-checks, validators)
- Progressive disclosure (file dumps for long context)
- Sub-agent creation (domain-specific extractors)

**Metrics:**
- Extraction time: <15 min per CGPT
- Token cost: <$0.05 per LitNote
- Quality score: RON validation pass rate
- Zettel yield: 3-8 per LitNote

---

### RON (Manager Agent) — ENHANCED

**Role:** Validation, integration, human interface

**Current:** Manual review
**v2.0:** Automated validation + morning reports

**Responsibilities:**
- Validate FORG outputs (YAML, links, content)
- Auto-integrate into vault (git commits)
- Update MOCs, indices
- Generate morning reports for human
- Escalate edge cases to human

**Morning Report Format:**
```
🦞 Triangle Overnight Report — 2026-04-10

Extractions: 12 CGPT → 12 LitNotes → 47 zettels
Quality: 11/12 passed validation (92%)
Coverage: +3% on PhD research agenda
Connections: 23 new zettel links

Top additions:
- L-001-0656: Warburg Effect mechanisms
- Z-001-1150: Mitochondrial dysfunction in cancer

Needs attention:
- L-001-0657: Complex pathway, review suggested

AutoAgent: 3 harness improvements deployed
Next: Continue CGPT-0445 biochemistry series
```

---

### AutoAgent (Meta-Agent) — NEW

**Role:** Optimizes the harness

**Pattern:** From AutoAgent (kevinrgu/autoagent)

**Loop:**
```
1. Read FORG's reasoning traces
2. Identify failure modes, inefficiencies
3. Modify harness (prompts, tools, workflow)
4. Run evals (1000s of parallel sandboxes)
5. Keep improvements, revert failures
6. Deploy to FORG
7. Repeat 24/7
```

**Self-Reflection Constraint:**
> "If CGPT extraction disappeared, would this still improve FORG's YAML skills?"

**Model Empathy:**
- Meta-agent and task agent share model (Kimi)
- Meta understands task's reasoning patterns
- Same-model pairing > cross-model

---

## Resource Stores

| Store | Purpose | Access |
|-------|---------|--------|
| **QMD** | Search, indexing, embeddings | All agents |
| **Git** | Version control, metrics history | RON (write), others (read) |
| **Linear** | Issue tracking, roadmap | SCOUT, RON |
| **Vault** | Knowledge base (markdown) | All agents (via RON) |
| **Metrics DB** | Performance tracking | AutoAgent, RON |

---

## Metrics & Reward Signals

### System-Level Metrics
| Metric | Target | Measurement |
|--------|--------|-------------|
| Knowledge coverage | 100% of research agenda | MOC gap analysis |
| Connection density | Avg 5 links per zettel | Graph analysis |
| Quality score | >90% validation pass | RON evals |
| Throughput | 10 CGPT/day | Daily count |
| Cost efficiency | <$0.50/day | Token tracking |

### Agent-Level Metrics
| Agent | Primary Metric |
|-------|----------------|
| SCOUT | Coverage × novelty × connection |
| FORG | Quality score / token cost |
| RON | Validation pass rate / human escalation rate |
| AutoAgent | Harness improvement rate |

---

## Human Interface

### Daily Rituals

**Morning (8:00):**
- Review overnight report from RON
- Validate flagged extractions (if any)
- Approve AutoAgent harness changes (if any)
- Set direction for day (optional)

**Evening (20:00):**
- Quick check of day's progress
- Queue new CGPTs if desired
- System health check

### Override Capabilities
- Pause/resume any agent
- Modify research agenda
- Force specific CGPT extraction
- Rollback harness changes

---

## Implementation Roadmap

### Phase 1: Foundation (Week 1-2) — IN PROGRESS
- [x] 70 LitNotes v4.0 converted, validated, committed
- [ ] Complete remaining 138 LitNotes (decision: 30/66/138/stop)
- [ ] Define evals for FORG extraction
- [ ] Build metrics tracking system
- [ ] Create RON morning report template

**Progress:** 70/208 (34% of total conversion)

### Phase 2: SCOUT (Week 3-4)
- [ ] Design SCOUT harness
- [ ] Implement CGPT prioritization logic
- [ ] Connect to research agenda MOC
- [ ] Test on 10 CGPT sample

### Phase 3: AutoAgent (Week 5-8)
- [ ] Deploy AutoAgent for FORG optimization
- [ ] Run 24h optimization cycles
- [ ] Measure harness improvements
- [ ] Iterate on meta-agent prompts

### Phase 4: Integration (Week 9-12)
- [ ] Full 4-agent system online
- [ ] 24/7 autonomous operation
- [ ] Human oversight only (morning reports)
- [ ] Performance tuning

### Phase 5: Productization (Month 4+)
- [ ] Package as "The Triangle"
- [ ] Documentation, examples
- [ ] Open source (org code)
- [ ] Community contributions

---

## Relation to Existing Projects

| Existing Project | v2.0 Integration |
|------------------|------------------|
| **AGENT-ARCHITECTURE-v1.0** | Upgraded to v2.0 (this doc) |
| **PROJECT-AutoResearch-Knowledge** | Core of v2.0 (autonomous extraction) |
| **PROJECT-LitNote-v4-Update** | Phase 1 prerequisite |
| **PROJECT-Zettel-v4-Update** | Phase 1 prerequisite |
| **ZETTEL-INVENTORY** | Resource store for SCOUT |

---

## Synthesis of Inbox Items

| Inbox Item | Contribution to v2.0 |
|------------|----------------------|
| **CORAL** | Multi-agent collaboration patterns (SCOUT+FORG+RON) |
| **AutoAgent** | Meta-agent optimization of FORG harness |
| **Karpathy KB** | Knowledge base architecture (vault = wiki) |
| **Karpathy IDE** | Future: visual command center for Triangle |
| **Superoptimization** | Full architecture (manager + ICs + metrics) |

---

## Success Criteria

> **"The era of manual extraction is ending. The era of autonomous knowledge synthesis is beginning."**

| Milestone | Date | Criteria |
|-----------|------|----------|
| v1.5 | 2026-04-16 | 139 LitNotes perfect, SCOUT prototype |
| v2.0-alpha | 2026-05-01 | 4-agent system online, 24/7 operation |
| v2.0-stable | 2026-06-01 | >90% autonomous, <10% human escalation |
| v2.0-product | 2026-07-01 | Open source, community adoption |

---

## Open Questions

1. **SCOUT model:** Same as FORG (Qwen) or upgrade to Kimi?
2. **AutoAgent hosting:** Local or cloud? (Cost vs. speed)
3. **Metrics storage:** File-based or lightweight DB?
4. **Human escalation threshold:** What triggers human review?
5. **Forkability:** How generic can we make the org code?

---

*The Triangle v2.0: Not just agents, but an agent organization.*

---

## Related Documents

| Document | Purpose |
|----------|---------|
| `AGENT-ARCHITECTURE-v1.0.md` | Pre-synthesis architecture |
| `PROJECT-AutoResearch-Knowledge.md` | Karpathy-inspired extraction |
| `FORG-LitNote-Update-Protocol.md` | Current FORG operations |
| `ZETTEL-INVENTORY.md` | Knowledge base state |
| `00-Inbox/CORAL_*` | Multi-agent collaboration |
| `00-Inbox/AutoAgent_*` | Meta-agent optimization |
| `00-Inbox/Karpathy_KB_*` | Knowledge base patterns |
| `00-Inbox/Karpathy_IDE_*` | Agent IDE vision |
| `00-Inbox/Superoptimization_*` | Full architecture reference |

---

**Next Action:** Complete Phase 1 (139 LitNotes) → Begin SCOUT design
