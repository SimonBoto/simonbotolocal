---
aliases: [Template-Zettel-Protocol]
tags: [template, zettel, protocol, zettelkasten, v4.1]
version: 2.1
---

# Template: Protocol Zettel v2.1

**Purpose:** Study protocol, clinical trial design, or SOP  
**Target Length:** 500-1000 words  
**Output Location:** `03-Zettels/Conscious/`  
**Status:** conscious → subconscious (after 30 days + review)

---

## YAML Frontmatter (v4.1)

```yaml
---
uid: Z-{{DDD}}-{{SSSS}}
type: zettel-protocol
title: {{Protocol Name}}
aliases: [Z-{{DDD}}-{{SSSS}}, {{ShortName}}]
domain: {{DDD}}
domain-name: {{DomainName}}
tags: [zettel, protocol, {{design-type}}, {{phase}}, conscious]
parent-moc: [[MOC-{{DDD}}]]
source: [[{{LitNote_Source}}]]
confidence: high
created: {{YYYY-MM-DD}}
extraction-date: {{YYYY-MM-DD}}
---
```

---

## Structure

### 1. Protocol Summary (TL;DR)
**One-paragraph overview:**
- What (intervention/observation)
- Who (population)
- Where (site)
- When (duration)
- Why (primary objective)
- How (design)

Example:
> The METHAP Trial is a 12-week randomized controlled trial of high-dose vitamin D (50,000 IU/week) in 50 adults with Hashimoto's thyroiditis and insulin resistance, conducted at the University of Crete, primary endpoint: change in TPO-Ab titers and adipic acid levels.

---

### 2. Objectives

#### Primary Objective
> To determine whether high-dose vitamin D supplementation reduces thyroid antibody titers (TPO-Ab) in Hashimoto's patients with insulin resistance.

#### Secondary Objectives
- Change in adipic acid levels (mitochondrial function)
- Change in HOMA-IR (insulin sensitivity)
- Change in fT3/fT4 ratio (thyroid function)
- Symptom scores (thyroid-specific QoL)
- Safety monitoring (hypercalcemia)

#### Exploratory Objectives
- Gut microbiome changes
- miR-21/miR-155 expression
- Individual response prediction

---

### 3. Study Design

| Element | Specification |
|---------|---------------|
| **Design** | Parallel-group randomized controlled trial |
| **Allocation** | 1:1 (intervention:control) |
| **Blinding** | Open-label (vitamin D cannot be blinded) |
| **Duration** | 12 weeks intervention + 4 weeks follow-up |
| **Setting** | University research clinic |
| **Sample size** | N=50 (25 per group) |

**Justification for design choices:**
- Parallel-group: Avoids carryover effects
- 12 weeks: Sufficient for vitamin D equilibration
- Open-label: Acceptable given objective biomarker endpoints

---

### 4. Population

#### Inclusion Criteria
- [ ] Age 18-65 years
- [ ] Hashimoto's thyroiditis (TPO-Ab >100 IU/mL)
- [ ] Insulin resistance (HOMA-IR >2.5)
- [ ] 25(OH)D <30 ng/mL at baseline
- [ ] Stable thyroid medication (if any) for 3 months
- [ ] Signed informed consent

#### Exclusion Criteria
- [ ] Diabetes mellitus (HbA1c >6.5%)
- [ ] Hypercalcemia (Ca >10.5 mg/dL)
- [ ] Kidney disease (eGFR <60)
- [ ] Liver disease (ALT >3x ULN)
- [ ] Pregnancy/lactation
- [ ] Vitamin D supplementation >1000 IU/day
- [ ] Immunosuppressive therapy

#### Recruitment Strategy
- Clinic referrals (endocrinology)
- Patient support groups
- Social media (targeted)
- Flyers in pharmacies

---

### 5. Intervention

#### Experimental Group (n=25)
**Intervention:** Vitamin D3 (cholecalciferol)
- **Dose:** 50,000 IU once weekly
- **Duration:** 12 weeks (12 doses total)
- **Route:** Oral capsule
- **Timing:** With evening meal (fat enhances absorption)

**Co-interventions:**
- Standard care for Hashimoto's continued
- Dietary counseling (Mediterranean diet)

#### Control Group (n=25)
**Intervention:** Standard care only
- No vitamin D supplementation
- Same dietary counseling
- Same monitoring schedule

**Rescue criteria:** Control participants with 25(OH)D <10 ng/mL at 6 weeks will be offered open-label vitamin D (ethical safeguard).

---

### 6. Schedule of Assessments

| Visit | Week | Procedures | Samples |
|-------|------|------------|---------|
| **Screening** | -4 to 0 | Consent, eligibility, baseline | Screening labs |
| **Baseline** | 0 | Randomization, demographics | Blood, urine, stool |
| **Week 4** | 4 | Safety check (calcium) | Blood only |
| **Week 8** | 8 | Adherence check | Blood only |
| **Endpoint** | 12 | All assessments | Blood, urine, stool |
| **Follow-up** | 16 | Durability check | Blood only |

---

### 7. Outcome Measures

#### Primary Endpoint
**TPO-Ab titer change** (Week 0 vs Week 12)
- Measured by: Chemiluminescence immunoassay
- Unit: IU/mL
- Expected effect: 30% reduction in intervention group

#### Secondary Endpoints
| Measure | Tool/Method | Timepoints |
|---------|-------------|------------|
| Adipic acid | GC-MS (urine) | 0, 12w |
| HOMA-IR | Glucose + insulin | 0, 4w, 8w, 12w |
| fT3/fT4 | Chemiluminescence | 0, 12w |
| ThyQoL | Questionnaire | 0, 12w |
| 25(OH)D | LC-MS/MS | 0, 4w, 8w, 12w |

---

### 8. Safety Monitoring

#### Adverse Events (AEs)
**Expected:**
- Mild GI upset (vitamin D)
- Fatigue (transient)

**Serious AEs (stop criteria):**
- Hypercalcemia (>11.5 mg/dL)
- Nephrolithiasis
- Arrhythmia

#### Data Safety Monitoring Board (DSMB)
- Independent physician (not involved in study)
- Review after n=25 enrolled
- Authority to recommend stopping for safety

---

### 9. Statistical Analysis

#### Sample Size Justification
- Power: 80%
- Alpha: 0.05 (two-sided)
- Expected effect: 30% TPO-Ab reduction
- SD: 40% (based on pilot data)
- **Required:** 22 per group → recruit 25 (10% dropout)

#### Analysis Plan
- **Primary:** Intention-to-treat, ANCOVA (adjusting for baseline)
- **Secondary:** Per-protocol sensitivity analysis
- **Missing data:** Multiple imputation
- **Multiple comparisons:** Bonferroni correction for secondary endpoints

---

### 10. Ethics & Regulatory
- **IRB:** University of Crete Ethics Committee (approval: {{date}})
- **Consent:** Written informed consent in Greek
- **Data protection:** GDPR compliant, pseudonymized data
- **Registration:** ClinicalTrials.gov #NCTXXXXXXXX (pending)
- **Insurance:** University liability coverage

---

### 11. Related Protocols
- [[Protocol_VitD_Hashimoto_Previous_Study]] — Precedent design
- [[Protocol_GC-MS_Sample_Processing]] — Lab methods
- [[Protocol_STATIN_Trial_IR]] — Similar population

---

### 12. RON Ledger
- **Input:** IRB application, grant proposal, 3 papers
- **Output:** Full protocol atomic
- **Status:** Draft → IRB submission pending
- **Next:** Finalize sample size, register trial

---

*Template: Protocol Atomic v2.0 | Use for study designs and clinical trials*
