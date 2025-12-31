**Last Updated: December 31, 2025**

# EdgeX Protocol Case Study: Comprehensive Analysis (December 2025)

## Executive Summary

EdgeX (edgeX) is a high-performance, orderbook-based perpetual DEX incubated by Amber Group[^1], built on StarkEx Layer 2 technology[^2]. Launched on mainnet in September 2024[^3], EdgeX has rapidly emerged as one of the "F4" top perpetual DEXs[^4], capturing approximately 5.5-12% market share alongside Hyperliquid, Aster, and Lighter[^5]. The platform achieves CEX-level performance (200,000 orders/second, <10ms latency)[^6] while maintaining self-custody through ZK-rollup technology[^7].

---

## Key Metrics (December 2025)

| Metric | Value | Source |
|--------|-------|--------|
| **Total Value Locked (TVL)** | $362.3M | 🔷 HARD DATA[^8] |
| **Ethereum TVL** | $343.7M | 🔷 HARD DATA[^9] |
| **Arbitrum TVL** | $18.5M | 🔷 HARD DATA[^10] |
| **BSC TVL** | $189K | 🔷 HARD DATA[^11] |
| **24-Hour Fees** | $577K | 🔷 HARD DATA[^12] |
| **7-Day Fees** | $3.99M | 🔷 HARD DATA[^13] |
| **30-Day Fees** | $39.05M | 🔷 HARD DATA[^14] |
| **All-Time Fees** | $222.6M | 🔷 HARD DATA[^15] |
| **Token Status** | TGE Pending (Q4 2025) | [^16] |
| **Maximum Leverage** | 100x | [^17] |
| **Markets Available** | 70+ | [^18] |

---

## Platform Overview

### Background & Founding

EdgeX is incubated by **Amber Group**[^19], a leading global digital asset firm:
- Founded in 2017, headquartered in Hong Kong[^20]
- Manages **$5 billion in assets**[^21]
- Serves **30+ banks and 2,000+ institutional clients**[^22]
- Fully compliant operations across multiple jurisdictions[^23]
- **$628M+ total funding** raised (Series C at $3B valuation in 2022)[^24]

### Team Composition

The EdgeX team comprises professionals from[^25]:
- **Traditional Finance**: Morgan Stanley, Barclays, Goldman Sachs[^26]
- **Crypto Exchanges**: Binance, Bybit[^27]
- **7+ years** of exchange operation and trading experience[^28]
- Top-tier technology development and security teams[^29]

---

## Technical Architecture

### StarkEx ZK-Rollup Foundation

EdgeX V1 is built on **StarkEx**[^30], StarkWare's proven ZK engine that has processed **$1.28 trillion** in cumulative trading volume since 2020[^31].

**Important Note**: EdgeX uses StarkEx (application-specific rollup), NOT StarkNet (general-purpose L2)[^32]. This is a critical distinction for understanding the technology stack.

#### Transaction Flow[^33]:
1. **Transaction Execution**: User trades executed on EdgeX, sent to StarkEx[^34]
2. **Batch Processing**: StarkEx batches transactions, forwards to SHARP (Shared Prover)[^35]
3. **Proof Generation**: SHARP generates STARK proofs validating transaction integrity[^36]
4. **On-Chain Verification**: Proofs submitted to Ethereum STARK verifier[^37]
5. **State Update**: Upon verification, state updates submitted to StarkEx smart contract[^38]

### Performance Specifications

| Specification | Value | Source |
|--------------|-------|--------|
| **Order Processing** | 200,000 orders/second | [^39] |
| **Matching Latency** | <10 milliseconds | [^40] |
| **Settlement** | Ethereum L1 finality | [^41] |
| **Cross-Chain Support** | 70+ blockchains | [^42] |

### Modular Architecture Layers[^43]

1. **Settlement Layer**: Ethereum mainnet for transaction finality and security[^44]
2. **Match Engine Layer**: High-throughput engine with advanced features (trailing TP/SL, 100x leverage)[^45]
3. **Hybrid Liquidity Layer**: Solves DeFi liquidity fragmentation[^46]
4. **Execution Layer (edgeXFlow)**: New modular layer operating parallel to StarkEx[^47]

---

## Self-Custody & Security

### Core Security Features[^48]

| Feature | Description |
|---------|-------------|
| **Asset Storage** | 95% in offline cold wallets[^49] |
| **Authentication** | 2FA via authenticator apps or SMS[^50] |
| **Audits** | Regular independent security audits[^51] |
| **Smart Contracts** | Audited, upgradeable with emergency procedures[^52] |

### User Protection Mechanisms[^53]

1. **Forced Withdrawals**: If EdgeX doesn't process withdrawals within predetermined timeframe, users can interact directly with smart contracts[^54]
2. **Frozen State**: If forced exit is ignored past deadline, system freezes, allowing merkle-proof based withdrawals[^55]
3. **Private Key Control**: Every transaction requires user's Ethereum private key approval[^56]

---

## Product Suite

### 1. Perpetual Futures (Core Product)[^57]

- **Markets**: 70+ trading pairs (BTC, ETH, SOL, BNB, etc.)[^58]
- **Leverage**: Up to 100x[^59]
- **Features**: Real-time funding rates, transparent OI metrics[^60]
- **Order Types**: Market, limit, stop-loss, take-profit, trailing TP/SL[^61]

### 2. edgeX Leverage[^62]

Diversified leveraged products including:
- **US Stocks**: Leveraged exposure to equities[^63]
- **Forex**: Currency pair trading[^64]
- **Commodity Futures**: 3X/5X leverage products[^65]
- **ETF Indices**: Leveraged index products[^66]

### 3. edgeX Insurance[^67]

Innovative liquidation protection:
- **2x Compensation**: Double payout if insurance is triggered by liquidation[^68]
- **Risk Reduction**: Significantly reduces user loss exposure[^69]
- **Premium-Based**: Users purchase coverage for their positions[^70]

### 4. eLP Vault (Liquidity Provider Vault)[^71]

| Metric | Value |
|--------|-------|
| **Record Revenue** | $3.934M (single day - Oct 11, 2025)[^72] |
| **Record Yield** | 3.08% (single day)[^73] |
| **Cumulative P&L** | $7.434 million[^74] |
| **Annualized Return** | ~57% (based on September performance)[^75] |
| **Redemption Lock-up** | Maximum 2 days[^76] |

**Revenue Sources**[^77]:
- Passive market-making profits
- Liquidation fees
- Platform trading fee share

**eLP Token**: Liquidity providers receive tokenized shares, tradeable on secondary markets[^78].

### 5. edgeX Epool (B2B Product)[^79]

- Institutional-focused asset management
- Liquidity services to multiple derivatives platforms
- Revenue sharing with token holders and depositors

### 6. edgeX Lend[^80]

- Integration with Aave, Compound[^81]
- Asset combination for yield maximization
- Capital efficiency optimization

### 7. Telegram Bot[^82]

- TON ecosystem integration
- Multi-chain trading support
- MEME token and emerging asset trading
- Interoperable with main EdgeX platform

---

## Polymarket Partnership[^83]

### Strategic Integration

EdgeX has formed a **strategic partnership with Polymarket** to integrate prediction markets[^84]:

| Feature | Details |
|---------|---------|
| **Integration** | Polymarket prediction markets in edgeX mobile app[^85] |
| **Access** | Single-click participation in prediction events[^86] |
| **New Products** | Joint development of leveraged prediction products[^87] |
| **Unified Interface** | Derivatives trading + prediction markets combined[^88] |

### Significance[^89]

- Addresses gap between prediction markets and sophisticated trading tools
- Signals trend toward DeFi specialization and collaboration
- Future products may become key edgeXFlow ecosystem projects

---

## Airdrop Campaigns & Points System

### Points Program History[^90]

#### Season 1: Points Alpha Season (December 2024 - May 2025)[^91]
- Initial points program launch
- Relatively stagnant deposits/volume
- Concluded with points distribution (no token airdrop)
- NFT rewards for top performers

#### Season 2: Open Season (June 2025 - Present)[^92]
- **Launched**: June 2025
- **Result**: 1,000%+ deposit growth in July (to $100M+)[^93]
- **Record Volume**: $13B+ in July, $1B+ daily peak[^94]

### Points Allocation Structure[^95]

| Activity | Weight |
|----------|--------|
| **Trading Volume** | 60% |
| **Referrals & Ambassadors** | 20% |
| **Events & Participation** | 20% |

### Earning Mechanics[^96]

- **Base Rate**: 1 Point per $1 traded
- **Conversion**: Points convert 1:1 to EdgeX tokens at TGE[^97]
- **Referral Bonus**: 1 point earned for every 5 points referred users collect
- **Weekly Snapshots**: Tuesday 23:59 UTC
- **Distribution**: Wednesday 08:00 UTC

### NFT Rewards (Season 1)[^98]

| Tier | Requirement | Benefits |
|------|-------------|----------|
| **High Volume Trader** | $25M+ trading volume | Token allocation, 35% fee rebate |
| **Top Referrer** | $50M+ referral volume | Token allocation, 35% fee rebate |
| **Core Community** | Active participation | Special benefits |

---

## Token Generation Event (TGE)[^99]

### Timeline

| Milestone | Status |
|-----------|--------|
| **Expected TGE** | Q4 2025[^100] |
| **Token Name Vote** | Launched October 28, 2025[^101] |
| **Symbol (Speculated)** | EX (unconfirmed)[^102] |

### Tokenomics (Anticipated)[^103]

| Metric | Projected Value |
|--------|-----------------|
| **FDV at Launch** | $2-2.4 billion[^104] |
| **Points Holder Allocation** | 20-35% of supply[^105] |
| **Unlocked Distribution** | 25% of supply[^106] |
| **VC Pre-allocation** | None (community-first model)[^107] |

### Unique Characteristics[^108]

- **No early VC allocation**: Rare community-first approach
- **Points-based distribution**: Rewards actual platform usage
- **Weekly distribution**: Transparent, ongoing accumulation

---

## Revenue Model & Dollar Flow Analysis

### Fee Structure[^109]

| Fee Type | Rate | Distribution |
|----------|------|--------------|
| **Trading Fees** | 0.05-0.1% per trade | Protocol + LPs |
| **Funding Rates** | Variable | Trader-to-trader |
| **Liquidation Fees** | 5-10% of position | Liquidators + Insurance |

### Revenue Calculation (December 2025)[^110]

Based on DefiLlama API data 🔷 HARD DATA:

```
Step 1: Fees from DefiLlama API
  - 30-day fees: $39.05M [^14]
  - Annualized: $39.05M × 12 = $468.6M

Step 2: Revenue split (estimated)
  - DefiLlama shows ~70% of fees go to revenue
  - 30-day revenue estimate: $39.05M × 0.7 = $27.3M
  - Annualized revenue: $27.3M × 12 = $327.6M

Step 3: Distribution (estimated)
  - Protocol Treasury: 40-60% = $131-197M annually
  - Liquidity Providers (eLP): 30-40% = $98-131M annually
  - Insurance Fund: 5-10% = $16-33M annually

RESULT: ~$130-200M annual protocol revenue at current volumes
```

### Revenue Distribution[^111]

Based on recent performance ($27.3M monthly revenue estimate):

| Recipient | Estimated Share | Monthly Estimate |
|-----------|-----------------|------------------|
| **Protocol Treasury** | 40-60% | $11-16M |
| **Liquidity Providers (eLP)** | 30-40% | $8-11M |
| **Insurance Fund** | 5-10% | $1-3M |
| **Market Makers** | Variable rebates | Performance-based |

### Performance Comparison[^112]

| Protocol | 30-Day Fees |
|----------|-------------|
| **edgeX** | $39.05M 🔷 HARD DATA |
| **GMX** | ~$2.5M |
| **dYdX** | ~$1.3M |

---

## Competitive Landscape

### "F4" Perp DEX Market (December 2025)[^113]

| Platform | Open Interest Share | Key Differentiator |
|----------|---------------------|-------------------|
| **Hyperliquid** | ~50%[^114] | First-mover, largest liquidity |
| **Aster** | ~20%[^115] | Binance-backed, rapid growth |
| **Lighter** | ~10%[^116] | Volume leader, efficiency |
| **edgeX** | ~5.5-12%[^117] | Institutional focus, StarkEx |

*Note: The F4 control ~85% of total Perp DEX market*[^118]

### EdgeX's Strategic Positioning[^119]

- **Target Markets**: Asia, institutional users, conservative traders
- **Expected Market Share Goal**: 10-15%
- **Focus**: Sustainable, profitable niche rather than volume dominance

### Vault TVL Comparison (December 2025)[^120]

| Vault | TVL |
|-------|-----|
| **Hyperliquid HLP** | $628M |
| **Lighter LLP** | $503M |
| **edgeX eLP** | ~$147M |

---

## Risk Analysis

### Protocol Risks[^121]

| Risk Type | Mitigation |
|-----------|------------|
| **Smart Contract** | Regular audits, upgradeable architecture |
| **Oracle Failure** | Multiple sources, failsafe mechanisms |
| **Liquidation Cascades** | Insurance fund, circuit breakers |
| **Economic Exploits** | Dynamic risk parameters, position limits |

### Operational Risks[^122]

| Risk Type | Mitigation |
|-----------|------------|
| **Keeper Failures** | Redundant systems |
| **Gas Spikes** | L2 batching, efficient execution |
| **Network Congestion** | StarkEx scalability |

### Market Risks[^123]

| Risk Type | Notes |
|-----------|-------|
| **Counterparty** | Shared via eLP vault mechanism |
| **Volatility** | High-leverage exposure for traders |
| **Liquidity** | Addressed via hybrid liquidity layer |

---

## Future Roadmap

### V2 Development[^124]

EdgeX is upgrading from **perp app rollup (V1)** to **high-performance financial chain (V2)**:

| Feature | Description |
|---------|-------------|
| **Unified Accounts** | Q4 2025 launch[^125] |
| **Yield-Bearing Collateral** | Capital efficiency improvement |
| **Permissionless Liquidity** | Open infrastructure |
| **Modular Architecture** | Plug-and-play modules for trading, liquidity, lending, insurance |

### Ecosystem Vision[^126]

edgeX aims to become a **financial settlement chain** offering:
- Trading modules
- Liquidity infrastructure
- Lending services
- Insurance products
- Customizable UI/UX
- Wallet integrations

---

## Investment Considerations

### Bullish Factors[^127]

1. **Strong Backing**: Amber Group's $5B AUM and institutional relationships
2. **Technical Excellence**: CEX-level performance with self-custody
3. **Revenue Generation**: Consistent $27M+ monthly revenue estimate
4. **Community-First Token**: No VC pre-allocation
5. **Diversified Products**: Beyond perps to leverage, insurance, lending
6. **Strategic Partnerships**: Polymarket integration expands use cases

### Bearish Factors[^128]

1. **Competition**: Hyperliquid's 50% dominance, Aster's rapid growth
2. **Token Uncertainty**: TGE timeline and final tokenomics unclear
3. **Market Dependence**: Revenue highly correlated to trading volume
4. **Regulatory Risk**: Leverage products may face scrutiny
5. **Execution Risk**: V2 transition complexity

### Key Metrics to Monitor[^129]

- Weekly points distribution and participation rates
- eLP vault performance and TVL growth
- Open interest ratio vs. competitors
- TGE announcement and tokenomics details
- V2 development progress

---

## Data Sources

### Primary APIs (🔷 HARD DATA)

- **DefiLlama TVL**: `api.llama.fi/protocol/edgex` - TVL $362.3M[^8]
- **DefiLlama Fees**: `api.llama.fi/summary/fees/edgex` - 30d fees $39.05M[^14]
- **CoinGecko**: Token not launched (TGE pending Q4 2025)[^16]

### Documentation & Official Sources

- [DefiLlama - edgeX](https://defillama.com/protocol/edgex)[^130]
- [edgeX Documentation](https://edgex-1.gitbook.io/edgeX-documentation)[^131]
- [edgeX Official Website](https://www.edgex.exchange/)[^132]
- [L2BEAT - EdgeX](https://l2beat.com/scaling/projects/edgex)[^133]

### News & Analysis

- [GlobeNewswire - EdgeX Mainnet Launch](https://www.globenewswire.com/news-release/2024/10/03/2957743/0/en/EdgeX-Exchange-The-Disruptor-Of-The-Centralized-Derivatives-Trading-Landscape-Launches-On-The-Mainnet.html)[^134]
- [PANews - Perp DEX Analysis](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0)[^135]
- [OAK Research - Perp DEX Airdrops](https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025)[^136]
- [CoinBureau - EdgeX Exchange Guide](https://coinbureau.com/review/what-is-edgex-exchange/)[^137]
- [DL News - EdgeX Deposits](https://www.dlnews.com/articles/defi/hyperliquid-competitor-edgex-nabs-100m-with-airdrop-promise/)[^138]
- [CryptoRank - edgeX Polymarket](https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading)[^139]

---

## Footnotes

[^1]: [Amber Group](https://www.ambergroup.io/) - EdgeX incubator, $5B AUM digital asset firm founded 2017.

[^2]: [StarkWare - StarkEx](https://starkware.co/starkex/) - ZK-rollup technology powering EdgeX's Layer 2 infrastructure.

[^3]: [GlobeNewswire - EdgeX Mainnet Launch](https://www.globenewswire.com/news-release/2024/10/03/2957743/0/en/EdgeX-Exchange-The-Disruptor-Of-The-Centralized-Derivatives-Trading-Landscape-Launches-On-The-Mainnet.html) - September 2024 mainnet announcement.

[^4]: [PANews - F4 Perp DEX Analysis](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0) - Analysis of top 4 perpetual DEXs market structure.

[^5]: [PANews - Market Share Analysis](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0) - EdgeX captures 5.5-12% of perp DEX market share.

[^6]: [edgeX Documentation - Performance](https://edgex-1.gitbook.io/edgeX-documentation) - 200,000 orders/second throughput specification.

[^7]: [L2BEAT - EdgeX](https://l2beat.com/scaling/projects/edgex) - ZK-rollup self-custody architecture details.

[^8]: [DefiLlama - EdgeX TVL](https://defillama.com/protocol/edgex) - 🔷 HARD DATA: Total TVL $362.3M retrieved via DefiLlama API (December 31, 2025).

[^9]: [DefiLlama - EdgeX TVL](https://defillama.com/protocol/edgex) - 🔷 HARD DATA: Ethereum TVL $343.7M retrieved via DefiLlama API (December 31, 2025).

[^10]: [DefiLlama - EdgeX TVL](https://defillama.com/protocol/edgex) - 🔷 HARD DATA: Arbitrum TVL $18.5M retrieved via DefiLlama API (December 31, 2025).

[^11]: [DefiLlama - EdgeX TVL](https://defillama.com/protocol/edgex) - 🔷 HARD DATA: BSC TVL $189K retrieved via DefiLlama API (December 31, 2025).

[^12]: [DefiLlama - EdgeX Fees](https://defillama.com/fees/edgex) - 🔷 HARD DATA: 24-hour fees $577K retrieved via DefiLlama API (December 31, 2025).

[^13]: [DefiLlama - EdgeX Fees](https://defillama.com/fees/edgex) - 🔷 HARD DATA: 7-day fees $3.99M retrieved via DefiLlama API (December 31, 2025).

[^14]: [DefiLlama - EdgeX Fees](https://defillama.com/fees/edgex) - 🔷 HARD DATA: 30-day fees $39.05M retrieved via DefiLlama API (December 31, 2025).

[^15]: [DefiLlama - EdgeX Fees](https://defillama.com/fees/edgex) - 🔷 HARD DATA: All-time fees $222.6M retrieved via DefiLlama API (December 31, 2025).

[^16]: [DropsTab - EdgeX TGE](https://dropstab.com/coins/edgex-exchange) - Token Generation Event expected Q4 2025, not yet on CoinGecko.

[^17]: [edgeX Documentation - Trading](https://edgex-1.gitbook.io/edgeX-documentation) - Maximum leverage 100x on perpetual contracts.

[^18]: [edgeX Official Website](https://www.edgex.exchange/) - 70+ trading markets available.

[^19]: [Amber Group - About](https://www.ambergroup.io/about) - EdgeX incubator company information.

[^20]: [Amber Group - History](https://www.ambergroup.io/about) - Founded 2017, headquartered in Hong Kong.

[^21]: [Amber Group - AUM](https://www.ambergroup.io/) - $5 billion assets under management.

[^22]: [Amber Group - Clients](https://www.ambergroup.io/) - Serves 30+ banks and 2,000+ institutional clients.

[^23]: [Amber Group - Compliance](https://www.ambergroup.io/about) - Multi-jurisdictional compliance operations.

[^24]: [CoinBureau - Amber Group Funding](https://coinbureau.com/review/what-is-edgex-exchange/) - $628M+ total funding, Series C at $3B valuation (2022).

[^25]: [edgeX Documentation - Team](https://edgex-1.gitbook.io/edgeX-documentation) - Team composition overview.

[^26]: [CoinBureau - EdgeX Team](https://coinbureau.com/review/what-is-edgex-exchange/) - Team members from Morgan Stanley, Barclays, Goldman Sachs.

[^27]: [CoinBureau - EdgeX Team](https://coinbureau.com/review/what-is-edgex-exchange/) - Team members from Binance, Bybit.

[^28]: [edgeX Documentation - Experience](https://edgex-1.gitbook.io/edgeX-documentation) - 7+ years exchange operation experience.

[^29]: [edgeX Documentation - Team](https://edgex-1.gitbook.io/edgeX-documentation) - Technology and security team credentials.

[^30]: [StarkWare - StarkEx](https://starkware.co/starkex/) - StarkEx ZK-rollup technology documentation.

[^31]: [StarkWare - Statistics](https://starkware.co/starkex/) - $1.28 trillion cumulative trading volume since 2020.

[^32]: [L2BEAT - EdgeX Technology](https://l2beat.com/scaling/projects/edgex) - EdgeX uses StarkEx (app-specific), NOT StarkNet (general L2).

[^33]: [edgeX Documentation - Architecture](https://edgex-1.gitbook.io/edgeX-documentation) - Transaction flow architecture.

[^34]: [edgeX Documentation - Execution](https://edgex-1.gitbook.io/edgeX-documentation) - Transaction execution to StarkEx process.

[^35]: [StarkWare - SHARP](https://starkware.co/sharp/) - Shared Prover (SHARP) batch processing.

[^36]: [StarkWare - STARK Proofs](https://starkware.co/stark/) - STARK proof generation process.

[^37]: [L2BEAT - Verification](https://l2beat.com/scaling/projects/edgex) - Ethereum on-chain STARK verification.

[^38]: [edgeX Documentation - Settlement](https://edgex-1.gitbook.io/edgeX-documentation) - State update submission to smart contract.

[^39]: [edgeX Documentation - Performance](https://edgex-1.gitbook.io/edgeX-documentation) - 200,000 orders/second processing capacity.

[^40]: [edgeX Documentation - Latency](https://edgex-1.gitbook.io/edgeX-documentation) - <10 milliseconds matching latency.

[^41]: [L2BEAT - Settlement](https://l2beat.com/scaling/projects/edgex) - Ethereum L1 finality for settlements.

[^42]: [edgeX Official Website](https://www.edgex.exchange/) - 70+ blockchain cross-chain support.

[^43]: [edgeX Documentation - Architecture](https://edgex-1.gitbook.io/edgeX-documentation) - Modular architecture layer description.

[^44]: [L2BEAT - Settlement Layer](https://l2beat.com/scaling/projects/edgex) - Ethereum mainnet settlement details.

[^45]: [edgeX Documentation - Match Engine](https://edgex-1.gitbook.io/edgeX-documentation) - Match engine layer specifications.

[^46]: [edgeX Documentation - Liquidity](https://edgex-1.gitbook.io/edgeX-documentation) - Hybrid liquidity layer design.

[^47]: [edgeX Documentation - edgeXFlow](https://edgex-1.gitbook.io/edgeX-documentation) - Execution layer parallel to StarkEx.

[^48]: [edgeX Documentation - Security](https://edgex-1.gitbook.io/edgeX-documentation) - Core security features overview.

[^49]: [edgeX Documentation - Cold Storage](https://edgex-1.gitbook.io/edgeX-documentation) - 95% assets in offline cold wallets.

[^50]: [edgeX Documentation - 2FA](https://edgex-1.gitbook.io/edgeX-documentation) - Two-factor authentication implementation.

[^51]: [edgeX Documentation - Audits](https://edgex-1.gitbook.io/edgeX-documentation) - Regular independent security audit schedule.

[^52]: [L2BEAT - Smart Contracts](https://l2beat.com/scaling/projects/edgex) - Audited, upgradeable smart contract architecture.

[^53]: [edgeX Documentation - User Protection](https://edgex-1.gitbook.io/edgeX-documentation) - User protection mechanism overview.

[^54]: [L2BEAT - Forced Withdrawals](https://l2beat.com/scaling/projects/edgex) - Forced withdrawal mechanism details.

[^55]: [L2BEAT - Frozen State](https://l2beat.com/scaling/projects/edgex) - Merkle-proof withdrawal in frozen state.

[^56]: [edgeX Documentation - Key Control](https://edgex-1.gitbook.io/edgeX-documentation) - Private key control requirement for transactions.

[^57]: [edgeX Official Website - Perpetuals](https://www.edgex.exchange/) - Perpetual futures product overview.

[^58]: [edgeX Official Website - Markets](https://www.edgex.exchange/) - 70+ trading pair availability.

[^59]: [edgeX Documentation - Leverage](https://edgex-1.gitbook.io/edgeX-documentation) - Up to 100x leverage specification.

[^60]: [edgeX Official Website - Features](https://www.edgex.exchange/) - Real-time funding rates and OI metrics.

[^61]: [edgeX Documentation - Order Types](https://edgex-1.gitbook.io/edgeX-documentation) - Available order types including trailing TP/SL.

[^62]: [edgeX Documentation - Leverage Products](https://edgex-1.gitbook.io/edgeX-documentation) - edgeX Leverage product suite.

[^63]: [edgeX Documentation - Stocks](https://edgex-1.gitbook.io/edgeX-documentation) - US stocks leveraged exposure.

[^64]: [edgeX Documentation - Forex](https://edgex-1.gitbook.io/edgeX-documentation) - Forex currency pair trading.

[^65]: [edgeX Documentation - Commodities](https://edgex-1.gitbook.io/edgeX-documentation) - 3X/5X commodity futures products.

[^66]: [edgeX Documentation - ETFs](https://edgex-1.gitbook.io/edgeX-documentation) - Leveraged ETF index products.

[^67]: [edgeX Documentation - Insurance](https://edgex-1.gitbook.io/edgeX-documentation) - edgeX Insurance product overview.

[^68]: [edgeX Documentation - 2x Compensation](https://edgex-1.gitbook.io/edgeX-documentation) - Double payout on liquidation trigger.

[^69]: [edgeX Documentation - Risk Reduction](https://edgex-1.gitbook.io/edgeX-documentation) - Loss exposure reduction mechanism.

[^70]: [edgeX Documentation - Premiums](https://edgex-1.gitbook.io/edgeX-documentation) - Premium-based coverage purchase.

[^71]: [edgeX Documentation - eLP Vault](https://edgex-1.gitbook.io/edgeX-documentation) - Liquidity provider vault overview.

[^72]: [Phemex - eLP Record Revenue](https://phemex.com/news/article/edgex-elp-vault-achieves-record-revenue-and-yield-on-major-liquidation-day-26202) - $3.934M single day record (October 11, 2025).

[^73]: [Phemex - eLP Record Yield](https://phemex.com/news/article/edgex-elp-vault-achieves-record-revenue-and-yield-on-major-liquidation-day-26202) - 3.08% single day yield record.

[^74]: [Phemex - eLP Cumulative P&L](https://phemex.com/news/article/edgex-elp-vault-achieves-record-revenue-and-yield-on-major-liquidation-day-26202) - $7.434 million cumulative profit.

[^75]: [PANews - eLP Returns](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0) - ~57% annualized return estimate.

[^76]: [edgeX Documentation - Redemption](https://edgex-1.gitbook.io/edgeX-documentation) - Maximum 2-day redemption lock-up.

[^77]: [edgeX Documentation - eLP Revenue](https://edgex-1.gitbook.io/edgeX-documentation) - Revenue sources for liquidity providers.

[^78]: [edgeX Documentation - eLP Token](https://edgex-1.gitbook.io/edgeX-documentation) - Tokenized LP shares tradeable on secondary markets.

[^79]: [edgeX Documentation - Epool](https://edgex-1.gitbook.io/edgeX-documentation) - B2B institutional asset management product.

[^80]: [edgeX Documentation - Lend](https://edgex-1.gitbook.io/edgeX-documentation) - edgeX Lend product overview.

[^81]: [edgeX Documentation - DeFi Integration](https://edgex-1.gitbook.io/edgeX-documentation) - Aave and Compound integration.

[^82]: [edgeX Documentation - Telegram](https://edgex-1.gitbook.io/edgeX-documentation) - Telegram bot and TON ecosystem integration.

[^83]: [CryptoRank - Polymarket Partnership](https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading) - Strategic partnership announcement.

[^84]: [CryptoRank - Integration Details](https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading) - Polymarket integration in EdgeX.

[^85]: [CryptoRank - Mobile Integration](https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading) - Prediction markets in mobile app.

[^86]: [CryptoRank - Single-Click Access](https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading) - Simplified prediction event participation.

[^87]: [CryptoRank - Joint Products](https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading) - Leveraged prediction product development.

[^88]: [CryptoRank - Unified Interface](https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading) - Combined derivatives and prediction trading.

[^89]: [CryptoRank - Partnership Significance](https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading) - DeFi specialization and collaboration trend.

[^90]: [Airdrops.io - EdgeX Points](https://airdrops.io/edgex/) - Points program history overview.

[^91]: [OAK Research - Season 1](https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025) - Alpha Season December 2024 - May 2025.

[^92]: [OAK Research - Season 2](https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025) - Open Season launch June 2025.

[^93]: [DL News - Deposit Growth](https://www.dlnews.com/articles/defi/hyperliquid-competitor-edgex-nabs-100m-with-airdrop-promise/) - 1,000%+ deposit growth to $100M+.

[^94]: [DL News - Volume Records](https://www.dlnews.com/articles/defi/hyperliquid-competitor-edgex-nabs-100m-with-airdrop-promise/) - $13B+ July volume, $1B+ daily peak.

[^95]: [Airdrops.io - Allocation Structure](https://airdrops.io/edgex/) - Points allocation breakdown by activity.

[^96]: [Airdrops.io - Earning Mechanics](https://airdrops.io/edgex/) - Point earning and distribution mechanics.

[^97]: [DropsTab - Token Conversion](https://dropstab.com/coins/edgex-exchange) - 1:1 points to token conversion at TGE.

[^98]: [OAK Research - NFT Rewards](https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025) - Season 1 NFT tier benefits.

[^99]: [DropsTab - TGE Overview](https://dropstab.com/coins/edgex-exchange) - Token generation event details.

[^100]: [DropsTab - TGE Timeline](https://dropstab.com/coins/edgex-exchange) - Q4 2025 expected TGE.

[^101]: [edgeX Twitter](https://twitter.com/edgeX_exchange) - Token name vote launched October 28, 2025.

[^102]: [DropsTab - Token Symbol](https://dropstab.com/coins/edgex-exchange) - EX symbol speculation (unconfirmed).

[^103]: [OAK Research - Tokenomics](https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025) - Anticipated tokenomics structure.

[^104]: [OAK Research - FDV Projection](https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025) - $2-2.4B FDV estimate at launch.

[^105]: [OAK Research - Points Allocation](https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025) - 20-35% supply to points holders.

[^106]: [OAK Research - Unlocked Supply](https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025) - 25% unlocked at distribution.

[^107]: [CoinBureau - No VC Pre-allocation](https://coinbureau.com/review/what-is-edgex-exchange/) - Community-first model with no early VC allocation.

[^108]: [OAK Research - Unique Characteristics](https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025) - Token distribution unique features.

[^109]: [edgeX Documentation - Fee Structure](https://edgex-1.gitbook.io/edgeX-documentation) - Trading and liquidation fee rates.

[^110]: [DefiLlama - Fee Calculation](https://defillama.com/fees/edgex) - Revenue calculation methodology using API data.

[^111]: [edgeX Documentation - Revenue Distribution](https://edgex-1.gitbook.io/edgeX-documentation) - Revenue allocation to stakeholders.

[^112]: [DefiLlama - Protocol Comparison](https://defillama.com/fees) - 30-day fee comparison across perp DEXs.

[^113]: [PANews - F4 Market](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0) - F4 perp DEX market structure December 2025.

[^114]: [PANews - Hyperliquid Share](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0) - Hyperliquid ~50% open interest share.

[^115]: [PANews - Aster Share](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0) - Aster ~20% open interest share.

[^116]: [PANews - Lighter Share](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0) - Lighter ~10% open interest share.

[^117]: [PANews - EdgeX Share](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0) - EdgeX ~5.5-12% open interest share.

[^118]: [PANews - F4 Dominance](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0) - F4 control ~85% of total perp DEX market.

[^119]: [CoinBureau - Strategic Positioning](https://coinbureau.com/review/what-is-edgex-exchange/) - EdgeX target markets and strategy.

[^120]: [PANews - Vault Comparison](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0) - LP vault TVL comparison across protocols.

[^121]: [L2BEAT - Protocol Risks](https://l2beat.com/scaling/projects/edgex) - Smart contract and oracle risk assessment.

[^122]: [L2BEAT - Operational Risks](https://l2beat.com/scaling/projects/edgex) - Keeper and network risk assessment.

[^123]: [edgeX Documentation - Market Risks](https://edgex-1.gitbook.io/edgeX-documentation) - Counterparty and volatility risk details.

[^124]: [edgeX Documentation - V2 Roadmap](https://edgex-1.gitbook.io/edgeX-documentation) - V2 development feature overview.

[^125]: [edgeX Documentation - Unified Accounts](https://edgex-1.gitbook.io/edgeX-documentation) - Q4 2025 unified accounts launch.

[^126]: [edgeX Documentation - Ecosystem Vision](https://edgex-1.gitbook.io/edgeX-documentation) - Financial settlement chain vision.

[^127]: [CoinBureau - Bullish Factors](https://coinbureau.com/review/what-is-edgex-exchange/) - Investment bullish considerations.

[^128]: [CoinBureau - Bearish Factors](https://coinbureau.com/review/what-is-edgex-exchange/) - Investment bearish considerations.

[^129]: [PANews - Metrics to Monitor](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0) - Key performance indicators for EdgeX.

[^130]: [DefiLlama - EdgeX Protocol Page](https://defillama.com/protocol/edgex) - Official DefiLlama protocol dashboard.

[^131]: [edgeX Documentation](https://edgex-1.gitbook.io/edgeX-documentation) - Official protocol documentation.

[^132]: [edgeX Official Website](https://www.edgex.exchange/) - Main platform website.

[^133]: [L2BEAT - EdgeX](https://l2beat.com/scaling/projects/edgex) - L2 scaling project analysis.

[^134]: [GlobeNewswire - Mainnet Launch](https://www.globenewswire.com/news-release/2024/10/03/2957743/0/en/EdgeX-Exchange-The-Disruptor-Of-The-Centralized-Derivatives-Trading-Landscape-Launches-On-The-Mainnet.html) - Official mainnet launch announcement.

[^135]: [PANews - Perp DEX Analysis](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0) - Comprehensive perp DEX market analysis.

[^136]: [OAK Research - Airdrop Guide](https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025) - Perp DEX airdrop farming guide 2025.

[^137]: [CoinBureau - Exchange Guide](https://coinbureau.com/review/what-is-edgex-exchange/) - Comprehensive EdgeX exchange review.

[^138]: [DL News - EdgeX Deposits](https://www.dlnews.com/articles/defi/hyperliquid-competitor-edgex-nabs-100m-with-airdrop-promise/) - Coverage of $100M deposit milestone.

[^139]: [CryptoRank - Polymarket Partnership](https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading) - Polymarket integration announcement coverage.

---

*Last Updated: December 31, 2025*
