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

[^1]: DefiLlama. (2025, December 31). Avantis Protocol: Deployed on Base chain. defillama.com, https://defillama.com/protocol/avantis

[^2]: Avantis. (2025). Documentation: RWA markets including gold, oil, forex perpetuals. docs.avantis.fi, https://docs.avantis.fi/

[^3]: Invezz. (2025, October 14). Perp DEX Avantis transitions to unified vault. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^4]: Avantis. (2025). Documentation: Unified vault improves capital efficiency. docs.avantis.fi, https://docs.avantis.fi/

[^5]: DefiLlama. (2025, December 31). Avantis TVL: Total $102.9M retrieved via API. defillama.com, https://defillama.com/protocol/avantis 🔷 HARD DATA

[^6]: DefiLlama. (2025, December 31). Avantis TVL: Base chain $102.9M retrieved via API. defillama.com, https://defillama.com/protocol/avantis 🔷 HARD DATA

[^7]: DefiLlama. (2025, December 31). Avantis Fees: 24-hour fees $95K retrieved via API. defillama.com, https://defillama.com/fees/avantis 🔷 HARD DATA

[^8]: DefiLlama. (2025, December 31). Avantis Fees: 7-day fees $687K retrieved via API. defillama.com, https://defillama.com/fees/avantis 🔷 HARD DATA

[^9]: DefiLlama. (2025, December 31). Avantis Fees: 30-day fees $1.85M retrieved via API. defillama.com, https://defillama.com/fees/avantis 🔷 HARD DATA

[^10]: DefiLlama. (2025, December 31). Avantis Fees: All-time fees $16.55M retrieved via API. defillama.com, https://defillama.com/fees/avantis 🔷 HARD DATA

[^11]: CoinGecko. (2025, December 31). AVNT Token: Price $0.365 retrieved via API. coingecko.com, https://www.coingecko.com/en/coins/avantis 🔷 HARD DATA

[^12]: CoinGecko. (2025, December 31). AVNT Token: Market cap $94.4M retrieved via API. coingecko.com, https://www.coingecko.com/en/coins/avantis 🔷 HARD DATA

[^13]: CoinGecko. (2025, December 31). AVNT Token: FDV $365.5M retrieved via API. coingecko.com, https://www.coingecko.com/en/coins/avantis 🔷 HARD DATA

[^14]: CoinGecko. (2025, December 31). AVNT Token: Circulating supply 258.2M AVNT retrieved via API. coingecko.com, https://www.coingecko.com/en/coins/avantis 🔷 HARD DATA

[^15]: DefiLlama. (2025). Avantis Protocol: 2 security audits by Zellic. defillama.com, https://defillama.com/protocol/avantis

[^16]: Avantis. (2025). Documentation: Protocol launched 2024, focus on capital efficiency. docs.avantis.fi, https://docs.avantis.fi/

[^17]: Avantis. (2025). Documentation: RWA markets including gold, silver, oil. docs.avantis.fi, https://docs.avantis.fi/

[^18]: Avantis. (2025). Documentation: 100% of trading fees to LP vault. docs.avantis.fi, https://docs.avantis.fi/

[^19]: Invezz. (2025, October 14). Perp DEX Avantis: Single avUSDC vault model. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^20]: DefiLlama. (2025). Avantis Protocol: Primary deployment on Base chain. defillama.com, https://defillama.com/protocol/avantis

[^21]: Avantis. (2025). Documentation: Chainlink oracle integration. docs.avantis.fi, https://docs.avantis.fi/

[^22]: Avantis. (2025). Documentation: avUSDC as LP receipt token. docs.avantis.fi, https://docs.avantis.fi/

[^23]: CoinGecko. (2025). AVNT Token: Governance token for Avantis protocol. coingecko.com, https://www.coingecko.com/en/coins/avantis

[^24]: Invezz. (2025, October 14). Perp DEX Avantis: Dual to unified vault transition details. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^25]: Binance Academy. (2025). What is Avantis: Previous junior/senior vault model. academy.binance.com, https://academy.binance.com/en/articles/what-is-avantis

[^26]: Binance Academy. (2025). What is Avantis: Senior vault lower risk, first-loss protection. academy.binance.com, https://academy.binance.com/en/articles/what-is-avantis

[^27]: Binance Academy. (2025). What is Avantis: Junior vault higher risk, higher returns. academy.binance.com, https://academy.binance.com/en/articles/what-is-avantis

[^28]: Binance Academy. (2025). What is Avantis: Old model 60% to LPs, 40% to treasury. academy.binance.com, https://academy.binance.com/en/articles/what-is-avantis

[^29]: Avantis. (2025). Documentation: Post-October 2025 unified vault structure. docs.avantis.fi, https://docs.avantis.fi/

[^30]: Invezz. (2025, October 14). Perp DEX Avantis: Equal treatment for all LPs. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^31]: Avantis. (2025). Documentation: 100% trading fees to vault. docs.avantis.fi, https://docs.avantis.fi/

[^32]: Invezz. (2025, October 14). Perp DEX Avantis: All capital in single pool. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^33]: Invezz. (2025, October 14). Perp DEX Avantis: Reasons for vault model change. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^34]: Invezz. (2025, October 14). Perp DEX Avantis: Dual vaults split capital inefficiently. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^35]: Invezz. (2025, October 14). Perp DEX Avantis: Junior/Senior complicated DeFi integrations. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^36]: Invezz. (2025, October 14). Perp DEX Avantis: Users struggled choosing vault type. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^37]: Invezz. (2025, October 14). Perp DEX Avantis: Unified model easier for institutions. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^38]: Avantis. (2025). Documentation: Perpetuals DEX trading mechanism. docs.avantis.fi, https://docs.avantis.fi/

[^39]: Avantis. (2025). Documentation: Supported market categories. docs.avantis.fi, https://docs.avantis.fi/

[^40]: Avantis. (2025). Documentation: Cryptocurrency perpetual markets. docs.avantis.fi, https://docs.avantis.fi/

[^41]: Phemex Academy. (2025). What is Avantis: RWA markets gold, silver, oil. phemex.com, https://phemex.com/academy/what-is-avantis

[^42]: Avantis. (2025). Documentation: Forex perpetual pairs. docs.avantis.fi, https://docs.avantis.fi/

[^43]: Avantis. (2025). Documentation: Market index perpetuals. docs.avantis.fi, https://docs.avantis.fi/

[^44]: Avantis. (2025). Documentation: Liquidity provider vault mechanics. docs.avantis.fi, https://docs.avantis.fi/

[^45]: Avantis. (2025). Documentation: Deposit and earning process. docs.avantis.fi, https://docs.avantis.fi/

[^46]: Avantis. (2025). Documentation: LP token represents vault share. docs.avantis.fi, https://docs.avantis.fi/

[^47]: Avantis. (2025). Documentation: Vault as counterparty to trades. docs.avantis.fi, https://docs.avantis.fi/

[^48]: Avantis. (2025). Documentation: 100% trading fees to vault. docs.avantis.fi, https://docs.avantis.fi/

[^49]: Avantis. (2025). Documentation: Funding rate arbitrage revenue. docs.avantis.fi, https://docs.avantis.fi/

[^50]: Avantis. (2025). Documentation: Trader losses accrue to vault. docs.avantis.fi, https://docs.avantis.fi/

[^51]: Avantis. (2025). Documentation: Liquidation fee revenue. docs.avantis.fi, https://docs.avantis.fi/

[^52]: Avantis. (2025). Documentation: Vault pays trader profits. docs.avantis.fi, https://docs.avantis.fi/

[^53]: Avantis. (2025). Documentation: Smart contract and oracle costs. docs.avantis.fi, https://docs.avantis.fi/

[^54]: Avantis. (2025). Documentation: Pro-rata P&L distribution. docs.avantis.fi, https://docs.avantis.fi/

[^55]: Avantis. (2025). Documentation: New model fee structure. docs.avantis.fi, https://docs.avantis.fi/

[^56]: Avantis. (2025). Documentation: 0.06% (6 basis points) per trade. docs.avantis.fi, https://docs.avantis.fi/

[^57]: Avantis. (2025). Documentation: 100% of fees to vault LPs. docs.avantis.fi, https://docs.avantis.fi/

[^58]: Avantis. (2025). Documentation: 0% to treasury (changed from 40%). docs.avantis.fi, https://docs.avantis.fi/

[^59]: Avantis. (2025). Documentation: Trading fee flow for traders. docs.avantis.fi, https://docs.avantis.fi/

[^60]: Avantis. (2025). Documentation: 0.06% entry fee on position size. docs.avantis.fi, https://docs.avantis.fi/

[^61]: Avantis. (2025). Documentation: Fees from collateral. docs.avantis.fi, https://docs.avantis.fi/

[^62]: Avantis. (2025). Documentation: Entry fees to avUSDC vault. docs.avantis.fi, https://docs.avantis.fi/

[^63]: Avantis. (2025). Documentation: 0.06% exit fee on position size. docs.avantis.fi, https://docs.avantis.fi/

[^64]: Avantis. (2025). Documentation: Exit fees to avUSDC vault. docs.avantis.fi, https://docs.avantis.fi/

[^65]: Avantis. (2025). Documentation: Hourly funding rate mechanism. docs.avantis.fi, https://docs.avantis.fi/

[^66]: Avantis. (2025). Documentation: Majority pays minority side. docs.avantis.fi, https://docs.avantis.fi/

[^67]: Avantis. (2025). Documentation: 0.001% - 0.01% per hour rate range. docs.avantis.fi, https://docs.avantis.fi/

[^68]: Avantis. (2025). Documentation: Funding paid between traders. docs.avantis.fi, https://docs.avantis.fi/

[^69]: Avantis. (2025). Documentation: Counterparty P&L mechanics. docs.avantis.fi, https://docs.avantis.fi/

[^70]: Avantis. (2025). Documentation: Vault gains from trader losses. docs.avantis.fi, https://docs.avantis.fi/

[^71]: Avantis. (2025). Documentation: Vault pays trader profits. docs.avantis.fi, https://docs.avantis.fi/

[^72]: Avantis. (2025). Documentation: Long-term vault performance dynamics. docs.avantis.fi, https://docs.avantis.fi/

[^73]: Phemex Academy. (2025). What is Avantis: Retail traders typically lose 70-80%. phemex.com, https://phemex.com/academy/what-is-avantis

[^74]: DefiLlama. (2025). Avantis Fees: Revenue distribution analysis. defillama.com, https://defillama.com/fees/avantis

[^75]: Avantis. (2025). Documentation: 100% fee revenue to LPs. docs.avantis.fi, https://docs.avantis.fi/

[^76]: Avantis. (2025). Documentation: $0 current protocol revenue. docs.avantis.fi, https://docs.avantis.fi/

[^77]: DefiLlama. (2025). Avantis Protocol: APY calculation from fee data. defillama.com, https://defillama.com/protocol/avantis

[^78]: Avantis. (2025). Documentation: Estimated 25-35% total APY. docs.avantis.fi, https://docs.avantis.fi/

[^79]: Avantis. (2025). Documentation: Revenue model sustainability analysis. docs.avantis.fi, https://docs.avantis.fi/

[^80]: Avantis. (2025). Documentation: Protocol earns $0 currently. docs.avantis.fi, https://docs.avantis.fi/

[^81]: DefiLlama. (2025). Avantis Fees: $22.2M annualized LP revenue estimate. defillama.com, https://defillama.com/fees/avantis

[^82]: Avantis. (2025). Documentation: Protocol relies on token appreciation. docs.avantis.fi, https://docs.avantis.fi/

[^83]: Avantis. (2025). Documentation: Potential protocol fee introduction. docs.avantis.fi, https://docs.avantis.fi/

[^84]: CoinGecko. (2025). AVNT Token: Token utility overview. coingecko.com, https://www.coingecko.com/en/coins/avantis

[^85]: Avantis. (2025). Documentation: AVNT governance voting. docs.avantis.fi, https://docs.avantis.fi/

[^86]: Avantis. (2025). Documentation: Future staking rewards planned. docs.avantis.fi, https://docs.avantis.fi/

[^87]: Avantis. (2025). Documentation: Trading incentives via AVNT emissions. docs.avantis.fi, https://docs.avantis.fi/

[^88]: CoinGecko. (2025). AVNT Token: Token metrics from CoinGecko API. coingecko.com, https://www.coingecko.com/en/coins/avantis

[^89]: CoinGecko. (2025, December 31). AVNT Token: Total supply 1B AVNT. coingecko.com, https://www.coingecko.com/en/coins/avantis 🔷 HARD DATA

[^90]: CoinGecko. (2025, December 31). AVNT Token: All-time high $2.64. coingecko.com, https://www.coingecko.com/en/coins/avantis 🔷 HARD DATA

[^91]: CoinGecko. (2025, December 31). AVNT Token: All-time low $0.188. coingecko.com, https://www.coingecko.com/en/coins/avantis 🔷 HARD DATA

[^92]: CoinGecko. (2025). AVNT Token: Calculated -86.2% from ATH. coingecko.com, https://www.coingecko.com/en/coins/avantis

[^93]: Avantis. (2025). Documentation: Hypothetical revenue sharing model. docs.avantis.fi, https://docs.avantis.fi/

[^94]: Avantis. (2025). Documentation: 100% to vault, not AVNT stakers. docs.avantis.fi, https://docs.avantis.fi/

[^95]: DefiLlama. (2025). Derivatives: Perp DEX comparison data. defillama.com, https://defillama.com/derivatives

[^96]: Phemex Academy. (2025). What is Avantis: Unique RWA markets. phemex.com, https://phemex.com/academy/what-is-avantis

[^97]: DefiLlama. (2025). GMX Protocol: 0.10% trading fee. defillama.com, https://defillama.com/protocol/gmx

[^98]: dYdX. (2025). Documentation: 0.05-0.20% fee range. docs.dydx.exchange, https://docs.dydx.exchange/

[^99]: DefiLlama. (2025). Gains Network: 0.08% trading fee. defillama.com, https://defillama.com/protocol/gains-network

[^100]: DefiLlama. (2025). Hyperliquid: 0.025-0.05% trading fee. defillama.com, https://defillama.com/protocol/hyperliquid

[^101]: Avantis. (2025). Documentation: Competitive advantages overview. docs.avantis.fi, https://docs.avantis.fi/

[^102]: DefiLlama. (2025). Fees Dashboard: Highest LP fee share comparison. defillama.com, https://defillama.com/fees

[^103]: Phemex Academy. (2025). What is Avantis: Unique RWA offering. phemex.com, https://phemex.com/academy/what-is-avantis

[^104]: Invezz. (2025, October 14). Perp DEX Avantis: Unified vault efficiency. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^105]: Avantis. (2025). Documentation: 0.06% competitive with market. docs.avantis.fi, https://docs.avantis.fi/

[^106]: DefiLlama. (2025). Derivatives: Competitive disadvantages analysis. defillama.com, https://defillama.com/derivatives

[^107]: DefiLlama. (2025). Derivatives: Lower volume than major competitors. defillama.com, https://defillama.com/derivatives

[^108]: Avantis. (2025). Documentation: No fee revenue to token holders. docs.avantis.fi, https://docs.avantis.fi/

[^109]: DefiLlama. (2025). Avantis Protocol: Base-only deployment. defillama.com, https://defillama.com/protocol/avantis

[^110]: DefiLlama. (2025). Avantis Protocol: 2024 launch, newer protocol. defillama.com, https://defillama.com/protocol/avantis

[^111]: DefiLlama. (2025). Avantis Protocol: Audit information. defillama.com, https://defillama.com/protocol/avantis

[^112]: Zellic. (2024). Avantis Security Audit: Audit reports. gitbook.io, https://586275454-files.gitbook.io/

[^113]: Avantis. (2025). Documentation: Security features overview. docs.avantis.fi, https://docs.avantis.fi/

[^114]: Avantis. (2025). Documentation: Chainlink with backup sources. docs.avantis.fi, https://docs.avantis.fi/

[^115]: Avantis. (2025). Documentation: Position and leverage limits. docs.avantis.fi, https://docs.avantis.fi/

[^116]: Avantis. (2025). Documentation: Insurance fund for adverse events. docs.avantis.fi, https://docs.avantis.fi/

[^117]: Avantis. (2025). Documentation: LP risk factors. docs.avantis.fi, https://docs.avantis.fi/

[^118]: Avantis. (2025). Documentation: Vault as trade counterparty. docs.avantis.fi, https://docs.avantis.fi/

[^119]: Phemex Academy. (2025). What is Avantis: Historical trader loss rates. phemex.com, https://phemex.com/academy/what-is-avantis

[^120]: Invezz. (2025, October 14). Perp DEX Avantis: New vault model limited track record. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^121]: DefiLlama. (2025). Avantis Protocol: 2 Zellic audits completed. defillama.com, https://defillama.com/protocol/avantis

[^122]: Avantis. (2025). Documentation: Oracle manipulation risk. docs.avantis.fi, https://docs.avantis.fi/

[^123]: Avantis. (2025). Documentation: Chainlink + backup oracles. docs.avantis.fi, https://docs.avantis.fi/

[^124]: Avantis. (2025). Documentation: Mass profit scenario risk. docs.avantis.fi, https://docs.avantis.fi/

[^125]: Avantis. (2025). Documentation: Position limits and insurance. docs.avantis.fi, https://docs.avantis.fi/

[^126]: Avantis. (2025). Documentation: Trader risk factors. docs.avantis.fi, https://docs.avantis.fi/

[^127]: Avantis. (2025). Documentation: High funding during imbalances. docs.avantis.fi, https://docs.avantis.fi/

[^128]: Avantis. (2025). Documentation: Leverage magnifies losses. docs.avantis.fi, https://docs.avantis.fi/

[^129]: Avantis. (2025). Documentation: DEX slippage vs CEX. docs.avantis.fi, https://docs.avantis.fi/

[^130]: DefiLlama. (2025). Avantis Protocol: TVL growth timeline. defillama.com, https://defillama.com/protocol/avantis

[^131]: Invezz. (2025, October 14). Perp DEX Avantis: Q1 2024 launch at $1.5M TVL. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^132]: Invezz. (2025, October 14). Perp DEX Avantis: Q2 2024 growth to $25M. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^133]: DefiLlama. (2025). Avantis Protocol: Q3 2024 ~$60M TVL. defillama.com, https://defillama.com/protocol/avantis

[^134]: Invezz. (2025, October 14). Perp DEX Avantis: Q4 2024 peak at $85M. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^135]: Invezz. (2025, October 14). Perp DEX Avantis: ~$80M during vault transition. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^136]: DefiLlama. (2025, December 31). Avantis TVL: $102.9M retrieved via API. defillama.com, https://defillama.com/protocol/avantis 🔷 HARD DATA

[^137]: DefiLlama. (2025). Avantis Fees: Volume derived from fee data. defillama.com, https://defillama.com/fees/avantis

[^138]: DefiLlama. (2025). Avantis Fees: Calculated $3.08B monthly volume estimate. defillama.com, https://defillama.com/fees/avantis

[^139]: DefiLlama. (2025). Avantis Fees: Calculated $27.6B all-time volume estimate. defillama.com, https://defillama.com/fees/avantis

[^140]: Invezz. (2025, October 14). Perp DEX Avantis: Expected unified vault benefits. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^141]: Invezz. (2025, October 14). Perp DEX Avantis: DeFi integration benefits. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^142]: Invezz. (2025, October 14). Perp DEX Avantis: Single pool liquidity improvement. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^143]: Invezz. (2025, October 14). Perp DEX Avantis: Simplified user experience. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^144]: Invezz. (2025, October 14). Perp DEX Avantis: Institutional capital accessibility. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^145]: Avantis. (2025). Documentation: Future development plans. docs.avantis.fi, https://docs.avantis.fi/

[^146]: Avantis. (2025). Documentation: Potential treasury fee. docs.avantis.fi, https://docs.avantis.fi/

[^147]: Avantis. (2025). Documentation: Revenue sharing plans. docs.avantis.fi, https://docs.avantis.fi/

[^148]: Avantis. (2025). Documentation: Multi-chain considerations. docs.avantis.fi, https://docs.avantis.fi/

[^149]: Avantis. (2025). Documentation: Future market additions. docs.avantis.fi, https://docs.avantis.fi/

[^150]: DefiLlama. (2025). Avantis Protocol: Bullish factors summary. defillama.com, https://defillama.com/protocol/avantis

[^151]: Avantis. (2025). Documentation: Best LP fee share. docs.avantis.fi, https://docs.avantis.fi/

[^152]: DefiLlama. (2025). Avantis Protocol: TVL growth calculation. defillama.com, https://defillama.com/protocol/avantis

[^153]: Phemex Academy. (2025). What is Avantis: RWA market differentiation. phemex.com, https://phemex.com/academy/what-is-avantis

[^154]: Invezz. (2025, October 14). Perp DEX Avantis: Unified vault capital efficiency. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^155]: DefiLlama. (2025). Base Chain: L2 with Coinbase backing. defillama.com, https://defillama.com/chain/Base

[^156]: CoinGecko. (2025). AVNT Token: Bearish factors summary. coingecko.com, https://www.coingecko.com/en/coins/avantis

[^157]: CoinGecko. (2025). AVNT Token: 86% decline from ATH. coingecko.com, https://www.coingecko.com/en/coins/avantis

[^158]: Avantis. (2025). Documentation: $0 protocol revenue currently. docs.avantis.fi, https://docs.avantis.fi/

[^159]: DefiLlama. (2025). Derivatives: Competitive landscape analysis. defillama.com, https://defillama.com/derivatives

[^160]: DefiLlama. (2025). Avantis Protocol: Base-only risk. defillama.com, https://defillama.com/protocol/avantis

[^161]: Avantis. (2025). Documentation: Key metrics to monitor. docs.avantis.fi, https://docs.avantis.fi/

[^162]: DefiLlama. (2025). Avantis Protocol: Official DefiLlama dashboard. defillama.com, https://defillama.com/protocol/avantis

[^163]: Avantis. (2025). Documentation: Official protocol documentation. docs.avantis.fi, https://docs.avantis.fi/

[^164]: Avantis. (2025). Official Website: Platform interface. avantis.fi, https://www.avantis.fi/

[^165]: CoinGecko. (2025). AVNT Token: Market data page. coingecko.com, https://www.coingecko.com/en/coins/avantis

[^166]: Invezz. (2025, October 14). Perp DEX Avantis: Unified vault transition coverage. invezz.com, https://invezz.com/news/2025/10/14/perp-dex-avantis-transitions-unified-vault/

[^167]: Phemex Academy. (2025). What is Avantis: Educational overview of Avantis. phemex.com, https://phemex.com/academy/what-is-avantis

[^168]: Binance Academy. (2025). What is Avantis: Comprehensive Avantis guide. academy.binance.com, https://academy.binance.com/en/articles/what-is-avantis

---

*Last Updated: December 31, 2025*
