---
uid: TEMPLATE-INBOX-001
type: template
title: Template — Inbox (Adaptive)
description: "Single inbox template that adapts to input size"
version: "2.0"
---

# Inbox Template (Adaptive)

## Quick Assessment
| Aspect | Assessment |
|--------|------------|
| **Type** | {{Single-quote|Article|Review|Book|Conversation|Thought}} |
| **Size** | {{1-paragraph|Short|Medium|Long|Book}} |
| **Quality** | {{High|Medium|Low|Unknown}} |

## Path Decision

### If Single Atomic Idea
→ **Direct to Zettel** (skip LitNote)
- Create: `Zettel_Title_Z-XXX-XXXX.md`
- Template: `Template_Zettel.md` (canonical)

### If Article/Review (2-10 zettels)
→ **Standard LitNote**
- Create: `LitNote_Title_L-XXX-XXXX.md`
- Template: `Template_LitNote_v2.0.md`

### If Book/Long Source
→ **Scalable LitNote**
- Create: `LitNote_Title_Chapter_N_L-XXX-XXXX.md`
- Template: `Template_LitNote_Scalable_v1.0.md`
- Split: One LitNote per chapter

### If Conversation/Thought
→ **Direct Zettel or Fleeting**
- Quick capture: `Template_Zettel_Direct_v1.0.md`
- Or process via: `Template_Inbox_Fleeting_v1.0.md`

---

## Raw Input
{{Paste source here}}

## Quick Notes
{{Initial impressions — what's interesting?}}

## Next Action
- [ ] Process to Zettel (atomic)
- [ ] Create LitNote (source-based)
- [ ] Add to reading queue
- [ ] Discard

---
*Inbox — process within 48h*
