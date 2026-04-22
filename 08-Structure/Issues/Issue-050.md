---
id: ISSUE-050
title: K2.6 Multi-Modal Paper Processing — Figure & Table Extraction
assignee: RON
energy: 12h / $4.00
priority: P2
status: backlog
created: 2026-04-22
parent: none
spawned: []
---

# ISSUE-050: K2.6 Multi-Modal Paper Processing

## Success Criteria

- [ ] K2.6 extracts figures from PDFs into descriptive zettels
- [ ] Tables converted to structured data zettels (Markdown/CSV)
- [ ] Diagrams analyzed for relationship zettels
- [ ] All visual elements cross-referenced with text zettels
- [ ] 10 papers processed in pilot with full multi-modal extraction
- [ ] Vision accuracy validated against human review (target: 85%)
- [ ] Document multi-modal protocol as reusable skill
- [ ] Integration with existing LitNote → Zettel pipeline

## Context

Kimi K2.6 has MoonViT vision encoder supporting 3.2M pixel images (1792×1792), 4× higher resolution than K2.5. Current paper processing is text-only, missing critical visual information.

**K2.6 Advantage:**
- Vision: 3.2M pixels (4× K2.5) — can read complex diagrams
- MMMU-Pro: 79.4% — strong visual reasoning
- MathVision: 87.4% — excellent at interpreting charts/graphs
- V* Benchmark: 96.9% with Python — precise visual grounding
- BabyVision: 68.5% with Python — understands complex visuals

**Current State:**
- Paper processing: text extraction only
- Figures: ignored or manually described
- Tables: skipped or poorly formatted
- Diagrams: not processed
- Loss: ~30% of paper information

## Implementation Plan

### Phase 1: Vision Pipeline (4 hours)
1. PDF figure extraction:
   ```bash
   # Extract images from PDF
   pdfimages -all paper.pdf figures/
   
   # Filter: remove logos, headers, small icons
   # Keep: charts, diagrams, photos, complex tables
   ```

2. K2.6 vision analysis:
   ```
   Input: extracted figure + surrounding text context
   Output: figure-description-XXX.md
   
   Analysis:
   - What type: chart, diagram, photo, table, gel, etc.
   - Key elements: axes, labels, colors, patterns
   - Data points: specific values, trends, outliers
   - Relationships: what connects to what
   - Clinical significance: what this shows
   ```

### Phase 2: Table Processing (3 hours)
1. Table extraction:
   ```bash
   # Extract tables from PDF
   pdftotext -layout paper.pdf
   # Or: camelot-py, tabula-py for structured tables
   ```

2. K2.6 table analysis:
   ```
   Input: table image or structured data
   Output: table-data-XXX.md
   
   Format:
   ```markdown
   ## Table: [Title from paper]
   
   | Column 1 | Column 2 | Column 3 |
   |----------|----------|----------|
   | Value    | Value    | Value    |
   
   ### Key Findings
   - Finding 1
   - Finding 2
   
   ### Clinical Significance
   [Interpretation]
   
   ### Source
   [[LitNote_Full_Title_L-XXX-XXXX]]
   ```

### Phase 3: Diagram Analysis (3 hours)
1. Pathway/mechanism diagrams:
   ```
   Input: diagram image + caption
   Output: relationship-zettel-XXX.md
   
   Analysis:
   - Nodes: proteins, metabolites, genes
   - Edges: activation, inhibition, conversion
   - Feedback loops
   - Cross-talk with other pathways
   - Clinical relevance
   ```

2. Cross-reference with text zettels:
   - Link diagram nodes to existing zettels
   - Create new zettels for novel elements
   - Update MOCs with visual references

### Phase 4: Integration (2 hours)
1. Enhanced LitNote template:
   ```yaml
   ---
   # Existing fields...
   figures: [fig-001, fig-002, fig-003]
   tables: [table-001, table-002]
   diagrams: [diagram-001]
   ---
   
   ## Figures
   | Figure | Description | Zettel |
   |--------|-------------|--------|
   | Fig 1  | [[Figure_1_Description_Z-XXX-XXXX]] | |
   
   ## Tables
   | Table | Description | Zettel |
   |-------|-------------|--------|
   | Table 1 | [[Table_1_Data_Z-XXX-XXXX]] | |
   ```

2. Documentation:
   - Create `Skill-Multi-Modal-Extraction_v1.0.md`
   - Document: figure, table, diagram processing
   - Add to Skills index

## Progress Log

- [11:40] Issue created, awaiting assignment

## Blockers

None

## Notes

**Expected Outcome:**
- 10 papers → ~30-50 figure zettels, ~20 table zettels, ~15 diagram zettels
- 30% more information captured per paper
- Better MOCs with visual references
- Cost: ~$0.30/paper (K2.6 vision calls)

**Validation:**
- Human review: 10% sample checked for accuracy
- Target: 85% accuracy (figure description matches human)
- Feedback loop: errors improve prompt

**Future Enhancement:**
- Video processing: extract frames from supplementary videos
- 3D structure visualization: protein structures from PDB
- Interactive diagrams: Obsidian canvas for pathways
- Auto-generation: create figures from zettel relationships

**Technical Requirements:**
- PDF image extraction tools (pdfimages, poppler)
- Image format support: PNG, JPG, TIFF
- Resolution: minimum 300 DPI for accurate OCR
- Storage: ~5MB per paper in figures

**Risk:**
- Vision model may misinterpret complex diagrams
- Tables with poor formatting may not extract cleanly
- Mitigation: human review gate, iterative improvement
