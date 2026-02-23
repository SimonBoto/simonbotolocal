---
aliases: [Template-Zettel-Entity]
tags: [template, zettel, entity, zettelkasten, v4.1]
version: 2.1
---

# Template: Entity Zettel v2.1

**Purpose:** Document people, labs, institutions, and organizations  
**Target Length:** 200-500 words  
**Output Location:** `03-Zettels/Conscious/`  
**Status:** conscious → subconscious (after 30 days + review)

---

## YAML Frontmatter (v4.1)

```yaml
---
uid: Z-{{DDD}}-{{SSSS}}
type: zettel-entity
title: {{Entity Name}}
aliases: [Z-{{DDD}}-{{SSSS}}, {{ShortName}}]
domain: {{DDD}}
domain-name: {{DomainName}}
tags: [zettel, entity, {{entity-type}}, {{field}}, conscious]
parent-moc: [[MOC-{{DDD}}]]
source: [[{{LitNote_Source}}]]
entity-type: {{person | lab | institution | company | journal}}
confidence: high
created: {{YYYY-MM-DD}}
extraction-date: {{YYYY-MM-DD}}
---
```

---

## Structure

### 1. Identity Card
| Attribute | Detail |
|-----------|--------|
| **Full Name** | {{Name}} |
| **Role/Title** | {{Position}} |
| **Affiliation** | [[{{Institution}}]] |
| **Location** | {{City, Country}} |
| **Field** | {{Specialty}} |
| **Time Period** | {{Active years}} |

---

### 2. Role/Expertise
**What they do and why it matters:**

{{Paragraph on expertise, contributions, reputation}}

---

### 3. Key Contributions
| Contribution | Year | Impact |
|--------------|------|--------|
| {{Work 1}} | {{YYYY}} | {{Significance}} |
| {{Work 2}} | {{YYYY}} | {{Significance}} |
| {{Work 3}} | {{YYYY}} | {{Significance}} |

---

### 4. Relation to Our Work
**How this entity connects to METHAP/PhD:**

| Connection | Detail |
|------------|--------|
| **Collaboration** | {{Current or potential}} |
| **Supervision** | {{Thesis role}} |
| **Reference** | {{Citation of their work}} |
| **Resource** | {{Lab, data, reagents}} |

---

### 5. Contact & Logistics (If Applicable)
| Method | Detail |
|--------|--------|
| **Email** | {{address}} |
| **Phone** | {{number}} |
| **Office** | {{Location}} |
| **Availability** | {{Schedule constraints}} |

---

### 6. Related Entities
- **Colleagues:** [[{{Person_1}}]] | [[{{Person_2}}]]
- **Institution:** [[{{Org}}]]
- **Collaborators:** [[{{Partner_1}}]] | [[{{Partner_2}}]]
- **Mentors/Students:** [[{{Mentor}}]] | [[{{Student}}]]

---

### 7. Context/Chain
- **Introduced via:** [[{{Source}}]]
- **Works cited:** [[{{Ref_1}}]] | [[{{Ref_2}}]]
- **Meetings:** [[{{Meeting_Note}}]]

---

### 8. RON Ledger
- **Input:** {{How discovered}}
- **Contact established:** {{YYYY-MM-DD}}
- **Last interaction:** {{YYYY-MM-DD}}
- **Next action:** {{Follow-up}}

---

## Variations

### For Labs
Add:
- Equipment inventory
- Specializations
- Collaboration policies
- Output metrics

### For Institutions
Add:
- Departments
- Key personnel
- Resources/facilities
- Application processes

### For Companies
Add:
- Products/services
- Business model
- Pricing
- Reliability assessment

---

## Quality Checklist

- [ ] Identity complete
- [ ] Role/expertise clear
- [ ] Key contributions listed
- [ ] Relation to PhD stated
- [ ] Contact info (if needed)
- [ ] Related entities linked

---

*Template: Entity Note v2.0 | Use for people, labs, and institutions*
