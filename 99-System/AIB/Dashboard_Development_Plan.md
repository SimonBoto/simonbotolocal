# 🖥️ RON Dashboard Development Plan

> **Status:** Active development | **Port:** 4444 | **Location:** `~/.openclaw/workspace/dashboard/`

---

## Current State

**What's Working:**
- ✅ Basic HTTP server (`python3 -m http.server`)
- ✅ Serves static files on port 4444
- ✅ Accessible at `http://localhost:4444`

**What's Broken:**
- ❌ `/api/memory` endpoint returns 404
- ❌ No dynamic data from vault
- ❌ No real-time status updates

---

## Required Endpoints

| Endpoint | Method | Purpose | Status |
|----------|--------|---------|--------|
| `/api/memory` | GET | Fetch vault stats, atomics, refs | ❌ 404 |
| `/api/status` | GET | Gateway, Bot Company health | ❌ Missing |
| `/api/inbox` | GET | Inbox count, pending items | ❌ Missing |
| `/api/git` | GET | Commit count, branch status | ❌ Missing |
| `/api/execute` | POST | Run RON commands | ❌ Missing |

---

## Implementation Options

### Option A: Python Flask (Recommended)
```python
from flask import Flask, jsonify
import subprocess
import os

app = Flask(__name__)

@app.route('/api/memory')
def get_memory():
    # Read vault stats
    atomics = len(os.listdir('~/Workspaces/TheOptimizedBrain/02-Atomic'))
    refs = len(os.listdir('~/Workspaces/TheOptimizedBrain/66-Literature/Refs'))
    return jsonify({'atomics': atomics, 'refs': refs})

if __name__ == '__main__':
    app.run(port=4444)
```

**Pros:** Simple, Python-native, easy vault integration  
**Cons:** Requires Flask install (`pip install flask`)

### Option B: Node.js Express
- Better for real-time (WebSocket)
- More complex setup

### Option C: Keep Python Simple
- Extend `server.sh` with CGI/FastAPI
- Minimal dependencies

---

## MVP Features (Priority Order)

### P0 — Core API
- [ ] Fix `/api/memory` — Return vault stats
- [ ] Add `/api/status` — Bot Company health
- [ ] Add `/api/inbox` — Inbox count

### P1 — Live Updates
- [ ] WebSocket for real-time updates
- [ ] Auto-refresh every 30 seconds
- [ ] Git status integration

### P2 — Command Interface
- [ ] POST `/api/command` — Execute RON tasks
- [ ] Response streaming
- [ ] Task queue visualization

---

## AIB Recommendation

**Deploy:** Option A (Flask)  
**Why:** Simos knows Python, vault is Python-scriptable, fastest path to working  
**ETA:** 1-2 hours to MVP  
**Cost:** $0 (local development)

**Next Action:** I draft `dashboard/app.py` with core endpoints?  
**Or:** Add to P1 queue for later this week?

---

*Dashboard Plan — Ready for CEO approval*
