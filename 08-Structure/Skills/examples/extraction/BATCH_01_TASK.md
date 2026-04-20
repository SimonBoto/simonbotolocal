---
batch_id: 01
target_files: 5
timeout: 5min
model: qwen/qwen-plus
---

## Task
Process 5 LitNotes from insulin signaling papers

## Source Files
- L-001-0100_Insulin_Receptor_Mechanisms.md
- L-001-0101_IRS1_Phosphorylation.md
- L-001-0102_PI3K_Pathway.md
- L-001-0103_AKT_Signaling.md
- L-001-0104_Glucose_Uptake.md

## Standards
- YAML v3.0 compliant
- parent-index: "[[03-Zettels-Conscious]]"
- parent-moc: "[[MOC-Insulin-Signaling]]"
- source-litnote format: "[[Title_L-XXX-XXXX]]"
- Full zettel links: "[[Title_Z-XXX-XXXX]]"

## Expected Output
- 5 processed LitNotes
- 10-15 zettels extracted
- All YAML valid
- All links verified

## Verification Checklist
- [ ] All YAML valid
- [ ] No duplicate sections
- [ ] Links use full format
- [ ] parent-moc set correctly
