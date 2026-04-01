# 🔨 ZETTEL-FORGE: RON Vault Creation Enforcer

**Heavy Fix Implementation** — Zero-tolerance validation gates for zettel creation.

---

## Overview

Zettel-Forge prevents the inconsistencies that plagued the vault (35 duplicate UIDs, 74 legacy naming files, 245 orphans) by enforcing validation **at creation time**.

## Validation Gates

| Gate | Check | Enforcement |
|------|-------|-------------|
| **Pre-Creation** | UID uniqueness | Auto-assign from registry, collision-proof |
| **Naming** | Pattern `[Z-XXX-XXXX].md` | Regex validation, rejects legacy `_Z-` |
| **Source-Link** | LitNote must exist | File existence check, mandatory linkage |
| **YAML** | Required fields | Schema validation with defaults |
| **Post-Creation** | No duplicates | Filesystem + registry verification |

---

## Installation

```bash
# 1. Make executable
chmod +x zettel-forge.js seed-registry.js

# 2. Seed registry with existing zettels
node seed-registry.js

# 3. Install git hook
cp .git/hooks/pre-commit .git/hooks/pre-commit.backup 2>/dev/null
cp pre-commit .git/hooks/
chmod +x .git/hooks/pre-commit

# 4. Test
node zettel-forge.js status
```

---

## Usage

### Check Status
```bash
node zettel-forge.js status
```

### Verify Vault Integrity
```bash
node zettel-forge.js verify
```

### Create New Zettel
```bash
node zettel-forge.js create \
  --title "Adipic Acid as IR Biomarker" \
  --source L-101-0002 \
  --domain 101 \
  --tags "adipic-acid, biomarker, ir"
```

**Parameters:**
- `--title` (required): Zettel title
- `--source` (required): Source LitNote UID (e.g., L-001-0001)
- `--domain` (required): Domain code (001, 101, etc.)
- `--tags` (optional): Comma-separated tags
- `--moc` (optional): Parent MOC name

---

## Domain Codes

| Code | Domain | Next UID |
|------|--------|----------|
| 001 | Insulin-Metabolism | Z-001-0936 |
| 101 | Pharmacometabolomics | Z-101-0467 |
| 002 | Vitamin-D | Z-002-0005 |
| 003 | Iron-Metabolism | Z-003-0014 |
| 004 | B12-Folate | Z-004-0020 |
| 005 | Thyroid | Z-005-0003 |
| 006 | Lipids | Z-006-0003 |
| 007 | Inflammation | Z-007-0002 |
| 008 | Liver | Z-008-0002 |
| 009 | Kidney | Z-009-0002 |
| 010 | Electrolytes | Z-010-0002 |

---

## Git Integration

Pre-commit hook automatically runs on every commit:
- Checks for duplicate UIDs
- Validates naming conventions
- Enforces source-litnote presence
- Blocks commit if issues found

---

## Files

| File | Purpose |
|------|---------|
| `zettel-forge.js` | Core CLI tool |
| `zettel-forge-mcp.js` | MCP server for OpenClaw |
| `seed-registry.js` | One-time registry initialization |
| `pre-commit` | Git hook for validation |
| `mcp-zettel-forge.json` | MCP configuration |
| `UID_REGISTRY.json` | Master UID allocation state |

---

## Workflow

```
┌─────────────────────────────────────────────────────────────┐
│  1. DECIDE TO CREATE ZETTEL                                  │
│     ↓                                                        │
│  2. RUN: zettel-forge create --title "..." --source L-XXX    │
│     ↓                                                        │
│  3. AUTO-ASSIGNED UID (no collisions possible)               │
│     ↓                                                        │
│  4. VALIDATION GATES:                                        │
│     ✓ UID format & uniqueness                                │
│     ✓ Source LitNote exists                                  │
│     ✓ Filename pattern correct                               │
│     ✓ YAML schema valid                                      │
│     ↓                                                        │
│  5. FILE CREATED with template                               │
│     ↓                                                        │
│  6. EDIT CONTENT                                             │
│     ↓                                                        │
│  7. GIT COMMIT (pre-commit hook validates)                   │
│     ↓                                                        │
│  8. VAULT REMAINS PRISTINE                                   │
└─────────────────────────────────────────────────────────────┘
```

---

## Success Metrics

| Issue | Before | After |
|-------|--------|-------|
| Duplicate UIDs | 35 | 0 |
| Legacy naming | 74 | 0 |
| Missing source-litnote | 245 | 0 (enforced) |
| Manual UID assignment | Error-prone | Automated |
| Naming drift | Uncontrolled | Validated |

---

*Created: 2026-03-05 | Version: 1.0.0*
