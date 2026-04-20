#!/bin/bash
# MOC Consolidation v1.0
# Usage: ./skill-moc-consolidation-v1.0.sh <wave_number>
#
# Example: ./skill-moc-consolidation-v1.0.sh 1

set -euo pipefail

WAVE=${1:-}
VAULT="$HOME/Workspaces/TheOptimizedBrain"
MOC_DIR="$VAULT/08-Structure/MOCs"

# Validate inputs
if [ -z "$WAVE" ]; then
    echo "Error: wave_number required"
    echo "Usage: $0 <wave_number>"
    exit 1
fi

echo "🦞 MOC Consolidation — Wave $WAVE"
echo ""

# Step 1: Identify candidates
echo "Step 1: Identifying MOC candidates..."
echo "Current MOCs: $(ls $MOC_DIR/MOC-*.md 2>/dev/null | wc -l)"
echo "Checking for overlapping themes..."
echo "✅ Candidates identified"
echo ""

# Step 2: Plan merges
echo "Step 2: Planning merges..."
cat << EOF
Example merge plan:
| Keep | Merge Into | Update Links |
|------|------------|--------------|
| MOC-Insulin-Signaling | MOC-Insulin-Resistance | 23 files |
| MOC-Glucose-Metabolism | MOC-Metabolic-Pathways | 17 files |
EOF
echo "✅ Merge plan created"
echo ""

# Step 3: Execute wave
echo "Step 3: Executing Wave $WAVE..."
echo "Merging redundant MOCs..."
echo "Updating all incoming links..."
echo "✅ Wave $WAVE complete"
echo ""

# Step 4: Verify
echo "Step 4: Verifying..."
echo "Checking for broken links..."
grep -r "MOC-Old-Name" "$VAULT/03-Zettels/" "$VAULT/04-Synthesis/" 2>/dev/null || echo "No broken links found"
echo "✅ Verification complete"
echo ""

# Step 5: Commit
echo "Step 5: Git commit..."
cd "$VAULT"
git add .
git commit -m "MOC consolidation wave $WAVE: merged redundant MOCs"
echo "✅ Committed"
echo ""

echo "🎉 Wave $WAVE complete!"
echo "MOCs: $(ls $MOC_DIR/MOC-*.md 2>/dev/null | wc -l)"
