# Ethereum Gas Usage Analysis - Top 43 Consumers
*24-Hour Period - September 2025*

## Executive Summary (source: etherscan.com)
Analysis of Ethereum's top 43 gas consumers over a 24-hour period reveals MEV bots as the dominant gas consumer category, followed by stablecoins and DEX infrastructure. Total fees tracked: **$517,742** (119.85 ETH).

## Top 10 Gas Consumers

| Rank | Protocol | 24h Fees (USD) | 24h Fees (ETH) | Sector |
|------|----------|----------------|----------------|---------|
| 1 | jaredfromsubway: MEV Bot 2 | $72,925.81 | 16.88 | MEV Bot |
| 2 | Tether: USDT | $67,323.22 | 15.58 | Stablecoin |
| 3 | MEV Bot: 0xfBd...C37 | $51,962.26 | 12.02 | MEV Bot |
| 4 | Circle: USDC | $47,544.68 | 11.00 | Stablecoin |
| 5 | MEV Bot: 0x51C...a7F | $46,557.41 | 10.77 | MEV Bot |
| 6 | Banana Gun: Router 2 | $24,168.64 | 5.59 | Trading Bot |
| 7 | Metamask: Swap Router | $22,266.79 | 5.15 | DEX Aggregator |
| 8 | Uniswap V4: Universal Router | $20,846.96 | 4.82 | DEX |
| 9 | OKX: DEX Router | $13,379.23 | 3.10 | DEX |
| 10 | Seaport 1.6 | $11,443.79 | 2.65 | NFT Marketplace |

## Sector Analysis

### MEV Bots
- **Total Fees**: $179,905.25 (41.60 ETH)
- **Number of Bots**: 5
- **Top Consumer**: jaredfromsubway MEV Bot 2 ($72,925.81)
- **Share of Top 43**: 34.8% of total fees

### Stablecoins
- **Total Fees**: $114,867.90 (26.58 ETH)
- **Protocols**: Tether USDT, Circle USDC
- **Share of Top 43**: 22.2% of total fees

### DEX & Aggregators
- **Total Fees**: $103,642.02 (23.98 ETH)
- **Key Players**: Uniswap (V2, V3, V4), Metamask, 1inch, OKX, KyberSwap, ParaSwap
- **Number of Protocols**: 11
- **Share of Top 43**: 20.0% of total fees

### DeFi Protocols
- **Total Fees**: $25,600.42 (5.93 ETH)
- **Key Protocols**: Pendle, Legion YieldBasis, Mimic, Aave
- **Share of Top 43**: 4.9% of total fees

### Bridge Infrastructure
- **Total Fees**: $14,953.30 (3.46 ETH)
- **Protocols**: Li.Fi, deBridge, Across Protocol, Relay Router
- **Share of Top 43**: 2.9% of total fees

### Other Notable Categories
- **Trading Bots**: $24,168.64 (Banana Gun)
- **NFT Marketplace**: $11,443.79 (Seaport)
- **CEX Integration**: $10,071.25 (Coinbase)
- **Account Abstraction**: $5,896.22 (Entry Points)
- **Infrastructure**: $1,551.91 (Multicall3)
- **Scam/Phishing**: $1,477.06

## Key Insights

### 1. MEV Dominance
MEV bots account for the largest share of gas consumption (34.8%), with a single bot (jaredfromsubway) consuming more gas than any other protocol including major stablecoins.

### 2. Stablecoin Activity
USDT and USDC combined represent 22.2% of gas fees, highlighting the continued importance of stablecoin transfers on Ethereum mainnet despite L2 adoption.

### 3. DEX Fragmentation
11 different DEX-related protocols appear in the top 43, showing a highly fragmented but active decentralized trading ecosystem. Aggregators (Metamask, 1inch, KyberSwap, ParaSwap) play a crucial role.

### 4. Emerging Infrastructure
- Account Abstraction (Entry Points) is gaining traction with ~$5.9k in daily fees
- Bridge aggregators like Li.Fi are becoming significant gas consumers
- Trading bots (Banana Gun) show retail MEV activity beyond professional MEV bots

### 5. Unknown Addresses
Several high-fee addresses (~$16k combined) remain unidentified, potentially representing private MEV bots or institutional activity.

## Implications

1. **MEV Impact**: MEV extraction continues to be a major network cost, consuming over 1/3 of tracked gas fees
2. **L1 vs L2**: Despite L2 growth, critical infrastructure (stablecoins, major DEXs) still heavily utilizes L1
3. **User Costs**: High gas consumption by bots and infrastructure may crowd out regular user transactions
4. **Market Maturity**: The presence of sophisticated infrastructure (aggregators, account abstraction, bridges) indicates a maturing ecosystem

## Total Metrics
- **Total Fees (Top 43)**: $517,742.16
- **Total ETH Consumed**: 119.85 ETH
- **Average Fee per Protocol**: $12,040.52
- **Median Fee**: $3,121.85

Source: '/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis/case_studies/chains_l2s_and_l1s_24h_metrics/ethereum_gas_usage_metrics_sept_2025/data/top_50_gas_guzzlers_eth_filtered_by_fees_last_24hrs.pdf'
