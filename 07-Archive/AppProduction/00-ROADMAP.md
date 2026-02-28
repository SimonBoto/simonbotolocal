# App Production Roadmap — Q1 2026

> **Skills First. Apps Second. Scale Third.**

**Start Date:** 2026-02-23  
**End Date:** 2026-05-23  
**Budget:** $150 (3 months API)  
**Time:** 20 hrs/week + night cron

---

## 🗓️ PHASE 1: Skills Infrastructure (Feb 23 – Apr 5)

### Week 1: Feb 23 – Mar 1
**Focus:** Memory Continuity

| Day | Task | Deliverable |
|-----|------|-------------|
| Mon | Create skill structure | `memory-continuity/` folder |
| Tue | Write session-recorder.js | Records to LIVE_CONTEXT.md |
| Wed | Write context-loader.js | Injects on session start |
| Thu | Write handoff-generator.js | Auto-updates SESSION_HANDOFF |
| Fri | Integration testing | RON loads context automatically |
| Sat | Bug fixes | Working smoothly |
| Sun | Documentation | README.md complete |

**Week 1 Deliverable:** `skill-memory-continuity v1.0`

---

### Week 2: Mar 2 – Mar 8
**Focus:** Auto-Git

| Day | Task | Deliverable |
|-----|------|-------------|
| Mon | Git watcher script | Detects file changes |
| Tue | Commit message generator | Rule-based, meaningful |
| Wed | Cron integration | Every 15 minutes |
| Thu | Testing | 100 commits, zero manual |
| Fri | Edge cases | Large files, binary, etc |
| Sat | Logging | 99-System/Logs/git-auto.log |
| Sun | Documentation | README.md complete |

**Week 2 Deliverable:** `skill-auto-git v1.0`

---

### Week 3: Mar 9 – Mar 15
**Focus:** Inbox Watcher

| Day | Task | Deliverable |
|-----|------|-------------|
| Mon | File system watcher | 00-Inbox/ monitoring |
| Tue | Telegram polling | API integration |
| Wed | Web endpoint | POST /intake |
| Thu | Unified queue | 00-INTAKE.md format |
| Fri | Classification | Keyword detection |
| Sat | Dashboard notification | Visual alert |
| Sun | Documentation | README.md complete |

**Week 3 Deliverable:** `skill-inbox-watcher v1.0`

---

### Week 4: Mar 16 – Mar 22
**Focus:** Cost Tracker

| Day | Task | Deliverable |
|-----|------|-------------|
| Mon | API interceptor | Middleware for all calls |
| Tue | Cost calculator | Per-model rates |
| Wed | Daily tally | Auto-update COST_TRACKING |
| Thu | Alert system | Threshold notifications |
| Fri | Weekly reports | Auto-generated |
| Sat | Optimization hints | "Use FREE instead?" |
| Sun | Documentation | README.md complete |

**Week 4 Deliverable:** `skill-cost-tracker v1.0`

---

### Week 5-6: Mar 23 – Apr 5
**Focus:** Dashboard Sync + Integration

| Week | Task | Deliverable |
|------|------|-------------|
| 5 | WebSocket server, file watchers | Live data push |
| 5 | Dashboard subscription | Auto-refresh UI |
| 6 | All skills integration | Working together |
| 6 | Testing, bug fixes | Stable v1.0 |
| 6 | Documentation | Complete skill specs |

**Phase 1 Deliverable:** 5 skills operational, dashboard live

---

## 🗓️ PHASE 2: Internal Apps (Apr 6 – May 3)

### Week 7-8: Apr 6 – Apr 19
**Focus:** Vault Bridge

| Component | Tech | Purpose |
|-----------|------|---------|
| File watcher | chokidar | Obsidian change detection |
| Sync engine | Node.js | Bi-directional sync |
| WebSocket | ws | Real-time dashboard updates |
| API bridge | Express | Dashboard → Obsidian |

**Deliverable:** `app-vault-bridge v1.0`
- Real-time sync between vault and dashboard
- Git auto-commit integration
- Live status indicators

---

### Week 9-10: Apr 20 – May 3
**Focus:** Intake Router

| Component | Tech | Purpose |
|-----------|------|---------|
| Classification | Rule-based + light ML | Auto-detect input type |
| Routing engine | Node.js | Route to right queue |
| Priority system | Algorithm | P0/P1/P2 assignment |
| UI | React component | Visual intake board |

**Deliverable:** `app-intake-router v1.0`
- Unified input queue
- Auto-classification
- Visual routing

---

## 🗓️ PHASE 3: Night Jobs & Polish (May 4 – May 23)

### Week 11-12: May 4 – May 17
**Focus:** Cron Manager + Night Jobs

| Job | Time | Agent | Output |
|-----|------|-------|--------|
| Reference extraction | 22:00 | GROQ | 10 PMIDs → atomics |
| MOC cleanup | 23:00 | FREE | Fixed links, indexes |
| Handoff generation | 00:00 | RON | Morning summary |
| Git checkpoint | 01:00 | auto-git | All changes committed |
| Cost report | 02:00 | cost-tracker | Daily spending |
| Vault backup | 03:00 | auto | Full backup |
| Health check | 04:00 | auto | Service restart if needed |

**Deliverable:** `app-cron-manager v1.0`
- Visual job scheduler
- Logs and monitoring
- Error handling

---

### Week 13: May 18 – May 23
**Focus:** Integration Testing & v1.0 Release

- All skills + apps working together
- Load testing (simulate 1 week)
- Bug fixes
- Documentation complete
- Handoff to operations

**Deliverable:** App Production v1.0

---

## 🎯 Monthly Milestones

### March 2026 (Phase 1 Complete)
- ✅ 5 skills operational
- ✅ Auto-git saving 2+ hrs/week
- ✅ Context continuity working
- ✅ Cost tracking accurate
- ✅ Dashboard live-updating

### April 2026 (Phase 2 Complete)
- ✅ Vault bridge syncing
- ✅ Intake router routing
- ✅ Night jobs running
- ✅ PhD work measurably faster

### May 2026 (Phase 3 Complete)
- ✅ Full system operational
- ✅ All cron jobs automated
- ✅ ROI positive (time saved > time invested)
- ✅ Ready for Phase 4 (if desired)

---

## 💰 Budget Allocation

| Month | API Costs | Purpose |
|-------|-----------|---------|
| March | $20 | Skill testing, RON architecture |
| April | $30 | App development, integration |
| May | $40 | Testing, night jobs, polish |
| **Total** | **$90** | Well under $150 budget |

**Savings from skills:**
- Manual git: 2 hrs/week × 12 weeks = 24 hrs saved
- Context catch-up: 5 hrs/week × 12 weeks = 60 hrs saved
- Dashboard maintenance: 3 hrs/week × 12 weeks = 36 hrs saved
- **Total: 120 hours saved** (~$1,200 value at $10/hr)

**ROI: 1,233%** 😎

---

## 🚨 Risk Mitigation

| Risk | Likelihood | Mitigation |
|------|------------|------------|
| Skills don't work together | Medium | Weekly integration testing |
| PhD work blocked | Low | Priority: PhD P0, Apps P1 |
| API costs overrun | Low | Hard caps, FREE agent preference |
| Cron jobs fail silently | Medium | Health checks, morning alerts |
| Scope creep | High | Strict weekly deliverables |

---

## 📊 Success Metrics

**Quantitative:**
- [ ] Git commits: 100% automated
- [ ] Context load time: <30 seconds (vs 10+ minutes)
- [ ] Cost tracking: ±$0.01 accuracy
- [ ] Dashboard freshness: <5 seconds
- [ ] Night jobs: 99% uptime

**Qualitative:**
- [ ] RON doesn't re-read files every session
- [ ] You don't worry about losing work
- [ ] Dashboard feels "alive"
- [ ] PhD work flows smoothly

---

*🗓️ Roadmap v1.0 — Adjust as reality demands*
