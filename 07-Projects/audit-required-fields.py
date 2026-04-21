#!/usr/bin/env python3
"""
Phase 1.2: Required Fields Audit
Checks all LitNotes for required YAML fields.
"""

import os
import yaml

REQUIRED_FIELDS = [
    'uid',
    'type',
    'title',
    'source-origin',
    'parent-moc',
    'parent-index',
    'extraction-date',
    'zettel-count'
]

def audit_required_fields(litnotes_dir, output_file):
    results = []
    
    for filename in os.listdir(litnotes_dir):
        if not filename.endswith('.md'):
            continue
            
        filepath = os.path.join(litnotes_dir, filename)
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Extract frontmatter
        if not content.startswith('---'):
            continue
            
        parts = content.split('---\n', 2)
        if len(parts) < 2:
            continue
            
        try:
            frontmatter = yaml.safe_load(parts[1])
        except:
            continue
            
        if not frontmatter:
            continue
            
        missing = [f for f in REQUIRED_FIELDS if f not in frontmatter]
        
        # Check type is 'litnote' not 'lit.note'
        type_issue = None
        if 'type' in frontmatter:
            if frontmatter['type'] == 'lit.note':
                type_issue = 'type is lit.note (should be litnote)'
            elif frontmatter['type'] != 'litnote':
                type_issue = f"type is '{frontmatter['type']}' (should be litnote)"
        
        if missing or type_issue:
            results.append({
                'file': filename,
                'missing': missing,
                'type_issue': type_issue
            })
    
    # Write report
    with open(output_file, 'w') as f:
        f.write("# Required Fields Audit Report\n\n")
        f.write(f"Total LitNotes with issues: {len(results)}\n\n")
        
        for r in results:
            f.write(f"## {r['file']}\n")
            if r['missing']:
                f.write(f"- Missing: {', '.join(r['missing'])}\n")
            if r['type_issue']:
                f.write(f"- Issue: {r['type_issue']}\n")
            f.write("\n")
    
    print(f"Audit complete. {len(results)} files need attention.")
    print(f"Report: {output_file}")

if __name__ == '__main__':
    audit_required_fields(
        '/home/simon/Workspaces/TheOptimizedBrain/01-Literature',
        '/home/simon/Workspaces/TheOptimizedBrain/audit-reports/MISSING-FIELDS.md'
    )
