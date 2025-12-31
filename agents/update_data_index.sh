#!/bin/bash
# =============================================================================
# DATA INDEX UPDATER
# =============================================================================
# Updates the centralized data_index.json with fresh API data for all protocols.
# This creates a persistent store of all fetched data for reference.
#
# Usage: ./agents/update_data_index.sh [protocol]
#        If no protocol specified, updates all enabled protocols.
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
INDEX_FILE="$REPO_DIR/agents/data/data_index.json"
TEMP_FILE="$REPO_DIR/agents/data/data_index_temp.json"
LOG_FILE="$REPO_DIR/agents/logs/data_index_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$REPO_DIR/agents/logs"

echo "=== Data Index Updater ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Function to format large numbers
format_number() {
    printf "%.0f" "$1" 2>/dev/null || echo "0"
}

# =============================================================================
# UPDATE RESERVOIR DATA
# =============================================================================
update_reservoir() {
    echo "Updating Reservoir data..." | tee -a "$LOG_FILE"

    # Fetch DefiLlama
    RESERVOIR_TVL=$(curl -s "https://api.llama.fi/protocol/reservoir-protocol")
    TVL_TOTAL=$(echo "$RESERVOIR_TVL" | jq -r '.tvl // 0')
    TVL_ETH=$(echo "$RESERVOIR_TVL" | jq -r '.currentChainTvls.Ethereum // 0')
    TVL_BASE=$(echo "$RESERVOIR_TVL" | jq -r '.currentChainTvls.Base // 0')

    # Fetch CoinGecko DAM
    sleep 2  # Rate limit
    RESERVOIR_DAM=$(curl -s "https://api.coingecko.com/api/v3/coins/reservoir")
    DAM_PRICE=$(echo "$RESERVOIR_DAM" | jq -r '.market_data.current_price.usd // 0')
    DAM_MCAP=$(echo "$RESERVOIR_DAM" | jq -r '.market_data.market_cap.usd // 0')
    DAM_FDV=$(echo "$RESERVOIR_DAM" | jq -r '.market_data.fully_diluted_valuation.usd // 0')

    # Update index
    jq --arg date "$(date -u +%Y-%m-%dT%H:%M:%SZ)" \
       --argjson tvl "$(format_number $TVL_TOTAL)" \
       --argjson tvl_eth "$(format_number $TVL_ETH)" \
       --argjson tvl_base "$(format_number $TVL_BASE)" \
       --argjson price "$DAM_PRICE" \
       --argjson mcap "$(format_number $DAM_MCAP)" \
       --argjson fdv "$(format_number $DAM_FDV)" \
       '.protocols.reservoir.last_fetched = ($date | split("T")[0]) |
        .protocols.reservoir.apis.defillama.data.tvl = $tvl |
        .protocols.reservoir.apis.defillama.data.tvl_ethereum = $tvl_eth |
        .protocols.reservoir.apis.defillama.data.tvl_base = $tvl_base |
        .protocols.reservoir.apis.defillama.retrieved = ($date | split("T")[0]) |
        .protocols.reservoir.apis.coingecko_dam.data.price_usd = $price |
        .protocols.reservoir.apis.coingecko_dam.data.market_cap = $mcap |
        .protocols.reservoir.apis.coingecko_dam.data.fdv = $fdv |
        .protocols.reservoir.apis.coingecko_dam.retrieved = ($date | split("T")[0]) |
        .metadata.last_updated = $date' \
       "$INDEX_FILE" > "$TEMP_FILE" && mv "$TEMP_FILE" "$INDEX_FILE"

    echo "  TVL: \$$(printf "%'.0f" $TVL_TOTAL)" | tee -a "$LOG_FILE"
    echo "  DAM Price: \$$DAM_PRICE" | tee -a "$LOG_FILE"
}

# =============================================================================
# UPDATE EDGEX DATA
# =============================================================================
update_edgex() {
    echo "Updating EdgeX data..." | tee -a "$LOG_FILE"

    # Fetch DefiLlama TVL
    EDGEX_TVL=$(curl -s "https://api.llama.fi/protocol/edgex")
    TVL_TOTAL=$(echo "$EDGEX_TVL" | jq -r '.tvl // 0')
    TVL_ETH=$(echo "$EDGEX_TVL" | jq -r '.currentChainTvls.Ethereum // 0')
    TVL_ARB=$(echo "$EDGEX_TVL" | jq -r '.currentChainTvls.Arbitrum // 0')
    TVL_BSC=$(echo "$EDGEX_TVL" | jq -r '.currentChainTvls.BSC // 0')

    # Fetch DefiLlama Fees
    sleep 2  # Rate limit
    EDGEX_FEES=$(curl -s "https://api.llama.fi/summary/fees/edgex")
    FEES_24H=$(echo "$EDGEX_FEES" | jq -r '.total24h // 0')
    FEES_7D=$(echo "$EDGEX_FEES" | jq -r '.total7d // 0')
    FEES_30D=$(echo "$EDGEX_FEES" | jq -r '.total30d // 0')
    FEES_ALL=$(echo "$EDGEX_FEES" | jq -r '.totalAllTime // 0')

    # Update index
    jq --arg date "$(date -u +%Y-%m-%dT%H:%M:%SZ)" \
       --argjson tvl "$(format_number $TVL_TOTAL)" \
       --argjson tvl_eth "$(format_number $TVL_ETH)" \
       --argjson tvl_arb "$(format_number $TVL_ARB)" \
       --argjson tvl_bsc "$(format_number $TVL_BSC)" \
       --argjson fees_24h "$(format_number $FEES_24H)" \
       --argjson fees_7d "$(format_number $FEES_7D)" \
       --argjson fees_30d "$(format_number $FEES_30D)" \
       --argjson fees_all "$(format_number $FEES_ALL)" \
       '.protocols.edgex.last_fetched = ($date | split("T")[0]) |
        .protocols.edgex.apis.defillama_tvl.data.tvl = $tvl |
        .protocols.edgex.apis.defillama_tvl.data.tvl_ethereum = $tvl_eth |
        .protocols.edgex.apis.defillama_tvl.data.tvl_arbitrum = $tvl_arb |
        .protocols.edgex.apis.defillama_tvl.data.tvl_bsc = $tvl_bsc |
        .protocols.edgex.apis.defillama_tvl.retrieved = ($date | split("T")[0]) |
        .protocols.edgex.apis.defillama_fees.data.fees_24h = $fees_24h |
        .protocols.edgex.apis.defillama_fees.data.fees_7d = $fees_7d |
        .protocols.edgex.apis.defillama_fees.data.fees_30d = $fees_30d |
        .protocols.edgex.apis.defillama_fees.data.fees_all_time = $fees_all |
        .protocols.edgex.apis.defillama_fees.retrieved = ($date | split("T")[0]) |
        .metadata.last_updated = $date' \
       "$INDEX_FILE" > "$TEMP_FILE" && mv "$TEMP_FILE" "$INDEX_FILE"

    echo "  TVL: \$$(printf "%'.0f" $TVL_TOTAL)" | tee -a "$LOG_FILE"
    echo "  30d Fees: \$$(printf "%'.0f" $FEES_30D)" | tee -a "$LOG_FILE"
}

# =============================================================================
# MAIN
# =============================================================================

if [ -z "$1" ]; then
    # Update all
    update_reservoir
    sleep 5  # Rate limit between protocols
    update_edgex
else
    # Update specific protocol
    case "$1" in
        reservoir) update_reservoir ;;
        edgex) update_edgex ;;
        *) echo "Unknown protocol: $1" ;;
    esac
fi

echo "" | tee -a "$LOG_FILE"
echo "Data index updated: $INDEX_FILE" | tee -a "$LOG_FILE"
echo "=== Complete ===" | tee -a "$LOG_FILE"
