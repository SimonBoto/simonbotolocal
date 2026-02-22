# Zettel Architecture Design: The Insulin Example
## 04-Zettels/ System Specification

**Design Date:** 2026-02-22  
**Working Example:** Insulin Signaling & Resistance  
**Philosophy:** Strict atomicity + dense linking + MOC anchoring

---

## 1. The Core Rules

### 1.1 Zettel Definition (Strict)
- **One idea per zettel** — undivided unit of knowledge
- **50-200 words** — short enough to recombine, long enough to be self-contained
- **Written "as if for print"** — understandable without context
- **Atomic** — cannot be split further without losing meaning

### 1.2 Linking Rules (Critical)

**Every zettel MUST have:**
- **Minimum 2 links** to existing zettels (connection to the network)
- **Maximum 5 links** (too many = unfocused, too few = isolated)
- **Optimal: 3 links** (the "zettel sweet spot")

**Link types:**
```markdown
[[Z_INSULIN_RECEPTOR_STRUCTURE_001]]  ← Upstream (prerequisite)
[[Z_IRS_PHOSPHORYLATION_003]]          ← Parallel (related concept)
[[Z_AKT_ACTIVATION_005]]               ← Downstream (consequence)
```

### 1.3 MOC Relationship

**Every zettel MUST belong to at least ONE MOC:**
- Primary MOC in YAML: `parent-moc: [[55-MOCs/Insulin_Signaling]]`
- Can have secondary MOCs in content: `Also relevant to: [[55-MOCs/Metabolic_Syndrome]]`

**Why?** MOCs are entry points. Without MOC anchoring, zettels become undiscoverable.

---

## 2. Zettel Types

### Type A: Concept Zettel (Z_)
**Purpose:** Define a concept, mechanism, or entity
**Example:** Insulin receptor structure, IRS proteins, Akt kinase

### Type B: Claim Zettel (Z_CLAIM_)
**Purpose:** Single falsifiable statement with evidence
**Example:** "Akt phosphorylates AS160 to enable GLUT4 translocation"

### Type C: Mechanism Zettel (Z_MECH_)
**Purpose:** Step-by-step process description
**Example:** "Insulin receptor autophosphorylation cascade"

### Type D: Contrast Zettel (Z_CONT_)
**Purpose:** Compare/contrast two states or concepts
**Example:** "Normal vs. insulin-resistant adipocyte signaling"

### Type E: Question Zettel (Z_Q_)
**Purpose:** Open research question with current understanding
**Example:** "Why does IRS-1 serine phosphorylation cause insulin resistance?"

---

## 3. The Insulin Example: Building a Zettel Web

### Source Material (from PubMed search):
> "Once the tyrosine kinase of insulin receptor is activated, it promotes autophosphorylation of the β subunit, where phosphorylation of three tyrosine residues (Tyr-1158, Tyr-1162, and Tyr-1163) is required for amplification of the kinase activity."
> — PMC3083885

### Step 1: Extract True Zettels

**Zettel 1: Concept — Insulin Receptor Structure**
```markdown
---
uid: 20260222001
type: zettel
title: Insulin Receptor Structure
aliases: [Z_Insulin_Receptor, Z_INSR]
tags: [zettel, insulin, receptor, structure, membrane]
parent-moc: [[55-MOCs/Insulin_Signaling]]
source: [[Ref_GutierrezRodelo_IR_Mechanisms_2017]]
confidence: high
---

# Z: Insulin Receptor Structure

The insulin receptor (INSR) is a tetrameric tyrosine kinase receptor composed of two extracellular α subunits and two transmembrane β subunits linked by disulfide bonds.

**Key features:**
- α subunit: Insulin binding (extracellular)
- β subunit: Tyrosine kinase domain (intracellular)
- Location: Plasma membrane of target cells (muscle, adipose, liver)

**Function:** Binding insulin activates the β subunit kinase domain, initiating signal transduction.

**Links:** 
- Upstream: [[Z_Insulin_Hormone_Structure_002]]
- Downstream: [[Z_INSR_Autophosphorylation_003]]
- Parallel: [[Z_IGF1_Receptor_004]]
```

**Zettel 2: Mechanism — INSR Autophosphorylation**
```markdown
---
uid: 20260222003
type: zettel-mech
title: Insulin Receptor Autophosphorylation
aliases: [Z_INSR_Autophosphorylation, Z_INSR_Activation]
tags: [zettel, insulin, mechanism, phosphorylation, activation]
parent-moc: [[55-MOCs/Insulin_Signaling]]
source: [[Ref_GutierrezRodelo_IR_Mechanisms_2017]]
confidence: high
---

# Z: INSR Autophosphorylation Mechanism

Insulin binding induces conformational change in the INSR, activating the β subunit tyrosine kinase domain.

**Activation cascade:**
1. Insulin binds α subunit → conformational change
2. β subunit kinase activates
3. **Autophosphorylation at three tyrosine residues:** Tyr-1158, Tyr-1162, Tyr-1163
4. Phosphorylation amplifies kinase activity (positive feedback)
5. Active receptor now phosphorylates downstream substrates (IRS proteins)

**Critical:** All three tyrosines must phosphorylate for full activation.

**Links:**
- Prerequisite: [[Z_Insulin_Receptor_Structure_001]]
- Downstream: [[Z_IRS_Recruitment_005]]
- Contrast: [[Z_INSR_Resistance_Mutations_006]]
```

**Zettel 3: Concept — IRS Proteins**
```markdown
---
uid: 20260222005
type: zettel
title: Insulin Receptor Substrate (IRS) Proteins
aliases: [Z_IRS, Z_IRS1, Z_IRS2]
tags: [zettel, insulin, substrate, adapter, signaling]
parent-moc: [[55-MOCs/Insulin_Signaling]]
source: [[Ref_Nature_IR_Review_2022]]
confidence: high
---

# Z: IRS Proteins as Signal Adapters

IRS proteins are cytosolic adapter proteins that bridge activated INSR to downstream PI3K signaling.

**Key isoforms:**
- **IRS-1:** Primary in muscle and adipose
- **IRS-2:** Primary in liver, also β-cells

**Mechanism:**
- INSR tyrosine kinase phosphorylates IRS proteins on YXXM motifs
- Phosphotyrosines recruit p85 regulatory subunit of PI3K
- Activates PI3K → PIP3 generation → Akt recruitment

**Clinical relevance:** IRS-1/2 mutations cause severe insulin resistance syndromes.

**Links:**
- Upstream: [[Z_INSR_Autophosphorylation_003]]
- Downstream: [[Z_PI3K_Activation_007]]
- Disease: [[Z_IRS_Serine_Phosphorylation_IR_008]]
```

**Zettel 4: Claim — Serine Phosphorylation Causes IR**
```markdown
---
uid: 20260222008
type: zettel-claim
title: IRS Serine Phosphorylation Causes Insulin Resistance
aliases: [Z_CLAIM_SerinePhos_IR]
tags: [zettel, claim, insulin-resistance, mechanism, serine]
parent-moc: [[55-MOCs/Insulin_Resistance]]
source: [[Ref_Cell_IR_Mechanisms_2012]]
confidence: high
---

# Z_CLAIM: Serine Phosphorylation → IR

**Claim:** Excessive serine phosphorylation of IRS proteins (especially IRS-1) is a primary mechanism of insulin resistance.

**Evidence:**
- Serine phosphorylation blocks IRS tyrosine phosphorylation
- Inflammatory cytokines (TNF-α, IL-6) activate serine kinases
- Free fatty acids activate JNK and IKKβ → IRS serine phosphorylation
- Serine-phosphorylated IRS cannot recruit PI3K

**Mechanism:** 
Normal: IRS → [tyrosine-P] → binds p85 → PI3K activation
Resistance: IRS → [serine-P] → blocked → no PI3K signaling

**Implication:** Inhibiting IRS serine kinases could restore insulin sensitivity.

**Links:**
- Context: [[Z_IRS_Recruitment_005]]
- Mechanism: [[Z_JNK_Activation_Inflammation_009]]
- Therapeutic: [[Z_APK_inhibitors_IR_therapy_010]]
```

---

## 4. The Linking Web (Visualization)

```
[Insulin Hormone] → [INSR Structure] → [Autophosphorylation] → [IRS Recruitment]
                                                        ↓
[GLUT4 Translocation] ← [Akt Activation] ← [PI3K Activation] ←─┘
        ↓
[Glucose Uptake]

Dysfunction branch:
[IRS Serine Phosphorylation] ← [Inflammation] ← [Obesity/FFA]
        ↓
[Insulin Resistance] → [Hyperglycemia] → [β-cell Failure]
```

**Every arrow = a wiki-link between zettels**

---

## 5. MOC Architecture

### Primary MOC: Insulin Signaling
```markdown
---
type: moc
title: MOC — Insulin Signaling
aliases: [MOC_Insulin, MOC_INSR]
---

# MOC: Insulin Signaling

## Entry Points
- [[Z_Insulin_Hormone_Structure_002]] — The ligand
- [[Z_Insulin_Receptor_Structure_001]] — The receptor

## Signaling Cascade
1. [[Z_INSR_Autophosphorylation_003]] — Receptor activation
2. [[Z_IRS_Recruitment_005]] — Adapter recruitment
3. [[Z_PI3K_Activation_007]] — PI3K pathway
4. [[Z_Akt_Activation_011]] — Akt kinase
5. [[Z_AS160_Phosphorylation_012]] — Downstream target
6. [[Z_GLUT4_Translocation_013]] — Effector mechanism

## Alternative Pathways
- [[Z_MAPK_Pathway_014]] — Mitogenic signaling
- [[Z_Cbl_CAP_Pathway_015]] — Lipid raft pathway

## Disease Context
- [[55-MOCs/Insulin_Resistance]] — When signaling fails

## Zettels in this MOC
- [[Z_Insulin_Receptor_Structure_001]]
- [[Z_INSR_Autophosphorylation_003]]
- [[Z_IRS_Recruitment_005]]
- ... (auto-generated list)
```

---

## 6. Workflow: Source → Zettel

### Step 1: Source Capture
```
Source (PubMed paper) → 66a-Refs/Ref_GutierrezRodelo_IR_Mechanisms_2017.md
```

### Step 2: Literature Notes (if needed)
```
Ref → 66b-LitNotes/Lit_GutierrezRodelo_INSR_Autophosphorylation.md
- Extract key claims
- Reformulate in own words
- Note relevant sections
```

### Step 3: Zettel Extraction
```
LitNote → 04-Zettels/Z_INSR_Autophosphorylation_003.md
- One idea only
- 50-200 words
- 3 links to existing zettels
- MOC assignment
```

### Step 4: Link Integration
```
- Identify existing zettels to link
- Add bi-directional links where appropriate
- Update MOC to include new zettel
```

### Step 5: Optional Composite
```
If needed: 02-Atomics/ADIPIC_PROFILE_COMPOSITE_000004.md
- Assembles related zettels
- Adds clinical context
- Becomes the "usable" form
```

---

## 7. File Naming Convention

```
Z_{TOPIC}_{SUBTOPIC}_{YYYYMMDD}_{SEQ}_{UID}.md

Examples:
Z_INSULIN_RECEPTOR_STRUCTURE_20260222_001_000001.md
Z_CLAIM_SERINEPHOS_IR_20260222_008_000008.md
Z_MECH_INSR_AUTOPHOS_20260222_003_000003.md
Z_Q_IRS_DEGRADATION_20260222_015_000015.md
```

**The UID is the true identifier** — filename is human-readable organization.

---

## 8. Template for Zettels

```markdown
---
uid: {{YYYYMMDDHHMMSS}}
type: zettel | zettel-claim | zettel-mech | zettel-cont | zettel-q
title: {{Concise Title}}
aliases: [Z_{{ShortName}}]
tags: [zettel, {{topic}}, {{subtopic}}]
parent-moc: [[55-MOCs/{{PrimaryMOC}}]]
source: [[{{Ref}}]]
confidence: high | medium | low
---

# Z{{TypeSuffix}}: {{Title}}

{{50-200 words, single idea, written as if for print}}

{{Key details in bullet or table form}}

**Links:**
- Upstream/Prerequisite: [[Z_{{Related1}}]]
- Parallel/Related: [[Z_{{Related2}}]]
- Downstream/Consequence: [[Z_{{Related3}}]]

**Also in:** [[55-MOCs/{{SecondaryMOC}}]] (optional)
```

---

## 9. Quality Checklist

Before saving a zettel:
- [ ] 50-200 words?
- [ ] One idea only?
- [ ] Self-contained (no context needed)?
- [ ] 2-5 links to existing zettels?
- [ ] Assigned to at least one MOC?
- [ ] Source cited?
- [ ] Written in my own words?
- [ ] Title is descriptive?

---

## 10. Next Steps

1. **Create folder:** `04-Zettels/`
2. **Create template:** `11-Templates/Template_Zettel_v1.0.md`
3. **Pilot:** Extract 5 zettels from insulin signaling paper
4. **Build MOC:** Create `55-MOCs/Insulin_Signaling.md`
5. **Test workflow:** Source → LitNote → Zettel → Link → MOC

**Ready to implement?**
