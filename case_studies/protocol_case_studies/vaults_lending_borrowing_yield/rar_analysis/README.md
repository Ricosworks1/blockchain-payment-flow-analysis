# Risk-Adjusted Returns (RAR) Analysis

**Purpose:** Comprehensive financial analysis of DeFi vault and lending protocols using crypto-adapted risk metrics.

**Last Updated:** October 26, 2025

---

## Quick Navigation

### Main Document
- **[RISK_ADJUSTED_RETURNS_ANALYSIS.md](./RISK_ADJUSTED_RETURNS_ANALYSIS.md)** - Full 14,800+ word analysis

### Key Sections

1. **Methodology** - Crypto-adapted Sharpe, Sortino, and multi-factor risk scoring
2. **Rankings** - 18 protocols ranked by CRAR, Sharpe, Sortino, and absolute APY
3. **Protocol Analysis** - Deep dives on Morpho, Aave, Reservoir, Maple, Pendle, Avantis
4. **Risk Decomposition** - Quantitative models for smart contract, depeg, and liquidity risks
5. **Portfolio Recommendations** - Conservative, balanced, and aggressive allocations

---

## Summary of Key Findings

### Top 3 Risk-Adjusted Returns (by CRAR)

| Rank | Protocol | Product | APY | CRAR | Risk Level |
|------|----------|---------|-----|------|------------|
| 1 | **Morpho Blue** | AUSDC market | 7.5% | 0.297 | Low |
| 2 | **Aave V3** | USDC (Ethereum) | 7.0% | 0.276 | Low |
| 3 | **Reservoir** | srUSD | 7.75% | 0.264 | Low-Medium |

### Critical Risk Warning

**Highest APY ≠ Best Returns**

Protocols with highest stated APY (Growi 80%, Avantis 37.5%, Curve 30%) have **lowest** risk-adjusted returns (CRAR 0.024-0.098) due to:
- Smart contract risk (new/unaudited)
- Extreme volatility (counterparty risk, IL)
- Tail risk (depeg, exploit probability)

**Example:**
- Morpho 7.5% APY → CRAR 0.297 (excellent)
- Avantis 37.5% APY → CRAR 0.098 (speculative)

**Conclusion:** Focus on CRAR, not APY.

---

## Methodology Overview

### Traditional Finance Metrics (Adapted for Crypto)

**1. Modified Sharpe Ratio**
```
Sharpe = (APY - Risk_Free_Rate - SC_Risk_Premium) / Volatility
```
- Adjusts for smart contract exploit probability
- Uses 10-year US Treasury (4.38%) as risk-free baseline

**2. Sortino Ratio (Downside Focus)**
```
Sortino = (APY - Risk_Free_Rate - SC_Risk_Premium) / Downside_Deviation
```
- Only penalizes downside volatility (losses)
- Better for asymmetric DeFi risk profiles

### Crypto-Specific Metrics

**3. Smart Contract Risk Score (0-100)**
- Audit quality (0-25 points)
- Battle-testing (0-25 points)
- Exploit history (0-25 points)
- Code complexity (0-25 points)

**4. Depeg/Collateral Risk Score (0-100)**
- Asset concentration (0-40 points)
- Collateral quality (0-30 points)
- Historical depegs (0-30 points)

**5. Liquidity Risk Score (0-100)**
- Withdrawal mechanism (0-40 points)
- Market depth (0-30 points)
- Utilization constraints (0-30 points)

### Composite Risk-Adjusted Return (CRAR)

```
CRAR = (APY - Risk_Free_Rate) / Composite_Risk_Index

Composite_Risk_Index =
    (100 - SC_Score) × 0.40 +
    (100 - Depeg_Score) × 0.35 +
    (100 - Liquidity_Score) × 0.25
```

**Weighting:** SC risk 40%, Depeg risk 35%, Liquidity risk 25%

**Interpretation:**
- CRAR > 0.25: Excellent
- CRAR 0.15-0.25: Good
- CRAR 0.10-0.15: Moderate
- CRAR < 0.10: Speculative

---

## Portfolio Recommendations (TL;DR)

### Conservative (5-8% target, minimal risk)

**Allocation:**
- 40% Morpho Blue AUSDC
- 30% Aave V3 USDC
- 20% Compound USDC
- 10% Cash/T-bills

**Expected:** 6.49% risk-adjusted APY, Sortino 1.06, <0.1% annual tail risk

### Balanced (9-12% target, moderate risk)

**Allocation:**
- 25% Morpho Blue AUSDC
- 20% Reservoir srUSD
- 20% Maple syrupUSD
- 15% Lagoon 9Summits USDC
- 10% Pendle PT-syrupUSDC
- 10% Aave V3 USDC

**Expected:** 8.31% risk-adjusted APY, Sortino 1.12, ~0.4% annual tail risk

### Aggressive (15-25% target, high risk)

**Allocation:**
- 20% Lagoon Tulipa Avalanche USDC
- 20% Pendle PT-sUSDe
- 20% Avantis avUSDC
- 15% Pendle YT-sUSDe
- 15% Morpho Blue AUSDC
- 10% Aave V3 USDC

**Expected:** 15.55% risk-adjusted APY, Sortino 0.93, ~5-10% annual drawdown

---

## Data Sources

**Yield Data (Oct 2025):**
- DefiLlama (TVL aggregator)
- DefiRate (lending rates)
- Protocol dashboards (Aave, Morpho, Pendle apps)
- Trading Strategy (ERC-4626 vault benchmark)

**Risk Data (2024-2025):**
- Halborn Top 100 DeFi Hacks Report
- OWASP Smart Contract Top 10 (2025)
- CyMetrics DeFi Hack Review
- US Treasury yield data (4.38% baseline)

**Total Sources Cited:** 25+

---

## Key Risks & Limitations

**1. Tail Risk Understatement**
- Fat-tailed distributions (100% loss events)
- Standard deviation doesn't capture exploit probability well
- Solution: Use CRAR (includes explicit exploit modeling)

**2. Yield Variance**
- APY changes daily, snapshot may not represent long-term
- Solution: Monitor quarterly, rebalance to target allocation

**3. Survivorship Bias**
- Excludes failed protocols (Terra UST, FTX)
- Solution: Conservative risk scoring for new protocols

**4. Regulatory Uncertainty**
- SEC/CFTC actions could render protocols unusable
- Solution: Diversify across multiple protocols, monitor news

**5. Composability Risk**
- Many vaults stack multiple protocols (risk compounds)
- Example: Pendle PT-sUSDe = Pendle + Ethena + CEX shorts
- Solution: Limit exposure to complex composable strategies

---

## How to Use This Analysis

**For Conservative Investors:**
1. Focus on Tier 1 protocols (CRAR > 0.25)
2. Avoid USDe exposure, prefer USDC/USDT
3. Maintain 10-20% liquidity buffer (instant withdrawal)
4. Target 5-8% APY (2-4% over T-bills)

**For Balanced Investors:**
1. Mix Tier 1 (50%) + Tier 2 (40%) + Tier 3 (10%)
2. Limit single protocol to <25% allocation
3. Diversify collateral (USDC, DAI, RWA-backed)
4. Target 9-12% APY (5-8% over T-bills)

**For Aggressive Investors:**
1. Accept high variance (monthly swings -10% to +30%)
2. Monitor weekly (exit on red flags)
3. Tolerate tail risk (5-10% annual drawdowns)
4. Target 15-25% APY (11-21% over T-bills)

**For All Investors:**
- **Never invest more than you can afford to lose**
- **Diversify across protocols and risk tiers**
- **Monitor exploit news weekly (Rekt, DeFi Safety)**
- **Rebalance quarterly or on major risk events**

---

## Disclaimer

This analysis is for **informational purposes only** and does not constitute financial, investment, legal, or tax advice.

**Risks:**
- DeFi protocols can be exploited (smart contract bugs)
- Stablecoins can depeg (partial or total loss)
- Regulatory changes can render protocols unusable
- Past performance does not guarantee future results

**Actions Required:**
- Conduct your own due diligence
- Consult qualified financial advisors
- Understand all risks before investing
- Only invest capital you can afford to lose

**Liability:**
The authors and contributors to this analysis are not liable for any losses incurred from using this information. You are solely responsible for your investment decisions.

---

## Updates & Maintenance

**Recommended Update Frequency:**
- **Monthly:** Refresh APY data from live sources
- **Quarterly:** Recalculate CRAR based on new exploits/risks
- **Annually:** Full methodology review and calibration

**Change Log:**
- **v1.0** (Oct 26, 2025): Initial comprehensive analysis, 18 protocols, 14,800+ words

---

## Contact & Feedback

This analysis is part of the **Blockchain Payment Flow Analysis** research project.

**Repository:** [GitHub - blockchain-payment-flow-analysis](https://github.com/Ricosworks1/blockchain-payment-flow-analysis)

**For updates and new analyses:** Follow repository commits

**To report errors or suggest improvements:** Open an issue on GitHub

---

**Last Updated:** October 26, 2025
**Document Version:** 1.0
**Status:** ✅ Complete and published
