#!/bin/bash
# =============================================================================
# AGENT: Morpho Update Script
# =============================================================================
# Fetches latest data from APIs and prepares update context for Morpho report.
#
# Data Sources:
# - DefiLlama TVL API (morpho)
# - DefiLlama Fees API (morpho)
# - CoinGecko (morpho for MORPHO token)
#
# Usage: ./agents/update_morpho.sh
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_morpho"
DATA_DIR="$REPO_DIR/agents/data"
LOG_FILE="$REPO_DIR/agents/logs/morpho_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$DATA_DIR"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== Morpho Update Agent ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 1. FETCH DEFILLAMA TVL
# =============================================================================
echo "Fetching Morpho TVL from DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_TVL=$(curl -s "https://api.llama.fi/protocol/morpho")

if [ -n "$DEFILLAMA_TVL" ]; then
    echo "$DEFILLAMA_TVL" > "$DATA_DIR/morpho_defillama_tvl.json"

    # Extract key metrics
    ETH_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Ethereum // empty')
    BASE_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Base // empty')
    ARB_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Arbitrum // empty')
    OP_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls["OP Mainnet"] // empty')
    POLYGON_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Polygon // empty')
    LINEA_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Linea // empty')
    SCROLL_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Scroll // empty')
    GNOSIS_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Gnosis // empty')
    BORROWED=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.borrowed // empty')
    DESCRIPTION=$(echo "$DEFILLAMA_TVL" | jq -r '.description // empty')
    GECKO_ID=$(echo "$DEFILLAMA_TVL" | jq -r '.gecko_id // empty')

    echo "  Ethereum TVL: $ETH_TVL" | tee -a "$LOG_FILE"
    echo "  Base TVL: $BASE_TVL" | tee -a "$LOG_FILE"
    echo "  Arbitrum TVL: $ARB_TVL" | tee -a "$LOG_FILE"
    echo "  OP Mainnet TVL: $OP_TVL" | tee -a "$LOG_FILE"
    echo "  Polygon TVL: $POLYGON_TVL" | tee -a "$LOG_FILE"
    echo "  Linea TVL: $LINEA_TVL" | tee -a "$LOG_FILE"
    echo "  Scroll TVL: $SCROLL_TVL" | tee -a "$LOG_FILE"
    echo "  Gnosis TVL: $GNOSIS_TVL" | tee -a "$LOG_FILE"
    echo "  Total Borrowed: $BORROWED" | tee -a "$LOG_FILE"
    echo "  Gecko ID: $GECKO_ID" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch DefiLlama TVL" | tee -a "$LOG_FILE"
    ETH_TVL="null"
    BORROWED="null"
fi

# =============================================================================
# 2. FETCH DEFILLAMA FEES
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching Morpho fees from DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_FEES=$(curl -s "https://api.llama.fi/summary/fees/morpho")

if echo "$DEFILLAMA_FEES" | jq -e '.total24h' > /dev/null 2>&1; then
    echo "$DEFILLAMA_FEES" > "$DATA_DIR/morpho_defillama_fees.json"

    FEES_24H=$(echo "$DEFILLAMA_FEES" | jq -r '.total24h // empty')
    FEES_7D=$(echo "$DEFILLAMA_FEES" | jq -r '.total7d // empty')
    FEES_30D=$(echo "$DEFILLAMA_FEES" | jq -r '.total30d // empty')
    FEES_ALL=$(echo "$DEFILLAMA_FEES" | jq -r '.totalAllTime // empty')

    echo "  24h Fees: $FEES_24H" | tee -a "$LOG_FILE"
    echo "  7d Fees: $FEES_7D" | tee -a "$LOG_FILE"
    echo "  30d Fees: $FEES_30D" | tee -a "$LOG_FILE"
    echo "  All-Time Fees: $FEES_ALL" | tee -a "$LOG_FILE"
else
    echo "  [INFO] Fees data structure may differ" | tee -a "$LOG_FILE"
    FEES_24H="null"
    FEES_7D="null"
    FEES_30D="null"
    FEES_ALL="null"
fi

# =============================================================================
# 3. FETCH COINGECKO DATA - MORPHO TOKEN
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for MORPHO token..." | tee -a "$LOG_FILE"
sleep 2  # Rate limiting

COINGECKO_MORPHO=$(curl -s "https://api.coingecko.com/api/v3/coins/morpho")

if echo "$COINGECKO_MORPHO" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_MORPHO" > "$DATA_DIR/morpho_coingecko.json"

    MORPHO_PRICE=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.current_price.usd // empty')
    MORPHO_MCAP=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.market_cap.usd // empty')
    MORPHO_MCAP_RANK=$(echo "$COINGECKO_MORPHO" | jq -r '.market_cap_rank // empty')
    MORPHO_FDV=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.fully_diluted_valuation.usd // empty')
    MORPHO_VOL_24H=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.total_volume.usd // empty')
    MORPHO_CIRC_SUPPLY=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.circulating_supply // empty')
    MORPHO_TOTAL_SUPPLY=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.total_supply // empty')
    MORPHO_CHANGE_24H=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.price_change_percentage_24h // empty')
    MORPHO_CHANGE_7D=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.price_change_percentage_7d // empty')
    MORPHO_CHANGE_30D=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.price_change_percentage_30d // empty')
    MORPHO_ATH=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.ath.usd // empty')
    MORPHO_ATH_DATE=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.ath_date.usd // empty')
    MORPHO_ATL=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.atl.usd // empty')
    MORPHO_ATL_DATE=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.atl_date.usd // empty')
    MORPHO_ATH_CHANGE=$(echo "$COINGECKO_MORPHO" | jq -r '.market_data.ath_change_percentage.usd // empty')

    echo "  MORPHO Price: \$$MORPHO_PRICE" | tee -a "$LOG_FILE"
    echo "  MORPHO Market Cap: \$$MORPHO_MCAP" | tee -a "$LOG_FILE"
    echo "  MORPHO Market Cap Rank: #$MORPHO_MCAP_RANK" | tee -a "$LOG_FILE"
    echo "  MORPHO FDV: \$$MORPHO_FDV" | tee -a "$LOG_FILE"
    echo "  MORPHO 24h Volume: \$$MORPHO_VOL_24H" | tee -a "$LOG_FILE"
    echo "  MORPHO Circulating Supply: $MORPHO_CIRC_SUPPLY" | tee -a "$LOG_FILE"
    echo "  MORPHO Total Supply: $MORPHO_TOTAL_SUPPLY" | tee -a "$LOG_FILE"
    echo "  MORPHO 24h Change: $MORPHO_CHANGE_24H%" | tee -a "$LOG_FILE"
    echo "  MORPHO 7d Change: $MORPHO_CHANGE_7D%" | tee -a "$LOG_FILE"
    echo "  MORPHO 30d Change: $MORPHO_CHANGE_30D%" | tee -a "$LOG_FILE"
    echo "  MORPHO ATH: \$$MORPHO_ATH ($MORPHO_ATH_DATE)" | tee -a "$LOG_FILE"
    echo "  MORPHO ATL: \$$MORPHO_ATL ($MORPHO_ATL_DATE)" | tee -a "$LOG_FILE"
    echo "  MORPHO ATH Decline: $MORPHO_ATH_CHANGE%" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko MORPHO data" | tee -a "$LOG_FILE"
    MORPHO_PRICE="null"
    MORPHO_MCAP="null"
    MORPHO_MCAP_RANK="null"
    MORPHO_FDV="null"
    MORPHO_VOL_24H="null"
    MORPHO_CIRC_SUPPLY="null"
    MORPHO_TOTAL_SUPPLY="null"
    MORPHO_CHANGE_24H="null"
    MORPHO_CHANGE_7D="null"
    MORPHO_CHANGE_30D="null"
    MORPHO_ATH="null"
    MORPHO_ATH_DATE="null"
    MORPHO_ATL="null"
    MORPHO_ATL_DATE="null"
    MORPHO_ATH_CHANGE="null"
fi

# =============================================================================
# 4. OUTPUT SUMMARY
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "=== SUMMARY ===" | tee -a "$LOG_FILE"
echo "Data files saved to: $DATA_DIR" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Create a summary JSON for easy parsing
cat > "$DATA_DIR/morpho_summary.json" << EOF
{
  "protocol": "Morpho",
  "timestamp": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "tvl": {
    "ethereum": ${ETH_TVL:-null},
    "base": ${BASE_TVL:-null},
    "arbitrum": ${ARB_TVL:-null},
    "optimism": ${OP_TVL:-null},
    "polygon": ${POLYGON_TVL:-null},
    "linea": ${LINEA_TVL:-null},
    "scroll": ${SCROLL_TVL:-null},
    "gnosis": ${GNOSIS_TVL:-null},
    "borrowed": ${BORROWED:-null}
  },
  "fees": {
    "fees_24h": ${FEES_24H:-null},
    "fees_7d": ${FEES_7D:-null},
    "fees_30d": ${FEES_30D:-null},
    "fees_allTime": ${FEES_ALL:-null}
  },
  "morpho_token": {
    "price": ${MORPHO_PRICE:-null},
    "marketCap": ${MORPHO_MCAP:-null},
    "marketCapRank": ${MORPHO_MCAP_RANK:-null},
    "fdv": ${MORPHO_FDV:-null},
    "volume24h": ${MORPHO_VOL_24H:-null},
    "circulatingSupply": ${MORPHO_CIRC_SUPPLY:-null},
    "totalSupply": ${MORPHO_TOTAL_SUPPLY:-null},
    "change24h": ${MORPHO_CHANGE_24H:-null},
    "change7d": ${MORPHO_CHANGE_7D:-null},
    "change30d": ${MORPHO_CHANGE_30D:-null},
    "ath": ${MORPHO_ATH:-null},
    "athDate": "${MORPHO_ATH_DATE:-null}",
    "atl": ${MORPHO_ATL:-null},
    "atlDate": "${MORPHO_ATL_DATE:-null}",
    "athChangePercent": ${MORPHO_ATH_CHANGE:-null}
  },
  "protocol_info": {
    "chains": ["Ethereum", "Base", "Arbitrum", "OP Mainnet", "Polygon", "Linea", "Scroll", "Gnosis"],
    "products": ["Morpho Blue", "MetaMorpho", "Morpho Optimizer", "Public Allocator"],
    "category": "Lending",
    "architecture": "Permissionless lending primitive"
  }
}
EOF

echo "Summary JSON created: $DATA_DIR/morpho_summary.json" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "=== Morpho Update Complete ===" | tee -a "$LOG_FILE"
