# Sui Money Flow Analysis: Object-Centric Blockchain Economics

## Executive Summary

Sui operates as a high-performance Layer 1 blockchain utilizing an object-centric data model powered by the Move programming language, processing up to 17.4 million daily transactions with average fees of 0.002797 SUI ($0.001-0.01) [^1]. The protocol implements a unique dual-fee structure where 70-80% of computation fees flow directly to validators while 20-30% storage fees enter the Storage Fund with 99% rebate capability upon data deletion [^2]. With $1 billion Total Value Locked (TVL) achieved in October 2024 representing 2,700% annual growth, Sui demonstrates exceptional adoption among the fastest-growing blockchains [^3]. The network's innovative gas pricing mechanism surveys 106 validators every 24 hours to establish stable reference prices, creating predictable costs while incentivizing validator efficiency [^4].

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

Sui has demonstrated exceptional growth in transaction processing and network utilization throughout 2024.

**Data point:** Daily transactions grew from 3.6 million to 17.4 million as of October 2024
[^1]

**Data point:** Real-world TPS performance reached 854 in July 2023, ranking among fastest blockchains
[^10]

**Data point:** Network maintains sub-second finality with average latency of 480 milliseconds
[^11]

### Total Value Locked Expansion

The DeFi ecosystem on Sui has experienced rapid growth, achieving significant milestones in locked value.

**Data point:** TVL reached $1 billion in October 2024, representing 2,700% growth over 12 months
[^3]

**Data point:** Sui ranks 8th largest chain by TVL, surpassing Polygon and Optimism
[^3]

**Data point:** Over $400 million in stablecoins with top 10 ranking in weekly DEX trading volume
[^12]

This growth trajectory positions Sui among the fastest-adopting Layer 1 blockchains by value metrics.

## 4. Gas Pricing and Validator Economics

### 24-Hour Reference Price System

Sui employs a unique validator survey mechanism to establish stable, predictable gas pricing across daily epochs.

**Data point:** 106 active validators across 13 countries participate in daily gas price surveys
[^4]

**Data point:** Reference price set at 2/3 percentile by stake weight from validator minimum price submissions
[^13]

**Data point:** System guarantees stable fees for 24-hour periods with at least 66% validator agreement
[^13]

### Validator Incentive Structure

The tallying rule mechanism aligns validator behavior with network efficiency and user experience.

**Data point:** Validators submitting low price quotes receive boosted staking rewards for competitive pricing
[^13]

**Data point:** Commission rates typically range from 0-10% on staking rewards
[^14]

**Data point:** Staking APY ranges from 0.21% to 5.30% depending on platform and validator choice
[^14]

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

## 9. Mainnet Launch and Funding Background

### Network Launch Timeline

Sui launched in May 2023 following significant development investment and testing phases.

**Data point:** Mainnet launched May 3, 2023, with SUI token trading beginning April 23, 2023
[^24]

**Data point:** Initial token price reached $2.1 before declining 40% to settle around $1.25
[^24]

**Data point:** Over 200 decentralized applications launched across NFTs, DeFi, social media, and gaming
[^24]

### Mysten Labs Funding

The development team secured substantial venture capital funding prior to mainnet launch.

**Data point:** Mysten Labs raised $336 million across two funding rounds in 2022
[^25]

**Data point:** Series B round of $300 million led by FTX Ventures valued project over $2 billion
[^25]

**Data point:** Four former Facebook employees founded company after working on Meta's Novi Financial team
[^25]

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

Sui represents a significant innovation in blockchain economics through its object-centric architecture and dual-fee structure. With $1 billion TVL achieved in 18 months and transaction costs 8,000x cheaper than Ethereum, the network demonstrates strong market fit for high-frequency applications. The Storage Fund's 99% rebate mechanism creates unique economic incentives for efficient data usage while ensuring long-term validator sustainability.

The network's validator survey pricing system provides unprecedented fee stability through 24-hour reference prices, benefiting both users and developers planning applications. Parallel execution capabilities naturally reduce MEV opportunities while enabling theoretical throughput exceeding 160,000 TPS. The growing DeFi ecosystem led by protocols like Cetus validates the platform's utility for financial applications.

Critical challenges include expanding developer adoption beyond the Move language learning curve, maintaining Storage Fund sustainability as the network scales, and competing with established ecosystems offering broader tooling and network effects. Success depends on Sui's ability to leverage its technical advantages into sustainable economic value while building the application ecosystem necessary for long-term growth.

The protocol's emphasis on predictable costs, efficient resource usage, and parallel execution positions it well for applications requiring high throughput and low latency, though broader adoption will determine whether these innovations translate into sustained economic success.

## Sources and References

[^1]: Suipiens. (October 2024). "Understanding Gas Fees in the Sui Network." Suipiens Blog. Retrieved from https://suipiens.com/blog/understanding-gas-fees-in-the-sui-network/. Documents current transaction volume growth and average fee costs.

[^2]: Sui Documentation. (2024). "Storage Fund." Sui Official Documentation. Retrieved from https://docs.sui.io/concepts/tokenomics/storage-fund. Official documentation of dual-fee structure and storage mechanics.

[^3]: Chainwire. (October 2024). "Sui Breaks $1B in TVL, Surpassing Polygon, Optimism." Chainwire. Retrieved from https://chainwire.org/2024/10/01/sui-breaks-1b-in-tvl-surpassing-polygon-optimism/. Confirms TVL milestone and growth metrics.

[^4]: SuiVision. (2024). "Sui Validators - SuiVision." SuiVision Analytics. Retrieved from https://suivision.xyz/validators. Provides current validator count and geographic distribution data.

[^5]: Medium - Luganodes. (2024). "A Glance into Sui's Object-Centric Data Model." Luganodes on Medium. Retrieved from https://medium.com/luganodes/a-glance-into-suis-object-centric-data-model-475db3deac9d. Explains object-centric architecture benefits.

[^6]: Sui Documentation. (2024). "Move Concepts." Sui Official Documentation. Retrieved from https://docs.sui.io/concepts/sui-move-concepts. Technical documentation of Move language optimizations.

[^7]: TokenInsight. (2024). "Sui: Testnet Has 100 Globally Distributed Validators, Peak Throughput of Nearly 300,000 TPS." TokenInsight. Retrieved from https://tokeninsight.com/en/news/sui-testnet-has-100-globally-distributed-validators-peak-throughput-of-nearly-300-000-tps. Documents theoretical peak performance capabilities.

[^8]: Sui Blog. (2024). "Sui's Storage Fund Demystified." Sui Official Blog. Retrieved from https://blog.sui.io/storage-fund-demystified/. Comprehensive explanation of storage fund mechanics and rebate system.

[^9]: Figment. (2024). "Sui Tokenomics." Figment Insights. Retrieved from https://figment.io/insights/sui-tokenomics/. Analysis of storage fund sustainability and validator economics.

[^10]: CoinGecko Research. (2024). "The Fastest Blockchain Processed 91M Transactions in a Day." CoinGecko. Retrieved from https://www.coingecko.com/research/publications/fastest-blockchains. Performance benchmarking across major blockchains.

[^11]: Mudrex Learn. (2024). "The SUI Network Explained." Mudrex. Retrieved from https://mudrex.com/learn/the-sui-network-explained/. Technical performance specifications and latency metrics.

[^12]: Sui Blog. (October 2024). "At Over $500 Million TVL, Sui Lands in the DeFi Top 10." Sui Official Blog. Retrieved from https://blog.sui.io/sui-500-million-tvl-top-10/. DeFi ecosystem growth and stablecoin adoption metrics.

[^13]: Figment. (2024). "Deep Dive: Sui Reference Gas Price." Figment Insights. Retrieved from https://figment.io/insights/deep-dive-sui-reference-gas-price/. Detailed analysis of validator survey pricing mechanism.

[^14]: Staking Rewards. (2024). "Sui (SUI) Staking Rewards: Earn ∼2.10%." Staking Rewards. Retrieved from https://www.stakingrewards.com/asset/sui. Current staking APY and validator commission data.

[^15]: GasFees.org. (2024). "What Are Sui Gas Fees?" GasFees.org. Retrieved from https://gasfees.org/what-are-sui-gas-fees/. Current transaction fee benchmarks and comparisons.

[^16]: Cointelegraph. (2024). "Exploring Sui's Object-Centric Model and the Move Programming Language." Cointelegraph. Retrieved from https://cointelegraph.com/news/sui-object-centric-model-move-programming-language. Move language gas optimization and programmable transaction blocks.

[^17]: GetBlock.io. (2024). "Best Sui DEXs: Review." GetBlock.io Blog. Retrieved from https://getblock.io/blog/best-sui-dexs/. DeFi protocol fee structures and network cost analysis.

[^18]: Cetus Protocol. (2024). "Introducing Cetus Plus: Revolutionizing Swaps on the Sui Network." Cetus on Medium. Retrieved from https://medium.com/@CetusProtocol/introducing-cetus-plus-revolutionizing-swaps-on-the-sui-network-0131f279cfc1. Cetus DEX TVL, features, and fee distribution model.

[^19]: Sui Blog. (2024). "Sui Q3 2024 DeFi Roundup." Sui Official Blog. Retrieved from https://blog.sui.io/q3-2024-defi-roundup/. Q3 DeFi performance including Turbos and Scallop metrics.

[^20]: Delphi Digital. (2024). "DeMystifying MEV in Sui." Delphi Digital. Retrieved from https://members.delphidigital.io/feed/demystifying-mev-in-sui. Analysis of MEV resistance through consensus design.

[^21]: Stakin. (2024). "Sui Blockchain: A Deep Dive." Stakin Blog. Retrieved from https://stakin.com/blog/sui-blockchain-a-deep-dive. Parallel execution performance and state access parallelization.

[^22]: Oodles Blockchain. (2024). "Building on Sui Blockchain | Here's What You Need to Know." Oodles Blog. Retrieved from https://blockchain.oodles.io/blog/sui-blockchain/. Developer costs and infrastructure requirements.

[^23]: Vocal Media. (2025). "Why Top Web3 Projects Are Choosing Sui for Token Development in 2025." Vocal Education. Retrieved from https://vocal.media/education/why-top-web3-projects-are-choosing-sui-for-token-development-in-2025. Enterprise cost benefits and transaction pricing.

[^24]: CoinMarketCap Academy. (2023). "Sui To Launch Token and Mainnet: What You Need To Know." CoinMarketCap. Retrieved from https://coinmarketcap.com/academy/article/sui-to-launch-mainnet-and-token-what-you-need-to-know. Mainnet launch timeline and initial trading data.

[^25]: Blockworks. (2023). "Mysten Labs Launches Blockchain Platform Sui." Blockworks. Retrieved from https://blockworks.co/news/mysten-labs-launches-blockchain-platform-sui. Funding history and team background information.

[^26]: Hashlock. (2024). "Understanding TPS: Which Blockchains Are the Fastest?" Hashlock Blog. Retrieved from https://hashlock.com/blog/understanding-tps-which-blockchains-are-the-fastest. TPS performance comparison across major blockchains.

[^27]: Kraken Learn. (2024). "What is Sui Network? (SUI) How it works, who created it and how it is used." Kraken. Retrieved from https://www.kraken.com/learn/what-is-sui-network-sui. Platform comparison and developer ecosystem analysis.

[^28]: Cryptomus. (2024). "SUI vs Solana (SOL): Complete Comparison." Cryptomus Blog. Retrieved from https://cryptomus.com/blog/sui-vs-solana-complete-comparison. Competitive analysis with other high-performance blockchains.