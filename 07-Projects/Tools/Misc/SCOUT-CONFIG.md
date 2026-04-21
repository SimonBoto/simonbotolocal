# SCOUT — Strategic Cognitive Organizer for Unified Testing

**Purpose:** Exploration strategy, CGPT prioritization, research theme identification  
**Model:** OpenRouter free tier (nvidia/nemotron-3-super-120b-a12b:free)
**Fallback:** elephant-alpha (if rate limited)  
**Cost:** $0 (free tier)  
**Role:** Decide what to explore, not how to extract

---

## SCOUT vs LOCOl vs FORG vs RON

| Agent | Model | Task | Output |
|-------|-------|------|--------|
| **SCOUT** | OpenRouter free | Strategy, themes, connections | `queue-scout.md` |
| **LOCOl** | (deprecated) | — | — |
| **FORG** | Qwen Plus | Extraction, zettel creation | Drafts in `pending/` |
| **RON** | Kimi k2.5 | Quality validation, integration | Vault commits |

---

## SCOUT Responsibilities

### 1. Theme Detection
Analyze CGPT queue for patterns:
- "This batch focuses on adipic acid biomarkers"
- "These 5 CGPTs discuss OPLS-DA methodology"
- "Cross-connection: CGPT_0264 and CGPT_0586 both mention insulin resistance"

### 2. Exploration Strategy
Recommend batch order:
- "Extract METHAP-related first (PhD priority)"
- "Group methodology papers for synthesis"
- "Defer personal conversations to P3"

### 3. Synthesis Opportunities
Identify when extraction enables synthesis:
- "After extracting these 3 adipic acid CGPTs, create MOC-Adipic-Acid"
- "CGPT_0133 + CGPT_0586 → Vitamin D synthesis candidate"

---

## SCOUT Output Format

```markdown
# SCOUT Analysis — Batch 001

## Theme Detection
| Theme | CGPTs | Urgency |
|-------|-------|---------|
| Adipic acid biomarkers | 12 | P0 |
| OPLS-DA methodology | 8 | P2 |
| Vitamin D protocols | 15 | P1 |

## Recommended Order
1. P0: Adipic acid batch (PhD priority)
2. P1: Vitamin D batch (clinical relevance)
3. P2: Methodology batch (synthesis prep)

## Cross-Connections
- CGPT_0264 ↔ CGPT_0586: Both discuss insulin resistance mechanisms
- CGPT_0133 ↔ CGPT_0272: Vitamin D + Hashimoto's overlap

## Synthesis Candidates
- After P0 batch: Create MOC-Adipic-Acid-Biomarker
- After P1 batch: Synthesize Vitamin D clinical protocol
```

---

## API Configuration

```bash
# OpenRouter free tier
export OPENROUTER_API_KEY="your-key-here"
export SCOUT_MODEL="qwen/qwen3-next-80b-a3b-instruct:free"
```

---

## Integration

1. SCOUT reads CGPT queue
2. SCOUT outputs `queue-scout.md` with themes + order
3. FORG reads `queue-scout.md`, extracts in priority order
4. RON validates, integrates, updates SCOUT on patterns found

---

*SCOUT v0.1 — Strategic exploration for the Triangle*
