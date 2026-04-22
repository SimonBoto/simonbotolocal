---
uid: FORG-PROGRAM-001
type: program
title: "FORG Extraction Program — AutoResearch Protocol"
date: 2026-04-22
status: active
---

# FORG Extraction Program

> **Autonomous extraction protocol for CGPT conversations.**
> **FORG reads this file, executes extractions, logs results.**

---

## Mission

Process CGPT conversations into structured LitNotes and atomic zettels.
Quality over speed. Evidence over speculation.

---

## Extraction Rules

### 1. Read Source Completely

- Read entire CGPT conversation
- Identify: core claims, mechanisms, evidence, clinical relevance
- Note: contradictions, uncertainties, personal opinions

### 2. Create LitNote

**YAML Required:**
```yaml
---
uid: L-XXX-XXXX
type: litnote
title: "Topic_L-XXX-XXXX"
source-origin: "CGPT-XXXX"
source-cgpt: "[[CGPT_XXXX_Topic_CGPT-XXXX]]"
extraction-date: YYYY-MM-DD
zettel-count: N
parent-moc: "[[MOC-Topic]]"
parent-index: "[[01-Literature-Index]]"
status: extracted
---
```

**Body Required:**
- Core claim (1 sentence)
- Key findings (3-5 bullets)
- Mechanisms (if explained)
- Clinical relevance (if applicable)
- Source: Link to CGPT conversation

### 3. Extract Zettels

**Minimum:** 3 zettels per LitNote
**Maximum:** 8 zettels per LitNote
**Quality:** Each zettel must be atomic, evidence-based, linkable

**Zettel YAML:**
```yaml
---
uid: Z-XXX-XXXX
type: zettel
title: "Topic_Z-XXX-XXXX"
domain: XXX
source-litnote: "[[Topic_L-XXX-XXXX]]"
extraction-date: YYYY-MM-DD
parent-moc: "[[MOC-Topic]]"
status: conscious
---
```

### 4. Validate Before Saving

**Checklist:**
- [ ] YAML parses correctly
- [ ] All links use full filenames (not bare UIDs)
- [ ] Source linked to CGPT conversation
- [ ] Clinical relevance marked
- [ ] No hallucinated content
- [ ] Mechanisms have evidence

### 5. Log Results

**Format:**
```
[HH:MM] CGPT-XXXX — Status — Zettels created — Quality score — Notes
```

---

## Quality Criteria

| Score | Meaning | Action |
|-------|---------|--------|
| **A (90-100%)** | Excellent | Save directly |
| **B (70-89%)** | Good | Save, flag for review |
| **C (50-69%)** | Fair | Save, needs revision |
| **D (<50%)** | Poor | Discard, log reason |

**Scoring:**
- YAML valid: 20%
- Core claims clear: 20%
- Evidence present: 20%
- Clinical relevance: 20%
- Links valid: 20%

---

## Constraints

### Do NOT:
- Create content not in source CGPT
- Link to imaginary zettels
- Skip YAML validation
- Extract >8 zettels per conversation
- Process >10 conversations per night

### Do:
- Mark uncertainty honestly
- Link to existing zettels when relevant
- Flag contradictions
- Note clinical applications
- Save work every 2 conversations

---

## Error Handling

| Error | Response |
|-------|----------|
| YAML invalid | Fix and retry |
| Link broken | Flag, continue |
| Source unclear | Log, skip to next |
| Token limit | Save progress, stop |
| Quality <50% | Discard, log reason |

---

## Shared Memory Integration

### After Each Extraction

```python
from shared_memory import SharedMemory

with SharedMemory() as mem:
    # 1. Log knowledge
    mem.add_knowledge('FORG', 'extraction', {
        'cgpt_id': 'CGPT-XXXX',
        'topic': 'Topic',
        'zettels_created': N,
        'quality_score': 0.XX,
        'key_findings': ['finding1', 'finding2']
    }, source='CGPT-XXXX')
    
    # 2. Queue for RON review
    mem.add_extraction(
        batch_id='BATCH-001',
        cgpt_id='CGPT-XXXX',
        litnote_path='pending/CGPT_XXXX_LitNote.md',
        zettel_count=N,
        quality_score=0.XX
    )
    
    # 3. Update agent state
    mem.update_agent_state('FORG', 'working', 
                          current_task='CGPT-XXXX')
```

### End of Night Shift

```python
with SharedMemory() as mem:
    # Log completion
    mem.update_agent_state('FORG', 'idle',
                          current_task='Batch-001 complete')
    
    # Summary for RON
    pending = mem.get_pending_extractions()
    print(f"{len(pending)} extractions ready for review")
```

### Auto-Index to QMD (Critical)

After every 2 extractions AND at end of batch:

```bash
# Index new files to QMD
cd ~/Workspaces/TheOptimizedBrain
qmd index

# Verify searchable
qmd search "topic you just extracted"
```

**Why:** New zettels must be searchable by morning.
**When:** Every 2 extractions + end of batch.
**Cost:** ~5 seconds per index.

---

## Success Metrics

| Metric | Target |
|--------|--------|
| Conversations per night | 10 |
| Zettels per conversation | 3-8 |
| Quality score | >70% |
| YAML valid | 100% |
| Cost per conversation | <$0.25 |
| Shared memory sync | 100% |

---

## Update Log

| Date | Change | Trigger |
|------|--------|---------|
| 2026-04-22 | Program created | ISSUE-029 activation |
| 2026-04-22 | Shared memory integration | ISSUE-056 Phase 2 |

---

*Program: FORG-PROGRAM-001*
*Agent: FORG (Grok 4.1 Fast)*
*Queue: [[queue-scout.md]]*
*Shared Memory: [[SHARED-MEMORY-ARCHITECTURE.md]]*
