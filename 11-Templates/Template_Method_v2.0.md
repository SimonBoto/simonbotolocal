---
aliases: [Template-Atomic-Method, Zettel-Method]
tags: [template, atomic, method, protocol, zettelkasten]
version: 2.0
---

# Template: Method Atomic

**Purpose:** Reproducible protocol or analytical procedure
**Target Length:** 400-800 words
**Status Progression:** seed → atomic → mature

---

## YAML Frontmatter

```yaml
---
uid: {{YYYYMMDD}}{{HHMMSS}}
aliases: [Method_ShortName_Descriptor]
tags: [atomic, method, {lab/field/computational}, {gc-ms/stats/clinical}, phd]
parent-moc: [[55-MOCs/Methods]] | [[55-MOCs/Protocols]]
status: seed
confidence: high
equipment: [[Equipment_Item]] | [[Software_Tool]]
source: [[Ref_Protocol_Paper]] | [[SOP_Document]]
created: {{YYYY-MM-DD}}
validated: {{YYYY-MM-DD}}  # when tested/verified
---
```

---

## Structure

### 1. Purpose (1 paragraph)
**What this method achieves and why it matters.**

Example:
> GC-MS analysis of urine organic acids enables simultaneous quantification of 40+ metabolites from a single 10mL urine sample, providing a comprehensive metabolic snapshot for insulin resistance assessment.

---

### 2. Prerequisites
**What must be true before starting:**

| Requirement | Specification | Check |
|-------------|---------------|-------|
| Sample type | Fasting morning urine, 10mL | ☐ |
| Collection | Boric acid preservative, -80°C within 2h | ☐ |
| Equipment | GC-MS with EI, DB-5MS column | ☐ |
| Reagents | Derivatization kit (MSTFA), internal standards | ☐ |
| Training | GC-MS operation certified | ☐ |

---

### 3. Step-by-Step Procedure

#### Phase 1: Sample Preparation (Time: 2h)
1. **Thaw** samples on ice (30 min)
2. **Vortex** 10 sec to resuspend
3. **Centrifuge** 3000g, 10 min, 4°C
4. **Transfer** 500μL supernatant to clean tube
5. **Add** 50μL internal standard mix
6. **Lyophilize** overnight or speedvac 4h

#### Phase 2: Derivatization (Time: 1.5h)
7. **Add** 100μL methoxyamine (20 mg/mL in pyridine), 37°C, 90 min
8. **Add** 150μL MSTFA, 37°C, 30 min
9. **Transfer** to GC vial with insert

#### Phase 3: GC-MS Analysis (Time: 45 min/sample)
10. **Inject** 1μL, splitless mode
11. **Oven program:** 70°C (2min) → 10°C/min → 325°C (10min)
12. **Acquire** full scan m/z 50-600
13. **Monitor** retention time stability via internal standards

---

### 4. Parameters & Settings
| Parameter | Setting | Rationale |
|-----------|---------|-----------|
| Column | DB-5MS, 30m × 0.25mm × 0.25μm | Standard for OA analysis |
| Carrier gas | He, 1.2 mL/min | Optimal linear velocity |
| Injector | 280°C, splitless | Volatilize derivatives |
| Ionization | EI, 70eV | Reproducible fragmentation |
| Detector | MS, full scan | Untargeted coverage |

---

### 5. Quality Control
**Internal:**
- 6-point calibration curve (R² > 0.99)
- Quality control pools (high/low) every 10 samples
- Internal standard CV < 15%

**External:**
- NIST SRM 1950 (if available)
- Inter-lab comparison samples
- Blind duplicates (5% of samples)

---

### 6. Data Processing
**Software:** [[Software_Metabolomics_Pipeline]]

**Steps:**
1. Deconvolution (Agilent MassHunter or AMDIS)
2. Compound ID via NIST library + retention index
3. Peak integration (targeted confirmation)
4. Normalization to creatinine + internal standards
5. Outlier detection (QC-based)

---

### 7. Troubleshooting
| Problem | Likely Cause | Solution |
|---------|--------------|----------|
| Poor peak shape | Active sites in liner | Replace liner, check column cut |
| RT drift | Column degradation | Trim 10cm from column head |
| Low sensitivity | MS source dirty | Clean source, check multiplier |
| Derivatization failure | Moisture in reagents | Fresh MSTFA, dry samples completely |

---

### 8. Validation & Performance
| Metric | Acceptance | Achieved |
|--------|------------|----------|
| Intra-day CV | < 10% | ___ |
| Inter-day CV | < 15% | ___ |
| Recovery | 80-120% | ___ |
| LOD (S/N 3:1) | < 1 μM | ___ |
| LOQ (S/N 10:1) | < 5 μM | ___ |

---

### 9. Safety & Compliance
- **PPE:** Lab coat, nitrile gloves, safety glasses
- **Chemicals:** MSTFA (toxic, corrosive) — fume hood required
- **Waste:** Halogenated waste stream
- **Documentation:** Batch records, chain of custody

---

### 10. Related Methods
- [[Method_LCMS_Metabolomics]] — Alternative platform
- [[Method_NMR_OA_Profiling]] — Confirmatory method
- [[Method_Creatinine_Normalization]] — Data processing

---

### 11. RON Ledger
- **Input:** SOP review, 2 papers, 30 min write
- **Output:** Validated method atomic
- **Tested:** Y/N (date if yes)
- **Next:** Optimize derivatization time

---

*Template: Method Atomic v2.0 | Use for reproducible protocols*
