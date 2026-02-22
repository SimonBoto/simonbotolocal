---
aliases: [Template-Concept, Theoretical-Framework]
tags: [template, concept, theory, framework, mechanism, zettelkasten]
version: 2.0
---

# Template: Concept Note v2.0

**Purpose:** Define and explain theoretical concepts, frameworks, and mechanisms
**Target Length:** 400-800 words
**Location:** `02-Atomic/`
**Filename:** `CONCEPT_TOPIC_DETAIL_YYYYMMDD_XXX_000000.md`

---

## YAML Frontmatter

```yaml
---
uid: {{YYYYMMDD}}{{HHMMSS}}
type: concept
title: {{Concept Name}}
aliases: [{{Concept_Name}}, {{Abbreviation}}]
tags: [concept, {{DOMAIN}}, {{MECHANISM}}, phd]
parent-moc: [[55-MOCs/Mechanisms]] | [[55-MOCs/{{TOPIC_MOC}}]]
status: concept  # concept → validated → integrated
confidence: high  # high | medium | low
source: [[{{Ref_Origin}}]] | [[{{Book_Source}}]]
extraction-date: {{YYYY-MM-DD}}
---
```

---

## Structure

### 1. Core Definition (1-2 sentences)
**What is this concept?**

Example:
> Lipotoxicity is the metabolic dysfunction caused by excessive free fatty acid accumulation in non-adipose tissues (liver, muscle, pancreas), leading to insulin resistance and cellular damage.

---

### 2. Elaborated Explanation
**Deeper dive for readers new to the concept:**

{{Paragraph explaining origins, development, and current understanding}}

---

### 3. Key Mechanism (How It Works)
**Step-by-step biological process:**

1. **{{Step 1}}** — {{Description}}
2. **{{Step 2}}** — {{Description}}
3. **{{Step 3}}** — {{Description}}
4. **{{Step 4}}** — {{Description}}

**ASCII Diagram (if helpful):**
```
[Input] → [Process A] → [Process B] → [Output]
            ↓              ↓
         [Side Effect]  [Feedback]
```

---

### 4. Components/Elements
| Component | Role | Measurement |
|-----------|------|-------------|
| {{Element 1}} | {{Function}} | {{How measured}} |
| {{Element 2}} | {{Function}} | {{How measured}} |
| {{Element 3}} | {{Function}} | {{How measured}} |

---

### 5. Clinical/Research Relevance
**Why this concept matters:**

| Application | Example |
|-------------|---------|
| **Diagnosis** | {{How concept enables diagnosis}} |
| **Treatment** | {{How concept guides therapy}} |
| **Research** | {{How concept informs studies}} |
| **Prevention** | {{How concept enables prevention}} |

---

### 6. Evidence Base
| Study | Finding | Relevance |
|-------|---------|-----------|
| [[{{Ref_1}}]] | {{Key finding}} | {{Supports mechanism}} |
| [[{{Ref_2}}]] | {{Key finding}} | {{Validates concept}} |

---

### 7. Related Concepts
- **Parent concept:** [[{{Broader_Concept}}]] — {{Relationship}}
- **Child concepts:** [[{{Specific_1}}]] | [[{{Specific_2}}]] — {{How they extend}}
- **Contrasting concepts:** [[{{Opposite}}]] — {{Key difference}}
- **Confused with:** [[{{Similar}}]] — {{Distinction}}

---

### 8. Context/Chain
- **Introduced by:** [[{{Origin_Ref}}]]
- **Applied in:** [[{{Application_1}}]] | [[{{Application_2}}]]
- **Challenges:** [[{{Limitation_Atomic}}]]

---

### 9. RON Ledger
- **Input:** {{Source, course, discussion}}
- **Elaboration:** {{Minutes spent expanding}}
- **Connected to:** {{N}} atomics
- **Confidence evolution:** {{Started as X, now Y}}

---

## Quality Checklist

- [ ] Definition is precise and falsifiable
- [ ] Mechanism explained step-by-step
- [ ] Components identified
- [ ] Evidence cited
- [ ] Related concepts linked
- [ ] Clinical relevance stated

---

*Template: Concept Note v2.0 | Use for theoretical frameworks and mechanisms*
