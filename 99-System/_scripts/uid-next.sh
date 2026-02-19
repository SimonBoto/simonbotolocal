#!/bin/bash
# UID Generator — Get next available UID in range
# Usage: ./uid-next.sh [range_start] [range_end]

VAULT_ROOT="/home/simon/openclaw/RonVault/Obsidian/TheOptimizedBrain"
ATOMIC_DIR="$VAULT_ROOT/02-Atomic"

RANGE_START=${1:-000001}
RANGE_END=${2:-999999}

# Extract existing UIDs
EXISTING_UIDS=$(ls -1 "$ATOMIC_DIR"/*.md 2>/dev/null | grep -oE '[0-9]{6}' | sort -n | uniq)

# Find next available
NEXT_UID=$RANGE_START
while echo "$EXISTING_UIDS" | grep -q "^$NEXT_UID$"; do
    NEXT_UID=$(printf "%06d" $((10#$NEXT_UID + 1)))
    if [ "$NEXT_UID" -gt "$RANGE_END" ]; then
        echo "❌ Error: Range exhausted ($RANGE_START-$RANGE_END)"
        exit 1
    fi
done

echo "Next available UID: $NEXT_UID"
