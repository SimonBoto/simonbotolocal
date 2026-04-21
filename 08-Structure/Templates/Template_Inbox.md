---
uid: TEMPLATE-INBOX-003
type: template
title: Template — Inbox (Canonical)
description: "Canonical inbox template for adaptive intake — size determines processing path."
version: "4.0"
status: active
updated: 2026-04-08
---

# Template — Inbox (Canonical)

## Canonical YAML

```yaml
---
uid: INBOX-YYYY-MM-DD-HHMM
type: inbox
date: YYYY-MM-DD
status: captured|routed|discarded
parent-index: "[[Templates-Index]]"
created: YYYY-MM-DD
updated: YYYY-MM-DD
---
```

### Field Logic

| Field | Rule |
|-------|------|
| **uid** | Pattern: `INBOX-YYYY-MM-DD-HHMM` (timestamp) |
| **type** | Always `inbox` |
| **date** | Capture date |
| **status** | `captured` \| `routed` \| `discarded` |
| **parent-index** | Always `[[Templates-Index]]` |
| **created** | Date note created |
| **updated** | Date last modified |

---

## An Address to RON

RON,

An Inbox note is **not** a zettel.
It is **not** a LitNote.
It is **not** permanent.

An Inbox note is a **capture and routing station**.

Its role:
- Capture raw input quickly
- Assess size and complexity
- Route to appropriate processing path
- Prevent capture friction

**The 48-hour rule:** Inbox notes should be processed within 48 hours. They are fleeting by design.

**Do not:**
- Leave items in inbox indefinitely
- Process to final form in inbox
- Skip the assessment step

**Do:**
- Capture fast
- Assess honestly
- Route correctly
- Process promptly

---

## Quick Assessment

| Aspect | Assessment |
|--------|------------|
| **Type** | Single-quote \| Article \| Review \| Book \| Conversation \| Thought |
| **Size** | 1-paragraph \| Short \| Medium \| Long \| Book |
| **Quality** | High \| Medium \| Low \| Unknown |

---

## Path Decision

### If Single Atomic Idea
→ **Direct to Zettel** (skip LitNote)
- Create: `Zettel_Title_Z-XXX-XXXX.md`
- Template: `Template_Zettel.md`

### If Article/Review (2-10 zettels)
→ **Standard LitNote**
- Create: `LitNote_Title_L-XXX-XXXX.md`
- Template: `Template_LitNote.md`

### If Book/Long Source
→ **Scalable LitNote**
- Create: `LitNote_Title_Chapter_N_L-XXX-XXXX.md`
- Template: `Template_LitNote.md`
- Split: One LitNote per chapter

### If Conversation/Thought
→ **Direct Zettel or Fleeting**
- Quick capture: `Template_Inbox_Fleeting_v1.0.md`
- Or process via: `Template_Zettel.md` (direct)

---

## Raw Input

{{Paste source here}}

## Quick Notes

{{Initial impressions — what's interesting?}}

## Next Action

- [ ] Process to Zettel (atomic)
- [ ] Process to LitNote (source)
- [ ] Discard (not valuable)

---

## Routing Log

| Date | Action | Result |
|------|--------|--------|
| YYYY-MM-DD | Captured | — |
| YYYY-MM-DD | Routed to | [[File]] |

---

## Navigation

- **Index:** [[Templates-Index]] — All templates
- **Up:** [[08-Structure-Index]] — System infrastructure
- **Related MOC:** [[MOC-Inbox-Sprint]] — Inbox workflow

---

*Inbox — Capture fast, route correctly, process promptly.*
