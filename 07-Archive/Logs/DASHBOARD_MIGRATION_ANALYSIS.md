# Dashboard Connection Analysis & Migration Safety Plan
## Complete Risk Assessment + Solutions

**Analysis Date:** 2026-02-22  
**Scope:** All dashboard files (HTML) + 22-Dashboards/ (MD)

---

## Dashboard Files Scanned

### 1. index.html — Mission Control
**Location:** `~/.openclaw/workspace/dashboard/index.html`

**Obsidian Links Found (30 total):**

| Line | Link | Risk | Post-Migration Status |
|------|------|------|----------------------|
| 220-223 | `22-Dashboards/00-COMMAND` → `03-LOG` | 🟢 SAFE | No change |
| 226 | `00-Inbox` | 🟢 SAFE | No change |
| 227 | `02-Atomic` | 🔴 **BREAKS** | Moving to `77-Archive/02-Atomic-Legacy/` |
| 228 | `66-Literature/Refs` | 🔴 **BREAKS** | Moving to `77-Archive/Refs-Legacy/` |
| 229 | `99-System/Triangle/00-INDEX` | 🟢 SAFE | No change |
| 259-262 | `99-System/Triangle/03-AGENTS` (×4) | 🟢 SAFE | No change |
| 275-278 | `22-Dashboards/*` (×4) | 🟢 SAFE | No change |
| 313 | `99-System/Triangle/04-PROJECTS` | 🟢 SAFE | No change |
| 336 | `00-Inbox` | 🟢 SAFE | No change |

**CRITICAL BREAKS:** 2 links (02-Atomic, 66-Literature/Refs)

---

### 2. about.html — About Page
**Location:** `~/.openclaw/workspace/dashboard/about.html`

**Obsidian Links Found (14 total):**

| Line | Link | Risk | Post-Migration Status |
|------|------|------|----------------------|
| 471 | `99-System/Triangle/01-CEO` | 🟢 SAFE | No change |
| 496 | `22-Dashboards/00-COMMAND` | 🟢 SAFE | No change |
| 508 | `99-System/Triangle/02-AI-BOSS` | 🟢 SAFE | No change |
| 532 | `22-Dashboards/01-QUEUE`, `02-HANDOFF` | 🟢 SAFE | No change |
| 691 | `99-System/Triangle/04-PROJECTS` | 🟢 SAFE | No change |
| 699-714 | `22-Dashboards/*`, `99-System/*`, `00-Inbox` (×6) | 🟢 SAFE | No change |

**CRITICAL BREAKS:** 0 links

---

### 3. org.html — Organogram
**Location:** `~/.openclaw/workspace/dashboard/org.html`

**Obsidian Links Found (4 total):**

| Line | Link | Risk | Post-Migration Status |
|------|------|------|----------------------|
| 349 | `99-System/Triangle/01-CEO` | 🟢 SAFE | No change |
| 361 | `99-System/Triangle/02-AI-BOSS` | 🟢 SAFE | No change |
| 373, 380, 387 | `99-System/Triangle/03-AGENTS` (×3) | 🟢 SAFE | No change |

**CRITICAL BREAKS:** 0 links

---

### 4. forge.html — Workflow & Operations
**Location:** `~/.openclaw/workspace/dashboard/forge.html`

**Obsidian Links Found (9 total):**

| Line | Link | Risk | Post-Migration Status |
|------|------|------|----------------------|
| 384-386 | `22-Dashboards/00-COMMAND` → `02-HANDOFF` | 🟢 SAFE | No change |
| 526, 533, 548, 555 | `99-System/Triangle/04-PROJECTS` (×4) | 🟢 SAFE | No change |
| 589 | `99-System/Triangle/04-PROJECTS` | 🟢 SAFE | No change |
| 632 | `99-System/Triangle/00-INDEX` | 🟢 SAFE | No change |

**CRITICAL BREAKS:** 0 links

---

## 22-Dashboards/ (Triangle System)

**Location:** `/home/simon/Workspaces/TheOptimizedBrain/22-Dashboards/*.md`

**References Found:**

| File | References | Risk |
|------|------------|------|
| 00-COMMAND.md | `99-System/DISASTER_RECOVERY.md` | 🟢 SAFE |
| 03-LOG.md | Multiple `99-System/Triangle/*` | 🟢 SAFE |
| 04-SYSTEM.md | `99-System/DISASTER_RECOVERY.md` | 🟢 SAFE |
| DAILY_OPS.md | `99-System/*`, `11-Templates/` | 🟡 **CHECK** |

**DAILY_OPS.md has legacy reference:**
- Line 45: `[[11-Templates/|Templates]]` → This will break (moving to `05-Structure/05a-Templates/`)

**CRITICAL BREAKS:** 1 link (DAILY_OPS.md → 11-Templates/)

---

## Summary: What Will Break

### Dashboard HTML (4 files)
| File | Broken Links | Fix Required |
|------|--------------|--------------|
| **index.html** | 2 | Update 02-Atomic + 66-Literature/Refs links |
| about.html | 0 | None |
| org.html | 0 | None |
| forge.html | 0 | None |

### 22-Dashboards/ (5+ files)
| File | Broken Links | Fix Required |
|------|--------------|--------------|
| **DAILY_OPS.md** | 1 | Update 11-Templates/ link |
| Others | 0 | None |

**Total Critical Links:** 3

---

## Q: Does Obsidian Auto-Update Links?

### Answer: YES for GUI, NO for Git/Terminal

**Obsidian auto-updates when:**
- ✅ You move files within Obsidian's UI
- ✅ You rename files in Obsidian
- ✅ Using "Move file" command in Obsidian

**Obsidian DOES NOT auto-update when:**
- ❌ Using `mv` or `git mv` in terminal
- ❌ Git operations (checkout, reset)
- ❌ Batch operations outside Obsidian
- ❌ Moving files between vaults

**Our migration uses:** Terminal commands (`mv`, `git mv`, `sed`)

**Result:** ❌ **Obsidian will NOT auto-update** — we must manually fix

---

## Solutions: How to Ensure Migration Won't Harm Dashboard

### Solution A: Pre-Migration Link Audit + Coordinated Fix (RECOMMENDED)

**Phase 0 (Before Migration):**
```bash
# 1. Document all links that will break
grep -rn "02-Atomic\|66-Literature/Refs\|11-Templates/" \
  ~/.openclaw/workspace/dashboard/*.html \
  /home/simon/Workspaces/TheOptimizedBrain/22-Dashboards/*.md \
  > /tmp/links-to-fix.txt

# 2. Prepare sed replacement script
cat > /tmp/fix-dashboard-links.sh << 'EOF'
#!/bin/bash
# Fix dashboard HTML files
sed -i 's|02-Atomic|77-Archive/Legacy_20260222/02-Atomic-Legacy|g' ~/.openclaw/workspace/dashboard/index.html
sed -i 's|66-Literature/Refs|77-Archive/Legacy_20260222/Refs-Legacy|g' ~/.openclaw/workspace/dashboard/index.html

# Fix 22-Dashboards/
sed -i 's|11-Templates/|05-Structure/05a-Templates/|g' /home/simon/Workspaces/TheOptimizedBrain/22-Dashboards/DAILY_OPS.md
EOF
chmod +x /tmp/fix-dashboard-links.sh
```

**Phase 2 (After Migration):**
```bash
# Execute the prepared fix
bash /tmp/fix-dashboard-links.sh

# Verify
grep -c "02-Atomic" ~/.openclaw/workspace/dashboard/index.html  # Should be 0
grep -c "66-Literature/Refs" ~/.openclaw/workspace/dashboard/index.html  # Should be 0
grep -c "11-Templates/" /home/simon/Workspaces/TheOptimizedBrain/22-Dashboards/DAILY_OPS.md  # Should be 0
```

**Pros:**
- Clean, atomic operation
- No temporary clutter
- Documented, repeatable

**Cons:**
- Brief broken links between Phase 1 and Phase 2

---

### Solution B: Symlinks (Backward Compatibility)

**Create symlinks before migration:**
```bash
# In vault root
cd /home/simon/Workspaces/TheOptimizedBrain/

# Create symlinks for backward compatibility
ln -s 77-Archive/Legacy_20260222/02-Atomic-Legacy 02-Atomic
ln -s 77-Archive/Legacy_20260222/Refs-Legacy 66-Literature/Refs
ln -s 05-Structure/05a-Templates 11-Templates
```

**Dashboard links remain valid:**
- `02-Atomic/` → redirects to archive
- `66-Literature/Refs/` → redirects to archive
- `11-Templates/` → redirects to new location

**Pros:**
- Zero downtime
- No link updates needed

**Cons:**
- Clutters root with legacy symlinks
- May confuse (old paths still "work")
- Not a clean migration

---

### Solution C: MOC-Based Indirection (Future-Proof)

**Dashboard only links to MOCs:**
```html
<!-- OLD: Direct link to zettels -->
<a href="obsidian://open?vault=TheOptimizedBrain&file=04-Zettels/...">

<!-- NEW: Link to MOC only -->
<a href="obsidian://open?vault=TheOptimizedBrain&file=MOC-001">
```

**MOCs then link to zettels:**
```markdown
<!-- MOC-001.md -->
- [[Zettel 1]]
- [[Zettel 2]]
```

**Pros:**
- Resilient to reorganization
- Single point of update
- Clean abstraction

**Cons:**
- Requires MOC discipline
- More clicks to reach content
- Major dashboard refactor

---

### Solution D: Post-Migration Manual Fix (ACCEPTABLE)

**Steps:**
1. Execute v4.0 migration
2. Dashboard temporarily broken (2 broken links)
3. Manually update the 3 broken links
4. Test all dashboard pages

**Pros:**
- Simple
- No preparation needed

**Cons:**
- Manual error risk
- Brief user-facing broken links

---

## Recommended Approach

**Primary: Solution A (Pre-Audit + Coordinated Fix)**

**Reasoning:**
- Only 3 links break (not 30+)
- Dashboard primarily uses safe paths (22-Dashboards/, 99-System/)
- Clean migration = better long-term
- Can be scripted, no manual errors

**Execution:**
1. Prepare sed script (now)
2. Execute v4.0 migration
3. Immediately run link fix script
4. Verify all dashboards work
5. Git commit together

---

## Core Files That Need Updates

### Critical Updates (Must Do)

| File | Current Path | New Path | Action |
|------|--------------|----------|--------|
| index.html:227 | `02-Atomic` | `77-Archive/Legacy_20260222/02-Atomic-Legacy` | sed replace |
| index.html:228 | `66-Literature/Refs` | `77-Archive/Legacy_20260222/Refs-Legacy` | sed replace |
| DAILY_OPS.md:45 | `11-Templates/` | `05-Structure/05a-Templates/` | sed replace |

### Optional Updates (Should Do)

| File | Update | Reason |
|------|--------|--------|
| SYSTEM_README_v3.0.md | v3.0 → v4.0 | Documentation accuracy |
| 99-System/UID_SYSTEM_v2.0.md | Verify paths | Consistency |
| All templates | Verify | Working correctly |

---

## Execution Plan (Safe Migration)

### Phase 0: Pre-Migration (NOW)
- [ ] Prepare `/tmp/fix-dashboard-links.sh` script
- [ ] Test script on copy
- [ ] Document all changes

### Phase 1: Migration (When You Say "Execute")
- [ ] Execute Phase 1 (infrastructure)
- [ ] Execute Phase 2 (file moves)
- [ ] Git commit migration

### Phase 2: Dashboard Fix (Immediately After)
- [ ] Run `/tmp/fix-dashboard-links.sh`
- [ ] Verify: `grep -c "02-Atomic" index.html` = 0
- [ ] Verify: `grep -c "66-Literature/Refs" index.html` = 0
- [ ] Verify: `grep -c "11-Templates/" DAILY_OPS.md` = 0
- [ ] Git commit dashboard fixes

### Phase 3: Verification
- [ ] Open localhost:4444
- [ ] Click all navigation links
- [ ] Verify no 404s in Obsidian
- [ ] Test obsidian:// links

---

## Session Completion Applied ✅

Template filled for this session:
- 5 hours 36 minutes
- 12+ files created
- 3 broken links identified
- Solution A recommended

**Next:** Prepare fix script or defer migration to dedicated session.
