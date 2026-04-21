# FORG Link Generation Protocol v2.0

## CRITICAL RULES

### 1. Zettel Links
**Format:** `[[Z-XXX-XXXX]]` (UID ONLY)
- ✅ `[[Z-001-0129]]`
- ❌ `[[Z-001-0129_Fracture_Risk_Stratification]]`

### 2. LitNote Links
**Format:** `[[Full_Filename_L-XXX-XXXX_v4.0]]`
- ✅ `[[Organic_Acid_Krebs_Cycle_Markers_L-001-0507_v4.0]]`
- ❌ `[[L-001-0507_Organic_Acid_Krebs_Cycle]]`

### 3. Synthesis Links
**Format:** `[[Full_Filename_S-XXX-XXXX]]`
- ✅ `[[Insulin_Signaling_Synthesis_S-001-0001]]`
- ❌ `[[S-001-0001_Insulin_Signaling]]`

### 4. MOC Links
**Format:** `[[MOC-Topic]]`
- ✅ `[[MOC-Insulin-Signaling]]`

### 5. Index Links
**Format:** `[[Index-Name]]`
- ✅ `[[01-Literature-Index]]`

## How to Generate Correct Links

### From Filename
```python
filename = "Organic_Acid_Krebs_Cycle_Markers_-_Clinical_Meta_L-001-0507_v4.0.md"
# Extract UID
uid = "L-001-0507"
# Link format
link = f"[[{filename.replace('.md', '')}]]"
```

### From UID
```python
# Look up filename from UID
filename = find_file_by_uid("L-001-0507")
link = f"[[{filename}]]"
```

## Validation Checklist

- [ ] No emdash (—) in links
- [ ] No smart quotes
- [ ] Zettels: UID only
- [ ] LitNotes: Full filename
- [ ] MOCs: MOC- prefix
- [ ] Target file exists
