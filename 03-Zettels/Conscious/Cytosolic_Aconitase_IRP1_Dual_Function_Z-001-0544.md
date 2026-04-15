---
uid: Z-001-0544
type: zettel
title: Cytosolic Aconitase IRP1 Dual Function
aliases: [Cytosolic-Aconitase, IRP1, Iron-Regulatory-Protein, ACO1]
domain: 001
tags: [zettel, cytosolic-aconitase, irp1, iron-regulatory-protein, iron-homeostasis, aco1]
parent-moc: [[MOC-Iron-Metabolism]]
status: conscious
source-litnote: [[Aconitase_Enzyme_Structure,_Mechanism,_and_Iron-Sulfur_L-001-0508_CGPT-0393]]
extraction-date: 2026-03-01
---

# Cytosolic Aconitase IRP1 Dual Function
## Status Checklist

- [ ] Source verified and linked
- [ ] Core Principle articulated
- [ ] Mechanism/Key Details present
- [ ] Evidence attached
- [ ] Significance clear
- [ ] Clinical relevance assessed
- [ ] Related zettels connected
- [ ] Lateral connections added
- [ ] RON review pending


## Core Claim
Mammalian cytosolic aconitase (ACO1) functions as a dual-purpose protein: when iron is abundant, its [4Fe-4S] cluster enables catalytic conversion of citrate to isocitrate; when iron is scarce, the cluster disassembles, converting the protein into iron regulatory protein 1 (IRP1), which binds iron-responsive elements (IREs) to regulate translation of ferritin and transferrin receptor, creating an elegant molecular switch linking energy metabolism to iron homeostasis.

## Evidence

### Two Isoforms Comparison

| Feature | Mitochondrial Aconitase (ACO2) | Cytosolic Aconitase (ACO1/IRP1) |
|---------|-------------------------------|----------------------------------|
| **Gene** | ACO2 | ACO1 |
| **Location** | Mitochondrial matrix | Cytosol |
| **Primary function** | Krebs cycle catalysis | Iron sensing and regulation |
| **Fe-S cluster stability** | Stable [4Fe-4S] | Labile [4Fe-4S] |
| **Dual function** | No | Yes (IRP1) |
| **IRE binding** | No | Yes (when Fe-S absent) |

### The Molecular Switch

**Iron Abundant State:**
```
[4Fe-4S] cluster present → Aconitase active
    ↓
Citrate → Isocitrate (metabolic function)
    ↓
No IRE binding
```

**Iron Scarce State:**
```
[4Fe-4S] cluster lost → IRP1 active
    ↓
IRE binding → Translational regulation
    ↓
Ferritin synthesis blocked
Transferrin receptor synthesis enhanced
```

### IRP1 Mechanism

**Iron-Responsive Elements (IREs):**
- Stem-loop RNA structures in mRNA 5' or 3' UTRs
- Recognized by IRP1 when Fe-S cluster absent

**Target mRNAs:**

| Target | IRE Location | IRP1 Binding Effect |
|--------|--------------|---------------------|
| **Ferritin** | 5' UTR | Blocks translation → Less iron storage |
| **Transferrin receptor** | 3' UTR | Stabilizes mRNA → More iron import |
| **Other iron genes** | Various | Coordinated regulation |

**Regulatory Logic:**
- Iron low → IRP1 active → Increase iron uptake, decrease storage
- Iron high → Aconitase active → Normal metabolism, iron stored

### Clinical Significance

**Iron Deficiency Anemia with Fatigue:**
- Both mitochondrial and cytosolic aconitase impaired
- Mitochondrial: Reduced ATP production
- Cytosolic: IRP1 activation (appropriate response)
- Combined effect: Severe fatigue beyond anemia alone

**Iron Overload:**
- Excessive Fe-S cluster stability
- Reduced IRP1 activity
- Inadequate ferritin synthesis relative to iron load
- Contributes to oxidative damage

**Therapeutic Implications:**
- Iron repletion restores both functions
- Balance critical — avoid deficiency or overload
- Monitor ferritin, not just hemoglobin

## Clinical Implication

**Diagnostic Considerations:**
- Fatigue out of proportion to anemia → Check iron status
- OAT citrate elevation → May reflect cytosolic not just mitochondrial dysfunction
- Iron studies essential in metabolic evaluation

**Treatment Approach:**
- Oral iron supplementation for deficiency
- Vitamin C enhances absorption
- Monitor ferritin response (target 50-100 ng/mL)
- Avoid excess (oxidative risk)

## METHAP Relevance

**Integrated Assessment:**
- Iron status affects both energy and iron metabolism
- OAT functional assessment complements serum studies
- Targeted repletion addresses dual pathway impairment
- Monitor for optimal balance, not just sufficiency

---

## Related Zettels
- [[Aconitase_Catalytic_Mechanism_Z-001-0541]] — Aconitase mechanism
- [[Iron_Sulfur_Cluster_Biochemistry_Z-001-0542]] — Fe-S cluster structure
- [[Iron_Metabolism_Aconitase_Function_Z-001-0543]] — Iron deficiency effects

## Related Zettels from Same Source

- [[Aconitase_Catalytic_Mechanism_Z-001-0541]]
- [[Iron_Metabolism_Aconitase_Function_Z-001-0543]]
- [[Iron_Sulfur_Cluster_Biochemistry_Z-001-0542]]

## Source
[[Aconitase_Enzyme_Structure,_Mechanism,_and_Iron-Sulfur_L-001-0508_CGPT-0393]]

---
parent-index: [[03-Zettels]]
