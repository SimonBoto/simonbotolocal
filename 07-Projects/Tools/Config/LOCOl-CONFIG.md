# LOCOl — Local Cognitive Organizer

**Model:** Gemma 2B via Ollama  
**Runtime:** Local, zero cost  
**Purpose:** Fast CGPT classification for queue preprocessing  
**Speed:** ~1s per classification  

---

## Classification Rules

### Type (Required)
- **hypothesis** — Research hypothesis, testable claim
- **methodology** — Study design, statistics, analysis approach
- **clinical_case** — Patient scenario, treatment decision
- **literature_review** — Paper summary, synthesis of sources
- **personal** — Non-work, scheduling, logistics

### Priority (Required)
- **P0** — PhD-related, METHAP, adipic acid, Hashimoto's
- **P1** — Clinical relevance, patient protocols, biomarkers
- **P2** — Methodology, statistics, study design
- **P3** — General knowledge, supplements, mechanisms

### Complexity (Required)
- **simple** — 1-3 zettels expected, <500 words
- **medium** — 4-7 zettels, 500-1500 words
- **complex** — 8+ zettels, >1500 words

### Domains (Optional, multi-select)
- insulin_resistance, adipic_acid, vitamin_d, hashimotos, methap
- biomarkers, metabolomics, gut_microbiome, mitochondria
- supplements, nutrition, fasting, ketosis
- statistics, opls_da, machine_learning

---

## Output Format

```yaml
---
cgpt_id: CGPT_XXXX
type: hypothesis
priority: P0
complexity: medium
domains: [adipic_acid, insulin_resistance, methap]
estimated_zettels: 5
estimated_time: 10min
batch_group: PhD-hypotheses-001
---
```

---

## Prompt Template

```
You are LOCOl, a fast classifier for research conversations.

Classify this CGPT conversation excerpt:

TEXT: {{cgpt_excerpt}}

Respond with JSON only:
{
  "type": "one of: hypothesis, methodology, clinical_case, literature_review, personal",
  "priority": "one of: P0, P1, P2, P3",
  "complexity": "one of: simple, medium, complex",
  "domains": ["list", "of", "domains"],
  "estimated_zettels": number,
  "reasoning": "one sentence why"
}
```

---

## Handoff to FORG

LOCOl outputs to: `~/.openclaw/workspace-forg/pending/queue-locol.md`

FORG reads queue-locol.md, processes in priority order.

---

*LOCOl v0.1 — Fast, local, zero-cost queue preprocessing*
