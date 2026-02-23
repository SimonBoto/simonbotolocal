---
aliases: [Template-Zettel-Claim]
tags: [template, zettel, claim, zettelkasten, v4.1]
version: 2.1
---

# Template: Claim Zettel v2.1

**Purpose:** Single, falsifiable claim with evidence and implications  
**Target Length:** 300-600 words  
**Output Location:** `03-Zettels/Conscious/`  
**Status:** conscious → subconscious (after 30 days + review)

---

## YAML Frontmatter (v4.1)

```yaml
---
uid: Z-{{DDD}}-{{SSSS}}
type: zettel-claim
title: {{Claim Statement}}
aliases: [Z-{{DDD}}-{{SSSS}}, {{ShortSlug}}]
domain: {{DDD}}
domain-name: {{DomainName}}
tags: [zettel, claim, {{topic}}, {{aspect}}, conscious]
parent-moc: [[MOC-{{DDD}}]]
source: [[{{LitNote_Source}}]]
confidence: high  # high | medium | low
created: {{YYYY-MM-DD}}
extraction-date: {{YYYY-MM-DD}}
---
```

---

## Structure

### 1. Core Claim (1 sentence)
**The single falsifiable statement this atomic makes.**

Example: 
> Adipic acid elevation (>2.0 μmol/mmol creatinine) precedes HOMA-IR elevation by 6-12 months in pre-diabetic individuals.

---

### 2. Evidence Base (The "Because")
| Source | Finding | Relevance |
|--------|---------|-----------|
| [[Ref_Smith_2023]] | Adipic 1.8x higher in pre-diabetics vs controls (p<0.001) | Direct support |
| [[Ref_Chen_2022]] | Longitudinal: adipic rises 9mo before HOMA-IR | Temporal precedence |
| [[Ref_Lee_2024]] | ROC AUC 0.84 for predicting IR development | Predictive validity |

**Minimum:** 2 sources  
**Ideal:** 3-5 sources

---

### 3. Mechanism (The "How")
**Step-by-step biological explanation:**

1. Mitochondrial β-oxidation impaired
2. Fatty acids shunted to ω-oxidation (CYP450)
3. Dicarboxylic acids (adipic, suberic) accumulate
4. Reflects metabolic stress before glucose rises
5. Early warning signal

**Include:** ASCII diagram if pathway complex

---

### 4. Implications (The "So What")

**For PhD/METHAP:**
- Include adipic in baseline screening panel
- Monitor longitudinal trajectory
- Correlate with TPO-Ab, fT3

**For Clinic:**
- Screen high-risk patients (obesity, family history)
- Earlier intervention window (6-12 months)
- Monitor response to mitochondrial support

**For Research:**
- Validate in larger cohort
- Mechanism studies (carnitine shuttle)
- Intervention trials targeting adipic reduction

---

### 5. Counter-Evidence & Limitations
**What could falsify this claim?**
- Null result in larger cohort
- Confounding by diet (omega-oxidation dietary influence)
- Assay variability (GC-MS standardization issues)

**Confidence adjustment:** Currently HIGH, but needs replication.

---

### 6. Context/Chain (The "Where")
- **Emerges from:** [[Previous_Claim_Metabolic_Stress]]
- **Supports:** [[Larger_Framework_Early_IR_Detection]]
- **Challenges:** [[Competing_Claim_HOMA_IR_Sufficient]]
- **Leads to:** [[Next_Claim_Intervention_Target]]

**Rule:** Minimum 2 links (1 in, 1 out)

---

### 7. Questions/Open Threads
1. What is the optimal adipic cutoff for clinical use?
2. Does adipic elevation correlate with specific dietary patterns?
3. How early can we detect adipic changes (3mo? 6mo? 12mo pre-HOMA-IR)?
4. What interventions most effectively reduce adipic?

**Minimum:** 2 questions

---

### 8. RON Ledger
- **Input:** 3 papers, 45 min analysis
- **Output:** This atomic, linked to 4 others
- **Next Action:** Find longitudinal cohort data

---

*Template: Claim Atomic v2.0 | Use for single falsifiable claims*
