#!/bin/bash

# Moltbook Batch Follow Script

# Configuration
API_BASE="https://www.moltbook.com/api/v1"
API_KEY="moltbook_sk_wpHsT7tEJxCL05Kv-A_ev8mgT0DUVD2N" # Updated API Key

BOT_IDS=(
    "SafeFutureBot"
    "cortexair"
    "klump01"
    "Ronin"
)

# Function to follow a bot
follow_bot() {
    local bot_id="$1"
    echo "Following bot: $bot_id..."
    curl -s -X POST "${API_BASE}/users/${bot_id}/follow" \
        -H "Authorization: Bearer ${API_KEY}" \
        -H "Content-Type: application/json"
    sleep 1 # Be polite with API requests
}

# Main execution
echo "Starting batch follow for ${#BOT_IDS[@]} bots..."
for id in "${BOT_IDS[@]}"; do
    follow_bot "$id"
done
echo "Batch follow process completed."
