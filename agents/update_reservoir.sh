#!/bin/bash
# =============================================================================
# RESERVOIR PROTOCOL UPDATE AGENT
# =============================================================================
# This is the simplest possible "agent" - a script that:
# 1. Fetches fresh data from APIs
# 2. Stores it in a temp file
# 3. Calls Claude Code with instructions to update the report
#
# Usage: ./agents/update_reservoir.sh
# =============================================================================

set -e  # Exit on any error

# Configuration
REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_reservoir"
REPORT_FILE="$REPO_DIR/case_studies/protocols/reservoir.md"
DATA_FILE="$REPO_DIR/agents/data/reservoir_$(date +%Y%m%d).json"
LOG_FILE="$REPO_DIR/agents/logs/reservoir_$(date +%Y%m%d).log"

# Create directories if needed
mkdir -p "$REPO_DIR/agents/data"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== RESERVOIR UPDATE AGENT ===" | tee -a "$LOG_FILE"
echo "Started: $(date)" | tee -a "$LOG_FILE"

# -----------------------------------------------------------------------------
# STEP 1: Fetch fresh data from APIs
# -----------------------------------------------------------------------------
echo "Step 1: Fetching API data..." | tee -a "$LOG_FILE"

# DefiLlama TVL
echo "  - DefiLlama TVL..." | tee -a "$LOG_FILE"
DEFILLAMA_DATA=$(curl -s "https://api.llama.fi/protocol/reservoir-protocol")

# CoinGecko DAM token
echo "  - CoinGecko DAM token..." | tee -a "$LOG_FILE"
COINGECKO_DAM=$(curl -s "https://api.coingecko.com/api/v3/coins/reservoir")

# CoinGecko rUSD token
echo "  - CoinGecko rUSD token..." | tee -a "$LOG_FILE"
COINGECKO_RUSD=$(curl -s "https://api.coingecko.com/api/v3/coins/reservoir-rusd")

# Combine into single JSON file
echo "{
  \"fetched_at\": \"$(date -u +%Y-%m-%dT%H:%M:%SZ)\",
  \"defillama\": $DEFILLAMA_DATA,
  \"coingecko_dam\": $COINGECKO_DAM,
  \"coingecko_rusd\": $COINGECKO_RUSD
}" > "$DATA_FILE"

echo "  Data saved to: $DATA_FILE" | tee -a "$LOG_FILE"

# -----------------------------------------------------------------------------
# STEP 2: Extract key metrics for the prompt
# -----------------------------------------------------------------------------
echo "Step 2: Extracting metrics..." | tee -a "$LOG_FILE"

# Extract TVL from DefiLlama (get last entry from tvl array, or currentChainTvls)
TVL_ETH=$(echo "$DEFILLAMA_DATA" | jq -r '.currentChainTvls.Ethereum // 0')
TVL_BASE=$(echo "$DEFILLAMA_DATA" | jq -r '.currentChainTvls.Base // 0')
# Calculate total TVL by adding chain TVLs
TVL=$(echo "$TVL_ETH + $TVL_BASE" | bc | xargs printf "%.0f")

# Extract DAM token data from CoinGecko
DAM_PRICE=$(echo "$COINGECKO_DAM" | jq -r '.market_data.current_price.usd // "N/A"')
DAM_MCAP=$(echo "$COINGECKO_DAM" | jq -r '.market_data.market_cap.usd // "N/A"')
DAM_VOLUME=$(echo "$COINGECKO_DAM" | jq -r '.market_data.total_volume.usd // "N/A"')

# Extract rUSD data from CoinGecko
RUSD_PRICE=$(echo "$COINGECKO_RUSD" | jq -r '.market_data.current_price.usd // "N/A"')
RUSD_MCAP=$(echo "$COINGECKO_RUSD" | jq -r '.market_data.market_cap.usd // "N/A"')

echo "  TVL: $TVL" | tee -a "$LOG_FILE"
echo "  DAM Price: $DAM_PRICE" | tee -a "$LOG_FILE"
echo "  rUSD Price: $RUSD_PRICE" | tee -a "$LOG_FILE"

# -----------------------------------------------------------------------------
# STEP 3: Generate the prompt for Claude Code
# -----------------------------------------------------------------------------
echo "Step 3: Generating Claude Code prompt..." | tee -a "$LOG_FILE"

PROMPT="Update the Reservoir Protocol report with today's data.

FRESH API DATA ($(date +%Y-%m-%d)):
- DefiLlama TVL: \$$TVL
- Ethereum TVL: \$$TVL_ETH
- Base TVL: \$$TVL_BASE
- DAM Price: \$$DAM_PRICE
- DAM Market Cap: \$$DAM_MCAP
- DAM 24h Volume: \$$DAM_VOLUME
- rUSD Price: \$$RUSD_PRICE
- rUSD Market Cap: \$$RUSD_MCAP

INSTRUCTIONS:
1. Read the context file: claude.md_reservoir
2. Read the current report: case_studies/protocols/reservoir.md
3. Update ONLY the data points with the fresh values above
4. Keep the same structure and prose style
5. Update the 'Last Updated' date to $(date +%B\ %d,\ %Y)
6. Verify all 60 footnotes are still cited in the body
7. Commit with message 'Update Reservoir: $(date +%Y-%m-%d) data'
8. Do NOT create a GitHub release (I will review first)"

echo "$PROMPT" > "$REPO_DIR/agents/data/reservoir_prompt.txt"
echo "  Prompt saved to: agents/data/reservoir_prompt.txt" | tee -a "$LOG_FILE"

# -----------------------------------------------------------------------------
# STEP 4: Call Claude Code (manual for now, can be automated later)
# -----------------------------------------------------------------------------
echo "" | tee -a "$LOG_FILE"
echo "=== READY FOR CLAUDE CODE ===" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "To complete the update, run Claude Code with this prompt:" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "  cd \"$REPO_DIR\"" | tee -a "$LOG_FILE"
echo "  claude" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "Then paste the prompt from: agents/data/reservoir_prompt.txt" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "Completed: $(date)" | tee -a "$LOG_FILE"
