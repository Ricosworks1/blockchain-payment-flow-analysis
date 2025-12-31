#!/bin/bash
# =============================================================================
# ORCHESTRATOR - Runs all enabled protocol agents
# =============================================================================
# This is the "master agent" that coordinates updates across all protocols.
#
# Usage: ./agents/orchestrator.sh [--dry-run]
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
REGISTRY="$REPO_DIR/agents/protocol_registry.json"
LOG_FILE="$REPO_DIR/agents/logs/orchestrator_$(date +%Y%m%d).log"
DRY_RUN=false

# Parse arguments
if [ "$1" == "--dry-run" ]; then
    DRY_RUN=true
    echo "=== DRY RUN MODE ===" | tee -a "$LOG_FILE"
fi

mkdir -p "$REPO_DIR/agents/logs"

echo "=== ORCHESTRATOR STARTED ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Count enabled protocols
ENABLED_COUNT=$(jq '[.protocols[] | select(.enabled == true)] | length' "$REGISTRY")
echo "Enabled protocols: $ENABLED_COUNT" | tee -a "$LOG_FILE"

# Process each enabled protocol
jq -c '.protocols[] | select(.enabled == true)' "$REGISTRY" | while read -r protocol; do
    NAME=$(echo "$protocol" | jq -r '.name')
    SLUG=$(echo "$protocol" | jq -r '.slug')
    AGENT_SCRIPT="$REPO_DIR/agents/update_${SLUG}.sh"

    echo "" | tee -a "$LOG_FILE"
    echo "--- Processing: $NAME ---" | tee -a "$LOG_FILE"

    if [ -f "$AGENT_SCRIPT" ]; then
        if [ "$DRY_RUN" = true ]; then
            echo "  [DRY RUN] Would run: $AGENT_SCRIPT" | tee -a "$LOG_FILE"
        else
            echo "  Running: $AGENT_SCRIPT" | tee -a "$LOG_FILE"
            bash "$AGENT_SCRIPT" 2>&1 | tee -a "$LOG_FILE"

            # Rate limit: wait 5 seconds between protocols (CoinGecko limit)
            echo "  Waiting 5s (rate limit)..." | tee -a "$LOG_FILE"
            sleep 5
        fi
    else
        echo "  [SKIP] Agent script not found: $AGENT_SCRIPT" | tee -a "$LOG_FILE"
    fi
done

echo "" | tee -a "$LOG_FILE"
echo "=== ORCHESTRATOR COMPLETED ===" | tee -a "$LOG_FILE"
echo "Finished: $(date)" | tee -a "$LOG_FILE"
