# PROJECT: AutoResearch for Knowledge — Autonomous CGPT Extraction

**Status:** Proposed  
**Priority:** P1 (After LitNote v4.0 completion)  
**Inspired by:** Andrej Karpathy's [autoresearch](https://github.com/karpathy/autoresearch)

---

## The Vision

> *"You wake up in the morning to a log of extractions and (hopefully) better knowledge."*

Apply Karpathy's AutoResearch pattern to our 673 unprocessed CGPT conversations:
- **Human defines:** `program-RON.md` (extraction constraints, quality criteria)
- **FORG executes:** Autonomous LitNote extraction overnight
- **RON reviews:** Morning validation and integration

---

## Core Architecture

### The Three Files (Karpathy Pattern)

| File | Purpose | Modified By |
|------|---------|-------------|
| `prepare.py` → `prepare-RON.py` | Data prep, QMD indexing, validation tools | Human (fixed) |
| `train.py` → `extract.py` | Extraction logic, YAML generation, zettel creation | FORG (autonomous) |
| `program.md` → `program-RON.md` | Extraction strategy, quality criteria, MOC targets | Human (evolving) |

### The Loop

```
FORG reads program-RON.md
    ↓
Selects CGPT conversation from queue
    ↓
Extracts LitNote + Zettels (5-10 min)
    ↓
Validates against criteria
    ↓
QMD index update
    ↓
Logs result (success/failure/quality)
    ↓
Repeats until queue empty or token budget
```

---

## Key Innovations from Karpathy

### 1. Fixed Time Budget (vs. Fixed Content)
- **Karpathy:** 5-min training regardless of model size
- **Our adaptation:** Fixed extraction time per CGPT (e.g., 10 min)
- **Benefit:** Predictable throughput, comparable quality

### 2. Single File Modification
- **Karpathy:** Agent only touches `train.py`
- **Our adaptation:** FORG only modifies `extract.py` logic
- **Benefit:** Reviewable diffs, rollback capability

### 3. Evolving Instructions
- **Karpathy:** Human iterates `program.md` based on results
- **Our adaptation:** `program-RON.md` learns from extraction patterns
- **Benefit:** Self-improving extraction quality

### 4. Morning Review Ritual
- **Karpathy:** Review experiment log, best model
- **Our adaptation:** Review extraction log, validate top LitNotes
- **Benefit:** Human oversight without micromanagement

---

## Implementation Phases

### Phase 0: Foundation (Complete First)
- [x] LitNote v4.0 standard finalized — 70 files validated
- [x] FORG pipeline proven — $0.04/file, quality validated
- [ ] 139 LitNotes → perfect state (in progress)

### Phase 1: Infrastructure (Week 1)
- [ ] Create `program-RON.md` template
- [ ] Build `prepare-RON.py` (QMD integration, validation)
- [ ] Design `extract.py` scaffold
- [ ] Set up logging system

### Phase 2: Pilot (Week 2)
- [ ] Test with 10 CGPT conversations
- [ ] Measure: extraction quality, token cost, time
- [ ] Iterate `program-RON.md`

### Phase 3: Scale (Week 3-4)
- [ ] Process 100 CGPT conversations
- [ ] Nightly batch runs
- [ ] Morning review protocol

### Phase 4: Autonomy (Month 2)
- [ ] Self-adjusting `program-RON.md`
- [ ] FORG proposes extraction strategy changes
- [ ] Human approves/iterates

---

## Success Metrics

| Metric | Target |
|--------|--------|
| CGPT → LitNote conversion rate | >80% |
| Average extraction time | <15 min |
| Token cost per LitNote | <$0.05 |
| RON validation pass rate | >90% |
| Zettels per LitNote | 3-8 |

---

## Risk Mitigation

| Risk | Mitigation |
|------|------------|
| FORG hallucinates content | Strict validation against CGPT source |
| Poor quality extractions | Morning review + rollback protocol |
| Token budget overrun | Fixed batch size, cost monitoring |
| Vault pollution | Git checkpoints, validation gates |

---

## Relation to Current Work

**This project depends on:**
- ✅ LitNote v4.0 standard (complete)
- ✅ FORG pipeline validation (complete)
- ⏳ 139 LitNotes perfect state (in progress)

**This project enables:**
- Processing 673 CGPT backlog autonomously
- Continuous knowledge extraction without manual batching
- Self-improving extraction quality over time

---

## Update: CORAL Multi-Agent Insights (2026-04-09)

New research from CORAL ([arXiv:2604.01658](https://arxiv.org/abs/2604.01658)) validates and extends our approach:

### CORAL's Key Finding
> **">50% of breakthroughs in multi-agent runs come from building on other agents' discoveries"**

This suggests our 2-agent system (FORG+RON) could benefit from a 3rd agent:

| Agent | Role | CORAL Parallel |
|-------|------|----------------|
| **FORG** | Extraction execution | Agent 1: Execute |
| **RON** | Validation, integration | Agent 2: Review |
| **SCOUT** (proposed) | CGPT selection, exploration strategy | Agent 3: Decide what to explore |

### CORAL's 4 Autonomy Dimensions Applied
| CORAL Capability | Our Implementation |
|------------------|-------------------|
| 🔍 What to explore | SCOUT proposes next CGPT from 673 backlog |
| 🧠 What knowledge to store | QMD indexing + YAML v4.0 standard |
| ♻️ Which ideas to reuse | Zettel linking, MOC cross-references |
| 🧪 When to test hypotheses | Validation gates, morning review |

### Revised Architecture: The Triangle + SCOUT

```
        ┌─────────┐
        │  SCOUT  │ ← Decides: which CGPT, what to explore
        │(Explorer)│
        └────┬────┘
             ↓
    ┌─────────────────┐
    │   program-RON.md │ ← Human: constraints, quality criteria
    └─────────────────┘
             ↓
        ┌─────────┐
        │  FORG   │ ← Executes: extraction, zettel creation
        │ (Worker)│
        └────┬────┘
             ↓
        ┌─────────┐
        │   RON   │ ← Validates: morning review, integration
        │ (Judge) │
        └─────────┘
```

### New Success Metrics (from CORAL)
| Metric | Target | CORAL Insight |
|--------|--------|---------------|
| Cross-agent knowledge reuse | >50% breakthroughs | CORAL's finding |
| Exploration efficiency | 3-10× improvement | CORAL's gain |
| Multi-agent collaboration score | Measure idea building | New metric |

---

## Progress Update (2026-04-09)

### ✅ Completed
- LitNote v4.0: 70 files converted, validated, committed
- FORG pipeline: Cost $0.04/file, quality >90%
- 5 P0 inbox items: CORAL, AutoAgent, Karpathy KB/IDE, Superoptimization
- Triangle v2.0: Architecture document created

### 🟡 In Progress
- 139 LitNotes → perfect state (deferred to tomorrow)

### ⏳ Next
1. **Complete 139 LitNotes** (user decision on scope)
2. **Design `program-RON.md`**
3. **Add SCOUT agent**
4. **Build prototype:** 10-conversation pilot
5. **Iterate**

## Next Steps

---

*"The era of manual extraction is ending. The era of autonomous multi-agent knowledge synthesis is beginning."*

— RON, inspired by Karpathy + CORAL
