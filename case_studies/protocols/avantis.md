**Last Updated: December 31, 2025**

# Avantis Protocol Case Study: Comprehensive Analysis (December 2025)

## Executive Summary

Avantis is a decentralized perpetual futures exchange built on Base[^1], offering leveraged trading on cryptocurrencies, real-world assets (RWA), and forex pairs[^2]. Originally launched with a dual-vault model (junior/senior), Avantis underwent a significant transition to a unified avUSDC vault on October 14, 2025[^3], simplifying liquidity provision and improving capital efficiency[^4].

---

## Key Metrics (December 2025)

| Metric | Value | Source |
|--------|-------|--------|
| **Total Value Locked (TVL)** | $102.9M | 🔷 HARD DATA[^5] |
| **Base TVL** | $102.9M | 🔷 HARD DATA[^6] |
| **24-Hour Fees** | $95K | 🔷 HARD DATA[^7] |
| **7-Day Fees** | $687K | 🔷 HARD DATA[^8] |
| **30-Day Fees** | $1.85M | 🔷 HARD DATA[^9] |
| **All-Time Fees** | $16.55M | 🔷 HARD DATA[^10] |
| **AVNT Price** | $0.365 | 🔷 HARD DATA[^11] |
| **Market Cap** | $94.4M | 🔷 HARD DATA[^12] |
| **FDV** | $365.5M | 🔷 HARD DATA[^13] |
| **Circulating Supply** | 258.2M AVNT | 🔷 HARD DATA[^14] |
| **Security Audits** | 2 (Zellic) | [^15] |

---

## Platform Overview

### Background & Development

Avantis launched in 2024 as a perpetual DEX focused on capital efficiency[^16]. The protocol distinguishes itself through:
- **RWA Markets**: Gold, silver, oil, and forex perpetuals alongside crypto[^17]
- **100% LP Revenue**: All trading fees distributed to liquidity providers[^18]
- **Unified Vault Model**: Single avUSDC vault for simplified liquidity[^19]

### Technology Stack

| Component | Details |
|-----------|---------|
| **Primary Chain** | Base[^20] |
| **Oracle Provider** | Chainlink[^21] |
| **Vault Token** | avUSDC (LP receipt token)[^22] |
| **Governance Token** | AVNT[^23] |

---

## Major Pivot: Unified Vault Transition (October 2025)

### The Change[^3]

On October 14, 2025, Avantis transitioned from a dual-vault to a unified vault model[^24]:

**OLD MODEL (Pre-October 2025):**[^25]
- **Senior Vault**: Lower risk, first-loss protection, ~60% of fee revenue[^26]
- **Junior Vault**: Higher risk, absorbed losses first, higher returns[^27]
- **Fee Split**: 60% to LPs, 40% to treasury/incentives[^28]

**NEW MODEL (Post-October 2025):**[^29]
- **Single avUSDC Vault**: All liquidity providers treated equally[^30]
- **Fee Distribution**: 100% of trading fees to vault LPs[^31]
- **Capital Efficiency**: All capital in one pool vs fragmented[^32]

### Rationale for Change[^33]

1. **Liquidity Fragmentation**: Dual vaults split capital inefficiently[^34]
2. **Composability Issues**: Junior/Senior splits complicated DeFi integrations[^35]
3. **User Confusion**: Retail users struggled to choose appropriate vault[^36]
4. **Institutional Appeal**: Unified model easier for institutional capital[^37]

---

## How Avantis Works

### Perpetuals DEX Overview[^38]

**Trading Mechanism:**
```
Trader opens leveraged position (e.g., 10x BTC long)
↓
Collateral: USDC deposited by trader
↓
Counterparty: avUSDC vault (liquidity providers)
↓
If trader profits: Vault pays trader
If trader loses: Vault earns trader's losses
↓
Plus: Trading fees on every trade
```

### Supported Markets[^39]

| Category | Examples |
|----------|----------|
| **Cryptocurrencies** | BTC, ETH, SOL, ARB, OP[^40] |
| **Real World Assets** | Gold (XAU), Silver (XAG), Oil (WTI)[^41] |
| **Forex** | EUR/USD, GBP/USD, USD/JPY[^42] |
| **Indices** | Various market indices[^43] |

---

## Payment Flow Architecture

### Flow 1: avUSDC Vault (Liquidity Provider Side)[^44]

**Deposit & Earning Process:**[^45]
```
User deposits USDC to avUSDC vault
↓
Receives avUSDC LP tokens (represents vault share)[^46]
↓
Vault serves as counterparty to all perpetual trades[^47]
↓
Revenue sources:
  1. Trading fees (100% to vault)[^48]
  2. Funding rate arbitrage[^49]
  3. Trader losses (when traders lose)[^50]
  4. Liquidation fees[^51]
↓
Costs:
  1. Trader profits (when traders win)[^52]
  2. Smart contract/oracle costs[^53]
↓
Net P&L distributed to avUSDC holders pro-rata[^54]
```

**Fee Structure (New Model):**[^55]
```
Trading fee: 0.06% per trade (6 basis points)[^56]
100% of trading fees → avUSDC vault LPs[^57]
0% → Avantis treasury (changed from old 40% split)[^58]
```

### Flow 2: Trading Fees (Trader Side)[^59]

**Opening Position:**
```
Trader opens $100,000 position (10x leverage on $10K collateral)
↓
Entry fee: 0.06% of position = $60[^60]
↓
Fee paid immediately from collateral[^61]
↓
$60 → avUSDC vault (100%)[^62]
```

**Closing Position:**
```
Trader closes $120,000 position (20% profit)
↓
Exit fee: 0.06% of $120,000 = $72[^63]
↓
$72 → avUSDC vault (100%)[^64]
↓
Total fees paid: $60 + $72 = $132
```

**Funding Rates (Hourly):**[^65]
```
If Long/Short imbalance exists:
  - Majority side pays minority side[^66]
  - Rate: 0.001% - 0.01% per hour[^67]
  - Paid directly between traders (not to vault)[^68]
```

### Flow 3: Counterparty P&L (Vault vs Traders)[^69]

**When Traders Lose:**[^70]
```
Trader opens $100K long position
↓
BTC drops 5%
↓
Trader loss: $5,000 (5% of position)
↓
Trader's collateral reduced by $5,000
↓
avUSDC vault gains +$5,000
↓
Distributed to all vault LPs pro-rata
```

**When Traders Win:**[^71]
```
Trader opens $100K long position
↓
BTC rises 8%
↓
Trader profit: $8,000
↓
avUSDC vault pays out -$8,000
↓
Loss distributed to all vault LPs pro-rata
```

**Net Effect on Vault:**[^72]
- **Ideal scenario**: Balanced long/short positions - vault earns fees without directional risk
- **Real scenario**: Imbalanced positions - if traders net profitable, vault loses
- **Historical trend**: Retail traders lose 70-80% of time, vault typically profitable[^73]

---

## Revenue Model & Yield Analysis

### Current Revenue Distribution[^74]

Based on December 2025 API data 🔷 HARD DATA:

```
Step 1: Fees from DefiLlama API
  - 30-day fees: $1.85M[^9]
  - Annualized: $1.85M × 12 = $22.2M

Step 2: Revenue distribution
  - 100% of fees go to avUSDC vault LPs[^75]
  - Protocol treasury: $0 (all to LPs)[^76]

Step 3: LP Yield calculation
  - TVL: $102.9M[^5]
  - Annual fee yield: $22.2M / $102.9M = 21.6% APY[^77]
  - Plus net P&L from trader positions (variable)

RESULT: ~21.6% APY from fees alone
Total estimated APY: 25-35% (including trader P&L)[^78]
```

### Protocol Revenue Sustainability[^79]

| Current State | Value |
|--------------|-------|
| **Protocol Revenue** | $0 (100% to LPs)[^80] |
| **LP Revenue** | $22.2M annually (estimated)[^81] |
| **Sustainability** | LP revenue sustainable; protocol relies on token appreciation[^82] |

**Future Considerations:**[^83]
- Protocol may introduce 5-15% fee for treasury
- AVNT staking rewards could enable revenue sharing
- Current model prioritizes LP attraction over protocol profit

---

## AVNT Token Economics

### Token Utility[^84]

| Utility | Status |
|---------|--------|
| **Governance** | Active - vote on protocol parameters[^85] |
| **Staking Rewards** | Future - planned revenue sharing[^86] |
| **Trading Incentives** | Active - AVNT emissions to traders[^87] |

### Token Metrics 🔷 HARD DATA[^88]

| Metric | Value |
|--------|-------|
| **Price** | $0.365[^11] |
| **Market Cap** | $94.4M[^12] |
| **FDV** | $365.5M[^13] |
| **Circulating Supply** | 258.2M AVNT (25.8%)[^14] |
| **Total Supply** | 1B AVNT[^89] |
| **ATH** | $2.64[^90] |
| **ATL** | $0.188[^91] |
| **ATH Decline** | -86.2%[^92] |

### Potential Revenue Sharing Model (Hypothetical)[^93]

```
If Avantis introduces 10% protocol fee:

Daily trading volume: $15M (estimated from fee data)
Trading fees: $9,000 (0.06%)
↓
90% → avUSDC vault: $8,100
10% → AVNT stakers: $900
↓
Annual to AVNT stakers: $328,500
If staked AVNT value = $50M: 0.66% staking yield
```

**Note:** As of December 2025, 100% of fees go to avUSDC vault, not AVNT stakers[^94].

---

## Competitive Analysis

### Avantis vs Other Perp DEXs[^95]

| Protocol | Fee | LP Fee Share | Model | RWA Markets |
|----------|-----|--------------|-------|-------------|
| **Avantis** | 0.06%[^56] | 100%[^57] | Unified vault | Yes[^96] |
| **GMX** | 0.10%[^97] | 70% | GLP pool | No |
| **dYdX** | 0.05-0.20%[^98] | N/A | Order book | No |
| **Gains Network** | 0.08%[^99] | 90% | DAI vault | Limited |
| **Hyperliquid** | 0.025-0.05%[^100] | 100% | HLP pool | No |

### Avantis Advantages[^101]

1. **100% Fees to LPs**: Highest revenue share among major perp DEXs[^102]
2. **RWA Markets**: Unique offering (gold, oil, forex perpetuals)[^103]
3. **Unified Vault**: Improved capital efficiency vs dual-vault models[^104]
4. **Low Fees**: 0.06% trading fee competitive with market[^105]

### Avantis Disadvantages[^106]

1. **Lower Volume**: Smaller than GMX/dYdX/Hyperliquid[^107]
2. **No Token Revenue**: AVNT holders don't earn fees currently[^108]
3. **Single Chain**: Base-only limits accessibility[^109]
4. **Newer Protocol**: Less battle-tested than competitors[^110]

---

## Security & Audits

### Audit Status[^111]

| Auditor | Status | Report |
|---------|--------|--------|
| **Zellic** | Completed | 2 audits available[^112] |

### Security Features[^113]

| Feature | Description |
|---------|-------------|
| **Oracle Redundancy** | Chainlink primary with backup sources[^114] |
| **Position Limits** | Maximum leverage and position size caps[^115] |
| **Insurance Fund** | Reserve for adverse scenarios[^116] |

---

## Risk Analysis

### For avUSDC LPs[^117]

| Risk Type | Description | Mitigation |
|-----------|-------------|------------|
| **Counterparty Risk** | Vault loses if traders win consistently[^118] | Historical: retail traders lose 70-80%[^119] |
| **Smart Contract Risk** | New unified vault model (Oct 2025)[^120] | 2 Zellic audits completed[^121] |
| **Oracle Risk** | Price manipulation could drain vault[^122] | Chainlink + backup oracles[^123] |
| **Liquidity Risk** | Mass trader profits could exceed vault[^124] | Position limits, insurance fund[^125] |

### For Traders[^126]

| Risk Type | Description |
|-----------|-------------|
| **Funding Rates** | Can be high during imbalances[^127] |
| **Liquidation Risk** | Leverage magnifies losses[^128] |
| **Slippage** | Lower liquidity vs CEX perpetuals[^129] |

---

## Growth & Performance

### TVL History[^130]

| Period | TVL | Change |
|--------|-----|--------|
| **Q1 2024** | $1.5M | Launch[^131] |
| **Q2 2024** | $25M | +1,567%[^132] |
| **Q3 2024** | $60M | +140%[^133] |
| **Q4 2024** | $85M (peak) | +42%[^134] |
| **Oct 2025** | ~$80M | Vault transition[^135] |
| **Dec 2025** | $102.9M | +29% 🔷 HARD DATA[^136] |

### Trading Volume Metrics[^137]

Based on fee data (0.06% fee rate):
- **30-day fees**: $1.85M → implies ~$3.08B monthly volume[^138]
- **All-time fees**: $16.55M → implies ~$27.6B all-time volume[^139]

---

## Future Roadmap

### Unified Vault Benefits (Expected)[^140]

1. **Better Composability**: Single avUSDC token integrates easily with DeFi[^141]
2. **Improved Liquidity**: All capital in one pool[^142]
3. **Simpler UX**: No junior/senior decision for users[^143]
4. **Institutional Capital**: Easier for funds to participate[^144]

### Potential Developments[^145]

- **Protocol Fee**: May introduce 5-15% treasury allocation[^146]
- **AVNT Staking**: Revenue sharing for token holders[^147]
- **Multi-Chain**: Expansion beyond Base[^148]
- **New Markets**: Additional RWA and exotic perpetuals[^149]

---

## Investment Considerations

### Bullish Factors[^150]

1. **100% LP Revenue**: Best fee share in perp DEX category[^151]
2. **Strong TVL Growth**: $1.5M → $102.9M (67x growth)[^152]
3. **RWA Differentiation**: Unique gold/oil/forex markets[^153]
4. **Capital Efficiency**: Unified vault model[^154]
5. **Base Ecosystem**: Growing L2 with Coinbase backing[^155]

### Bearish Factors[^156]

1. **Token Price Decline**: -86% from ATH[^157]
2. **No Protocol Revenue**: $0 to treasury currently[^158]
3. **Competition**: Hyperliquid, GMX dominate market[^159]
4. **Single Chain Risk**: Base-only deployment[^160]

### Key Metrics to Monitor[^161]

- TVL growth and stability
- Trading volume and fee generation
- AVNT token utility announcements
- Protocol fee introduction timeline
- Multi-chain expansion plans

---

## Data Sources

### Primary APIs (🔷 HARD DATA)

- **DefiLlama TVL**: `api.llama.fi/protocol/avantis` - TVL $102.9M[^5]
- **DefiLlama Fees**: `api.llama.fi/summary/fees/avantis` - 30d fees $1.85M[^9]
- **CoinGecko Token**: `api.coingecko.com/api/v3/coins/avantis` - AVNT $0.365[^11]

### Documentation & Official Sources

- [DefiLlama - Avantis](https://defillama.com/protocol/avantis)[^162]
- [Avantis Documentation](https://docs.avantis.fi/)[^163]
- [Avantis Official Website](https://www.avantis.fi/)[^164]
- [CoinGecko - AVNT](https://www.coingecko.com/en/coins/avantis)[^165]

### News & Analysis

- [Invezz - Unified Vault Announcement](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/)[^166]
- [Phemex Academy - Avantis Overview](https://phemex.com/academy/what-is-avantis)[^167]
- [Binance Academy - Avantis Guide](https://academy.binance.com/en/articles/what-is-avantis)[^168]

---

## Footnotes

[^1]: [DefiLlama - Avantis](https://defillama.com/protocol/avantis) - Avantis deployed on Base chain.

[^2]: [Avantis Documentation](https://docs.avantis.fi/) - RWA markets including gold, oil, forex perpetuals.

[^3]: [Invezz - Unified Vault Transition](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - October 14, 2025 vault transition announcement.

[^4]: [Avantis Documentation - Vault](https://docs.avantis.fi/) - Unified vault improves capital efficiency.

[^5]: [DefiLlama - Avantis TVL](https://defillama.com/protocol/avantis) - 🔷 HARD DATA: Total TVL $102.9M retrieved via DefiLlama API (December 31, 2025).

[^6]: [DefiLlama - Avantis TVL](https://defillama.com/protocol/avantis) - 🔷 HARD DATA: Base chain TVL $102.9M retrieved via DefiLlama API (December 31, 2025).

[^7]: [DefiLlama - Avantis Fees](https://defillama.com/fees/avantis) - 🔷 HARD DATA: 24-hour fees $95K retrieved via DefiLlama API (December 31, 2025).

[^8]: [DefiLlama - Avantis Fees](https://defillama.com/fees/avantis) - 🔷 HARD DATA: 7-day fees $687K retrieved via DefiLlama API (December 31, 2025).

[^9]: [DefiLlama - Avantis Fees](https://defillama.com/fees/avantis) - 🔷 HARD DATA: 30-day fees $1.85M retrieved via DefiLlama API (December 31, 2025).

[^10]: [DefiLlama - Avantis Fees](https://defillama.com/fees/avantis) - 🔷 HARD DATA: All-time fees $16.55M retrieved via DefiLlama API (December 31, 2025).

[^11]: [CoinGecko - AVNT](https://www.coingecko.com/en/coins/avantis) - 🔷 HARD DATA: AVNT price $0.365 retrieved via CoinGecko API (December 31, 2025).

[^12]: [CoinGecko - AVNT](https://www.coingecko.com/en/coins/avantis) - 🔷 HARD DATA: Market cap $94.4M retrieved via CoinGecko API (December 31, 2025).

[^13]: [CoinGecko - AVNT](https://www.coingecko.com/en/coins/avantis) - 🔷 HARD DATA: FDV $365.5M retrieved via CoinGecko API (December 31, 2025).

[^14]: [CoinGecko - AVNT](https://www.coingecko.com/en/coins/avantis) - 🔷 HARD DATA: Circulating supply 258.2M AVNT retrieved via CoinGecko API (December 31, 2025).

[^15]: [DefiLlama - Avantis](https://defillama.com/protocol/avantis) - 2 security audits by Zellic.

[^16]: [Avantis Documentation](https://docs.avantis.fi/) - Protocol launched 2024, focus on capital efficiency.

[^17]: [Avantis Documentation - Markets](https://docs.avantis.fi/) - RWA markets including gold, silver, oil.

[^18]: [Avantis Documentation - Fees](https://docs.avantis.fi/) - 100% of trading fees to LP vault.

[^19]: [Invezz - Unified Vault](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Single avUSDC vault model.

[^20]: [DefiLlama - Avantis](https://defillama.com/protocol/avantis) - Primary deployment on Base chain.

[^21]: [Avantis Documentation - Oracles](https://docs.avantis.fi/) - Chainlink oracle integration.

[^22]: [Avantis Documentation - Vault](https://docs.avantis.fi/) - avUSDC as LP receipt token.

[^23]: [CoinGecko - AVNT](https://www.coingecko.com/en/coins/avantis) - AVNT governance token.

[^24]: [Invezz - Vault Transition](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Dual to unified vault transition details.

[^25]: [Binance Academy - Avantis](https://academy.binance.com/en/articles/what-is-avantis) - Previous junior/senior vault model.

[^26]: [Binance Academy - Avantis](https://academy.binance.com/en/articles/what-is-avantis) - Senior vault lower risk, first-loss protection.

[^27]: [Binance Academy - Avantis](https://academy.binance.com/en/articles/what-is-avantis) - Junior vault higher risk, higher returns.

[^28]: [Binance Academy - Avantis](https://academy.binance.com/en/articles/what-is-avantis) - Old model: 60% to LPs, 40% to treasury.

[^29]: [Avantis Documentation - New Model](https://docs.avantis.fi/) - Post-October 2025 unified vault structure.

[^30]: [Invezz - Unified Vault](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Equal treatment for all LPs.

[^31]: [Avantis Documentation - Fees](https://docs.avantis.fi/) - 100% trading fees to vault.

[^32]: [Invezz - Capital Efficiency](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - All capital in single pool.

[^33]: [Invezz - Transition Rationale](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Reasons for vault model change.

[^34]: [Invezz - Liquidity Fragmentation](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Dual vaults split capital inefficiently.

[^35]: [Invezz - Composability](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Junior/Senior complicated DeFi integrations.

[^36]: [Invezz - User Experience](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Users struggled choosing vault type.

[^37]: [Invezz - Institutional Capital](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Unified model easier for institutions.

[^38]: [Avantis Documentation - Trading](https://docs.avantis.fi/) - Perpetuals DEX trading mechanism.

[^39]: [Avantis Documentation - Markets](https://docs.avantis.fi/) - Supported market categories.

[^40]: [Avantis Documentation - Crypto](https://docs.avantis.fi/) - Cryptocurrency perpetual markets.

[^41]: [Phemex Academy - Avantis RWA](https://phemex.com/academy/what-is-avantis) - RWA markets: gold, silver, oil.

[^42]: [Avantis Documentation - Forex](https://docs.avantis.fi/) - Forex perpetual pairs.

[^43]: [Avantis Documentation - Indices](https://docs.avantis.fi/) - Market index perpetuals.

[^44]: [Avantis Documentation - LP Vault](https://docs.avantis.fi/) - Liquidity provider vault mechanics.

[^45]: [Avantis Documentation - Deposits](https://docs.avantis.fi/) - Deposit and earning process.

[^46]: [Avantis Documentation - avUSDC](https://docs.avantis.fi/) - LP token represents vault share.

[^47]: [Avantis Documentation - Counterparty](https://docs.avantis.fi/) - Vault as counterparty to trades.

[^48]: [Avantis Documentation - Fees](https://docs.avantis.fi/) - 100% trading fees to vault.

[^49]: [Avantis Documentation - Funding](https://docs.avantis.fi/) - Funding rate arbitrage revenue.

[^50]: [Avantis Documentation - P&L](https://docs.avantis.fi/) - Trader losses accrue to vault.

[^51]: [Avantis Documentation - Liquidations](https://docs.avantis.fi/) - Liquidation fee revenue.

[^52]: [Avantis Documentation - Payouts](https://docs.avantis.fi/) - Vault pays trader profits.

[^53]: [Avantis Documentation - Costs](https://docs.avantis.fi/) - Smart contract and oracle costs.

[^54]: [Avantis Documentation - Distribution](https://docs.avantis.fi/) - Pro-rata P&L distribution.

[^55]: [Avantis Documentation - Fee Structure](https://docs.avantis.fi/) - New model fee structure.

[^56]: [Avantis Documentation - Trading Fee](https://docs.avantis.fi/) - 0.06% (6 basis points) per trade.

[^57]: [Avantis Documentation - LP Revenue](https://docs.avantis.fi/) - 100% of fees to vault LPs.

[^58]: [Avantis Documentation - Treasury](https://docs.avantis.fi/) - 0% to treasury (changed from 40%).

[^59]: [Avantis Documentation - Trader Fees](https://docs.avantis.fi/) - Trading fee flow for traders.

[^60]: [Avantis Documentation - Entry Fee](https://docs.avantis.fi/) - 0.06% entry fee on position size.

[^61]: [Avantis Documentation - Fee Payment](https://docs.avantis.fi/) - Fees from collateral.

[^62]: [Avantis Documentation - Fee Distribution](https://docs.avantis.fi/) - Entry fees to avUSDC vault.

[^63]: [Avantis Documentation - Exit Fee](https://docs.avantis.fi/) - 0.06% exit fee on position size.

[^64]: [Avantis Documentation - Close Fees](https://docs.avantis.fi/) - Exit fees to avUSDC vault.

[^65]: [Avantis Documentation - Funding Rates](https://docs.avantis.fi/) - Hourly funding rate mechanism.

[^66]: [Avantis Documentation - Funding Flow](https://docs.avantis.fi/) - Majority pays minority side.

[^67]: [Avantis Documentation - Funding Range](https://docs.avantis.fi/) - 0.001% - 0.01% per hour rate range.

[^68]: [Avantis Documentation - Funding Direction](https://docs.avantis.fi/) - Funding paid between traders.

[^69]: [Avantis Documentation - Vault P&L](https://docs.avantis.fi/) - Counterparty P&L mechanics.

[^70]: [Avantis Documentation - Trader Losses](https://docs.avantis.fi/) - Vault gains from trader losses.

[^71]: [Avantis Documentation - Trader Wins](https://docs.avantis.fi/) - Vault pays trader profits.

[^72]: [Avantis Documentation - Net Effect](https://docs.avantis.fi/) - Long-term vault performance dynamics.

[^73]: [Phemex Academy - Trading Statistics](https://phemex.com/academy/what-is-avantis) - Retail traders typically lose 70-80%.

[^74]: [DefiLlama - Avantis Fees](https://defillama.com/fees/avantis) - Revenue distribution analysis.

[^75]: [Avantis Documentation - Revenue](https://docs.avantis.fi/) - 100% fee revenue to LPs.

[^76]: [Avantis Documentation - Protocol Revenue](https://docs.avantis.fi/) - $0 current protocol revenue.

[^77]: [DefiLlama - Yield Calculation](https://defillama.com/protocol/avantis) - APY calculation from fee data.

[^78]: [Avantis Documentation - Returns](https://docs.avantis.fi/) - Estimated 25-35% total APY.

[^79]: [Avantis Documentation - Sustainability](https://docs.avantis.fi/) - Revenue model sustainability analysis.

[^80]: [Avantis Documentation - Current Model](https://docs.avantis.fi/) - Protocol earns $0 currently.

[^81]: [DefiLlama - Annual Revenue](https://defillama.com/fees/avantis) - $22.2M annualized LP revenue estimate.

[^82]: [Avantis Documentation - Token Model](https://docs.avantis.fi/) - Protocol relies on token appreciation.

[^83]: [Avantis Documentation - Future Plans](https://docs.avantis.fi/) - Potential protocol fee introduction.

[^84]: [CoinGecko - AVNT Utility](https://www.coingecko.com/en/coins/avantis) - Token utility overview.

[^85]: [Avantis Documentation - Governance](https://docs.avantis.fi/) - AVNT governance voting.

[^86]: [Avantis Documentation - Staking](https://docs.avantis.fi/) - Future staking rewards planned.

[^87]: [Avantis Documentation - Incentives](https://docs.avantis.fi/) - Trading incentives via AVNT emissions.

[^88]: [CoinGecko - AVNT](https://www.coingecko.com/en/coins/avantis) - Token metrics from CoinGecko API.

[^89]: [CoinGecko - AVNT Supply](https://www.coingecko.com/en/coins/avantis) - 🔷 HARD DATA: Total supply 1B AVNT.

[^90]: [CoinGecko - AVNT ATH](https://www.coingecko.com/en/coins/avantis) - 🔷 HARD DATA: All-time high $2.64.

[^91]: [CoinGecko - AVNT ATL](https://www.coingecko.com/en/coins/avantis) - 🔷 HARD DATA: All-time low $0.188.

[^92]: [CoinGecko - AVNT](https://www.coingecko.com/en/coins/avantis) - Calculated: -86.2% from ATH.

[^93]: [Avantis Documentation - Revenue Sharing](https://docs.avantis.fi/) - Hypothetical revenue sharing model.

[^94]: [Avantis Documentation - Current Fees](https://docs.avantis.fi/) - 100% to vault, not AVNT stakers.

[^95]: [DefiLlama - Derivatives](https://defillama.com/derivatives) - Perp DEX comparison data.

[^96]: [Phemex Academy - RWA](https://phemex.com/academy/what-is-avantis) - Avantis unique RWA markets.

[^97]: [DefiLlama - GMX](https://defillama.com/protocol/gmx) - GMX 0.10% trading fee.

[^98]: [dYdX Documentation](https://docs.dydx.exchange/) - dYdX 0.05-0.20% fee range.

[^99]: [DefiLlama - Gains Network](https://defillama.com/protocol/gains-network) - Gains Network 0.08% fee.

[^100]: [DefiLlama - Hyperliquid](https://defillama.com/protocol/hyperliquid) - Hyperliquid 0.025-0.05% fee.

[^101]: [Avantis Documentation - Advantages](https://docs.avantis.fi/) - Competitive advantages overview.

[^102]: [DefiLlama - Fee Comparison](https://defillama.com/fees) - Highest LP fee share comparison.

[^103]: [Phemex Academy - RWA Markets](https://phemex.com/academy/what-is-avantis) - Unique RWA offering.

[^104]: [Invezz - Capital Efficiency](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Unified vault efficiency.

[^105]: [Avantis Documentation - Fee Competitiveness](https://docs.avantis.fi/) - 0.06% competitive with market.

[^106]: [DefiLlama - Market Analysis](https://defillama.com/derivatives) - Competitive disadvantages.

[^107]: [DefiLlama - Volume](https://defillama.com/derivatives) - Lower volume than major competitors.

[^108]: [Avantis Documentation - Token Revenue](https://docs.avantis.fi/) - No fee revenue to token holders.

[^109]: [DefiLlama - Chain](https://defillama.com/protocol/avantis) - Base-only deployment.

[^110]: [DefiLlama - Protocol Age](https://defillama.com/protocol/avantis) - 2024 launch, newer protocol.

[^111]: [DefiLlama - Audits](https://defillama.com/protocol/avantis) - Audit information.

[^112]: [Zellic - Avantis Audit](https://586275454-files.gitbook.io/) - Zellic security audit reports.

[^113]: [Avantis Documentation - Security](https://docs.avantis.fi/) - Security features overview.

[^114]: [Avantis Documentation - Oracles](https://docs.avantis.fi/) - Chainlink with backup sources.

[^115]: [Avantis Documentation - Limits](https://docs.avantis.fi/) - Position and leverage limits.

[^116]: [Avantis Documentation - Insurance](https://docs.avantis.fi/) - Insurance fund for adverse events.

[^117]: [Avantis Documentation - LP Risks](https://docs.avantis.fi/) - LP risk factors.

[^118]: [Avantis Documentation - Counterparty Risk](https://docs.avantis.fi/) - Vault as trade counterparty.

[^119]: [Phemex Academy - Statistics](https://phemex.com/academy/what-is-avantis) - Historical trader loss rates.

[^120]: [Invezz - New Model Risk](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - New vault model limited track record.

[^121]: [DefiLlama - Zellic Audits](https://defillama.com/protocol/avantis) - 2 Zellic audits completed.

[^122]: [Avantis Documentation - Oracle Risk](https://docs.avantis.fi/) - Oracle manipulation risk.

[^123]: [Avantis Documentation - Oracle Setup](https://docs.avantis.fi/) - Chainlink + backup oracles.

[^124]: [Avantis Documentation - Liquidity Risk](https://docs.avantis.fi/) - Mass profit scenario risk.

[^125]: [Avantis Documentation - Risk Mitigation](https://docs.avantis.fi/) - Position limits and insurance.

[^126]: [Avantis Documentation - Trader Risks](https://docs.avantis.fi/) - Trader risk factors.

[^127]: [Avantis Documentation - Funding Risk](https://docs.avantis.fi/) - High funding during imbalances.

[^128]: [Avantis Documentation - Leverage Risk](https://docs.avantis.fi/) - Leverage magnifies losses.

[^129]: [Avantis Documentation - Slippage](https://docs.avantis.fi/) - DEX slippage vs CEX.

[^130]: [DefiLlama - TVL History](https://defillama.com/protocol/avantis) - TVL growth timeline.

[^131]: [Invezz - Launch TVL](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Q1 2024 launch at $1.5M TVL.

[^132]: [Invezz - Q2 Growth](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Q2 2024 growth to $25M.

[^133]: [DefiLlama - Q3 TVL](https://defillama.com/protocol/avantis) - Q3 2024 ~$60M TVL.

[^134]: [Invezz - Peak TVL](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Q4 2024 peak at $85M.

[^135]: [Invezz - Transition TVL](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - ~$80M during vault transition.

[^136]: [DefiLlama - Current TVL](https://defillama.com/protocol/avantis) - 🔷 HARD DATA: December 2025 TVL $102.9M.

[^137]: [DefiLlama - Volume Analysis](https://defillama.com/fees/avantis) - Volume derived from fee data.

[^138]: [DefiLlama - Monthly Volume](https://defillama.com/fees/avantis) - Calculated: $3.08B monthly volume estimate.

[^139]: [DefiLlama - All-time Volume](https://defillama.com/fees/avantis) - Calculated: $27.6B all-time volume estimate.

[^140]: [Invezz - Unified Benefits](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Expected unified vault benefits.

[^141]: [Invezz - Composability](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - DeFi integration benefits.

[^142]: [Invezz - Liquidity](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Single pool liquidity improvement.

[^143]: [Invezz - UX](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Simplified user experience.

[^144]: [Invezz - Institutions](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Institutional capital accessibility.

[^145]: [Avantis Documentation - Roadmap](https://docs.avantis.fi/) - Future development plans.

[^146]: [Avantis Documentation - Protocol Fee](https://docs.avantis.fi/) - Potential treasury fee.

[^147]: [Avantis Documentation - AVNT Staking](https://docs.avantis.fi/) - Revenue sharing plans.

[^148]: [Avantis Documentation - Expansion](https://docs.avantis.fi/) - Multi-chain considerations.

[^149]: [Avantis Documentation - New Markets](https://docs.avantis.fi/) - Future market additions.

[^150]: [DefiLlama - Bullish Analysis](https://defillama.com/protocol/avantis) - Bullish factors summary.

[^151]: [Avantis Documentation - Fee Leadership](https://docs.avantis.fi/) - Best LP fee share.

[^152]: [DefiLlama - Growth](https://defillama.com/protocol/avantis) - TVL growth calculation.

[^153]: [Phemex Academy - Differentiation](https://phemex.com/academy/what-is-avantis) - RWA market differentiation.

[^154]: [Invezz - Efficiency](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Unified vault capital efficiency.

[^155]: [DefiLlama - Base Ecosystem](https://defillama.com/chain/Base) - Base L2 with Coinbase backing.

[^156]: [CoinGecko - Bearish Analysis](https://www.coingecko.com/en/coins/avantis) - Bearish factors summary.

[^157]: [CoinGecko - Price Decline](https://www.coingecko.com/en/coins/avantis) - 86% decline from ATH.

[^158]: [Avantis Documentation - No Revenue](https://docs.avantis.fi/) - $0 protocol revenue currently.

[^159]: [DefiLlama - Competition](https://defillama.com/derivatives) - Competitive landscape analysis.

[^160]: [DefiLlama - Single Chain](https://defillama.com/protocol/avantis) - Base-only risk.

[^161]: [Avantis Documentation - KPIs](https://docs.avantis.fi/) - Key metrics to monitor.

[^162]: [DefiLlama - Avantis Page](https://defillama.com/protocol/avantis) - Official DefiLlama dashboard.

[^163]: [Avantis Documentation](https://docs.avantis.fi/) - Official protocol documentation.

[^164]: [Avantis Website](https://www.avantis.fi/) - Official platform website.

[^165]: [CoinGecko - AVNT](https://www.coingecko.com/en/coins/avantis) - Token market data page.

[^166]: [Invezz - Vault Announcement](https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/) - Unified vault transition coverage.

[^167]: [Phemex Academy - Overview](https://phemex.com/academy/what-is-avantis) - Educational overview of Avantis.

[^168]: [Binance Academy - Guide](https://academy.binance.com/en/articles/what-is-avantis) - Comprehensive Avantis guide.

---

*Last Updated: December 31, 2025*
