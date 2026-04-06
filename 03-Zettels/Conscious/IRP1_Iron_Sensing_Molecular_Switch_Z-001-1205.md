---
uid: Z-001-1205
type: zettel
title: "IRP1 — The Iron-Sensing Molecular Switch"
aliases: ["Z-001-1205", "IRP1", "Iron-Regulatory-Protein", "Iron-Sensing", "Molecular-Switch"]
domain: 001
tags: [zettel, irp1, iron-regulatory-protein, iron-sensing, post-transcriptional, aconitase]
parent-moc: "[[MOC-Iron-Metabolism]]"
status: conscious
source-litnote: "[[L-001-0631_Aconitase_Iron_Metabolism_IRP1_CGPT-0586]]"
source-inbox: "[[CGPT_0586_Fatty_Acid_Metabolism_Pathways_CGPT-0586]]"
extraction-date: 2026-03-08
---

# IRP1 — The Iron-Sensing Molecular Switch

## Core Claim
**IRP1 functions as a dual-purpose protein that switches between enzymatic and regulatory roles based on cellular iron status — acting as cytosolic aconitase (with intact [4Fe-4S] cluster) when iron is abundant, and as an RNA-binding protein that regulates iron uptake and storage when iron is scarce and the Fe-S cluster disassembles, providing rapid post-transcriptional control of iron homeostasis.**

## Evidence

### The Iron-Sensing Switch
| Iron Status | Fe-S Cluster | Conformation | Function | Effect |
|-------------|--------------|--------------|----------|--------|
| **Replete** | [4Fe-4S] intact | Closed | Aconitase | Citrate → Isocitrate |
| **Deplete** | [4Fe-4S] absent | Open | IRP1 | IRE binding |

### IRP1 as Aconitase (Iron-Replete)
| Feature | Detail |
|---------|--------|
| **Enzyme** | Cytosolic aconitase (c-aconitase) |
| **Reaction** | Citrate ⇌ Isocitrate |
| **Function** | Metabolic, generates NADPH via isocitrate |
| **IRE binding** | None (cluster blocks RNA binding site) |

### IRP1 as Regulatory Protein (Iron-Deplete)
| Target mRNA | IRE Location | IRP1 Effect | Outcome |
|-------------|--------------|-------------|---------|
| **Transferrin receptor** | 3' UTR | Stabilizes mRNA | ↑ Iron uptake |
| **Ferritin** | 5' UTR | Blocks translation | ↓ Iron storage |
| **DMT1** | 5' UTR | Blocks translation | ↓ Iron uptake (isoform specific) |
| **Ferroportin** | 5' UTR | Blocks translation | ↓ Iron export |

### Switch Mechanism
| Step | Process | Trigger |
|------|---------|---------|
| **1** | Fe-S cluster disassembly | Low iron, ROS, hypoxia |
| **2** | Conformational change | Loss of cluster stabilizes open form |
| **3** | IRE binding site exposure | RNA recognition surface available |
| **4** | Target mRNA regulation | Translation/stability modulation |

## Clinical Implication
- **Rapid response:** Minute-by-minute iron status adjustment
- **Dual function:** Metabolism and regulation in one protein
- **Disease relevance:** Dysregulation in hemochromatosis, anemia
- **ROS sensitivity:** Oxidative stress can trigger switch inappropriately
- **METHAP relevance:** Iron metabolism is critical for mitochondrial function and energy production

---

## Related
- [[Aconitase_Mechanism_Iron_Sulfur_Cluster_Z-001-1204]] — Aconitase function
- [[Iron_Homeostasis_Post_Transcriptional_Z-001-1206]] — Iron regulation overview
- [[IRE_IRP_System_Molecular_Details_Z-001-1207]] — IRE-IRP molecular mechanism

---
*Source: [[L-001-0631_Aconitase_Iron_Metabolism_IRP1_CGPT-0586]] | Inbox: [[CGPT_0586_Fatty_Acid_Metabolism_Pathways_CGPT-0586]]*
