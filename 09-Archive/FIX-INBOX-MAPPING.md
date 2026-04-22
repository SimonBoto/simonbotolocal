# INBOX Phantom Link Mapping

## Mapping Strategy

| Phantom Article | Topic | Mapped To | Confidence |
|-----------------|-------|-----------|------------|
| Article-35 | Minimal-Exercise | Article-16 (Minimal-Exercise) | HIGH (same topic) |
| Article-36 | Glucose-Insulin | INBOX-Source-Facebook | LOW (no match) |
| Article-39 | Metabolism-Heart | INBOX-Source-Facebook | LOW (no match) |
| Article-40 | Lpa-Mechanism | INBOX-Source-Facebook | LOW (no match) |
| Article-41 | Coffee-Dementia | INBOX-Source-Facebook | LOW (no match) |
| Article-45 | Five-Risk-Factors | Article-32 (Modifiable) | HIGH (same content) |
| Article-46 | Fatigue-Mitochondrial | INBOX-Source-Facebook | LOW (no match) |
| Article-50 | Not-All-Calories | INBOX-Source-Facebook | LOW (no match) |
| Article-52 | Twelve-Actions | Article-31 (Twelve-Actions) | HIGH (same topic) |
| Article-55 | Animal-Fat | INBOX-Source-Facebook | LOW (no match) |
| Article-56 | Walking-Mortality | INBOX-Source-Facebook | LOW (no match) |

## Generic Fallback

For unmapped articles, use: `[[INBOX-Source-Facebook]]`

This indicates the source was Facebook but specific article not in vault.

## Batch Fix Script

```python
# Mapping dictionary
INBOX_MAPPING = {
    'INBOX-Article-35-Minimal-Exercise': 'INBOX-Article-16-Minimal-Exercise',
    'INBOX-Article-45-Five-Risk-Factors': 'INBOX-Article-32-Modifiable',
    'INBOX-Article-52-Twelve-Actions': 'INBOX-Article-31-Twelve-Actions',
    # All others map to generic
    'INBOX-Article-36-Glucose-Insulin': 'INBOX-Source-Facebook',
    'INBOX-Article-39-Metabolism-Heart': 'INBOX-Source-Facebook',
    'INBOX-Article-40-Lpa-Mechanism': 'INBOX-Source-Facebook',
    'INBOX-Article-41-Coffee-Dementia': 'INBOX-Source-Facebook',
    'INBOX-Article-46-Fatigue-Mitochondrial': 'INBOX-Source-Facebook',
    'INBOX-Article-50-Not-All-Calories': 'INBOX-Source-Facebook',
    'INBOX-Article-55-Animal-Fat': 'INBOX-Source-Facebook',
    'INBOX-Article-56-Walking-Mortality': 'INBOX-Source-Facebook',
}
```

## Files to Fix

23 LitNotes with phantom INBOX references.

## Validation

- [ ] All phantom INBOX refs replaced
- [ ] YAML remains valid
- [ ] No content accidentally modified
