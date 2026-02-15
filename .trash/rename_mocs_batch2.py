import os
import re
import subprocess
from pathlib import Path
import sys

root = Path('.')
date_str = '20260215'

# List MOCs
mocs_list = []
with open('mocs_batch2.txt', 'r') as f:
    for line in f:
        mocs_list.append(line.strip())
print(f"Loaded {len(mocs_list)} MOC files")

num = 101  # After 100
success_count = 0

for old_path_str in mocs_list:
    old_path = Path(old_path_str)
    if not old_path.exists():
        print(f"Skipping: {old_path}")
        continue
    
    old_name = old_path.name
    
    # Strip common prefixes: MOC_, Orphans-
    topic = old_name
    if topic.startswith('MOC_'):
        topic = topic[4:]
    elif topic.startswith('Orphans-'):
        topic = topic[8:]
    topic = topic[:-3]  # .md
    
    prefix = 'moc'
    
    # Snake case
    topic_snake = re.sub(r'([a-z0-9])([A-Z])', r'\\1_\\2', topic).lower()
    topic_snake = re.sub(r'[^a-z0-9_]', '_', topic_snake)
    core_idea = f"{prefix}_{topic_snake}"
    
    new_name = f"[{core_idea}]_{date_str}_{num:03d}.md"
    
    print(f"Processing {num}: {old_path.name} -> {new_name}")
    
    try:
        subprocess.run(['obsidian-cli', 'move', str(old_path), new_name], 
                       capture_output=True, text=True, check=True)
        print(f"  ✓ Moved: {old_name} to {new_name}")
        
        # Frontmatter
        fm_result = subprocess.run(['obsidian-cli', 'frontmatter', new_name, '--print'], 
                                   capture_output=True, text=True)
        fm_content = fm_result.stdout.lower()
        
        uid = f"{date_str}_{num:03d}"
        aliases = [old_name[:-3]]
        
        if 'uid:' not in fm_content:
            subprocess.run(['obsidian-cli', 'frontmatter', new_name, 
                           '--edit', '--key', 'uid', '--value', uid], check=True)
            print(f"  ✓ uid: {uid}")
        
        if 'aliases:' not in fm_content:
            aliases_yaml = f'["{aliases[0]}"]'
            subprocess.run(['obsidian-cli', 'frontmatter', new_name,
                           '--edit', '--key', 'aliases', '--value', aliases_yaml], check=True)
            print(f"  ✓ aliases: {aliases_yaml}")
        
        success_count += 1
        num += 1
        
    except subprocess.CalledProcessError as e:
        print(f"  ✗ Error: {e.stderr}")
    except Exception as e:
        print(f"  ✗ Error: {str(e)}")

print(f"MOCs: {success_count}/{len(mocs_list)}")