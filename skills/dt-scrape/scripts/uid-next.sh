#!/bin/bash
FOLDER=$1
if [ -z "$FOLDER" ]; then echo "Usage: uid-next.sh <folder>"; exit 1; fi
LAST=$(ls -1 $FOLDER/*.md 2>/dev/null | tail -1 | grep -o '[0-9]\{3\}$' || echo "000")
NEXT=$(printf "%03d" $((10#${LAST:-0} + 1)))
echo $NEXT