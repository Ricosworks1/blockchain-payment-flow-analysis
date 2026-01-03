# NEAR Money Flow Analysis: The Sharded Fee-Burn Model

*Last Updated: January 2, 2026*

## Executive Summary

NEAR Protocol operates a distinctive fee distribution model where 30% of transaction fees flow to validators while 70% are permanently burned, creating deflationary pressure supported by the innovative Nightshade sharding architecture. 🔷 **HARD DATA**: With $1.50 NEAR price, $1.93 billion market capitalization (rank #56), and $133.2 million DeFi TVL, the network has undergone significant economic changes in 2025 including a controversial inflation reduction from 5% to 2.4% (October 30, 2025) [^1][^2]. Major 2025 milestones include: achieving 1 million TPS in sharded testing (December 8, 2025), NEAR AI Cloud and Private Chat launches, Brave Browser integration, and NEAR Intents crossing $900M+ total volume with 1.8M+ swaps [^3][^4]. The platform's pivot to "AI-native L1" (July 2025) positions NEAR uniquely with Shade Agent infrastructure enabling autonomous AI on-chain transactions for DeFi yield optimization and DAO governance [^5]. Cross-chain expansion includes Solana integration via NEAR Intents, Infinex Chain Signatures partnership, and THORWallet TRON integration tapping $50B+ stablecoin ecosystem [^6][^7].

## 1. Fee Distribution and Burning Mechanism

### 30/70 Validator-Burn Split

NEAR implements a unique fee distribution system that balances validator incentives with deflationary token economics.

**Data point:** 30% of transaction fees flow to validators for block production while 70% are permanently burned to reduce circulating supply [^8]

**Data point:** ⏳ HISTORICAL (Q4 2024): Average transaction fee of $0.0031 (+15.91% QoQ) provides predictable cost structure for users [^9]

**Data point:** Following October 2025 inflation reduction to 2.4%, fee burning creates more effective deflationary pressure [^10]

### Storage Staking System

NEAR's account model requires storage staking separate from transaction fees, preventing state bloat while ensuring sustainable network growth.

**Data point:** Storage staking locks NEAR tokens based on data stored, with 1 NEAR required per 100KB of storage [^11]

**Data point:** Account creation requires 0.1 NEAR funding with additional 0.35 NEAR reserved for fees and storage [^11]

**Data point:** Storage-staked tokens become unavailable for other uses, increasing validator yield by reducing circulating supply [^11]

## 2. Nightshade Sharding Architecture

### Stateless Validation and 1M TPS Milestone

NEAR achieved significant scaling milestones in 2025, demonstrating industry-leading sharding capabilities.

**Data point:** December 8, 2025: NEAR achieved 1 million TPS in sharded test environment on Google Cloud, surpassing Visa's 65,000 TPS capacity [^3]

**Data point:** Mainnet currently operates at 9 shards with each shard handling 10,000-20,000 TPS for simple transactions [^12]

**Data point:** Block time of 1 second with plans to reduce to 400 milliseconds [^12]

### Linear Scalability Benefits

NEAR's sharding approach enables unlimited horizontal scaling through parallel transaction processing.

**Data point:** Nightshade treats every account as an independent rollup or app chain, enabling dynamic allocation to different shards based on activity [^12]

**Data point:** Cross-shard composability maintains DeFi protocol functionality across multiple shards simultaneously [^13]

**Data point:** Unified blockchain design with multiple shards avoids fragmentation issues found in other sharding implementations [^13]

## 3. Network Performance and Activity Metrics

### Current Market Performance

NEAR has experienced significant market pressure in 2025 despite strong technical achievements.

🔷 **HARD DATA**: NEAR trading at $1.50 with market capitalization of $1.93 billion (rank #56) and 24-hour volume of $184.3 million [^1]

🔷 **HARD DATA**: Circulating supply of 1.283 billion NEAR with -70.10% year-over-year performance [^1]

🔷 **HARD DATA**: All-time high of $20.44 reached January 16, 2022, with current price 92.63% below ATH [^1]

### Staking and Validator Economics

NEAR's Proof-of-Stake consensus underwent major changes with the October 2025 inflation reduction.

**Data point:** Post-inflation reduction: staking yields dropped from ~9% to 4.5% APY, impacting validator economics [^10]

**Data point:** 100 validator seats available with minimum stake of 67,000 NEAR, though actual requirements vary based on competition [^14]

**Data point:** No slashing mechanism exists, eliminating stake loss risk while maintaining validator accountability through other measures [^14]

## 4. DeFi Ecosystem Development

### Total Value Locked Performance

NEAR's DeFi ecosystem has contracted significantly from 2024 peaks amid broader market conditions.

🔷 **HARD DATA**: DeFi TVL of $133.2 million as of January 2, 2026, down from $240.16 million in Q4 2024 [^2]

**Data point:** ⏳ HISTORICAL (Q4 2024): Burrow protocol dominated with $170.98 million TVL (+50.37% QoQ), accounting for 68.66% of total ecosystem TVL [^9]

**Data point:** ⏳ HISTORICAL (Q4 2024): Daily DEX volume increased 25.40% QoQ to $8.45 million with Ref Finance maintaining leadership position [^9]

### Stablecoin Market Growth

The stablecoin ecosystem on NEAR demonstrated strong growth through 2024.

**Data point:** ⏳ HISTORICAL (Q4 2024): Stablecoin market cap reached $683.69 million (+1.88% QoQ, +880.71% YoY) [^9]

**Data point:** ⏳ HISTORICAL (Q4 2024): Ref Finance processed $8.35 million average daily volume, representing majority of NEAR DEX activity [^9]

**Data point:** Multiple stablecoin protocols contribute to ecosystem diversity and liquidity depth across DeFi applications [^15]

## 5. Chain Abstraction and Cross-Chain Infrastructure

### NEAR Intents and Cross-Chain Expansion

NEAR's chain abstraction vision achieved significant milestones in 2025 with cross-chain integrations.

**Data point:** NEAR Intents crossed $900M+ in total volume with 1.8M+ total swaps and 110+ supported assets [^4]

**Data point:** NEAR live on Solana via NEAR Intents and Orb Markets, enabling cross-chain functionality [^3]

**Data point:** THORWallet integrated TRON blockchain using NEAR Intents, enabling native TRX and TRC-20 USDT swaps across Bitcoin, Ethereum, Solana, and BNB Chain [^3]

### Strategic Partnerships and Integrations

NEAR secured key partnerships to advance chain abstraction adoption.

**Data point:** Infinex integrated NEAR Chain Signatures and NEAR Intents, enabling users to sign transactions on third-party blockchains including Bitcoin and Ripple from single account [^7]

**Data point:** NEAR Chain Signatures enable multi-chain transaction signing from unified account experience [^7]

**Data point:** ⏳ HISTORICAL (2024): Aurora processed 66,659 Rainbow Bridge transactions with $78 million total TVL [^16]

## 6. Developer Ecosystem and Tooling

### JavaScript SDK Adoption

NEAR's commitment to Web2 developer onboarding through familiar programming languages shows significant traction.

**Data point:** JavaScript SDK targets 20 million Web2 developers compared to 2.5 million blockchain developers worldwide [^17]

**Data point:** Simple command 'npx create-near-app' enables immediate smart contract development in JavaScript with browser compatibility [^17]

**Data point:** Rust SDK provides high-performance alternative with WebAssembly compilation for security-critical applications [^18]

### Account Model Innovation

NEAR's human-readable account system provides superior user experience compared to traditional blockchain address models.

**Data point:** Named accounts like 'alice.near' replace complex hex addresses with subdomain functionality for application-specific accounts [^19]

**Data point:** Account aggregation features allow NEAR accounts to transact on various blockchains including Bitcoin, Solana, and Ethereum-based networks [^12]

**Data point:** Social recovery mechanisms provide account restoration through trusted contacts rather than seed phrase dependencies [^19]

## 7. Foundation Funding and Ecosystem Support

### Strategic Investment Initiatives

NEAR Foundation has evolved its funding strategy to support long-term ecosystem growth and Web3 adoption.

**Data point:** ⏳ HISTORICAL (2024): Nuffle Labs formed with $13 million funding from NEAR Foundation and Electric Capital to advance modularity research [^20]

**Data point:** 300+ venture capital partners representing $30 billion in capital have deployed $300 million across 60 NEAR ecosystem projects [^21]

**Data point:** Six regional hubs operate in strategic locations including Ukraine, Kenya, Balkans, Vietnam, India, and Korea for localized development [^21]

### Grant Program Evolution

The foundation has refined its approach to provide more strategic and sustainable funding for ecosystem development.

**Data point:** Direct grants available for project funding alongside accelerator programs and venture support through ecosystem partners [^21]

**Data point:** Specialized funding redirects DeFi projects to Proximity Labs and EVM projects to Aurora for focused expertise [^21]

**Data point:** Regional hub approach enables tailored NEAR initiatives supporting local communities and ecosystem building [^21]

## 8. Token Economics and Monetary Policy

### October 2025 Inflation Reduction

NEAR implemented a controversial network upgrade significantly altering tokenomics.

**Data point:** October 30, 2025: Annual token inflation rate reduced from 5% to approximately 2.4%, cutting annual minting by nearly 60 million tokens [^10]

**Data point:** Staking yields dropped from ~9% to 4.5% APY as a result of the inflation reduction [^10]

**Data point:** 95.12% of total supply in circulation with dynamic validator seat pricing based on stake competition [^1]

### Governance Controversy

The inflation reduction implementation sparked significant governance debate within the community.

**Data point:** Network upgrade implemented despite community vote failing to meet required approval threshold [^22]

**Data point:** CTO Bowen Wang clarified the vote was "primarily a signaling exercise," sparking controversy over governance integrity [^22]

**Data point:** Key validators criticized the unilateral decision, leading to 8% NEAR price decline following the announcement [^10]

## 9. AI-Native L1 Strategy

### User-Owned AI Infrastructure

NEAR's July 2025 pivot to "AI-native L1" positions the platform at the forefront of blockchain-AI convergence.

**Data point:** NEAR AI Cloud and Private Chat launched, with Brave Browser integration on December 3, 2025 [^3]

**Data point:** TravAI travel platform launched December 5, 2025 processing crypto payments via NEAR Intents [^3]

**Data point:** Shade Agent infrastructure (upgraded from August 2025 Sandbox) enables AI agents to execute autonomous on-chain transactions for DeFi yield optimization and DAO governance [^5]

### Allora Integration and AI Development

NEAR's AI stack gained significant traction with strategic integrations.

**Data point:** Allora Network intelligence layer integrated with NEAR, with predictive analytics built into Shade Agent infrastructure [^5]

**Data point:** Illia Polosukhin presented NEAR AI confidential, decentralized AI computation research at NVIDIA GTC 2025 in March [^23]

**Data point:** BUIDL Asia 2025 keynote: Polosukhin positioned NEAR as "safeguard against centralized AI" keeping power with users and builders [^24]

## 10. Cross-Chain Infrastructure and Interoperability

### Chain Abstraction Vision

Illia Polosukhin's chain abstraction vision drives NEAR's interoperability strategy for mainstream adoption.

**Data point:** "The idea is that blockchains must be abstracted away from the user so they are not barriers to entry or participation" - Illia Polosukhin [^25]

**Data point:** "There will not be a need for separate apps, separate wallets, separate even chains going forward, because AI is a universal interface" - Polosukhin vision [^12]

**Data point:** NEAR Foundation is primary Chain Abstraction partner for Infinex [^7]

### Multi-Chain Ecosystem Strategy

The platform's approach to interoperability focuses on seamless user experience across blockchain networks.

**Data point:** Rainbow Bridge enables permissionless token transfers between Ethereum, Aurora, and NEAR without trust assumptions [^16]

**Data point:** ⏳ HISTORICAL (2024): 1,000 virtual chain deployment target for 2025 indicates scaling ambitions for multi-chain infrastructure [^16]

**Data point:** Aurora Cloud Bridge provides unified interface connecting virtual chains with NEAR and Ethereum ecosystems [^16]

## 11. Risk Factors and Sustainability Challenges

### Governance and Trust Concerns

The controversial inflation reduction implementation raised governance integrity questions.

**Data point:** Community vote failed to meet approval threshold but upgrade implemented anyway, raising governance concerns [^22]

**Data point:** Validator criticism of unilateral decision-making could impact network decentralization perception [^22]

**Data point:** Staking yield reduction from 9% to 4.5% may discourage delegators and affect validator economics [^10]

### Competition and Market Position

NEAR faces competitive pressure from established ecosystems despite technical achievements.

🔷 **HARD DATA**: -70.10% year-over-year price performance indicates significant competitive pressure [^1]

**Data point:** TVL decline from $240M (Q4 2024) to $133M (January 2026) suggests DeFi ecosystem challenges [^2]

**Data point:** Chain abstraction strategy success depends on execution and market acceptance of AI-native vision [^25]

## 12. Future Development Roadmap

### Scaling and Performance Targets

Planned improvements focus on further scaling capabilities and AI integration.

**Data point:** Block time reduction from 1 second to 400 milliseconds planned for near-term implementation [^12]

**Data point:** Dynamic resharding enables automatic network capacity adjustment based on demand [^13]

**Data point:** 1 million TPS benchmark (January 2026) demonstrates path toward production-scale Web3 infrastructure [^3]

### AI and Chain Abstraction Expansion

Strategic initiatives target mainstream adoption through AI-native experiences.

**Data point:** AI-native L1 positioning (July 2025) creates differentiated value proposition in blockchain market [^5]

**Data point:** Shade Agent ecosystem expansion for autonomous AI-driven DeFi and governance applications [^5]

**Data point:** Continued NEAR Intents growth with goal to expand beyond $900M volume milestone [^4]

## Conclusion

NEAR Protocol underwent significant transformation in 2025, pivoting to an "AI-native L1" positioning while achieving technical milestones including 1 million TPS in sharded testing (December 8, 2025) and NEAR Intents crossing $900M+ in cross-chain volume. With $1.50 NEAR price, $1.93 billion market capitalization, and $133.2 million DeFi TVL, the network faces competitive challenges despite strong technical achievements.

The controversial October 2025 inflation reduction from 5% to 2.4%—implemented despite failed community vote—raised governance concerns but addressed long-standing tokenomics imbalance. Strategic integrations with Brave Browser, Infinex, THORWallet, and Solana demonstrate growing cross-chain reach, while AI innovations like Shade Agents and NEAR AI Cloud differentiate the platform from competitors.

Critical success factors include rebuilding governance trust following the inflation controversy, reversing -70% year-over-year price decline through demonstrated utility, and capitalizing on the AI-blockchain convergence narrative that positions NEAR uniquely as a "safeguard against centralized AI." The combination of Illia Polosukhin's chain abstraction vision, production-ready sharding at scale, and autonomous AI agent infrastructure creates a compelling narrative for mainstream adoption.

NEAR's emphasis on making "blockchains invisible to users" through chain abstraction, combined with AI-native capabilities and proven 1M TPS scalability, positions the platform for potential recovery if execution matches ambition. Long-term success depends on translating technical achievements into ecosystem growth and addressing governance concerns that emerged from the 2025 inflation debate.

## Sources and References

[^1]: CoinGecko. (2026, January 2). NEAR Protocol Price. *CoinGecko*. Retrieved January 2, 2026, from https://www.coingecko.com/en/coins/near 🔷 HARD DATA

[^2]: DefiLlama. (2026, January). NEAR Chain TVL. *DefiLlama*. Retrieved January 2, 2026, from https://defillama.com/chain/Near 🔷 HARD DATA

[^3]: Coinspeaker. (2025, December 8). NEAR Achieves 1M TPS. *Coinspeaker*. Retrieved January 2, 2026, from https://www.coinspeaker.com/near-protocol-1-million-tps-benchmark-test/

[^4]: BeInCrypto. (2025). NEAR Intents Record Volume. *BeInCrypto*. Retrieved January 2, 2026, from https://beincrypto.com/near-intents-hits-record-transaction-volume/

[^5]: NEAR Protocol Blog. (2025, February). Shade Agents - The First Truly Autonomous AI Agents. *NEAR Protocol Blog*. Retrieved January 2, 2026, from https://pages.near.org/blog/shade-agents-the-first-truly-autonomous-ai-agents/

[^6]: THORWallet Blog. (2025, November 13). THORWallet Integrates NEAR Intents. *THORWallet Blog*. Retrieved January 2, 2026, from https://www.thorwallet.org/thorwallet-blog/thorwallet-integrates-near-intents-expanding-cross-chain-swaps-offering-to-additional-networks

[^7]: The Block. (2025). Infinex Chain Signatures Partnership. *The Block*. Retrieved January 2, 2026, from https://www.theblock.co/post/325371/infinex-partners-with-near-foundation-to-integrate-chain-signatures

[^8]: NEAR Documentation. (2025). Storage Staking. *NEAR Documentation*. Retrieved January 2, 2026, from https://docs.near.org/protocol/storage/storage-staking

[^9]: Messari. (2024, December). State of NEAR Q4 2024. *Messari*. Retrieved January 2, 2026, from https://messari.io/report/state-of-near-q4-2024 ⏳ HISTORICAL

[^10]: Crypto.news. (2025, October 30). NEAR Inflation Halving. *Crypto.news*. Retrieved January 2, 2026, from https://crypto.news/near-protocol-halves-inflation-rate-despite-failing-approval-threshold/

[^11]: NEAR Documentation. (2025). Protocol Storage. *NEAR Documentation*. Retrieved January 2, 2026, from https://docs.near.org/protocol/storage/storage-staking

[^12]: TronWeekly. (2025). 1M TPS Sharding. *TronWeekly*. Retrieved January 2, 2026, from https://www.tronweekly.com/1-million-tps-on-near-protocol-sharding-unlocks/

[^13]: NEAR Protocol Blog. (2025). Nightshade 2.0 Launches on NEAR Mainnet. *NEAR Protocol Blog*. Retrieved January 2, 2026, from https://pages.near.org/blog/nightshade-2-launches-on-near-mainnet-introducing-stateless-validation/

[^14]: Everstake. (2025). NEAR Staking. *Everstake*. Retrieved January 2, 2026, from https://everstake.one/staking/near

[^15]: Rhea Foundation. (2025). Burrow V2. *Rhea Foundation on Medium*. Retrieved January 2, 2026, from https://rheafdn.medium.com/burrow-v2-leading-the-near-protocol-defi-ecosystem-ea5617788d69

[^16]: Aurora Documentation. (2025). Rainbow Bridge. *Aurora Documentation*. Retrieved January 2, 2026, from https://doc.aurora.dev/bridge/introduction/

[^17]: NEAR Protocol Medium. (2025). JavaScript SDK. *NEAR Protocol on Medium*. Retrieved January 2, 2026, from https://medium.com/nearprotocol/near-releases-javascript-sdk-bringing-web3-to-20-million-developers-b084efef0a9c

[^18]: GitHub. (2025). near-sdk-rs. *GitHub*. Retrieved January 2, 2026, from https://github.com/near/near-sdk-rs

[^19]: NEAR Protocol. (2025). Named Accounts. *NEAR Documentation*. Retrieved January 2, 2026, from https://docs.near.org/concepts/basics/accounts/model

[^20]: CoinDesk. (2024, June 13). Nuffle Labs $13M Funding. *CoinDesk*. Retrieved January 2, 2026, from https://www.coindesk.com/business/2024/06/13/near-foundation-forms-nuffle-labs-with-13m-in-funding ⏳ HISTORICAL

[^21]: NEAR Protocol. (2025). Get Funding. *NEAR Protocol*. Retrieved January 2, 2026, from https://pages.near.org/ecosystem/get-funding/

[^22]: Brave New Coin. (2025). Governance Controversy. *Brave New Coin*. Retrieved January 2, 2026, from https://bravenewcoin.com/insights/near-protocol-cuts-inflation-in-half-despite-failed-community-vote

[^23]: NEAR Protocol Blog. (2025, March). NVIDIA GTC 2025. *NEAR Protocol Blog*. Retrieved January 2, 2026, from https://pages.near.org/blog/nvidia-gtc-2025/

[^24]: NEAR Protocol Blog. (2025). BUIDL Asia 2025. *NEAR Protocol Blog*. Retrieved January 2, 2026, from https://pages.near.org/blog/buidl-asia-2025-builders-stay-building/

[^25]: The Block. (2025). Chain Abstraction Vision. *The Block*. Retrieved January 2, 2026, from https://www.theblock.co/post/285565/chain-abstraction-near-protocol

[^26]: Coinspeaker. (2025, December 5). TravAI Launch. *Coinspeaker*. Retrieved January 2, 2026, from https://www.coinspeaker.com/near-protocol-travai-ai-travel-booking-platform-launch/

[^27]: Coinspeaker. (2025, December 18). NEAR Live on Solana. *Coinspeaker*. Retrieved January 2, 2026, from https://www.coinspeaker.com/near-now-live-solana-cross-chain-integration/

[^28]: BeInCrypto. (2025, November 28). THORWallet TRON Integration. *BeInCrypto*. Retrieved January 2, 2026, from https://beincrypto.com/thorwallet-tron-cross-chain-swaps/

[^29]: Coinspeaker. (2025, November 25). Kalshi NEAR Integration. *Coinspeaker*. Retrieved January 2, 2026, from https://www.coinspeaker.com/kalshi-adds-near-protocol-support-prediction-markets/

[^30]: CoinJournal. (2025, September 16). NEAR AI Developments. *CoinJournal*. Retrieved January 2, 2026, from https://coinjournal.net/news/near-price-surges-9-as-ai-developments-boost-ecosystem/

[^31]: Brave.com. (2025, December 3). NEAR AI Integration. *Brave*. Retrieved January 2, 2026, from https://brave.com/blog/near-aurora/

[^32]: NEAR Protocol Blog. (2025). Infinex Integration. *NEAR Protocol Blog*. Retrieved January 2, 2026, from https://pages.near.org/blog/infinex-integrates-near-protocol-chain-signatures-and-near-intents/

[^33]: Messari. (2025). State of NEAR Q1 2025. *Messari*. Retrieved January 2, 2026, from https://messari.io/report/state-of-near-q1-25

[^34]: CryptoBriefing. (2025). 1M TPS Milestone. *CryptoBriefing*. Retrieved January 2, 2026, from https://cryptobriefing.com/near-protocol-1-million-tps-milestone/

[^35]: InvestingHaven. (2025, December). NEAR December Outlook. *InvestingHaven*. Retrieved January 2, 2026, from https://investinghaven.com/crypto-blockchain/coins/near-protocol-december-outlook-1m-tps-milestone-growth-signs-and-price-view

[^36]: StakingRewards. (2025). NEAR Protocol. *StakingRewards*. Retrieved January 2, 2026, from https://www.stakingrewards.com/asset/near-protocol

[^37]: NEAR Documentation. (2025). Validator Staking. *NEAR Documentation*. Retrieved January 2, 2026, from https://docs.near.org/protocol/network/staking

[^38]: DefiLlama. (2025). NEAR Intents. *DefiLlama*. Retrieved January 2, 2026, from https://defillama.com/protocol/near-intents 🔷 HARD DATA

[^39]: FXStreet. (2025, November 7). NEAR Intent Layer Volume. *FXStreet*. Retrieved January 2, 2026, from https://www.fxstreet.com/cryptocurrencies/news/near-protocol-price-forecast-near-rallies-as-on-chain-demand-grows-on-intent-layer-202511071212

[^40]: TronWeekly. (2025). NEAR Q1 2025. *TronWeekly*. Retrieved January 2, 2026, from https://www.tronweekly.com/near-protocol-q1-2025-3b-cap-dev-decline/

[^41]: CoinMarketCap. (2025). NEAR Protocol. *CoinMarketCap*. Retrieved January 2, 2026, from https://coinmarketcap.com/currencies/near-protocol/ 🔷 HARD DATA

[^42]: AMINA Bank. (2025). NEAR AI Research. *AMINA Bank*. Retrieved January 2, 2026, from https://aminagroup.com/research/near-protocol-bringing-ai-and-smart-ux-onchain/

[^43]: Nansen Research. (2025). NEAR Q2 2025. *Nansen Research*. Retrieved January 2, 2026, from https://research.nansen.ai/articles/near-quarterly-report-q2-2025

[^44]: Learn NEAR Club. (2025). Rainbow Bridge Status. *Learn NEAR Club*. Retrieved January 2, 2026, from https://learnnear.club/auroras-rainbow-bridge-is-no-longer-active/

[^45]: IQ.wiki. (2025). Shade Agents. *IQ.wiki*. Retrieved January 2, 2026, from https://iq.wiki/wiki/shade-agents

[^46]: NEAR Protocol Blog. (2025). Mindshare Index Agent. *NEAR Protocol Blog*. Retrieved January 2, 2026, from https://pages.near.org/blog/introducing-the-mindshare-index-ai-agent-autonomous-trading-powered-by-shade-agents/

[^47]: Decrypt. (2025). NEAR Infinex Partnership. *Decrypt*. Retrieved January 2, 2026, from https://decrypt.co/333807/how-near-protocol-and-infinex-are-redefining-the-defi-user-experience

[^48]: Blockchain.news. (2025). Inflation Implementation. *Blockchain.news*. Retrieved January 2, 2026, from https://blockchain.news/news/near-protocol-implements-inflation-rate-cut-despite-governance-vote-setback

[^49]: The Defiant. (2025). NEAR Inflation Vote. *The Defiant*. Retrieved January 2, 2026, from https://thedefiant.io/news/blockchains/near-protocol-halving-upgrade-community-vote

[^50]: CoinDesk. (2024, August 22). NEAR Blockchain Upgrade. *CoinDesk*. Retrieved January 2, 2026, from https://www.coindesk.com/tech/2024/08/22/near-blockchain-gets-major-upgrade-to-add-stateless-validation ⏳ HISTORICAL

[^51]: CryptoWinRate. (2025). NEAR Protocol Guide. *CryptoWinRate*. Retrieved January 2, 2026, from https://www.cryptowinrate.com/guides/near-protocol

[^52]: Coin Bureau. (2025). Top NEAR Projects. *Coin Bureau*. Retrieved January 2, 2026, from https://coinbureau.com/analysis/top-near-projects/

[^53]: NEAR Forum. (2025). Inflation Proposal. *NEAR Forum*. Retrieved January 2, 2026, from https://gov.near.org/t/reduce-inflation-for-near-protocol/41140

[^54]: CoinLaw. (2025). NEAR Statistics 2025. *CoinLaw*. Retrieved January 2, 2026, from https://coinlaw.io/near-protocol-statistics/

[^55]: CoinMarketCap. (2025). NEAR AI Updates. *CoinMarketCap*. Retrieved January 2, 2026, from https://coinmarketcap.com/cmc-ai/near-protocol/latest-updates/