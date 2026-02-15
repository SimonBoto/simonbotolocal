import os
import re
import subprocess
from pathlib import Path
import sys

root = Path('.')
date_str = '20260215'

# Read the list of PhD Zettel files
phd_list = []
try:
    with open('phd_zettel_batch2.txt', 'r') as f:
        for line in f:
            phd_list.append(line.strip())
    print(f"Loaded {len(phd_list)} PhD Zettel files")
except FileNotFoundError:
    print("phd_zettel_batch2.txt not found!")
    sys.exit(1)

num = 51  # Start after RON batch 50
success_count = 0

for old_path_str in phd_list:
    old_path = Path(old_path_str)
    if not old_path.exists():
        print(f"Skipping non-existent: {old_path}")
        continue
    
    old_name = old_path.name
    # Strip 'Zettel_' (6 chars)
    topic = old_name[6:-3]  # remove Zettel_ and .md
    
    prefix = 'phd'
    
    # Snake case
    topic_snake = re.sub(r'([a-z0-9])([A-Z])', r'\\1_\\2', topic).lower()
    topic_snake = re.sub(r'[^a-z0-9_]', '_', topic_snake)
    core_idea = f"{prefix}_{topic_snake}"
    
    new_name = f"[{core_idea}]_{date_str}_{num:03d}.md"
    
    print(f"Processing {num}: {old_path.name} -> {new_name}")
    
    try:
        # Move/Rename with link update
        result = subprocess.run(['obsidian-cli', 'move', str(old_path), new_name], 
                                capture_output=True, text=True, check=True)
        print(f"  ✓ Moved: {old_name} to {new_name}")
        
        # Check and add frontmatter uid/aliases if missing
        fm_result = subprocess.run(['obsidian-cli', 'frontmatter', new_name, '--print'], 
                                   capture_output=True, text=True)
        fm_content = fm_result.stdout.strip()
        
        uid = f"{date_str}_{num:03d}"
        aliases = [old_name[:-3]]  # without .md
        
        if 'uid:' not in fm_content.lower():
            subprocess.run(['obsidian-cli', 'frontmatter', new_name, 
                           '--edit', '--key', 'uid', '--value', uid], check=True)
            print(f"  ✓ Added uid: {uid}")
        
        if 'aliases:' not in fm_content.lower():
            aliases_yaml = f'["{aliases[0]}"]'
            subprocess.run(['obsidian-cli', 'frontmatter', new_name,
                           '--edit', '--key', 'aliases', '--value', aliases_yaml], check=True)
            print(f"  ✓ Added aliases: {aliases_yaml}")
        
        success_count += 1
        num += 1
        
    except subprocess.CalledProcessError as e:
        print(f"  ✗ Error: {e.stderr}")
    except Exception as e:
        print(f"  ✗ Unexpected error: {str(e)}")

print(f"\nPhD Completed: {success_count}/{len(phd_list)} files renamed.")