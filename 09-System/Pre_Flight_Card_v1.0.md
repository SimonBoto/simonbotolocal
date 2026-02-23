---
uid: pre-flight-v1.0
type: system
title: "RON Pre-Flight Card — 30-Second Checklist"
aliases: [PreFlight, Quick_Check]
domain: system
tags: [checklist, quick-reference]
parent-moc: [[09-System/Architecture]]
status: active
---

# 🚀 RON Pre-Flight Card (30 Seconds)

**Use this at the start of EVERY extraction session**

---

## ☐ 1. Get Next UID (10 sec)

**Run:**
```bash
cd /home/simon/Workspaces/TheOptimizedBrain
echo "LitNotes:"; ls 02-Literature/*.md | grep -oE "L-[0-9]+-[0-9]+" | sort -t- -k2 -n | tail -1
echo "Zettels:"; ls 03-Zettels/Conscious/*.md | grep -oE "Z-[0-9]+-[0-9]+" | sort -t- -k3 -n | tail -1
```

**Next L-UID: _____**  
**Next Z-UID: _____**

---

## ☐ 2. Load Templates (10 sec)

**Read before creating files:**
- [ ] `06-Structure/Templates/Template_LitNote_v1.0.md`
- [ ] `06-Structure/Templates/Template_Zettel_v1.0.md`

**Key checks:**
- `type: lit-note` (with hyphen!)
- `type: zettel`
- All fields present

---

## ☐ 3. Validate Links (10 sec)

**Before saving, check for:**
```bash
# Malformed links (brackets inside brackets)
grep -nE "\[\[[^\]]+\[|\[\][^\]]*\]\]" your_file.md
```

**Forbidden patterns:**
- `[[Name_[Z-001-0001]]]` → Use `[[Name_Z-001-0001]]`

---

## ⚡ Common Mistakes (DE3 Post-Mortem)

| Error | Prevention |
|-------|------------|
| Duplicate UID | Always check Step 1 |
| `type: litnote` (no hyphen) | Copy template exactly |
| Missing authors/year/journal | Don't skip fields — use "" if unknown |
| Malformed `[[link_[id]]]` | Search/replace `[` and `]` in filenames before linking |
| Status: processing left | Change to `complete` before commit |

---

## 🔗 Quick Commands

**Check all UIDs for duplicates:**
```bash
grep -r "^uid: " 02-Literature/ 03-Zettels/ | sort | uniq -d
```

**Find malformed links:**
```bash
grep -rnE "\[\[[^\]]*\[[^\]]*\]" 03-Zettels/Conscious/
```

**List all links in a file:**
```bash
grep -oE "\[\[[^\]]+\]\]" filename.md | sort | uniq
```

---

## ✅ Extraction Complete Checklist

- [ ] UIDs assigned correctly (no duplicates)
- [ ] YAML matches template exactly
- [ ] All links validated (no malformed)
- [ ] MOC updated with new entries
- [ ] `status: complete` on LitNotes
- [ ] Git commit with descriptive message

---

**When in doubt:**  
**Stop → Check template → Verify UID → Continue**

---

*Pre-flight prevents crash-landing*  
*Created: 2026-02-23*