---
uid: SCOUT-PROGRAM-001
type: program
title: "SCOUT Exploration Program — Queue Intelligence"
date: 2026-04-22
status: active
---

# SCOUT Exploration Program

> **Autonomous queue analysis and prioritization.**
> **SCOUT reads conversations, ranks them, guides FORG.**

---

## Mission

Analyze 671 CGPT conversations and prioritize them for FORG extraction.
Maximize clinical value, minimize redundancy.

---

## Analysis Dimensions

### 1. Clinical Relevance (0-1)

| Score | Criteria |
|-------|----------|
| **0.9-1.0** | Direct patient care, protocols, biomarkers |
| **0.7-0.9** | Disease mechanisms, drug interactions |
| **0.5-0.7** | General metabolism, nutrition |
| **0.3-0.5** | Technology, methods, tools |
| **0-0.3** | Personal, philosophy, off-topic |

### 2. Novelty (0-1)

| Score | Criteria |
|-------|----------|
| **0.9-1.0** | Not in vault, unique insight |
| **0.7-0.9** | Partially covered, new angle |
| **0.5-0.7** | Similar to existing zettels |
| **0.3-0.5** | Well-covered in vault |
| **0-0.3** | Redundant, duplicate |

### 3. Priority Score

```
Priority = (Clinical_Relevance × 0.6) + (Novelty × 0.4)
```

---

## Shared Memory Integration

### After Each Analysis

```python
from shared_client import AgentMemory

with AgentMemory('SCOUT') as agent:
    # Log analysis
    agent.learn('analysis', {
        'cgpt_id': cgpt_id,
        'topic': topic,
        'priority_score': priority,
        'clinical_relevance': clinical,
        'novelty_score': novelty
    }, source=cgpt_id)
    
    # Add discovery if high value
    if priority > 0.7:
        agent.add_discovery(
            'priority',
            f"CGPT-{cgpt_id} scored {priority:.2f}: {topic}",
            confidence=priority,
            related_cgpt=cgpt_id
        )
```

### After Queue Update

```python
with AgentMemory('SCOUT') as agent:
    agent.learn('queue_update', {
        'batch_id': batch_id,
        'prioritized': prioritized_list,
        'count': len(prioritized_list)
    })
    
    agent.set_state('idle', f'Queue updated: {len(prioritized_list)} items')
```

### Check Agent Status

```python
with AgentMemory('SCOUT') as agent:
    states = agent.get_agent_states()
    for state in states:
        print(f"{state['agent']}: {state['status']}")
```

---

## Queue Update Protocol

### Daily (00:00)

1. **Read** all unprocessed CGPT conversations
2. **Score** each on clinical relevance and novelty
3. **Sort** by priority score
4. **Log** top 10 to shared memory
5. **Update** queue-scout.md
6. **Notify** FORG of new priorities

### Weekly (Sunday)

1. **Review** extraction patterns
2. **Identify** knowledge gaps
3. **Adjust** scoring weights
4. **Report** to RON

---

## Discovery Types

| Type | When | Action |
|------|------|--------|
| **priority** | Score >0.7 | Log, queue first |
| **clinical** | Clinical >0.8 | Flag for RON attention |
| **pattern** | Multiple related | Suggest synthesis |
| **gap** | Missing knowledge | Suggest new source |

---

## Success Metrics

| Metric | Target |
|--------|--------|
| Conversations analyzed/night | 50-100 |
| Priority accuracy | >80% (RON approval) |
| Novelty detection | >70% |
| Queue coverage | 100% weekly |
| Cost | $0 (free model) |

---

## Update Log

| Date | Change | Trigger |
|------|--------|---------|
| 2026-04-22 | Program created | ISSUE-029 activation |
| 2026-04-22 | Shared memory integration | ISSUE-056 Phase 3 |

---

*Program: SCOUT-PROGRAM-001*
*Agent: SCOUT (Qwen3 Next 80B)*
*Queue: [[queue-scout.md]]*
*Shared Memory: [[SHARED-MEMORY-ARCHITECTURE.md]]*
