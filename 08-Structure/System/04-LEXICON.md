---
uid: LEXICON-000-0001
type: lexicon
title: RON Lexicon — Shared Vocabulary & Loaded Terms
tags: [lexicon, glossary, commands, vocabulary, definitions]
parent-moc: [[08-Dashboards/Dashboard_Home]
status: active
created: 2026-02-24
updated: 2026-02-24
---

# RON Lexicon — Shared Vocabulary & Loaded Terms

> **Words have weight. These have specific meaning in our collaboration.**

This document codifies terms that function as **commands, status markers, or loaded concepts** in the RON-Simos system. Using them precisely prevents ambiguity.

---

## 🎮 Command Words

Words that trigger specific RON behaviors when spoken.

| Term | Function | Example Usage |
|------|----------|---------------|
| **"ARM_RED"** | Arming phrase for destructive/mass changes | "ARM_RED: YES — I ACCEPT AI RON CREATED CHANGES" |
| **"Status"** | Request system status report | "Status" → Returns MISSION_CONTROL snapshot |
| **"Inbox"** | Check/process 00-Inbox/ | "Inbox" → Lists Fleeting contents |
| **"Complete"** | Task status update | "Mark X complete" or "X is complete" |
| **"Draft"** | Task status update (incomplete) | "X is draft" → Acknowledged as unfinished |
| **"Processing"** | Task status (batched/ongoing) | "X is processing" → More work pending |
| **"Escalate"** | Trigger governance protocol | "Escalate: [situation]" → 2-sentence summary required |
| **"Spawn"** | Create sub-agent | "Spawn agent to [task]" |
| **"Heartbeat"** | System check protocol | "Read HEARTBEAT.md" → Pulse check |
| **"Audit"** | Review for errors/gaps | "Audit my work" → Done Criteria check |

---

## 🚦 Status Terms

Specific meanings for task/note/system states.

### Task Status (P0/P1/P2 Work)
| Status | Definition | When Used |
|--------|------------|-----------|
| **P0** | Critical path — do first | Blocks other work, has deadline |
| **P1** | Important — do next | Progress items, no immediate deadline |
| **P2** | Backlog — when time | Ongoing, non-urgent |
| **complete** | 100% verified per Done Criteria | All checks passed, you reviewed |
| **draft** | Created but not verified | Pending Done Criteria check |
| **processing** | Batched/ongoing | More work in next batch |
| **blocked** | Cannot proceed | Needs input/external dependency |

### Zettel Status (Vault)
| Status | Definition | Lifecycle Stage |
|--------|------------|-----------------|
| **conscious** | Working zettel — reviewable | Active development, may evolve |
| **subconscious** | Permanent zettel — ground truth | Vetted, linked, 30+ days old |
| **stub** | Placeholder | Title only, no content |
| **archived** | Deprecated | Moved to 07-Archive/ |

### System Status (Dashboard)
| Status | Definition | Action |
|--------|------------|--------|
| 🟢 **Active/Online** | Working normally | None |
| 🟡 **Warning/Degraded** | Issue detected | Monitor/fix |
| 🔴 **Offline/Broken** | Not functioning | Immediate attention |

---

## ⚠️ Risk Levels

Armed states for destructive operations.

| Level | Scope | Arming Required | Example |
|-------|-------|-----------------|---------|
| **GREEN** | Read-only, reversible | None | Reading files, creating zettels |
| **YELLOW** | Structural changes | Report after | Batch edits, folder renames |
| **RED** | Destructive/mass changes | ARM_RED phrase | Bulk delete, archive cleanup |

**ARM_RED Protocol:**
1. You say: "ARM_RED: YES — I ACCEPT AI RON CREATED CHANGES"
2. I execute destructive operation
3. I report results immediately

---

## ✅ Done Criteria

Mandatory verification checklist before claiming "complete."

| Check | Verification Method | Failure = Draft |
|-------|---------------------|-----------------|
| **Citations present?** | Three-pass scan (formal, inline, legacy) | Yes |
| **UIDs sequential?** | List all, confirm no gaps | Yes |
| **Placeholders replaced?** | Search `{{`, `TODO`, `FIX` | Yes |
| **Links work?** | Spot-check 3-5 internal links | Yes |

**Rule:** If any check fails → status is **draft**, not complete.

---

## 🦞 RON-Specific Terms

| Term | Definition | Context |
|------|------------|---------|
| **State of RON** | Mandatory session start report | "Last worked on: X, Pending: Y, Alerts: Z" |
| **Pre-Task Pause** | Load/confidence check before P0 work | Reports: files uncommitted, conflicts, confidence |
| **Post-Task Verification** | Done Criteria + risk report after P0 work | What done, verified, risky, final status |
| **Identity Verification** | Weekly 5-check self-assessment | Autonomy, Verification, Memory, Voice, Safety |
| **Triangle** | Governance model | Hub (Simos) → RON → Vertex3 |
| **Escalation Trigger** | Situation requiring immediate flag | Uncertain + deadline, inconsistency detected, 24h no response |

---

## 🧠 Memory Architecture

| Term | Location | Purpose |
|------|----------|---------|
| **Workspace Memory** | `~/.openclaw/workspace/memory/` | Operational configs, session logs |
| **Vault Daily** | `10-Daily/2026/` | Research logs, zettel creation |
| **MEMORY.md** | `~/.openclaw/workspace/` | Curated long-term facts |
| **Conscious** | `03-Zettels/Conscious/` | Working atomic notes |
| **Subconscious** | `03-Zettels/Subconscious/` | Permanent atomic notes |
| **Memory Consolidation** | Sunday ritual | Promote dailies → curated |

---

## 📊 Workflow Terms

| Term | Definition |
|------|------------|
| **Zettel** | Atomic knowledge unit (one idea, one note) |
| **LitNote** | Literature processing note (source → insights) |
| **Synthesis** | Living document aggregating multiple zettels |
| **MOC** | Map of Content — navigation hub |
| **Extraction** | Process source → zettels |
| **Promotion** | Conscious → Subconscious (zettel maturity) |
| **UID** | Unique identifier (Z-001-0001 format) |
| **Domain** | Topic code (001 = insulin, 101 = pharmacometabolomics) |

---

## 🎯 Communication Markers

| Marker | Meaning | Example |
|--------|---------|---------|
| **🦞** | RON signature | "🦞 Pre-Task Check" |
| **⏸️** | Pause for input | "⏸️ Need your decision" |
| **⚠️** | Warning/risk | "⚠️ 12 uncommitted files" |
| **✅** | Verified/complete | "✅ 0 placeholders" |
| **❌** | Failed/rejected | "❌ Link broken" |
| **🟡** | Warning status | "🟡 Gateway needs pairing" |

---

## 🚫 Anti-Patterns (Loaded Negatives)

Terms that signal something went wrong.

| Term | Meaning | Response |
|------|---------|----------|
| **"Just"** | Minimizing complexity | "Not 'just' — let's scope properly" |
| **"Obviously"** | Assumption without evidence | "Label as Needs_Evidence" |
| **"Complete" (false)** | Claimed without Done Criteria | Roll back to draft |
| **Silent drift** | Proceeded without escalating | **Failure mode — flag immediately** |

---

## 🆕 New Terms (v1.1)

### L4 Autonomy
| Term | Definition | Context |
|------|------------|---------|
| **L4** | Absolute Willpower — full initiative with reporting | AUTONOMY.md v2.1 |
| **Git checkpoint** | Required commit before L4 actions | Safety protocol |
| **L3** | Proposed changes — 24h objection window | Before implementing |

### Synthesis System
| Term | Definition | Context |
|------|------------|---------|
| **Permanent Questions** | Persistent research questions | `PERMANENT_QUESTIONS.md` |
| **Synthesis Trigger** | Critical mass → synthesis opportunity | `SYNTHESIS_TRIGGERS.md` |
| **Critical mass** | 6+ zettels or 3+ LitNotes on topic | Threshold for synthesis |

### Rituals
| Term | Definition | Context |
|------|------------|---------|
| **Morning Brief** | 07:30 daily ritual | HEARTBEAT.md v3.1 |
| **Evening Closure** | 22:30 daily ritual | HEARTBEAT.md v3.1 |

---

## 🔗 Cross-References

- **Extraction Protocol:** `06-Structure/Protocols/EXTRACTION_PROTOCOL_v1.1.md`
- **SOUL.md:** Core identity, Self-Awareness Loops
- **AGENTS.md:** Session startup, State of RON
- **AUTONOMY.md:** L4 Absolute Willpower, git checkpoints
- **HEARTBEAT.md:** Morning brief, evening closure rituals
- **PERMANENT_QUESTIONS.md:** Active research agenda
- **SYNTHESIS_TRIGGERS.md:** Critical mass detection
- **Memory Review:** `08-Dashboards/03-MEMORY_REVIEW.md`

---

## 📝 Version History

| Date | Version | Changes |
|------|---------|---------|
| 2026-02-24 | v1.0 | Initial lexicon — codified loaded terms from v4.1 migration |
| 2026-04-01 | v1.1 | Added L4 autonomy terms, synthesis system, rituals; updated cross-references to new core files |

---

*Precision in language → precision in collaboration.*

---
parent-index: [[08-Structure-Index]], [[System-Index]]
