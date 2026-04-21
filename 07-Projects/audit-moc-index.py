#!/usr/bin/env python3
"""
Phase 1.5: MOC and Index Validation
Checks that parent-moc and parent-index links are valid and bidirectional.
"""

import os
import yaml

def get_moc_links(moc_content):
    """Extract links from MOC file."""
    import re
    return re.findall(r'\[\[([^\]]+)\]\]', moc_content)

def audit_moc_index(litnotes_dir, output_file):
    issues = []
    
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
            
        # Check parent-moc
        if 'parent-moc' in frontmatter:
            moc_link = frontmatter['parent-moc']
            if moc_link.startswith('[[') and moc_link.endswith(']]'):
                moc_name = moc_link[2:-2]
                moc_path = os.path.join('/home/simon/Workspaces/TheOptimizedBrain', '08-Structure', 'MOCs', moc_name + '.md')
                
                if not os.path.exists(moc_path):
                    # Try root level
                    moc_path = os.path.join('/home/simon/Workspaces/TheOptimizedBrain', moc_name + '.md')
                
                if not os.path.exists(moc_path):
                    issues.append({
                        'file': filename,
                        'issue': f"parent-moc [[{moc_name}]] does not exist"
                    })
                else:
                    # Check if MOC links back
                    with open(moc_path, 'r') as mf:
                        moc_content = mf.read()
                    uid = frontmatter.get('uid', '')
                    if uid and uid not in moc_content and filename.replace('.md', '') not in moc_content:
                        issues.append({
                            'file': filename,
                            'issue': f"parent-moc [[{moc_name}]] exists but does not link back"
                        })
        
        # Check parent-index
        if 'parent-index' in frontmatter:
            idx_link = frontmatter['parent-index']
            if idx_link.startswith('[[') and idx_link.endswith(']]'):
                idx_name = idx_link[2:-2]
                idx_path = os.path.join('/home/simon/Workspaces/TheOptimizedBrain', idx_name + '.md')
                
                if not os.path.exists(idx_path):
                    issues.append({
                        'file': filename,
                        'issue': f"parent-index [[{idx_name}]] does not exist"
                    })
    
    # Write report
    with open(output_file, 'w') as f:
        f.write("# MOC and Index Validation Report\n\n")
        f.write(f"Total issues: {len(issues)}\n\n")
        
        for issue in issues:
            f.write(f"## {issue['file']}\n")
            f.write(f"- {issue['issue']}\n\n")
    
    print(f"Audit complete. {len(issues)} MOC/index issues found.")
    print(f"Report: {output_file}")

if __name__ == '__main__':
    audit_moc_index(
        '/home/simon/Workspaces/TheOptimizedBrain/01-Literature',
        '/home/simon/Workspaces/TheOptimizedBrain/audit-reports/MOC-INDEX-ISSUES.md'
    )
