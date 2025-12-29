**Last Updated: December 29, 2025**

# EdgeX Protocol Case Study: Comprehensive Analysis (December 2025)

## Executive Summary

EdgeX (edgeX) is a high-performance, orderbook-based perpetual DEX incubated by Amber Group, built on StarkEx Layer 2 technology. Launched on mainnet in September 2024, EdgeX has rapidly emerged as one of the "F4" top perpetual DEXs, capturing approximately 12% market share alongside Hyperliquid, Aster, and Lighter. The platform achieves CEX-level performance (200,000 orders/second, <10ms latency) while maintaining self-custody through ZK-rollup technology.

---

## Key Metrics (November 2025)

| Metric | Value |
|--------|-------|
| **30-Day Trading Volume** | $170.27 billion |
| **7-Day Trading Volume** | $29.63 billion |
| **24-Hour Trading Volume** | $2.6-5.9 billion |
| **Total Value Locked (TVL)** | ~$429-489 million |
| **Open Interest** | $706-822 million |
| **Cumulative Trading Volume** | $500+ billion |
| **30-Day Fees Generated** | $64.7 million |
| **30-Day Revenue** | $45.74 million |
| **Cumulative Fees** | $182.1 million |
| **Cumulative Revenue** | $148.12 million |
| **Market Share (Perp DEX)** | ~5.5-12% of OI |
| **Maximum Leverage** | 100x |
| **Markets Available** | 70+ |

---

## Platform Overview

### Background & Founding

EdgeX is incubated by **Amber Group**, a leading global digital asset firm:
- Founded in 2017, headquartered in Hong Kong
- Manages **$5 billion in assets**
- Serves **30+ banks and 2,000+ institutional clients**
- Fully compliant operations across multiple jurisdictions
- **$628M+ total funding** raised (Series C at $3B valuation in 2022)

### Team Composition

The EdgeX team comprises professionals from:
- **Traditional Finance**: Morgan Stanley, Barclays, Goldman Sachs
- **Crypto Exchanges**: Binance, Bybit
- **7+ years** of exchange operation and trading experience
- Top-tier technology development and security teams

---

## Technical Architecture

### StarkEx ZK-Rollup Foundation

EdgeX V1 is built on **StarkEx**, StarkWare's proven ZK engine that has processed **$1.28 trillion** in cumulative trading volume since 2020.

#### Transaction Flow:
1. **Transaction Execution**: User trades executed on EdgeX, sent to StarkEx
2. **Batch Processing**: StarkEx batches transactions, forwards to SHARP (Shared Prover)
3. **Proof Generation**: SHARP generates STARK proofs validating transaction integrity
4. **On-Chain Verification**: Proofs submitted to Ethereum STARK verifier
5. **State Update**: Upon verification, state updates submitted to StarkEx smart contract

### Performance Specifications

| Specification | Value |
|--------------|-------|
| **Order Processing** | 200,000 orders/second |
| **Matching Latency** | <10 milliseconds |
| **Settlement** | Ethereum L1 finality |
| **Cross-Chain Support** | 70+ blockchains |

### Modular Architecture Layers

1. **Settlement Layer**: Ethereum mainnet for transaction finality and security
2. **Match Engine Layer**: High-throughput engine with advanced features (trailing TP/SL, 100x leverage)
3. **Hybrid Liquidity Layer**: Solves DeFi liquidity fragmentation
4. **Execution Layer (edgeXFlow)**: New modular layer operating parallel to StarkEx

---

## Self-Custody & Security

### Core Security Features

| Feature | Description |
|---------|-------------|
| **Asset Storage** | 95% in offline cold wallets |
| **Authentication** | 2FA via authenticator apps or SMS |
| **Audits** | Regular independent security audits |
| **Smart Contracts** | Audited, upgradeable with emergency procedures |

### User Protection Mechanisms

1. **Forced Withdrawals**: If EdgeX doesn't process withdrawals within predetermined timeframe, users can interact directly with smart contracts
2. **Frozen State**: If forced exit is ignored past deadline, system freezes, allowing merkle-proof based withdrawals
3. **Private Key Control**: Every transaction requires user's Ethereum private key approval

---

## Product Suite

### 1. Perpetual Futures (Core Product)

- **Markets**: 70+ trading pairs (BTC, ETH, SOL, BNB, etc.)
- **Leverage**: Up to 100x
- **Features**: Real-time funding rates, transparent OI metrics
- **Order Types**: Market, limit, stop-loss, take-profit, trailing TP/SL

### 2. edgeX Leverage

Diversified leveraged products including:
- **US Stocks**: Leveraged exposure to equities
- **Forex**: Currency pair trading
- **Commodity Futures**: 3X/5X leverage products
- **ETF Indices**: Leveraged index products

### 3. edgeX Insurance

Innovative liquidation protection:
- **2x Compensation**: Double payout if insurance is triggered by liquidation
- **Risk Reduction**: Significantly reduces user loss exposure
- **Premium-Based**: Users purchase coverage for their positions

### 4. eLP Vault (Liquidity Provider Vault)

| Metric | Value |
|--------|-------|
| **Record Revenue** | $3.934M (single day - Oct 11, 2025) |
| **Record Yield** | 3.08% (single day) |
| **Cumulative P&L** | $7.434 million |
| **Annualized Return** | ~57% (based on September performance) |
| **TVL Ranking** | 3rd among Perp DEX vaults (~$147M) |
| **Redemption Lock-up** | Maximum 2 days |

**Revenue Sources**:
- Passive market-making profits
- Liquidation fees
- Platform trading fee share

**eLP Token**: Liquidity providers receive tokenized shares, tradeable on secondary markets.

### 5. edgeX Epool (B2B Product)

- Institutional-focused asset management
- Liquidity services to multiple derivatives platforms
- Revenue sharing with token holders and depositors

### 6. edgeX Lend

- Integration with Aave, Compound
- Asset combination for yield maximization
- Capital efficiency optimization

### 7. Telegram Bot

- TON ecosystem integration
- Multi-chain trading support
- MEME token and emerging asset trading
- Interoperable with main EdgeX platform

---

## Polymarket Partnership

### Strategic Integration

EdgeX has formed a **strategic partnership with Polymarket** to integrate prediction markets:

| Feature | Details |
|---------|---------|
| **Integration** | Polymarket prediction markets in edgeX mobile app |
| **Access** | Single-click participation in prediction events |
| **New Products** | Joint development of leveraged prediction products |
| **Unified Interface** | Derivatives trading + prediction markets combined |

### Significance

- Addresses gap between prediction markets and sophisticated trading tools
- Signals trend toward DeFi specialization and collaboration
- Future products may become key edgeXFlow ecosystem projects

---

## Airdrop Campaigns & Points System

### Points Program History

#### Season 1: Points Alpha Season (December 2024 - May 2025)
- Initial points program launch
- Relatively stagnant deposits/volume
- Concluded with points distribution (no token airdrop)
- NFT rewards for top performers

#### Season 2: Open Season (June 2025 - Present)
- **Launched**: June 2025
- **Result**: 1,000%+ deposit growth in July (to $100M+)
- **Record Volume**: $13B+ in July, $1B+ daily peak

### Points Allocation Structure

| Activity | Weight |
|----------|--------|
| **Trading Volume** | 60% |
| **Referrals & Ambassadors** | 20% |
| **Events & Participation** | 20% |

### Earning Mechanics

- **Base Rate**: 1 Point per $1 traded
- **Conversion**: Points convert 1:1 to EdgeX tokens at TGE
- **Referral Bonus**: 1 point earned for every 5 points referred users collect
- **Weekly Snapshots**: Tuesday 23:59 UTC
- **Distribution**: Wednesday 08:00 UTC

### NFT Rewards (Season 1)

| Tier | Requirement | Benefits |
|------|-------------|----------|
| **High Volume Trader** | $25M+ trading volume | Token allocation, 35% fee rebate |
| **Top Referrer** | $50M+ referral volume | Token allocation, 35% fee rebate |
| **Core Community** | Active participation | Special benefits |

---

## Token Generation Event (TGE)

### Timeline

| Milestone | Status |
|-----------|--------|
| **Expected TGE** | Q4 2025 |
| **Token Name Vote** | Launched October 28, 2025 |
| **Symbol (Speculated)** | EX (unconfirmed) |

### Tokenomics (Anticipated)

| Metric | Projected Value |
|--------|-----------------|
| **FDV at Launch** | $2-2.4 billion |
| **Points Holder Allocation** | 20-35% of supply |
| **Unlocked Distribution** | 25% of supply |
| **VC Pre-allocation** | None (community-first model) |

### Unique Characteristics

- **No early VC allocation**: Rare community-first approach
- **Points-based distribution**: Rewards actual platform usage
- **Weekly distribution**: Transparent, ongoing accumulation

---

## Revenue Model & Dollar Flow Analysis

### Fee Structure

| Fee Type | Rate | Distribution |
|----------|------|--------------|
| **Trading Fees** | 0.05-0.1% per trade | Protocol + LPs |
| **Funding Rates** | Variable | Trader-to-trader |
| **Liquidation Fees** | 5-10% of position | Liquidators + Insurance |

### Revenue Distribution

Based on recent performance ($45.74M monthly revenue):

| Recipient | Estimated Share | Monthly Estimate |
|-----------|-----------------|------------------|
| **Protocol Treasury** | 40-60% | $18-27M |
| **Liquidity Providers (eLP)** | 30-40% | $14-18M |
| **Insurance Fund** | 5-10% | $2-4M |
| **Market Makers** | Variable rebates | Performance-based |

### Performance Comparison

| Protocol | 30-Day Revenue |
|----------|----------------|
| **edgeX** | $5.6-45.7M |
| **GMX** | $2.45M |
| **dYdX** | $1.23M |

---

## Competitive Landscape

### "F4" Perp DEX Market (October 2025)

| Platform | Open Interest Share | Key Differentiator |
|----------|---------------------|-------------------|
| **Hyperliquid** | ~50% | First-mover, largest liquidity |
| **Aster** | ~20% | Binance-backed, rapid growth |
| **Lighter** | ~10% | Volume leader, efficiency |
| **edgeX** | ~5.5-12% | Institutional focus, StarkEx |

*Note: The F4 control ~85% of total Perp DEX market*

### EdgeX's Strategic Positioning

- **Target Markets**: Asia, institutional users, conservative traders
- **Expected Market Share Goal**: 10-15%
- **OI Ratio**: 17.71% (healthier than Aster's 3.62%)
- **Focus**: Sustainable, profitable niche rather than volume dominance

### Vault TVL Comparison (October 2025)

| Vault | TVL |
|-------|-----|
| **Hyperliquid HLP** | $628M |
| **Lighter LLP** | $503M |
| **edgeX eLP** | $147M |

---

## Risk Analysis

### Protocol Risks

| Risk Type | Mitigation |
|-----------|------------|
| **Smart Contract** | Regular audits, upgradeable architecture |
| **Oracle Failure** | Multiple sources, failsafe mechanisms |
| **Liquidation Cascades** | Insurance fund, circuit breakers |
| **Economic Exploits** | Dynamic risk parameters, position limits |

### Operational Risks

| Risk Type | Mitigation |
|-----------|------------|
| **Keeper Failures** | Redundant systems |
| **Gas Spikes** | L2 batching, efficient execution |
| **Network Congestion** | StarkEx scalability |

### Market Risks

| Risk Type | Notes |
|-----------|-------|
| **Counterparty** | Shared via eLP vault mechanism |
| **Volatility** | High-leverage exposure for traders |
| **Liquidity** | Addressed via hybrid liquidity layer |

---

## Future Roadmap

### V2 Development

EdgeX is upgrading from **perp app rollup (V1)** to **high-performance financial chain (V2)**:

| Feature | Description |
|---------|-------------|
| **Unified Accounts** | Q4 2025 launch |
| **Yield-Bearing Collateral** | Capital efficiency improvement |
| **Permissionless Liquidity** | Open infrastructure |
| **Modular Architecture** | Plug-and-play modules for trading, liquidity, lending, insurance |

### Ecosystem Vision

edgeX aims to become a **financial settlement chain** offering:
- Trading modules
- Liquidity infrastructure
- Lending services
- Insurance products
- Customizable UI/UX
- Wallet integrations

---

## Investment Considerations

### Bullish Factors

1. **Strong Backing**: Amber Group's $5B AUM and institutional relationships
2. **Technical Excellence**: CEX-level performance with self-custody
3. **Revenue Generation**: Consistent $45M+ monthly revenue
4. **Community-First Token**: No VC pre-allocation
5. **Diversified Products**: Beyond perps to leverage, insurance, lending
6. **Strategic Partnerships**: Polymarket integration expands use cases

### Bearish Factors

1. **Competition**: Hyperliquid's 50% dominance, Aster's rapid growth
2. **Token Uncertainty**: TGE timeline and final tokenomics unclear
3. **Market Dependence**: Revenue highly correlated to trading volume
4. **Regulatory Risk**: Leverage products may face scrutiny
5. **Execution Risk**: V2 transition complexity

### Key Metrics to Monitor

- Weekly points distribution and participation rates
- eLP vault performance and TVL growth
- Open interest ratio vs. competitors
- TGE announcement and tokenomics details
- V2 development progress

---

## Data Sources

- [DefiLlama - edgeX](https://defillama.com/protocol/edgex)
- [edgeX Documentation](https://edgex-1.gitbook.io/edgeX-documentation)
- [edgeX Official Website](https://www.edgex.exchange/)
- [GlobeNewswire - EdgeX Mainnet Launch](https://www.globenewswire.com/news-release/2024/10/03/2957743/0/en/EdgeX-Exchange-The-Disruptor-Of-The-Centralized-Derivatives-Trading-Landscape-Launches-On-The-Mainnet.html)
- [PANews - Perp DEX Analysis](https://www.panewslab.com/en/articles/38a838c1-371c-4f73-a772-e43e319041b0)
- [OAK Research - Perp DEX Airdrops](https://oakresearch.io/en/analyses/fundamentals/ultimate-guide-farming-perp-dex-airdrop-2025)
- [Airdrops.io - edgeX](https://airdrops.io/edgex/)
- [DL News - EdgeX Deposits](https://www.dlnews.com/articles/defi/hyperliquid-competitor-edgex-nabs-100m-with-airdrop-promise/)
- [CoinBureau - EdgeX Exchange Guide](https://coinbureau.com/review/what-is-edgex-exchange/)
- [L2BEAT - EdgeX](https://l2beat.com/scaling/projects/edgex)
- [DropsTab - edgeX](https://dropstab.com/coins/edgex-exchange)
- [CryptoRank - edgeX Polymarket](https://cryptorank.io/news/feed/5a8f6-edgex-polymarket-partnership-decentralized-trading)
- [Phemex - eLP Vault Performance](https://phemex.com/news/article/edgex-elp-vault-achieves-record-revenue-and-yield-on-major-liquidation-day-26202)

---

*Last Updated: December 2025*
