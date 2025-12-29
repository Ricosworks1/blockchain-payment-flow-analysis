**Last Updated: December 29, 2025**

# Protocol Fee Distribution: Where Every Dollar Goes

## Overview
Precise breakdown of how $1 spent or earned through major DeFi protocols is distributed to various stakeholders, including blockchain validators/sequencers.

## 🏦 Stablecoin Protocols

### Tether (USDT) - For Every $1 of Reserve Interest
- **$0.95-0.98** → Tether Limited (company profit)
- **$0.02-0.05** → Service providers (custody, audit, compliance)
- **$0.00** → USDT holders (no yield)
- **Blockchain fees** → Paid separately by users per transaction

### Circle (USDC) - For Every $1 of Reserve Interest
- **$0.93-0.96** → Circle Internet Financial (company profit)
- **$0.02-0.03** → BlackRock (reserve management)
- **$0.01-0.02** → BNY Mellon (custody)
- **$0.00** → USDC holders (no yield)
- **Blockchain fees** → Paid separately by users per transaction

## 💧 Liquid Staking Protocols

### Lido (Ethereum) - For Every $1 of Staking Rewards Generated
- **$0.90** → stETH holders (liquidity providers)
- **$0.05** → Node operators
- **$0.05** → Lido DAO treasury
- **Gas fees** → ~$5-20 per stake/unstake (paid to Ethereum validators)

### EtherFi (Ethereum) - For Every $1 of Staking/Restaking Rewards
- **$0.90** → eETH/weETH holders
- **$0.05** → Node operators
- **$0.05** → EtherFi protocol treasury
- **Gas fees** → ~$10-30 per transaction (paid to Ethereum validators)

### Jito (Solana) - For Every $1 of Staking Rewards
- **$0.96** → JitoSOL holders
- **$0.04** → Jito protocol treasury
- **Plus MEV tips** → 100% to JitoSOL holders (additional)
- **Gas fees** → ~$0.00025 per transaction (paid to Solana validators)

## 💰 Lending Protocols

### Aave - For Every $1 of Interest Paid by Borrowers
- **$0.65-0.90** → Liquidity providers (lenders)
- **$0.10-0.35** → Aave DAO treasury (reserve factor)
- **Gas fees per transaction**:
  - Ethereum: ~$10-50 → Ethereum validators
  - Polygon: ~$0.01-0.05 → Polygon validators
  - Arbitrum: ~$0.50-2 → Arbitrum sequencer

### Spark (Ethereum) - For Every $1 of Interest Paid
- **$0.80-0.90** → DAI suppliers
- **$0.10-0.20** → SparkDAO treasury
- **Gas fees** → ~$15-40 per transaction (paid to Ethereum validators)

### Morpho - For Every $1 of Interest Saved via P2P
- **$1.00** → Split between lenders (better rate) and borrowers (lower rate)
- **$0.00** → Protocol (no fees currently)
- **Gas fees** → ~$20-60 for matching (paid to Ethereum validators)

## 🔄 DEX/AMM Protocols

### Uniswap - For Every $1 of Swap Fees
- **$1.00** → Liquidity providers
- **$0.00** → Protocol (fee switch inactive)
- **Note**: Uniswap Labs takes 0.15% interface fee separately
- **Gas fees per swap**:
  - Ethereum: ~$15-100 → Ethereum validators
  - Arbitrum: ~$0.50-3 → Arbitrum sequencer
  - Base: ~$0.10-1 → Base sequencer

### Jupiter (Solana) - For Every $1 of Swap Fees
- **$0.70** → JLP providers (on perpetuals)
- **$0.30** → Jupiter protocol treasury
- **Variable** → Referral partners (up to 50% split)
- **Gas fees** → ~$0.0005-0.002 per swap (paid to Solana validators)

### Meteora (Solana) - For Every $1 of DLMM Trading Fees
- **$1.00** → Liquidity providers in active bins
- **$0.00** → Protocol on swaps
- **Note**: Protocol earns from vault performance fees (5-10%)
- **Gas fees** → ~$0.0003-0.001 per trade (paid to Solana validators)

## 🔗 Synthetic/Derivatives Protocols

### Ethena - For Every $1 of Yield Generated
- **$0.70-0.85** → sUSDe stakers
- **$0.15-0.30** → Insurance fund
- **Gas fees** → ~$10-30 per mint/redeem (paid to Ethereum validators)
- **CEX fees** → Variable for hedging positions

### Pump.fun (Solana) - For Every $1 of Trading Volume
- **$0.01** → Platform on buys (1% fee)
- **$0.01** → Platform on sells (1% fee)
- **$0.98** → Traders (net after fees)
- **Gas fees** → ~$0.0002-0.0005 per trade (paid to Solana validators)
- **Token creation** → 0.02 SOL (~$3) to platform

### EdgeX - For Every $1 of Trading Fees
- **$0.40-0.60** → Liquidity providers
- **$0.40-0.60** → Protocol treasury
- **Gas fees** → Variable by chain

## 🔁 Restaking Protocols

### EigenLayer (Ethereum) - For Every $1 of AVS Rewards
- **$0.70-0.85** → Restakers
- **$0.10-0.20** → Node operators
- **$0.05-0.10** → Liquid restaking protocols (if used)
- **$0.00** → EigenLayer protocol (currently)
- **Gas fees** → ~$20-50 per deposit/withdrawal (paid to Ethereum validators)

## 🚀 Launchpad Protocols

### Pump.fun - For Every $1 Token Purchase
- **$0.02** → Platform fees (2% round trip)
- **$0.98** → Token/liquidity
- **Plus ~0.02 SOL** → Per token creation
- **Gas fees** → ~$0.0002-0.0005 (paid to Solana validators)

## 🌾 Yield Optimization

### Sky/MakerDAO (Ethereum) - For Every $1 of Stability Fees
- **$0.60-0.80** → DSR/SSR holders
- **$0.20-0.40** → Protocol surplus/operations
- **Gas fees** → ~$30-80 per vault operation (paid to Ethereum validators)

### Aster - For Every $1 of Yield Generated
- **$0.80-0.85** → Vault depositors
- **$0.15-0.20** → Protocol (performance fee)
- **$0.02** → Annual management fee
- **Gas fees** → Variable by chain (harvest gas paid by protocol)

### Lagoon Finance - For Every $1 of Yield Generated
- **$0.80-0.85** → Vault depositors
- **$0.15-0.20** → Protocol treasury
- **$0.005-0.02** → Harvest keepers
- **Gas fees** → Variable by chain (paid by users)

## 🔧 Infrastructure/Middleware

### Axiom (Ethereum) - For Every $1 of Query Fees
- **$0.40-0.50** → ZK proof generators
- **$0.30-0.40** → Axiom protocol
- **$0.10-0.20** → Infrastructure providers
- **Gas fees** → ~$50-200 for proof verification (paid to Ethereum validators)

## 📊 Key Insights by Fee Model

### Zero Protocol Fee Models
- **Morpho**: 100% value to users
- **Uniswap**: 100% to LPs
- **EigenLayer**: 100% pass-through

### High User Retention (90%+ to users)
- **Lido**: $0.90 per $1
- **EtherFi**: $0.90 per $1
- **Jito**: $0.96 per $1

### Balanced Distribution (70-85% to users)
- **Aave**: $0.65-0.90 per $1
- **Spark**: $0.80-0.90 per $1
- **Ethena**: $0.70-0.85 per $1

### Platform-Centric (90%+ to platform)
- **Tether**: $0.95-0.98 per $1
- **Circle**: $0.93-0.96 per $1
- **Pump.fun**: $1.00 per $1 of fees

## 🎯 User Cost Analysis

### Trading Costs (per $100 traded)
- **Uniswap**: $0.05-0.30 (LP fees only)
- **Jupiter**: $0.02-0.10 (platform fees)
- **Pump.fun**: $2.00 (round trip)

### Borrowing Costs (annual on $100)
- **Aave**: $5-15 (varies by asset)
- **Spark**: $5-12 (with DSR benefits)
- **Morpho**: Lower than pools (P2P matching)

### Staking Returns (annual on $100)
- **Lido**: $4.50 (5% APY minus 10% fee)
- **Jito**: $7.50+ (with MEV boost)
- **EtherFi**: $4.50-5.40 (with restaking)

## 💡 Value Extraction Patterns

### Minimal Extraction (<5%)
- **Jito**: 4% of staking rewards
- **Morpho**: 0% currently

### Moderate Extraction (5-20%)
- **Lido**: 10% of rewards
- **Aave**: 10-35% of interest
- **Most yield aggregators**: 15-20%

### High Extraction (>90%)
- **Tether**: 95%+ of interest
- **Circle**: 93%+ of interest
- **Pump.fun**: 100% of platform fees

## 📈 Annual Revenue per $1M TVL

### Stablecoins
- **Tether/Circle**: $40,000-60,000 (4-6% on reserves)

### Liquid Staking
- **Lido**: $5,000 (0.5% of TVL)
- **Jito**: $2,800 (0.28% of TVL)

### Lending
- **Aave**: $6,800-11,400 (varies by utilization)
- **Spark**: $6,000-10,000

### DEX
- **Uniswap**: $0 protocol revenue
- **Jupiter**: $800-1,400

## ⛽ Blockchain Fee Breakdown by Network

### Ethereum L1
- **Transaction cost**: $5-100+ per transaction
- **Recipients**:
  - Base fee → Burned (70-90%)
  - Priority fee → Validators (10-30%)
  - MEV tips → Validators/builders

### Solana
- **Transaction cost**: $0.00025-0.002 per transaction
- **Recipients**:
  - 50% → Burned
  - 50% → Validators
  - Plus priority fees → Leader validator

### Layer 2s (Arbitrum, Base, Optimism)
- **Transaction cost**: $0.10-3 per transaction
- **Recipients**:
  - 60-80% → L2 sequencer
  - 20-40% → Ethereum L1 for data availability

### Polygon
- **Transaction cost**: $0.01-0.10 per transaction
- **Recipients**:
  - 85-95% → Polygon validators
  - 5-15% → Burned or checkpoints to Ethereum

### BNB Chain
- **Transaction cost**: $0.10-0.50 per transaction
- **Recipients**:
  - 70-80% → Validators
  - 20-30% → Burned quarterly

## 📊 Total Cost Analysis (Protocol + Blockchain Fees)

### Example: $1,000 Swap
**Ethereum (Uniswap):**
- Protocol fee: $3 (0.3% to LPs)
- Interface fee: $1.50 (0.15% to Uniswap Labs)
- Gas fee: $30 (to validators)
- **Total cost**: $34.50

**Arbitrum (Uniswap):**
- Protocol fee: $3 (0.3% to LPs)
- Interface fee: $1.50 (0.15% to Uniswap Labs)
- Gas fee: $1 (to sequencer)
- **Total cost**: $5.50

**Solana (Jupiter):**
- Protocol fee: $0.50 (0.05%)
- Gas fee: $0.001
- **Total cost**: $0.501

### Example: $10,000 Borrow on Aave (Annual)
**Ethereum:**
- Interest (10% APR): $1,000
  - $650-900 → Lenders
  - $100-350 → Aave treasury
- Gas fees (4 transactions): ~$120
- **Total cost**: $1,120

**Polygon:**
- Interest (10% APR): $1,000
  - $650-900 → Lenders
  - $100-350 → Aave treasury
- Gas fees (4 transactions): ~$0.20
- **Total cost**: $1,000.20

## 💡 Key Insights

### High Blockchain Fee Impact
- **Ethereum protocols**: Gas can exceed protocol fees
- **Small transactions**: Blockchain fees dominate on Ethereum
- **L2 advantage**: 50-99% reduction in blockchain fees

### Low Blockchain Fee Networks
- **Solana**: <0.1% transaction cost
- **Polygon**: <1% transaction cost
- **BSC**: <1% transaction cost

### Fee Optimization Strategies
- **Batch operations**: Amortize gas costs
- **L2 usage**: Dramatic fee reduction
- **Time transactions**: Lower gas periods
- **Protocol selection**: Consider total cost (protocol + blockchain)