# Solana Fee Flow Analysis: Where Every Dollar Goes

## Executive Summary

When users spend $1 on Solana, fees are split between burning (50% of base fees) and validator rewards (50% of base fees plus 100% of priority fees post-SIMD-0096). Solana operates with ultra-low transaction costs (~$0.001-0.01) while maintaining high throughput. Beyond direct fees, the ecosystem operates on a $14-19B annual funding model driven by inflation rewards, MEV extraction, venture investment, and programmatic token unlocks ($8-12B annually through 2036). This analysis traces both the direct fee journey and broader ecosystem money flows.

## Solana - Validator-MEV Distribution

**When a user pays $1 in Solana fees:**

### Direct Fee Recipients

- **Validators**: $0.50-1.00 (50% of base fees, 100% of priority fees post-SIMD-0096)
- **Token Burn**: $0.00-0.50 (50% of base fees only)

The exact split depends on the ratio of base fees to priority fees in each transaction. Post-SIMD-0096 (February 2025), validators receive significantly more as priority fees are no longer burned.

### Token Holder Impact

- **Daily SOL Issuance**: ~51,000 SOL ($10.2M daily at $200/SOL)
- **Inflation Rate**: 4.26% annually diluting non-stakers
- **Inflation Schedule**: Started at 8%, decreasing 15% annually toward 1.5% long-term target

Non-staking token holders experience dilution while stakers earn ~8% APY, creating a ~4% real yield above inflation.

### Ecosystem Funding Recipients

- **Solana Foundation**: $50-150M annually for ecosystem development (estimated)
- **Validator Infrastructure**: $4.5-5B annually in staking rewards (8% yield on 297M SOL staked)
- **RPC Providers**: $20-50M annually (estimated - Solana Labs, Helius, Triton)
- **Jito MEV**: $800M-1.2B annually in MEV tips and infrastructure

### Developer and VC Flows

- **Hackathon Programs**: $5-10M annually
- **Ecosystem Grants**: $50-100M annually (estimated)
- **VC Investments**: $400-500M annually in Solana ecosystem projects

### Token Unlock Schedule
- **Annual Token Unlocks**: $8-12B annually in programmatic releases through 2036⁸
  - **Inflation**: 281.78M SOL allocated (36.0% of total, ongoing issuance)
  - **Community**: 169.5M SOL ($38.68B remaining, 21.7% allocation)
  - **Seed Round**: 78.5M SOL ($17.91B remaining, 10.0% allocation)
  - **Founding Round**: 63.5M SOL ($14.49B remaining, 8.1% allocation)
  - **Team**: 62.5M SOL ($14.26B remaining, 8.0% allocation)
  - **Foundation**: 62.5M SOL ($14.26B remaining, 8.0% allocation)

**Total Ecosystem Funding**: $14-19B annually beyond user fees (including $8-12B token unlocks)

## User Types and Fee Distribution

### 1. Retail User (Simple Transfer)
**Transaction Type**: SOL or SPL token transfer

**$1 Fee Breakdown (Post-SIMD-0096)**:
- **Base Fee**: 50% burned, 50% to validators
- **Priority Fee** (if used): 100% to validators (changed from 50% burn)
- **Compute fees**: Based on resources used → validators

**Typical Transaction**:
- **Base fee**: ~0.000005 SOL ($0.001 at $200/SOL)
- **Priority fee**: User-set (often $0.001-0.01 for speed)
- **Total cost**: Usually under $0.01

### 2. DeFi User (Swap Transaction)
**Transaction Type**: Token swap on DEX (Jupiter, Orca, Raydium)

**$1 Onchain Fee Breakdown**:
- **Network fees**: ~$0.01-0.05
  - Base fee: 50% burned, 50% to validators
  - Priority fee: 100% to validators
- **Additional Protocol Fees**:
  - Jupiter: $0 (route aggregation)
  - Orca: 0.25% swap fee → LPs
  - Raydium: 0.25% swap fee → LPs

### 3. Developer/Protocol Deployment
**Transaction Type**: Program deployment and operation

**Costs**:
- **Program deployment**: $10-100 (much cheaper than Ethereum)
- **Infrastructure**: $200-1000/month for RPC services
- **Development**: $10k-100k for audits
- **Benefits**: Solana Foundation grants available

### 4. MEV Bot/Arbitrage Trader
**Transaction Type**: High-frequency arbitrage

**MEV Ecosystem**:
- **Jito**: Leading MEV client (~93% validator adoption)
- **Monthly peak**: $210M (November 2024)
- **Daily record**: $14.7M in tips (November 17, 2024)
- **Distribution**: Validators capture majority of MEV value

### 5. Gaming/NFT User
**Transaction Type**: NFT mints, game interactions

**Advantages**:
- Sub-cent transaction costs enable micro-transactions
- 400ms block times for real-time interactions
- Account model supports complex game state

### 6. Institutional/High-Volume User
**Transaction Type**: Trading, market making, payments

**Typical Daily Costs**:
- High-frequency trading: $50-500 in fees
- Market making: $100-1000
- Payment processing: $10-100

## SIMD-0096 Impact Analysis

### Before SIMD-0096 (Pre-February 2025)
- Base fee: 50% burn, 50% validators
- Priority fee: 50% burn, 50% validators
- **Problem**: Validators incentivized to accept side deals

### After SIMD-0096 (February 2025)
- Base fee: 50% burn, 50% validators (unchanged)
- Priority fee: 0% burn, 100% validators
- **Benefit**: Eliminates validator bribery incentives

### Economic Impact
- **Reduced deflation**: Daily burn decreased from ~18,000 SOL to ~1,000 SOL
- **Higher validator rewards**: Improved network security incentives
- **Increased inflation**: Network inflation rose from 3.7% to 4.26%

## Validator Economics

### Revenue Streams
- **Base transaction fees**: 50% of all base fees
- **Priority fees**: 100% (post-SIMD-0096)
- **Inflation rewards**: ~4.26% APY (declining 15% annually)
- **MEV/Jito rewards**: $800M-1.2B annually across network
- **Total staking rewards**: $4.5-5B annually

### Current Network State (2025)
- **Total staked**: 297M SOL (~51% of supply)
- **Validator count**: 1,500+ active validators
- **Average APY**: 8% including all rewards
- **Commission**: 0-10% typical

### Token Release Context
- **Unlocked supply**: 627.8M SOL ($143.26B at $231.09)
- **Remaining unlocks**: $100B+ through 2036
- **Major allocations**: Community (21.7%), Seed Round (10.0%), Team (8.0%)
- **Annual unlock rate**: $8-12B in programmatic releases

## MEV and Jito Integration

### Jito MEV Performance
- **2024 Total**: Estimated $800M-1.2B
- **Monthly average**: $66-100M
- **Peak month**: $210M (November 2024)
- **Validator adoption**: ~93% use Jito client
- **TVL**: $2.75B in JitoSOL

### Revenue Distribution
- **Validators**: Receive majority of MEV tips
- **JTO holders**: 0.15% of tip revenue (governance vote October 2024)
- **Searchers**: Keep profit after paying tips

## Ecosystem Development Funding

### Solana Foundation Programs
- **Grants**: Milestone-based and convertible grants
- **Focus**: Public goods and open-source development
- **Hackathons**: Colosseum online events with accelerator opportunities
- **Estimated budget**: $50-150M annually (not publicly disclosed)

### Venture Capital Activity

#### 2024 Investment Data
- **Q3 2024**: $173M (highest since Q2 2022)
- **Total 2024**: ~$400-500M
- **Notable investors**: RockawayX ($125M fund), Pantera, Multicoin Capital
- **Developer growth**: 7,500+ new developers in 2024

### RPC and Infrastructure
- **Major providers**: Helius, Triton, QuickNode, Alchemy
- **QuickNode**: 50+ billion requests monthly
- **Pricing**: $500-1,500/month for shared tiers
- **Estimated market**: $20-50M annually

## Comparative Analysis

### Solana vs Ethereum (per $1 spent)
- **Solana**: ~25% burned, ~75% validators (post-SIMD-0096)
- **Ethereum**: ~80% burned, ~20% validators

### Solana vs Bitcoin
- **Solana**: Partial burn + validator rewards + inflation
- **Bitcoin**: 100% to miners, no burn, declining subsidies

## Real-World Impact Examples

### DeFi Power User (Monthly)
- **Activity**: 1,000 transactions
- **Network costs**: $20 total
  - Burned: ~$5
  - Validators: ~$15
- **Benefit**: Enables high-frequency strategies

### NFT Collection Launch
- **Deployment**: $50 program cost
- **Minting**: $100 total for 10k collection
- **Advantage**: 100x cheaper than Ethereum

### GameFi Protocol (50k DAU)
- **Daily fees**: $500 from all players
  - Burned: ~$125
  - Validators: ~$375
- **Enables**: Micro-transactions and complex game state

## Key Insights and Trends

1. **SIMD-0096 Transformation**: Shifted economics toward validators, reducing deflation
2. **MEV Dominance**: Jito MEV revenues exceed many L1 total fees
3. **Inflation-Driven Security**: $4.5-5B annual staking rewards dwarf transaction fees
4. **Token Unlock Scale**: $8-12B annual unlocks through 2036 dwarf operational costs
5. **VC Recovery**: Investment rebounded to $400-500M annually from 2023 lows
6. **Institutional Under-allocation**: <1% SOL held by institutions vs 7% ETH, 16% BTC

## Future Developments

### Approved Proposals
- **SIMD-0123**: Automated priority fee distribution to stakers
- **SIMD-0109**: Native tipping mechanism

### Potential Changes
- **Dynamic base fees**: Similar to EIP-1559
- **State rent**: Possible future implementation
- **Cross-program fees**: For complex interactions

## Sources and References

### Official Documentation
- [Solana Transaction Fees](https://solana.com/docs/core/fees)
- [SIMD-0096 Proposal](https://github.com/solana-foundation/solana-improvement-documents/blob/main/proposals/0096-reward-collected-priority-fee-in-entirety.md)
- [Economics Overview](https://docs.solana.com/economics_overview)
- [Solana Staking](https://solana.com/staking)
- [Grants Program](https://solana.org/grants-funding)

### Network Data and Analytics
- [Solana Compass Tokenomics](https://solanacompass.com/tokenomics) - Inflation and supply data
- [StakingRewards.com](https://www.stakingrewards.com/asset/solana) - Current staking yields
- [Solana Governance Forum](https://forum.solana.com/t/proposal-for-enabling-the-reward-full-priority-fee-to-validator-on-solana-mainnet-beta/1456)

### MEV and Jito Sources
- [ChainCatcher: Jito $210M November Record](https://www.chaincatcher.com/en/article/2159392)
- [CoinTelegraph: Jito $100M+ Monthly](https://cointelegraph.com/news/solana-jito-staking-pool-100m-per-month-in-tips-kairos-research)
- [Jito Official](https://www.jito.wtf/validators/)

### Investment and Development
- [Q3 2024 Funding Report](https://solanafloor.com/news/solana-sees-private-funding-surge-to-173-m-in-q3-2024-highest-in-2-years)
- [RockawayX Fund Announcement](https://www.theblock.co/post/351841/crypto-vc-rockawayx-second-fund-solana)
- [Solana Ventures](https://solana.ventures/)

### Validator Economics
- [Gate.io Validator Economics 2025](https://www.gate.com/learn/articles/understanding-solanas-staking-and-validator-economics-in-2025/6062)
- [Everstake Solana Report H1 2025](https://everstake.one/crypto-reports/solana-staking-insights-and-analysis-first-half-of-2025)
⁸ [SOL Tokenomics Data](https://tokenomist.ai/solana) - Token unlock schedule and vesting (October 2025)

### Additional Analysis
- [The Block: SIMD-0096 Approval](https://www.theblock.co/post/296932/solana-validators-to-receive-full-priority-fees-as-simd-0096-proposal-gains-approval)
- [Messari State of Solana Reports](https://messari.io/report/state-of-solana-q2-2025)

## Conclusion

Solana operates a unique economic model where transaction fees are partially burned (50% of base fees) while validators receive the remainder plus 100% of priority fees following SIMD-0096. With only ~$3M in daily transaction fees, the network's true economics are driven by $10.2M daily inflation rewards, $2-3M daily MEV extraction, and $8-12B annually in programmatic token unlocks through 2036. The ecosystem sustains itself through $14-19B in annual funding beyond user fees, primarily from staking rewards ($4.5-5B), Jito MEV ($800M-1.2B), and scheduled token releases ($8-12B). Ultra-low transaction costs enable new use cases but create dependency on inflation and token unlocks for security, making Solana fundamentally different from fee-driven networks like Ethereum or purely subsidy-dependent networks like Bitcoin.
