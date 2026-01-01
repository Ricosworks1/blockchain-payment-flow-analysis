#!/bin/bash
# =============================================================================
# AGENT: Pendle Update Script
# =============================================================================
# Fetches latest data from APIs and prepares update context for Pendle report.
#
# Data Sources:
# - DefiLlama TVL API (pendle)
# - DefiLlama Fees API (pendle)
# - CoinGecko (pendle for PENDLE token)
#
# Usage: ./agents/update_pendle.sh
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_pendle"
DATA_DIR="$REPO_DIR/agents/data"
LOG_FILE="$REPO_DIR/agents/logs/pendle_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$DATA_DIR"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== Pendle Update Agent ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 1. FETCH DEFILLAMA TVL
# =============================================================================
echo "Fetching Pendle TVL from DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_TVL=$(curl -s "https://api.llama.fi/protocol/pendle")

if [ -n "$DEFILLAMA_TVL" ]; then
    echo "$DEFILLAMA_TVL" > "$DATA_DIR/pendle_defillama_tvl.json"

    # Extract key metrics
    ETH_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Ethereum // empty')
    ARB_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Arbitrum // empty')
    PLASMA_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Plasma // empty')
    BNB_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Binance // empty')
    BASE_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Base // empty')
    HYPER_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls["Hyperliquid L1"] // empty')
    SONIC_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Sonic // empty')
    MANTLE_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Mantle // empty')
    AVAX_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Avalanche // empty')
    OP_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Optimism // empty')
    BERA_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Berachain // empty')
    STAKING=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.staking // empty')
    POOL2=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.pool2 // empty')
    DESCRIPTION=$(echo "$DEFILLAMA_TVL" | jq -r '.description // empty')
    GECKO_ID=$(echo "$DEFILLAMA_TVL" | jq -r '.gecko_id // empty')

    echo "  Ethereum TVL: $ETH_TVL" | tee -a "$LOG_FILE"
    echo "  Arbitrum TVL: $ARB_TVL" | tee -a "$LOG_FILE"
    echo "  Plasma TVL: $PLASMA_TVL" | tee -a "$LOG_FILE"
    echo "  BNB Chain TVL: $BNB_TVL" | tee -a "$LOG_FILE"
    echo "  Base TVL: $BASE_TVL" | tee -a "$LOG_FILE"
    echo "  Hyperliquid TVL: $HYPER_TVL" | tee -a "$LOG_FILE"
    echo "  Sonic TVL: $SONIC_TVL" | tee -a "$LOG_FILE"
    echo "  Mantle TVL: $MANTLE_TVL" | tee -a "$LOG_FILE"
    echo "  Avalanche TVL: $AVAX_TVL" | tee -a "$LOG_FILE"
    echo "  Optimism TVL: $OP_TVL" | tee -a "$LOG_FILE"
    echo "  Berachain TVL: $BERA_TVL" | tee -a "$LOG_FILE"
    echo "  Staking (vePENDLE): $STAKING" | tee -a "$LOG_FILE"
    echo "  Pool2: $POOL2" | tee -a "$LOG_FILE"
    echo "  Gecko ID: $GECKO_ID" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch DefiLlama TVL" | tee -a "$LOG_FILE"
    ETH_TVL="null"
fi

# =============================================================================
# 2. FETCH DEFILLAMA FEES
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching Pendle fees from DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_FEES=$(curl -s "https://api.llama.fi/summary/fees/pendle")

if echo "$DEFILLAMA_FEES" | jq -e '.total24h' > /dev/null 2>&1; then
    echo "$DEFILLAMA_FEES" > "$DATA_DIR/pendle_defillama_fees.json"

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
# 3. FETCH COINGECKO DATA - PENDLE TOKEN
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for PENDLE token..." | tee -a "$LOG_FILE"
sleep 2  # Rate limiting

COINGECKO_PENDLE=$(curl -s "https://api.coingecko.com/api/v3/coins/pendle")

if echo "$COINGECKO_PENDLE" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_PENDLE" > "$DATA_DIR/pendle_coingecko.json"

    PENDLE_PRICE=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.current_price.usd // empty')
    PENDLE_MCAP=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.market_cap.usd // empty')
    PENDLE_MCAP_RANK=$(echo "$COINGECKO_PENDLE" | jq -r '.market_cap_rank // empty')
    PENDLE_FDV=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.fully_diluted_valuation.usd // empty')
    PENDLE_VOL_24H=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.total_volume.usd // empty')
    PENDLE_CIRC_SUPPLY=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.circulating_supply // empty')
    PENDLE_TOTAL_SUPPLY=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.total_supply // empty')
    PENDLE_CHANGE_24H=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.price_change_percentage_24h // empty')
    PENDLE_CHANGE_7D=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.price_change_percentage_7d // empty')
    PENDLE_CHANGE_30D=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.price_change_percentage_30d // empty')
    PENDLE_ATH=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.ath.usd // empty')
    PENDLE_ATH_DATE=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.ath_date.usd // empty')
    PENDLE_ATL=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.atl.usd // empty')
    PENDLE_ATL_DATE=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.atl_date.usd // empty')
    PENDLE_ATH_CHANGE=$(echo "$COINGECKO_PENDLE" | jq -r '.market_data.ath_change_percentage.usd // empty')

    echo "  PENDLE Price: \$$PENDLE_PRICE" | tee -a "$LOG_FILE"
    echo "  PENDLE Market Cap: \$$PENDLE_MCAP" | tee -a "$LOG_FILE"
    echo "  PENDLE Market Cap Rank: #$PENDLE_MCAP_RANK" | tee -a "$LOG_FILE"
    echo "  PENDLE FDV: \$$PENDLE_FDV" | tee -a "$LOG_FILE"
    echo "  PENDLE 24h Volume: \$$PENDLE_VOL_24H" | tee -a "$LOG_FILE"
    echo "  PENDLE Circulating Supply: $PENDLE_CIRC_SUPPLY" | tee -a "$LOG_FILE"
    echo "  PENDLE Total Supply: $PENDLE_TOTAL_SUPPLY" | tee -a "$LOG_FILE"
    echo "  PENDLE 24h Change: $PENDLE_CHANGE_24H%" | tee -a "$LOG_FILE"
    echo "  PENDLE 7d Change: $PENDLE_CHANGE_7D%" | tee -a "$LOG_FILE"
    echo "  PENDLE 30d Change: $PENDLE_CHANGE_30D%" | tee -a "$LOG_FILE"
    echo "  PENDLE ATH: \$$PENDLE_ATH ($PENDLE_ATH_DATE)" | tee -a "$LOG_FILE"
    echo "  PENDLE ATL: \$$PENDLE_ATL ($PENDLE_ATL_DATE)" | tee -a "$LOG_FILE"
    echo "  PENDLE ATH Decline: $PENDLE_ATH_CHANGE%" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko PENDLE data" | tee -a "$LOG_FILE"
    PENDLE_PRICE="null"
    PENDLE_MCAP="null"
    PENDLE_MCAP_RANK="null"
    PENDLE_FDV="null"
    PENDLE_VOL_24H="null"
    PENDLE_CIRC_SUPPLY="null"
    PENDLE_TOTAL_SUPPLY="null"
    PENDLE_CHANGE_24H="null"
    PENDLE_CHANGE_7D="null"
    PENDLE_CHANGE_30D="null"
    PENDLE_ATH="null"
    PENDLE_ATH_DATE="null"
    PENDLE_ATL="null"
    PENDLE_ATL_DATE="null"
    PENDLE_ATH_CHANGE="null"
fi

# =============================================================================
# 4. OUTPUT SUMMARY
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "=== SUMMARY ===" | tee -a "$LOG_FILE"
echo "Data files saved to: $DATA_DIR" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Create a summary JSON for easy parsing
cat > "$DATA_DIR/pendle_summary.json" << EOF
{
  "protocol": "Pendle",
  "timestamp": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "tvl": {
    "ethereum": ${ETH_TVL:-null},
    "arbitrum": ${ARB_TVL:-null},
    "plasma": ${PLASMA_TVL:-null},
    "bnb": ${BNB_TVL:-null},
    "base": ${BASE_TVL:-null},
    "hyperliquid": ${HYPER_TVL:-null},
    "sonic": ${SONIC_TVL:-null},
    "mantle": ${MANTLE_TVL:-null},
    "avalanche": ${AVAX_TVL:-null},
    "optimism": ${OP_TVL:-null},
    "berachain": ${BERA_TVL:-null},
    "staking": ${STAKING:-null},
    "pool2": ${POOL2:-null}
  },
  "fees": {
    "fees_24h": ${FEES_24H:-null},
    "fees_7d": ${FEES_7D:-null},
    "fees_30d": ${FEES_30D:-null},
    "fees_allTime": ${FEES_ALL:-null}
  },
  "pendle_token": {
    "price": ${PENDLE_PRICE:-null},
    "marketCap": ${PENDLE_MCAP:-null},
    "marketCapRank": ${PENDLE_MCAP_RANK:-null},
    "fdv": ${PENDLE_FDV:-null},
    "volume24h": ${PENDLE_VOL_24H:-null},
    "circulatingSupply": ${PENDLE_CIRC_SUPPLY:-null},
    "totalSupply": ${PENDLE_TOTAL_SUPPLY:-null},
    "change24h": ${PENDLE_CHANGE_24H:-null},
    "change7d": ${PENDLE_CHANGE_7D:-null},
    "change30d": ${PENDLE_CHANGE_30D:-null},
    "ath": ${PENDLE_ATH:-null},
    "athDate": "${PENDLE_ATH_DATE:-null}",
    "atl": ${PENDLE_ATL:-null},
    "atlDate": "${PENDLE_ATL_DATE:-null}",
    "athChangePercent": ${PENDLE_ATH_CHANGE:-null}
  },
  "protocol_info": {
    "chains": ["Ethereum", "Arbitrum", "Plasma", "BNB Chain", "Base", "Hyperliquid", "Sonic", "Mantle", "Avalanche", "Optimism", "Berachain"],
    "products": ["PT (Principal Token)", "YT (Yield Token)", "SY (Standardized Yield)", "vePENDLE", "LP Pools"],
    "category": "Yield Tokenization / Fixed Income",
    "fee_model": "3% YT fees + 10-30bps swap fees, 100% to vePENDLE"
  }
}
EOF

echo "Summary JSON created: $DATA_DIR/pendle_summary.json" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "=== Pendle Update Complete ===" | tee -a "$LOG_FILE"
