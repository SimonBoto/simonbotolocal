---
uid: AGENT-SHARED-MEM-001
type: architecture
title: "Shared Agent Memory Architecture"
date: 2026-04-22
status: draft
---

# Shared Agent Memory Architecture

> **Problem:** RON, FORG, SCOUT each have isolated SQLite databases.
> **Solution:** Unified shared memory layer with agent-specific views.

---

## Current State

| Agent | Memory File | Size | Isolation |
|-------|------------|------|-----------|
| **RON** | `~/.openclaw/memory/main.sqlite` | 1.6MB | ✅ Isolated |
| **FORG** | `~/.openclaw/memory/forg.sqlite` | 69KB | ✅ Isolated |
| **SCOUT** | `~/.openclaw/memory/scout.sqlite` | 69KB | ✅ Isolated |

**Problem:** FORG doesn't know what RON learned yesterday. SCOUT can't see FORG's extractions.

---

## Proposed Architecture

### Option A: Shared SQLite (Recommended)

```
~/.openclaw/memory/
├── shared.sqlite          ← Unified memory
│   ├── agent_knowledge    ← What each agent knows
│   ├── extractions        ← FORG's LitNotes/zettels
│   ├── discoveries        ← SCOUT's findings
│   ├── decisions          ← RON's approvals/rejections
│   └── sync_log           ← Who learned what when
├── ron.sqlite             ← RON private (preferences, rules)
├── forg.sqlite            ← FORG private (cost tracking)
└── scout.sqlite           ← SCOUT private (exploration state)
```

**Pros:**
- Simple, file-based
- Atomic transactions
- SQL queries for complex relationships
- Git-trackable (small enough)

**Cons:**
- Concurrent access (agents run simultaneously)
- Need locking mechanism

### Option B: File-Based JSON

```
~/.openclaw/memory/shared/
├── knowledge/
│   ├── 2026-04-22-forg-acontitase.json
│   ├── 2026-04-22-scout-queue-update.json
│   └── 2026-04-22-ron-validation.json
├── index.json             ← Master index
└── sync.lock              ← Prevent conflicts
```

**Pros:**
- Human-readable
- Git-friendly
- No concurrency issues (append-only)

**Cons:**
- Harder to query
- More files to manage

### Option C: Vault Integration

Use the Obsidian vault itself as shared memory:
- FORG writes to `pending/`
- RON moves to `03-Zettels/`
- SCOUT reads from `04-Synthesis/`

**Pros:**
- Already exists
- QMD searchable
- Natural workflow

**Cons:**
- Slower than SQLite
- File I/O overhead

---

## Recommended: Hybrid Approach

### Layer 1: Shared SQLite (Fast Sync)

**Tables:**

```sql
-- What each agent has learned
CREATE TABLE agent_knowledge (
    id INTEGER PRIMARY KEY,
    agent TEXT NOT NULL,           -- 'RON', 'FORG', 'SCOUT'
    knowledge_type TEXT,           -- 'extraction', 'discovery', 'decision'
    content_hash TEXT,             -- SHA256 of content
    content TEXT,                  -- JSON blob
    source TEXT,                   -- Where it came from
    created_at TIMESTAMP,
    accessed_by TEXT               -- Which agents have seen this
);

-- FORG extractions waiting for RON review
CREATE TABLE pending_extractions (
    id INTEGER PRIMARY KEY,
    batch_id TEXT,
    cgpt_id TEXT,
    litnote_path TEXT,
    zettel_count INTEGER,
    quality_score REAL,
    status TEXT,                   -- 'pending', 'approved', 'rejected'
    extracted_by TEXT,             -- 'FORG'
    reviewed_by TEXT,              -- 'RON' or NULL
    created_at TIMESTAMP
);

-- SCOUT discoveries
CREATE TABLE scout_discoveries (
    id INTEGER PRIMARY KEY,
    discovery_type TEXT,           -- 'priority', 'pattern', 'gap'
    description TEXT,
    confidence REAL,
    related_cgpt TEXT,
    related_zettel TEXT,
    created_at TIMESTAMP
);

-- Sync log
CREATE TABLE sync_log (
    id INTEGER PRIMARY KEY,
    from_agent TEXT,
    to_agent TEXT,
    knowledge_id INTEGER,
    synced_at TIMESTAMP
);
```

### Layer 2: Vault Files (Persistent Storage)

- **FORG** writes extractions to `pending/`
- **RON** moves approved to `03-Zettels/`
- **SCOUT** writes discoveries to `04-Synthesis/`

### Layer 3: Agent-Specific SQLite (Private State)

Each agent keeps private preferences, cost tracking, etc.

---

## Sync Protocol

### 1. FORG → Shared (After Extraction)

```
FORG completes extraction
    ↓
Writes to shared.pending_extractions
    ↓
Writes files to pending/
    ↓
Logs: "FORG extracted CGPT-0001, 4 zettels"
```

### 2. RON → Shared (Morning Review)

```
RON checks shared.pending_extractions
    ↓
Reviews quality
    ↓
Updates status: 'approved' or 'rejected'
    ↓
Moves files to 03-Zettels/ or archive/
    ↓
Logs: "RON approved 8/10 extractions"
```

### 3. SCOUT → Shared (Continuous)

```
SCOUT analyzes conversations
    ↓
Writes discoveries to shared.scout_discoveries
    ↓
Updates queue-scout.md
    ↓
Logs: "SCOUT prioritized 10 conversations"
```

---

## Implementation Plan

### Phase 1: Shared SQLite (Today)
- [ ] Create `shared.sqlite` with schema
- [ ] Write Python wrapper for safe access
- [ ] Test: FORG writes, RON reads

### Phase 2: Sync Protocol (This Week)
- [ ] Implement FORG → shared write
- [ ] Implement RON → shared read
- [ ] Add sync_log tracking

### Phase 3: Full Integration (Next Week)
- [ ] SCOUT reads shared state
- [ ] Auto-prioritization based on RON's approvals
- [ ] Cross-agent knowledge queries

---

## Success Metrics

| Metric | Target |
|--------|--------|
| Sync latency | <1 second |
| Concurrent access | No conflicts |
| Query time | <100ms |
| Storage growth | <10MB/month |

---

## Code Sketch

```python
# shared_memory.py
import sqlite3
import json
from datetime import datetime

class SharedMemory:
    def __init__(self, db_path="~/.openclaw/memory/shared.sqlite"):
        self.conn = sqlite3.connect(db_path)
        self._init_tables()
    
    def add_knowledge(self, agent, knowledge_type, content, source):
        """Agent learns something, share it."""
        cursor = self.conn.cursor()
        cursor.execute("""
            INSERT INTO agent_knowledge 
            (agent, knowledge_type, content, source, created_at)
            VALUES (?, ?, ?, ?, ?)
        """, (agent, knowledge_type, json.dumps(content), source, datetime.now()))
        self.conn.commit()
        return cursor.lastrowid
    
    def get_unseen_knowledge(self, agent):
        """Get knowledge this agent hasn't seen yet."""
        cursor = self.conn.cursor()
        cursor.execute("""
            SELECT * FROM agent_knowledge 
            WHERE accessed_by NOT LIKE ?
            ORDER BY created_at DESC
        """, (f"%{agent}%",))
        return cursor.fetchall()
    
    def mark_accessed(self, knowledge_id, agent):
        """Mark knowledge as seen by agent."""
        cursor = self.conn.cursor()
        cursor.execute("""
            UPDATE agent_knowledge 
            SET accessed_by = accessed_by || ',' || ?
            WHERE id = ?
        """, (agent, knowledge_id))
        self.conn.commit()
```

---

## Decision Needed

**Which approach?**

| Option | Complexity | Speed | Git-Friendly | Recommendation |
|--------|-----------|-------|--------------|----------------|
| **A: Shared SQLite** | Medium | Fast | Yes | ✅ **Recommended** |
| **B: File JSON** | Low | Medium | Very | Good for simple cases |
| **C: Vault Only** | Low | Slow | Very | Already works, but slow |

**My recommendation:** Start with **Option A (Shared SQLite)** for fast sync, keep vault as persistent layer.

**Want me to implement Phase 1 now?**

---

*Architecture: AGENT-SHARED-MEM-001*
*Issue: ISSUE-056*
