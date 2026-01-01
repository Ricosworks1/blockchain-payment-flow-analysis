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

[^1]: Amber Group. (2025). EdgeX incubator: $5B AUM digital asset firm founded 2017. ambergroup.io, https://www.ambergroup.io/

[^2]: StarkWare. (2025). StarkEx: ZK-rollup technology powering EdgeX's Layer 2 infrastructure. starkware.co, https://starkware.co/starkex/

[^3]: GlobeNewswire. (2024, October 3). EdgeX Exchange launches on mainnet: The disruptor of the centralized derivatives trading landscape. globenewswire.com, https://www.globenewswire.com/news-release/2024/10/03/2957743/0/en/EdgeX-Exchange-The-Disruptor-Of-The-Centralized-Derivatives-Trading-Landscape-Launches-On-The-Mainnet.html

[^4]: PANews. (2025, December). F4 Perp DEX Analysis: Top 4 perpetual DEXs market structure. panewslab.com, https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0

[^5]: PANews. (2025, December). Market Share Analysis: EdgeX captures 5.5-12% of perp DEX market share. panewslab.com, https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0

[^6]: edgeX. (2025). Documentation: 200,000 orders/second throughput specification. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^7]: L2BEAT. (2025). EdgeX: ZK-rollup self-custody architecture details. l2beat.com, https://l2beat.com/scaling/projects/edgex

[^8]: DefiLlama. (2025, December 31). EdgeX TVL: Total $362.3M retrieved via API. defillama.com, https://defillama.com/protocol/edgex 🔷 HARD DATA

[^9]: DefiLlama. (2025, December 31). EdgeX TVL: Ethereum $343.7M retrieved via API. defillama.com, https://defillama.com/protocol/edgex 🔷 HARD DATA

[^10]: DefiLlama. (2025, December 31). EdgeX TVL: Arbitrum $18.5M retrieved via API. defillama.com, https://defillama.com/protocol/edgex 🔷 HARD DATA

[^11]: DefiLlama. (2025, December 31). EdgeX TVL: BSC $189K retrieved via API. defillama.com, https://defillama.com/protocol/edgex 🔷 HARD DATA

[^12]: DefiLlama. (2025, December 31). EdgeX Fees: 24-hour fees $577K retrieved via API. defillama.com, https://defillama.com/fees/edgex 🔷 HARD DATA

[^13]: DefiLlama. (2025, December 31). EdgeX Fees: 7-day fees $3.99M retrieved via API. defillama.com, https://defillama.com/fees/edgex 🔷 HARD DATA

[^14]: DefiLlama. (2025, December 31). EdgeX Fees: 30-day fees $39.05M retrieved via API. defillama.com, https://defillama.com/fees/edgex 🔷 HARD DATA

[^15]: DefiLlama. (2025, December 31). EdgeX Fees: All-time fees $222.6M retrieved via API. defillama.com, https://defillama.com/fees/edgex 🔷 HARD DATA

[^16]: DropsTab. (2025). EdgeX TGE: Token Generation Event expected Q4 2025, not yet on CoinGecko. dropstab.com, https://dropstab.com/coins/edgex-exchange

[^17]: edgeX. (2025). Documentation: Maximum leverage 100x on perpetual contracts. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^18]: edgeX. (2025). Official Website: 70+ trading markets available. edgex.exchange, https://www.edgex.exchange/

[^19]: Amber Group. (2025). About: EdgeX incubator company information. ambergroup.io, https://www.ambergroup.io/about

[^20]: Amber Group. (2025). History: Founded 2017, headquartered in Hong Kong. ambergroup.io, https://www.ambergroup.io/about

[^21]: Amber Group. (2025). AUM: $5 billion assets under management. ambergroup.io, https://www.ambergroup.io/

[^22]: Amber Group. (2025). Clients: Serves 30+ banks and 2,000+ institutional clients. ambergroup.io, https://www.ambergroup.io/

[^23]: Amber Group. (2025). Compliance: Multi-jurisdictional compliance operations. ambergroup.io, https://www.ambergroup.io/about

[^24]: CoinBureau. (2025). Amber Group Funding: $628M+ total funding, Series C at $3B valuation (2022). coinbureau.com, https://coinbureau.com/review/what-is-edgex-exchange/

[^25]: edgeX. (2025). Documentation: Team composition overview. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^26]: CoinBureau. (2025). EdgeX Team: Members from Morgan Stanley, Barclays, Goldman Sachs. coinbureau.com, https://coinbureau.com/review/what-is-edgex-exchange/

[^27]: CoinBureau. (2025). EdgeX Team: Members from Binance, Bybit. coinbureau.com, https://coinbureau.com/review/what-is-edgex-exchange/

[^28]: edgeX. (2025). Documentation: 7+ years exchange operation experience. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^29]: edgeX. (2025). Documentation: Technology and security team credentials. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^30]: StarkWare. (2025). StarkEx: ZK-rollup technology documentation. starkware.co, https://starkware.co/starkex/

[^31]: StarkWare. (2025). Statistics: $1.28 trillion cumulative trading volume since 2020. starkware.co, https://starkware.co/starkex/

[^32]: L2BEAT. (2025). EdgeX Technology: Uses StarkEx (app-specific), NOT StarkNet (general L2). l2beat.com, https://l2beat.com/scaling/projects/edgex

[^33]: edgeX. (2025). Documentation: Transaction flow architecture. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^34]: edgeX. (2025). Documentation: Transaction execution to StarkEx process. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^35]: StarkWare. (2025). SHARP: Shared Prover batch processing. starkware.co, https://starkware.co/sharp/

[^36]: StarkWare. (2025). STARK Proofs: Proof generation process. starkware.co, https://starkware.co/stark/

[^37]: L2BEAT. (2025). Verification: Ethereum on-chain STARK verification. l2beat.com, https://l2beat.com/scaling/projects/edgex

[^38]: edgeX. (2025). Documentation: State update submission to smart contract. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^39]: edgeX. (2025). Documentation: 200,000 orders/second processing capacity. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^40]: edgeX. (2025). Documentation: <10 milliseconds matching latency. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^41]: L2BEAT. (2025). Settlement: Ethereum L1 finality for settlements. l2beat.com, https://l2beat.com/scaling/projects/edgex

[^42]: edgeX. (2025). Official Website: 70+ blockchain cross-chain support. edgex.exchange, https://www.edgex.exchange/

[^43]: edgeX. (2025). Documentation: Modular architecture layer description. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^44]: L2BEAT. (2025). Settlement Layer: Ethereum mainnet settlement details. l2beat.com, https://l2beat.com/scaling/projects/edgex

[^45]: edgeX. (2025). Documentation: Match engine layer specifications. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^46]: edgeX. (2025). Documentation: Hybrid liquidity layer design. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^47]: edgeX. (2025). Documentation: edgeXFlow execution layer parallel to StarkEx. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^48]: edgeX. (2025). Documentation: Core security features overview. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^49]: edgeX. (2025). Documentation: 95% assets in offline cold wallets. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^50]: edgeX. (2025). Documentation: Two-factor authentication implementation. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^51]: edgeX. (2025). Documentation: Regular independent security audit schedule. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^52]: L2BEAT. (2025). Smart Contracts: Audited, upgradeable architecture. l2beat.com, https://l2beat.com/scaling/projects/edgex

[^53]: edgeX. (2025). Documentation: User protection mechanism overview. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^54]: L2BEAT. (2025). Forced Withdrawals: Mechanism details. l2beat.com, https://l2beat.com/scaling/projects/edgex

[^55]: L2BEAT. (2025). Frozen State: Merkle-proof withdrawal mechanism. l2beat.com, https://l2beat.com/scaling/projects/edgex

[^56]: edgeX. (2025). Documentation: Private key control requirement for transactions. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^57]: edgeX. (2025). Official Website: Perpetual futures product overview. edgex.exchange, https://www.edgex.exchange/

[^58]: edgeX. (2025). Official Website: 70+ trading pair availability. edgex.exchange, https://www.edgex.exchange/

[^59]: edgeX. (2025). Documentation: Up to 100x leverage specification. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^60]: edgeX. (2025). Official Website: Real-time funding rates and OI metrics. edgex.exchange, https://www.edgex.exchange/

[^61]: edgeX. (2025). Documentation: Available order types including trailing TP/SL. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^62]: edgeX. (2025). Documentation: edgeX Leverage product suite. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^63]: edgeX. (2025). Documentation: US stocks leveraged exposure. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^64]: edgeX. (2025). Documentation: Forex currency pair trading. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^65]: edgeX. (2025). Documentation: 3X/5X commodity futures products. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^66]: edgeX. (2025). Documentation: Leveraged ETF index products. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^67]: edgeX. (2025). Documentation: edgeX Insurance product overview. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^68]: edgeX. (2025). Documentation: 2x compensation - double payout on liquidation trigger. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^69]: edgeX. (2025). Documentation: Loss exposure reduction mechanism. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^70]: edgeX. (2025). Documentation: Premium-based coverage purchase. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^71]: edgeX. (2025). Documentation: eLP Vault liquidity provider overview. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^72]: Phemex. (2025, October 11). eLP Record Revenue: $3.934M single day record on major liquidation day. phemex.com, https://phemex.com/news/article/edgex-elp-vault-achieves-record-revenue-and-yield-on-major-liquidation-day-26202

[^73]: Phemex. (2025, October 11). eLP Record Yield: 3.08% single day yield record. phemex.com, https://phemex.com/news/article/edgex-elp-vault-achieves-record-revenue-and-yield-on-major-liquidation-day-26202

[^74]: Phemex. (2025, October 11). eLP Cumulative P&L: $7.434 million cumulative profit. phemex.com, https://phemex.com/news/article/edgex-elp-vault-achieves-record-revenue-and-yield-on-major-liquidation-day-26202

[^75]: PANews. (2025, December). eLP Returns: ~57% annualized return estimate. panewslab.com, https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0

[^76]: edgeX. (2025). Documentation: Maximum 2-day redemption lock-up. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^77]: edgeX. (2025). Documentation: eLP revenue sources for liquidity providers. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^78]: edgeX. (2025). Documentation: eLP tokenized LP shares tradeable on secondary markets. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^79]: edgeX. (2025). Documentation: Epool B2B institutional asset management product. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^80]: edgeX. (2025). Documentation: edgeX Lend product overview. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^81]: edgeX. (2025). Documentation: Aave and Compound DeFi integration. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^82]: edgeX. (2025). Documentation: Telegram bot and TON ecosystem integration. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^83]: CryptoRank. (2025). Polymarket Partnership: Strategic partnership announcement. cryptorank.io, https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading

[^84]: CryptoRank. (2025). Integration Details: Polymarket integration in EdgeX. cryptorank.io, https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading

[^85]: CryptoRank. (2025). Mobile Integration: Prediction markets in mobile app. cryptorank.io, https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading

[^86]: CryptoRank. (2025). Single-Click Access: Simplified prediction event participation. cryptorank.io, https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading

[^87]: CryptoRank. (2025). Joint Products: Leveraged prediction product development. cryptorank.io, https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading

[^88]: CryptoRank. (2025). Unified Interface: Combined derivatives and prediction trading. cryptorank.io, https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading

[^89]: CryptoRank. (2025). Partnership Significance: DeFi specialization and collaboration trend. cryptorank.io, https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading

[^90]: Airdrops.io. (2025). EdgeX Points: Program history overview. airdrops.io, https://airdrops.io/edgex/

[^91]: OAK Research. (2025). Season 1: Alpha Season December 2024 - May 2025. oakresearch.io, https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025

[^92]: OAK Research. (2025). Season 2: Open Season launch June 2025. oakresearch.io, https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025

[^93]: DL News. (2025, July). Deposit Growth: Hyperliquid competitor EdgeX nabs $100M+ with 1,000%+ growth. dlnews.com, https://www.dlnews.com/articles/defi/hyperliquid-competitor-edgex-nabs-100m-with-airdrop-promise/

[^94]: DL News. (2025, July). Volume Records: $13B+ July volume, $1B+ daily peak. dlnews.com, https://www.dlnews.com/articles/defi/hyperliquid-competitor-edgex-nabs-100m-with-airdrop-promise/

[^95]: Airdrops.io. (2025). Allocation Structure: Points breakdown by activity. airdrops.io, https://airdrops.io/edgex/

[^96]: Airdrops.io. (2025). Earning Mechanics: Point earning and distribution mechanics. airdrops.io, https://airdrops.io/edgex/

[^97]: DropsTab. (2025). Token Conversion: 1:1 points to token conversion at TGE. dropstab.com, https://dropstab.com/coins/edgex-exchange

[^98]: OAK Research. (2025). NFT Rewards: Season 1 NFT tier benefits. oakresearch.io, https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025

[^99]: DropsTab. (2025). TGE Overview: Token generation event details. dropstab.com, https://dropstab.com/coins/edgex-exchange

[^100]: DropsTab. (2025). TGE Timeline: Q4 2025 expected. dropstab.com, https://dropstab.com/coins/edgex-exchange

[^101]: edgeX. (2025, October 28). Twitter: Token name vote launched. twitter.com, https://twitter.com/edgeX_exchange

[^102]: DropsTab. (2025). Token Symbol: EX speculation (unconfirmed). dropstab.com, https://dropstab.com/coins/edgex-exchange

[^103]: OAK Research. (2025). Tokenomics: Anticipated structure. oakresearch.io, https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025

[^104]: OAK Research. (2025). FDV Projection: $2-2.4B estimate at launch. oakresearch.io, https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025

[^105]: OAK Research. (2025). Points Allocation: 20-35% supply to points holders. oakresearch.io, https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025

[^106]: OAK Research. (2025). Unlocked Supply: 25% unlocked at distribution. oakresearch.io, https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025

[^107]: CoinBureau. (2025). No VC Pre-allocation: Community-first model. coinbureau.com, https://coinbureau.com/review/what-is-edgex-exchange/

[^108]: OAK Research. (2025). Unique Characteristics: Token distribution features. oakresearch.io, https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025

[^109]: edgeX. (2025). Documentation: Trading and liquidation fee structure. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^110]: DefiLlama. (2025). Fee Calculation: Revenue methodology using API data. defillama.com, https://defillama.com/fees/edgex

[^111]: edgeX. (2025). Documentation: Revenue distribution to stakeholders. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^112]: DefiLlama. (2025). Protocol Comparison: 30-day fee comparison across perp DEXs. defillama.com, https://defillama.com/fees

[^113]: PANews. (2025, December). F4 Market: Perp DEX market structure. panewslab.com, https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0

[^114]: PANews. (2025, December). Hyperliquid Share: ~50% open interest. panewslab.com, https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0

[^115]: PANews. (2025, December). Aster Share: ~20% open interest. panewslab.com, https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0

[^116]: PANews. (2025, December). Lighter Share: ~10% open interest. panewslab.com, https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0

[^117]: PANews. (2025, December). EdgeX Share: ~5.5-12% open interest. panewslab.com, https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0

[^118]: PANews. (2025, December). F4 Dominance: ~85% of total perp DEX market. panewslab.com, https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0

[^119]: CoinBureau. (2025). Strategic Positioning: EdgeX target markets and strategy. coinbureau.com, https://coinbureau.com/review/what-is-edgex-exchange/

[^120]: PANews. (2025, December). Vault Comparison: LP vault TVL across protocols. panewslab.com, https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0

[^121]: L2BEAT. (2025). Protocol Risks: Smart contract and oracle risk assessment. l2beat.com, https://l2beat.com/scaling/projects/edgex

[^122]: L2BEAT. (2025). Operational Risks: Keeper and network risk assessment. l2beat.com, https://l2beat.com/scaling/projects/edgex

[^123]: edgeX. (2025). Documentation: Market risks - counterparty and volatility details. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^124]: edgeX. (2025). Documentation: V2 Roadmap development features. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^125]: edgeX. (2025). Documentation: Unified Accounts Q4 2025 launch. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^126]: edgeX. (2025). Documentation: Ecosystem vision - financial settlement chain. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^127]: CoinBureau. (2025). Bullish Factors: Investment considerations. coinbureau.com, https://coinbureau.com/review/what-is-edgex-exchange/

[^128]: CoinBureau. (2025). Bearish Factors: Investment considerations. coinbureau.com, https://coinbureau.com/review/what-is-edgex-exchange/

[^129]: PANews. (2025, December). Metrics to Monitor: Key performance indicators. panewslab.com, https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0

[^130]: DefiLlama. (2025). EdgeX Protocol Page: Official dashboard. defillama.com, https://defillama.com/protocol/edgex

[^131]: edgeX. (2025). Documentation: Official protocol documentation. gitbook.io, https://edgex-1.gitbook.io/edgeX-documentation

[^132]: edgeX. (2025). Official Website: Main platform. edgex.exchange, https://www.edgex.exchange/

[^133]: L2BEAT. (2025). EdgeX: L2 scaling project analysis. l2beat.com, https://l2beat.com/scaling/projects/edgex

[^134]: GlobeNewswire. (2024, October 3). Mainnet Launch: Official announcement. globenewswire.com, https://www.globenewswire.com/news-release/2024/10/03/2957743/0/en/EdgeX-Exchange-The-Disruptor-Of-The-Centralized-Derivatives-Trading-Landscape-Launches-On-The-Mainnet.html

[^135]: PANews. (2025, December). Perp DEX Analysis: Comprehensive market analysis. panewslab.com, https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0

[^136]: OAK Research. (2025). Airdrop Guide: Perp DEX airdrop farming guide 2025. oakresearch.io, https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025

[^137]: CoinBureau. (2025). Exchange Guide: Comprehensive EdgeX review. coinbureau.com, https://coinbureau.com/review/what-is-edgex-exchange/

[^138]: DL News. (2025, July). EdgeX Deposits: Coverage of $100M deposit milestone. dlnews.com, https://www.dlnews.com/articles/defi/hyperliquid-competitor-edgex-nabs-100m-with-airdrop-promise/

[^139]: CryptoRank. (2025). Polymarket Partnership: Integration announcement coverage. cryptorank.io, https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading

---

*Last Updated: December 31, 2025*
