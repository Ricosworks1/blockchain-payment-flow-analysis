#!/bin/bash
# =============================================================================
# AGENT: Meteora Update Script
# =============================================================================
# Fetches latest data from APIs and prepares update context for Meteora report.
#
# Data Sources:
# - DefiLlama TVL API (meteora)
# - DefiLlama Fees API (meteora)
# - CoinGecko (meteora for MET token)
#
# Usage: ./agents/update_meteora.sh
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_meteora"
DATA_DIR="$REPO_DIR/agents/data"
LOG_FILE="$REPO_DIR/agents/logs/meteora_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$DATA_DIR"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== Meteora Update Agent ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 1. FETCH DEFILLAMA TVL
# =============================================================================
echo "Fetching Meteora TVL from DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_TVL=$(curl -s "https://api.llama.fi/protocol/meteora")

if [ -n "$DEFILLAMA_TVL" ]; then
    echo "$DEFILLAMA_TVL" > "$DATA_DIR/meteora_defillama_tvl.json"

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
# 2. FETCH DEFILLAMA FEES
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching Meteora fees from DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_FEES=$(curl -s "https://api.llama.fi/summary/fees/meteora")

if echo "$DEFILLAMA_FEES" | jq -e '.total24h' > /dev/null 2>&1; then
    echo "$DEFILLAMA_FEES" > "$DATA_DIR/meteora_defillama_fees.json"

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
# 3. FETCH COINGECKO DATA - MET TOKEN
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for MET token..." | tee -a "$LOG_FILE"
sleep 2  # Rate limiting

COINGECKO_MET=$(curl -s "https://api.coingecko.com/api/v3/coins/meteora")

if echo "$COINGECKO_MET" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_MET" > "$DATA_DIR/meteora_coingecko.json"

    MET_PRICE=$(echo "$COINGECKO_MET" | jq -r '.market_data.current_price.usd // empty')
    MET_MCAP=$(echo "$COINGECKO_MET" | jq -r '.market_data.market_cap.usd // empty')
    MET_MCAP_RANK=$(echo "$COINGECKO_MET" | jq -r '.market_cap_rank // empty')
    MET_FDV=$(echo "$COINGECKO_MET" | jq -r '.market_data.fully_diluted_valuation.usd // empty')
    MET_VOL_24H=$(echo "$COINGECKO_MET" | jq -r '.market_data.total_volume.usd // empty')
    MET_CIRC_SUPPLY=$(echo "$COINGECKO_MET" | jq -r '.market_data.circulating_supply // empty')
    MET_TOTAL_SUPPLY=$(echo "$COINGECKO_MET" | jq -r '.market_data.total_supply // empty')
    MET_CHANGE_24H=$(echo "$COINGECKO_MET" | jq -r '.market_data.price_change_percentage_24h // empty')
    MET_CHANGE_7D=$(echo "$COINGECKO_MET" | jq -r '.market_data.price_change_percentage_7d // empty')
    MET_CHANGE_30D=$(echo "$COINGECKO_MET" | jq -r '.market_data.price_change_percentage_30d // empty')
    MET_ATH=$(echo "$COINGECKO_MET" | jq -r '.market_data.ath.usd // empty')
    MET_ATH_DATE=$(echo "$COINGECKO_MET" | jq -r '.market_data.ath_date.usd // empty')
    MET_ATL=$(echo "$COINGECKO_MET" | jq -r '.market_data.atl.usd // empty')
    MET_ATL_DATE=$(echo "$COINGECKO_MET" | jq -r '.market_data.atl_date.usd // empty')
    MET_ATH_CHANGE=$(echo "$COINGECKO_MET" | jq -r '.market_data.ath_change_percentage.usd // empty')

    echo "  MET Price: \$$MET_PRICE" | tee -a "$LOG_FILE"
    echo "  MET Market Cap: \$$MET_MCAP" | tee -a "$LOG_FILE"
    echo "  MET Market Cap Rank: #$MET_MCAP_RANK" | tee -a "$LOG_FILE"
    echo "  MET FDV: \$$MET_FDV" | tee -a "$LOG_FILE"
    echo "  MET 24h Volume: \$$MET_VOL_24H" | tee -a "$LOG_FILE"
    echo "  MET Circulating Supply: $MET_CIRC_SUPPLY" | tee -a "$LOG_FILE"
    echo "  MET Total Supply: $MET_TOTAL_SUPPLY" | tee -a "$LOG_FILE"
    echo "  MET 24h Change: $MET_CHANGE_24H%" | tee -a "$LOG_FILE"
    echo "  MET 7d Change: $MET_CHANGE_7D%" | tee -a "$LOG_FILE"
    echo "  MET 30d Change: $MET_CHANGE_30D%" | tee -a "$LOG_FILE"
    echo "  MET ATH: \$$MET_ATH ($MET_ATH_DATE)" | tee -a "$LOG_FILE"
    echo "  MET ATL: \$$MET_ATL ($MET_ATL_DATE)" | tee -a "$LOG_FILE"
    echo "  MET ATH Decline: $MET_ATH_CHANGE%" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko MET data" | tee -a "$LOG_FILE"
    MET_PRICE="null"
    MET_MCAP="null"
    MET_MCAP_RANK="null"
    MET_FDV="null"
    MET_VOL_24H="null"
    MET_CIRC_SUPPLY="null"
    MET_TOTAL_SUPPLY="null"
    MET_CHANGE_24H="null"
    MET_CHANGE_7D="null"
    MET_CHANGE_30D="null"
    MET_ATH="null"
    MET_ATH_DATE="null"
    MET_ATL="null"
    MET_ATL_DATE="null"
    MET_ATH_CHANGE="null"
fi

# =============================================================================
# 4. OUTPUT SUMMARY
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "=== SUMMARY ===" | tee -a "$LOG_FILE"
echo "Data files saved to: $DATA_DIR" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Create a summary JSON for easy parsing
cat > "$DATA_DIR/meteora_summary.json" << EOF
{
  "protocol": "Meteora",
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
  "met_token": {
    "price": ${MET_PRICE:-null},
    "marketCap": ${MET_MCAP:-null},
    "marketCapRank": ${MET_MCAP_RANK:-null},
    "fdv": ${MET_FDV:-null},
    "volume24h": ${MET_VOL_24H:-null},
    "circulatingSupply": ${MET_CIRC_SUPPLY:-null},
    "totalSupply": ${MET_TOTAL_SUPPLY:-null},
    "change24h": ${MET_CHANGE_24H:-null},
    "change7d": ${MET_CHANGE_7D:-null},
    "change30d": ${MET_CHANGE_30D:-null},
    "ath": ${MET_ATH:-null},
    "athDate": "${MET_ATH_DATE:-null}",
    "atl": ${MET_ATL:-null},
    "atlDate": "${MET_ATL_DATE:-null}",
    "athChangePercent": ${MET_ATH_CHANGE:-null}
  },
  "protocol_info": {
    "chain": "Solana",
    "products": ["DLMM", "Dynamic Vaults", "Dynamic AMM", "Memecoin Launchpad"],
    "category": "DEX / Liquidity Infrastructure"
  }
}
EOF

echo "Summary JSON created: $DATA_DIR/meteora_summary.json" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "=== Meteora Update Complete ===" | tee -a "$LOG_FILE"
