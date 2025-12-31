#!/bin/bash
# =============================================================================
# RESERVOIR PROTOCOL UPDATE AGENT - FULL AUTOMATION
# =============================================================================
# This version calls Claude Code automatically (no human intervention needed)
#
# Usage: ./agents/update_reservoir_full.sh
# =============================================================================

set -e

# Configuration
REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_reservoir"
REPORT_FILE="$REPO_DIR/case_studies/protocols/reservoir.md"
DATA_FILE="$REPO_DIR/agents/data/reservoir_$(date +%Y%m%d).json"
LOG_FILE="$REPO_DIR/agents/logs/reservoir_$(date +%Y%m%d).log"

mkdir -p "$REPO_DIR/agents/data"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== RESERVOIR FULL AUTO UPDATE ===" | tee -a "$LOG_FILE"
echo "Started: $(date)" | tee -a "$LOG_FILE"

# -----------------------------------------------------------------------------
# STEP 1: Fetch fresh data from APIs
# -----------------------------------------------------------------------------
echo "Step 1: Fetching API data..." | tee -a "$LOG_FILE"
DEFILLAMA_DATA=$(curl -s "https://api.llama.fi/protocol/reservoir-protocol")
COINGECKO_DAM=$(curl -s "https://api.coingecko.com/api/v3/coins/reservoir")
COINGECKO_RUSD=$(curl -s "https://api.coingecko.com/api/v3/coins/reservoir-rusd")

# Save raw data
echo "{
  \"fetched_at\": \"$(date -u +%Y-%m-%dT%H:%M:%SZ)\",
  \"defillama\": $DEFILLAMA_DATA,
  \"coingecko_dam\": $COINGECKO_DAM,
  \"coingecko_rusd\": $COINGECKO_RUSD
}" > "$DATA_FILE"

# -----------------------------------------------------------------------------
# STEP 2: Extract metrics
# -----------------------------------------------------------------------------
echo "Step 2: Extracting metrics..." | tee -a "$LOG_FILE"
TVL_ETH=$(echo "$DEFILLAMA_DATA" | jq -r '.currentChainTvls.Ethereum // 0')
TVL_BASE=$(echo "$DEFILLAMA_DATA" | jq -r '.currentChainTvls.Base // 0')
TVL=$(echo "$TVL_ETH + $TVL_BASE" | bc | xargs printf "%.0f")
DAM_PRICE=$(echo "$COINGECKO_DAM" | jq -r '.market_data.current_price.usd // "N/A"')
DAM_MCAP=$(echo "$COINGECKO_DAM" | jq -r '.market_data.market_cap.usd // "N/A"')
DAM_VOLUME=$(echo "$COINGECKO_DAM" | jq -r '.market_data.total_volume.usd // "N/A"')
RUSD_PRICE=$(echo "$COINGECKO_RUSD" | jq -r '.market_data.current_price.usd // "N/A"')
RUSD_MCAP=$(echo "$COINGECKO_RUSD" | jq -r '.market_data.market_cap.usd // "N/A"')

echo "  TVL: $TVL" | tee -a "$LOG_FILE"
echo "  DAM: $DAM_PRICE" | tee -a "$LOG_FILE"
echo "  rUSD: $RUSD_PRICE" | tee -a "$LOG_FILE"

# -----------------------------------------------------------------------------
# STEP 3: Call Claude Code with the prompt
# -----------------------------------------------------------------------------
echo "Step 3: Calling Claude Code..." | tee -a "$LOG_FILE"

# The prompt for Claude Code
PROMPT="Update the Reservoir Protocol report with today's verified API data.

FRESH API DATA ($(date +%Y-%m-%d)) - 🔷 HARD DATA:
- DefiLlama TVL: \$$(printf "%'.0f" $TVL) (\$$(printf "%'.0f" $TVL_ETH) ETH + \$$(printf "%'.0f" $TVL_BASE) Base)
- DAM Price: \$$DAM_PRICE
- DAM Market Cap: \$$(printf "%'.0f" $DAM_MCAP)
- DAM 24h Volume: \$$(printf "%'.0f" $DAM_VOLUME)
- rUSD Price: \$$RUSD_PRICE (peg: $(echo "scale=2; $RUSD_PRICE * 100" | bc)%)
- rUSD Market Cap: \$$(printf "%'.0f" $RUSD_MCAP)

INSTRUCTIONS:
1. Read context: claude.md_reservoir
2. Read report: case_studies/protocols/reservoir.md
3. Update data points with values above
4. Keep structure identical
5. Update 'Last Updated' to $(date +%B\ %d,\ %Y)
6. Commit with: 'Update Reservoir: $(date +%Y-%m-%d) data'
7. Do NOT create GitHub release"

# Call Claude Code in non-interactive mode
# Note: This requires Claude Code CLI to be installed and configured
cd "$REPO_DIR"

echo "$PROMPT" | claude --print 2>&1 | tee -a "$LOG_FILE"

echo "=== COMPLETED ===" | tee -a "$LOG_FILE"
echo "Finished: $(date)" | tee -a "$LOG_FILE"
