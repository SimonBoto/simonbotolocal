---
uid: AUDIT-PLAN-DETAILED-2026-04-20
type: audit
title: Full Vault Audit Plan - Detailed Phases
date: 2026-04-20
---

# Full Vault Audit Plan - Detailed Phases

## Phase 1: Core Files (2h)

### 1.1 AGENTS.md
- [ ] Verify all ritual phrases documented
- [ ] Add executable example for Pre-Task Checklist
- [ ] Cross-reference with error patterns from memory/
- [ ] Add "Quick reference" card at top
- [ ] Verify emoji reaction table complete

### 1.2 TOOLS.md
- [ ] Verify structure diagram matches reality
- [ ] Add "How to create new file type" section
- [ ] Verify UID examples match actual files
- [ ] Add troubleshooting for common errors
- [ ] Check all template links work

### 1.3 SOUL.md
- [ ] Verify Core Truths 1-18 all present
- [ ] Add examples for each Core Truth
- [ ] Cross-check with recent lessons
- [ ] Verify Risk Framework examples
- [ ] Add "When to escalate" flowchart

### 1.4 USER.md
- [ ] Verify schedule current
- [ ] Add "How to work with me" quick guide
- [ ] Update goals status
- [ ] Verify contact preferences

### 1.5 MEMORY.md
- [ ] Verify North Star alignment
- [ ] Check agent table current
- [ ] Update dashboard links
- [ ] Verify cost table accurate
- [ ] Add "How to update this file" section

### 1.6 BOOTSTRAP.md
- [ ] Verify all scenarios covered
- [ ] Add decision tree diagram
- [ ] Check error handling complete
- [ ] Verify related files list current

### 1.7 HEARTBEAT.md
- [ ] Verify schedule matches USER.md
- [ ] Add "When to alert" examples
- [ ] Check skip options documented
- [ ] Verify format minimal

### 1.8 AUTONOMY.md
- [ ] Verify L0-L4 definitions clear
- [ ] Add git checkpoint examples
- [ ] Check safety protocols
- [ ] Verify escalation paths

---

## Phase 2: Dashboard Trinity (1h)

### 2.1 00-MISSION.md
- [ ] Verify philosophy only (no operations)
- [ ] Check North Star clear
- [ ] Verify Triangle defined
- [ ] Add "How to use this" section

### 2.2 00-COMMAND.md
- [ ] Verify P0s current
- [ ] Check Do Now ≤ 3
- [ ] Verify stale-proof mechanisms
- [ ] Add "How to update" section

### 2.3 01-PIPELINE.md
- [ ] Verify flow truth accurate
- [ ] Check bottlenecks identified
- [ ] Verify metrics auto-updating
- [ ] Add "How to read this" section

### 2.4 02-HANDOFF.md
- [ ] Verify last session accurate
- [ ] Check blockers clear
- [ ] Verify ready-for actionable
- [ ] Add "2-minute start" protocol

### 2.5 Cross-Links
- [ ] Verify all dashboard links work
- [ ] Check bidirectional navigation
- [ ] Add "Related dashboards" to each

---

## Phase 3: Issues/Agents/Skills (4h)

### 3.1 Skills - Executable Scripts

#### skill-extraction-v1.0.sh
```bash
#!/bin/bash
# FORG Extraction Pipeline
# Usage: ./skill-extraction-v1.0.sh <batch_id> <target_files>
```

#### skill-moc-consolidation.sh
```bash
#!/bin/bash
# MOC Consolidation
# Usage: ./skill-moc-consolidation.sh <wave_number>
```

#### skill-batch-fix.sh
```bash
#!/bin/bash
# Batch Fix Protocol
# Usage: ./skill-batch-fix.sh <pattern> <replacement> <path>
```

#### skill-zettel-alignment.sh
```bash
#!/bin/bash
# Zettel Template Alignment
# Usage: ./skill-zettel-alignment.sh <tier> <target_count>
```

### 3.2 Skills - Examples Folder

Create `08-Structure/Skills/examples/`:

#### examples/BATCH_01_TASK.md
- Real batch task example
- With actual content
- Show all fields

#### examples/moc-consolidation/
- before/ MOC list
- after/ merged MOCs
- links-updated/ sample files

#### examples/batch-fix/
- before/ files with errors
- after/ fixed files
- script/ fix-commands.sh

#### examples/zettel-alignment/
- bronze-tier/ sample zettel
- silver-tier/ sample zettel
- gold-tier/ sample zettel

### 3.3 Skills - Troubleshooting

Add to each skill:
- "If this fails..." section
- "Common mistakes" checklist
- "When to escalate" criteria
- "Verification commands" list

### 3.4 Issues System
- [ ] Verify all issue files complete
- [ ] Add "How to create issue" video/script
- [ ] Check template examples realistic
- [ ] Add issue lifecycle diagram

### 3.5 Agents System
- [ ] Verify agent profiles current
- [ ] Add "How to assign to agent" guide
- [ ] Check energy budgets realistic
- [ ] Add agent selection flowchart

---

## Phase 4: Templates (2h)

### 4.1 Template Audit

For each template in `08-Structure/Templates/`:
- [ ] Verify YAML valid
- [ ] Check all fields documented
- [ ] Add example output
- [ ] Add "When to use this" section
- [ ] Cross-check with actual vault files

### 4.2 Template Standardization

Ensure all templates have:
- Header with metadata
- Purpose section
- When to use / When NOT to use
- Steps (numbered)
- Example section
- Related templates

### 4.3 Deprecated Templates
- [ ] Identify outdated templates
- [ ] Move to Archive/
- [ ] Update indexes
- [ ] Add deprecation notice

---

## Phase 5: Indexes (1h)

### 5.1 Index Completeness

Every folder must have:
- [ ] Index file (Index-*.md or *-Index.md)
- [ ] Parent link (up)
- [ ] Child links (down)
- [ ] Related links (across)
- [ ] Quick start section

### 5.2 Index Consistency

Check all indexes have:
- [ ] Same structure
- [ ] Working links
- [ ] Current information
- [ ] Last updated date

### 5.3 Root Index (00-INDEX.md)
- [ ] Verify all main folders listed
- [ ] Check all links work
- [ ] Add "Start here" path
- [ ] Verify MOCs linked

---

## Phase 6: Final Verification (1h)

### 6.1 Link Check
```bash
# Find all broken wiki links
grep -r "\[\[" /home/simon/Workspaces/TheOptimizedBrain --include="*.md" | grep -v "]\]" | head -20
```

### 6.2 YAML Validation
```bash
# Check YAML frontmatter validity
# (manual spot check)
```

### 6.3 Naming Consistency
```bash
# Verify all files follow TOOLS.md conventions
ls -la /home/simon/Workspaces/TheOptimizedBrain/08-Structure/*/
```

### 6.4 Cross-Reference Check
- [ ] All error patterns linked to skills
- [ ] All skills linked to issues
- [ ] All issues linked to daily notes
- [ ] All daily notes linked to handoff

---

## Deliverables

1. **All core files** - 100% reproducible with examples
2. **All skills** - Executable scripts + examples + troubleshooting
3. **All templates** - Validated with example outputs
4. **All indexes** - Complete navigation
5. **Audit report** - What was fixed, what remains

---

## Timeline

| Phase | Time | Cumulative |
|-------|------|------------|
| Phase 1 | 2h | 2h |
| Phase 2 | 1h | 3h |
| Phase 3 | 4h | 7h |
| Phase 4 | 2h | 9h |
| Phase 5 | 1h | 10h |
| Phase 6 | 1h | 11h |

**Total: 11 hours**

---

## Start

Begin with Phase 1.1: AGENTS.md
