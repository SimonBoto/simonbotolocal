---
aliases: [Template-Zettel-Concept]
tags: [template, zettel, concept, zettelkasten, v4.1]
version: 2.1
---

# Template: Concept Zettel v2.1

**Purpose:** Define and explain theoretical concepts, frameworks, and mechanisms  
**Target Length:** 400-800 words  
**Output Location:** `03-Zettels/Conscious/`  
**Status:** conscious → subconscious (after 30 days + review)

---

## YAML Frontmatter (v4.1)

```yaml
---
uid: Z-{{DDD}}-{{SSSS}}
type: zettel-concept
title: {{Concept Name}}
aliases: [Z-{{DDD}}-{{SSSS}}, {{ConceptName}}, {{Abbreviation}}]
domain: {{DDD}}
domain-name: {{DomainName}}
tags: [zettel, concept, {{domain}}, {{mechanism}}, conscious]
parent-moc: [[MOC-{{DDD}}]]
source: [[{{LitNote_Source}}]]
confidence: high  # high | medium | low
created: {{YYYY-MM-DD}}
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
