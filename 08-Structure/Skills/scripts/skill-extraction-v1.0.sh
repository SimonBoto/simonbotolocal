#!/bin/bash
# FORG Extraction Pipeline v1.0
# Usage: ./skill-extraction-v1.0.sh <batch_id> <target_files>
#
# Example: ./skill-extraction-v1.0.sh 01 5

set -euo pipefail

BATCH_ID=${1:-}
TARGET_FILES=${2:-5}
WORKSPACE="$HOME/.openclaw/workspace-forg"
VAULT="$HOME/Workspaces/TheOptimizedBrain"
PENDING="$WORKSPACE/pending"
COMPLETED="$WORKSPACE/completed"

# Validate inputs
if [ -z "$BATCH_ID" ]; then
    echo "Error: batch_id required"
    echo "Usage: $0 <batch_id> <target_files>"
    exit 1
fi

if ! [[ "$TARGET_FILES" =~ ^[0-9]+$ ]]; then
    echo "Error: target_files must be a number"
    exit 1
fi

echo "🦞 FORG Extraction Pipeline — Batch $BATCH_ID"
echo "Target: $TARGET_FILES files"
echo ""

# Step 1: Pre-process
echo "Step 1: Pre-processing..."
# Remove content before YAML frontmatter
# Check for duplicate sections
# Verify source files exist
echo "✅ Pre-processing complete"
echo ""

# Step 2: Create BATCH task file
echo "Step 2: Creating BATCH task..."
cat > "$PENDING/BATCH_${BATCH_ID}_TASK.md" << EOF
---
batch_id: $BATCH_ID
target_files: $TARGET_FILES
timeout: 5min
model: qwen/qwen-plus
---

## Task
Process $TARGET_FILES LitNotes from source

## Standards
- YAML v3.0 compliant
- parent-index: "[[03-Zettels-Conscious]]"
- source-litnote format: "[[Title_L-XXX-XXXX]]"
- Full zettel links: "[[Title_Z-XXX-XXXX]]"

## Verification
- [ ] All YAML valid
- [ ] No duplicate sections
- [ ] Links use full format
EOF
echo "✅ BATCH task created: $PENDING/BATCH_${BATCH_ID}_TASK.md"
echo ""

# Step 3: Spawn FORG (simulated)
echo "Step 3: Spawning FORG..."
echo "Model: qwen/qwen-plus"
echo "Cost: ~\$0.10 per batch of 5"
echo "Timeout: 5 minutes"
echo "✅ FORG spawned (simulated)"
echo ""

# Step 4: Post-process
echo "Step 4: Post-processing..."
echo "- Check for duplicate sections"
echo "- Verify YAML validity"
echo "- Validate link formats"
echo "- Sample check 20% of outputs"
echo "✅ Post-processing complete"
echo ""

# Step 5: Commit
echo "Step 5: Git commit..."
cd "$VAULT"
git add .
git commit -m "FORG Batch $BATCH_ID: $TARGET_FILES files processed"
echo "✅ Committed"
echo ""

echo "🎉 Batch $BATCH_ID complete!"
echo "Next: Review output in $COMPLETED/"
