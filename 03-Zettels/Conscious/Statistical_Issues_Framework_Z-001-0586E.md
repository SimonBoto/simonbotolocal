---
uid: Z-001-0586E
type: zettel
title: "Statistical Issues Framework"
date: 2026-03-07
domain: 001
aliases:
  - Z-001-0586E
  - Statistical-Rigor
  - P-Value-Interpretation
tags:
  - zettel
  - statistics
  - methodology
  - p-values
parent-moc: [[MOC-Research]]
parent-index: [[03-Zettels-Conscious]]
source-litnote: [[Manuscript_Review_Critical_Concerns_-_Peer_Revie_L-001-0586_v4.0]]
status: conscious
---

# Statistical Issues Framework

> **Core Claim:** A priori power calculation, appropriate p-value interpretation, and multiple testing correction ensure statistical rigor.

## Key Requirements

| Element | Standard | Common Error |
|---------|----------|--------------|
| **Power calculation** | A priori, not post-hoc | Retrospective power |
| **Sample size** | Based on effect size | Arbitrary numbers |
| **P-values** | With confidence intervals | P-value-only reporting |
| **Multiple testing** | Bonferroni/FDR correction | Uncorrected comparisons |
| **Outcomes** | Pre-specified primary | Data dredging |

## P-Value Interpretation

> **Statistical significance ≠ Clinical significance**

| P-Value | Meaning | Context Needed |
|---------|---------|----------------|
| <0.05 | Unlikely due to chance | Effect size? CI? |
| 0.01 | Stronger evidence | Clinical relevance? |
| >0.05 | Not significant | Power adequate? |

## Multiple Testing Corrections

- **Bonferroni:** Divide α by number of tests (conservative)
- **False Discovery Rate (FDR):** Control proportion of false positives

## Red Flags

- ❌ Post-hoc power calculations
- ❌ P-hacking (data dredging)
- ❌ Cherry-picking significant results
- ❌ Ignoring confidence intervals

## Source

Extracted from: [[Manuscript_Review_Critical_Concerns_-_Peer_Revie_L-001-0586_v4.0]]
