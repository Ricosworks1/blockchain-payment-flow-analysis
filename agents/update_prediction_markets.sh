#!/bin/bash
# =============================================================================
# AGENT: Prediction Markets Update Script
# =============================================================================
# Fetches latest data from APIs and prepares update context for Prediction Markets report.
#
# Usage: ./agents/update_prediction_markets.sh
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_prediction_markets"
DATA_DIR="$REPO_DIR/agents/data"
LOG_FILE="$REPO_DIR/agents/logs/prediction_markets_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$DATA_DIR"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== Prediction Markets Update Agent ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 1. FETCH POLYMARKET TVL (DefiLlama)
# =============================================================================
echo "Fetching Polymarket TVL from DefiLlama..." | tee -a "$LOG_FILE"
POLYMARKET_TVL=$(curl -s "https://api.llama.fi/protocol/polymarket")

if [ -n "$POLYMARKET_TVL" ]; then
    echo "$POLYMARKET_TVL" > "$DATA_DIR/prediction_markets_polymarket_tvl.json"

    POLY_TVL=$(echo "$POLYMARKET_TVL" | jq -r '.tvl[-1].totalLiquidityUSD // empty')
    POLY_CHAIN=$(echo "$POLYMARKET_TVL" | jq -r '.chain // empty')

    echo "  Polymarket TVL: $POLY_TVL" | tee -a "$LOG_FILE"
    echo "  Chain: $POLY_CHAIN" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch Polymarket TVL" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 2. FETCH POLYMARKET FEES (DefiLlama)
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching Polymarket fees from DefiLlama..." | tee -a "$LOG_FILE"
POLYMARKET_FEES=$(curl -s "https://api.llama.fi/summary/fees/polymarket")

if [ -n "$POLYMARKET_FEES" ]; then
    echo "$POLYMARKET_FEES" > "$DATA_DIR/prediction_markets_polymarket_fees.json"

    POLY_FEES_24H=$(echo "$POLYMARKET_FEES" | jq -r '.total24h // empty')
    POLY_FEES_30D=$(echo "$POLYMARKET_FEES" | jq -r '.total30d // empty')
    POLY_FEES_ALL=$(echo "$POLYMARKET_FEES" | jq -r '.totalAllTime // empty')

    echo "  24h Fees: $POLY_FEES_24H" | tee -a "$LOG_FILE"
    echo "  30d Fees: $POLY_FEES_30D" | tee -a "$LOG_FILE"
    echo "  All-Time Fees: $POLY_FEES_ALL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch Polymarket fees" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 3. FETCH AZURO TVL (DefiLlama)
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching Azuro TVL from DefiLlama..." | tee -a "$LOG_FILE"
AZURO_TVL=$(curl -s "https://api.llama.fi/protocol/azuro")

if [ -n "$AZURO_TVL" ]; then
    echo "$AZURO_TVL" > "$DATA_DIR/prediction_markets_azuro_tvl.json"

    AZ_TVL=$(echo "$AZURO_TVL" | jq -r '.tvl[-1].totalLiquidityUSD // empty')

    echo "  Azuro TVL: $AZ_TVL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch Azuro TVL" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 4. FETCH AZURO FEES (DefiLlama)
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching Azuro fees from DefiLlama..." | tee -a "$LOG_FILE"
AZURO_FEES=$(curl -s "https://api.llama.fi/summary/fees/azuro")

if [ -n "$AZURO_FEES" ]; then
    echo "$AZURO_FEES" > "$DATA_DIR/prediction_markets_azuro_fees.json"

    AZ_FEES_24H=$(echo "$AZURO_FEES" | jq -r '.total24h // empty')
    AZ_FEES_30D=$(echo "$AZURO_FEES" | jq -r '.total30d // empty')
    AZ_FEES_ALL=$(echo "$AZURO_FEES" | jq -r '.totalAllTime // empty')

    echo "  24h Fees: $AZ_FEES_24H" | tee -a "$LOG_FILE"
    echo "  30d Fees: $AZ_FEES_30D" | tee -a "$LOG_FILE"
    echo "  All-Time Fees: $AZ_FEES_ALL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch Azuro fees" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 5. FETCH COINGECKO DATA (Platform Tokens)
# =============================================================================

# Gnosis (GNO)
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for GNO..." | tee -a "$LOG_FILE"
sleep 2

COINGECKO_GNO=$(curl -s "https://api.coingecko.com/api/v3/coins/gnosis")

if echo "$COINGECKO_GNO" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_GNO" > "$DATA_DIR/prediction_markets_coingecko_gno.json"

    GNO_PRICE=$(echo "$COINGECKO_GNO" | jq -r '.market_data.current_price.usd // empty')
    GNO_MCAP=$(echo "$COINGECKO_GNO" | jq -r '.market_data.market_cap.usd // empty')
    GNO_FDV=$(echo "$COINGECKO_GNO" | jq -r '.market_data.fully_diluted_valuation.usd // empty')

    echo "  GNO Price: $GNO_PRICE" | tee -a "$LOG_FILE"
    echo "  GNO Market Cap: $GNO_MCAP" | tee -a "$LOG_FILE"
    echo "  GNO FDV: $GNO_FDV" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko GNO data" | tee -a "$LOG_FILE"
    GNO_PRICE="null"
    GNO_MCAP="null"
    GNO_FDV="null"
fi

# Augur (REP)
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for REP..." | tee -a "$LOG_FILE"
sleep 2

COINGECKO_REP=$(curl -s "https://api.coingecko.com/api/v3/coins/augur")

if echo "$COINGECKO_REP" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_REP" > "$DATA_DIR/prediction_markets_coingecko_rep.json"

    REP_PRICE=$(echo "$COINGECKO_REP" | jq -r '.market_data.current_price.usd // empty')
    REP_MCAP=$(echo "$COINGECKO_REP" | jq -r '.market_data.market_cap.usd // empty')

    echo "  REP Price: $REP_PRICE" | tee -a "$LOG_FILE"
    echo "  REP Market Cap: $REP_MCAP" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko REP data" | tee -a "$LOG_FILE"
    REP_PRICE="null"
    REP_MCAP="null"
fi

# Azuro (AZUR)
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for AZUR..." | tee -a "$LOG_FILE"
sleep 2

COINGECKO_AZUR=$(curl -s "https://api.coingecko.com/api/v3/coins/azuro-protocol")

if echo "$COINGECKO_AZUR" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_AZUR" > "$DATA_DIR/prediction_markets_coingecko_azur.json"

    AZUR_PRICE=$(echo "$COINGECKO_AZUR" | jq -r '.market_data.current_price.usd // empty')
    AZUR_MCAP=$(echo "$COINGECKO_AZUR" | jq -r '.market_data.market_cap.usd // empty')

    echo "  AZUR Price: $AZUR_PRICE" | tee -a "$LOG_FILE"
    echo "  AZUR Market Cap: $AZUR_MCAP" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko AZUR data" | tee -a "$LOG_FILE"
    AZUR_PRICE="null"
    AZUR_MCAP="null"
fi

# =============================================================================
# 6. OUTPUT SUMMARY
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "=== SUMMARY ===" | tee -a "$LOG_FILE"
echo "Data files saved to: $DATA_DIR" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Create a summary JSON for easy parsing
cat > "$DATA_DIR/prediction_markets_summary.json" << EOF
{
  "report": "Prediction Markets",
  "timestamp": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "polymarket": {
    "tvl": ${POLY_TVL:-null},
    "fees_24h": ${POLY_FEES_24H:-null},
    "fees_30d": ${POLY_FEES_30D:-null},
    "fees_allTime": ${POLY_FEES_ALL:-null}
  },
  "azuro": {
    "tvl": ${AZ_TVL:-null},
    "fees_24h": ${AZ_FEES_24H:-null},
    "fees_30d": ${AZ_FEES_30D:-null},
    "fees_allTime": ${AZ_FEES_ALL:-null}
  },
  "tokens": {
    "gno": {
      "price": ${GNO_PRICE:-null},
      "marketCap": ${GNO_MCAP:-null},
      "fdv": ${GNO_FDV:-null}
    },
    "rep": {
      "price": ${REP_PRICE:-null},
      "marketCap": ${REP_MCAP:-null}
    },
    "azur": {
      "price": ${AZUR_PRICE:-null},
      "marketCap": ${AZUR_MCAP:-null}
    }
  }
}
EOF

echo "Summary JSON created: $DATA_DIR/prediction_markets_summary.json" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "=== Prediction Markets Update Complete ===" | tee -a "$LOG_FILE"
