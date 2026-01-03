# Sui Money Flow Analysis: Object-Centric Blockchain Economics

**Last Updated: January 2, 2026**

## Executive Summary

Sui operates as a high-performance Layer 1 blockchain utilizing an object-centric data model powered by the Move programming language, now processing over 7.5 billion transactions annually and surpassing 10 billion cumulative transactions in May 2025 [^1]. 🔷 **HARD DATA**: SUI trades at $1.45 with $5.41 billion market cap, TVL at $936 million (DefiLlama), with institutional momentum building through Bitwise's spot SUI ETF filing (December 18, 2025) and inclusion in the Bitwise 10 Crypto Index ETF [^2][^3]. Bitcoin DeFi (BTCfi) protocols now constitute 10% of Sui's TVL, positioning the network as a critical hub for Bitcoin liquidity [^4]. The Mysticeti v2 consensus upgrade (October 7, 2025) reduced transaction latency by 35%, while DEX volume surged 232% year-over-year to $409 million [^5]. With daily wallet growth of approximately 500,000 new accounts and $23 million in all-time fees, Sui demonstrates strong adoption across gaming, DeFi, and institutional use cases [^6].

## 1. Protocol Architecture and Economic Model

### Object-Centric Design Fundamentals

Sui represents a paradigm shift from account-based to object-centric blockchain architecture, enabling parallel transaction execution and improved scalability.

**Data point:** Object-centric model enables parallel processing of transactions affecting different objects without interference
[^5]

**Data point:** Move programming language provides resource safety and predictable gas costs through compile-time optimization
[^6]

**Data point:** Theoretical peak throughput of 297,000 TPS achieved in testnet with 100 globally distributed validators
[^7]

The architecture allows independent object histories rather than global transaction logs, significantly improving transaction throughput and reducing latency.

### Dual-Fee Structure Mechanism

Sui implements separate pricing for computation and storage, creating sustainable long-term economics for data maintenance.

**Data point:** Computation fees constitute 70-80% of total transaction costs and flow directly to validators
[^2]

**Data point:** Storage fees represent 20-30% of costs and enter the Storage Fund for future redistribution
[^2]

**Data point:** Storage fee set at 76 MIST (0.000000076 SUI) per storage unit with governance-controlled pricing
[^8]

This separation ensures validators receive immediate compensation for processing while creating a fund for perpetual storage costs.

## 2. Storage Fund Innovation and Economics

### Rebate System Mechanics

The Storage Fund addresses intertemporal storage costs by compensating current validators while funding future maintenance.

**Data point:** 99% of storage fees rebated to users when data is deleted from the blockchain
[^8]

**Data point:** 1% of storage fees become permanent validator revenue while 99% remains rebateable
[^8]

**Data point:** Storage Fund staked to validators with rewards helping offset data storage operational costs
[^9]

### Economic Incentives and Sustainability

The rebate mechanism creates market-driven storage optimization while ensuring long-term network sustainability.

**Data point:** Objects hold intrinsic value proportional to stored data amount, incentivizing efficient usage
[^8]

**Data point:** Fund pays only returns on capital without distributing principal, ensuring indefinite sustainability
[^9]

**Data point:** Storage Fund size fixed per epoch based on net inflows from current fees and reinvestment returns
[^9]

This model creates deflationary pressure on SUI tokens while aligning validator incentives with network storage requirements.

## 3. Network Performance and Adoption Metrics

### Transaction Volume Growth

Sui has demonstrated exceptional growth in transaction processing and network utilization.

🔷 **HARD DATA**: Over 7.5 billion transactions processed in 2024, outperforming Tron, Polygon, and Ethereum
[^10]

🔷 **HARD DATA**: Surpassed 10 billion cumulative transactions as of May 7, 2025
[^11]

🔷 **HARD DATA**: Q3 2025 showed 4.7 million average daily transactions (down 4.7% QoQ) with 895,800 average daily active addresses
[^12]

### Total Value Locked Expansion

The DeFi ecosystem on Sui has experienced significant growth with Bitcoin integration.

🔷 **HARD DATA**: TVL at $936 million (DefiLlama, January 2, 2026); peaked at $2.33 billion during 2025
[^13]

🔷 **HARD DATA**: Bitcoin DeFi (BTCfi) protocols constitute 10% of Sui TVL, positioning as Bitcoin liquidity hub
[^4]

🔷 **HARD DATA**: DEX volume surged 232% year-over-year in 2025, reaching $409 million
[^5]

**Data point:** Daily wallet growth of approximately 500,000 new accounts with TVL nearing annual highs
[^14]

## 4. Gas Pricing and Validator Economics

### 24-Hour Reference Price System

Sui employs a unique validator survey mechanism to establish stable, predictable gas pricing across daily epochs.

**Data point:** 106 active validators across 13 countries participate in daily gas price surveys
[^15]

**Data point:** Reference price set at 2/3 percentile by stake weight from validator minimum price submissions
[^16]

**Data point:** System guarantees stable fees for 24-hour periods with at least 66% validator agreement
[^16]

### Validator Incentive Structure and Fee Generation

🔷 **HARD DATA**: 24-hour fees of $7,889; 30-day fees of $353,017; all-time fees of $23.04 million (January 2026)
[^17]

🔷 **HARD DATA**: Average transaction cost of $0.002, among the lowest in the industry
[^18]

**Data point:** Validators submitting low price quotes receive boosted staking rewards for competitive pricing
[^16]

**Data point:** Staking APY ranges from 0.21% to 5.30% depending on platform and validator choice
[^19]

## 5. User Fee Distribution Analysis

### Retail User Transaction Costs

For typical retail users performing simple operations, Sui provides ultra-low cost transactions.

**Data point:** Average transaction fee of 0.002797 SUI approximately $0.001-0.01 at current prices
[^1]

**Data point:** Simple transfers cost approximately 0.001266 SUI or $0.00229 based on current market price
[^15]

**Data point:** Transaction costs 8,000x cheaper than Ethereum's average $35 gas fees
[^16]

### DeFi User Cost Structure

DeFi operations incur both network fees and protocol-specific charges, with network costs remaining minimal.

**Data point:** Network fees for DeFi swaps typically $0.01-0.05 while protocol fees vary by platform
[^17]

**Data point:** Programmable Transaction Blocks enable up to 1,024 operations in single execution
[^16]

**Data point:** Atomic execution ensures entire operation sets succeed or fail together for consistency
[^16]

## 6. Major DeFi Protocols and Fee Structures

### Cetus Protocol Dominance

Cetus operates as the largest DEX on Sui, providing concentrated liquidity and advanced trading features.

**Data point:** Cetus maintains $167.03 million in Total Value Locked as the leading DEX
[^18]

**Data point:** Cetus Plus aggregator integrates liquidity from DeepBook, Kriya, FlowX, Aftermath, and Turbos
[^18]

**Data point:** Concentrated liquidity model enables higher transaction fee earnings for active price ranges
[^18]

### Protocol Fee Distribution

Various DeFi protocols implement different fee structures while building on Sui's low-cost foundation.

**Data point:** Swap fees generated by protocols flow to treasury and token holders through revenue sharing
[^18]

**Data point:** Turbos platform facilitates memecoin trading with $18.57 million DEX volume
[^19]

**Data point:** Scallop achieved $100 billion total lending/borrowing volume with $50 million swap volume
[^19]

## 7. Parallel Execution and MEV Resistance

### Object-Centric MEV Mitigation

Sui's architecture naturally reduces MEV opportunities through deterministic ordering and parallel execution.

**Data point:** DAG-based consensus with multiple proposers minimizes manipulation opportunities
[^20]

**Data point:** Deterministic transaction ordering reduces front-running and sandwich attack vectors
[^20]

**Data point:** Object independence enables simultaneous processing without execution conflicts
[^5]

### Performance Benefits

Parallel execution capabilities provide significant advantages over sequential blockchain architectures.

**Data point:** Transactions affecting different objects process independently without mutual interference
[^5]

**Data point:** State access parallelization identifies transaction independence for concurrent execution
[^21]

**Data point:** Theoretical capacity exceeds 160,000 TPS with sub-second finality under optimal conditions
[^21]

## 8. Developer Economics and Platform Costs

### Development and Deployment Expenses

Sui provides cost-effective infrastructure for developers building decentralized applications.

**Data point:** Package deployment costs $5-50, significantly cheaper than Ethereum alternatives
[^22]

**Data point:** Move development and audit expenses typically range $8,000-80,000 for projects
[^22]

**Data point:** Infrastructure costs including RPC and indexing average $150-800 monthly
[^22]

### Break-Even Requirements

Low operational costs enable sustainable business models for applications and protocols.

**Data point:** Projects typically require $80-800 daily fee generation to achieve break-even operations
[^22]

**Data point:** Gasless transactions and minimal fees support freemium models with $0.0001 per transaction
[^23]

**Data point:** Enterprise token ecosystems benefit from financial strain reduction compared to legacy chains
[^23]

## 9. Institutional Developments and ETF Filings

### ETF Race Intensifies

Multiple asset managers have filed for SUI exchange-traded funds, signaling institutional interest.

🔷 **HARD DATA**: Bitwise filed S-1 for spot SUI ETF with SEC on December 18, 2025 (file number 333-292227)
[^24]

🔷 **HARD DATA**: SUI included in Bitwise 10 Crypto Index ETF (BITW) since December 10, 2025
[^25]

**Data point:** Canary Capital's "Staked SUI ETF" plans to list on Nasdaq with yield generation through staking
[^26]

**Data point:** 21Shares launched 2x leveraged SUI ETF (TXXS) following SEC greenlight
[^27]

**Data point:** Bitwise ETF would use Coinbase as custodian with in-kind creation/redemption mechanism
[^28]

### Mysticeti v2 Consensus Upgrade

🔷 **HARD DATA**: Mainnet Mysticeti v2 deployed October 7, 2025, reducing transaction latency by 35%
[^29]

**Data point:** New Transaction Driver sends transactions to single validator instead of all validators
[^30]

**Data point:** Integration of transaction validation directly into consensus removes redundant steps
[^30]

### Network Launch Background

**Data point:** ⏳ HISTORICAL (May 2023): Mainnet launched May 3, 2023, with SUI token trading beginning April 23, 2023
[^31]

**Data point:** ⏳ HISTORICAL (2022): Mysten Labs raised $336 million across two funding rounds, $2 billion valuation
[^32]

**Data point:** Four former Facebook employees founded company after working on Meta's Novi Financial team
[^32]

## 10. Competitive Positioning and Market Analysis

### Performance Comparison

Sui's technical capabilities position it competitively among high-performance Layer 1 blockchains.

**Data point:** Real TPS of 854 ranks second fastest blockchain after Solana among large networks
[^10]

**Data point:** Transaction latency of 480 milliseconds compares favorably to competitor networks
[^11]

**Data point:** Processing capacity of 120,000 TPS with completion in 390 milliseconds under load
[^26]

### Economic Model Differentiation

The storage fund and rebate system creates unique economic incentives compared to other blockchains.

**Data point:** 99% storage rebates contrast with permanent storage costs on competing platforms
[^8]

**Data point:** Validator survey pricing differs from auction-based or algorithmic fee mechanisms
[^13]

**Data point:** Object-centric architecture enables application-specific optimizations unavailable elsewhere
[^5]

## 11. Risk Factors and Challenges

### Technical and Adoption Risks

Several factors could impact Sui's continued growth and market position.

**Data point:** Move language learning curve may limit developer adoption compared to Solidity ecosystem
[^27]

**Data point:** Parallel execution benefits require application optimization for maximum effectiveness
[^21]

**Data point:** Storage Fund sustainability depends on continued network growth and usage patterns
[^9]

### Market Competition

Sui faces competition from other high-performance blockchains in attracting users and developers.

**Data point:** Solana maintains higher real-world transaction volumes and established DeFi ecosystem
[^28]

**Data point:** Ethereum's network effects and developer tools provide competitive advantages
[^27]

**Data point:** Newer Layer 1s with similar performance characteristics increase market competition
[^28]

## Conclusion

Sui has emerged as a leading high-performance Layer 1 blockchain with strong institutional momentum. 🔷 **HARD DATA**: With 10+ billion cumulative transactions, $936 million TVL, and DEX volume up 232% year-over-year, the network demonstrates robust adoption across gaming, DeFi, and Bitcoin liquidity integration. The Mysticeti v2 upgrade (October 2025) achieved 35% latency reduction, while multiple ETF filings from Bitwise, Canary Capital, and 21Shares signal growing institutional interest.

The network's validator survey pricing system provides unprecedented fee stability through 24-hour reference prices, with average transaction costs of just $0.002. Bitcoin DeFi protocols now constitute 10% of TVL, positioning Sui as a critical hub for cross-chain Bitcoin liquidity. Daily wallet growth of 500,000 new accounts indicates continued organic adoption.

Critical success factors for 2026 include: (1) ETF approval catalyzing institutional inflows, (2) maintaining competitive position against Solana and other high-performance chains, (3) expanding developer adoption beyond the Move language learning curve, and (4) sustaining TVL growth after the 2025 peak of $2.33 billion. The object-centric architecture and 99% storage rebate mechanism provide unique economic differentiation.

The protocol's emphasis on predictable costs, parallel execution, and institutional-grade infrastructure positions it well for both retail and institutional adoption, with the ETF race potentially marking a inflection point for mainstream access to SUI exposure.

## Sources and References

[^1]: CoinMarketCap. (2025). SUI Latest Updates. *CoinMarketCap*. Retrieved January 2, 2026, from https://coinmarketcap.com/cmc-ai/sui/latest-updates/

[^2]: CoinGecko. (2026, January 2). SUI Token. *CoinGecko*. Retrieved January 2, 2026, from https://www.coingecko.com/en/coins/sui 🔷 HARD DATA

[^3]: DefiLlama. (2026, January 2). Sui. *DefiLlama*. Retrieved January 2, 2026, from https://defillama.com/chain/Sui 🔷 HARD DATA

[^4]: CoinMarketCap. (2026, January). SUI News. *CoinMarketCap*. Retrieved January 2, 2026, from https://coinmarketcap.com/cmc-ai/sui/latest-updates/

[^5]: Blockchain News. (2025, December 17). SUI Price Prediction. *Blockchain News*. Retrieved January 2, 2026, from https://blockchain.news/news/20251217-price-prediction-sui-targeting-170-210-recovery-by-end

[^6]: DefiLlama. (2026, January 2). Sui Fees. *DefiLlama*. Retrieved January 2, 2026, from https://defillama.com/fees/sui 🔷 HARD DATA

[^7]: Medium - Luganodes. (2024). A Glance Into Sui's Object-Centric Data Model. *Medium*. Retrieved January 2, 2026, from https://medium.com/luganodes/a-glance-into-suis-object-centric-data-model-475db3deac9d

[^8]: Sui Documentation. (2026, January). Sui Move Concepts. *Sui Docs*. Retrieved January 2, 2026, from https://docs.sui.io/concepts/sui-move-concepts

[^9]: Sui Blog. (2024). Storage Fund Demystified. *Sui Blog*. Retrieved January 2, 2026, from https://blog.sui.io/storage-fund-demystified/

[^10]: CoinMarketCap. (2025). SUI. *CoinMarketCap*. Retrieved January 2, 2026, from https://coinmarketcap.com/cmc-ai/sui/latest-updates/ 🔷 HARD DATA

[^11]: The Market Periodical. (2025, May 8). SUI Hits 10B Transactions. *The Market Periodical*. Retrieved January 2, 2026, from https://themarketperiodical.com/2025/05/08/sui-hits-10b-transactions-targets-4-48-and-7-levels/ 🔷 HARD DATA

[^12]: Messari. (2025, Q3). State of Sui Q3 2025. *Messari*. Retrieved January 2, 2026, from https://messari.io/report/state-of-sui-q3-2025 🔷 HARD DATA

[^13]: DefiLlama. (2026, January 2). Sui TVL. *DefiLlama*. Retrieved January 2, 2026, from https://defillama.com/chain/Sui 🔷 HARD DATA

[^14]: Blockchain News. (2025, December 22). SUI Price Target. *Blockchain News*. Retrieved January 2, 2026, from https://blockchain.news/news/20251222-price-prediction-target-sui-170-210-recovery-within-30-days

[^15]: SuiVision. (2026, January). Validators. *SuiVision*. Retrieved January 2, 2026, from https://suivision.xyz/validators

[^16]: Figment. (2024). Deep Dive: Sui Reference Gas Price. *Figment*. Retrieved January 2, 2026, from https://figment.io/insights/deep-dive-sui-reference-gas-price/

[^17]: DefiLlama. (2026, January 2). Sui Fees. *DefiLlama*. Retrieved January 2, 2026, from https://defillama.com/fees/sui 🔷 HARD DATA

[^18]: CoinMarketCap. (2026, January). SUI. *CoinMarketCap*. Retrieved January 2, 2026, from https://coinmarketcap.com/cmc-ai/sui/latest-updates/ 🔷 HARD DATA

[^19]: Staking Rewards. (2026, January). SUI. *Staking Rewards*. Retrieved January 2, 2026, from https://www.stakingrewards.com/asset/sui 🔷 HARD DATA

[^20]: Cointelegraph. (2024). Sui Object-Centric Model and Move Programming Language. *Cointelegraph*. Retrieved January 2, 2026, from https://cointelegraph.com/news/sui-object-centric-model-move-programming-language

[^21]: Sui Documentation. (2026, January). Storage Fund. *Sui Docs*. Retrieved January 2, 2026, from https://docs.sui.io/concepts/tokenomics/storage-fund

[^22]: Cetus Protocol - Medium. (2025). Introducing Cetus Plus. *Medium*. Retrieved January 2, 2026, from https://medium.com/@CetusProtocol/introducing-cetus-plus-revolutionizing-swaps-on-the-sui-network-0131f279cfc1 🔷 HARD DATA

[^23]: Vocal Media. (2025). Why Top Web3 Projects Are Choosing Sui for Token Development. *Vocal Media*. Retrieved January 2, 2026, from https://vocal.media/education/why-top-web3-projects-are-choosing-sui-for-token-development-in-2025

[^24]: The Block. (2025, December 18). Bitwise Joins Race to Launch SUI ETF. *The Block*. Retrieved January 2, 2026, from https://www.theblock.co/post/383207/bitwise-joins-race-to-launch-sui-etf-with-latest-sec-filing 🔷 HARD DATA

[^25]: CoinMarketCap. (2025, December 10). SUI Updates. *CoinMarketCap*. Retrieved January 2, 2026, from https://coinmarketcap.com/cmc-ai/sui/latest-updates/ 🔷 HARD DATA

[^26]: CryptoNinjas. (2025, December). Bitwise Files Spot SUI ETF with SEC. *CryptoNinjas*. Retrieved January 2, 2026, from https://www.cryptoninjas.net/news/bitwise-files-spot-sui-etf-with-sec-offering-direct-exposure-and-staking-yield-to-tap-a-5b-token-market/

[^27]: CoinMarketCap. (2025, December). SUI. *CoinMarketCap*. Retrieved January 2, 2026, from https://coinmarketcap.com/cmc-ai/sui/latest-updates/

[^28]: Bankless Times. (2025, December 19). Bitwise Files S-1 with SEC for Spot SUI ETF. *Bankless Times*. Retrieved January 2, 2026, from https://www.banklesstimes.com/articles/2025/12/19/bitwise-files-an-s-1-with-the-sec-for-a-spot-sui-etf/

[^29]: Sui Blog. (2025, October 7). Mysticeti v2 Sui Consensus. *Sui Blog*. Retrieved January 2, 2026, from https://blog.sui.io/mysticeti-v2-sui-consensus/ 🔷 HARD DATA

[^30]: Crypto News. (2025, October). Sui Launches Mysticeti v2 Consensus Upgrade. *Crypto News*. Retrieved January 2, 2026, from https://crypto.news/sui-launches-mysticeti-v2-consensus-upgrade-2025/

[^31]: CoinMarketCap Academy. (2023, May). Sui to Launch Mainnet and Token. *CoinMarketCap Academy*. Retrieved January 2, 2026, from https://coinmarketcap.com/academy/article/sui-to-launch-mainnet-and-token-what-you-need-to-know ⏳ HISTORICAL

[^32]: Blockworks. (2022). Mysten Labs Launches Blockchain Platform Sui. *Blockworks*. Retrieved January 2, 2026, from https://blockworks.co/news/mysten-labs-launches-blockchain-platform-sui ⏳ HISTORICAL

[^33]: Delphi Digital. (2024). Demystifying MEV in Sui. *Delphi Digital*. Retrieved January 2, 2026, from https://members.delphidigital.io/feed/demystifying-mev-in-sui

[^34]: Stakin Blog. (2024). Sui Blockchain: A Deep Dive. *Stakin Blog*. Retrieved January 2, 2026, from https://stakin.com/blog/sui-blockchain-a-deep-dive

[^35]: Sui Blog. (2025). $2 Billion TVL Milestone DeFi. *Sui Blog*. Retrieved January 2, 2026, from https://blog.sui.io/2-billion-tvl-milestone-defi/

[^36]: Figment. (2024). Sui Tokenomics. *Figment*. Retrieved January 2, 2026, from https://figment.io/insights/sui-tokenomics/

[^37]: GetBlock Blog. (2025). Best Sui DEXs. *GetBlock Blog*. Retrieved January 2, 2026, from https://getblock.io/blog/best-sui-dexs/

[^38]: Sui Blog. (2024, Q3). Q3 2024 DeFi Roundup. *Sui Blog*. Retrieved January 2, 2026, from https://blog.sui.io/q3-2024-defi-roundup/ ⏳ HISTORICAL

[^39]: Oodles Blockchain. (2025). Sui Blockchain. *Oodles Blockchain*. Retrieved January 2, 2026, from https://blockchain.oodles.io/blog/sui-blockchain/

[^40]: TokenInsight. (2023). Sui Testnet Has 100 Globally Distributed Validators. *TokenInsight*. Retrieved January 2, 2026, from https://tokeninsight.com/en/news/sui-testnet-has-100-globally-distributed-validators-peak-throughput-of-nearly-300-000-tps

[^41]: Hashlock Blog. (2025). Understanding TPS: Which Blockchains Are the Fastest. *Hashlock Blog*. Retrieved January 2, 2026, from https://hashlock.com/blog/understanding-tps-which-blockchains-are-the-fastest

[^42]: Kraken Learn. (2025). What is Sui Network. *Kraken Learn*. Retrieved January 2, 2026, from https://www.kraken.com/learn/what-is-sui-network-sui

[^43]: Cryptomus Blog. (2025). SUI vs Solana Complete Comparison. *Cryptomus Blog*. Retrieved January 2, 2026, from https://cryptomus.com/blog/sui-vs-solana-complete-comparison

[^44]: Mudrex Learn. (2025). The Sui Network Explained. *Mudrex Learn*. Retrieved January 2, 2026, from https://mudrex.com/learn/the-sui-network-explained/

[^45]: GasFees.org. (2025). What Are Sui Gas Fees. *GasFees.org*. Retrieved January 2, 2026, from https://gasfees.org/what-are-sui-gas-fees/ 🔷 HARD DATA

[^46]: Tangem Blog. (2025). Sui Blockchain. *Tangem Blog*. Retrieved January 2, 2026, from https://tangem.com/en/blog/post/sui-blockchain/

[^47]: AInvest. (2025, December). SUI Path to Major Price Surge 2026. *AInvest*. Retrieved January 2, 2026, from https://www.ainvest.com/news/sui-path-major-price-surge-2026-technical-resilience-macro-bullish-catalysts-2512/

[^48]: Messari. (2025, Q1). State of Sui Q1 2025. *Messari*. Retrieved January 2, 2026, from https://messari.io/report/state-of-sui-q1-2025

[^49]: Sui Blog. (2025, Q2). Q2 2025 DeFi Roundup. *Sui Blog*. Retrieved January 2, 2026, from https://blog.sui.io/q2-2025-defi-roundup/

[^50]: BSC News. (2025). Sui Network Updates. *BSC News*. Retrieved January 2, 2026, from https://bsc.news/post/sui-network-updates