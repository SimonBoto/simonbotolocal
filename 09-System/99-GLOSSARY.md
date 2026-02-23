# 99-GLOSSARY — Triangle Company Terms & Aliases

> **The language of Triangle Company.**
> 
> *Standardized terms, aliases, and shortcuts for consistent communication.*

**Last Updated:** 2026-02-22  
**Version:** 1.0

---

## 🏢 COMPANY TERMS

| Term | Definition | Context |
|------|------------|---------|
| **Triangle Company** | Autonomous AI-agent organization | "We are Triangle Company" |
| **The Triangle** | Governance model: Human → AI → Impact | "The Triangle: 🔺" |
| **HUB** | CEO (authority center) | "Route to HUB for decision" |
| **AI Boss** | RON (execution coordinator) | "AI Boss delegates to agents" |
| **Muscle** | GROQ/FREE/PAID agents | "Spawn Muscle for batch work" |
| **Brain** | RON (complex reasoning) | "Brain work: synthesis, strategy" |

---

## 🎯 PRIORITY SYSTEM

| Term | Meaning | Use When |
|------|---------|----------|
| **P0** | Must do — critical path | Blocking, deadline-driven |
| **P1** | Should do — progress items | Important but not blocking |
| **P2** | Backlog — when time allows | Nice to have, future work |
| **URGENT** | Interrupt current work | True emergency only |
| **ASAP** | As soon as possible | Flexible urgency |

---

## 🎛️ AUTHORITY LEVELS

| Term | Definition | Examples |
|------|------------|----------|
| **GREEN** | Pre-authorized — execute without asking | File ops, research, git |
| **YELLOW** | Decide & report — execute, then inform | >25 files, template changes |
| **RED** | Ask first — get approval before acting | External comms, $, deletes |
| **L2** | Autonomy Level 2 — GREEN pre-auth | Current RON setting |
| **ARM_RED** | Emergency phrase for destructive ops | "I ACCEPT RED" |

---

## 📋 FILE ALIASES

| Alias | Full Path | Purpose |
|-------|-----------|---------|
| **COMMAND** | `08-Dashboards/00-COMMAND.md` | CEO objectives |
| **QUEUE** | `08-Dashboards/01-QUEUE.md` | Current status |
| **HANDOFF** | `08-Dashboards/02-HANDOFF.md` | Pending review |
| **LOG** | `08-Dashboards/03-LOG.md` | Session record |
| **SYSTEM** | `08-Dashboards/04-SYSTEM.md` | Tool status |
| **INTAKE** | `08-Dashboards/00-INTAKE.md` | Unified input queue |
| **ORGANOGRAM** | `05-Projects/Triangle/ORGANOGRAM.md` | Company blueprint |
| **HANDOFF** | `05-Projects/Triangle/SESSION_HANDOFF.md` | Continuity record |

---

## 🤖 AGENT ALIASES

| Alias | Full Name | Model | Best For |
|-------|-----------|-------|----------|
| **RON** | Research & Operations Navigator | moonshot/kimi-k2.5 | Brain work, strategy |
| **GROQ** | Groq Optimized Query | groq/llama-3.3-70b | Speed, parallel (30 RPM) |
| **FREE** | Free Router Explorer | openrouter/gemini-flash | Zero cost, testing |
| **PAID** | Premium Access Intelligence | openrouter/gemini-1.5-flash | Quality, reliability |

**Spawn Commands:**
```bash
# RON (default, no flag needed)
openclaw agent --message "Hello"

# GROQ for batch work
openclaw agent --agent groq --message "Extract 10 refs"

# FREE for routine
openclaw agent --agent free --message "Check web"

# PAID for quality
openclaw agent --agent paid --message "Critical review"
```

---

## 📁 FOLDER SHORTCUTS

| Shortcut | Full Path | Purpose |
|----------|-----------|---------|
| **Vault** | `~/Workspaces/TheOptimizedBrain/` | Main knowledge base |
| **Triangle** | `05-Projects/Triangle/` | Company HQ |
| **Inbox** | `00-Inbox/` | New sources drop |
| **Zettels** | `03-Zettels/Conscious/` | Atomic notes |
| **Refs** | `01-References/Hub/` | Reference library |
| **Dashboard** | `~/.openclaw/workspace/dashboard/` | HTML files |

---

## 💰 COST TERMS

| Term | Definition | Notes |
|------|------------|-------|
| **RPM** | Requests Per Minute | GROQ: 30 max |
| **TPM** | Tokens Per Minute | GROQ: 200K max |
| **RPD** | Requests Per Day | GROQ: ~14,400 |
| **$/M** | Dollars per million tokens | PAID: $0.075/M input |
| **Cap** | Daily spending limit | PAID: $2/day hard |
| **Free Tier** | $0 cost APIs | GROQ, FREE agent |

---

## 🔄 WORKFLOW TERMS

| Term | Definition | Context |
|------|------------|---------|
| **Staging** | Draft state, awaiting review | "Promote from staging" |
| **Production** | Approved, final state | "In production vault" |
| **Extraction** | Pull insights from source | "Extract this paper" |
| **Atomic** | Single-idea note | "Create atomics" |
| **MOC** | Map of Content (navigation hub) | "Link to PhD MOC" |
| **Git Checkpoint** | Commit before batch work | "Git checkpoint now" |
| **Spawn** | Create agent session | "Spawn GROQ for batch" |
| **Synthesize** | Combine multiple inputs | "Synthesize results" |

---

## 🚨 EMERGENCY TERMS

| Term | Meaning | Action |
|------|---------|--------|
| **STOP** / **HALT** | Emergency brake | RON stops immediately |
| **🛑** | Emoji stop signal | Same as STOP |
| **Gateway Down** | OpenClaw disconnected | Run recovery one-liner |
| **Pairing Required** | Device auth needed | Clear devices, restart |
| **1008 Error** | Gateway bug | Restart gateway |

**Recovery One-Liner:**
```bash
rm -rf ~/.openclaw/devices/* && openclaw gateway restart && sleep 3
```

---

## 📊 PHD-SPECIFIC TERMS

| Term | Definition | Context |
|------|------------|---------|
| **GOLD Ref** | High-priority reference | 10 GOLD refs extraction |
| **SILVER Ref** | Medium-priority reference | 30 SILVER refs |
| **BRONZE Ref** | Standard reference | 88 BRONZE refs |
| **IR** | Insulin Resistance | Main PhD topic |
| **MetS** | Metabolic Syndrome | Related condition |
| **miR** | microRNA | Molecular mechanism |
| **Adipic** | Adipic acid | Biomarker focus |
| **Butyrate** | Short-chain fatty acid | Mechanism focus |
| **METHAP** | Clinical trial name | PhD application |
| **IRB** | Institutional Review Board | Ethics approval |

---

## 🎨 DASHBOARD TERMS

| Term | URL | Purpose |
|------|-----|---------|
| **Mission Control** | `/` | Daily operations |
| **About** | `/about.html` | Company overview |
| **Organogram** | `/org.html` | Structure & roles |
| **Forge** | `/forge.html` | Workflow & sprint |
| **:4444** | `localhost:4444` | Dashboard server |

---

## 📝 ABBREVIATIONS

| Short | Long | Usage |
|-------|------|-------|
| **CEO** | Chief Executive Officer | You |
| **AIB** | AI Boss | RON (deprecated term) |
| **MCP** | Model Context Protocol | Tool integration |
| **API** | Application Programming Interface | External service |
| **PHI** | Protected Health Information | Private patient data |
| **YAML** | YAML Ain't Markup Language | Frontmatter format |
| **UID** | Unique Identifier | Note naming |
| **PMID** | PubMed Identifier | Paper reference |
| **DOI** | Digital Object Identifier | Paper reference |

---

## 🔗 COMMON LINKS

| Link | Target |
|------|--------|
| `[[00-COMMAND]]` | CEO objectives |
| `[[01-QUEUE]]` | Current status |
| `[[02-HANDOFF]]` | Pending review |
| `[[03-LOG]]` | Session record |
| `[[ORGANOGRAM]]` | Company structure |
| `[[PhD_IR_MOC]]` | PhD navigation hub |
| `[[00-Inbox]]` | New sources |
| `[[02-Atomic]]` | Knowledge base |

---

## 🆘 QUICK REFERENCE CARD

**Print this:**
```
┌────────────────────────────────────────┐
│  TRIANGLE GLOSSARY — QUICK REFERENCE   │
├────────────────────────────────────────┤
│  P0 = Must do (critical)              │
│  P1 = Should do (progress)            │
│  P2 = Backlog (future)                │
├────────────────────────────────────────┤
│  GREEN = Do it (pre-authorized)       │
│  YELLOW = Do & report                 │
│  RED = Ask first                      │
├────────────────────────────────────────┤
│  COMMAND → QUEUE → HANDOFF → LOG      │
├────────────────────────────────────────┤
│  RON = Brain (strategy)               │
│  GROQ = Speed (30 RPM)                │
│  FREE = $0 (testing)                  │
│  PAID = Quality ($2/day)              │
└────────────────────────────────────────┘
```

---

*📝 Triangle Glossary — Living document, add terms as needed*
