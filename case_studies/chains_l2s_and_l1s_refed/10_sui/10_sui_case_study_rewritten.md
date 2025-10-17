# Sui Fee Flow Analysis: Where Every Dollar Goes

## Executive Summary
When users spend $1 on Sui, fees are split between immediate validator rewards and the Storage Fund (which subsidizes future storage costs). Sui's unique gas-pricing mechanism uses validator surveys to set reference prices, creating predictable costs while the Storage Fund provides rebates for data storage. This analysis traces the complete fee journey across Sui's object-centric architecture.

## User Types and Fee Distribution

### 1. Retail User (Simple Transfer)
**Transaction Type**: SUI or token transfer between addresses

**$1 Fee Breakdown**:
- **Computation Fee (~70-80%)** → Validators immediately
- **Storage Fee (~20-30%)** → Storage Fund (99% rebateable)
- **Non-rebateable portion (~0.2-0.3%)** → Permanent validator revenue

**Typical Transaction Costs**:
- **Average fee**: ~0.002797 SUI ($0.001-0.01)
- **Computation**: ~$0.0007-0.008 → Validators
- **Storage**: ~$0.0003-0.002 → Storage Fund

**Hidden Costs**: Minimal due to parallel execution and low MEV

### 2. DeFi User (Swap Transaction)
**Transaction Type**: Token swap on DEX (Cetus, Turbos, Aftermath)

**$1 Onchain Fee Breakdown**:
- **Network fees**: ~$0.01-0.05
  - Computation: ~70% → Validators
  - Storage: ~30% → Storage Fund (rebateable)
- **Additional Protocol Fees**:
  - Cetus: 0.05-1% swap fee → LPs
  - Turbos: 0.05-0.3% swap fee → LPs and protocol

**Total Cost Structure**:
- Network fees: $0.02 → 70% validators, 30% storage fund
- Protocol fees: $0.98 → LPs and protocols
- MEV costs: Minimal due to Move architecture

**Hidden Costs**:
- Slippage (0.1-1% typical)
- Storage rebate timing (99% returned but delayed)
- Gas object management complexity

### 3. Developer/Protocol Deployment
**Transaction Type**: Move package deployment and operation

**$1 Onchain Fee Breakdown**:
- **Package deployment**: $5-50 (much cheaper than Ethereum)
- **Storage fees**: Higher for large packages → Storage Fund
- **Ongoing operations**: Low computation costs

**Offchain Costs**:
- **Development**: $8k-80k for Move development and audit
- **Infrastructure**: $150-800/month for RPC, indexing
- **Oracle Services**: $30-200/month (Pyth, Switchboard)
- **Gas object management**: Operational complexity
- **Marketing/BD**: $2k-20k for launch

**Break-even Analysis**:
- Need ~$80-800 daily fee generation
- Lower barriers due to efficient execution
- Benefits from Sui Foundation grants and programs

### 4. Gaming/NFT User
**Transaction Type**: NFT mints, game interactions, object manipulation

**$1 Fee Breakdown**:
- **Mint transaction**: ~$0.001-0.01 in fees
  - Computation: ~70% → Validators
  - Storage: ~30% → Storage Fund (99% rebateable)
- **Creator royalties**: 0-10% (enforced by marketplaces)
- **Marketplace fees**:
  - Clutchy: 2.5% platform fee
  - BlueMove: 2% platform fee

**Gaming Advantages**:
- Object-centric model ideal for game assets
- Parallel execution enables real-time gaming
- Storage rebates reduce long-term holding costs

### 5. High-Frequency Trader/Bot
**Transaction Type**: Arbitrage, market making

**Fee Optimization**:
- **Programmable transaction blocks** reduce fees
- **Gas object pooling** for efficiency
- **MEV opportunities**: Limited due to parallel execution

**Typical Costs**:
- High-frequency operations: $10-100 daily
- Storage mostly rebated (99%)
- Lower MEV extraction than other chains

### 6. Enterprise/Institution User
**Transaction Type**: Large-scale operations, data storage

**Storage Fund Benefits**:
- **Large data storage**: 99% rebate on storage fees
- **Long-term cost predictability**
- **Efficient object management**

**Fee Management**:
- **Sponsored transactions**: Enterprise can pay gas for users
- **Gas station services**: Third-party gas management
- **Bulk operations**: Programmable transaction blocks

## Storage Fund Mechanism

**How It Works**:
- **Storage fees collected**: 100% goes to Storage Fund initially
- **Rebate system**: 99% returned when data deleted
- **Non-rebateable**: 1% goes to validators permanently
- **Future subsidization**: Fund supports future storage costs

**Economic Impact**:
- **Users benefit**: 99% of storage costs returned
- **Validators benefit**: 1% permanent revenue + future redistribution
- **Network effect**: Incentivizes data cleanup

**Current Status (2024)**:
- **Storage rebate**: 99% of original payment
- **Fund balance**: Growing reserve for future validator rewards
- **Governance**: Storage price set through governance proposals

## Validator Economics

**Revenue Streams**:
- **Computation fees**: 70-80% of transaction fees
- **Non-rebateable storage**: 1% of storage fees permanently
- **Storage Fund redistribution**: Future payments from fund
- **Staking rewards**: Inflation-based rewards (declining over time)

**Gas Pricing Survey System**:
- **Validator submissions**: Each submits minimum gas price
- **Reference price**: 2/3 percentile by stake weight
- **Performance incentives**: Efficient validators get full rewards

**Staking Structure**:
- **106 active validators** (as of 2024)
- **Delegation**: Users delegate SUI to validators
- **Commission**: 0-10% typical
- **Geographic distribution**: 13 countries

## Gas Object System

**Unique Architecture**:
- **Gas objects**: Special objects that pay for transactions
- **Sponsorship**: Others can provide gas objects for users
- **Management**: Complex but enables flexible fee payment

**For Developers**:
- **Gas stations**: Services that manage gas objects
- **Sponsored transactions**: Protocols can pay user fees
- **Bulk operations**: Efficient transaction batching

## Parallel Execution Impact

**MEV Reduction**:
- **Object-centric model**: Reduces transaction conflicts
- **Parallel processing**: Multiple transactions simultaneously
- **Deterministic ordering**: Less MEV extraction opportunity

**Performance Benefits**:
- **Higher throughput**: More transactions per second
- **Lower latency**: Faster execution times
- **Predictable costs**: Less congestion-based price spikes

## Comparative Analysis

### Sui vs Solana (per $1 spent):
- **Sui**: ~75% validators, ~25% storage fund (rebateable)
- **Solana**: ~75% validators, ~25% burned (post-SIMD-0096)

### Sui vs Aptos:
- **Sui**: Storage fund system with rebates
- **Aptos**: Refundable storage (100% returned)

### Sui vs Ethereum:
- **Sui**: Ultra-low costs, storage rebates
- **Ethereum**: High costs, 80% burn model

## Real-World Examples

### Example 1: DeFi Power User
Monthly activity: 500 transactions, yield farming, trading
- **Network costs**: $10 total fees
  - Computation: ~$7 → Validators
  - Storage: ~$3 → Storage Fund (99% rebateable)
- **Protocol fees**: $150 in swap/lending fees
- **Storage rebates**: $2.97 returned when positions closed

### Example 2: GameFi Protocol
Blockchain game with 20k DAU, heavy object usage
- **Daily network fees**: $100 by all players
  - Computation: ~$70 → Validators
  - Storage: ~$30 → Storage Fund
- **Game assets**: NFTs benefit from object model
- **Storage efficiency**: 99% rebate encourages cleanup

### Example 3: Enterprise Data Storage
Company storing large datasets on-chain
- **Initial storage costs**: $10,000
- **Rebate**: $9,900 when data no longer needed
- **Permanent cost**: $100 (1% non-rebateable)
- **Validator benefit**: $100 + future fund distributions

## Move Language Advantages

**Gas Efficiency**:
- **Resource types**: Safe, efficient asset handling
- **Compile-time optimization**: Predictable gas costs
- **Parallel execution**: Natural concurrency support

**For Developers**:
- **Predictable costs**: Better gas estimation
- **Safety guarantees**: Fewer failed transactions
- **Object composability**: Efficient complex operations

## Future Developments

**Storage Fund Evolution**:
- **Dynamic rebate rates**: Potential adjustment mechanisms
- **Cross-epoch distributions**: Enhanced validator rewards
- **Governance participation**: Community control over parameters

**Gas Pricing Improvements**:
- **Dynamic reference prices**: More responsive to network conditions
- **Advanced congestion control**: Better resource allocation
- **Fee prediction tools**: Enhanced developer experience

## Data Sources and References

### Official Documentation
- [Sui Gas Pricing](https://docs.sui.io/concepts/tokenomics/gas-pricing)
- [Gas in Sui](https://docs.sui.io/concepts/tokenomics/gas-in-sui)
- [Sui Tokenomics](https://docs.sui.io/concepts/tokenomics)

### Network Statistics (2024)
- Average fee: ~0.002797 SUI ($0.001-0.01)
- Validator count: 106 active validators
- Geographic distribution: 13 countries
- Storage rebate: 99% of original payment

### Protocol-Specific Data
- Cetus: 0.05-1% swap fees
- Turbos: 0.05-0.3% swap fees
- Clutchy: 2.5% NFT marketplace fee
- Gas station services: Available for sponsored transactions

## Key Insights

1. **Storage Fund Innovation**: Unique 99% rebate system for data storage
2. **Validator Survey Pricing**: Democratic gas price setting mechanism
3. **Object-Centric Benefits**: Reduces MEV, enables parallel execution
4. **Ultra-Low Costs**: Enable new use cases and business models
5. **Future-Oriented Design**: Storage Fund provides long-term sustainability

## Conclusion

Sui presents an innovative fee model where computation costs flow directly to validators (~75%) while storage costs enter a rebateable Storage Fund (~25%). The unique Storage Fund mechanism returns 99% of storage fees when data is deleted, making long-term data storage economically viable while providing sustainable validator revenue through future fund distributions. The validator survey system creates predictable, low gas prices through democratic price setting. Object-centric architecture and parallel execution minimize MEV while enabling ultra-low transaction costs. This model particularly benefits gaming and data-intensive applications through storage rebates and efficient object manipulation, creating sustainable economics for both users and validators.