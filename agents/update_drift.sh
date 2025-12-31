#!/bin/bash
# =============================================================================
# AGENT: Drift Update Script
# =============================================================================
# Fetches latest data from APIs and prepares update context for Drift report.
#
# Data Sources:
# - DefiLlama TVL API (drift)
# - DefiLlama Fees API (drift)
# - CoinGecko (drift-protocol for DRIFT token)
#
# Usage: ./agents/update_drift.sh
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_drift"
DATA_DIR="$REPO_DIR/agents/data"
LOG_FILE="$REPO_DIR/agents/logs/drift_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$DATA_DIR"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== Drift Update Agent ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 1. FETCH DEFILLAMA TVL
# =============================================================================
echo "Fetching Drift TVL from DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_TVL=$(curl -s "https://api.llama.fi/protocol/drift")

if [ -n "$DEFILLAMA_TVL" ]; then
    echo "$DEFILLAMA_TVL" > "$DATA_DIR/drift_defillama_tvl.json"

    # Extract key metrics
    TOTAL_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Solana // empty')
    DESCRIPTION=$(echo "$DEFILLAMA_TVL" | jq -r '.description // empty')
    GECKO_ID=$(echo "$DEFILLAMA_TVL" | jq -r '.gecko_id // empty')

    echo "  Total TVL (Solana): $TOTAL_TVL" | tee -a "$LOG_FILE"
    echo "  Description: $DESCRIPTION" | tee -a "$LOG_FILE"
    echo "  Gecko ID: $GECKO_ID" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch DefiLlama TVL" | tee -a "$LOG_FILE"
    TOTAL_TVL="null"
fi

# =============================================================================
# 2. FETCH DEFILLAMA FEES (may not be available)
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching Drift fees from DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_FEES=$(curl -s "https://api.llama.fi/summary/fees/drift")

if echo "$DEFILLAMA_FEES" | jq -e '.total24h' > /dev/null 2>&1; then
    echo "$DEFILLAMA_FEES" > "$DATA_DIR/drift_defillama_fees.json"

    FEES_24H=$(echo "$DEFILLAMA_FEES" | jq -r '.total24h // empty')
    FEES_7D=$(echo "$DEFILLAMA_FEES" | jq -r '.total7d // empty')
    FEES_30D=$(echo "$DEFILLAMA_FEES" | jq -r '.total30d // empty')
    FEES_ALL=$(echo "$DEFILLAMA_FEES" | jq -r '.totalAllTime // empty')

    echo "  24h Fees: $FEES_24H" | tee -a "$LOG_FILE"
    echo "  7d Fees: $FEES_7D" | tee -a "$LOG_FILE"
    echo "  30d Fees: $FEES_30D" | tee -a "$LOG_FILE"
    echo "  All-Time Fees: $FEES_ALL" | tee -a "$LOG_FILE"
else
    echo "  [INFO] Fees data not available for Drift" | tee -a "$LOG_FILE"
    FEES_24H="null"
    FEES_7D="null"
    FEES_30D="null"
    FEES_ALL="null"
fi

# =============================================================================
# 3. FETCH COINGECKO DATA - DRIFT TOKEN
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for DRIFT token..." | tee -a "$LOG_FILE"
sleep 2  # Rate limiting

COINGECKO_DRIFT=$(curl -s "https://api.coingecko.com/api/v3/coins/drift-protocol")

if echo "$COINGECKO_DRIFT" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_DRIFT" > "$DATA_DIR/drift_coingecko.json"

    DRIFT_PRICE=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.current_price.usd // empty')
    DRIFT_MCAP=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.market_cap.usd // empty')
    DRIFT_MCAP_RANK=$(echo "$COINGECKO_DRIFT" | jq -r '.market_cap_rank // empty')
    DRIFT_FDV=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.fully_diluted_valuation.usd // empty')
    DRIFT_VOL_24H=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.total_volume.usd // empty')
    DRIFT_CIRC_SUPPLY=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.circulating_supply // empty')
    DRIFT_TOTAL_SUPPLY=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.total_supply // empty')
    DRIFT_CHANGE_24H=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.price_change_percentage_24h // empty')
    DRIFT_CHANGE_7D=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.price_change_percentage_7d // empty')
    DRIFT_CHANGE_30D=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.price_change_percentage_30d // empty')
    DRIFT_ATH=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.ath.usd // empty')
    DRIFT_ATH_DATE=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.ath_date.usd // empty')
    DRIFT_ATL=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.atl.usd // empty')
    DRIFT_ATL_DATE=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.atl_date.usd // empty')
    DRIFT_ATH_CHANGE=$(echo "$COINGECKO_DRIFT" | jq -r '.market_data.ath_change_percentage.usd // empty')

    echo "  DRIFT Price: \$$DRIFT_PRICE" | tee -a "$LOG_FILE"
    echo "  DRIFT Market Cap: \$$DRIFT_MCAP" | tee -a "$LOG_FILE"
    echo "  DRIFT Market Cap Rank: #$DRIFT_MCAP_RANK" | tee -a "$LOG_FILE"
    echo "  DRIFT FDV: \$$DRIFT_FDV" | tee -a "$LOG_FILE"
    echo "  DRIFT 24h Volume: \$$DRIFT_VOL_24H" | tee -a "$LOG_FILE"
    echo "  DRIFT Circulating Supply: $DRIFT_CIRC_SUPPLY" | tee -a "$LOG_FILE"
    echo "  DRIFT Total Supply: $DRIFT_TOTAL_SUPPLY" | tee -a "$LOG_FILE"
    echo "  DRIFT 24h Change: $DRIFT_CHANGE_24H%" | tee -a "$LOG_FILE"
    echo "  DRIFT 7d Change: $DRIFT_CHANGE_7D%" | tee -a "$LOG_FILE"
    echo "  DRIFT 30d Change: $DRIFT_CHANGE_30D%" | tee -a "$LOG_FILE"
    echo "  DRIFT ATH: \$$DRIFT_ATH ($DRIFT_ATH_DATE)" | tee -a "$LOG_FILE"
    echo "  DRIFT ATL: \$$DRIFT_ATL ($DRIFT_ATL_DATE)" | tee -a "$LOG_FILE"
    echo "  DRIFT ATH Decline: $DRIFT_ATH_CHANGE%" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko DRIFT data" | tee -a "$LOG_FILE"
    DRIFT_PRICE="null"
    DRIFT_MCAP="null"
    DRIFT_MCAP_RANK="null"
    DRIFT_FDV="null"
    DRIFT_VOL_24H="null"
    DRIFT_CIRC_SUPPLY="null"
    DRIFT_TOTAL_SUPPLY="null"
    DRIFT_CHANGE_24H="null"
    DRIFT_CHANGE_7D="null"
    DRIFT_CHANGE_30D="null"
    DRIFT_ATH="null"
    DRIFT_ATH_DATE="null"
    DRIFT_ATL="null"
    DRIFT_ATL_DATE="null"
    DRIFT_ATH_CHANGE="null"
fi

# =============================================================================
# 4. OUTPUT SUMMARY
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "=== SUMMARY ===" | tee -a "$LOG_FILE"
echo "Data files saved to: $DATA_DIR" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Create a summary JSON for easy parsing
cat > "$DATA_DIR/drift_summary.json" << EOF
{
  "protocol": "Drift",
  "timestamp": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "tvl": {
    "solana": ${TOTAL_TVL:-null}
  },
  "fees": {
    "fees_24h": ${FEES_24H:-null},
    "fees_7d": ${FEES_7D:-null},
    "fees_30d": ${FEES_30D:-null},
    "fees_allTime": ${FEES_ALL:-null}
  },
  "drift_token": {
    "price": ${DRIFT_PRICE:-null},
    "marketCap": ${DRIFT_MCAP:-null},
    "marketCapRank": ${DRIFT_MCAP_RANK:-null},
    "fdv": ${DRIFT_FDV:-null},
    "volume24h": ${DRIFT_VOL_24H:-null},
    "circulatingSupply": ${DRIFT_CIRC_SUPPLY:-null},
    "totalSupply": ${DRIFT_TOTAL_SUPPLY:-null},
    "change24h": ${DRIFT_CHANGE_24H:-null},
    "change7d": ${DRIFT_CHANGE_7D:-null},
    "change30d": ${DRIFT_CHANGE_30D:-null},
    "ath": ${DRIFT_ATH:-null},
    "athDate": "${DRIFT_ATH_DATE:-null}",
    "atl": ${DRIFT_ATL:-null},
    "atlDate": "${DRIFT_ATL_DATE:-null}",
    "athChangePercent": ${DRIFT_ATH_CHANGE:-null}
  },
  "protocol_info": {
    "chain": "Solana",
    "architecture": "Hybrid DLOB + vAMM + JIT",
    "max_leverage": "101x",
    "markets": "40+",
    "cumulative_volume": "$70B+"
  }
}
EOF

echo "Summary JSON created: $DATA_DIR/drift_summary.json" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "=== Drift Update Complete ===" | tee -a "$LOG_FILE"
