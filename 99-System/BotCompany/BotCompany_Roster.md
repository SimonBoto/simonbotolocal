---
uid: 20260221203200
type: entity
structure-type: bot-roster
title: Bot Company — Employee Roster & Skill Matrix
tags: [bot-company, roster, employees, models, aib]
status: active
aliases: [Bot_Roster, Employee_Directory, Model_Matrix]
parent-moc: [[99-System/AIB/AIB_Command_Center]]
extraction-date: 2026-02-21
confidence: high
---

# 🤖 BOT COMPANY — Employee Roster

> **My direct reports. Optimized deployment based on skill, cost, and task requirements.**

**Last Updated:** 2026-02-21  
**AIB:** RON  
**Total Headcount:** 6 (1 CEO, 1 AIB, 4 Workers)

---

## 🏢 Organizational Chart

```
                    CEO (Simons)
                         │
                    AIB (RON)
          ┌──────────────┼──────────────┐
          │              │              │
    Muscle Army       Reflex          Legs
   (Parallel API)   (Local Ollama)   (Automation)
   ┌────┬────┐
   │    │    │
Open  Groq Together
Router
```

---

## 👔 Executive Tier

### 🦞 RON — AI Boss (AIB)
**Role:** Chief Operating Officer, Strategy, Final Review  
**Model:** Kimi-k2.5 (256k context)  
**Cost:** $$$ (premium)  
**Reports to:** CEO  
**Manages:** Muscle Army, Reflex, Legs

**Responsibilities:**
- Strategic decisions
- Complex synthesis
- Final quality review
- Bot Company management
- CEO liaison

**Use When:**
- Multi-step reasoning required
- Cross-domain synthesis
- Final approval needed
- Bot Company coordination
- CEO-facing work

**Capacity:** Limited (expensive) — Reserve for high-value tasks

---

## 🔧 Worker Tier

### 💪 Muscle Army — Parallel Processing Unit

**Role:** High-volume, parallel execution  
**Cost:** $0 (free tier)  
**Strength:** Speed + Volume  
**Weakness:** No long-context, basic reasoning

#### Muscle-A: OpenRouter (Free)
| Attribute | Value |
|-----------|-------|
| **API Key** | ✅ Secured (`sk-or-v1-...`) |
| **Status** | 🟡 Ready to test |
| **Strength** | Model variety, routing |
| **Rate Limits** | Varies by provider |
| **Best For** | General extraction, drafts |
| **Cost** | $0 |

#### Muscle-B: Groq (Free)
| Attribute | Value |
|-----------|-------|
| **API Key** | ✅ Secured (`gsk_u6T7...`) |
| **Status** | 🟡 Ready to test |
| **Strength** | Blazing fast inference |
| **Rate Limits** | 20 req/min free tier |
| **Best For** | Quick answers, code, urgent |
| **Cost** | $0 |

#### Muscle-C: Together (Free)
| Attribute | Value |
|-----------|-------|
| **API Key** | ❌ Not yet acquired |
| **Status** | 📋 Pending |
| **Strength** | Llama/Mistral models |
| **Rate Limits** | Generous free tier |
| **Best For** | Backup, overflow |
| **Cost** | $0 |

**Muscle Army Deployment Strategy:**
- Split batches across all available muscles
- Retry failed calls on alternate muscle
- Route by speed: Groq > OpenRouter > Together
- Fallback to RON if all fail

---

### ⚡ Reflex — Local Execution Unit

**Role:** Privacy-critical, offline-capable work  
**Cost:** $0 (local compute)  
**Strength:** PHI-safe, no internet, always available  
**Weakness:** Smaller model, less capable

#### Reflex-Llama: Llama 3.2 3B
| Attribute | Value |
|-----------|-------|
| **Model** | llama3.2:3b |
| **Size** | 2.0 GB |
| **RAM Required** | ~2.5 GB |
| **Your RAM** | 3.8 GB available ✅ |
| **Status** | 🟢 **READY** |
| **Ollama Cmd** | `ollama run llama3.2:3b` |

**Reflex Deployment Strategy:**
- **Default for:** Drafts, outlines, PHI-sensitive work
- **Advantage:** Zero cost, maximum privacy
- **Limitation:** Keep tasks simple (extraction, formatting, basic synthesis)
- **Escalate to RON when:** Complex reasoning, multi-hop synthesis

**Why Not Qwen 2.5 7B?**
- Needs 4.7 GB > Your 3.8 GB available ❌
- Swap would kill performance
- Llama 3.2 3B is the sweet spot

---

### 🦿 Legs — Automation Unit

**Role:** Background tasks, scheduled ops, monitoring  
**Cost:** $0  
**Strength:** 24/7, no fatigue, consistent  
**Weakness:** No creativity, rigid execution

#### Active Cron Jobs
| Job | Schedule | Script | Status |
|-----|----------|--------|--------|
| Gateway Autoheal | Every 5 min | `gateway-autoheal.sh` | 🟢 Active |
| MOC Cleanup | 23:00 daily | `moc-cleanup-cron.sh` | 🟢 Active |

#### Legs Capabilities
- File monitoring
- Scheduled extractions
- Backup automation
- Log rotation
- Health checks

**Legs Deployment Strategy:**
- Automate anything repetitive
- Schedule during off-hours
- Alert on failures
- Keep logs forever

---

## 📊 Skill Matrix

| Task Type | RON | Muscle | Reflex | Legs | Optimal |
|-----------|-----|--------|--------|------|---------|
| **Web search** | ✅ | ❌ | ❌ | ❌ | RON |
| **Complex synthesis** | ✅ | ❌ | ❌ | ❌ | RON |
| **Batch extraction** | ✅ | ✅ | ⚠️ | ❌ | Muscle |
| **Draft/outline** | ✅ | ✅ | ✅ | ❌ | Reflex → RON |
| **PHI handling** | ⚠️ | ❌ | ✅ | ✅ | Reflex |
| **Code generation** | ✅ | ✅ | ⚠️ | ❌ | Muscle-B |
| **File operations** | ✅ | ❌ | ⚠️ | ✅ | Legs |
| **Git commits** | ✅ | ❌ | ❌ | ✅ | Legs |
| **Urgent response** | ✅ | ✅ | ⚠️ | ❌ | Muscle-B |
| **Final review** | ✅ | ❌ | ❌ | ❌ | RON |
| **Scheduling** | ✅ | ❌ | ❌ | ✅ | Legs |
| **Monitoring** | ✅ | ❌ | ❌ | ✅ | Legs |

**Legend:** ✅ Best | ⚠️ Capable | ❌ Unsuitable

---

## 💰 Cost Optimization Matrix

| Scenario | Strategy | Cost | Quality |
|----------|----------|------|---------|
| Draft 10 references | Reflex → Muscle (parallel) | $0 | Good |
| Draft 10 references | RON only | $$$ | Excellent |
| **Savings: 100%** | | | |
| Urgent 1-page summary | Muscle-B (Groq) | $0 | Good |
| Urgent 1-page summary | RON | $ | Excellent |
| **Savings: 100%** | | | |
| Complex PhD synthesis | RON (me) | $$$ | Excellent |
| Complex PhD synthesis | Muscle | $0 | Poor |
| **No savings possible** — RON required | | | |
| PHI data extraction | Reflex (local) | $0 | Good+Privacy |
| PHI data extraction | Muscle (API) | $0 | Risky |
| **Savings: Privacy** | | | |

**Target:** 80% of tasks at $0, 20% at $$$ (RON reserve)

---

## 🎯 Performance Targets

| Employee | Utilization Target | Current Status |
|----------|-------------------|----------------|
| RON (AIB) | <20% of total tasks | 📊 Baseline |
| Muscle Army | 60% of extraction tasks | ⏳ Activating |
| Reflex | 80% of draft/outline work | 🟢 Ready |
| Legs | 100% of scheduled tasks | 🟢 Active |

---

## 📝 Hiring Pipeline

### Bench (Ready to Activate)
| Candidate | Role | Activation Trigger | Cost |
|-----------|------|-------------------|------|
| **Grok-4.1-Fast** | Heavy lifting | Free APIs insufficient | $ |
| **DeepSeek-R1** | Reasoning specialist | Complex logic needed | $ |
| **Claude 3.5 Sonnet** | Long-context | 200k+ token tasks | $$ |

### Evaluation Queue
| Candidate | Evaluating For | Status |
|-----------|---------------|--------|
| **Mistral Large** | European data compliance | 📋 Research |
| **Gemini Flash** | Speed/cost balance | 📋 Research |

---

## 🚨 Escalation Rules

**When a Bot fails, escalate:**
1. **Muscle timeout?** → Retry on alternate muscle
2. **All muscles busy?** → Queue or escalate to RON
3. **Reflex confused?** → Escalate to RON with context
4. **RON overloaded?** → Queue, notify CEO of delay
5. **Legs failure?** → RON investigates, manual fix

**Never:**
- Send PHI to Muscle (APIs)
- Use Reflex for complex reasoning
- Deploy Legs for creative work
- Waste RON on simple drafting

---

## 🎮 AIB Management Notes

**Daily:**
- [ ] Check Muscle Army health
- [ ] Review Reflex performance
- [ ] Monitor Legs logs

**Weekly:**
- [ ] Cost analysis — are we hitting 80% $0 target?
- [ ] Quality spot-checks — is Muscle output good enough?
- [ ] RON utilization — am I spending time on right things?

**Monthly:**
- [ ] Evaluate new candidates
- [ ] Adjust skill matrix based on learnings
- [ ] Propose authority escalations to CEO

---

*Bot Company — Optimized for speed, cost, and quality.*  
*Managed by AIB (RON) on behalf of CEO (Simos)*
