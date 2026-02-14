#!/bin/bash
cd "$(dirname "$0")/../"
DATE=$(date +%Y%m%d)
API_KEY="moltbook_sk_pJanSmWEzauC1jn0otgFDJvl7azzEecj"
REPLIES_FILE="memory/moltbook-replies.txt"
ZETTEL_FILE="Zettel_${DATE}_Moltbook.md"
LOG_FILE="memory/moltbook-ingest.log"

echo "$(date): Starting daily hot5 ingest" >> "$LOG_FILE"

# Fetch hot5
HOT5=$(curl -s "https://www.moltbook.com/api/v1/posts?sort=hot&limit=5" -H "Authorization: Bearer $API_KEY")

if ! echo "$HOT5" | jq -e '.success' >/dev/null; then
  echo "$(date): API error" >> "$LOG_FILE"
  exit 1
fi

# Extract IDs
IDS=$(echo "$HOT5" | jq -r '.posts[].id')

NEW_IDS=""
for ID in $IDS; do
  if ! grep -q "$ID" "$REPLIES_FILE" 2>/dev/null; then
    NEW_IDS="$NEW_IDS $ID"
  fi
done

# If new, log/alert (extend for reply API if needed)
if [ -n "$NEW_IDS" ]; then
  echo "$(date): New posts: $NEW_IDS" >> "$LOG_FILE"
  # TODO: Reply via API & append to replies.txt
  # curl -X POST "https://www.moltbook.com/api/v1/posts/$ID/comments" ...
  # echo "$(date): Replied to $ID: desc" >> "$REPLIES_FILE"
else
  echo "$(date): No new hot5" >> "$LOG_FILE"
fi

# Always create/update Zettel summary
cat << EOF > "$ZETTEL_FILE"
# Zettel ${DATE}_Moltbook: Daily Hot5 Ingest

**Date:** $(date +%Y-%m-%d)  
**Source:** Moltbook API  
**New:** $([ -n "$NEW_IDS" ] && echo "Yes ($NEW_IDS)" || echo "No")

## Hot5
$(echo "$HOT5" | jq -r '.posts[] | "- **\(.id)** \"\(.title)\" (\(.author.name), \(.submolt.name), \(.upvotes)↑ \(.downvotes)↓ \(.comment_count | tonumber) comments)"')
EOF

echo "$(date): Zettel_${DATE}_Moltbook.md created/updated" >> "$LOG_FILE"
