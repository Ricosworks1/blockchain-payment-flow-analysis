#!/bin/bash
# =============================================================================
# AGENT: Moonwell Update Script
# =============================================================================
# Fetches latest data from APIs and prepares update context for Moonwell report.
#
# Data Sources:
# - DefiLlama TVL API (moonwell)
# - DefiLlama Fees API (moonwell)
# - CoinGecko (moonwell-artemis for WELL token)
#
# Usage: ./agents/update_moonwell.sh
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_moonwell"
DATA_DIR="$REPO_DIR/agents/data"
LOG_FILE="$REPO_DIR/agents/logs/moonwell_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$DATA_DIR"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== Moonwell Update Agent ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 1. FETCH DEFILLAMA TVL
# =============================================================================
echo "Fetching Moonwell TVL from DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_TVL=$(curl -s "https://api.llama.fi/protocol/moonwell")

if [ -n "$DEFILLAMA_TVL" ]; then
    echo "$DEFILLAMA_TVL" > "$DATA_DIR/moonwell_defillama_tvl.json"

    # Extract key metrics
    TOTAL_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls | to_entries | map(select(.key | test("staking|borrowed|pool2") | not)) | map(.value) | add // empty')
    BASE_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Base // empty')
    OPTIMISM_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Optimism // empty')
    MOONBEAM_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Moonbeam // empty')
    MOONRIVER_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Moonriver // empty')
    BASE_STAKING=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls["Base-staking"] // empty')
    BASE_BORROWED=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls["Base-borrowed"] // empty')
    OPTIMISM_BORROWED=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls["Optimism-borrowed"] // empty')

    echo "  Total TVL: $TOTAL_TVL" | tee -a "$LOG_FILE"
    echo "  Base TVL: $BASE_TVL" | tee -a "$LOG_FILE"
    echo "  Optimism TVL: $OPTIMISM_TVL" | tee -a "$LOG_FILE"
    echo "  Moonbeam TVL: $MOONBEAM_TVL" | tee -a "$LOG_FILE"
    echo "  Moonriver TVL: $MOONRIVER_TVL" | tee -a "$LOG_FILE"
    echo "  Base Staking: $BASE_STAKING" | tee -a "$LOG_FILE"
    echo "  Base Borrowed: $BASE_BORROWED" | tee -a "$LOG_FILE"
    echo "  Optimism Borrowed: $OPTIMISM_BORROWED" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch DefiLlama TVL" | tee -a "$LOG_FILE"
    TOTAL_TVL="null"
    BASE_TVL="null"
    OPTIMISM_TVL="null"
    MOONBEAM_TVL="null"
    MOONRIVER_TVL="null"
    BASE_STAKING="null"
    BASE_BORROWED="null"
    OPTIMISM_BORROWED="null"
fi

# =============================================================================
# 2. FETCH DEFILLAMA FEES
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching Moonwell fees from DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_FEES=$(curl -s "https://api.llama.fi/summary/fees/moonwell")

if [ -n "$DEFILLAMA_FEES" ]; then
    echo "$DEFILLAMA_FEES" > "$DATA_DIR/moonwell_defillama_fees.json"

    FEES_24H=$(echo "$DEFILLAMA_FEES" | jq -r '.total24h // empty')
    FEES_7D=$(echo "$DEFILLAMA_FEES" | jq -r '.total7d // empty')
    FEES_30D=$(echo "$DEFILLAMA_FEES" | jq -r '.total30d // empty')
    FEES_ALL=$(echo "$DEFILLAMA_FEES" | jq -r '.totalAllTime // empty')

    echo "  24h Fees: $FEES_24H" | tee -a "$LOG_FILE"
    echo "  7d Fees: $FEES_7D" | tee -a "$LOG_FILE"
    echo "  30d Fees: $FEES_30D" | tee -a "$LOG_FILE"
    echo "  All-Time Fees: $FEES_ALL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch DefiLlama fees" | tee -a "$LOG_FILE"
    FEES_24H="null"
    FEES_7D="null"
    FEES_30D="null"
    FEES_ALL="null"
fi

# =============================================================================
# 3. FETCH COINGECKO DATA - WELL TOKEN (moonwell-artemis)
# =============================================================================
# IMPORTANT: Use moonwell-artemis for WELL token, NOT moonwell (which is old MFAM)
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for WELL token (moonwell-artemis)..." | tee -a "$LOG_FILE"
sleep 2  # Rate limiting

COINGECKO_WELL=$(curl -s "https://api.coingecko.com/api/v3/coins/moonwell-artemis")

if echo "$COINGECKO_WELL" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_WELL" > "$DATA_DIR/moonwell_coingecko_well.json"

    WELL_PRICE=$(echo "$COINGECKO_WELL" | jq -r '.market_data.current_price.usd // empty')
    WELL_MCAP=$(echo "$COINGECKO_WELL" | jq -r '.market_data.market_cap.usd // empty')
    WELL_MCAP_RANK=$(echo "$COINGECKO_WELL" | jq -r '.market_cap_rank // empty')
    WELL_FDV=$(echo "$COINGECKO_WELL" | jq -r '.market_data.fully_diluted_valuation.usd // empty')
    WELL_VOL_24H=$(echo "$COINGECKO_WELL" | jq -r '.market_data.total_volume.usd // empty')
    WELL_CIRC_SUPPLY=$(echo "$COINGECKO_WELL" | jq -r '.market_data.circulating_supply // empty')
    WELL_TOTAL_SUPPLY=$(echo "$COINGECKO_WELL" | jq -r '.market_data.total_supply // empty')
    WELL_CHANGE_24H=$(echo "$COINGECKO_WELL" | jq -r '.market_data.price_change_percentage_24h // empty')
    WELL_CHANGE_7D=$(echo "$COINGECKO_WELL" | jq -r '.market_data.price_change_percentage_7d // empty')
    WELL_CHANGE_30D=$(echo "$COINGECKO_WELL" | jq -r '.market_data.price_change_percentage_30d // empty')
    WELL_ATH=$(echo "$COINGECKO_WELL" | jq -r '.market_data.ath.usd // empty')
    WELL_ATH_DATE=$(echo "$COINGECKO_WELL" | jq -r '.market_data.ath_date.usd // empty')
    WELL_ATL=$(echo "$COINGECKO_WELL" | jq -r '.market_data.atl.usd // empty')
    WELL_ATL_DATE=$(echo "$COINGECKO_WELL" | jq -r '.market_data.atl_date.usd // empty')
    WELL_ATH_CHANGE=$(echo "$COINGECKO_WELL" | jq -r '.market_data.ath_change_percentage.usd // empty')

    echo "  WELL Price: \$$WELL_PRICE" | tee -a "$LOG_FILE"
    echo "  WELL Market Cap: \$$WELL_MCAP" | tee -a "$LOG_FILE"
    echo "  WELL Market Cap Rank: #$WELL_MCAP_RANK" | tee -a "$LOG_FILE"
    echo "  WELL FDV: \$$WELL_FDV" | tee -a "$LOG_FILE"
    echo "  WELL 24h Volume: \$$WELL_VOL_24H" | tee -a "$LOG_FILE"
    echo "  WELL Circulating Supply: $WELL_CIRC_SUPPLY" | tee -a "$LOG_FILE"
    echo "  WELL Total Supply: $WELL_TOTAL_SUPPLY" | tee -a "$LOG_FILE"
    echo "  WELL 24h Change: $WELL_CHANGE_24H%" | tee -a "$LOG_FILE"
    echo "  WELL 7d Change: $WELL_CHANGE_7D%" | tee -a "$LOG_FILE"
    echo "  WELL 30d Change: $WELL_CHANGE_30D%" | tee -a "$LOG_FILE"
    echo "  WELL ATH: \$$WELL_ATH ($WELL_ATH_DATE)" | tee -a "$LOG_FILE"
    echo "  WELL ATL: \$$WELL_ATL ($WELL_ATL_DATE)" | tee -a "$LOG_FILE"
    echo "  WELL ATH Decline: $WELL_ATH_CHANGE%" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko WELL data" | tee -a "$LOG_FILE"
    WELL_PRICE="null"
    WELL_MCAP="null"
    WELL_MCAP_RANK="null"
    WELL_FDV="null"
    WELL_VOL_24H="null"
    WELL_CIRC_SUPPLY="null"
    WELL_TOTAL_SUPPLY="null"
    WELL_CHANGE_24H="null"
    WELL_CHANGE_7D="null"
    WELL_CHANGE_30D="null"
    WELL_ATH="null"
    WELL_ATH_DATE="null"
    WELL_ATL="null"
    WELL_ATL_DATE="null"
    WELL_ATH_CHANGE="null"
fi

# =============================================================================
# 4. OUTPUT SUMMARY
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "=== SUMMARY ===" | tee -a "$LOG_FILE"
echo "Data files saved to: $DATA_DIR" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Create a summary JSON for easy parsing
cat > "$DATA_DIR/moonwell_summary.json" << EOF
{
  "protocol": "Moonwell",
  "timestamp": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "tvl": {
    "total": ${TOTAL_TVL:-null},
    "base": ${BASE_TVL:-null},
    "optimism": ${OPTIMISM_TVL:-null},
    "moonbeam": ${MOONBEAM_TVL:-null},
    "moonriver": ${MOONRIVER_TVL:-null},
    "baseStaking": ${BASE_STAKING:-null},
    "baseBorrowed": ${BASE_BORROWED:-null},
    "optimismBorrowed": ${OPTIMISM_BORROWED:-null}
  },
  "fees": {
    "fees_24h": ${FEES_24H:-null},
    "fees_7d": ${FEES_7D:-null},
    "fees_30d": ${FEES_30D:-null},
    "fees_allTime": ${FEES_ALL:-null}
  },
  "well_token": {
    "price": ${WELL_PRICE:-null},
    "marketCap": ${WELL_MCAP:-null},
    "marketCapRank": ${WELL_MCAP_RANK:-null},
    "fdv": ${WELL_FDV:-null},
    "volume24h": ${WELL_VOL_24H:-null},
    "circulatingSupply": ${WELL_CIRC_SUPPLY:-null},
    "totalSupply": ${WELL_TOTAL_SUPPLY:-null},
    "change24h": ${WELL_CHANGE_24H:-null},
    "change7d": ${WELL_CHANGE_7D:-null},
    "change30d": ${WELL_CHANGE_30D:-null},
    "ath": ${WELL_ATH:-null},
    "athDate": "${WELL_ATH_DATE:-null}",
    "atl": ${WELL_ATL:-null},
    "atlDate": "${WELL_ATL_DATE:-null}",
    "athChangePercent": ${WELL_ATH_CHANGE:-null}
  },
  "security": {
    "note": "Protocol has experienced 3 major exploits totaling $3.02M+ (Oct 2024, Dec 2024, Nov 2025)",
    "exploits_total_usd": 3020000,
    "last_exploit_date": "2025-11-04"
  }
}
EOF

echo "Summary JSON created: $DATA_DIR/moonwell_summary.json" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "=== Moonwell Update Complete ===" | tee -a "$LOG_FILE"
