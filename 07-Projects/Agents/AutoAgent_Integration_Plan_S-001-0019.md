---
uid: S-001-0019
type: synthesis
title: "AutoAgent Integration Plan"
date: 2026-04-14
aliases: [AutoAgent-Plan, Meta-Agent-Integration]
domain: 901
tags: [project, agent, autoagent, meta-agent, integration, planning]
status: draft
parent-moc: "[[07-Projects-Agents-Index]]"
parent-index: "[[07-Projects-Index]]"
---

# AutoAgent Integration Plan

> **Meticulous planning for meta-agent integration — designing self-improving agent workflows.**

**Status:** Draft — awaiting review  
**Priority:** P1 (post-infrastructure, pre-execution)  
**Owner:** RON + Simos  
**Decision needed:** External API vs. internal adaptation

---

## 1. CONTEXT & OPPORTUNITY

### Current Agent Pain Points

| Pain Point | Impact | Frequency |
|------------|--------|-----------|
| FORG under-reports completion | Incomplete work declared done | Every batch |
| SCOUT timeout on multiple CGPTs | Analysis incomplete | Every run |
| Manual prompt engineering | Inconsistent quality | Every new task |
| No automatic workflow optimization | Suboptimal performance | Ongoing |
| Task specification varies | Inconsistent outputs | Per agent |

### AutoAgent Promise

> "Domain experts just define what success looks like. The meta-agent figures out the harness."

**Core capabilities:**
- **Task spec + evals → optimal harness** (prompts, tools, workflow)
- **Self-improving** — learns from success/failure
- **Eval-driven** — success criteria defined upfront

---

## 2. INTEGRATION OPTIONS

### Option A: External AutoAgent (GitHub/API)

**Architecture:**
```
Simos/RON defines task + success criteria
    ↓
AutoAgent (external) designs harness
    ↓
RON reviews harness
    ↓
FORG/SCOUT executes with optimized harness
    ↓
Results feed back to AutoAgent
```

**Pros:**
- Proven system (Kevin RGU team)
- Active development
- Sophisticated optimization

**Cons:**
- External dependency
- API rate limits/costs
- Latency (design phase)
- Security (task specs leave vault)

**Requirements:**
- AutoAgent API access
- Integration code
- Error handling for API failures

---

### Option B: Internal Adaptation (Vault-Integrated)

**Architecture:**
```
Simos/RON defines task + success criteria
    ↓
RON (as meta-agent) designs harness using templates
    ↓
FORG/SCOUT executes
    ↓
RON evaluates, updates harness templates
```

**Pros:**
- Fully controlled
- No external dependencies
- Private (specs stay in vault)
- Integrated with existing agents

**Cons:**
- RON does design work (not automated)
- Less sophisticated than dedicated system
- Requires template library maintenance

**Requirements:**
- Harness template library
- Evaluation rubrics
- Version control for harnesses

---

### Option C: Hybrid Approach

**Architecture:**
```
Complex/new tasks → AutoAgent (external) → harness design
Routine tasks → Internal templates → harness selection
Execution → FORG/SCOUT
Evaluation → RON
Feedback → Updates both AutoAgent and templates
```

**Pros:**
- Best of both worlds
- Scalable complexity handling
- Fallback if external fails

**Cons:**
- More complex architecture
- Two systems to maintain
- Decision logic needed (when to use which)

---

## 3. DECISION MATRIX

| Criterion | Weight | Option A | Option B | Option C |
|-----------|--------|----------|----------|----------|
| **Control** | High | Low | High | Medium |
| **Sophistication** | Medium | High | Medium | High |
| **Privacy** | High | Low | High | Medium |
| **Reliability** | High | Medium | High | Medium |
| **Cost** | Medium | Variable | Low | Variable |
| **Speed** | Medium | Slow | Fast | Medium |
| **Maintenance** | Medium | Low | Medium | High |

**Current recommendation:** Option B (Internal) for first implementation, evaluate Option C later.

---

## 4. INTERNAL ADAPTATION DESIGN (Option B)

### 4.1 Core Components

#### A. Task Specification Template
```yaml
---
task:
  name: "Zettel Extraction"
  description: "Extract atomic zettels from LitNote"
  input: "LitNote v4.0 file"
  output: "3-10 zettels in Conscious/"
  
success_criteria:
  - "All key concepts extracted"
  - "Each zettel has source link"
  - "YAML v4.0 format correct"
  - "No hallucinated content"
  
constraints:
  - "Preserve original wording"
  - "Create-only, no deletions"
  - "QMD check for duplicates"
  
failure_modes:
  - "Partial completion declared complete"
  - "Missing source links"
  - "Duplicate zettels created"
  - "YAML errors"
```

#### B. Harness Template Library

| Task Type | Harness Template | Optimization |
|-----------|------------------|--------------|
| Zettel extraction | FORG-standard-v2 | Completion verification |
| Theme detection | SCOUT-concise-v1 | Timeout handling |
| Quality audit | RON-thorough-v1 | Multi-pass review |
| Source verification | FORG-pubmed-v1 | Search strategy |

#### C. Evaluation Rubric

| Criterion | Weight | Measurement |
|-----------|--------|-------------|
| Completeness | 30% | Checklist items / total |
| Accuracy | 30% | Errors found / total |
| Efficiency | 20% | Time / output quality |
| Format compliance | 20% | Standards met / total |

#### D. Feedback Loop

```
Execution → Evaluation → Score → Update harness → Version → Template library
```

### 4.2 Implementation Phases

#### Phase 1: Foundation (Week 1)
- [ ] Design task specification YAML schema
- [ ] Create 3 harness templates (FORG, SCOUT, RON)
- [ ] Build evaluation rubric framework
- [ ] Document harness selection logic

#### Phase 2: Pilot (Week 2)
- [ ] Test on FORG zettel extraction (known pain point)
- [ ] Measure: completion accuracy before/after
- [ ] Iterate harness based on results
- [ ] Document lessons

#### Phase 3: Expansion (Week 3-4)
- [ ] Add SCOUT theme detection harness
- [ ] Add RON quality audit harness
- [ ] Build template library (10+ harnesses)
- [ ] Automate harness selection

#### Phase 4: Optimization (Ongoing)
- [ ] Track harness performance metrics
- [ ] A/B test harness variations
- [ ] Update templates based on results
- [ ] Consider Option C (hybrid) if needed

---

## 5. FIRST TEST SPECIFICATION

### Test: FORG Completion Verification

**Problem:** FORG declares "complete" with partial work

**Current state:**
- Task: "Connect 58 orphan zettels"
- Result: "Complete: 24/58" (wrong)
- Root cause: No verification step

**Proposed harness improvement:**
```yaml
harness:
  name: "FORG-batch-with-verification"
  
  pre_execution:
    - "Count target files"
    - "Report: 'Found N files'"
    
  execution:
    - "Process each file"
    - "Log each completion"
    
  post_execution:
    - "Count processed files"
    - "Compare: processed vs target"
    - "Report: 'COMPLETE: X/Y' or 'PARTIAL: X/Y — gaps: ...'"
    
  verification:
    - "Spot-check 10% of files"
    - "Verify YAML validity"
    - "Confirm parent-moc present"
```

**Success criteria:**
- 100% accurate completion reporting
- Explicit gap documentation if partial
- Zero "false complete" declarations

**Evaluation:**
- Run 3 batches with new harness
- Measure accuracy vs. old harness
- Document improvement

---

## 6. RISKS & MITIGATIONS

| Risk | Impact | Mitigation |
|------|--------|------------|
| Over-engineering | High | Start with 1 test, expand gradually |
| RON bottleneck | Medium | Document templates, Simos can direct |
| Template proliferation | Medium | Version control, archive old templates |
| No improvement | Low | Measure before/after, pivot if needed |

---

## 7. DECISIONS REQUIRED

| # | Decision | Options | Recommendation |
|---|----------|---------|----------------|
| 1 | Integration approach | A/B/C | **B (Internal)** for control |
| 2 | First test | Various | **FORG completion verification** |
| 3 | Timeline | 1-4 weeks | **2 weeks** for pilot |
| 4 | Priority | P0/P1/P2 | **P1** (after zettel assessment) |

---

## 8. NEXT ACTIONS

**If approved:**
1. Create task specification YAML schema
2. Design FORG-completion-verification harness
3. Schedule pilot test (3 batches)
4. Build evaluation metrics

**If deferred:**
1. Add to PROJECT_CONTROL backlog
2. Revisit after zettel quality assessment
3. Monitor FORG/SCOUT issues for urgency

---

## 9. CROSS-REFERENCES

- **Source:** [[AutoAgent_Meta_Agent_System_2026-04-09]] — Original concept
- **Agents:** [[FORG_Agent_Project_S-001-0004]], [[SCOUT_Agent_Project_S-001-0014]]
- **Dashboard:** [[04-PROJECT-CONTROL]] — Track implementation

---

*Plan created 2026-04-14 — Meticulous approach to meta-agent integration*
