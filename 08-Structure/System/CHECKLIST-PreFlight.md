---
uid: SYS-001-0001
type: system
title: "RON Pre-Flight Card — 30-Second Checklist"
aliases: [Pre_Flight_Card, PreFlight, Quick_Check]
domain: 001
domain-name: System
tags: [checklist, quick-reference, system]
parent-moc: [[System-Index]]
parent-index: [[08-Structure-Index]]
status: active
created: 2026-02-23
updated: 2026-04-06
---

# 🚀 RON Pre-Flight Card (30 Seconds)

**Use this at the start of EVERY extraction session**

---

## ☐ 1. Get Next UID (10 sec)

**Run:**
```bash
cd /home/simon/Workspaces/TheOptimizedBrain
echo "LitNotes:"; ls 01-Literature/*.md | grep -oE "L-[0-9]+-[0-9]+" | sort -t- -k2 -n | tail -1
echo "Zettels:"; ls 03-Zettels/Conscious/*.md | grep -oE "Z-[0-9]+-[0-9]+" | sort -t- -k3 -n | tail -1
```

**Next L-UID: _____**  
**Next Z-UID: _____**

---

## ☐ 2. Load Templates + Classify Tier (10 sec)

**Read before creating files:**
- [ ] `08-Structure/Templates/Template_LitNote_v2.0.md`
- [ ] `08-Structure/Templates/Template_Zettel_v2.0.md`

**Classify this extraction:**
- [ ] **GOLD:** Deep, 3-4 atomics, high value
- [ ] **SILVER:** Medium, YAML + TL;DR
- [ ] **BRONZE:** Standardization only

**Key checks:**
- `type: lit-note` (with hyphen!)
- `type: zettel`
- All fields present

---

## ☐ 3. Validate Links + Check Context (10 sec)

**Before saving, check for:**
```bash
# Malformed links (brackets inside brackets)
grep -nE "\[\*\[|\[\][^\]*\]\]" your_file.md
```

**Forbidden patterns:**
- `[[Name_Z-001-0001]` → Use `[[Name_Z-001-0011]]`

**Quick context check:**
- [ ] Review [[PERMANENT_QUESTIONS]] — any matches?
- [ ] Check [[SYNTHESIS_TRIGGERS]] — pushing toward critical mass?

---

## ⚡ Common Mistakes

| Error | Prevention |
|-------|------------|
| Duplicate UID | Always check Step 1 |
| `type: litnote` (no hyphen) | Copy template exactly |
| Missing tier classification | Step 2 — GOLD/SILVER/BRONZE |
| Malformed `]]` | Search/replace `[` and `]` in filenames before linking |
| Status: processing left | Change to `complete` before commit |
| Forgot synthesis check | Step 3 — check triggers |

---

## 🔗 Quick Commands

**Check all UIDs for duplicates:**
```bash
grep -r "^uid: " 01-Literature/ 03-Zettels/ | sort | uniq -d
```

**Find malformed links:**
```bash
grep -rnE "\[\*\*\]" 03-Zettels/Conscious/
```

**Git checkpoint (every 5 items):**
```bash
git add -A && git commit -m "checkpoint: batch N complete"
```

---

## ✅ Extraction Complete Checklist

- [ ] UIDs assigned correctly (no duplicates)
- [ ] YAML matches template exactly
- [ ] Tier classified (GOLD/SILVER/BRONZE)
- [ ] All links validated (no malformed)
- [ ] Permanent questions checked
- [ ] Synthesis triggers checked
- [ ] MOC updated with new entries
- [ ] `status: complete` on LitNotes
- [ ] Git committed with descriptive message

---

*Pre-flight prevents crash-landing*  
*Created: 2026-02-23*  
*Updated: 2026-04-06 — Aligned with workspace standards*
