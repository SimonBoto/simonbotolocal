---
aliases: [Template-Gap, Research-Gap]
tags: [template, gap, limitation, future-work, zettelkasten]
version: 2.0-final
status: approved
approved-by: Simos
approved-date: 2026-02-20
---

# Template: Gap Note v2.0

**Purpose:** Document research gaps, limitations, and unanswered questions
**Target Length:** 200-400 words
**Location:** `02-Atomic/` (when extracted from refs) or `33-Atomic/` (staging)
**Filename:** `GAP_TOPIC_DETAIL_YYYYMMDD_XXX_000000.md`

---

## YAML Frontmatter

```yaml
---
uid: {{YYYYMMDD}}{{HHMMSS}}
type: gap
title: {{Gap Description}}
aliases: [Gap_{{ShortSlug}}]
tags: [gap, {{TOPIC}}, {{METHOD}}, limitation, phd]
parent-moc: [[55-MOCs/PhD_IR_MOC]] | [[55-MOCs/{{TOPIC_MOC}}]]
status: gap  # gap → identified → addressed → resolved
confidence: high  # high | medium | low
source: [[{{Ref_Origin}}]]
extraction-date: {{YYYY-MM-DD}}
---
```

---

## Structure

### 1. The Gap (1 sentence)
**What is missing or unknown?**

Example:
> Optimal adipic acid cutoffs for insulin resistance diagnosis have not been validated in Mediterranean populations.

---

### 2. Current State (What We Know)
**Summarize existing evidence:**

| What | Evidence | Limitation |
|------|----------|------------|
| {{Known 1}} | {{Source}} | {{Constraint}} |
| {{Known 2}} | {{Source}} | {{Constraint}} |

---

### 3. The Problem (Why It Matters)
**Consequences of this gap:**

- **Clinical:** {{Impact on patient care}}
- **Research:** {{Impact on study design}}
- **Policy:** {{Impact on guidelines}}

---

### 4. Context/Chain
- **Identified in:** [[{{Source_Ref}}]]
- **Related gaps:** [[{{Gap_1}}]] | [[{{Gap_2}}]]
- **Blocks:** [[{{Atomic_Claim}}]] — {{How}}

---

### 5. Potential Solutions (REQUIRED)
**How to address this gap:**

| Approach | Feasibility | Timeline |
|----------|-------------|----------|
| {{Solution 1}} | {{High/Med/Low}} | {{Short/Long}} |
| {{Solution 2}} | {{High/Med/Low}} | {{Short/Long}} |
| {{Solution 3}} | {{High/Med/Low}} | {{Short/Long}} |

**Minimum:** 1 solution  
**Ideal:** 2-3 solutions

---

### 6. METHAP/PhD Relevance
**How addressing this advances our work:**

- **Study design:** {{Modification}}
- **Biomarker validation:** {{Specific test}}
- **Publication opportunity:** {{Angle}}

---

### 7. Priority Assessment (0–20 Scale)
**Rate each criterion 0–5, total determines priority:**

| Criterion | Score (0–5) | Rationale |
|-----------|-------------|-----------|
| **Impact** | {{0–5}} | {{Why this matters}} |
| **Feasibility** | {{0–5}} | {{Can we actually do this?}} |
| **Novelty** | {{0–5}} | {{How new is this?}} |
| **Alignment** | {{0–5}} | {{Fits our PhD/METHAP?}} |

**Total:** {{Sum}}/20 → **{{Priority}}**
- **18–20:** Critical (address immediately)
- **14–17:** High (this sprint)
- **10–13:** Medium (next sprint)
- **0–9:** Low (backlog)

---

### 8. RON Ledger
- **Input:** {{Source of gap identification}}
- **Discovery date:** {{YYYY-MM-DD}}
- **Status change:** {{identification → planning → addressing}}
- **Resolution target:** {{YYYY-MM-DD}}

---

## Quality Checklist

- [ ] Gap stated as single falsifiable absence
- [ ] Current evidence summarized
- [ ] Consequences explained
- [ ] Solutions proposed
- [ ] PhD relevance clear
- [ ] Priority scored

---

*Template: Gap Note v2.0 | Use for research limitations and future work*
