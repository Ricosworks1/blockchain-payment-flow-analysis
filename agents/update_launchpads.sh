#!/bin/bash
# =============================================================================
# AGENT: Crypto Launchpads Industry Update Script
# =============================================================================
# Fetches latest data from APIs and prepares update context for Launchpads report.
#
# Usage: ./agents/update_launchpads.sh
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_launchpads"
DATA_DIR="$REPO_DIR/agents/data"
LOG_FILE="$REPO_DIR/agents/logs/launchpads_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$DATA_DIR"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== Crypto Launchpads Update Agent ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 1. FETCH PUMP.FUN FEES (DefiLlama)
# =============================================================================
echo "Fetching Pump.fun fees from DefiLlama..." | tee -a "$LOG_FILE"
PUMPFUN_FEES=$(curl -s "https://api.llama.fi/summary/fees/pump.fun")

if [ -n "$PUMPFUN_FEES" ]; then
    echo "$PUMPFUN_FEES" > "$DATA_DIR/launchpads_pumpfun_fees.json"

    PUMPFUN_24H=$(echo "$PUMPFUN_FEES" | jq -r '.total24h // empty')
    PUMPFUN_7D=$(echo "$PUMPFUN_FEES" | jq -r '.total7d // empty')
    PUMPFUN_30D=$(echo "$PUMPFUN_FEES" | jq -r '.total30d // empty')
    PUMPFUN_ALL=$(echo "$PUMPFUN_FEES" | jq -r '.totalAllTime // empty')

    echo "  24h Fees: $PUMPFUN_24H" | tee -a "$LOG_FILE"
    echo "  7d Fees: $PUMPFUN_7D" | tee -a "$LOG_FILE"
    echo "  30d Fees: $PUMPFUN_30D" | tee -a "$LOG_FILE"
    echo "  All-Time Fees: $PUMPFUN_ALL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch Pump.fun fees" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 2. FETCH RAYDIUM TVL (DefiLlama)
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching Raydium TVL from DefiLlama..." | tee -a "$LOG_FILE"
RAYDIUM_TVL=$(curl -s "https://api.llama.fi/protocol/raydium")

if [ -n "$RAYDIUM_TVL" ]; then
    echo "$RAYDIUM_TVL" > "$DATA_DIR/launchpads_raydium_tvl.json"

    RAY_TVL=$(echo "$RAYDIUM_TVL" | jq -r '.tvl[-1].totalLiquidityUSD // empty')

    echo "  Raydium TVL: $RAY_TVL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch Raydium TVL" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 3. FETCH RAYDIUM FEES (DefiLlama)
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching Raydium fees from DefiLlama..." | tee -a "$LOG_FILE"
RAYDIUM_FEES=$(curl -s "https://api.llama.fi/summary/fees/raydium")

if [ -n "$RAYDIUM_FEES" ]; then
    echo "$RAYDIUM_FEES" > "$DATA_DIR/launchpads_raydium_fees.json"

    RAY_FEES_24H=$(echo "$RAYDIUM_FEES" | jq -r '.total24h // empty')
    RAY_FEES_30D=$(echo "$RAYDIUM_FEES" | jq -r '.total30d // empty')
    RAY_FEES_ALL=$(echo "$RAYDIUM_FEES" | jq -r '.totalAllTime // empty')

    echo "  24h Fees: $RAY_FEES_24H" | tee -a "$LOG_FILE"
    echo "  30d Fees: $RAY_FEES_30D" | tee -a "$LOG_FILE"
    echo "  All-Time Fees: $RAY_FEES_ALL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch Raydium fees" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 4. FETCH JUPITER TVL (DefiLlama)
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching Jupiter TVL from DefiLlama..." | tee -a "$LOG_FILE"
JUPITER_TVL=$(curl -s "https://api.llama.fi/protocol/jupiter")

if [ -n "$JUPITER_TVL" ]; then
    echo "$JUPITER_TVL" > "$DATA_DIR/launchpads_jupiter_tvl.json"

    JUP_TVL=$(echo "$JUPITER_TVL" | jq -r '.tvl[-1].totalLiquidityUSD // empty')

    echo "  Jupiter TVL: $JUP_TVL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch Jupiter TVL" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 5. FETCH COINGECKO DATA (Platform Tokens)
# =============================================================================

# Jupiter (JUP)
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for JUP..." | tee -a "$LOG_FILE"
sleep 2

COINGECKO_JUP=$(curl -s "https://api.coingecko.com/api/v3/coins/jupiter-exchange-solana")

if echo "$COINGECKO_JUP" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_JUP" > "$DATA_DIR/launchpads_coingecko_jup.json"

    JUP_PRICE=$(echo "$COINGECKO_JUP" | jq -r '.market_data.current_price.usd // empty')
    JUP_MCAP=$(echo "$COINGECKO_JUP" | jq -r '.market_data.market_cap.usd // empty')
    JUP_FDV=$(echo "$COINGECKO_JUP" | jq -r '.market_data.fully_diluted_valuation.usd // empty')

    echo "  JUP Price: $JUP_PRICE" | tee -a "$LOG_FILE"
    echo "  JUP Market Cap: $JUP_MCAP" | tee -a "$LOG_FILE"
    echo "  JUP FDV: $JUP_FDV" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko JUP data" | tee -a "$LOG_FILE"
    JUP_PRICE="null"
    JUP_MCAP="null"
    JUP_FDV="null"
fi

# Raydium (RAY)
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for RAY..." | tee -a "$LOG_FILE"
sleep 2

COINGECKO_RAY=$(curl -s "https://api.coingecko.com/api/v3/coins/raydium")

if echo "$COINGECKO_RAY" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_RAY" > "$DATA_DIR/launchpads_coingecko_ray.json"

    RAY_PRICE=$(echo "$COINGECKO_RAY" | jq -r '.market_data.current_price.usd // empty')
    RAY_MCAP=$(echo "$COINGECKO_RAY" | jq -r '.market_data.market_cap.usd // empty')

    echo "  RAY Price: $RAY_PRICE" | tee -a "$LOG_FILE"
    echo "  RAY Market Cap: $RAY_MCAP" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko RAY data" | tee -a "$LOG_FILE"
    RAY_PRICE="null"
    RAY_MCAP="null"
fi

# Seedify (SFUND)
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for SFUND..." | tee -a "$LOG_FILE"
sleep 2

COINGECKO_SFUND=$(curl -s "https://api.coingecko.com/api/v3/coins/seedify-fund")

if echo "$COINGECKO_SFUND" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_SFUND" > "$DATA_DIR/launchpads_coingecko_sfund.json"

    SFUND_PRICE=$(echo "$COINGECKO_SFUND" | jq -r '.market_data.current_price.usd // empty')
    SFUND_MCAP=$(echo "$COINGECKO_SFUND" | jq -r '.market_data.market_cap.usd // empty')
    SFUND_FDV=$(echo "$COINGECKO_SFUND" | jq -r '.market_data.fully_diluted_valuation.usd // empty')

    echo "  SFUND Price: $SFUND_PRICE" | tee -a "$LOG_FILE"
    echo "  SFUND Market Cap: $SFUND_MCAP" | tee -a "$LOG_FILE"
    echo "  SFUND FDV: $SFUND_FDV" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko SFUND data" | tee -a "$LOG_FILE"
    SFUND_PRICE="null"
    SFUND_MCAP="null"
    SFUND_FDV="null"
fi

# Polkastarter (POLS)
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for POLS..." | tee -a "$LOG_FILE"
sleep 2

COINGECKO_POLS=$(curl -s "https://api.coingecko.com/api/v3/coins/polkastarter")

if echo "$COINGECKO_POLS" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_POLS" > "$DATA_DIR/launchpads_coingecko_pols.json"

    POLS_PRICE=$(echo "$COINGECKO_POLS" | jq -r '.market_data.current_price.usd // empty')
    POLS_MCAP=$(echo "$COINGECKO_POLS" | jq -r '.market_data.market_cap.usd // empty')

    echo "  POLS Price: $POLS_PRICE" | tee -a "$LOG_FILE"
    echo "  POLS Market Cap: $POLS_MCAP" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko POLS data" | tee -a "$LOG_FILE"
    POLS_PRICE="null"
    POLS_MCAP="null"
fi

# DAO Maker (DAO)
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for DAO..." | tee -a "$LOG_FILE"
sleep 2

COINGECKO_DAO=$(curl -s "https://api.coingecko.com/api/v3/coins/dao-maker")

if echo "$COINGECKO_DAO" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_DAO" > "$DATA_DIR/launchpads_coingecko_dao.json"

    DAO_PRICE=$(echo "$COINGECKO_DAO" | jq -r '.market_data.current_price.usd // empty')
    DAO_MCAP=$(echo "$COINGECKO_DAO" | jq -r '.market_data.market_cap.usd // empty')
    DAO_FDV=$(echo "$COINGECKO_DAO" | jq -r '.market_data.fully_diluted_valuation.usd // empty')

    echo "  DAO Price: $DAO_PRICE" | tee -a "$LOG_FILE"
    echo "  DAO Market Cap: $DAO_MCAP" | tee -a "$LOG_FILE"
    echo "  DAO FDV: $DAO_FDV" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko DAO data" | tee -a "$LOG_FILE"
    DAO_PRICE="null"
    DAO_MCAP="null"
    DAO_FDV="null"
fi

# =============================================================================
# 6. OUTPUT SUMMARY
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "=== SUMMARY ===" | tee -a "$LOG_FILE"
echo "Data files saved to: $DATA_DIR" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Create a summary JSON for easy parsing
cat > "$DATA_DIR/launchpads_summary.json" << EOF
{
  "report": "Crypto Launchpads",
  "timestamp": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "pumpfun": {
    "fees_24h": ${PUMPFUN_24H:-null},
    "fees_7d": ${PUMPFUN_7D:-null},
    "fees_30d": ${PUMPFUN_30D:-null},
    "fees_allTime": ${PUMPFUN_ALL:-null}
  },
  "raydium": {
    "tvl": ${RAY_TVL:-null},
    "fees_24h": ${RAY_FEES_24H:-null},
    "fees_30d": ${RAY_FEES_30D:-null},
    "fees_allTime": ${RAY_FEES_ALL:-null},
    "ray_price": ${RAY_PRICE:-null},
    "ray_marketCap": ${RAY_MCAP:-null}
  },
  "jupiter": {
    "tvl": ${JUP_TVL:-null},
    "jup_price": ${JUP_PRICE:-null},
    "jup_marketCap": ${JUP_MCAP:-null},
    "jup_fdv": ${JUP_FDV:-null}
  },
  "seedify": {
    "sfund_price": ${SFUND_PRICE:-null},
    "sfund_marketCap": ${SFUND_MCAP:-null},
    "sfund_fdv": ${SFUND_FDV:-null}
  },
  "polkastarter": {
    "pols_price": ${POLS_PRICE:-null},
    "pols_marketCap": ${POLS_MCAP:-null}
  },
  "daoMaker": {
    "dao_price": ${DAO_PRICE:-null},
    "dao_marketCap": ${DAO_MCAP:-null},
    "dao_fdv": ${DAO_FDV:-null}
  }
}
EOF

echo "Summary JSON created: $DATA_DIR/launchpads_summary.json" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "=== Crypto Launchpads Update Complete ===" | tee -a "$LOG_FILE"
