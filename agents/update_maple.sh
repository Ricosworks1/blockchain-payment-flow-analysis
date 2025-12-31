#!/bin/bash
# =============================================================================
# AGENT: Maple Finance Protocol Update Script
# =============================================================================
# Fetches latest data from APIs and prepares update context for Maple report.
#
# Usage: ./agents/update_maple.sh
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_maple"
DATA_DIR="$REPO_DIR/agents/data"
LOG_FILE="$REPO_DIR/agents/logs/maple_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$DATA_DIR"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== Maple Finance Update Agent ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 1. FETCH DEFILLAMA TVL
# =============================================================================
echo "Fetching DefiLlama TVL..." | tee -a "$LOG_FILE"
DEFILLAMA_TVL=$(curl -s "https://api.llama.fi/protocol/maple")

if [ -n "$DEFILLAMA_TVL" ]; then
    echo "$DEFILLAMA_TVL" > "$DATA_DIR/maple_defillama_tvl.json"

    # Extract key metrics
    TOTAL_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.tvl[-1].totalLiquidityUSD // empty')

    # Get chain-specific TVL
    ETH_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Ethereum // empty')
    SOLANA_TVL=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls.Solana // empty')
    BORROWED=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls["Ethereum-borrowed"] // empty')
    STAKING=$(echo "$DEFILLAMA_TVL" | jq -r '.currentChainTvls["Ethereum-staking"] // empty')

    echo "  Total TVL: $TOTAL_TVL" | tee -a "$LOG_FILE"
    echo "  Ethereum TVL: $ETH_TVL" | tee -a "$LOG_FILE"
    echo "  Solana TVL: $SOLANA_TVL" | tee -a "$LOG_FILE"
    echo "  Borrowed: $BORROWED" | tee -a "$LOG_FILE"
    echo "  Staking: $STAKING" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch DefiLlama TVL" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 2. FETCH DEFILLAMA FEES
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching DefiLlama Fees..." | tee -a "$LOG_FILE"
DEFILLAMA_FEES=$(curl -s "https://api.llama.fi/summary/fees/maple")

if [ -n "$DEFILLAMA_FEES" ]; then
    echo "$DEFILLAMA_FEES" > "$DATA_DIR/maple_defillama_fees.json"

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
# 3. FETCH COINGECKO DATA (SYRUP Token)
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for SYRUP..." | tee -a "$LOG_FILE"
sleep 2  # Rate limit protection

COINGECKO_SYRUP=$(curl -s "https://api.coingecko.com/api/v3/coins/syrup")

if echo "$COINGECKO_SYRUP" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_SYRUP" > "$DATA_DIR/maple_coingecko_syrup.json"

    SYRUP_PRICE=$(echo "$COINGECKO_SYRUP" | jq -r '.market_data.current_price.usd // empty')
    SYRUP_MCAP=$(echo "$COINGECKO_SYRUP" | jq -r '.market_data.market_cap.usd // empty')
    SYRUP_FDV=$(echo "$COINGECKO_SYRUP" | jq -r '.market_data.fully_diluted_valuation.usd // empty')
    SYRUP_VOLUME=$(echo "$COINGECKO_SYRUP" | jq -r '.market_data.total_volume.usd // empty')
    SYRUP_CIRC=$(echo "$COINGECKO_SYRUP" | jq -r '.market_data.circulating_supply // empty')
    SYRUP_TOTAL=$(echo "$COINGECKO_SYRUP" | jq -r '.market_data.total_supply // empty')
    SYRUP_ATH=$(echo "$COINGECKO_SYRUP" | jq -r '.market_data.ath.usd // empty')
    SYRUP_ATL=$(echo "$COINGECKO_SYRUP" | jq -r '.market_data.atl.usd // empty')

    echo "  SYRUP Price: $SYRUP_PRICE" | tee -a "$LOG_FILE"
    echo "  SYRUP Market Cap: $SYRUP_MCAP" | tee -a "$LOG_FILE"
    echo "  SYRUP FDV: $SYRUP_FDV" | tee -a "$LOG_FILE"
    echo "  SYRUP 24h Volume: $SYRUP_VOLUME" | tee -a "$LOG_FILE"
    echo "  SYRUP Circulating: $SYRUP_CIRC" | tee -a "$LOG_FILE"
    echo "  SYRUP Total Supply: $SYRUP_TOTAL" | tee -a "$LOG_FILE"
    echo "  SYRUP ATH: $SYRUP_ATH" | tee -a "$LOG_FILE"
    echo "  SYRUP ATL: $SYRUP_ATL" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko SYRUP data" | tee -a "$LOG_FILE"
    SYRUP_PRICE="null"
    SYRUP_MCAP="null"
    SYRUP_FDV="null"
fi

# =============================================================================
# 4. FETCH COINGECKO DATA (syrupUSDC Token)
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Fetching CoinGecko data for syrupUSDC..." | tee -a "$LOG_FILE"
sleep 2  # Rate limit protection

COINGECKO_SYRUPUSDC=$(curl -s "https://api.coingecko.com/api/v3/coins/syrupusdc")

if echo "$COINGECKO_SYRUPUSDC" | jq -e '.id' > /dev/null 2>&1; then
    echo "$COINGECKO_SYRUPUSDC" > "$DATA_DIR/maple_coingecko_syrupusdc.json"

    SYRUPUSDC_PRICE=$(echo "$COINGECKO_SYRUPUSDC" | jq -r '.market_data.current_price.usd // empty')
    SYRUPUSDC_MCAP=$(echo "$COINGECKO_SYRUPUSDC" | jq -r '.market_data.market_cap.usd // empty')
    SYRUPUSDC_CIRC=$(echo "$COINGECKO_SYRUPUSDC" | jq -r '.market_data.circulating_supply // empty')

    echo "  syrupUSDC Price: $SYRUPUSDC_PRICE" | tee -a "$LOG_FILE"
    echo "  syrupUSDC Market Cap: $SYRUPUSDC_MCAP" | tee -a "$LOG_FILE"
    echo "  syrupUSDC Circulating: $SYRUPUSDC_CIRC" | tee -a "$LOG_FILE"
else
    echo "  [ERROR] Failed to fetch CoinGecko syrupUSDC data" | tee -a "$LOG_FILE"
    SYRUPUSDC_PRICE="null"
    SYRUPUSDC_MCAP="null"
fi

# =============================================================================
# 5. OUTPUT SUMMARY
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "=== SUMMARY ===" | tee -a "$LOG_FILE"
echo "Data files saved to: $DATA_DIR" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Create a summary JSON for easy parsing
cat > "$DATA_DIR/maple_summary.json" << EOF
{
  "protocol": "Maple Finance",
  "timestamp": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "tvl": {
    "total": ${TOTAL_TVL:-null},
    "ethereum": ${ETH_TVL:-null},
    "solana": ${SOLANA_TVL:-null},
    "borrowed": ${BORROWED:-null},
    "staking": ${STAKING:-null}
  },
  "fees": {
    "24h": ${FEES_24H:-null},
    "7d": ${FEES_7D:-null},
    "30d": ${FEES_30D:-null},
    "allTime": ${FEES_ALL:-null}
  },
  "syrup": {
    "price": ${SYRUP_PRICE:-null},
    "marketCap": ${SYRUP_MCAP:-null},
    "fdv": ${SYRUP_FDV:-null},
    "volume24h": ${SYRUP_VOLUME:-null},
    "circulatingSupply": ${SYRUP_CIRC:-null},
    "totalSupply": ${SYRUP_TOTAL:-null},
    "ath": ${SYRUP_ATH:-null},
    "atl": ${SYRUP_ATL:-null}
  },
  "syrupUSDC": {
    "price": ${SYRUPUSDC_PRICE:-null},
    "marketCap": ${SYRUPUSDC_MCAP:-null},
    "circulatingSupply": ${SYRUPUSDC_CIRC:-null}
  }
}
EOF

echo "Summary JSON created: $DATA_DIR/maple_summary.json" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "=== Maple Finance Update Complete ===" | tee -a "$LOG_FILE"
