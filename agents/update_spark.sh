#!/bin/bash
# =============================================================================
# AGENT: Spark Update Script
# =============================================================================
# Fetches latest data from APIs and prepares update context for Spark report.
#
# Data Sources:
# - DefiLlama TVL API (spark)
# - DefiLlama Fees API (spark)
# - CoinGecko (spark-2 for SPK token)
#
# Usage: ./agents/update_spark.sh
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_spark"
DATA_DIR="$REPO_DIR/agents/data"
LOG_FILE="$REPO_DIR/agents/logs/spark_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$DATA_DIR"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== Spark Update Agent ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 1. FETCH DEFILLAMA TVL
# =============================================================================
echo "Fetching Spark TVL from DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_TVL=$(curl -s "https://api.llama.fi/protocol/spark")

if [ -n "$DEFILLAMA_TVL" ]; then
    echo "$DEFILLAMA_TVL" > "$DATA_DIR/spark_defillama_tvl.json"

    # Extract key metrics
    ETH_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Ethereum // empty')
    GNOSIS_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Gnosis // empty')
    BASE_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Base // empty')
    ARB_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Arbitrum // empty')
    OP_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls["OP Mainnet"] // empty')
    AVAX_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Avalanche // empty')
    UNICHAIN_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Unichain // empty')
    BORROWED=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.borrowed // empty')
    STAKING=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.staking // empty')
    DESCRIPTION=$(echo "$DEFILLAMA_TVL" | jq -r '.description // empty')
    GECKO_ID=$(echo "$DEFILLAMA_TVL" | jq -r '.gecko_id // empty')

    echo "  Ethereum TVL: $ETH_TVL" | tee -a "$LOG_FILE"
    echo "  Base TVL: $BASE_TVL" | tee -a "$LOG_FILE"
    echo "  Arbitrum TVL: $ARB_TVL" | tee -a "$LOG_FILE"
    echo "  OP Mainnet TVL: $OP_TVL" | tee -a "$LOG_FILE"
    echo "  Avalanche TVL: $AVAX_TVL" | tee -a "$LOG_FILE"
    echo "  Gnosis TVL: $GNOSIS_TVL" | tee -a "$LOG_FILE"
    echo "  Unichain TVL: $UNICHAIN_TVL" | tee -a "$LOG_FILE"
    echo "  Total Borrowed: $BORROWED" | tee -a "$LOG_FILE"
    echo "  Staking: $STAKING" | tee -a "$LOG_FILE"
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
echo "Fetching Spark fees from DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_FEES=$(curl -s "https://api.llama.fi/summary/fees/spark")

if echo "$DEFILLAMA_FEES" | jq -e '.total24h' > /dev/null 2>&1; then
    echo "$DEFILLAMA_FEES" > "$DATA_DIR/spark_defillama_fees.json"

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
# 3. FETCH COINGECKO DATA - SPK TOKEN
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for SPK token..." | tee -a "$LOG_FILE"
sleep 2  # Rate limiting

COINGECKO_SPK=$(curl -s "https://api.coingecko.com/api/v3/coins/spark-2")

if echo "$COINGECKO_SPK" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_SPK" > "$DATA_DIR/spark_coingecko.json"

    SPK_PRICE=$(echo "$COINGECKO_SPK" | jq -r '.market_data.current_price.usd // empty')
    SPK_MCAP=$(echo "$COINGECKO_SPK" | jq -r '.market_data.market_cap.usd // empty')
    SPK_MCAP_RANK=$(echo "$COINGECKO_SPK" | jq -r '.market_cap_rank // empty')
    SPK_FDV=$(echo "$COINGECKO_SPK" | jq -r '.market_data.fully_diluted_valuation.usd // empty')
    SPK_VOL_24H=$(echo "$COINGECKO_SPK" | jq -r '.market_data.total_volume.usd // empty')
    SPK_CIRC_SUPPLY=$(echo "$COINGECKO_SPK" | jq -r '.market_data.circulating_supply // empty')
    SPK_TOTAL_SUPPLY=$(echo "$COINGECKO_SPK" | jq -r '.market_data.total_supply // empty')
    SPK_CHANGE_24H=$(echo "$COINGECKO_SPK" | jq -r '.market_data.price_change_percentage_24h // empty')
    SPK_CHANGE_7D=$(echo "$COINGECKO_SPK" | jq -r '.market_data.price_change_percentage_7d // empty')
    SPK_CHANGE_30D=$(echo "$COINGECKO_SPK" | jq -r '.market_data.price_change_percentage_30d // empty')
    SPK_ATH=$(echo "$COINGECKO_SPK" | jq -r '.market_data.ath.usd // empty')
    SPK_ATH_DATE=$(echo "$COINGECKO_SPK" | jq -r '.market_data.ath_date.usd // empty')
    SPK_ATL=$(echo "$COINGECKO_SPK" | jq -r '.market_data.atl.usd // empty')
    SPK_ATL_DATE=$(echo "$COINGECKO_SPK" | jq -r '.market_data.atl_date.usd // empty')
    SPK_ATH_CHANGE=$(echo "$COINGECKO_SPK" | jq -r '.market_data.ath_change_percentage.usd // empty')

    echo "  SPK Price: \$$SPK_PRICE" | tee -a "$LOG_FILE"
    echo "  SPK Market Cap: \$$SPK_MCAP" | tee -a "$LOG_FILE"
    echo "  SPK Market Cap Rank: #$SPK_MCAP_RANK" | tee -a "$LOG_FILE"
    echo "  SPK FDV: \$$SPK_FDV" | tee -a "$LOG_FILE"
    echo "  SPK 24h Volume: \$$SPK_VOL_24H" | tee -a "$LOG_FILE"
    echo "  SPK Circulating Supply: $SPK_CIRC_SUPPLY" | tee -a "$LOG_FILE"
    echo "  SPK Total Supply: $SPK_TOTAL_SUPPLY" | tee -a "$LOG_FILE"
    echo "  SPK 24h Change: $SPK_CHANGE_24H%" | tee -a "$LOG_FILE"
    echo "  SPK 7d Change: $SPK_CHANGE_7D%" | tee -a "$LOG_FILE"
    echo "  SPK 30d Change: $SPK_CHANGE_30D%" | tee -a "$LOG_FILE"
    echo "  SPK ATH: \$$SPK_ATH ($SPK_ATH_DATE)" | tee -a "$LOG_FILE"
    echo "  SPK ATL: \$$SPK_ATL ($SPK_ATL_DATE)" | tee -a "$LOG_FILE"
    echo "  SPK ATH Decline: $SPK_ATH_CHANGE%" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko SPK data" | tee -a "$LOG_FILE"
    SPK_PRICE="null"
    SPK_MCAP="null"
    SPK_MCAP_RANK="null"
    SPK_FDV="null"
    SPK_VOL_24H="null"
    SPK_CIRC_SUPPLY="null"
    SPK_TOTAL_SUPPLY="null"
    SPK_CHANGE_24H="null"
    SPK_CHANGE_7D="null"
    SPK_CHANGE_30D="null"
    SPK_ATH="null"
    SPK_ATH_DATE="null"
    SPK_ATL="null"
    SPK_ATL_DATE="null"
    SPK_ATH_CHANGE="null"
fi

# =============================================================================
# 4. OUTPUT SUMMARY
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "=== SUMMARY ===" | tee -a "$LOG_FILE"
echo "Data files saved to: $DATA_DIR" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Create a summary JSON for easy parsing
cat > "$DATA_DIR/spark_summary.json" << EOF
{
  "protocol": "Spark",
  "timestamp": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "tvl": {
    "ethereum": ${ETH_TVL:-null},
    "base": ${BASE_TVL:-null},
    "arbitrum": ${ARB_TVL:-null},
    "optimism": ${OP_TVL:-null},
    "avalanche": ${AVAX_TVL:-null},
    "gnosis": ${GNOSIS_TVL:-null},
    "unichain": ${UNICHAIN_TVL:-null},
    "borrowed": ${BORROWED:-null},
    "staking": ${STAKING:-null}
  },
  "fees": {
    "fees_24h": ${FEES_24H:-null},
    "fees_7d": ${FEES_7D:-null},
    "fees_30d": ${FEES_30D:-null},
    "fees_allTime": ${FEES_ALL:-null}
  },
  "spk_token": {
    "price": ${SPK_PRICE:-null},
    "marketCap": ${SPK_MCAP:-null},
    "marketCapRank": ${SPK_MCAP_RANK:-null},
    "fdv": ${SPK_FDV:-null},
    "volume24h": ${SPK_VOL_24H:-null},
    "circulatingSupply": ${SPK_CIRC_SUPPLY:-null},
    "totalSupply": ${SPK_TOTAL_SUPPLY:-null},
    "change24h": ${SPK_CHANGE_24H:-null},
    "change7d": ${SPK_CHANGE_7D:-null},
    "change30d": ${SPK_CHANGE_30D:-null},
    "ath": ${SPK_ATH:-null},
    "athDate": "${SPK_ATH_DATE:-null}",
    "atl": ${SPK_ATL:-null},
    "atlDate": "${SPK_ATL_DATE:-null}",
    "athChangePercent": ${SPK_ATH_CHANGE:-null}
  },
  "protocol_info": {
    "chains": ["Ethereum", "Base", "Arbitrum", "OP Mainnet", "Avalanche", "Gnosis", "Unichain"],
    "products": ["SparkLend", "sUSDS", "sUSDC", "Liquidity Layer"],
    "category": "Lending / CDP / Yield",
    "parent": "Sky (formerly MakerDAO)"
  }
}
EOF

echo "Summary JSON created: $DATA_DIR/spark_summary.json" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "=== Spark Update Complete ===" | tee -a "$LOG_FILE"
