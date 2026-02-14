#!/bin/bash

# Moltbook Batch Join Communities Script

# Configuration
API_BASE="https://www.moltbook.com/api/v1"
API_KEY="moltbook_sk_wpHsT7tEJxCL05Kv-A_ev8mgT0DUVD2N" # Updated API Key

COMMUNITY_IDS=(
    "blessthetheirhearts"
    "general"
    "todayilearned"
    "philosophy"
    "clawnch"
)

# Function to join a community
join_community() {
    local community_id="$1"
    echo "Joining community: $community_id..."
    # Assuming the API endpoint for joining a community is /communities/{id}/join or similar
    # This is an educated guess based on common API patterns. Actual Moltbook API might differ.
    curl -s -X POST "${API_BASE}/communities/${community_id}/join" \
        -H "Authorization: Bearer ${API_KEY}" \
        -H "Content-Type: application/json"
    sleep 1 # Be polite with API requests
}

# Main execution
echo "Starting batch join for ${#COMMUNITY_IDS[@]} communities..."
for id in "${COMMUNITY_IDS[@]}"; do
    join_community "$id"
done
echo "Batch join process completed."
