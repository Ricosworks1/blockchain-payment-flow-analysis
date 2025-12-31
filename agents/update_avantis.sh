#!/bin/bash
# =============================================================================
# AGENT: Avantis Protocol Update Script
# =============================================================================
# Fetches latest data from APIs and prepares update context for Avantis report.
#
# Usage: ./agents/update_avantis.sh
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_avantis"
DATA_DIR="$REPO_DIR/agents/data"
LOG_FILE="$REPO_DIR/agents/logs/avantis_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$DATA_DIR"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== Avantis Update Agent ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 1. FETCH DEFILLAMA TVL
# =============================================================================
echo "Fetching DefiLlama TVL..." | tee -a "$LOG_FILE"
DEFILLAMA_TVL=$(curl -s "https://api.llama.fi/protocol/avantis")

if [ -n "$DEFILLAMA_TVL" ]; then
    echo "$DEFILLAMA_TVL" > "$DATA_DIR/avantis_defillama_tvl.json"

    # Extract key metrics
    TOTAL_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.tvl // empty')

    # Get chain-specific TVL (Avantis is Base-only)
    BASE_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Base // empty')

    echo "  Total TVL: $TOTAL_TVL" | tee -a "$LOG_FILE"
    echo "  Base TVL: $BASE_TVL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch DefiLlama TVL" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 2. FETCH DEFILLAMA FEES
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching DefiLlama Fees..." | tee -a "$LOG_FILE"
DEFILLAMA_FEES=$(curl -s "https://api.llama.fi/summary/fees/avantis")

if [ -n "$DEFILLAMA_FEES" ]; then
    echo "$DEFILLAMA_FEES" > "$DATA_DIR/avantis_defillama_fees.json"

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
# 3. FETCH COINGECKO DATA (AVNT Token)
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for AVNT..." | tee -a "$LOG_FILE"
sleep 2  # Rate limit protection

COINGECKO_DATA=$(curl -s "https://api.coingecko.com/api/v3/coins/avantis")

if echo "$COINGECKO_DATA" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_DATA" > "$DATA_DIR/avantis_coingecko.json"

    PRICE=$(echo "$COINGECKO_DATA" | jq -r '.market_data.current_price.usd // empty')
    MCAP=$(echo "$COINGECKO_DATA" | jq -r '.market_data.market_cap.usd // empty')
    FDV=$(echo "$COINGECKO_DATA" | jq -r '.market_data.fully_diluted_valuation.usd // empty')
    VOLUME_24H=$(echo "$COINGECKO_DATA" | jq -r '.market_data.total_volume.usd // empty')
    CIRC_SUPPLY=$(echo "$COINGECKO_DATA" | jq -r '.market_data.circulating_supply // empty')
    TOTAL_SUPPLY=$(echo "$COINGECKO_DATA" | jq -r '.market_data.total_supply // empty')
    CHANGE_24H=$(echo "$COINGECKO_DATA" | jq -r '.market_data.price_change_percentage_24h // empty')
    CHANGE_7D=$(echo "$COINGECKO_DATA" | jq -r '.market_data.price_change_percentage_7d // empty')
    ATH=$(echo "$COINGECKO_DATA" | jq -r '.market_data.ath.usd // empty')
    ATL=$(echo "$COINGECKO_DATA" | jq -r '.market_data.atl.usd // empty')

    echo "  AVNT Price: $PRICE" | tee -a "$LOG_FILE"
    echo "  Market Cap: $MCAP" | tee -a "$LOG_FILE"
    echo "  FDV: $FDV" | tee -a "$LOG_FILE"
    echo "  24h Volume: $VOLUME_24H" | tee -a "$LOG_FILE"
    echo "  Circulating Supply: $CIRC_SUPPLY" | tee -a "$LOG_FILE"
    echo "  Total Supply: $TOTAL_SUPPLY" | tee -a "$LOG_FILE"
    echo "  24h Change: $CHANGE_24H%" | tee -a "$LOG_FILE"
    echo "  7d Change: $CHANGE_7D%" | tee -a "$LOG_FILE"
    echo "  ATH: $ATH" | tee -a "$LOG_FILE"
    echo "  ATL: $ATL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko data" | tee -a "$LOG_FILE"
    PRICE="null"
    MCAP="null"
    FDV="null"
    VOLUME_24H="null"
    CIRC_SUPPLY="null"
    TOTAL_SUPPLY="null"
    CHANGE_24H="null"
    CHANGE_7D="null"
    ATH="null"
    ATL="null"
fi

# =============================================================================
# 4. OUTPUT SUMMARY
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "=== SUMMARY ===" | tee -a "$LOG_FILE"
echo "Data files saved to: $DATA_DIR" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Create a summary JSON for easy parsing
cat > "$DATA_DIR/avantis_summary.json" << EOF
{
  "protocol": "Avantis",
  "timestamp": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "tvl": {
    "total": ${TOTAL_TVL:-null},
    "base": ${BASE_TVL:-null}
  },
  "fees": {
    "24h": ${FEES_24H:-null},
    "7d": ${FEES_7D:-null},
    "30d": ${FEES_30D:-null},
    "allTime": ${FEES_ALL:-null}
  },
  "token": {
    "symbol": "AVNT",
    "price": ${PRICE:-null},
    "marketCap": ${MCAP:-null},
    "fdv": ${FDV:-null},
    "volume24h": ${VOLUME_24H:-null},
    "circulatingSupply": ${CIRC_SUPPLY:-null},
    "totalSupply": ${TOTAL_SUPPLY:-null},
    "change24h": ${CHANGE_24H:-null},
    "change7d": ${CHANGE_7D:-null},
    "ath": ${ATH:-null},
    "atl": ${ATL:-null}
  }
}
EOF

echo "Summary JSON created: $DATA_DIR/avantis_summary.json" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "=== Avantis Update Complete ===" | tee -a "$LOG_FILE"
