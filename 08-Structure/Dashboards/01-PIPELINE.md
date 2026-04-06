---
uid: PIPELINE-2026-04-06
type: pipeline-dashboard
status: active
---

# PIPELINE — Processing Flow & Backlog

**Last Updated:** 2026-04-06 21:00

---

## 🔄 Processing Pipeline

| Stage | Count | Status | Next Action |
|-------|-------|--------|-------------|
| **00-Inbox** | ~700 items | 🟡 Triage needed | Daily check |
| **LitSubconcious** | 98 LitNotes | 🟡 Ready | YAML upgrade (21 done, 77 pending) |
| **01-Literature** | 183 total | 🟡 Processing | Extraction to zettels |
| **03-Zettels/Conscious** | 706 | 🟡 Review | Promotion to Subconscious |
| **03-Zettels/Subconscious** | 310 | ✅ Connected | Permanent |

---

## 📥 Intake (New Items)

| Source | Item | Date Added | Action Required |
|--------|------|------------|-----------------|
| 00-Inbox | 5 Greek .docx files | 2026-02-25 | Convert or archive |
| 00-Inbox/ChatGPT | 688 conversations | Various | Extract to zettels (paused) |

**Intake Rules:**
1. **Daily**: Check 00-Inbox root
2. **Weekly**: Review ChatGPT archive
3. **Monthly**: Review Fleeting folder

---

## 📋 Opportunity Backlog

### Ready (Paused for Infrastructure)
| Item | Value | Effort | Blocker |
|------|-------|--------|---------|
| CGPT archive extraction | High | Medium | Infrastructure |
| L-002 YAML upgrade | Medium | Low | — |
| Zettel promotion review | Medium | Low | — |
| Reference link verification | Medium | Low | — |

### Waiting on External
| Item | Value | Blocker | ETA |
|------|-------|---------|-----|
| PhD ClinicalTrials.gov | Critical | University | Unknown |
| Recruitment papers | High | University | Unknown |

### Future Ideas
| Item | Value | Notes |
|------|-------|-------|
| Website launch | High | After vault stable |
| Book writing | High | After PhD complete |
| IV clinic infrastructure | Medium | Long-term project |

---

## 📊 Flow Metrics

| Stage | In | Processing | Out |
|-------|-----|------------|-----|
| Inbox → LitSubconcious | ~700 | 98 ready | — |
| LitSubconcious → Literature | — | 77 need YAML | 21 upgraded |
| Literature → Zettels | 183 | 59 need extraction | 12 optimal |
| Conscious → Subconscious | 706 | Review for promotion | 310 promoted |

---

*Processing pipeline — from capture to permanent knowledge*
