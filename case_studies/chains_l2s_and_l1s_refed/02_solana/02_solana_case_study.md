# Solana Fee Flow Analysis: Where Every Dollar Goes

## Executive Summary
When users spend $1 on Solana, fees are split between burning (base fee only) and validator rewards (priority fees + portion of base fee). The landmark SIMD-0096 upgrade in late 2024 eliminated priority fee burning, giving validators 100% of priority fees to align incentives and reduce side deals. Beyond direct fees, Solana operates on $14-19B annually in ecosystem funding including $8-12B in programmatic token unlocks through 2036. This analysis traces the complete fee journey across Solana's high-throughput architecture.

## User Types and Fee Distribution

### 1. Retail User (Simple Transfer)
**Transaction Type**: SOL or SPL token transfer

**$1 Fee Breakdown (Post-SIMD-0096)**:
- **Base Fee**: 50% burned, 50% to validators
- **Priority Fee** (if used): 100% to validators (changed from 50% burn)
- **Compute fees**: Based on resources used → validators

**Typical Transaction**:
- **Base fee**: ~0.000005 SOL ($0.0001-0.001)
- **Priority fee**: User-set (often $0.001-0.01 for speed)
- **Total cost**: Usually under $0.01

**Hidden Costs**: Minimal due to high throughput and low MEV

### 2. DeFi User (Swap Transaction)
**Transaction Type**: Token swap on DEX (Jupiter, Orca, Raydium)

**$1 Onchain Fee Breakdown**:
- **Network fees**: ~$0.01-0.05
  - Base fee: 50% burned, 50% to validators
  - Priority fee: 100% to validators
- **Additional Protocol Fees**:
  - Jupiter: $0 (route aggregation fee may apply)
  - Orca: 0.25% swap fee → LPs
  - Raydium: 0.25% swap fee → LPs

**Total Cost Structure**:
- Network fees: $0.02 → 50% burned, 50% validators
- Protocol fees: $0.98 → LPs and protocols
- MEV costs: Minimal due to speed

**Hidden Costs**:
- Slippage (0.1-1% typical, much lower than Ethereum)
- Failed transactions (rare, low cost)
- Priority fees during congestion

### 3. Developer/Protocol Deployment
**Transaction Type**: Program deployment and operation

**$1 Onchain Fee Breakdown**:
- **Program deployment**: $10-100 (much cheaper than Ethereum)
- **Account rent**: Deposits for data storage (refundable)
- **Compute units**: Based on program complexity

**Offchain Costs**:
- **Development**: $10k-100k for audit and development
- **Infrastructure**: $200-1000/month for RPC, monitoring
- **Oracle Services**: $50-300/month (Pyth, Chainlink)
- **Account rent deposits**: $100-10k (refundable)
- **Marketing/BD**: $3k-30k for launch

**Break-even Analysis**:
- Need ~$100-1000 daily fee generation
- Much lower barriers than other chains
- Benefits from Solana Foundation grants

### 4. MEV Bot/Arbitrage Trader
**Transaction Type**: High-frequency arbitrage

**$1 MEV Fee Breakdown**:
- **Base fees**: 50% burned, 50% to validators
- **Priority fees**: 100% to validators (key for MEV inclusion)
- **Jito MEV rewards**: Additional payments to validators

**MEV Ecosystem**:
- **Jito**: Leading MEV client (~93% validator adoption), $800M-1.2B annually
- **Peak monthly revenue**: $210M (November 2024)
- **Searchers**: Identify arbitrage opportunities
- **Block builders**: Create optimized blocks
- **Validators**: Capture MEV through ordering and Jito rewards

### 5. Gaming/NFT User
**Transaction Type**: NFT mints, game interactions

**$1 Fee Breakdown**:
- **Mint transaction**: ~$0.001-0.01 in fees
  - Base fee: 50% burned, 50% validators
  - Priority fee: 100% validators
- **Creator royalties**: 0-10% (often enforced by marketplaces)
- **Marketplace fees**:
  - Magic Eden: 2% platform fee
  - Tensor: 0.5-2% variable fees

**Gaming Advantages**:
- Sub-cent transaction costs
- 400ms block times enable real-time interactions
- Account model supports complex game state

### 6. Institutional/High-Volume User
**Transaction Type**: Trading, market making, payments

**Fee Optimization**:
- **Compute unit optimization** for complex transactions
- **Priority fee management** during network congestion
- **MEV protection** strategies

**Typical Costs**:
- High-frequency trading: $50-500 daily in fees
- Market making: $100-1000 daily
- Payment processing: $10-100 daily

## SIMD-0096 Impact Analysis

**Before SIMD-0096 (Pre-late 2024)**:
- Base fee: 50% burn, 50% validators
- Priority fee: 50% burn, 50% validators
- **Problem**: Validators incentivized to accept side deals

**After SIMD-0096 (Post-February 2025)**:
- Base fee: 50% burn, 50% validators (unchanged)
- Priority fee: 0% burn, 100% validators
- **Benefit**: Eliminates validator bribery incentives

**Economic Impact**:
- **Reduced deflation**: Less SOL burned overall
- **Higher validator rewards**: Improved network security incentives
- **Increased inflation**: Network inflation rose from 3.7% to 4.26% after SIMD-0096

## Validator Economics

**Revenue Streams**:
- **Base transaction fees**: 50% of all base fees
- **Priority fees**: 100% (post-SIMD-0096)
- **Compute unit fees**: Based on resource usage
- **Inflation rewards**: ~4.26% APY (declining 15% annually toward 1.5%)
- **MEV/Jito rewards**: Additional from MEV extraction

**Staking Structure**:
- **No minimum stake**: Can stake any amount
- **Delegation**: Users delegate to validators
- **Commission**: 0-10% typical
- **Vote account rent**: ~0.026 SOL per epoch

**Current Performance (2025)**:
- **Total staked**: 297M SOL (~51% of supply)
- **Validator count**: 1,500+ active validators
- **Average APY**: 8% including all rewards
- **Total staking rewards**: $4.5-5B annually

**Token Unlock Context**:
- **Unlocked supply**: 627.8M SOL ($143.26B at $231.09)
- **Annual token unlocks**: $8-12B through 2036
- **Major allocations**: Community (21.7%), Seed Round (10.0%), Team (8.0%)
- **Total ecosystem funding**: $14-19B annually including unlocks

## Account Rent System

**How It Works**:
- **Rent-exempt deposits**: One-time payment for account storage
- **Refundable**: When account closed, deposit returned
- **Cost**: ~0.00089 SOL per account

**Impact on $1 Spent**:
- Not a fee, but a deposit
- No ongoing rent payments (exempt system)
- Encourages efficient account usage

## MEV and Jito Integration

**Jito MEV Model**:
- **Validators opt-in** to Jito client
- **MEV rewards**: Additional payments to block leaders
- **Searcher payments**: Competitive auction system

**Distribution**:
- **Block leader**: Receives MEV rewards
- **Jito protocol**: Takes small commission
- **Delegators**: Share in validator MEV rewards

## Comparative Analysis

### Solana vs Ethereum (per $1 spent):
- **Solana**: ~25% burned, ~75% validators (post-SIMD-0096)
- **Ethereum**: ~80% burned, ~20% validators

### Solana vs Other High-Speed Chains:
- **Solana**: Partial burn + validator rewards
- **Aptos**: 100% burn, validators from inflation
- **Sui**: Different fee model, gas objects

## Real-World Examples

### Example 1: DeFi Power User
Monthly activity: 1000 transactions, yield farming, trading
- **Network costs**: $20 total fees
  - Burned: ~$5
  - Validators: ~$15
- **Protocol fees**: $200 in swap/lending fees
- **Ultra-low cost**: Enables micro-strategies

### Example 2: NFT Collection Launch
10k NFT collection with gaming utility
- **Deployment**: $50 program deployment
- **Minting costs**: $100 total for all users
- **Account rent**: $500 deposit (refundable)
- **Creator royalties**: Ongoing revenue stream

### Example 3: GameFi Protocol
Real-time strategy game with 50k DAU
- **Daily network fees**: $500 by all players
  - Burned: ~$125
  - Validators: ~$375
- **In-game economy**: Micro-transactions enabled
- **Account model**: Complex game state management

## Future Developments

**Upcoming Proposals**:
- **SIMD-0123**: Streamline block reward distribution
- **SIMD-0109**: Native tipping mechanism
- **Fee markets**: Dynamic compute unit pricing

**Potential Changes**:
- **State rent**: Possible future implementation
- **Dynamic base fees**: Similar to EIP-1559
- **Cross-program fees**: For complex interactions

## Data Sources and References

### Official Documentation
- [Solana Transaction Fees](https://solana.com/docs/core/fees)
- [SIMD-0096 Proposal](https://github.com/solana-foundation/solana-improvement-documents/blob/main/proposals/0096-reward-collected-priority-fee-in-entirety.md)
- [Economics Overview](https://docs.solana.com/economics_overview)

### Network Statistics (2025)
- Average fee: $0.001-0.01 per transaction
- TPS: 2000-3000 sustained, 65k theoretical
- Block time: ~400ms
- Validator count: 1,500+ active
- Total staked: 297M SOL (51% of supply)
- Inflation rate: 4.26% (decreasing 15% annually)

### Protocol-Specific Data
- Jupiter: Route aggregation, minimal fees
- Orca: 0.25% swap fee
- Magic Eden: 2% marketplace fee
- Jito: $800M-1.2B annual MEV revenue to validators
- Annual VC investment: ~$400-500M (Q3 2024: $173M)
- Ecosystem grants: $50-100M annually (estimated)

## Key Insights

1. **SIMD-0096 Impact**: Eliminated priority fee burning, increased validator rewards
2. **Ultra-Low Costs**: Enable new business models and micro-transactions
3. **Partial Burn Model**: Balance between deflation and validator incentives
4. **MEV Integration**: Jito provides additional validator revenue
5. **Account Model**: Rent deposits instead of ongoing storage fees

## Conclusion

Solana presents a hybrid fee model where base fees are split 50/50 between burning and validators, while priority fees now flow 100% to validators following SIMD-0096. This change eliminated validator bribery incentives while slightly reducing deflationary pressure. The network's ultra-low costs (~$0.001-0.01 per transaction) enable new use cases like real-time gaming and micro-transactions. Validators benefit from multiple revenue streams including transaction fees, inflation rewards, and MEV through Jito integration. Beyond operational costs, the ecosystem is sustained by $14-19B annually including $8-12B in programmatic token unlocks through 2036. The account rent system uses refundable deposits rather than ongoing fees, creating efficient resource usage incentives. Future proposals may further evolve the fee structure toward dynamic pricing models.
