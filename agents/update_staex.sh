#!/bin/bash
# =============================================================================
# AGENT: Staex Update Script
# =============================================================================
# Manual update script for Staex report. Since Staex is a seed-stage company
# with no token and no DeFi metrics, there are no APIs to fetch.
#
# This script provides a checklist and placeholder for future automation
# when/if Staex launches a token or gets listed on data aggregators.
#
# Usage: ./agents/update_staex.sh
# =============================================================================

set -e

REPO_DIR="/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis"
CONTEXT_FILE="$REPO_DIR/claude.md_staex"
DATA_DIR="$REPO_DIR/agents/data"
LOG_FILE="$REPO_DIR/agents/logs/staex_$(date +%Y%m%d_%H%M%S).log"

mkdir -p "$DATA_DIR"
mkdir -p "$REPO_DIR/agents/logs"

echo "=== Staex Update Agent ===" | tee -a "$LOG_FILE"
echo "Time: $(date)" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# NOTE: Staex is a seed-stage B2B infrastructure company
# =============================================================================
echo "NOTICE: Staex has no API data available" | tee -a "$LOG_FILE"
echo "- No token (not on CoinGecko/CoinMarketCap)" | tee -a "$LOG_FILE"
echo "- No TVL (not on DefiLlama)" | tee -a "$LOG_FILE"
echo "- B2B infrastructure company, not a DeFi protocol" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 1. CHECK DEFILLAMA (In case they get listed)
# =============================================================================
echo "Checking if Staex has been added to DefiLlama..." | tee -a "$LOG_FILE"
DEFILLAMA_CHECK=$(curl -s "https://api.llama.fi/protocol/staex" 2>/dev/null || echo "not_found")

if echo "$DEFILLAMA_CHECK" | grep -q "Protocol not found"; then
    echo "  [INFO] Staex not listed on DefiLlama (expected for B2B infra)" | tee -a "$LOG_FILE"
elif [ "$DEFILLAMA_CHECK" = "not_found" ]; then
    echo "  [INFO] Staex not found on DefiLlama" | tee -a "$LOG_FILE"
else
    echo "  [NEW] Staex may now be on DefiLlama! Check manually." | tee -a "$LOG_FILE"
    echo "$DEFILLAMA_CHECK" > "$DATA_DIR/staex_defillama.json"
fi

# =============================================================================
# 2. CHECK COINGECKO (In case token launches)
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "Checking if Staex token exists on CoinGecko..." | tee -a "$LOG_FILE"
sleep 2

COINGECKO_CHECK=$(curl -s "https://api.coingecko.com/api/v3/search?query=staex" 2>/dev/null)

if echo "$COINGECKO_CHECK" | jq -e '.coins | length > 0' > /dev/null 2>&1; then
    echo "  [NEW] Potential Staex token found on CoinGecko! Check manually." | tee -a "$LOG_FILE"
    echo "$COINGECKO_CHECK" > "$DATA_DIR/staex_coingecko_search.json"
else
    echo "  [INFO] No Staex token on CoinGecko (expected - no token announced)" | tee -a "$LOG_FILE"
fi

# =============================================================================
# 3. MANUAL UPDATE CHECKLIST
# =============================================================================
echo "" | tee -a "$LOG_FILE"
echo "=== MANUAL UPDATE CHECKLIST ===" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "Since Staex has no API data, manually check these sources:" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "1. OFFICIAL SOURCES:" | tee -a "$LOG_FILE"
echo "   [ ] https://staex.io/blog - New announcements" | tee -a "$LOG_FILE"
echo "   [ ] https://twitter.com/Staex_io - Latest tweets" | tee -a "$LOG_FILE"
echo "   [ ] https://linkedin.com/company/staex - Company updates" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "2. PARTNERSHIP UPDATES:" | tee -a "$LOG_FILE"
echo "   [ ] https://www.peaq.xyz/blog - peaq ecosystem updates" | tee -a "$LOG_FILE"
echo "   [ ] https://forum.dfinity.org - ICP project updates" | tee -a "$LOG_FILE"
echo "   [ ] https://lisk.com/blog - Lisk ecosystem news" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "3. PROJECT STATUS:" | tee -a "$LOG_FILE"
echo "   [ ] NEXA consortium - new developments" | tee -a "$LOG_FILE"
echo "   [ ] MINT project - bus fleet expansion" | tee -a "$LOG_FILE"
echo "   [ ] Linera pilot - production deployment progress" | tee -a "$LOG_FILE"
echo "   [ ] Chirp partnership - 200,000 bus target progress" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "4. FUNDING NEWS:" | tee -a "$LOG_FILE"
echo "   [ ] Crunchbase - new funding rounds" | tee -a "$LOG_FILE"
echo "   [ ] EU-Startups - European tech coverage" | tee -a "$LOG_FILE"
echo "   [ ] TechCrunch - startup funding news" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "5. TEAM CHANGES:" | tee -a "$LOG_FILE"
echo "   [ ] LinkedIn - new hires, departures" | tee -a "$LOG_FILE"
echo "   [ ] Conference speakers - Paris Blockchain Week, etc." | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# =============================================================================
# 4. OUTPUT SUMMARY
# =============================================================================
echo "=== SUMMARY ===" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

# Create a summary JSON
cat > "$DATA_DIR/staex_summary.json" << EOF
{
  "protocol": "Staex",
  "timestamp": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "status": {
    "defillama_listed": false,
    "coingecko_token": false,
    "company_stage": "seed",
    "token_announced": false
  },
  "notes": "Staex is a seed-stage B2B infrastructure company. No API data available. Manual research required for updates.",
  "manual_sources": [
    "https://staex.io/blog",
    "https://twitter.com/Staex_io",
    "https://www.peaq.xyz/blog",
    "https://forum.dfinity.org"
  ],
  "key_metrics_to_watch": [
    "Series A funding announcement",
    "Token launch announcement",
    "MINT project expansion (150 buses -> production)",
    "Linera pilot completion (10 -> 100+ buses)",
    "Chirp partnership progress (target: 200,000 buses)"
  ]
}
EOF

echo "Summary JSON created: $DATA_DIR/staex_summary.json" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "=== Staex Update Check Complete ===" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"
echo "NEXT STEPS:" | tee -a "$LOG_FILE"
echo "1. Review manual checklist above" | tee -a "$LOG_FILE"
echo "2. Check official sources for news" | tee -a "$LOG_FILE"
echo "3. Update claude.md_staex with new findings" | tee -a "$LOG_FILE"
echo "4. Update case_studies/protocols/staex.md report" | tee -a "$LOG_FILE"
