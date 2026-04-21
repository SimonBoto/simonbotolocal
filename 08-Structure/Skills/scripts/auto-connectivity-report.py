#!/usr/bin/env python3
"""
Auto-Connectivity Report Generator
Extracts connectivity from existing YAML and body links
"""

import os
import re
import yaml
from pathlib import Path

def extract_yaml(filepath):
    """Extract YAML frontmatter from markdown file."""
    try:
        with open(filepath, 'r', encoding='utf-8', errors='replace') as f:
            content = f.read()
        
        # Find YAML block
        match = re.match(r'^---\s*\n(.*?)\n---\s*\n', content, re.DOTALL)
        if match:
            return yaml.safe_load(match.group(1)), content
        return {}, content
    except:
        return {}, ""

def extract_wiki_links(content):
    """Extract all [[Wiki Links]] from content."""
    return re.findall(r'\[\[([^\]]+)\]\]', content)

def analyze_litnote(filepath):
    """Analyze LitNote connectivity from existing fields."""
    yaml_data, content = extract_yaml(filepath)
    links = extract_wiki_links(content)
    
    # Extract zettel links (Z-XXX-XXXX pattern)
    zettel_links = [l for l in links if re.search(r'Z-\d{3}-\d{4}', l)]
    
    return {
        'file': os.path.basename(filepath),
        'uid': yaml_data.get('uid', 'unknown'),
        'title': yaml_data.get('title', 'unknown'),
        'source_inbox': yaml_data.get('source-inbox', 'N/A'),
        'zettel_count': yaml_data.get('zettel-count', 0),
        'zettels_in_body': len(zettel_links),
        'zettel_links': zettel_links[:10],  # First 10
        'parent_moc': yaml_data.get('parent-moc', 'N/A'),
        'status': yaml_data.get('status', 'unknown')
    }

def generate_report(vault_path):
    """Generate connectivity report for all LitNotes."""
    litnotes_dir = os.path.join(vault_path, '01-Literature')
    
    results = []
    for f in os.listdir(litnotes_dir):
        if f.endswith('.md') and 'Index' not in f:
            filepath = os.path.join(litnotes_dir, f)
            results.append(analyze_litnote(filepath))
    
    # Generate report
    report = "# Auto-Connectivity Report\n\n"
    report += f"Generated: 2026-04-21\n"
    report += f"Total LitNotes: {len(results)}\n\n"
    
    # Summary table
    report += "## Summary\n\n"
    report += "| LitNote | Source Inbox | Zettels (YAML) | Zettels (Body) | Status |\n"
    report += "|---------|--------------|----------------|----------------|--------|\n"
    
    for r in results[:20]:  # First 20
        report += f"| {r['file'][:30]}... | {r['source_inbox'][:20] if r['source_inbox'] != 'N/A' else '—'} | "
        report += f"{r['zettel_count']} | {r['zettels_in_body']} | {r['status']} |\n"
    
    # Detailed section
    report += "\n## Detailed Connectivity\n\n"
    for r in results[:5]:
        report += f"### {r['file']}\n"
        report += f"- **UID:** {r['uid']}\n"
        report += f"- **Source Inbox:** {r['source_inbox']}\n"
        report += f"- **Zettels:** {r['zettel_count']} (YAML) / {r['zettels_in_body']} (body)\n"
        report += f"- **Parent MOC:** {r['parent_moc']}\n"
        if r['zettel_links']:
            report += f"- **Zettel Links:** {', '.join(r['zettel_links'][:5])}\n"
        report += "\n"
    
    return report

if __name__ == "__main__":
    vault = "/home/simon/Workspaces/TheOptimizedBrain"
    report = generate_report(vault)
    
    output_path = os.path.join(vault, "08-Structure/System/AUTO-CONNECTIVITY-REPORT.md")
    with open(output_path, 'w') as f:
        f.write(report)
    
    print(f"Report generated: {output_path}")
