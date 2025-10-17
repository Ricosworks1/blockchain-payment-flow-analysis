# Taiko Fee Flow Analysis: Where Every Dollar Goes

## Executive Summary
When users spend $1 on Taiko, fees are distributed across a fully decentralized ecosystem: priority fees go to permissionless proposers (~40%), base fees to Taiko DAO treasury (~10%), proving rewards to decentralized provers (~25%), and L1 data costs to Ethereum (~25%). As the world's first profitable based rollup (achieved in 90 days), Taiko demonstrates sustainable economics through permissionless participation. This analysis traces fee flows across Taiko's innovative based rollup architecture.

## User Types and Fee Distribution

### 1. Retail User (Simple Transfer)
**Transaction Type**: ETH or ERC-20 token transfer

**$1 Fee Breakdown (Decentralized Based Rollup)**:
- **Priority Fees (~40%)** → Permissionless proposers
- **Base Fees (~10%)** → Taiko DAO treasury
- **Proving Rewards (~25%)** → Decentralized prover network
- **L1 Data Costs (~25%)** → Ethereum blob fees

**Typical Costs**:
- **Average fee**: $0.05-0.30 per transaction
- **Proposers**: $0.02-0.12 (competitive based sequencing)
- **DAO treasury**: $0.005-0.03
- **Provers**: $0.0125-0.075
- **Ethereum L1**: $0.0125-0.075

**Unique Features**:
- **Open MEV**: Anyone can propose blocks and capture MEV
- **No centralized sequencer**: Permissionless block building

### 2. DeFi User (Swap Transaction)
**Transaction Type**: Token swap on DEX

**$1 Onchain Fee Breakdown**:
- **Network fees**: $0.20-0.80
  - Proposers: ~40% (MEV-aware pricing)
  - DAO treasury: ~10%
  - Provers: ~25%
  - L1 costs: ~25%
- **Protocol fees**:
  - Taiko DEXs: 0.05-0.3% swap fee → LPs

**MEV Redistribution**:
- **Open competition**: Any proposer can capture MEV
- **Value returned**: Portion flows back to Ethereum network
- **Equitable access**: No centralized MEV extraction

### 3. Block Proposer (Decentralized Sequencer)
**Transaction Type**: Permissionless block proposal

**Revenue Model**:
- **Priority fees**: From user transactions
- **MEV capture**: Through transaction ordering
- **Base fee opportunity**: Post-Ontake upgrade (Nov 2024)

**Operational Costs**:
- **L1 fees**: Payment to TaikoL1 contract
- **Prover fees**: Compensation to block verifiers
- **Infrastructure**: Node operation and monitoring

**Profitability Achievement**:
- **90-day milestone**: Proven profitable operation
- **Sustainable model**: Decentralized revenue generation
- **Open participation**: Anyone can become proposer

### 4. Block Prover (ZK Verification Network)
**Transaction Type**: Permissionless proof generation

**Revenue Streams**:
- **Proving rewards**: For valid proof submission
- **Contest rewards**: For challenging invalid proofs
- **TAIKO bond returns**: Plus rewards for correct proofs

**Multi-Tier Proof System**:
1. **Tier-1 prover**: Initial proof with TAIKO bond
2. **24-hour cooldown**: Contest period
3. **Higher-tier verification**: Final proof confirmation
4. **Reward distribution**: Based on proof validity

**Operational Requirements**:
- **TAIKO bonding**: Required for proof submission
- **Computational hardware**: ZK proof generation
- **Risk management**: Bond loss for invalid proofs

### 5. Developer/Protocol Deployment
**Transaction Type**: Smart contract deployment

**$1 Onchain Fee Breakdown**:
- **Deployment costs**: $5-40 (competitive with other L2s)
- **Full EVM equivalence**: No additional adaptation costs
- **Decentralized infrastructure**: No single point of failure

**Development Advantages**:
- **Ethereum equivalence**: Direct porting from mainnet
- **Decentralized proving**: No reliance on single operator
- **Open source**: Fully auditable protocol

### 6. Gaming/NFT User
**Transaction Type**: NFT mints, gaming interactions

**$1 Fee Breakdown**:
- **Mint costs**: $0.10-0.50 per NFT
- **Marketplace integration**: Standard EVM compatibility
- **Fast finality**: Based rollup confirmation

**Gaming Benefits**:
- **Predictable costs**: Open proposer competition
- **No censorship**: Permissionless block building
- **MEV protection**: Distributed extraction

## Based Rollup Economics Innovation

**What Makes It Different**:
- **No centralized sequencer**: Open proposer competition
- **MEV redistribution**: Value flows back to Ethereum
- **Permissionless participation**: Anyone can propose/prove
- **Sustainable economics**: Proven profitable in 90 days

**Revenue Distribution Philosophy**:
- **Equitable access**: No monopolized MEV extraction
- **Community governance**: DAO treasury accumulation
- **Network security**: Incentivized proving participation
- **Ethereum alignment**: L1 value accrual

## Ontake Upgrade Impact (November 2024)

**Enhanced Fee Mechanism**:
- **L2 EIP-1559**: Improved base fee structure
- **L1-tunable fees**: DAO governance control
- **Preconfirmation support**: Sub-second confirmations

**Proposer Revenue Enhancement**:
- **Base fee capture**: Additional revenue stream
- **Governance participation**: DAO fee parameter control
- **Operational efficiency**: On-demand block proposal

## Taiko DAO Treasury Economics

**Revenue Sources**:
- **Base fees**: 1 wei minimum (upgradeable)
- **Protocol fees**: Governance-controlled allocation
- **Future mechanisms**: Community-decided enhancements

**Treasury Usage**:
- **Ecosystem development**: Grants and incentives
- **Protocol upgrades**: Development funding
- **Community governance**: Token holder decisions
- **Security initiatives**: Bug bounties and audits

## Decentralized Prover Network

**Economic Incentives**:
- **TAIKO bonding**: Stake requirement for proving
- **Reward mechanisms**: Successful proof compensation
- **Contest system**: Challenge invalid proofs
- **Risk-reward balance**: Bond loss vs reward gain

**Multi-Proof Security**:
- **Tier-1 proofs**: Initial verification layer
- **Higher-tier confirmation**: Final validity check
- **Economic finality**: Bond-secured proof system
- **Contest period**: 24-hour challenge window

## Comparative Analysis

### Taiko vs Other L2s (per $1 spent):
- **Taiko**: Distributed (40% proposers, 25% provers, 25% L1, 10% DAO)
- **Arbitrum**: Centralized (65% DAO, 35% L1)
- **Base**: For-profit (90% Coinbase, 10% L1)

### Based vs Traditional Rollups:
- **Taiko**: Open MEV, permissionless proposing
- **Traditional**: Centralized sequencer, monopolized MEV
- **Value flow**: Taiko redistributes, others extract

## Real-World Examples

### Example 1: Independent Block Proposer
Monthly operation: 1000 blocks proposed
- **Revenue**: $500 from priority fees and MEV
- **Costs**: $200 L1 fees, $150 prover payments
- **Profit**: $150 monthly
- **Accessibility**: Open to anyone with infrastructure

### Example 2: Professional Prover
Dedicated proving operation with TAIKO bonds
- **Monthly proving rewards**: $300
- **Contest wins**: $50 additional
- **Bond requirements**: 10,000 TAIKO staked
- **Risk**: Bond loss for invalid proofs

### Example 3: DeFi Protocol on Taiko
DEX with $50M TVL
- **Daily user fees**: $200
  - Proposers: $80
  - DAO: $20
  - Provers: $50
  - L1: $50
- **Protocol fees**: $1500 daily from swaps
- **Benefits**: No MEV extraction monopoly

## Future Developments

**Preconfirmation Implementation**:
- **Sub-second confirmations**: Enhanced UX
- **Efficient proposing**: On-demand block building
- **Better blob utilization**: Resource optimization

**Ecosystem Growth**:
- **Profitability proof**: Sustainable model demonstrated
- **Permissionless expansion**: Open participation growth
- **Community governance**: DAO parameter control

## Data Sources and References

### Official Documentation
- [Taiko Based Rollup Economics](https://taiko.mirror.xyz/PhlvGdIaY3-ZQ1DqI9uM5LxrWGWLAzLI84rkxhvPKmM)
- [Rollup Decentralization](https://taiko.mirror.xyz/sxR3iKyD-GvTuyI9moCg4_ggDI4E4CqnvhdwRq5yL0A)
- [Based Rollup FAQ](https://taiko.mirror.xyz/7dfMydX1FqEx9_sOvhRt3V8hJksKSIWjzhCVu7FyMZU)

### 2024 Milestones
- Mainnet launch: Successful deployment
- 90-day profitability: Proven sustainable economics
- Ontake upgrade: Enhanced fee mechanisms (Nov 2024)
- Permissionless network: Fully decentralized operation

### Network Statistics
- Block proposers: Permissionless participation
- Provers: Decentralized network with TAIKO bonds
- Fee distribution: Transparent on-chain tracking
- DAO treasury: Growing base fee accumulation

## Key Insights

1. **First Profitable Based Rollup**: Achieved in 90 days post-mainnet
2. **Truly Decentralized**: No centralized sequencer or prover
3. **MEV Redistribution**: Value flows back to Ethereum ecosystem
4. **Permissionless Participation**: Open proposer and prover networks
5. **Sustainable Economics**: Proven revenue model for all participants

## Conclusion

Taiko represents a groundbreaking achievement in L2 economics through its based rollup model where fees are distributed across a fully decentralized ecosystem rather than captured by centralized operators. Users pay fees that flow to permissionless proposers (~40%), decentralized provers (~25%), Ethereum L1 (~25%), and the Taiko DAO (~10%). The 90-day profitability milestone proves that decentralized models can be economically sustainable while providing equitable MEV access and eliminating single points of failure. Unlike traditional rollups that concentrate revenue extraction, Taiko redistributes value across open networks, aligning with Ethereum's decentralization principles while maintaining competitive costs and performance. The November 2024 Ontake upgrade further enhances this model with improved fee mechanisms and preconfirmation capabilities.