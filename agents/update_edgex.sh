#!/bin/bash
# =============================================================================
# AGENT: EdgeX Protocol Update Script
# =============================================================================
# Fetches latest data from APIs and prepares update context for EdgeX report.
#
# Usage: ./agents/update_edgex.sh
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_edgex"
DATA_DIR="$REPO_DIR/agents/data"
LOG_FILE="$REPO_DIR/agents/logs/edgex_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$DATA_DIR"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== EdgeX Update Agent ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 1. FETCH DEFILLAMA TVL
# =============================================================================
echo "Fetching DefiLlama TVL..." | tee -a "$LOG_FILE"
DEFILLAMA_TVL=$(curl -s "https://api.llama.fi/protocol/edgex")

if [ -n "$DEFILLAMA_TVL" ]; then
    echo "$DEFILLAMA_TVL" > "$DATA_DIR/edgex_defillama_tvl.json"

    # Extract key metrics
    TOTAL_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.tvl // empty')

    # Get chain-specific TVL
    ETH_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Ethereum // empty')
    ARB_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Arbitrum // empty')
    BSC_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.BSC // empty')

    echo "  Total TVL: $TOTAL_TVL" | tee -a "$LOG_FILE"
    echo "  Ethereum TVL: $ETH_TVL" | tee -a "$LOG_FILE"
    echo "  Arbitrum TVL: $ARB_TVL" | tee -a "$LOG_FILE"
    echo "  BSC TVL: $BSC_TVL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch DefiLlama TVL" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 2. FETCH DEFILLAMA FEES
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching DefiLlama Fees..." | tee -a "$LOG_FILE"
DEFILLAMA_FEES=$(curl -s "https://api.llama.fi/summary/fees/edgex")

if [ -n "$DEFILLAMA_FEES" ]; then
    echo "$DEFILLAMA_FEES" > "$DATA_DIR/edgex_defillama_fees.json"

    # Extract fee metrics
    FEES_24H=$(echo "$DEFILLAMA_FEES" | jq -r '.total24h // empty')
    FEES_7D=$(echo "$DEFILLAMA_FEES" | jq -r '.total7d // empty')
    FEES_30D=$(echo "$DEFILLAMA_FEES" | jq -r '.total30d // empty')
    FEES_ALL=$(echo "$DEFILLAMA_FEES" | jq -r '.totalAllTime // empty')

    echo "  24h Fees: $FEES_24H" | tee -a "$LOG_FILE"
    echo "  7d Fees: $FEES_7D" | tee -a "$LOG_FILE"
    echo "  30d Fees: $FEES_30D" | tee -a "$LOG_FILE"
    echo "  All-Time Fees: $FEES_ALL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch DefiLlama Fees" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 3. CHECK COINGECKO (Token Status)
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Checking CoinGecko for token status..." | tee -a "$LOG_FILE"

# Note: EdgeX token has not launched yet (TGE pending Q4 2025)
# This check will fail gracefully until token is listed
COINGECKO_DATA=$(curl -s "https://api.coingecko.com/api/v3/coins/edgex" 2>/dev/null)

if echo "$COINGECKO_DATA" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_DATA" > "$DATA_DIR/edgex_coingecko.json"

    PRICE=$(echo "$COINGECKO_DATA" | jq -r '.market_data.current_price.usd // empty')
    MCAP=$(echo "$COINGECKO_DATA" | jq -r '.market_data.market_cap.usd // empty')

    echo "  Token Price: $PRICE" | tee -a "$LOG_FILE"
    echo "  Market Cap: $MCAP" | tee -a "$LOG_FILE"
else
    echo "  Token not yet launched (TGE pending Q4 2025)" | tee -a "$LOG_FILE"
    echo "  No CoinGecko data available" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 4. OUTPUT SUMMARY
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "=== SUMMARY ===" | tee -a "$LOG_FILE"
echo "Data files saved to: $DATA_DIR" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Create a summary JSON for easy parsing
cat > "$DATA_DIR/edgex_summary.json" << EOF
{
  "protocol": "EdgeX",
  "timestamp": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "tvl": {
    "total": $TOTAL_TVL,
    "ethereum": $ETH_TVL,
    "arbitrum": $ARB_TVL,
    "bsc": $BSC_TVL
  },
  "fees": {
    "24h": $FEES_24H,
    "7d": $FEES_7D,
    "30d": $FEES_30D,
    "allTime": $FEES_ALL
  },
  "token": {
    "status": "TGE_PENDING",
    "expected": "Q4 2025"
  }
}
EOF

echo "Summary JSON created: $DATA_DIR/edgex_summary.json" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "=== EdgeX Update Complete ===" | tee -a "$LOG_FILE"
