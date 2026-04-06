# REFERENCE FOLDER CLEANUP PLAN
## Goal: Perfect State (All Verified, No Duplicates, No Stubs)

---

## PHASE 1: PRESERVE & DOCUMENT (Safe)

### Step 1: Create Master Inventory
- List all 181 reference notes
- Categorize by: verified/unverified, R-001/R-002, stub/complete
- Document which LitNotes link to which references

### Step 2: Identify True Duplicates
Same study, multiple files:
- Check author+year+journal combinations
- Compare content (not just filenames)
- Mark canonical version

### Step 3: Flag Stubs vs Complete
**Stub characteristics:**
- Empty doi/pmid fields
- "Awaiting extraction" notes
- Minimal content (<20 lines)

**Complete characteristics:**
- Full abstracts or findings
- Detailed YAML
- Zettel links populated

---

## PHASE 2: VERIFY & MERGE (Careful)

### For Each R-002 Reference:
**Check:** Does citation exist in Facebook Posts Collection?

**If YES:**
- Add "Citation extracted from" marker
- Verify content matches source
- Mark as VERIFIED

**If NO:**
- Check if it's from another legitimate source
- If synthetic: mark for revision
- If external but valid: mark as EXTERNAL

### For Each R-001 Reference:
**Check:** Is there an R-002 equivalent?

**If YES:**
- Compare content
- Merge best into R-002
- Delete R-001

**If NO:**
- Check if stub or complete
- If stub: keep as placeholder
- If complete: migrate to R-002 format

---

## PHASE 3: STANDARDIZE (Systematic)

### Naming Convention:
`Author_Year_ShortTitle_R-00X-XXXX.md`

### YAML Standard:
```yaml
---
uid: R-00X-XXXX
type: reference
title: "Author Year — Full Title"
aliases: ["AuthorYear", "short-alias"]
authors: "Full author list"
year: "YYYY"
journal: "Journal Name"
doi: "10.xxxx/xxxxx"  # or "(pending)"
pmid: "12345678"      # or "(pending)"
tier: "GOLD" | "SILVER" | "BRONZE"
status: active
parent-moc: "[[MOC-XXXX]]"
---
```

### Required Sections:
1. Citation (full)
2. Source (with provenance)
3. Key Findings
4. Zettels Using This Reference
5. Footer with metadata

---

## PHASE 4: VALIDATE (Thorough)

### Verification Checklist:
- [ ] Every reference has uid
- [ ] Every reference has source provenance
- [ ] No duplicate uids
- [ ] All zettel links functional
- [ ] All LitNote links functional
- [ ] Naming convention consistent

---

## EXECUTION DECISION

**Option A: Manual Review (Recommended)**
- Review each file individually
- Make conscious decisions
- Preserve valuable content
- Time: 2-3 hours

**Option B: Automated Cleanup (Risky)**
- Archive all without citation markers
- Keep only 14 verified
- Rebuild from Facebook source
- Risk: Lose valid external references

**Option C: Hybrid**
- Archive obvious stubs (R-001 with empty fields)
- Keep R-002 for manual review
- Mark status in YAML
- Time: 1 hour

---

## RECOMMENDATION: Option C (Hybrid)

### Immediate Actions:
1. Archive R-001 stubs (empty doi/pmid, <30 lines)
2. Keep R-001 complete notes for manual review
3. Keep all R-002 for verification
4. Create STATUS.md tracking file

### Result:
- Hub folder: ~60 files (down from 181)
- Archive folder: ~120 stubs
- Clear path to perfect state

---

Proceed with Option C?
