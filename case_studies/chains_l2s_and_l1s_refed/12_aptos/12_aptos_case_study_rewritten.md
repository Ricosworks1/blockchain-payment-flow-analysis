# Aptos Fee Flow Analysis: Where Every Dollar Goes

## Executive Summary
When users spend $1 on Aptos, transaction fees are BURNED (deflationary mechanism), while validators earn separate staking rewards from inflation. This analysis traces the complete journey of fees from different user perspectives, based on official Aptos documentation.

## User Types and Fee Distribution

### 1. Retail User (Simple Transfer)
**Transaction Type**: APT token transfer between wallets

**$1 Fee Breakdown**:
- **100% BURNED** - Transaction fees are currently burned
  - Deflationary mechanism for APT supply
  - Not distributed to validators (they earn staking rewards separately)
  - May change via future governance vote

**Hidden Costs**: None for simple transfers

**Example**: User sends 100 APT to another wallet
- Pays: ~0.01 APT gas fee
- Result: 100% burned, reducing APT supply

### 2. DeFi User (Swap Transaction)
**Transaction Type**: Token swap on DEX

**$1 Onchain Fee Breakdown**:
- **Gas Fees (100% of blockchain fees)** → BURNED
- **Additional Protocol Fees** (on top of gas):
  - 0.3% swap fee → Liquidity Providers (e.g., on PancakeSwap)
  - Platform fee → Protocol treasury (varies by DEX)

**Total Cost Structure**:
- If $1 total cost on a swap:
  - ~$0.10 gas → BURNED
  - ~$0.90 swap fees → LPs and protocol

**Hidden Costs**:
- Slippage (0.5-3% typical)
- MEV (minimal due to Block-STM parallel execution)
- Failed transaction fees if slippage too high

### 3. Developer/Protocol Deployment
**Transaction Type**: Smart contract deployment and operation

**$1 Onchain Fee Breakdown**:
- **Deployment Gas**: 100% → BURNED
- **Storage Fees**: → Refundable storage system
  - Locked until storage deleted
  - Acts as deposit, not permanent fee

**Offchain Costs** (not visible onchain):
- **Development**: $50k-500k for audit and development
- **Infrastructure**: $500-5000/month for RPC, indexing
- **Oracle Services**: $100-1000/month (Pyth now live, Chainlink integration via SCALE program, Supra available)
- **Marketing/BD**: $10k-100k for launch and growth
- **Compliance**: Variable based on jurisdiction

**Break-even Analysis**:
- Need ~$1000-10000 daily fee generation to cover offchain costs
- Requires significant TVL and user base

### 4. NFT Creator/Trader
**Transaction Type**: NFT mint or trade

**$1 Fee Breakdown**:
- **Mint Transaction**:
  - Gas fees → BURNED (100% of blockchain fee)
  - Storage fees → Refundable system
  - Creator royalties → Artist/Creator (2-10% typical)

- **Marketplace Trade**:
  - Gas → BURNED
  - Platform fee (2.5% typical) → Marketplace
  - Royalties (if enforced) → Creator

## Storage Fee Mechanism (Unique to Aptos)

**How It Works**:
- Users pay for blockchain state storage
- Fees are **refundable** when storage deleted
- Acts as economic incentive for state cleanup

**Distribution**:
- Not part of burn mechanism (separate from gas)
- Not given to validators
- Held in escrow-like system
- Returned to user upon deletion

**Impact on $1 Spent**:
- For data-heavy transactions: ~20% might be storage (refundable)
- For simple transfers: 0% storage component

## Parallel Execution Impact (Block-STM)

**MEV Reduction**:
- Parallel transaction processing reduces front-running
- Deterministic execution order
- Result: MEV actors capture minimal value

**Fee Predictability**:
- More consistent gas prices
- Less congestion-based spikes
- Better UX for retail users

## Validator Economics

**Revenue Streams**:
- **Transaction fees**: 0% (all fees are burned)
- **Staking rewards**: From inflation (~7% APY initially, declining to 3.25% floor)
- **Block rewards**: Inflationary APT based on stake weight
- **Note**: Validators do NOT receive transaction fees directly

**Staking Returns**:
- ~7% APY from inflation (declining by 1.5% annually to 3.25% floor)
- NO additional returns from gas fees (those are burned)
- No slashing currently implemented
- 82%+ of APT supply is staked

## Comparative Analysis

### Aptos vs Ethereum (per $1 spent):
- **Aptos**: 0% to validators, 100% burn
- **Ethereum**: ~20% to validators (tips), ~80% burn

### Aptos vs Solana:
- **Aptos**: 100% gas burn, refundable storage fees
- **Solana**: 50% burn, 50% validators, rent for accounts

## Real-World Examples

### Example 1: DeFi Power User
Monthly activity: 100 swaps, 50 LP operations
- **Onchain costs**: $50 in gas → 100% BURNED
- **Protocol fees**: $500 in swap fees → LPs and protocols
- **Hidden costs**: $100 in slippage

### Example 2: NFT Collection Launch
One-time deployment + ongoing trades
- **Deployment**: $100 gas (burned) + $50 storage (refundable)
- **Minting** (1000 NFTs): $1000 gas → BURNED
- **Marketplace fees**: 2.5% of volume → platform
- **Offchain**: $50k development, $10k marketing

### Example 3: Protocol Building Business
DEX protocol with $10M TVL
- **Daily onchain fees paid**: $1000
- **Offchain monthly costs**:
  - Development team: $50k
  - Infrastructure: $5k
  - Oracles: $2k
  - Marketing: $20k
- **Break-even**: Needs $2.5k daily revenue

## Data Sources and References

### Official Documentation
- [Aptos Gas and Storage Documentation](https://aptos.dev/concepts/gas-and-storage)
- [Aptos Tokenomics Paper](https://aptosfoundation.org/whitepaper)
- [Block-STM Parallel Execution](https://medium.com/aptoslabs/block-stm-how-we-execute-over-160k-transactions-per-second)

### Network Statistics
- [Aptos Explorer](https://explorer.aptoslabs.com/) - Real-time gas prices
- [AptoScan](https://aptoscan.com/) - Validator distribution
- Current gas price: ~0.01 APT per transaction
- Validator set: 100+ active validators

### Protocol-Specific Data
- PancakeSwap Aptos: 0.25% swap fee
- Topaz/BlueMove NFT: 2.5% marketplace fee
- Typical storage: 50-500 bytes per item

## Key Insights

1. **100% Burn Mechanism**: All transaction fees are burned (deflationary)
2. **Refundable Storage**: Unique economic model for state management
3. **Validator Revenue from Inflation**: Validators earn from staking rewards, not fees
4. **Low MEV**: Parallel execution minimizes extractable value
5. **Protocol Sustainability**: Protocols need significant scale to cover offchain costs

## Conclusion

Aptos presents a deflationary fee model where 100% of transaction fees are burned, while validators earn revenue exclusively from inflationary staking rewards (declining from ~7% to 3.25% APY floor). The refundable storage system provides unique economics for state management. Protocols and developers face significant offchain costs that require substantial user adoption to achieve sustainability, while retail users benefit from predictable, low fees with minimal hidden costs due to parallel execution reducing MEV opportunities.
