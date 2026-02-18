# MUSCLE-CHEATSHEET.md — Quick Sub-Agent Spawns

**Default Muscle:** `openrouter/x-ai/grok-4.1-fast` (cheap, fast, good for routine)
**Default Brain:** `moonshot/kimi-k2.5` (deep, nuanced, expensive)

---

## Quick Templates

### 1. Simple File Check
```bash
sessions_spawn task="List 00-Inbox/ and count .url files" model=openrouter/x-ai/grok-4.1-fast runTimeoutSeconds=30
```

### 2. Git Status Check
```bash
sessions_spawn task="Run git status --short and report any uncommitted changes" model=openrouter/x-ai/grok-4.1-fast runTimeoutSeconds=30
```

### 3. Inbox Scan (with webscraper prep)
```bash
sessions_spawn task="Read 00-Inbox/, list all .url files, return as bullet list for DT extraction" model=openrouter/x-ai/grok-4.1-fast runTimeoutSeconds=45
```

### 4. Batch Web Fetch (pre-filter)
```bash
sessions_spawn task="Fetch https://example.com and extract PMID/DOI if any, return plain list" model=openrouter/x-ai/grok-4.1-fast runTimeoutSeconds=60
```

### 5. Vault Hygiene Check
```bash
sessions_spawn task="Count files in root vs numbered folders, flag any .md files outside folders" model=openrouter/x-ai/grok-4.1-fast runTimeoutSeconds=45
```

---

## When NOT to Spawn Muscle

**Stay on Brain (Kimi):**
- PhD literature synthesis
- Complex multi-step reasoning
- Nuanced audits (shadow detection)
- DT-scrape extraction + zettel generation
- Anything requiring "show your work" rigor

---

## Cost Check

| Model | Rough relative cost |
|-------|---------------------|
| Kimi K2.5 | 1.0x (baseline) |
| Grok 4.1 Fast | ~0.1-0.2x (muscle) |
| GPT-4o-mini | ~0.05-0.1x (cheapest muscle) |

---

Last updated: 2026-02-19
