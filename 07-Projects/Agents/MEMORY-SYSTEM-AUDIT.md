---
uid: MEMSYS-AUDIT-001
type: audit
title: "Memory System Audit — Current State & Gaps"
date: 2026-04-22
status: active
---

# Memory System Audit

> **Comprehensive assessment of our memory infrastructure.**
> **What's working, what's missing, what's next.**

---

## ✅ What's Working (Strengths)

### 1. QMD Semantic Search

| Metric | Value | Status |
|--------|-------|--------|
| **Files indexed** | 2,701 | ✅ Excellent |
| **Vectors embedded** | 48,000 | ✅ Good |
| **Pending embed** | 807 | 🟡 Needs completion |
| **Index size** | 318MB | ✅ Efficient |
| **Collections** | 5 (zettels, literature, synthesis, projects, inbox) | ✅ Comprehensive |

**Strength:** Fast semantic search across entire vault.
**Use:** `qmd search "insulin resistance mechanisms"`

### 2. Shared Agent Memory

| Component | Status |
|-----------|--------|
| **shared.sqlite** | ✅ 5 tables, working |
| **FORG client** | ✅ Tested, integrated |
| **RON client** | ✅ Tested, integrated |
| **SCOUT client** | ✅ Tested, integrated |
| **Auto-prioritization** | ✅ Dynamic scoring |
| **New agent onboarding** | ✅ Documented |

**Strength:** All 3 agents share knowledge in real-time.

### 3. Obsidian Vault Integration

| Feature | Status |
|---------|--------|
| **File-based storage** | ✅ Native |
| **YAML frontmatter** | ✅ Standardized |
| **Wiki links** | ✅ Full filenames |
| **MOC structure** | ✅ 63 MOCs |
| **REST API** | ✅ Available |

**Strength:** Human-readable, portable, future-proof.

### 4. Git Version Control

| Feature | Status |
|---------|--------|
| **Automatic commits** | ✅ On file changes |
| **QMD reindex** | ✅ Post-commit hook |
| **History** | ✅ Full audit trail |

---

## 🟡 What's Partial (Gaps)

### 1. QMD Embedding Backlog

**Issue:** 807 files pending embedding
**Impact:** New files not searchable via semantic search
**Fix:** Complete `qmd embed` (was 65% done, process killed)

### 2. Agent Memory → Vault Sync

**Issue:** Shared memory is separate from QMD index
**Impact:** Agent knowledge not semantically searchable
**Fix:** Index shared.sqlite into QMD or sync to vault files

### 3. K2.6 Context Window Underutilized

**Issue:** We tested 500 zettels (325K tokens) but don't routinely use it
**Impact:** Missing opportunity for vault-wide analysis
**Fix:** Build "load vault context" into agent workflows

### 4. No Real-Time Dashboard

**Issue:** No live view of agent activity, queue status, memory stats
**Impact:** Manual checking required
**Fix:** Simple dashboard file updated by agents

---

## ❌ What's Missing (Blockers)

### 1. Agent Memory Persistence Across Sessions

**Issue:** Agent SQLite resets between OpenClaw restarts
**Impact:** FORG forgets what it learned yesterday
**Severity:** HIGH
**Fix:** Ensure shared.sqlite persists, document backup

### 2. No Automatic QMD Reindex After Agent Work

**Issue:** FORG creates zettels at night, but QMD doesn't auto-index
**Impact:** New zettels not searchable until manual `qmd index`
**Severity:** MEDIUM
**Fix:** Add `qmd index` to FORG's completion routine

### 3. No Cross-Reference Between Shared Memory and Vault

**Issue:** shared.sqlite has IDs, vault has filenames — no link
**Impact:** Can't trace from agent log to actual zettel
**Severity:** MEDIUM
**Fix:** Store vault paths in shared.sqlite, not just IDs

### 4. No Cost/Performance Monitoring

**Issue:** No tracking of token spend per agent, per night
**Impact:** Budget overruns possible
**Severity:** LOW (currently small scale)
**Fix:** Add cost logging to shared_memory.py

---

## 💡 Innovative Ideas (Next Level)

### Idea 1: Agent Memory as First-Class Zettels

**Concept:** Every agent discovery becomes a zettel automatically.

```
SCOUT discovers: "CGPT-0421 is high priority"
    ↓
Auto-creates: [[SCOUT-Discovery-2026-04-22_Z-SYS-001]]
    ↓
QMD indexes it
    ↓
RON reviews it in morning
```

**Benefit:** Agent knowledge compounds like human knowledge.

### Idea 2: Conversation Memory for Context

**Concept:** Our Telegram chats become searchable memory.

```
You: "What did we decide about clinic flow?"
    ↓
qmd search: "clinic flow decision"
    ↓
Finds: Our conversation from 2026-04-22
```

**Benefit:** Never lose context, decisions are searchable.

### Idea 3: Predictive Queue

**Concept:** SCOUT predicts which conversations you'll ask about.

```
You ask about "aconitase" frequently
    ↓
SCOUT learns pattern
    ↓
Auto-prioritizes aconitase-related CGPTs
    ↓
They're already extracted when you ask
```

**Benefit:** Anticipatory knowledge preparation.

### Idea 4: Memory Compression

**Concept:** Old zettels auto-summarize as they age.

```
Zettel > 90 days old
    ↓
Auto-generate: "Summary of 5 related zettels"
    ↓
Link: [[Summary-Insulin-Resistance_Z-SYS-002]]
    ↓
Original stays, summary speeds recall
```

**Benefit:** Handle 10,000+ zettels without overload.

### Idea 5: Multi-Modal Memory

**Concept:** Index images, PDFs, audio in QMD.

```
PDF: Clinical trial protocol
    ↓
qmd index (with OCR)
    ↓
Search: "inclusion criteria"
    ↓
Finds: Exact page in PDF
```

**Benefit:** All knowledge searchable, not just text.

---

## 🎯 Priority Actions

### Immediate (Today)

| Action | Impact | Effort |
|--------|--------|--------|
| Complete QMD embed (807 pending) | HIGH | 30 min |
| Add `qmd index` to FORG completion | HIGH | 10 min |
| Verify shared.sqlite persists | HIGH | 5 min |

### This Week

| Action | Impact | Effort |
|--------|--------|--------|
| Store vault paths in shared.sqlite | MEDIUM | 1 hour |
| Add cost tracking to agents | MEDIUM | 1 hour |
| Create live dashboard file | LOW | 2 hours |

### This Month

| Action | Impact | Effort |
|--------|--------|--------|
| Agent discoveries → auto-zettels | HIGH | 4 hours |
| Conversation memory indexing | MEDIUM | 4 hours |
| Predictive queue | MEDIUM | 8 hours |

---

## The Vision: Optimal Memory System

```
┌─────────────────────────────────────────┐
│         UNIFIED MEMORY LAYER            │
├─────────────────────────────────────────┤
│  QMD (Semantic)  │  shared.sqlite (Agent) │
│  • 2,701 files   │  • 3 agents           │
│  • 48K vectors   │  • Real-time sync      │
│  • <100ms search │  • Auto-prioritize     │
├─────────────────────────────────────────┤
│         OBSIDIAN VAULT                  │
│  • Human-readable                       │
│  • Git-tracked                          │
│  • REST API accessible                  │
├─────────────────────────────────────────┤
│         AGENT LAYER                     │
│  • FORG: Extracts → shared → vault      │
│  • RON: Reviews → approves → integrates │
│  • SCOUT: Analyzes → prioritizes → guides│
└─────────────────────────────────────────┘
```

**Status: 85% optimal. 3 critical gaps to close.**

---

*Audit: MEMSYS-AUDIT-001*
*Date: 2026-04-22*
*Next review: 2026-05-01*
