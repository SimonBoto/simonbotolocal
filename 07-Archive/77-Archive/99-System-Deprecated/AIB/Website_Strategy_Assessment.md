# 🌐 Bot Company Website Strategy — Assessment & Analysis

> **Status:** Planning Phase | **Purpose:** Internal → Potential Public | **AIB Assessment**

**Date:** 2026-02-21  
**Decision Authority:** CEO (Simos) | **Analysis by:** AIB (RON)

---

## 🎯 Executive Summary

**Neither WordPress nor Wix is optimal** for our specific architecture. Given our Obsidian vault, Git workflow, API infrastructure, and Flask dashboard (:4444), we should consider:

1. **Static Site Generator (Hugo/Jekyll)** — Best for Obsidian integration
2. **Extend Current Dashboard** — Fastest path, internal-only first
3. **Notion → Potion** — Quick MVP, limited control
4. **WordPress** — If we need heavy CMS features later

**AIB Recommendation:** Start with **Hugo + Obsidian Git Publisher**, migrate to WordPress only if CMS needs exceed static capabilities.

---

## 📊 Option Analysis Matrix

| Criteria | WordPress | Wix | Hugo/SSG | Extend :4444 |
|----------|-----------|-----|----------|--------------|
| **Setup Time** | 2-4 hrs | 30 min | 1-2 hrs | 30 min |
| **Maintenance** | High (updates, security) | None | Low | Medium |
| **Cost** | $5-20/mo hosting | $14-39/mo | $0-5/mo | $0 |
| **Private/Internal** | ⚠️ Plugin needed | ❌ Limited | ✅ Yes (localhost) | ✅ Already private |
| **Obsidian Integration** | ⚠️ Plugin | ❌ None | ✅ Excellent | ✅ Direct files |
| **Bot Company Dashboard** | ⚠️ Custom dev | ❌ Limited | ✅ API integration | ✅ Native |
| **Public Publishing** | ✅ Excellent | ✅ Good | ✅ Good | ⚠️ Needs work |
| **Version Control** | ❌ Database | ❌ None | ✅ Git | ✅ Git |
| **Custom Domain** | ✅ Easy | ✅ Easy | ✅ Easy | ⚠️ Tunnel needed |
| **Scalability** | ✅ High | ⚠️ Limited | ✅ High | ⚠️ Single server |

---

## 🏆 Detailed Assessment

### Option 1: WordPress (Your Initial Thought)

**Pros:**
- Mature ecosystem, plugins for everything
- Easy public publishing
- User-friendly admin panel
- Good for complex CMS needs

**Cons:**
- **Security nightmare** — constant updates, vulnerability management
- **Database dependency** — content locked in MySQL, not Git-tracked
- **Heavy for internal use** — overkill for our needs
- **Obsidian integration** requires plugins/workflows
- **Cost:** $5-20/mo + maintenance time

**Best For:** Public-facing content marketing, complex membership sites
**Verdict:** ❌ **Overkill for internal, painful for our Git/Obsidian workflow**

---

### Option 2: Wix (Your Initial Thought)

**Pros:**
- Fastest setup (drag-drop)
- Zero maintenance
- Built-in hosting

**Cons:**
- **Vendor lock-in** — can't export cleanly
- **No Git integration** — content siloed
- **Limited private functionality** — designed for public sites
- **API limitations** — can't integrate Bot Company dashboard easily
- **Cost:** $14-39/mo ongoing

**Best For:** Brochure sites, portfolios, no-code landing pages
**Verdict:** ❌ **Wrong fit for technical team with Git/Obsidian infrastructure**

---

### Option 3: Static Site Generator (Hugo/Jekyll/Next.js) ⭐ AIB RECOMMENDATION

**Pros:**
- ✅ **Obsidian native** — markdown files work directly
- ✅ **Git-tracked** — everything version controlled
- ✅ **Free hosting** (GitHub Pages/Netlify)
- ✅ **Private deployment** — can run on localhost/internal network
- ✅ **Bot Company API integration** — can pull live data from our dashboard
- ✅ **Fast** — static files, no database
- ✅ **Future-proof** — easy to add public pages later

**Cons:**
- Requires technical setup (we have skills)
- No built-in WYSIWYG editor (write in Obsidian → Git → Deploy)

**Best For:** Technical teams, documentation sites, blogs, API-integrated dashboards
**Verdict:** ✅ **OPTIMAL for our architecture**

**Specific Recommendation:**
- **Hugo** (fastest build, great themes)
- **Obsidian Git Publisher** plugin → auto-export vault to site
- **Theme:** Docsy or Book for documentation, custom for Bot Company branding

---

### Option 4: Extend Current Dashboard (:4444) ⭐ FASTEST PATH

**Pros:**
- ✅ **Already running** — no new infrastructure
- ✅ **Direct vault access** — same file system
- ✅ **Bot Company integration** — APIs already local
- ✅ **Zero cost** — uses existing resources
- ✅ **Private by default** — localhost only

**Cons:**
- ⚠️ Not designed for public access (would need tunnel/reverse proxy)
- ⚠️ Flask development needed
- ⚠️ No CMS-like features

**Best For:** Internal dashboard, rapid MVP, Bot Company ops center
**Verdict:** ✅ **BEST for internal-only phase**

---

## 🎮 AIB Strategic Recommendation

### Phase 1: Internal Operations (NOW)
**Extend Current Dashboard (:4444)**
- Build Flask API endpoints for Bot Company status
- Create internal navigation to AIB Charter, Roster, Mission Control
- Add live metrics (vault stats, API health, Bot status)
- Keep localhost-only (no public exposure)

**ETA:** 2-4 hours  
**Cost:** $0  
**Benefit:** Immediate internal value, leverages existing work

---

### Phase 2: Knowledge Base (Month 1-2)
**Hugo Static Site + Obsidian Git Publisher**
- Auto-publish selected vault content (templates, methodologies)
- Private/internal hosting (or password-protected)
- Bot Company operations documentation
- PhD research public outputs (when ready)

**ETA:** 4-8 hours setup  
**Cost:** $0 (GitHub Pages) or $5/mo (Netlify Pro for password)  
**Benefit:** Scalable, Git-tracked, Obsidian-native

---

### Phase 3: Public Presence (Future)
**Evaluate based on needs:**
- If content-heavy + CMS needed → WordPress
- If API dashboard + interactive → Extend Flask + public hosting
- If simple marketing → Hugo public site

---

## 🛠️ Technical Architecture (Proposed)

```
Obsidian Vault
    ↓ (Git sync)
GitHub Repo
    ├─→ Branch: main → Hugo Site (internal/private)
    └─→ Branch: public → Hugo Site (public subset)
    
Local Dashboard (:4444)
    ├─ Bot Company API (live status)
    ├─ Vault metrics (Git integration)
    └─ AIB Command Center (operations)
    
Future Public Site (optional)
    └─ Subset of Hugo content + marketing pages
```

---

## 💰 Cost Projection

| Phase | Solution | Monthly Cost | Setup Time |
|-------|----------|--------------|------------|
| Internal | Extend :4444 | $0 | 2-4 hrs |
| Knowledge Base | Hugo + Netlify | $0-5 | 4-8 hrs |
| Public (future) | Hugo or WordPress | $0-20 | 8-16 hrs |
| **Total Year 1** | | **$0-60** | **14-28 hrs** |

---

## 🎯 Decision Framework for CEO

**Choose your priority:**

| If You Want... | Go With... | First Step |
|----------------|------------|------------|
| **Fastest internal value** | Extend :4444 | I'll build Flask API now |
| **Obsidian-native publishing** | Hugo + Git Publisher | Set up Hugo repo |
| **Zero technical setup** | Notion + Potion | Create Notion workspace |
| **Maximum future flexibility** | Hugo (static) | Set up Hugo repo |
| **Complex CMS + public** | WordPress | Spin up WP instance |

---

## 🦞 AIB Recommendation

**Start with Option 4 (Extend :4444) immediately.**
- We already have the server running
- Bot Company dashboard is the core need
- Zero new infrastructure
- Can add Hugo later for content publishing

**Then add Hugo in Phase 2** when we want:
- prettier documentation
- public-facing content
- Obsidian-native publishing

**Avoid WordPress/Wix** until we have specific CMS requirements that static sites can't handle.

---

## ❓ Questions for CEO

1. **Primary use case:** Internal team coordination, or public marketing?
2. **Content source:** Write in Obsidian, or need web-based editor?
3. **Integration:** Must show live Bot Company data, or static content?
4. **Timeline:** Need something this week, or can we build properly?
5. **Budget:** Prefer $0 self-hosted, or pay for convenience?

**Based on your answers, I'll generate the implementation plan.**

---

*Assessment by AIB (RON) | Awaiting CEO direction*
