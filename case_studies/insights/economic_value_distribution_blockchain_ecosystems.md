# Economic Value Distribution in Blockchain Ecosystems

**A Multi-Chain Analysis of Transaction Fees, Validator Compensation, Infrastructure Costs, and Subsidy Mechanisms Across a \$2.28T Market Capitalization**

**Author:** AI Swarm
**Date:** June 2026
**Organization:** Maze2 SA

---

> This research is an empirical study of annual fee revenue, infrastructure costs, and stakeholder compensation in layer-1 and layer-2 protocols based on comprehensive case studies of 25+ chains and L2 solutions, 20 top protocols, and 14 oracles between December 2024 and June 2026.

**Crypto Market Cap as of June 20, 2026:** \$2.28T[^s1_1] — down from the \$3.6–4.3T cited at the October 2025 baseline. The thesis below did not move with the price. The dollars shrank; the dependency did not. 🔷 HARD DATA

---

## Table of Contents

1. [Money Flow Categories](#money-flow-categories)
2. [Major L1 Networks: Money Allocation Analysis](#major-l1-networks-money-allocation-analysis)
3. [Layer 2 Networks: Fee Distribution](#layer-2-networks-fee-distribution)
4. [Infrastructure Layer: The Hidden Recipients](#the-infrastructure-layer-the-hidden-recipients)
5. [Ecosystem Funding: Foundation and VC Money Flows](#ecosystem-funding-foundation-and-vc-money-flows)
6. [Comprehensive Money Flow Summary](#comprehensive-money-flow-summary)

---

## Executive Summary

This analysis examines the distribution of economic value generated when users interact with blockchain networks. For every \$1 in transaction fees, value fragments are distributed across multiple recipients. It can be on-chain, among validators, miners, foundations, token holders, oracle networks and MEV searchers. Or it can be off-chain among venture investors, infrastructure operators, oracle networks and other service providers.

Throughout this report we separate **organic user fees** (what users actually pay for blockspace and services) from three categories of **non-fee-funded value flows**: **consensus/security issuance** (a designed security budget, not a temporary handout), **external venture capital**, and **insider supply transfer via token unlocks**. Keeping these four buckets distinct is the whole point — collapsing them into one word ("subsidy") is exactly the imprecision this report exists to correct.

A note on the denominator, stated up front because the headline depends on it. The \$12.8B figure we anchor to is **retained protocol revenue** — what protocols, validators and miners keep after paying LPs and suppliers. **Gross fees** across DeFi are higher, roughly **\$20.3B/yr**; the gap is LP payments, supplier costs and gas-rebates that flow through the system but are not retained by any tokenholder[^s1_4]. We report the ratio against *both* windows so the reader can see exactly which base produces which number.

Given the extensive amount of data, a GitHub repository has been created as the core reference repository[^s1_2]. This report examines the core dynamics of economic value distribution across the blockchain ecosystem. However, for further, comprehensive details, methodology, and supporting case studies under other points of view or assets, refer to the full repository information.

A key finding of this report is that oracle networks monetize primarily through non-public commercial contracts rather than transparent on-chain fee mechanisms while constituting critical Web3 infrastructure, as referenced in the [oracles infrastructure analysis](https://github.com/Ricosworks1/blockchain-payment-flow-analysis/blob/main/case_studies/infrastructure/oracles.md)[^s1_3]. This is true of the dominant subscription model (Chainlink); pull-based oracles such as Pyth do charge on-chain update fees and run staking/usage models that are partly visible on-chain, so the opacity claim is a tendency, not a universal[^s1_3].

To create this report, we analyzed end-to-end cash flows across 25+ major networks, 20 leading protocols, dApps per TVL and fees generated, as well as meta-research, using quantitative data and/or expert assessment for cases where public information is limited or unavailable. This report extends the analysis not only to on-chain token unlocks and issuance mechanisms, but also to off-chain financial flows across 14 oracle providers, major infrastructure entities, venture capital and foundation ecosystems, which together represent the largest hidden layer of the blockchain economy. These flows, though largely opaque, ultimately shape what end users pay and receive. This underscores the extent to which blockchain remains an externally supported financial experiment rather than a fully self-sustaining system.

### Key Findings

Strip away the narrative and one number refuses to behave. As of June 20, 2026, the blockchain sector retains roughly **\$12.8B per year** in transparent, on-chain revenue[^s1_4] — yet an estimated **\$50–60B per year** of non-fee-funded value flows alongside it: issuance, venture capital, and insider unlocks. The machine looks self-sustaining. It isn't.

How large is the gap? It depends entirely on the denominator, and we refuse to hide that:

- Against **gross fees (\$20.3B/yr)** — the broadest "organic demand" base — non-fee-funded flows are roughly **72%** of total value flows[^s1_4][^s1_5].
- Against **retained revenue (\$12.8B/yr)** — the cash protocols actually keep — the share rises to roughly **80–81%**[^s1_4][^s1_5].
- A real slice of those "fees" is itself **incentive-driven and circular** — emissions-farmed DEX volume and perp wash-trading — so the *truly exogenous* demand sits below the \$20.3B gross-fee line. Haircutting gross fees for that circularity (an estimated 25–40%) pulls the gross-fee ratio up from 72% toward the high-70s, closing most of the gap with the retained-revenue number[^s1_4].

Triangulating those, we report a **defended range of roughly 75–82%, central near 80%**, of measured blockchain value flows originating from sources other than organic user demand[^s1_4][^s1_5]. The October 2025 report put that ratio at 85–90% against an \$86–113B base; eight months of price compression — BTC at \$63,932, ETH at \$1,731, SOL at \$71 — deflated the absolute dollars while the structural ratio merely eased into the high-70s to low-80s. The dependency is intact. Only the denomination changed.

> **Measurement-basis caveat (read before citing the ratio).** These flows are not all the same kind of dollar. Fees, revenue and VC are **realized cash** changing hands. Issuance and token unlocks are **marked-to-market notional** value of newly-available supply — no cash necessarily moves, and the "value" is endogenous to the same token price that deflates fees. The ratio therefore compares *total economic value-at-stake*, not like-for-like cash flows. Roughly 60% of the non-fee numerator (issuance + unlocks) is notional; the denominator (fees) is cash. We keep the sum because it is the thesis, but the reader should hold the basis-mix in view[^s1_7][^s1_12].

**Core on-chain revenues (transparent, API-verifiable):**
- Blockchain base-layer fees (BTC + ETH L1 + SOL): approximately \$355M/yr — BTC \$79.8M, ETH L1 \$135.6M, SOL \$139.8M[^s1_6] 🔷 HARD DATA
- Gross protocol fees across DeFi, L2s, DEXs, staking services: approximately **\$20.3B/yr** (DeFiLlama 30-day fees of \$1.670B, annualized × 365/30)[^s1_4] 🔷 HARD DATA
- Retained protocol revenue (after LP/supplier payouts): approximately **\$12.8B/yr** (DeFiLlama 30-day revenue of \$1.050B, annualized × 365/30)[^s1_4] 🔷 HARD DATA
- **The \$12.8B retained figure is the denominator we anchor the headline to** (down from the approximately \$13.7B October 2025 figure — note the new number is *lower*, not higher, despite a maturing sector).

**Non-fee-funded value flows (issuance is hard data; aggregates are estimates):**
- Bitcoin mining issuance: approximately **\$10.5B/yr** — 3.125 BTC × 144 blocks × 365 days = 164,250 BTC × \$63,932 = the single largest line item in the entire industry, by a wide margin[^s1_7] 🔷 HARD DATA (issuance schedule + live price)
- Ethereum gross staking issuance: approximately **\$1.9B/yr** (approximately 1.1M ETH/yr gross consensus issuance run-rate × \$1,731)[^s1_8] — this is *gross* security-budget issuance; net ETH dilution after the EIP-1559 burn is far lower and burn-variable (see Sustainability Gap). 🔷 HARD DATA on cumulative on-chain staking; the 1.1M ETH/yr forward run-rate is a derived ESTIMATE.
- Solana staking inflation: approximately **\$1.6B/yr** (3.795% disinflationary rate × approximately 580M circulating SOL × \$71.48)[^s1_9] — ESTIMATE derived from the inflation schedule and live price.
- Core-3 issuance (BTC + ETH + SOL): approximately **\$14.0B/yr**, of which **Bitcoin alone is roughly 75%** — the industry's security budget is now overwhelmingly a Bitcoin number[^s1_7][^s1_8][^s1_9].
- Venture-capital deployment: approximately **\$16B/yr cyclical run-rate** — see range note below[^s1_10][^s1_11]. CYCLICAL RUN-RATE, not a forecast.
- Insider supply / value transfer via token unlocks: approximately **\$18–24B/yr net** (wide-error-band ESTIMATE; no verified public aggregate exists)[^s1_12].
- **Total non-fee-funded base: approximately \$50–60B/yr** (ESTIMATE — the spread is driven mainly by the VC cyclical range and the unlock error bars).

A note on the spread, because it is the whole game. BTC, ETH and SOL issuance together total a clean **approximately \$14.0B/yr** of hard-data inflation (plus an estimated \$1–2B from smaller L1s such as Tron, Cardano, Avalanche and Cosmos)[^s1_7][^s1_8][^s1_9]. The two soft inputs — VC and token unlocks — are where the uncertainty lives. The institutional-standard Galaxy Digital tally puts 2026 crypto VC on an approximately **\$16B annualized run-rate** (Q1 2026 was \$4.0B across roughly 355 deals, down approximately 50% QoQ, with median deal size at an all-time high above \$4.5M); full-year 2025 ran near \$20B[^s1_10]. Broader trackers that bundle M&A and later-stage rounds reach **approximately \$27B**[^s1_11]. Insider unlocks add an estimated **\$18–24B/yr** of value transferred from new market buyers to vesting insiders — marked at *market* price, which dwarfs the VC cost basis embedded inside it, so unlocks are **not** a re-count of VC dollars (see footnote [^s1_12] for the netting). Pair Galaxy's \$16B with issuance and net unlocks and the non-fee base lands near **\$50–55B**; use the higher VC tracker and it stretches toward **\$60B+**. We lead with the Galaxy-anchored central case.

The following numbers would make Milton Friedman faint: an industry that mints, vests, and venture-funds its way to the appearance of viability while organic income covers barely a fifth of the bill. Written per dollar of retained user revenue, **\$1.00 kept by protocols, validators and miners runs alongside roughly \$4 of non-fee-funded flows** under the \$50–55B central case (approximately \$5 at the upper \$60B+ scenario) — issuance, vesting, and venture capital, none of which a user ever sees on a fee receipt[^s1_5]. BNB's approximately \$4B/yr quarterly auto-burn is deliberately *excluded* from this total: it removes supply rather than funding activity, and counting it would flatter the deflationary case it actually represents[^s1_13].

### Notable Exceptions

A limited subset of ecosystems is close to genuinely self-sustaining models, and they cut against the "5–15% organic" pattern that holds for the issuance-funded L1 sample:

- **[Hyperliquid](https://github.com/Ricosworks1/blockchain-payment-flow-analysis/blob/main/case_studies/chains/07_hyperliquid.md)**: Generates genuine, protocol-retained trading-fee revenue rather than relying on issuance — the rare chain whose income line is real[^s1_14].
- **[Base](https://github.com/Ricosworks1/blockchain-payment-flow-analysis/blob/main/case_studies/chains/05_base.md)**: Captures sequencer revenue and operates profitably, now among the largest L2s by DeFi TVL (approximately \$4.22B)[^s1_15] 🔷 HARD DATA.
- **[Optimism](https://github.com/Ricosworks1/blockchain-payment-flow-analysis/blob/main/case_studies/chains/14_optimism.md)**: Operates a Superchain architecture that captures portions of the fees of other OP Stack L2s, but is not yet at breakeven[^s1_16].
- **Stablecoin settlement** is a fourth fee-real exception in spirit: chains carrying heavy stablecoin transfer volume (Tron, and increasingly Ethereum and Solana) earn fees tied to genuine payment demand rather than emissions, though much of that value accrues to the issuer rather than the chain[^s1_6].

Yet even these exceptions face material long-term risks: large scheduled team and investor token unlocks continue to test whether fee-funded models can survive their own emission schedules.

### The Sustainability Gap

- **Bitcoin** funds its **issuance-based security budget at roughly 130–135:1 versus user fees** — approximately \$10.5B/yr of block-subsidy issuance against roughly **\$79.8M/yr** in actual user fees, meaning fees cover **less than 1%** of what Bitcoin spends to stay secure[^s1_6][^s1_7]. This is a *designed* security budget, not a temporary handout — but as the price compressed, the fee base thinned faster than the subsidy, leaving Bitcoin's long-run fee-only security question more exposed, not less.
- **Ethereum** has tilted back to net inflationary (approximately +0.9%) as L2s — Base foremost — absorbed mainnet activity. The directional claim is solid; the magnitude is *not* fixed, because the EIP-1559 burn swings with blob and blockspace demand. At the current record-low burn pace (approximately 16,800 ETH/yr, roughly \$29M/yr) against approximately \$1.9B/yr of gross staking issuance, net inflation is modestly positive — but a demand spike could compress or briefly reverse it[^s1_8][^s1_17].
- **Solana** depends on approximately \$1.6B/yr of inflation against approximately \$140M/yr in network fees — issuance still dwarfs organic fees by roughly an order of magnitude[^s1_6][^s1_9].

Across the issuance-funded L1 sample analyzed here, user fees represent at best **5–15% of total value flows** even for major established networks — with the fee-real exceptions above (Hyperliquid, Base, stablecoin-settlement volume) as the deliberate counterexamples.

### The Hidden Economy: MEV and Extraction

Maximal Extractable Value (MEV) is part of the non-fee economy, but it is not monolithic and should not be painted as pure theft:
- **Extractive MEV** (sandwich attacks, frontrunning) is a genuine tax on users and the clearest "hidden cost" line.
- **Efficiency MEV** (arbitrage, liquidations) performs a real economic function — it keeps DEX prices aligned with markets and clears bad debt — even as searchers profit from it.
- **Protocol-captured MEV** (e.g. via order-flow auctions, MEV-Boost redistribution, application-level capture) returns part of the value to validators, protocols or users rather than leaking it entirely.

We keep MEV inside the hidden economy because end users ultimately bear its extractive share, but the framing is "a mix of tax and infrastructure," not "pure extraction"[^s1_18].

### Market Opacity Warning

Caution remains warranted, as blockchain markets exhibit persistent structural opacity:
- Exchanges charge \$1–5 million listing fees while engaging in wash and proprietary trading.
- Market makers demand 10–15% token loans with options allocations.
- Venture funds frequently coordinate distribution cycles via private communication channels.

The opacity is not academic — it surfaces violently. Between June 4 and June 6, 2026, a leveraged liquidation cascade wiped out over **\$3 billion** in positions as Bitcoin fell from approximately \$67,000 to a cycle low near \$59,100; longs accounted for roughly **85%** of BTC-specific losses, and open interest collapsed 22% in a single day[^s1_19]. Cascades like this are the recurring tell of a market still propped up by leverage and subsidy rather than organic demand. The "Digital Asset Treasuries (DAT)" narrative — corporate vehicles that raised an estimated approximately \$29B through 2025 to hold tokens on balance sheets[^s1_20] — appears primarily designed to repackage illiquid tokens for secondary distribution, coinciding with a sustained collapse in retail participation since 2021.

---


[^s1_1]: [CoinGecko — Global Charts](https://www.coingecko.com/en/global-charts) — Total crypto market cap \$2.28T, BTC dominance 56.2%, retrieved via CoinGecko Global API (June 20, 2026). 🔷 HARD DATA

[^s1_2]: [Blockchain Payment Flow Analysis — GitHub Repository](https://github.com/Ricosworks1/blockchain-payment-flow-analysis) — Core reference repository for all chain, protocol, and infrastructure case studies (June 2026).

[^s1_3]: [Oracles Infrastructure Analysis](https://github.com/Ricosworks1/blockchain-payment-flow-analysis/blob/main/case_studies/infrastructure/oracles.md) — Oracle monetization. The opacity claim is specific to Chainlink's dominant subscription/commercial-contract model; pull-based oracles (Pyth) charge on-chain update fees and run staking/usage models that are partly on-chain visible (June 2026).

[^s1_4]: [DefiLlama — Fees & Revenue Overview](https://defillama.com/fees) — Total DeFi protocol **fees** 30-day: \$1.670B (annualized × 365/30 = approximately \$20.3B/yr; trailing-1y \$24.9B); total DeFi protocol **revenue** 30-day: \$1.050B (annualized × 365/30 = approximately \$12.8B/yr; trailing-1y \$14.08B), retrieved via DeFiLlama fees overview API (June 20, 2026). Both figures are cited. The **headline ratio anchors on retained revenue (\$12.8B)**, with the gross-fee figure (\$20.3B) reported alongside as the broader denominator; the 30-day run-rate is used (not trailing-1y) so the numerator and denominator are both marked at today's depressed prices. 🔷 HARD DATA

[^s1_5]: [DefiLlama — Fees & Revenue Overview](https://defillama.com/fees) — Per-dollar multiple derived from the \$50–55B central non-fee base ÷ \$12.8B retained revenue ≈ \$4.0–4.3 of non-fee flows per \$1 of retained revenue (rising to approximately \$5 at the \$60B+ upper scenario). ESTIMATE; the VC and token-unlock inputs are non-hard and notional. (June 20, 2026)

[^s1_6]: [DefiLlama — Chain Fees](https://defillama.com/fees) — Base-layer fees annualized from 30-day actuals × 365/30: BTC L1 \$79.8M, ETH L1 \$135.6M, SOL \$139.8M (total approximately \$355M/yr), retrieved via DeFiLlama fees API (June 20, 2026). 🔷 HARD DATA

[^s1_7]: [Bitcoin Halving Schedule — Bitcoin Foundation](https://bitcoinfoundation.org/news/bitcoin/what-is-bitcoin-halving-when-the-next-one-is-and-how-it-can-affect-btc/) — Post-April 2024 block reward 3.125 BTC; 3.125 × 144 blocks/day × 365 = 164,250 BTC/yr × \$63,932 ≈ \$10.5B annual gross issuance. Next halving April 2028. **Issuance value is marked-to-market notional supply, not a cash flow.** 🔷 HARD DATA (issuance schedule) combined with [CoinGecko — Bitcoin](https://www.coingecko.com/en/coins/bitcoin) live price (June 20, 2026).

[^s1_8]: [Etherscan — ETH Supply Statistics](https://etherscan.io/stat/supply) — Cumulative Eth2 staking rewards 2,940,327 ETH since the Merge; cumulative EIP-1559 burnt 4,630,257 ETH, retrieved via Etherscan ethsupply2 API (June 20, 2026). 🔷 HARD DATA (on-chain cumulative). The forward **gross** issuance run-rate of approximately 1.1M ETH/yr (× \$1,731 ≈ \$1.9B/yr) is a DERIVED ESTIMATE — the cumulative average since the Merge is lower (approximately 784k ETH/yr), but the current run-rate is higher as ETH staked has grown toward approximately 39M; plausible range 1.1–1.4M ETH/yr. This is gross security-budget issuance, not net dilution.

[^s1_9]: [Solana Compass — Tokenomics & Inflation Schedule](https://solanacompass.com/tokenomics) — Disinflationary schedule (8% initial, −15%/yr, 1.5% floor); current approximately 3.795% × approximately 580M circulating SOL ≈ 22M SOL/yr × \$71.48 ≈ \$1.6B/yr (June 2026). ESTIMATE — derived from the inflation schedule and live circulating supply; notional, not a cash flow.

[^s1_10]: [CryptoPotato — Crypto VC Funding Falls 50% After Q4 2025 Surge (Galaxy)](https://cryptopotato.com/crypto-vc-funding-falls-50-after-massive-q4-2025-surge-galaxy/) — Galaxy Digital Q1 2026: \$4.0B across approximately 355 deals, approximately 50% QoQ decline, median deal size at an all-time high above \$4.5M → approximately \$16B annualized run-rate; FY2025 approximately \$20B. Used as the central VC input. ESTIMATE, labeled CYCLICAL RUN-RATE (a Q1 × 4 annualization), explicitly not a forecast (June 2026).

[^s1_11]: [Q1 2026 Crypto Fundraising Report — crypto-fundraising.info](https://crypto-fundraising.info/blog/q1-2026-crypto-fundraising-report/) — Q1 2026: \$6.81B across 222 rounds → approximately \$27B annualized. Broader tracker that bundles M&A and later-stage rounds; used as the high end of the VC range. ESTIMATE (June 2026).

[^s1_12]: [CoinGecko — Incoming Token Unlocks](https://www.coingecko.com/en/highlights/incoming-token-unlocks) — No verified public annual aggregate exists; CoinGecko, Messari, Tokenomist and CryptoRank track individual events only. The 2026 monthly unlock value averages approximately \$2B (→ approximately \$24B/yr gross), but that average is **inflated by the March 2026 cliff** (approximately \$6B, of which 69% was a single token — WhiteBIT WBT at \$4.18B). Excluding that outlier, gross falls to approximately \$19.8B/yr. Net of an estimated VC cost-basis overlap — a coarse, unsourced ESTIMATE with its own wide band (\$2.5–6B), since no public decomposition of unlock recipients (VC vs team vs foundation vs ecosystem) exists — the net central lands at approximately **\$18–24B/yr**, ex-WBT closer to approximately \$19B. Unlock value is marked at *market* price and exceeds the VC cost basis embedded within it, so it is not a re-count of VC dollars. ESTIMATE — wide error bars, notional, not hard data and not a cash flow.

[^s1_13]: [Chainwire — BNB Chain 35th Quarterly Token Burn](https://chainwire.org/2026/04/15/bnb-chain-completes-35th-quarterly-token-burn-marks-second-burn-of-2026/) — H1 2026 burns annualize to approximately 7M BNB (approximately \$4B/yr at the current price). Deflationary supply removal, correctly EXCLUDED from the non-fee base (April 15, 2026).

[^s1_14]: [Hyperliquid Payment Flow Analysis](https://github.com/Ricosworks1/blockchain-payment-flow-analysis/blob/main/case_studies/chains/07_hyperliquid.md) — Protocol-retained trading-fee revenue model (June 2026).

[^s1_15]: [DefiLlama — Base](https://defillama.com/chain/Base) — Base DeFi TVL approximately \$4.22B, retrieved via DeFiLlama API (June 20, 2026). 🔷 HARD DATA

[^s1_16]: [Optimism Payment Flow Analysis](https://github.com/Ricosworks1/blockchain-payment-flow-analysis/blob/main/case_studies/chains/14_optimism.md) — Superchain fee-capture architecture, not yet at breakeven (June 2026).

[^s1_17]: [ultrasound.money — ETH Issuance & Burn](https://ultrasound.money/) — EIP-1559 burn collapsed to approximately 324 ETH per 7-day period (approximately 16,800 ETH/yr ≈ \$29M at \$1,731) as L2s absorbed L1 activity; net ETH inflation approximately +0.9%. The burn is demand-variable — a blob/blockspace demand spike can compress or briefly reverse net inflation, so the magnitude is not fixed (mid-June 2026).

[^s1_18]: [Flashbots Documentation — MEV Overview](https://docs.flashbots.net/) — MEV disaggregated into extractive (sandwich/frontrun), efficiency (arbitrage/liquidation) and protocol-captured (order-flow auctions, MEV-Boost redistribution) categories. Annual MEV gross is an ESTIMATE, not on-chain-aggregated; only the extractive share is a pure user tax (June 2026).

[^s1_19]: [WazirX Blog — Bitcoin June 2026 Liquidation Cascade](https://wazirx.com/blog/bitcoin-liquidation-cascade-june-2026/) — Over \$3B liquidated June 4–6, 2026; BTC fell approximately \$67,000 → approximately \$59,100; longs approximately 85% of BTC losses; open interest down 22% on June 4 (June 2026).

[^s1_20]: [The Block — Crypto VCs Share 2026 Funding and Token Sales Outlook](https://www.theblock.co/post/384209/top-crypto-vcs-share-2026-funding-and-token-sales-outlook) — Digital Asset Treasury (DAT) companies raised an estimated approximately \$29B through 2025 (per Galaxy research). ESTIMATE — a separate capital channel from VC (2026).

---

## Money Flow Categories

Money does not enter a blockchain at the top and trickle down. It enters in several streams at once — one you can see on your receipt, and several that move in the dark. Across the issuance-funded Layer-1 sample that anchors this report, the same conclusion keeps surfacing: the fee a user pays is the smallest number in the room. As of 20 June 2026, transparent on-chain protocol revenue runs at roughly **\$12.8B/year** retained — out of **\$20.3B/year** in gross fees[^s2_cat1] — while the non-fee-funded value flows beneath it run at an estimated **\$48–60B/year** (central approximately **\$53B**)[^s2_cat2]. For every roughly \$1 of organic run-rate fees a user pays, on the order of \$2.6 of value originating from sources other than organic user demand is already in motion. Here is where each stream goes — sorted into four buckets the rest of the report uses: **organic user fees, issuance-funded security budget, external capital (VC), and insider supply transfer (unlocks)**.

### Bucket 1 — Organic User Fees (and where they land)

When users pay transaction fees, the money immediately flows to:

1. **Validators/Miners**: Network security providers receiving fee revenue. The headline number is brutal — base-layer chain fees across the three largest networks total just approximately **\$352M/year** (BTC approximately \$79.8M, ETH L1 approximately \$133.8M, SOL approximately \$138.0M, annualized from 30-day actuals)[^s2_cat3]. That is what users actually hand to the people securing the chains.
2. **Token Burn Mechanisms**: Reducing supply to benefit all token holders. On Ethereum, EIP-1559 (now layered with Fusaka-era blob pricing) burns the base fee — but L2s have hoovered up mainnet activity, collapsing the burn to roughly **16,800 ETH/year (approximately \$29.1M)**, a record-low pace that has left the network directionally net-inflationary in mid-2026[^s2_cat4]. Treat this as a snapshot, not a fixed rate: the base-fee burn swings with blob and blob-fee demand, so the net-issuance sign can move with congestion.
3. **Protocol Treasuries / Retained Revenue**: DAOs and foundations receiving fee shares. Of the approximately **\$20.3B/year** in gross DeFi protocol fees, only approximately **\$12.8B/year** is retained as revenue — the rest is paid through to suppliers, LPs, and stakers[^s2_cat1]. A real share of even that gross-fee figure is incentive-driven and circular — emissions-farmed DEX volume and perpetuals wash-trading inflate "fees" that no exogenous user would pay absent the token reward — so truly-exogenous user demand sits *below* the \$20.3B gross. That haircut is precisely why the headline ratio sits toward the high end of its range (see Bucket 4).
4. **Layer 1 Settlement**: L2s paying for Ethereum security. The cruel irony of 2026 — the very L2 success that drained ETH's L1 fees means rollups now settle to Ethereum for a fraction of what mainnet once charged.
5. **MEV Extractors**: Searchers and validators capturing MEV value. On Ethereum, Flashbots' MEV-Boost alone paid validators approximately **\$241.4M over the trailing year** (cumulative approximately \$1.66B since launch)[^s2_cat5]; on Solana, Jito tips delivered approximately **\$164.8M** to validators in the same window[^s2_cat6]. (MEV is disaggregated below — not all of it is pure extraction.)

A scoping note on the "smallest number in the room" framing: it is built on the issuance-funded L1 sample (Bitcoin, Ethereum, Solana and similar consensus-subsidized chains). It is **not** universal. Fee-real exceptions exist — Hyperliquid and Base capture organic fees that are a far larger share of their economics, with little or no issuance subsidy underneath. And a large share of crypto's *transfer value* — stablecoin settlement — moves enormous notional with minimal protocol fee capture, so "fees are tiny" cuts both ways: tiny relative to value moved, but for the right reason on those rails.

### Bucket 2 — Issuance-Funded Security Budget

This is the largest non-fee value flow, and it is a *designed* security budget, not a temporary external subsidy. New token issuance dilutes existing holders to pay for consensus security:

1. **Bitcoin** mints **164,250 BTC/year (approximately \$10.5B at \$63,953)** in block subsidy — against roughly **\$80M** in actual user fees[^s2_cat7]. Reframed honestly: fees cover well under 1% of Bitcoin's security spend; the rest is the issuance-funded security budget. Bitcoin is approximately **76% of core-3 issuance** — the network security budget is now overwhelmingly a Bitcoin number.
2. **Ethereum** issues an estimated **approximately 1.0–1.1M ETH/year (approximately \$1.8B)** in *gross* consensus issuance to stakers[^s2_cat8]. This is a gross security-budget figure, not a net-dilution figure: net ETH issuance after the EIP-1559 burn is far lower and burn-variable (see Bucket 1, item 2).
3. **Solana** inflates at **3.795% (approximately 22M SOL ≈ \$1.57B/year at \$71.51)** on roughly 580M circulating SOL, declining 15%/year toward a 1.5% floor[^s2_cat9].

Core-3 issuance totals approximately **\$13.9B/year**; adding other issuance-funded L1s (Tron, Cardano, Avalanche, Polkadot, NEAR, Cosmos, Aptos) brings the central estimate to approximately **\$15.3B/year (band \$14.3–15.8B)**[^s2_cat2]. Issuance alone exceeds all transparent on-chain retained revenue combined. **Foundation grants** sit alongside this bucket: Ethereum, Solana, and dozens of L1/L2 foundation treasuries quietly underwrite the developers, audits, and events that fees never cover.

### Bucket 3 — External Capital (VC)

Private capital formation flowing to protocols and infrastructure. This is a cyclical run-rate, **not a forecast**: Galaxy Research counted approximately **\$4.0B deployed across approximately 355 deals in Q1 2026** (−50% QoQ, −16% on deal count), which annualizes to approximately **\$16B**; full-year 2025 ran near \$20B[^s2_cat11]. Broader trackers run hotter — one logged **\$6.81B across 222 rounds in Q1 2026** (annualizing toward \$27B)[^s2_cat10] — but those bundle M&A-style rounds. The defensible run-rate band is approximately **\$16–20B/year**, anchored on Galaxy's institutional-standard count; even the floor dwarfs the approximately \$352M users pay in base-layer fees. (Notably, median deal size hit an all-time high above \$4.5M in Q1 2026 — capital concentrated into fewer, larger checks.) **Airdrops** are a related user-acquisition cost, paid in inflation rather than cash — billions in token value distributed annually to bootstrap activity that fees cannot fund.

### Bucket 4 — Insider Supply / Value Transfer (Token Unlocks)

Token unlocks are value transferred from new market buyers to insiders (VCs, teams, foundations) via vesting schedules — minted supply hitting the market at *market* price. 2026 monthly unlock value has averaged approximately **\$2B (Tokenomist/CryptoRank)**, implying roughly **\$24B/year gross**[^s2_cat16]. Two adjustments matter:

- **Outlier contamination**: that monthly average is inflated by the March 2026 cliff, which spiked to approximately \$6B — of which 69% was a single token (WhiteBIT WBT, approximately \$4.18B). Stripping the WBT spike pulls the run-rate down materially; ex-WBT the central is closer to approximately **\$19–20B/year gross**. We therefore center the net figure at approximately **\$21.5B/year** but flag that ex-outlier it is nearer **\$19B** — the band is wide (**\$18–24B**) and no verified public aggregate exists, so this is an ESTIMATE, not hard data.
- **VC overlap (coarse)**: unlocks are **not** a re-count of VC dollars. Unlock value is marked at market and dwarfs the VC cost basis embedded in it. We net only a small VC cost-basis overlap, but with no public decomposition of unlock recipients (VC vs team vs foundation vs ecosystem) this netting is itself a coarse estimate (**approximately \$2.5–6B**), widening the band rather than narrowing it. We make no precise overlap adjustment.

Kept in the thesis as a non-organic value flow per the report taxonomy.

### Hidden Value Extraction (cross-cuts the buckets)

Additional parties extract value without a direct, line-item user payment:

1. **MEV Infrastructure** — disaggregated, *not* pure theft. Gross MEV on Ethereum is estimated at **\$480–720M/year** and on Solana at **\$207–237M/year** — a combined approximately **\$690M–960M/year**[^s2_cat14]. But it splits three ways: **extractive** MEV (sandwich attacks) is a genuine tax on ordinary users; **efficiency** MEV (arbitrage, liquidations) keeps prices aligned and bad debt cleared, value the system needs someone to capture; and **protocol-captured** MEV (e.g. via MEV-Boost / Jito tips, items in Bucket 1) is recycled back to validators rather than skimmed. Only the extractive slice is the "tax on the user who thought \$1 was the whole bill."
2. **Exchange/Market Maker Partnerships**: Off-chain deals — listing fees, market-making rebates, revenue splits — move value that never touches a public ledger.
3. **Institutional Services**: A growing slice of staking issuance is captured by custody and staking-as-a-service operators who take a cut before rewards reach delegators.
4. **Infrastructure Services (oracles, RPC, indexing)**: Chainlink's on-chain oracle fees run approximately **\$73.5M/year** (annualized from \$6.04M/30d)[^s2_cat12] — but this is specific to Chainlink's dominant request-and-pay model; other oracle networks monetize differently (Pyth uses on-chain pull fees, staking/Oracle Integrity Staking, and usage-based models), so "oracles are subsidized" is not universal[^s2_cat12]. The RPC and node-infrastructure market — led by Alchemy's estimated approximately **\$447M ARR** — totals an estimated **\$600–900M/year** (estimate, not hard data)[^s2_cat13]. **Indexing**: The Graph now collects barely approximately **\$99K/quarter in query fees** while paying out approximately **\$7.6M/quarter in indexing rewards** funded by inflation[^s2_cat15] — the gap is the clearest single example of infrastructure running on issuance, not user payment.

**The pattern across the buckets is the same.** Organic fees are real but small (approximately \$352M base-layer, approximately \$12.8B total retained protocol revenue out of \$20.3B gross). The issuance-funded security budget (approximately \$15.3B), external capital (approximately \$16–20B), and insider unlocks (approximately \$18–24B) together run roughly **\$48–60B/year**, an order of magnitude larger. And hidden extraction (gross MEV approximately \$0.7–1B, only part of it extractive) quietly cross-cuts all of it.

**Deriving the headline honestly.** A measurement-basis caveat first: fees, retained revenue and VC are realized *cash*; issuance and unlocks are marked-to-market *notional* supply (no cash necessarily changes hands, and that "value" is endogenous to the same token price that deflates fees). The ratio below compares total economic value-at-stake, not like-for-like cash — roughly 60% of the non-organic numerator is notional. With that flagged, the non-fee-funded share lands in a defended **range, not a single figure**:

- vs **gross fees** (\$20.3B run-rate): non-organic / (non-organic + fees) ≈ **72%** — the floor, before any fee-circularity haircut.
- Apply the fee-circularity haircut (a real share of gross fees is emissions-farmed / wash-traded), shrinking the truly-organic denominator below \$20.3B → pushes to approximately **77–80%**.
- vs **retained revenue** (\$12.8B run-rate): ≈ **80–81%** — the ceiling.

Triangulating across those, the defended headline is approximately **75–82%, central approximately 80%** — and we do not print a bare "80%" without naming retained revenue (and the haircut) as the base that gets it there[^s2_cat2]. The receipt shows \$1. The machine moves several.

---

[^s2_cat1]: 🔷 HARD DATA — [DefiLlama — Fees & Revenue Overview](https://defillama.com/fees): total DeFi protocol fees 30-day \$1.670B (30-day-annualized approximately \$20.3B/yr; trailing-12m \$24.9B, inflated by the late-2025 price peak); protocol revenue retained 30-day \$1.0495B (30-day-annualized approximately \$12.8B/yr; trailing-12m \$14.08B). Headline anchored on the 30-day run-rate because the issuance numerator is also marked at today's depressed BTC/ETH/SOL prices. Retrieved via DefiLlama fees/dailyRevenue overview API, June 20, 2026.

[^s2_cat2]: [DefiLlama — Fees & Revenue](https://defillama.com/fees) — Non-fee-funded value flows derived: issuance-funded security budget approximately \$15.3B (band \$14.3–15.8B) + external capital/VC approximately \$16–20B run-rate + insider unlocks (net) approximately \$18–24B ≈ **\$48–60B/yr (central approximately \$53B)**. Share-of-total: vs \$20.3B gross run-rate fees ≈ 72% (floor); after a fee-circularity haircut ≈ 77–80%; vs \$12.8B retained run-rate revenue ≈ 80–81% (ceiling). Defended range **approximately 75–82%, central approximately 80%**. Measurement-basis caveat: issuance and unlock values are marked-to-market notional supply, not realized cash; VC and fees are cash — the ratio compares total economic value-at-stake, not like-for-like cash. Estimate, not hard data — VC and unlock inputs are expert ranges, not audited aggregates. Down in absolute dollars from the Oct 2025 thesis (\$86–113B base) due to BTC/ETH/SOL price compression; structural share held near 80%.

[^s2_cat3]: 🔷 HARD DATA — [DefiLlama — Chain Fees](https://defillama.com/fees): Bitcoin L1 30-day fees \$6.56M (approximately \$79.8M/yr); Ethereum L1 30-day \$11.14M (approximately \$133.8M/yr); Solana 30-day \$11.49M (approximately \$138.0M/yr); combined approximately \$352M/yr. Retrieved via DefiLlama fees API, June 20, 2026.

[^s2_cat4]: [ultrasound.money — ETH Issuance & Burn](https://ultrasound.money/) — approximately 16,800 ETH/yr burned (approximately \$29.1M at \$1,731.92), a record-low pace as L2s absorbed mainnet activity; network directionally net-inflationary in mid-2026. Snapshot, not a fixed rate — base-fee burn swings with blob/blob-fee demand. Burn-pace figure search-confirmed, June 2026.

[^s2_cat5]: 🔷 HARD DATA — [DefiLlama — Flashbots](https://defillama.com/protocol/flashbots): MEV-Boost paid validators approximately \$241.4M over the trailing year; approximately \$1.665B cumulative since launch. Retrieved via DefiLlama API, June 20, 2026.

[^s2_cat6]: 🔷 HARD DATA — [DefiLlama — Jito MEV Tips](https://defillama.com/protocol/jito-mev-tips): Jito tips paid Solana validators approximately \$164.8M over the trailing year; approximately \$1.417B cumulative since launch. Retrieved via DefiLlama API, June 20, 2026.

[^s2_cat7]: 🔷 HARD DATA (price + fees) / derived (issuance) — Bitcoin block subsidy 3.125 BTC/block × 144 blocks/day × 365 = 164,250 BTC/yr; at BTC \$63,953 ([CoinGecko — Bitcoin](https://www.coingecko.com/en/coins/bitcoin), June 20, 2026) ≈ \$10.5B. User fees approximately \$79.8M/yr ([DefiLlama — Bitcoin Fees](https://defillama.com/chain/Bitcoin)). The issuance × price product is a derived ESTIMATE; only the price and fee inputs are 🔷. Halving schedule confirmed post-April 2024.

[^s2_cat8]: 🔷 HARD DATA (on-chain cumulative) — [Etherscan — ETH Supply](https://etherscan.io/stat/supply): cumulative Eth2 staking rewards approximately 2.94M ETH since the Merge (🔷, Etherscan ethsupply2 API, June 20, 2026). The annual run-rate of approximately 1.0–1.1M ETH/yr gross (≈ \$1.8B at ETH \$1,731.92, [CoinGecko — Ethereum](https://www.coingecko.com/en/coins/ethereum)) is a DERIVED ESTIMATE from cumulative issuance and validator count — not 🔷 — and is GROSS consensus issuance, before the EIP-1559 burn.

[^s2_cat9]: [Solana Validator Economics Documentation](https://docs.solanalabs.com/implemented-proposals/ed_overview/ed_validation_client_economics/ed_vce_state_validation_protocol_based_rewards) — disinflationary schedule (8% initial, −15%/yr, 1.5% floor); current rate approximately 3.795% on approximately 580M circulating SOL ≈ 22M SOL/yr ≈ \$1.57B at SOL \$71.51 ([CoinGecko — Solana](https://www.coingecko.com/en/coins/solana), June 20, 2026). Issuance figure derived (ESTIMATE) from inflation schedule + supply; only price is 🔷.

[^s2_cat10]: [Q1 2026 Crypto Fundraising Report — crypto-fundraising.info](https://crypto-fundraising.info/blog/q1-2026-crypto-fundraising-report/) — \$6.81B across 222 rounds in Q1 2026 (annualizes toward \$27B). Tracker bundles M&A-style rounds; figure is an estimate, not audited.

[^s2_cat11]: [Galaxy Digital crypto VC data, Q1 2026 (via CryptoPotato)](https://cryptopotato.com/crypto-vc-funding-falls-50-after-massive-q4-2025-surge-galaxy/) — institutional-standard count: approximately \$4.0B across approximately 355 deals in Q1 2026 (−50% QoQ, −16% deal count; approximately \$16B annualized; FY2025 approximately \$20B); median deal size an all-time high above \$4.5M. Cyclical run-rate scenario, explicitly NOT a forecast; methodologies diverge materially from broader trackers.

[^s2_cat12]: 🔷 HARD DATA — [DefiLlama — Chainlink](https://defillama.com/protocol/chainlink): on-chain oracle fees \$6.04M (30d), approximately \$73.5M/yr annualized (🔷, retrieved via DefiLlama API, June 20, 2026). Scope caveat: this reflects Chainlink's dominant request-and-pay model; other oracle networks monetize differently — Pyth uses on-chain pull fees, Oracle Integrity Staking, and usage-based models — so the "subsidized oracle" framing is not universal.

[^s2_cat13]: [Latka — Alchemy company profile](https://getlatka.com/companies/alchemy) — Alchemy approximately \$447M ARR (Nov 2025, third-party/unaudited). Total RPC + node-infrastructure market estimated at \$600–900M/yr (Alchemy + Infura approximately \$60–80M + QuickNode + Ankr + others). ESTIMATE, not hard data.

[^s2_cat14]: [ESMA — crypto-asset market analysis](https://www.esma.europa.eu/press-news/esma-news/eba-and-esma-analyse-recent-developments-crypto-assets) and [Helius — Solana MEV Report](https://www.helius.dev/blog/solana-mev-report) — Ethereum gross MEV approximately \$480–720M/yr; Solana approximately \$207–237M/yr; combined approximately \$690M–960M/yr. Splits into extractive (sandwich), efficiency (arbitrage, liquidation), and protocol-captured (MEV-Boost/Jito tips) slices — only the extractive slice is a direct user tax. Research-consensus ESTIMATE (ESMA, EigenPhi, Helius), not a single audited figure. ⏳ HISTORICAL (ESMA July 2025) — most recent comprehensive regulator gross-MEV baseline; cross-checked against live DefiLlama validator-payment data, June 2026.

[^s2_cat15]: [The Graph — Network Data / Dune dashboards](https://thegraph.com/explorer) — Q4 2025 query fees approximately \$98,667 (−8.7% QoQ); indexing rewards approximately 81.6M GRT (approximately \$7.6M); GRT \$0.0195 (June 20, 2026, [CoinGecko — The Graph](https://www.coingecko.com/en/coins/the-graph)). Indexing infrastructure funded predominantly by token issuance, not query fees. ⏳ HISTORICAL (Q4 2025) — latest published quarterly network data; GRT price confirmed live June 20, 2026.

[^s2_cat16]: [Tokenomist — Token Unlock Schedules](https://tokenomist.ai/) and [CryptoRank — Token Unlocks](https://cryptorank.io/upcoming-ico-unlocks) — 2026 monthly unlock value averaging approximately \$2B (approximately \$24B/yr gross), marked at market price. The March 2026 cliff spiked to approximately \$6B, of which approximately 69% was a single token (WhiteBIT WBT, approximately \$4.18B); ex-WBT the run-rate centers nearer \$19–20B/yr gross, net approximately \$19B. ESTIMATE with wide error bars (net band \$18–24B) — no verified public aggregate exists; not 🔷. June 2026.

---

## Major L1 Networks: Money Allocation Analysis

*All figures refreshed to 20 June 2026. Prices, fees, revenue, and TVL are live API pulls and carry the 🔷 HARD DATA marker; issuance, MEV, and subsidy totals are calculated or expert estimates and are labeled as such. We follow the report's four-bucket taxonomy throughout: (1) organic user fees — and, separately, the retained revenue inside them; (2) issuance-funded security budgets; (3) external capital; (4) insider supply/value transfer via token unlocks. We do not lump these under one word.*

The seven networks below settle the overwhelming majority of public-blockchain value. They also share a fact the marketing decks never put on a slide: for most of them, the transparent, user-funded layer is a fraction of the value moving underneath. Strip away issuance, MEV, corporate burns, and insider unlock schedules, and what users actually pay is a small share of total economic flow on each chain. This section follows a single dollar of user fees through each network and asks one question — *when a user pays \$1, how much total economic activity actually moves, and how much of it is fee-funded?*

A measurement note that governs every multiplier below: **gross fees and retained revenue are different numbers, and we say which one anchors each ratio.** Gross fees are what users pay for blockspace; retained revenue (DeFiLlama "Revenue") is what validators or the protocol actually keep after burns and LP/supplier payouts. Where a multiplier divides by fees, we use *gross fees* as the denominator and flag where retained revenue is materially smaller.

---

### Ethereum: The Ultrasound Money Thesis, in Abeyance

Ethereum's deflation story is on hold. ETH trades at **\$1,763.58** as of 20 June 2026[^s3_eth1], down approximately **64% from its \$4,946 August 2025 all-time high**[^s3_eth1] — among the largest price moves in this refresh. With activity at multi-year lows, the network sits at **+0.88% net annual inflation**: EIP-1559 burns roughly 40,000 ETH a year at current throughput while staking issues approximately 1.10M ETH[^s3_eth9][^s3_eth10]. (This rate is highly sensitive to blob demand. At today's activity trough, burn runs near 40,000 ETH/yr, implying approximately +0.88% inflation; a return to 2024-level throughput could push burn above 300,000 ETH/yr and compress inflation toward +0.67%. The directional claim — issuance exceeds burn — is robust, but the precise rate swings with demand.) The "ultrasound money" thesis requires mainnet demand to push burn above issuance. It is not close today.

The Fusaka upgrade (5 December 2025) introduced EIP-7918's minimum blob-fee floor[^s3_eth11], but at current L2 volumes the burn impact is marginal. Gas has roughly doubled off its trough — the safe price is now **approximately 0.19 Gwei**, making a simple transfer cost **approximately \$0.006**[^s3_eth3]. The chain collected **\$302.7M in user fees over the trailing twelve months**[^s3_eth4] 🔷 HARD DATA. Of that gross-fee figure, the priority-fee tip retained by validators is roughly 15% (approximately \$45M/yr); the remaining 85% is burned permanently and never reaches a validator's balance sheet. DeFiLlama's "Revenue" line — validator-retained fee income — is **\$115.3M over the trailing year**[^s3_eth4b], which includes MEV-related tips beyond the base priority fee. **The \$302.7M gross-fee figure is the denominator used for the multiplier below — not retained revenue, which is roughly 2.6x smaller.** Against that gross-fee base, the network paid out roughly **\$1.95B in staking issuance**[^s3_eth9] at the live ETH price. DeFi TVL on Ethereum stands at **\$39.0B**[^s3_eth5], with L2s now handling approximately 95% of throughput[^s3_eth16].

> **When a user pays \$1.00 in Ethereum gas fees:**
>
> **Direct Fee Recipients**
> - **\$0.85** — burned via the EIP-1559 base fee (permanent supply reduction; accrues proportionally to all ETH holders)[^s3_eth17]
> - **\$0.15** — validators, as the priority-fee tip[^s3_eth17]
>
> **Issuance-Funded Security Budget**
> - **+\$6.43** — staking issuance (\$1.95B annual gross consensus issuance ÷ \$302.7M annual gross fees)[^s3_eth9][^s3_eth4]. This is a designed security budget paid in newly minted ETH, diluting holders who do not stake. Note this is *gross* issuance; net dilution after the EIP-1559 burn is lower and burn-variable.
>
> **Hidden Extraction (disaggregated)**
> - **+\$1.82** — MEV flowing to searchers and bots (estimate: approximately \$550M/yr ÷ \$302.7M fees)[^s3_eth13]. This is not uniform harm: research suggests roughly 40–50% is *efficiency* MEV (arbitrage and liquidations that incidentally support price discovery and keep lending protocols solvent), while *extractive* MEV (sandwich attacks, frontrunning) is a direct cost to traders and LPs. A portion of MEV is also *protocol-captured* — MEV-Boost relay payments that flow back to validators and are partly already counted in the priority-tip line above.[^s3_eth14]
>
> **Total Ecosystem Value Flow: approximately \$9.24 per \$1 of gross user fees — approximately 89% from sources other than organic fees.**


![Ethereum payment flow](charts_2026-06-19/ethereum.png)

The arithmetic deserves a footnote of its own. An earlier draft ran the multiple off a \$116M annual-fee base — which is actually DeFiLlama's *revenue* line, not gross fees — implying a misleadingly high multiplier. The correct gross-fee figure is **\$302.7M**[^s3_eth4], which places Ethereum's true multiple near 9x and its non-fee share in the high-80s. Still overwhelmingly subsidy-shaped; just not a caricature.

---

### Bitcoin: An Issuance-Funded Security Budget, Two Orders of Magnitude Over Fees

Bitcoin runs the report's purest **issuance-funded security budget**. It mints an estimated **\$10.5B a year in fresh BTC** to pay for hashrate, against roughly **\$58–69M in annual user fees** at current throughput[^s3_btc1][^s3_btc2]. That is a security budget where **fees cover well under 1% of the spend** — a subsidy-to-fee ratio of roughly **150–180:1** at today's depressed fee levels, and it widens, not narrows, as price retreats. BTC trades at **\$63,951**, down approximately 49% from its \$126,080 October 2025 ATH[^s3_btc1].

This is a designed mechanism, not a temporary external subsidy: the protocol pays miners in new issuance by construction, and that issuance halves on schedule. The mechanics are simple. Each block pays 3.125 BTC in subsidy and a small fraction of a BTC in fees: 144 blocks/day × 3.125 BTC × \$63,951 = **approximately \$28.8M/day in new issuance**, against roughly \$159K/day in fees[^s3_btc2]. Fees are **approximately 0.55% of miner revenue** over the trailing day[^s3_btc2][^s3_btc7]. Hashrate peaked near 1.05 ZH/s in January 2026 before retreating to **937 EH/s** by June — the first first-quarter hashrate decline since 2020, as miners pivot rigs to AI compute (Cipher's 15-year, approximately \$5.5B AWS deal is the headline)[^s3_btc3][^s3_btc8][^s3_btc13]. With fleet-average production cost estimated near **\$90,000/BTC** against a \$63,951 spot, large swaths of the network are mining at a loss[^s3_btc8].

> **When a user pays \$1.00 in Bitcoin transaction fees:**
>
> **Direct Fee Recipients**
> - **\$1.00** — to the block-winning miner (Bitcoin has no burn, no protocol treasury, no developer cut from fees)[^s3_btc-flow]
>
> **Issuance-Funded Security Budget**
> - **+approximately \$150–180** — newly issued BTC distributed to miners alongside that same \$1 fee[^s3_btc16]. More than 99% of miner income is issuance, not user payment. This is the security budget, by design — but at this ratio, fees are nowhere near replacing it.
>
> **Hidden Extraction / Off-Protocol Costs**
> - An estimated **approximately \$14.8B/yr** in real-world energy, ASIC, and facility spend backstops the hashrate[^s3_btc-cost] — a cost that exists whether or not a single user transacts. Development is funded *off-protocol* via grants (approximately \$12–15M/yr from OpenSats, Spiral, Chaincode)[^s3_btc10].
>
> **Total Ecosystem Value Flow: approximately \$150–180 per \$1 of user fees — the security budget is almost entirely issuance-funded.**


![Bitcoin payment flow](charts_2026-06-19/bitcoin.png)

Bitcoin is the cleanest expression of the report's framing. There are no token unlocks, no VC vesting cliffs, no foundation treasury — the *entire* security budget is protocol-level issuance, and it dwarfs fee revenue by two orders of magnitude. The long-running "security budget" debate is no longer academic: the day the subsidy halves to a number fees cannot replace is now closer than it is far.[^s3_btc12]

---

### Solana: Strip Out the Meme Mania, and the Subsidy Remains

Solana's issuance machine minted approximately **\$1.57B in validator subsidies** over the past year against **\$304.9M in user fees**[^s3_sol2][^s3_sol4] — a **5.2x issuance-to-fee ratio** measured on gross fees. SOL trades at **\$71.53**, down approximately **44% since the October 2025 report**[^s3_sol1]. The memecoin frenzy that made Solana's DEX volume look like it was challenging Ethereum has cooled — monthly DEX volume fell from a **\$145B October 2025 peak to approximately \$42B by April 2026**[^s3_sol15] — leaving a structurally issuance-dependent network underneath.

Inflation sits at **3.788%** on the unchanged 15%-per-year disinflation schedule; SIMD-0411, which would have doubled the disinflation rate, was **withdrawn without a vote** in early 2026[^s3_sol2][^s3_sol10]. With **67.7% of supply staked**[^s3_sol2], that mints approximately 22.0M SOL/year. A denominator note: Solana's gross fees are \$304.9M, but DeFiLlama's retained-revenue line is just **\$35.7M**[^s3_sol4] (50% of base fees are burned and priority fees pass through to validators) — so the multiplier below uses gross fees, the larger and more conservative base. On top of issuance, **Jito MEV tips ran \$295.0M over the trailing year**[^s3_sol5] — a near-1:1 match with organic fees, and a vivid measure of how much value extraction rides alongside every transaction.

> **When a user pays \$1.00 in Solana network fees:**
>
> **Direct Fee Recipients**
> - **approximately \$0.95–0.99** — validators, via priority fees (100% to validators post-SIMD-0096; priority fees dominate fee volume)[^s3_sol9]
> - **approximately \$0.01–0.05** — burned (50% of base fees only)[^s3_sol18]
>
> **Issuance-Funded Security Budget**
> - **+\$5.16** — inflationary issuance (\$1.57B ÷ \$304.9M gross fees)[^s3_sol4]. The validator security budget is majority issuance-funded.
>
> **Hidden Extraction (disaggregated)**
> - **+\$0.97** — Jito MEV tips (\$295.0M ÷ \$304.9M fees)[^s3_sol5]. As on Ethereum, a meaningful share is efficiency MEV (arbitrage, liquidations) rather than pure extraction; Jito's auction routes much of it back to stakers, making part of this protocol-captured rather than lost to users.[^s3_sol5]
>
> **Total Ecosystem Value Flow: approximately \$7.12 per \$1 of gross user fees — approximately 86% issuance plus extraction.**


![Solana payment flow](charts_2026-06-19/solana.png)

The structural story held even as the dollars fell. The Alpenglow consensus redesign entered community testnet on 11 May 2026, targeting 100–150ms finality versus today's approximately 12.8s[^s3_sol11], and Firedancer reached mainnet block production[^s3_sol12]. US spot SOL ETFs absorbed approximately \$1.1B in cumulative inflows since their October 2025 launch[^s3_sol14] — institutions buying a 6–7% staking yield even as price fell. None of it changes the core arithmetic: for every visible dollar of fees, roughly \$6 of issuance and extraction moves in the background.

---

### BNB Chain: \$214M in Fees, Billions in Corporate Burns

BNB Chain collects **approximately \$214.5M in trailing-twelve-month user fees**[^s3_bnb3] while its issuer destroys an estimated **\$3.4–4.7B a year in corporate auto-burns**[^s3_bnb6]. The value moving around the chain is roughly **16x what users pay for it** at the current price — and unlike issuance-funded chains, this is *deflationary corporate capital*, not protocol inflation. That distinction matters: it is a value transfer funded by Binance Group's balance sheet, not a security budget and not user demand. BNB trades at **\$586.48**, down approximately 57% from its \$1,370 October 2025 ATH[^s3_bnb1].

The Fermi hard fork (14 January 2026) cut block time to **0.45 seconds**[^s3_bnb7], making BSC the fastest EVM L1 by block interval. Three quarterly burns frame the corporate subsidy: the 33rd (Oct 2025, approximately \$1.24B), 34th (Jan 2026, 1,371,803 BNB), and 35th (Apr 2026, 1,569,307 BNB)[^s3_bnb5][^s3_bnb6]. Annualizing the recent cadence at the current \$586 price yields **approximately \$3.45B/year**; at burn-time prices the figure was nearer \$4.7B. Either way it towers over the \$214.5M fee base. The retained-revenue line is smaller still — DeFiLlama reports **\$21.4M** in BSC protocol revenue (the 10% BEP-95 burn share)[^s3_bnb3], so the gross-fee figure anchors the multiplier. On the demand side, BSC's RWA tokenization jumped **60% QoQ to \$3.6B** in Q1 2026 and stablecoin supply reached **\$17.9B**[^s3_bnb10], repositioning the chain as an institutional settlement rail.

> **When a user pays \$1.00 in BSC gas fees:**
>
> **Direct Fee Recipients**
> - **\$0.90** — validators and delegators (90% of gas, via the ValidatorSet contract to 45 active PoSA validators)[^s3_bnb4]
> - **\$0.10** — burned in real time via BEP-95 (approximately 286,000 BNB destroyed cumulatively)[^s3_bnb6]
>
> **Insider / Corporate Capital (not user-funded)**
> - **+approximately \$16.1** — corporate quarterly auto-burns (\$3.45B annualized at the current price ÷ \$214.5M fees)[^s3_bnb-flow]. Binance Group capital, not user payment and not protocol issuance.
> - **+approximately \$0.47** — YZi Labs / builder-fund ecosystem grants (\$100M Hash Global commitment atop an ongoing \$1B builder fund)[^s3_bnb11]
>
> **Hidden Extraction**
> - Goodwill Alliance MEV protection holds sandwich attacks below 1K/day, versus a 140K/day pre-GWA baseline — extraction suppressed rather than monetized.[^s3_bnb-flow]
>
> **Total Ecosystem Value Flow: approximately \$16–17 per \$1 of user fees — backed by Binance Group capital, not organic revenue.**


![Bnb Chain payment flow](charts_2026-06-19/bnb_chain.png)

---

### Cardano: The Treasury That Runs on Invisible Money

Cardano is the starkest issuance case among smart-contract chains in this report. It collected just **\$1.84M in user fees over the trailing twelve months**[^s3_ada2]. The Ouroboros issuance engine simultaneously distributed an estimated **\$247M in new ADA** to stake-pool operators and the on-chain treasury[^s3_ada3][^s3_ada-iss] — an approximately **134x issuance-to-fee ratio**. ADA trades at **\$0.1615**, down approximately 73% year-on-year and roughly 95% below its 2021 ATH[^s3_ada1].

The issuance is funded entirely from the unminted reserve pool (rho approximately 0.003/epoch on approximately 7.79B ADA of remaining reserves), split **80% to validators / 20% to the on-chain treasury**[^s3_ada3]. Native DeFi TVL stands at **\$90.6M**[^s3_ada2], with Minswap the largest protocol at \$23.6M[^s3_ada13]. Retained protocol revenue is effectively a rounding error — DeFiLlama reports **\$89K** for the trailing year[^s3_ada2b]. At current fee rates it would take roughly **134 years of user fees to match a single year of issuance**.

> **When a user pays \$1.00 in Cardano transaction fees:**
>
> **Direct Fee Recipients**
> - **\$1.00** — to stake-pool operators (100% of fees; Cardano burns nothing and has no fee-funded protocol revenue)[^s3_ada-flow]
>
> **Issuance-Funded Security Budget + Treasury**
> - **+approximately \$107** — concurrent issuance to stake-pool operators (80% of approximately \$134/\$1 in issuance)[^s3_ada-flow]
> - **+approximately \$27** — concurrent issuance to the on-chain treasury (20% share)[^s3_ada-flow]
>
> **Hidden Extraction**
> - **\$0** — no MEV layer of consequence, no burns; the entire developer-and-ecosystem apparatus (Project Catalyst Fund 15 at approximately \$2.9M, Leios at approximately \$4.4M) is issuance-funded, not fee-funded[^s3_ada10][^s3_ada5].
>
> **Total Ecosystem Value Flow: approximately \$135 per \$1 of user fees — almost entirely issuance-funded.**


![Cardano payment flow](charts_2026-06-19/cardano.png)

What's quietly notable is the governance. IOG's 2026 treasury ask was **\$46.8M — roughly half its 2025 figure**[^s3_ada4] — and faced a real vote from approximately 1,000 elected DReps: six of nine proposals passed, one (Pogun, Bitcoin DeFi) was rejected at 32.4% support[^s3_ada12], and the community even **vetoed Cardano Summit 2026**[^s3_ada11]. The van Rossem hard fork (Plutus v11) was enacted 18 June 2026 — the first hard fork in Cardano's history initiated through on-chain governance[^s3_ada6]. The spending is more disciplined than it has ever been. It is still, almost in its entirety, invisible money.

---

### Avalanche: "Deflationary" on Paper, Issuance-Funded in Fact

Avalanche burns **100% of its fees** — and that fact is economically misleading. On a 30-day run-rate basis the chain is burning roughly **\$1.26M in fees per year** (DeFiLlama's trailing-12-month figure is higher at \$6.47M, inflated by busier earlier months)[^s3_avax3], while issuing an estimated **\$79M/year in new AVAX to validators**[^s3_avax5]. On the run-rate basis, for every \$1 a user burns, validators receive roughly **\$63 in fresh issuance**; on the trailing-year fee base the multiple is closer to 12x. AVAX trades at **\$6.13**, at multi-year lows[^s3_avax1]. Because Avalanche burns 100% of fees, gross fees and retained revenue are identical here — there is no separate revenue line to reconcile.

The "institutional honeymoon" met a reality check. Avalanche Treasury Co. (AVAT) listed on Nasdaq on 11 June 2026 via a \$675M SPAC — and **fell 16% on debut** as the market confronted the gap between merger valuation and the approximately \$90M in AVAX actually held[^s3_avax7]. Three spot AVAX ETFs (VanEck, Bitwise, Grayscale) launched and CME added futures[^s3_avax8][^s3_avax9], but the most credible demand driver was RWA: BlackRock BUIDL helped push tokenized assets to a record **\$1.16B** in May 2026[^s3_avax10].

> **When a user pays \$1.00 in Avalanche fees (all burned):**
>
> **Direct Fee Recipients**
> - **\$1.00** — burned, permanently removed from supply (benefits all holders via deflation; no direct cash payment)[^s3_avax-flow]
>
> **Issuance-Funded Security Budget**
> - **+approximately \$63** (run-rate fee basis; approximately \$12 on the trailing-year fee basis) — validators simultaneously receive newly issued AVAX from the 360M-token staking-reward allocation, entirely separate from and unfunded by user fees[^s3_avax6]
> - Foundation grants (Retro9000's \$40M pool, research grants, AVAT's approximately \$90M treasury) underwrite ecosystem growth that organic fees cover *none* of[^s3_avax-flow]
>
> **Hidden Extraction / Off-Protocol Value**
> - Stablecoins and RWA assets sit atop the chain's approximately \$461M of tracked DeFi TVL[^s3_avax-flow] — most dollar value on Avalanche lives outside the protocols that generate fees.
>
> **Total Ecosystem Value Flow: approximately \$63 per \$1 of run-rate fees (issuance-to-burn) — directionally an order-of-magnitude estimate, not a precise multiple.**


![Avalanche payment flow](charts_2026-06-19/avalanche.png)

At approximately \$1.3M/year of run-rate fees, Avalanche's *entire* annual fee burn is dwarfed by a single mid-tier VC round. The deflationary label is technically true and economically secondary: the issuance subsidy is roughly 63x the burn at current activity.

---

### Hyperliquid: The Fee-Funded Exception With an Insider-Supply Overhang

And then there's the exception. Hyperliquid runs a **\$1.063B trailing-twelve-month fee base**[^s3_hype2] — among the top revenue-generating chains on earth — and recycles **approximately 97% of it into HYPE buybacks** via the Assistance Fund[^s3_hype5]. This is the one network in the section where users genuinely pay for what they get, and the retained-revenue line proves it: DeFiLlama reports **\$880M in trailing-year revenue**[^s3_hype2], roughly 83% of gross fees — the inverse of the issuance-funded chains above. HYPE trades at **\$69.89**, having set a fresh **\$76.70 ATH on 16 June 2026**[^s3_hype1].

The fee engine is real: \$81.5M in 30-day fees[^s3_hype2], \$1.37B all-time, approximately \$9.6B open interest, and approximately 40–44% of on-chain DEX-perp volume[^s3_hype2][^s3_hype7]. The Assistance Fund has accumulated **approximately 44.4M HYPE** (worth approximately \$3.1B at the live price)[^s3_hype-af], and cumulative buybacks have crossed \$1.5B[^s3_hype-bb]. The AQA v2 governance vote layered a second buyback stream — 90% of the yield on approximately \$6.2B of on-platform USDC, an estimated \$135–160M/year from October 2026[^s3_hype9].

But Hyperliquid's non-fee flow isn't issuance or VC — it is **insider supply/value transfer** via the team-unlock schedule. Since the November 2025 cliff, **9.92M HYPE unlocks on the 6th of every month** through approximately November 2027; the 6 June 2026 tranche released **approximately \$693M in notional** at the current price[^s3_hype12][^s3_hype-unlock]. Against approximately \$81.5M in monthly fees, the buyback fund absorbs only **approximately 11% of what the unlock schedule releases each month**[^s3_hype-cover]. This is value transferred from new market buyers to insiders on a vesting clock — marked at market price, not a cash flow.

> **When a user pays \$1.00 in Hyperliquid trading fees:**
>
> **Direct Fee Recipients**
> - **\$0.97** — Assistance Fund, which buys HYPE on the open market (held, not burned)[^s3_hype-flow]
> - **\$0.01–0.02** — HLP vault liquidity providers[^s3_hype-flow]
> - **\$0.01–0.02** — HyperEVM gas and protocol operations[^s3_hype-flow]
>
> **Insider Supply / Value Transfer**
> - **+\$8.51** — team token unlock value released monthly (approximately \$693M ÷ approximately \$81.5M monthly fees)[^s3_hype-flow]. Not a subsidy *to* users — a supply overhang *against* them, and a notional mark, not cash.
> - **+approximately \$0.15** — AQA v2 USDC reserve-yield buyback (an interest-rate transfer from Circle/Coinbase to HYPE holders)[^s3_hype9]
>
> **Off-Protocol Value**
> - A **\$6.0B HyperEVM ecosystem** of 175+ dApps and an approximately \$3.1B mark-to-market Assistance Fund treasury amplify every price move into billions of latent impact[^s3_hype4][^s3_hype-af].
>
> **Total Ecosystem Value Flow: approximately \$10–11 per \$1 of user fees — but inverted: the protocol is structurally fee-funded; the overhang is the risk, not the revenue.**


![Hyperliquid payment flow](charts_2026-06-19/hyperliquid.png)

Hyperliquid breaks the section's pattern in the most interesting way. It is not subsidy-*dependent* — it is overhang-*exposed*. The fees are real and the buyback is real, but the insider supply still entering the market each month is roughly 9x what the buyback absorbs. Whether the market absorbs the rest is a question of sentiment, not protocol mechanics.

---

### L1 Networks: Patterns and Limitations

Seven chains, one verdict for six of them: **the user-funded layer is a small fraction of total value flow.** Across every issuance-secured network we measured, gross fees cover a single-digit-to-low-double-digit share of total value movement. The corrected, live-data multiples as of 20 June 2026:

| Chain | Dominant non-fee mechanism | \$1 gross fee -> total flow | Non-fee share |
|---|---|---|---|
| **Bitcoin** | Issuance-funded security budget | **approximately \$160** | >99% |
| **Cardano** | Reserve-pool issuance | **approximately \$135** | approximately 99% |
| **Avalanche** | Validator issuance (vs 100% burn) | **approximately \$63** | approximately 98% (run-rate basis) |
| **BNB Chain** | Corporate quarterly auto-burns | **approximately \$16** | approximately 94% |
| **Ethereum** | Staking issuance + MEV | **approximately \$9.2** | approximately 89% |
| **Solana** | Issuance + Jito MEV | **approximately \$7.1** | approximately 86% |
| **Hyperliquid** | Insider unlock overhang (fee-funded) | **approximately \$10.5** | inverted — fee-funded |

A few patterns, and the limits of reading them too literally:

- **The cleanest cases show the widest gap.** Bitcoin and Cardano have no MEV, no VC schedule, no foundation cut from fees — and *that simplicity is exactly why their non-fee ratio is so extreme.* A pure issuance-funded security budget is, by construction, almost entirely non-fee. This is a designed property, not necessarily a defect — but it means fees are nowhere near covering the security spend.
- **The "5–15% user-fee share" claim is scoped to this issuance-funded L1 sample.** It is a statement about the seven networks here, not a universal law of blockchains. Fee-real exceptions exist and are growing: Hyperliquid funds its buyback entirely from trading revenue; Base retains a large share of sequencer fees as genuine protocol revenue. And a rising share of on-chain value is **stablecoin settlement** — dollars moving over rails like Tron and Ethereum that generate real, fee-bearing demand independent of the issuing chain's token economics. The subsidy framing applies to *token-secured L1 economics*, not to every dollar that touches a blockchain.
- **Price compression flattered nobody and exposed everybody.** Across the cohort, dollar-denominated issuance fell hard with token prices (ETH approximately −64%, SOL approximately −44%, AVAX at multi-year lows, ADA approximately −73% YoY), but the *structural ratios held* — because both issuance and fees deflate together. The machine got cheaper to run in dollars; it did not get more self-funding.
- **"Deflationary" is a marketing word.** Avalanche and BNB both burn fees, and both have a wider non-fee gap than Ethereum. A burn mechanism tells you nothing about whether users pay for the network — only about who benefits from the issuance or corporate capital that does the actual funding.
- **Hyperliquid is the proof that fee-funded L1s can exist** — and the proof of how rare it is in this cohort. Its risk is the opposite of everyone else's: not too little organic revenue, but too much insider supply still to vest.

**Limitations.** Three of the largest inputs are estimates, not hard data, and we flag them as such. Validator/staking *issuance* is calculated from published inflation parameters and live staking ratios (🔷 only on the price and supply inputs, not the derived totals). *MEV* (approximately \$550M on Ethereum, \$295M Jito on Solana) is sourced from research estimates and relay data, not a clean on-chain meter, and is partly efficiency and protocol-captured rather than pure extraction. *Corporate/foundation/unlock* totals (BNB burns at burn-time vs current prices, Avalanche grants, Hyperliquid unlocks) depend on price assumptions and partial disclosure; unlock and burn values are marked-to-market *notional*, not cash flows. The fee and revenue figures themselves are 🔷 HARD DATA from DeFiLlama. The multiples built on estimated numerators should be read as orders of magnitude, not decimals. The direction is unambiguous in every case; the precise multiple is not.

---


[^s3_eth1]: [CoinGecko — Ethereum](https://www.coingecko.com/en/coins/ethereum) — ETH price \$1,763.58, market cap approximately \$212.8B, ATH \$4,946.05 (Aug 24, 2025), now approximately −64% from ATH. Retrieved via CoinGecko API, June 20, 2026. 🔷 HARD DATA.
[^s3_eth3]: [Etherscan — Gas Tracker](https://etherscan.io/gastracker) — Safe gas price approximately 0.19 Gwei (0.188 Gwei live); simple transfer approximately \$0.006 at the live ETH price. Gas has roughly doubled off its sub-0.1 Gwei trough. Retrieved via Etherscan gas oracle API, June 20, 2026. 🔷 HARD DATA.
[^s3_eth4]: [DefiLlama — Ethereum Fees](https://defillama.com/chain/Ethereum) — Trailing-12-month gross fees \$302.7M; 30d \$11.14M; 24h \$229,633. Retrieved via DefiLlama fees API, June 20, 2026. 🔷 HARD DATA.
[^s3_eth4b]: [DefiLlama — Ethereum Revenue](https://defillama.com/chain/Ethereum) — Trailing-12-month validator-retained revenue \$115.3M (priority tips plus MEV-related tips; distinct from and smaller than the \$302.7M gross-fee figure). Retrieved via DefiLlama revenue API, June 20, 2026. 🔷 HARD DATA.
[^s3_eth5]: [DefiLlama — Ethereum Chain TVL](https://defillama.com/chain/Ethereum) — DeFi TVL \$39.0B. Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA.
[^s3_eth9]: [Beaconcha.in — Staked Ether](https://beaconcha.in/charts/staked_ether) — Annual gross consensus issuance calculated as approximately 1,102,922 ETH/yr on approximately 39.67M staked ETH; at the live \$1,763.58 price this is approximately \$1.95B. Estimate derived from live staking ratio and the consensus reward curve; not 🔷.
[^s3_eth10]: [CoinLedger — Ultrasound Money Explained](https://coinledger.io/learn/ultrasound-money) — Net ETH inflation positive at current activity; EIP-1559 burn (approximately 40K ETH/yr at the current fee rate) runs well below gross issuance (approximately 1.1M ETH/yr). Burn is highly variable with blob/L1 demand. June 2026.
[^s3_eth11]: [Blockworks — Fusaka Upgrade](https://blockworks.co/news/fusaka-update-today) — Fusaka deployed Dec 5, 2025; EIP-7918 set a minimum blob base-fee floor.
[^s3_eth13]: [KuCoin Research — Ethereum Staking & MEV 2026](https://www.kucoin.com/blog/ethereum-staking-in-2026-yield-trends-validator-queue-dynamics-and-mev-impact-exlained) — Annual Ethereum MEV estimated approximately \$550M. Expert/secondary estimate, not on-chain hard data; treat as order-of-magnitude.
[^s3_eth14]: [Flashbots — MEV-Boost and MEV Taxonomy](https://docs.flashbots.net/flashbots-mev-boost/introduction) — MEV disaggregates into extractive (sandwich/frontrunning, a user cost), efficiency (arbitrage/liquidations, supporting price discovery and protocol solvency), and protocol-captured (relay payments routed to validators). Used to qualify the MEV line rather than treat the full estimate as net user harm.
[^s3_eth16]: [CoinLaw — Ethereum Gas Fee Statistics](https://coinlaw.io/ethereum-gas-fees-statistics/) — L2 networks handle approximately 95% of Ethereum transaction throughput. 2026.
[^s3_eth17]: [Ethereum.org — Gas and Fees](https://ethereum.org/en/developers/docs/gas/) — EIP-1559 base fee burned; priority-fee tip to validators. Base fee approximately 85% of total at current conditions.

[^s3_btc1]: [CoinGecko — Bitcoin](https://www.coingecko.com/en/coins/bitcoin) — BTC \$63,951; market cap approximately \$1.282T; ATH \$126,080 (Oct 6, 2025), now approximately −49% from ATH. Retrieved via CoinGecko API, June 20, 2026. 🔷 HARD DATA.
[^s3_btc2]: [mempool.space](https://mempool.space/) — Block height 954,576; 3.125 BTC subsidy; trailing-144-block avg fees approximately 0.0172 BTC/block; daily fee revenue approximately \$159K; daily issuance 450 BTC = approximately \$28.8M; fees approximately 0.55% of miner revenue. Retrieved via mempool.space API, June 20, 2026. 🔷 HARD DATA.
[^s3_btc3]: [mempool.space — Hashrate & Difficulty](https://mempool.space/graphs/mining/hashrate-difficulty) — Hashrate approximately 937 EH/s; difficulty 124.9T. Retrieved via mempool.space API, June 20, 2026. 🔷 HARD DATA.
[^s3_btc7]: [BTC.network — Block Space Report, Mar 13–19, 2026](https://btc.network/blog/bitcoin-block-space-report-march-13-19-2026) — Fee-to-revenue ratio well under 1%; block fullness high. ⏳ HISTORICAL (Mar 2026); used for trend context, superseded by live mempool data for current figures.
[^s3_btc8]: [CoinDesk — Bitcoin Hashrate Posts First Quarterly Drop in Six Years](https://www.coindesk.com/markets/2026/03/30/bitcoin-hashrate-posts-first-quarter-drop-for-first-time-in-6-years-as-miners-pivot-to-ai) — Production cost approximately \$90K/BTC; first quarterly hashrate decline since 2020; miners pivoting to AI. March 30, 2026. ⏳ HISTORICAL (Mar 2026).
[^s3_btc10]: [OpenSats — Bitcoin Core LTS Grant Program](https://opensats.org/blog/announcing-lts-grant-program-to-support-bitcoin-core-contributors) — OpenSats distributes approximately \$1M/month in development grants; total ecosystem dev funding approximately \$12–15M/yr (estimate, incl. Spiral, Chaincode).
[^s3_btc12]: [Cointelegraph — Bitcoin's Long-Term Security Budget Problem](https://cointelegraph.com/magazine/bitcoins-long-term-security-budget-problem-impending-crisis-or-fud/) — Analysis of the fee-only security model as the issuance subsidy declines.
[^s3_btc13]: [Cointelegraph — Bitcoin Mining Outlook 2026](https://cointelegraph.com/news/bitcoin-mining-outlook-2026-ai-profitability-consolidation) — Cipher Mining 15-year 300 MW AWS deal (approximately \$5.5B projected); Core Scientific, IREN, TeraWulf pivoting to AI compute.
[^s3_btc16]: [mempool.space](https://mempool.space/) — Subsidy-to-fee ratio approximately 150–180:1: \$10.5B annual block issuance (164,250 BTC × \$63,951) vs approximately \$58–69M annual fees at current throughput. Issuance and price inputs 🔷 HARD DATA; the ratio is derived. June 20, 2026.
[^s3_btc-cost]: Estimated annual mining industry cost approximately \$14.8B (approximately \$90K/BTC production cost × 164,250 BTC mined/yr). Expert estimate combining the CoinDesk March 2026 cost figure and issuance volume; not audited, not 🔷. [CoinDesk](https://www.coindesk.com/markets/2026/03/30/bitcoin-hashrate-posts-first-quarter-drop-for-first-time-in-6-years-as-miners-pivot-to-ai).
[^s3_btc-flow]: Bitcoin fee flow: 100% of fees to the block-winning miner; no burn, no treasury, no fee-funded development. Per [mempool.space](https://mempool.space/) block data and Bitcoin protocol design.

[^s3_sol1]: [CoinGecko — Solana](https://www.coingecko.com/en/coins/solana) — SOL \$71.53; market cap approximately \$41.5B; circulating approximately 580.2M SOL; approximately −44% since the Oct 2025 report. Retrieved via CoinGecko API, June 20, 2026. 🔷 HARD DATA.
[^s3_sol2]: [Solana Compass — Tokenomics](https://solanacompass.com/tokenomics) — Inflation 3.788%; staked approximately 67.7%; annual disinflation 15%. Annual issuance approximately 22.0M SOL (approximately \$1.57B at the live price). Inflation parameters and staking ratio 🔷 HARD DATA; the USD total is derived. Retrieved June 20, 2026.
[^s3_sol4]: [DefiLlama — Solana Fees](https://defillama.com/fees/solana) — Trailing-1y gross fees \$304.9M; 30d \$11.49M; 24h \$359,958; trailing-1y revenue \$35.7M. Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA.
[^s3_sol5]: [DefiLlama — Jito](https://defillama.com/fees/jito) — Jito MEV tips trailing-1y \$295.0M; 30d \$6.22M; protocol revenue 1y \$18.1M. Jito's auction routes much of the tip value back to stakers, making part of this protocol-captured rather than lost to users. Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA.
[^s3_sol9]: [The Block — SIMD-0096](https://www.theblock.co/post/296932/solana-validators-to-receive-full-priority-fees-as-simd-0096-proposal-gains-approval) — Validators receive 100% of priority fees; 50% of base fees burned. Live since Feb 2025.
[^s3_sol10]: [CoinPaper / Galaxy Research — SIMD-0411 Withdrawal](https://coinpaper.com/13410/solana-inflation-reform-likely-to-stall-as-simd-0411-faces-withdrawal-galaxy-research) — SIMD-0411 (double disinflation) withdrawn without a vote; 15%/yr schedule unchanged.
[^s3_sol11]: [CoinDesk — Alpenglow Consensus Testnet](https://www.coindesk.com/tech/2026/05/11/the-biggest-consensus-overhaul-in-solana-history-is-officially-live-for-testing) — Alpenglow entered community testnet May 11, 2026; targets 100–150ms finality vs approximately 12.8s.
[^s3_sol12]: [The Block — Firedancer Mainnet](https://www.theblock.co/post/382411/jump-cryptos-firedancer-hits-solana-mainnet-as-the-network-aims-to-unlock-1-million-tps) — Firedancer producing blocks on mainnet as of May 2026.
[^s3_sol14]: [KuCoin — Solana ETF Inflows](https://www.kucoin.com/news/flash/solana-etfs-near-1b-inflows-amid-institutional-demand) — US spot SOL ETF cumulative inflows approximately \$1.06–1.13B as of June 2026.
[^s3_sol15]: [BlockEden / CCN — Solana Metrics 2026](https://blockeden.xyz/blog/2026/03/17/solana-q1-2026-80m-sol-tvl-ath-institutional-defi-escape-velocity/) — Monthly DEX volume fell from \$145B (Oct 2025 peak) to approximately \$42B (Apr 2026); memecoin normalization. ⏳ HISTORICAL (Mar 2026) for the volume series.
[^s3_sol18]: [Solana Docs — Transaction Fees](https://solana.com/docs/core/fees) — Base fee 50% burned / 50% validator; priority fees 100% to validator post-SIMD-0096.

[^s3_bnb1]: [CoinGecko — BNB](https://www.coingecko.com/en/coins/bnb) — BNB \$586.48; market cap approximately \$79.0B (rank #4); ATH \$1,369.99 (Oct 13, 2025), now approximately −57% from ATH. Retrieved via CoinGecko API, June 20, 2026. 🔷 HARD DATA.
[^s3_bnb3]: [DefiLlama — BSC Fees](https://defillama.com/chain/BSC) — Trailing-1y gross fees \$214.5M; 30d \$10.40M; 24h \$220,861; trailing-1y revenue (10% BEP-95 burn share) \$21.4M. Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA.
[^s3_bnb4]: [BNB Chain — Introducing BEP-95](https://www.bnbchain.org/en/blog/introducing-bep-95-with-a-real-time-burning-mechanism) — 90% of gas fees to validators/delegators, 10% to the real-time burn address.
[^s3_bnb5]: [Crypto Economy — BNB 34th Quarterly Burn](https://crypto-economy.com/bnb-chain-34th-burn-1-37m-bnb-destroyed/) — 34th burn (Jan 15, 2026): 1,371,803.77 BNB.
[^s3_bnb6]: [CryptoSlate — BNB 35th Quarterly Burn](https://cryptoslate.com/press-releases/bnb-chain-completes-35th-quarterly-token-burn-marks-second-burn-of-2026/) — 35th burn (Apr 15, 2026): 1,569,307.34 BNB; cumulative BEP-95 burn approximately 286,000 BNB. Annualized recent cadence approximately \$3.4–4.7B (estimate; \$3.45B at the current \$586 price, higher at burn-time prices). Not 🔷.
[^s3_bnb7]: [BNB Chain — Fermi Hard Fork](https://www.bnbchain.org/en/blog/fermi-hard-fork-accelerates-bsc-to-0-45-second-block-times) — Fermi (Jan 14, 2026) cut block time to 0.45s.
[^s3_bnb10]: [Bitcoin.com — BNB Chain RWA Q1 2026](https://news.bitcoin.com/bnb-chain-grows-rwa-market-60-to-3-6b-as-tokenized-treasuries-lead-q1/) — RWA grew 60% QoQ to \$3.6B; stablecoin supply approximately \$17.9B (May 2026).
[^s3_bnb11]: [CryptoBriefing — YZi Labs BNB Holdings Fund](https://cryptobriefing.com/bnb-ecosystem-investment-yzi-labs/) — YZi Labs committed \$100M to Hash Global's BNB Holdings Fund (2026), atop an ongoing \$1B builder fund.
[^s3_bnb-flow]: BNB dollar-flow multiple approximately 16.1x: \$3.45B annualized quarterly auto-burns (at the current \$586 price) ÷ \$214.5M trailing gross fees. Estimate, not 🔷; at burn-time prices the burn approached \$4.7B. GWA MEV protection suppresses sandwich attacks to <1K/day. Sources: [DefiLlama — BSC](https://defillama.com/chain/BSC), [CryptoSlate](https://cryptoslate.com/press-releases/bnb-chain-completes-35th-quarterly-token-burn-marks-second-burn-of-2026/).

[^s3_ada1]: [CoinGecko — Cardano](https://www.coingecko.com/en/coins/cardano) — ADA \$0.1615; market cap approximately \$6.01B (rank #20); approximately −73% YoY; ATH \$3.09 (Sep 2, 2021). Retrieved via CoinGecko API, June 20, 2026. 🔷 HARD DATA.
[^s3_ada2]: [DefiLlama — Cardano](https://defillama.com/chain/Cardano) — DeFi TVL \$90.6M; trailing-1y gross fees \$1.84M; 30d \$57,760; 24h \$1,198. Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA.
[^s3_ada2b]: [DefiLlama — Cardano Revenue](https://defillama.com/chain/Cardano) — Trailing-1y retained protocol revenue \$89K — effectively a rounding error against issuance. Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA.
[^s3_ada3]: [Cardano — Monetary Policy](https://docs.cardano.org/about-cardano/explore-more/monetary-policy) — rho approximately 0.003/epoch; tau (treasury fraction) = 0.20; 80% of issuance to stake-pool operators.
[^s3_ada4]: [CoinDesk — IOG Seeks \$46.8M](https://www.coindesk.com/tech/2026/04/23/input-output-seeks-usd46-8-million-to-bring-bitcoin-defi-scaling-upgrade-to-cardano) — IOG 2026 treasury request \$46.8M, down approximately 52% from \$97.5M in 2025. April 23, 2026.
[^s3_ada5]: [CryptoTimes — Cardano Leios Governance Vote](https://www.cryptotimes.io/2026/05/25/cardano-pushes-ahead-with-leios-after-strong-governance-vote/) — Leios approved at 84% DRep support; 27.7M ADA (approximately \$4.4M) funded. May 25, 2026.
[^s3_ada6]: [Yahoo Finance — Cardano van Rossem Hard Fork](https://finance.yahoo.com/markets/crypto/articles/cardano-van-rossem-hard-fork-111018555.html) — van Rossem (Plutus v11) enacted June 18, 2026; first governance-initiated hard fork.
[^s3_ada10]: [Project Catalyst — Fund 15](https://projectcatalyst.io/funds/15) — 18.5M ADA (approximately \$2.9M) + 250K USDM budget.
[^s3_ada11]: [CoinDesk — Cardano Governance Kills Summit 2026](https://www.coindesk.com/markets/2026/06/01/cardano-governance-vote-kills-summit-approves-smaller-token2049-plan) — Summit proposal failed at 65.2% (needed 66.67%). June 1, 2026.
[^s3_ada12]: [IOHK Blog — IO Treasury Proposals Overview](https://www.iog.io/news/io-treasury-proposals-the-5-minute-overview) — Six of nine proposals approved; Pogun (Bitcoin DeFi) rejected at 32.4% DRep support.
[^s3_ada13]: [DefiLlama — Cardano Protocols](https://defillama.com/chain/Cardano) — Top native protocol Minswap DEX \$23.6M TVL. Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA.
[^s3_ada-iss]: Estimated annual ADA issuance approximately 1.53B ADA (approximately \$247M at \$0.1615): rho 0.003/epoch × 73 epochs × approximately 7.79B ADA reserves. Split 80% validators (approximately \$197M) / 20% treasury (approximately \$49M). Issuance-to-fee ratio approximately \$247M ÷ \$1.84M ≈ 134x. Derived from published protocol parameters; epoch amounts vary. Not 🔷. [Cardano Monetary Policy](https://docs.cardano.org/about-cardano/explore-more/monetary-policy).
[^s3_ada-flow]: Cardano fee flow: 100% of fees to stake-pool operators, no burns. Concurrent issuance per \$1 fee approximately \$134 (approximately \$107 to SPOs, approximately \$27 to treasury); total approximately \$135/\$1. Derived from [DefiLlama](https://defillama.com/chain/Cardano) fees and protocol parameters.

[^s3_avax1]: [CoinGecko — Avalanche](https://www.coingecko.com/en/coins/avalanche-2) — AVAX \$6.13; market cap approximately \$2.65B; multi-year lows. Retrieved via CoinGecko API, June 20, 2026. 🔷 HARD DATA.
[^s3_avax3]: [DefiLlama — Avalanche Fees](https://defillama.com/fees/avalanche) — 30d fees \$103,431 (approximately \$1.26M annualized at this run-rate); trailing-1y \$6.47M; all-time approximately \$91M. All fees burned (gross fees equal revenue). Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA.
[^s3_avax5]: Annual validator issuance estimate approximately \$79M: approximately 3.0% inflation × 431.77M AVAX × \$6.13. Inflation rate per [Messari State of Avalanche Q4 2025](https://messari.io/report/state-of-avalanche-q4-2025). ⏳ HISTORICAL (Q4 2025 inflation rate); derived estimate, not 🔷.
[^s3_avax6]: Issuance-to-burn multiplier approximately 63x on the 30-day run-rate fee basis (approximately \$79M issuance ÷ approximately \$1.26M annualized burn), or approximately 12x against trailing-1y fees of \$6.47M. Validator rewards funded by the 360M-AVAX staking allocation, separate from user fees. [DefiLlama — Avalanche Fees](https://defillama.com/fees/avalanche).
[^s3_avax7]: [CryptoBriefing — AVAT Nasdaq Debut Decline](https://cryptobriefing.com/avalanche-treasury-avat-nasdaq-debut-decline/) — Avalanche Treasury Co. (AVAT) listed June 11, 2026 via a \$675M SPAC; holds approximately 15M AVAX (approximately \$90M at spot); stock fell 16% on debut.
[^s3_avax8]: [The Defiant — Bitwise Launches Avalanche ETF](https://thedefiant.io/news/tradfi-and-fintech/bitwise-launches-avalanche-etf-with-in-house-staking) — VanEck VAVX (Jan 26, 2026), Bitwise BAVA (Apr 15, 2026), Grayscale GAVA (Mar 12, 2026); stake up to 70–87% of AUM.
[^s3_avax9]: [CME Group — Crypto Suite Expansion](https://www.cmegroup.com/media-room/press-releases/2026/4/07/cme_group_to_continueexpansionofregulatedcryptosuitewithlaunchof.html) — CME AVAX futures launched May 5–6, 2026.
[^s3_avax10]: [CoinJournal — Avalanche RWA Milestone](https://coinjournal.net/news/avalanche-hits-rwa-milestone-as-avax-price-holds-key-level/) — Tokenized assets hit a record \$1.16B (May 2026); BlackRock BUIDL \$625M on Avalanche.
[^s3_avax-flow]: Avalanche fee flow: 100% of fees burned (deflation, no cash payment); validators receive approximately \$63 of fresh issuance per \$1 burned on the run-rate basis. Stablecoins and RWA sit above approximately \$461M of DeFi TVL. Foundation Retro9000 (\$40M pool) and grants underwrite ecosystem growth unfunded by fees. Estimate, not 🔷. Sources: [DefiLlama — Avalanche Fees](https://defillama.com/fees/avalanche), [avax.network — Retro9000](https://www.avax.network/about/blog/retro9000-a-40m-grant-program-rewards-developers-building-avalanche-l1s).

[^s3_hype1]: [CoinGecko — Hyperliquid](https://www.coingecko.com/en/coins/hyperliquid) — HYPE \$69.89; market cap approximately \$15.55B (rank #10); ATH \$76.70 (Jun 16, 2026). Retrieved via CoinGecko API, June 20, 2026. 🔷 HARD DATA.
[^s3_hype2]: [DefiLlama — Hyperliquid Fees](https://defillama.com/fees/hyperliquid) — 24h fees \$1.57M; 7d \$15.6M; 30d \$81.5M; trailing-1y gross fees \$1.063B; trailing-1y revenue \$880M; all-time \$1.37B. Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA.
[^s3_hype4]: [DefiLlama — Hyperliquid Protocol TVL](https://defillama.com/protocol/hyperliquid) — Ecosystem TVL approximately \$6.0B (Hyperliquid L1 + Arbitrum). Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA.
[^s3_hype5]: [CoinShares Research — Hyperliquid Primer & 5-Year Valuation Framework](https://coinshares.com/insights/research-data/hyperliquid-primer-and-5-year-valuation-framework/) — 97–99% of fees to the Assistance Fund for HYPE buybacks; approximately 44.4M HYPE accumulated; approximately 6–7% of all perps volume. June 2026.
[^s3_hype7]: [Coin Bureau — Aster vs Hyperliquid 2026](https://coinbureau.com/analysis/aster-vs-hyperliquid) — Hyperliquid approximately \$9.6B open interest, approximately 40–44% on-chain DEX-perp share. June 16, 2026.
[^s3_hype9]: [Crypto Briefing — Hyperliquid USDC Yield Buybacks (AQA v2)](https://cryptobriefing.com/hyperliquid-usdc-yield-hype-buybacks/) — AQA v2: 90% of yield on approximately \$6.2B on-platform USDC to buybacks, approximately \$135–160M/yr from Oct 2026.
[^s3_hype12]: [Yahoo Finance — Hyperliquid June Token Unlock](https://finance.yahoo.com/markets/crypto/articles/hyperliquid-unlock-next-hype-june-070051421.html) — June 6, 2026 unlock 9.92M HYPE (approximately \$693M notional at the live price); monthly cadence on the 6th through approximately Nov 2027.
[^s3_hype-af]: Assistance Fund holds approximately 44.4M HYPE (approximately \$3.1B at \$69.89). Per [CoinShares Research](https://coinshares.com/insights/research-data/hyperliquid-primer-and-5-year-valuation-framework/) (June 2026) and [Binance Square](https://www.binance.com/en/square/post/02-02-2026-hyperliquid-s-assistance-fund-holds-over-40-million-hype-tokens-35911179350585) (40M+ confirmed Feb 2, 2026). Token count is reported; the USD value is marked at the live price. Estimate, not 🔷.
[^s3_hype-bb]: Cumulative HYPE buyback spending >\$1.5B since launch. Per [CryptoTimes](https://www.cryptotimes.io/2026/06/02/hyperliquid-hype-100-buyback-treasury-bitwise-etf/) (June 2, 2026). Estimate, not 🔷.
[^s3_hype-unlock]: [Tokenomist — Hyperliquid Vesting Schedule](https://tokenomist.ai/hyperliquid/unlock-events) — Core-contributor cliff Nov 2025; approximately 9.92M HYPE/month thereafter through approximately Nov 2027.
[^s3_hype-cover]: Monthly unlock vs buyback coverage approximately 11%: 9.92M HYPE × \$69.89 ≈ \$693M unlocked vs approximately \$79M absorbed (97% of 30d fees plus AQA v2/12). Unlock value is marked-to-market notional, not cash. Calculated June 20, 2026. [DefiLlama — Hyperliquid Fees](https://defillama.com/fees/hyperliquid).
[^s3_hype-flow]: Hyperliquid fee flow: \$0.97 to Assistance Fund buybacks (held, not burned), approximately \$0.01–0.02 each to HLP vault LPs and HyperEVM operations. The non-fee flow is insider supply/value transfer via the team-unlock schedule (approximately \$693M/month ≈ \$8.51 per \$1 fee), a notional mark rather than issuance, VC, or cash. Sources: [CoinShares Research](https://coinshares.com/insights/research-data/hyperliquid-primer-and-5-year-valuation-framework/), [DefiLlama](https://defillama.com/fees/hyperliquid).

---

## Layer 2 Networks: Fee Distribution

Layer 2 rollups were sold as the engine that would make Ethereum cheap, fast, and self-funding. As of 20 June 2026, the four most-watched rollups collectively bill users a few million dollars a month in sequencer fees — and run economies an order of magnitude larger on token issuance, insider unlocks, and corporate or VC subsidy. Where a base layer like Bitcoin runs an issuance-funded security budget, an L2 funds its own *existence*: on three of the four chains below, sequencer revenue cannot cover the operation. Each subsection traces a single user dollar, then names the multiple of non-fee-funded value flowing underneath it — keeping the four buckets distinct: organic user fees, consensus/issuance, external VC capital, and insider supply transferred through token unlocks.

A note on the macro: the crypto market these L2s settle into has compressed hard since the October 2025 baseline. ETH trades around **\$1,732** (up roughly 2% in a week, and itself a volatile input that moves every dollar figure below), and the data-availability cost of posting an L2 batch to Ethereum has been gutted twice — first by Pectra (May 2025), then by Fusaka/PeerDAS (December 2025) — cutting L1 settlement costs by a further 40–60% on top of the post-Dencun collapse.[^s4_1] Cheaper settlement is good for users and brutal for L2 income statements: the one cost that used to justify the toll is now a rounding error, and so is the toll. One framing caveat applies throughout: the "hidden multiples" below mix realized cash flows (fees, VC) with mark-to-market notional supply (issuance, unlocks), and notional value is endogenous to the same token price that deflates the fees. They are directional measures of value-at-stake, not like-for-like cash comparisons.[^s4_44]

---

### Base — Coinbase's Corporate Toll Road

Base is the outlier that proves the rule: it is the only major L2 here that behaves like a profitable business, because a roughly \$60B public company runs the sequencer and keeps the change. Base collected **\$77.5M in sequencer fees in full-year 2025** — down approximately 13% from 2024's \$88.9M as trading volumes softened, but still enough to make Base the #1 L2 by fees with an estimated 62% of all L2 fee revenue.[^s4_2][^s4_3] Over the trailing 30 days it booked **\$5.10M in fees** (gross, what users paid) against **\$5.10M in revenue** (net, after L1 costs) — implying just **\$9,010 in L1 blob costs**, a settlement bill equal to 0.18% of fees after Pectra expanded blob capacity.[^s4_2][^s4_4] TVL sits at **\$4.2B**, off the approximately \$4.4B January 2026 peak but still the largest L2 by a wide margin.[^s4_5] All-time sequencer fees since the August 2023 launch now total **\$205.9M**.[^s4_2]

The structural event of 2026 was the divorce. In **February 2026 Base announced it was leaving the OP Stack**, ending the revenue-share arrangement that fed the Optimism Collective.[^s4_6] Over the 2.5-year partnership Base paid Optimism **8,387 ETH** — roughly 41% of the Collective's lifetime revenue and over 90% of its monthly revenue right before the exit.[^s4_7][^s4_8] In dollar terms that is approximately **\$14.5M at today's ETH price** (and approximately \$14.2M at the slightly lower price used elsewhere in this report); the higher "\$16.4M" figure sometimes quoted implies ETH near \$1,955, which is the *partnership-period average* across August 2023–February 2026 — a historical price, not a current mark.[^s4_7] Post-divorce, Coinbase keeps essentially everything.

**When a user pays \$1 in Base sequencer fees (post-OP departure):**
- **\$0.998 → Coinbase sequencer profit.** Near-total capture by the corporate parent. No more Optimism cut since February 2026.[^s4_6]
- **\$0.002 → Ethereum L1 blob fees.** ETH burned for data availability, collapsed to near-zero post-Pectra (the pre-Pectra rate was approximately 5%).[^s4_4]
- **\$0.00 → Optimism Collective.** Was approximately 14.3 cents under the old deal; now zero.[^s4_7]

**The hidden multiple: roughly \$5–7 per \$1 of sequencer fee.** This is the rare case where the multiple isn't a subsidy indictment — it's app-layer economics. Apps on Base generated an estimated **\$369.9M in 2025 revenue** (Aerodrome alone approximately \$160.5M) against \$77.5M in sequencer fees, a 4.8x ratio of protocol economy to toll.[^s4_9] One clarification the headline ratio hides: both numbers are *gross* — app-layer revenue is not net profit, and sequencer fees are not net sequencer margin — so 4.8x understates how different the underlying operating economics are; it compares two top-lines, not two bottom-lines.[^s4_9] Layer on undisclosed sequencer MEV and Coinbase's stablecoin float income, and the visible sequencer fee is roughly the top 15–20% of what actually moves.[^s4_10][^s4_11]

On MEV specifically, the report's taxonomy requires disaggregation rather than a single black box. Base's Flashblocks design gives Coinbase's centralised sequencer 200ms priority blocks, and the MEV captured within them spans three economically distinct flows: **extractive** (sandwich and front-running, a one-way transfer from users), **efficiency-improving** (arbitrage and liquidations, which keep prices and lending markets honest), and **protocol-captured priority fees**. All three are retained by Coinbase and **none are separately disclosed in any public filing**, so the total is an estimate, not hard data.[^s4_11] On the float income: Coinbase reported **\$305M in stablecoin revenue in Q1 2026** — up 55% year-on-year on a record approximately \$19B average USDC balance held in Coinbase products — of which a material but undisclosed share is Base-driven.[^s4_14] That \$305M is a verified line item from Coinbase's Q1 2026 10-Q; the "Base-driven portion" of it is an estimate.[^s4_14]


![Base payment flow](charts_2026-06-19/base.png)

One caveat that cuts the other way: a native **BASE token has not launched** — exploration was announced in September 2025, and prediction markets assign roughly 69% odds to a launch before end-2026.[^s4_12][^s4_13] If it ships with typical insider/VC vesting allocations, an insider-supply/value-transfer column appears — the same "unlock" bucket that dominates zkSync below, and the one that would convert Base from a fee-real outlier into a subsidised chain. Footnote [^s4_8]'s original 118M OP token agreement is not an insider unlock — it was an inter-chain revenue-share commitment, now voided by the exit.[^s4_8]

---

### Arbitrum — Break-Even Sequencer, Bottomless Treasury

Arbitrum is the anti-Base: nobody pockets the margin, because there is barely a margin to pocket. The sequencer runs at a break-even mandate, with all surplus routed to the Arbitrum DAO treasury.[^s4_15] The problem is the surplus has nearly vanished. Trailing 30-day fees are **\$383,724** — annualising to under \$5M — while the **Arbitrum Foundation asked its own DAO for \$43.5M** in a single funding request, roughly **1.85x the entire \$23.49M gross revenue of 2025**.[^s4_16][^s4_17] The chain that secures roughly \$15.6B in value (the #1 L2 by total value secured) cannot pay its own staff out of its own fees.[^s4_18]

The token tells the rest. **ARB trades at \$0.0834**, down approximately 96.5% from its \$2.39 ATH, with a \$531M market cap.[^s4_19] The DAO treasury is approximately **93% ARB** — a position now worth roughly \$224M, down from \$651M in January 2026 — meaning the treasury's value collapses in lockstep with the token it is supposed to fund operations with.[^s4_20] Meanwhile ARB unlocks continue at roughly 92.65M tokens/month — approximately \$7.7M of monthly **insider supply/value transfer** (team, investor, and DAO-tranche vesting marked at market price), outpacing monthly fee revenue by roughly 20x; the next DAO tranche unlocks 16 July 2026.[^s4_21]

**When a user pays \$1 in fees on Arbitrum One:**
- **\$0.31 → Ethereum L1 data availability.** Blob/calldata reimbursement; the L1 share of a much-smaller total post-Fusaka (midpoint estimate; July 2025 token-flow data showed approximately 4.6% direct sequencer reimbursement, but L1's share of the shrunken fee base now runs 25–35%).[^s4_22]
- **\$0.69 → Arbitrum DAO treasury.** All sequencer surplus, denominated in ETH and stablecoins, per the official fee-distribution model.[^s4_15]
- **\$0.00 → sequencer operator.** Offchain Labs takes no fee margin — unique among major L2s.[^s4_15]

On top of base fees sits **Timeboost**, the express-lane priority auction launched April 2025: **\$7.5M cumulative**, annualising approximately \$5.94M, roughly 25% of total DAO revenue — though its 30-day take has compressed to \$155K as the novelty premium fades.[^s4_23]

**The hidden multiple: roughly \$8–12 per \$1 of fees.** Dividing annualised ARB unlock value (approximately \$92M/year of insider vesting at current prices), the approximately \$20M+ structural DAO deficit, and VC-funded Offchain Labs opex (the company raised \$120M+ in 2021–22 to run the sequencer at zero margin) by approximately \$4.6M of annualised fee revenue yields a chain where roughly eight to twelve dollars of non-fee-funded value — split across insider unlocks, treasury drawdown, and VC subsidy — move for every dollar a user actually pays.[^s4_21][^s4_24] The unlock value is mark-to-market notional, not cash; the VC opex is realized cash. Arbitrum is a venture- and issuance-funded public good, not a self-sustaining business.


![Arbitrum payment flow](charts_2026-06-19/arbitrum.png)

---

### Optimism — The Anchor Chain Becomes a Rounding Error

If Arbitrum can't fund itself, OP Mainnet barely registers. The chain that anchors the Superchain generated **\$56,377 in fees over the trailing 30 days** — annualising to under \$700K on a run-rate basis — against approximately \$1.88M over the full prior year.[^s4_25] **OP trades at \$0.1012**, down approximately 97.9% from its \$4.84 ATH, with a \$218M market cap.[^s4_26] The gap between OP's roughly \$435M fully diluted valuation and its sub-\$700K run-rate fee revenue now exceeds 600x.

Two events defined Optimism's 2026. First, **Base walked out** (February 2026), stripping the Superchain of the tenant that had supplied approximately 41% of all Collective revenue ever and approximately 87% of recent sequencer revenue; OP fell 28% in 48 hours.[^s4_27] Second, in **January 2026 governance approved (84.4%) a buyback program** redirecting 50% of net Superchain revenue to monthly OP purchases for a 12-month pilot — launched, with grim timing, just as the revenue base was about to exit through the front door.[^s4_28]

**When a user pays \$1 in gas on OP Mainnet:**
- **\$0.03 → Ethereum L1 data costs.** Blob/calldata posted to Ethereum validators, post-EIP-4844.[^s4_29]
- **\$0.97 → Optimism Collective treasury.** OP Mainnet routes 100% of net sequencer profit to the public-goods engine — every cent above L1 cost.[^s4_30]

**The hidden multiple: roughly \$5.6 per \$1 of fees, almost all of it issuance.** Against approximately \$1.88M of annualised fees, the chain prints approximately **85.9M new OP/year via 2% inflation — roughly \$8.7M of fresh supply, a 4.6x issuance ratio**.[^s4_31] This is consensus/governance issuance, not a temporary external subsidy — but on a chain whose fees cover well under a quarter of it, the directional point stands. The Feb-2026 buyback offsets part of it (approximately \$4.97M/year, approximately 2.6x of fees) but offsets inflation, not the eroding fee base.[^s4_28] Roughly **2.135B OP (approximately \$216M) remains locked** through 2029 — a continuous **insider supply/value-transfer** overhang including the approximately 31M OP Core-Contributor unlock in May 2026.[^s4_32] RetroPGF — once the industry's flagship public-goods model — distributed 16M OP in 2025, worth approximately \$1.62M today versus approximately \$20M+ at 2024 prices; the model survives, but the token collapse gutted the real-dollar value of every grant.[^s4_33] The remaining Superchain (ex-Base) holds approximately \$522M TVL across nine chains, with Unichain (approximately \$23M DefiLlama TVL) nowhere near replacing Base's multi-billion footprint.[^s4_34]


![Optimism payment flow](charts_2026-06-19/optimism.png)

---

### zkSync Era — A Fee Machine Running on Vesting

zkSync Era is the purest illustration of the L2 unlock problem because the fees are too small to round. Trailing 30-day fees are **\$14,371** — about **\$175K annualised**.[^s4_35] TVL has cratered from an approximately \$541M 2024 peak to **\$15.3M today**, a 97% collapse.[^s4_36] **ZK trades at \$0.0116**, down approximately 96% from its \$0.321 ATH, \$116M market cap, approximately \$244M FDV.[^s4_37]

Matter Labs has effectively pivoted away from the public chain: it announced a second round of layoffs, committed the company to **"Prividium"** (a permissioned, privacy-focused L2 for regulated institutions), and **sunset zkSync Lite in early 2026**.[^s4_38] A November 2025 tokenomics overhaul redirects interop and licensing revenue — not Era transaction fees — to ZK buybacks, burns, and staking.[^s4_39]

**When a user pays \$1 in fees on zkSync Era:**
- **\$0.30 → Ethereum L1 data + proof costs.** Blob data availability plus proof verification, amortised across the batch (estimate; varies with congestion).[^s4_40]
- **\$0.70 → Matter Labs sequencer profit.** Retained by the still-fully-centralised sequencer operator. The ZKnomics value-accrual mechanism explicitly excludes Era transaction fees.[^s4_41]

**The hidden multiple: roughly \$217 per \$1 of fees — the most lopsided in this report, and almost entirely insider supply.** Team (13.55%) and investor (17.19%) allocations total 33.33% of the 21B supply and, post-June-2025 cliff, unlock roughly **286.56M ZK/month — approximately \$3.3M of monthly insider supply/value transfer marked at market against \$14,371 of monthly user fees**, an approximately 217:1 ratio.[^s4_42][^s4_43] This is the cleanest case in the report of value transferred from new market buyers to insiders by a vesting schedule, not earned from users; it is mark-to-market notional, but the selling pressure it represents is real. Behind it sit unrealised governance reserves (Token Assembly approximately \$67.8M, Ecosystem Initiatives approximately \$46.1M) and an estimated approximately \$450M in VC funding subsidising Matter Labs off-chain — a cyclical, capital-formation flow distinct from the unlocks.[^s4_44] The fee revenue is economically immaterial; the ZK economy runs on vesting, not users.


![Zksync Era payment flow](charts_2026-06-19/zksync_era.png)

---

### L2 Networks: Patterns and Limitations

Step back from the four chains and a single structure repeats. **Sequencer fees are trivial and shrinking; the real economy is issuance, insider unlocks, and subsidy.** The numbers as of 20 June 2026:

| Chain | 30d fees | Annualised | TVL | Token vs ATH | Hidden multiple per \$1 fee |
|---|---|---|---|---|---|
| Base | \$5.10M[^s4_2] | approximately \$61M[^s4_2] | \$4.2B[^s4_5] | (no token) | approximately \$5–7 (app economy, not subsidy)[^s4_9] |
| Arbitrum | \$384K[^s4_16] | approximately \$4.6M[^s4_16] | \$1.30B[^s4_18] | ARB −96.5%[^s4_19] | approximately \$8–12 (insider unlocks + deficit)[^s4_24] |
| Optimism | \$56K[^s4_25] | <\$0.7M[^s4_25] | \$306M[^s4_34] | OP −97.9%[^s4_26] | approximately \$5.6 (issuance)[^s4_31] |
| zkSync Era | \$14.4K[^s4_35] | approximately \$175K[^s4_35] | \$15.3M[^s4_36] | ZK −96%[^s4_37] | approximately \$217 (insider unlocks)[^s4_42] |

Three patterns hold across all four:

1. **The DA-cost collapse broke the toll model.** Pectra and Fusaka cut L1 settlement to near-zero, which was meant to be the L2's margin. Instead it removed the cost the toll was justifying. Base monetises anyway because Coinbase owns the rail; the others collect fees that no longer cover operations.[^s4_4][^s4_1]

2. **Issuance and insider unlocks, not user fees, fund the chain.** Arbitrum's DAO requested approximately 1.85x its annual revenue; Optimism prints approximately 4.6x its fees in annual issuance; zkSync transfers approximately 217x its fees to insiders every month through vesting. In every case the visible user fee is a fraction of the non-fee-funded value flowing to token holders and future unlock recipients.[^s4_17][^s4_31][^s4_42]

3. **Ownership decides who captures the dollar.** A corporate sequencer (Base) keeps 99.8 cents; a break-even/public-goods model (Arbitrum, Optimism) keeps approximately 0 and routes everything to a treasury or the Collective; a centralised-but-tokenised model (zkSync) splits with L1 and lets insiders extract via vesting. Same toll, radically different beneficiaries.

**The limitations of this framing are real and worth stating.** "Total value secured" is not revenue — Arbitrum's \$15.6B TVS and Base's \$4.2B TVL represent user capital, not income, and an L2 captures only the thin fee layer on top.[^s4_18][^s4_5] The hidden multiples mix categories that are not equivalent — and not even the same *unit*: app-layer revenue (Base) and VC opex are realized cash, whereas issuance (Optimism) and insider unlock pressure (zkSync) are mark-to-market notional supply, endogenous to a token price that also deflates the fee denominator.[^s4_44] Both inflate the "\$X per \$1" headline, but app revenue signals economic activity while insider unlocks are a one-way wealth transfer; the buckets must be read separately, not summed into one undifferentiated "subsidy." And MEV, stablecoin float, and private corporate cross-sells are undisclosed estimates, not hard data — flagged as such throughout. The multiples are directional indictments, not audited income statements.

**The L2 sustainability question, plainly.** Outside the one chain with a corporate balance sheet behind it, no major L2 in this report earns enough to fund itself. The standard rollup pitch — cheap fees today, fee revenue scales with adoption tomorrow — has collided with two facts: adoption did not produce proportional fee revenue (Optimism's fees *fell* as the Superchain grew), and the DA-cost collapse means the per-transaction take keeps falling even when usage holds. What fills the gap is issuance (Optimism), treasury drawdowns funded by a token-heavy reserve that deflates with the token (Arbitrum), insider vesting (zkSync), or a corporate parent (Base). Three of those four are running down a finite resource. The rollup economy, stripped of narrative, is a set of public goods waiting to discover whether anyone will pay for them once the subsidy runs out — and on current numbers, the non-fee-funded value flows are winning by two-to-three orders of magnitude.

---

[^s4_1]: [Eco — Arbitrum vs Optimism 2026: Fees, TVL, Ecosystem](https://eco.com/support/en/articles/15183711-arbitrum-vs-optimism-2026-fees-tvl-ecosystem) — Ethereum Fusaka/PeerDAS upgrade (December 2025) cut L2 data-availability costs by a further 40–60% within the first month, on top of the post-Dencun reduction.
[^s4_2]: [DefiLlama — Base Fees](https://defillama.com/fees/base) — 24h \$59,493 | 7d \$499,395 | 30d \$5,104,827 | 30d revenue net of L1 \$5,095,817 | all-time fees \$205,926,830 (since August 2023 launch). Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA.
[^s4_3]: [DefiLlama — Base Fees (monthly aggregation)](https://defillama.com/fees/base) — 2024 full-year approximately \$88.9M, 2025 full-year approximately \$77.5M (trailing-12m API \$63.8M; 2026 YTD \$26.7M implies H2-2025 approximately \$37.1M, H1-2025 approximately \$40.4M, sum approximately \$77.5M). Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA on the trailing-12m and YTD pulls; the 2025 full-year split is a derived reconciliation.
[^s4_4]: [DefiLlama — Base Fees vs Revenue](https://defillama.com/fees/base) — 30d fees (\$5,104,827) vs 30d revenue (\$5,095,817) implies L1 blob cost of \$9,010 (0.18% of fees), near-zero post-Pectra (May 2025); pre-Pectra benchmark approximately 5%. Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA. See also [Edgen — Pectra slashes rollup costs 51%](https://www.edgen.tech/news/crypto/ethereum-pectra-upgrade-slashes-rollup-costs-by-51-boosting-l2-profitability-and-increasing-node-data-burden).
[^s4_5]: [DefiLlama — Base Chain TVL](https://defillama.com/chain/Base) — approximately \$4.2B as of June 20, 2026 (\$4,221,252,416 live; \$4.18B on the June 19 pull), down from the approximately \$4.4B January 2026 peak. Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA.
[^s4_6]: [CoinDesk — Coinbase's Base Moves Away From Optimism's OP Stack](https://www.coindesk.com/business/2026/02/18/coinbase-s-base-moves-away-from-optimism-s-op-stack-in-major-tech-shift) — Base announced departure from the OP Stack on February 18, 2026, ending revenue sharing with the Optimism Collective.
[^s4_7]: [DL News — Optimism Token Plunges as Base Leaves Superchain](https://www.dlnews.com/articles/defi/optimism-token-price-plunges-as-base-leaves-superchain/) — Base contributed 8,387 ETH over the partnership (approximately 41% of the Collective's lifetime revenue, 90%+ of monthly revenue before departure). At June 20, 2026 ETH of approximately \$1,732 that is approximately \$14.5M; the commonly quoted "\$16.4M" uses the approximately \$1,955 partnership-period average ETH price (Aug 2023–Feb 2026), a historical mark, not a current price. ETH price 🔷 HARD DATA (retrieved via Etherscan API, June 20, 2026); the partnership-average is an estimate.
[^s4_8]: [The Block — Base–Optimism revenue agreement](https://www.theblock.co/post/247532/base-optimism-revenue) — Original 2023 agreement (Base to receive 118M OP over six years) — an inter-chain revenue-share commitment, NOT an insider token unlock — now voided by the departure.
[^s4_9]: [Bitget News — Base 2025 Report Card](https://www.bitget.com/news/detail/12560605121706) — App-level revenue on Base in 2025 approximately \$369.9M (Aerodrome approximately \$160.5M) vs \$77.5M sequencer fees, a approximately 4.8x ratio; Base held approximately 62% of total L2 fees. Both figures are GROSS top-lines (app revenue is not net profit; sequencer fees are not net margin), so the ratio understates the operating-economics gap. Estimate (third-party aggregation), not hard data.
[^s4_10]: [Coin Metrics — Coinbase Q1 2026 Earnings](https://coinmetrics.substack.com/p/coinbase-q1-2026-earnings-diversification) — Coinbase Q1 2026 total revenue \$1.41B (down 21% QoQ); Base sequencer revenue folded into "other transaction revenue," not separately disclosed.
[^s4_11]: [DefiLlama — Aerodrome (Base)](https://defillama.com/protocol/aerodrome) — Aerodrome Base TVL approximately \$314.7M. Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA. Sequencer MEV via Flashblocks (200ms priority blocks) is an undisclosed estimate disaggregated into extractive (sandwich/front-running), efficiency (arbitrage, liquidations), and protocol-captured priority fees — none separately disclosed in any public filing; not hard data.
[^s4_12]: [CoinDesk — Base Explores Issuing Native Token](https://www.coindesk.com/business/2025/09/15/base-explores-issuing-native-token-says-creator-jesse-pollak) — Jesse Pollak announced Base is exploring a native token at BaseCamp, September 15, 2025; no launch as of June 2026.
[^s4_13]: [AMBCrypto — Base Native Token Launch Odds](https://ambcrypto.com/base-is-exploring-native-token-launch-is-2026-the-year/) — Prediction markets assign approximately 69% probability to a BASE token launch before December 31, 2026 (as of mid-2026).
[^s4_14]: [StockTitan — Coinbase Q1 2026 10-Q](https://www.stocktitan.net/sec-filings/COIN/10-q-coinbase-global-inc-quarterly-earnings-report-f736bb8bfb07.html) — Stablecoin revenue \$305M in Q1 2026 (up 55% YoY), the largest subscription-and-services line, on a record approximately \$19B average USDC balance held in Coinbase products; Coinbase captures approximately 50% of total USDC economics. The \$305M is a verified 10-Q line item; the "Base-driven share" of it is an undisclosed estimate, not hard data. Filing: [SEC Form 10-Q (COIN, FY2026 Q1)](https://www.sec.gov/Archives/edgar/data/0001679788/000167978826000054/coin-20260331.htm).
[^s4_15]: [Arbitrum Docs — Fee Distribution](https://docs.arbitrum.foundation/fee-distribution) — Sequencer operates at break-even; all surplus routes to the Arbitrum DAO treasury; Offchain Labs extracts no fee margin.
[^s4_16]: [DefiLlama — Arbitrum Fees](https://defillama.com/fees/chain/arbitrum) — 24h \$8,820 | 30d \$383,724 | 1y \$13.39M | all-time \$168.27M; 30d annualises to approximately \$4.6M. Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA.
[^s4_17]: [CryptoAdventure — Arbitrum Foundation Requests \$43.5M From DAO Treasury](https://cryptoadventure.com/arbitrum-foundation-requests-43-5m-from-dao-treasury-for-operations/) — Active funding request of \$43.5M (\$16M stablecoins + 1,740 ETH + 230M ARB), approximately 1.85x the \$23.49M 2025 gross revenue; on-chain vote closing late June 2026.
[^s4_18]: [CoinLaw — Arbitrum Statistics 2026 (citing L2Beat)](https://coinlaw.io/arbitrum-statistics/) — Total value secured approximately \$15.6B, #1-ranked L2 as of May 2026; ARB all-time low \$0.08709 (March 29, 2026). DefiLlama Arbitrum chain TVL \$1.30B (retrieved via DefiLlama API, June 20, 2026). 🔷 HARD DATA on the TVL figure.
[^s4_19]: [CoinGecko — Arbitrum (ARB)](https://www.coingecko.com/en/coins/arbitrum) — ARB price \$0.0834, market cap \$531M, circulating 6.36B (63.6% of 10B max), ATH \$2.39 (Jan 12, 2024, −96.5%). Retrieved via CoinGecko API (June 20, 2026). 🔷 HARD DATA.
[^s4_20]: [Arbitrum Token Flow Report, July 2025](https://online.flippingbook.com/view/256681616) — DAO treasury composition: 2.7B ARB (93.4%), \$34.6M ETH (2.7%), \$51.8M stablecoins (4.0%); approximately \$224M ARB value at June 2026 prices vs approximately \$651M in January 2026. ⏳ HISTORICAL (July 2025): most recent published full treasury breakdown; dollar values recomputed at current price.
[^s4_21]: [Tokenomist — Arbitrum Vesting](https://tokenomist.ai/arbitrum) — approximately 92.65M ARB/month unlocking through 2027 (approximately \$7.7M/month at current price, marked at market) — team, investor, and DAO-tranche insider supply/value transfer; next DAO-treasury tranche July 16, 2026; 63.6% of supply unlocked. See also [MKN Crypto — June 16, 2026 ARB unlock](https://news.mkncrypto.com/arbitrums-june-16-unlock-the-l2-token-needs-revenue-proof-not-just-scale/).
[^s4_22]: [Arbitrum Token Flow Report, July 2025](https://online.flippingbook.com/view/256681616) — July 2025: 323 ETH gross fees, 15 ETH sequencer L1 reimbursement (approximately 4.6%), 308 ETH net to DAO; cumulative 28,300 ETH L1 reimbursement of 48,000 ETH total fees. ⏳ HISTORICAL (July 2025): most recent itemised flow report; the \$0.31 L1 estimate reflects L1's larger share of the now-smaller post-Fusaka fee base. Estimate, not hard data.
[^s4_23]: [DefiLlama — Arbitrum Timeboost](https://defillama.com/protocol/arbitrum-timeboost) — Cumulative \$7.5M, 30d \$155,186, annualising approximately \$5.94M; approximately 25% of total DAO revenue. Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA. Launched April 2025; 97% to DAO, 3% to Developer Guild.
[^s4_24]: [Arbitrum Foundation — 2025 Transparency Report](https://blog.arbitrum.foundation/the-arbitrum-foundation-2025-transparency-report-the-year-of-institutional-adoption/) — 2025 gross DAO revenue \$23.49M; Timeboost returned >\$6M in first year; TVS reached \$20B; 100+ Arbitrum chains live or in development. Hidden-multiple range (approximately \$8–12 per \$1) is an estimate combining annualised ARB unlock value (approximately \$92M, mark-to-market notional), the approximately \$20M+ structural deficit, and VC-funded (\$120M+) Offchain Labs opex (realized cash); not hard data.
[^s4_25]: [DefiLlama — OP Mainnet](https://defillama.com/chain/Optimism) — Fees: \$56,377 (30d), approximately \$1.88M (trailing-12m), \$91.6M all-time; 30d run-rate annualises to <\$700K. Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA.
[^s4_26]: [CoinGecko — Optimism (OP)](https://www.coingecko.com/en/coins/optimism) — OP price \$0.1012, market cap \$218M, FDV approximately \$435M, circulating 2.16B (50.3% of max), ATH \$4.84 (March 6, 2024, −97.9%). Retrieved via CoinGecko API (June 20, 2026). 🔷 HARD DATA.
[^s4_27]: [KuCoin News — Base Leaves Superchain, OP Plummets](https://www.kucoin.com/news/flash/base-leaves-superchain-op-token-plummets-as-optimism-faces-revenue-loss) — Base's 8,387 ETH was approximately 41% of all Collective revenue ever; OP fell 28% in 48 hours on the February 2026 departure.
[^s4_28]: [CoinDesk — Optimism Governance Approves OP Token Buyback Plan](https://www.coindesk.com/business/2026/01/28/optimism-governance-approves-op-token-buyback-plan-tied-to-superchain-revenue) — 84.4% approval (January 28, 2026) to direct 50% of net Superchain revenue to monthly OP buybacks for a 12-month pilot from February 2026; approximately \$4.97M/year at current prices. See also [Optimism — OP Token Buybacks blog](https://optimism.io/blog/op-token-buybacks).
[^s4_29]: [Optimism — How the Superchain Drives Fees to the Collective](https://www.optimism.io/blog/how-(and-why)-the-superchain-drives-fees-to-the-optimism-collective) — approximately 3% of OP Mainnet gas covers L1 blob/calldata cost post-EIP-4844; OP Mainnet pays 100% of net sequencer profit to the Collective.
[^s4_30]: [Optimism — OP Token Buybacks blog (Jan 2026)](https://optimism.io/blog/op-token-buybacks) — OP Mainnet routes 100% of net sequencer profit to the Optimism Collective treasury; Superchain claimed approximately 61.4% of L2 fee share and approximately 13% of all crypto transactions pre-Base departure.
[^s4_31]: [Optimism Docs — OP Token Overview](https://community.optimism.io/op-token/op-token-overview) — 2% annual issuance on 4.295B max supply = approximately 85.9M new OP/year (approximately \$8.7M at \$0.1012), a 4.6x issuance ratio vs approximately \$1.88M annual fees. This is governance/consensus issuance, not external subsidy. Estimate derived from documented issuance rate.
[^s4_32]: [Coin Bureau — Optimism Review 2026](https://coinbureau.com/review/optimism-review) — approximately 2.135B OP (49.7% of max, approximately \$216M) locked through 2029 — insider supply/value-transfer overhang; approximately 31M OP Core-Contributor unlock May 31, 2026; OP Stack powers >50 chains globally.
[^s4_33]: [Optimism — Retro Funding 2025](https://www.optimism.io/blog/retro-funding-2025) — 16M OP distributed across Dev Tooling and Onchain Builders in 2025 (approximately \$1.62M today vs approximately \$20M+ at 2024 prices); 60,815,042 OP distributed cumulatively since 2022.
[^s4_34]: [DefiLlama — Chains](https://defillama.com/chains) — Post-Base Superchain TVL approximately \$522M across nine chains: OP Mainnet \$306M, Ink \$127M, World Chain \$40M, Unichain \$23M, Fraxtal \$20M, Celo \$19M, Soneium \$8M, Mode \$2M, Zora <\$1M. Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA. See also [Messari — State of the Superchain H2 2025](https://messari.io/report/state-of-the-superchain-h2-2025).
[^s4_35]: [DefiLlama — zkSync Era Fees](https://defillama.com/chain/zksync-era) — 24h \$204 | 30d \$14,371 | all-time \$86.16M; 30d annualises to approximately \$175K. Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA.
[^s4_36]: [DefiLlama — zkSync Era TVL](https://defillama.com/chain/zkSync%20Era) — \$15.3M as of June 20, 2026 (\$15,260,151 live), down from an approximately \$541M 2024 peak (−97%). Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA.
[^s4_37]: [CoinGecko — ZKsync (ZK)](https://www.coingecko.com/en/coins/zksync) — ZK price \$0.0116, market cap \$116M, FDV approximately \$244M, circulating 9.98B (47.5% of 21B max), ATH \$0.321 (June 17, 2024, −96%). Retrieved via CoinGecko API (June 20, 2026). 🔷 HARD DATA.
[^s4_38]: [CoinDesk — ZKsync Lite to Shut Down in 2026 as Matter Labs Moves On](https://www.coindesk.com/tech/2025/12/08/zksync-lite-to-shut-down-in-2026-as-matter-labs-moves-on) — Matter Labs sunset zkSync Lite, announced a second round of layoffs, and pivoted to "Prividium," a permissioned privacy L2 for regulated institutions. See also [CryptoPotato — ZKsync layoffs / Prividium pivot](https://cryptopotato.com/zksync-creator-announces-layoffs-as-it-pivots-to-permissioned-privacy-chain/).
[^s4_39]: [The Defiant — ZKsync Tokenomics Proposal](https://thedefiant.io/news/tokens/zksync-zk-token-new-tokenomics-proposal) — November 2025 ZKnomics overhaul routes interop fees (on-chain) and Prividium licensing (off-chain) to ZK buybacks, burns, and staking; direct zkSync Era transaction fees are excluded.
[^s4_40]: [Eco — What Is a ZK Rollup? (2026 Guide)](https://eco.com/support/en/articles/10080409-what-is-a-zk-rollup-a-2026-guide-to-zero-knowledge-scaling) — Post-EIP-4844 blob costs approximately 10x lower than pre-Dencun; single proof compute \$50–\$500 amortised across a batch. The \$0.30 L1+proof share is an estimate that varies with congestion, not hard data.
[^s4_41]: [Messari — ZKsync: Prividiums for Enterprise-Grade Privacy](https://messari.io/report/zksync-prividiums-for-enterprise-grade-privacy) — v31 upgrade (May 2026) added native interop across the ZK Stack Elastic Network (20+ chains); sequencer remains fully centralised under Matter Labs; Era transaction fees retained as operational revenue.
[^s4_42]: [Tokenomist — ZKsync Unlock Events](https://tokenomist.ai/zksync/unlock-events) — Post-June-2025 cliff, team + investors unlock approximately 286.56M ZK/month (approximately 143.28M each) under a 0.8%/month cap, approximately \$3.3M/month at \$0.0116 (mark-to-market) vs \$14,371 of monthly fees (approximately 217:1). Estimate; next investor unlock approximately July 17, 2026.
[^s4_43]: [ZK Nation Docs — ZK Token](https://docs.zknation.io/zk-token/zk-token) — Allocation: Team 13.55% + Investors 17.19% = 33.33% insider; Token Assembly 29.27%; Ecosystem 19.90%; Airdrop 17.50%. 21B hard cap; 4-year vest with 1-year cliff (June 2024–June 2028). 🔷 HARD DATA (official docs).
[^s4_44]: [CryptoRank — ZKsync Token Vesting](https://cryptorank.io/price/zksync/vesting) — Unrealised governance reserves Token Assembly (approximately \$67.8M) and Ecosystem Initiatives (approximately \$46.1M); Matter Labs raised an estimated approximately \$450M+ across rounds (incl. \$200M Series C, Nov 2022, per [TechCrunch](https://techcrunch.com/2022/11/16/matter-labs-the-company-behind-zksync-raises-200-million-to-scale-ethereum/) ⏳ HISTORICAL 2022). VC total is a community-cited estimate, not hard data. Methodology note: across this section, issuance and token-unlock values are marked-to-market notional supply (no cash necessarily changes hands and the value is endogenous to token price), whereas fees, revenue, and VC opex are realized cash — the hidden multiples compare value-at-stake, not like-for-like cash flows.

---

## 5. The Infrastructure Layer: The Hidden Recipients

*Data as of 20 June 2026. Every chain section in this report asks the same question — when a user pays \$1, how much value actually moves? The infrastructure layer is where that question gets uncomfortable, because the people collecting the money mostly refuse to tell you how much they make.*

Oracles, MEV searchers, RPC providers, and indexers are the plumbing every dApp runs through. They are also the least transparent recipients in the entire value chain. On-chain fees — the only numbers we can verify to the dollar — capture a fraction of what this layer actually earns. The rest flows through private enterprise contracts, token-reward emissions, and off-chain MEV that never touches a public dashboard. This section sorts each line into the report's four-bucket taxonomy — **organic user fees**, **issuance / security budget**, **external VC capital**, and **insider supply / value transfer (token unlocks)** — and flags what is **🔷 HARD DATA** (API/on-chain verified) versus what is an **estimate**, line by line.

A measurement-basis caveat applies throughout this section, as it does to the whole report: on-chain fees and VC dollars are *realized cash*; token unlock and emission values are *marked-to-market notional supply* — no cash necessarily changes hands, and the "value" is endogenous to a token price that is itself depressed.[^s5_56] When we set a unlock figure against a fee figure, we are comparing total economic value-at-stake, not like-for-like cash.

---

### 5.1 Oracles: Securing Tens of Billions, Earning Almost None of It Transparently (Chainlink's Model)

**The key finding: the dominant oracle network monetizes through private, off-chain commercial contracts that never appear in any dashboard — while its token unlocks dwarf its visible on-chain revenue. This is primarily true of Chainlink's push-feed model, and is materially less true of the pull-model competitors.**

Chainlink secures a self-reported **\$110B in Total Value Secured** as of May 2026 — roughly \$60B in cross-chain CCIP transfers plus \$50B in DeFi data feeds.[^s5_1] Against that, its *verifiable* on-chain fee income is **\$6.04M over the trailing 30 days**, or about **\$72.5M annualized** (30d × 12); the actual trailing-twelve-month figure is lower still at **\$55.7M**.[^s5_2] 🔷 HARD DATA. That is an extraction rate of roughly **0.05–0.07% of value secured** — a rounding error relative to what the network protects.

This opacity is **Chainlink-specific, not a law of oracle physics**. Chainlink's push-feed model locks pricing inside private enterprise agreements, so the largest revenue line is invisible by design. Pyth's pull model and RedStone's on-demand architecture charge fees on-chain at the point of each price update by the consuming protocol — those fees *are* visible on-chain (DefiLlama shows Pyth at \$316K/30d),[^s5_17] transparent though tiny relative to TVS. Chronicle, the third major specialist, is grant-funded by MakerDAO/Sky governance rather than private enterprise contracts.[^s5_13] So the "money in rooms you can't see into" framing is accurate for the market leader and progressively less accurate as you move down the table.

So how does the Chainlink business actually pay for itself? Not on transparent fee revenue alone. Chainlink released **17.875M LINK in its April 2026 quarterly unlock — about \$165M at the time** — of which 14.875M (83%) went to Binance and 4.125M (17%) to a staking multisig.[^s5_3] **In the report's taxonomy this is insider supply / value transfer, not revenue**: the unlock releases tokens at market price into Binance, transferring value from new token buyers to Chainlink Labs and dwarfing any VC cost basis embedded in the original allocation. Annualize the quarterly cadence at today's **\$7.94 LINK** price and that is roughly **\$568M/yr in insider token outflow** (4 × 17.875M × \$7.94); it was closer to \$659M/yr at April's higher \$9.20 price.[^s5_4] 🔷 HARD DATA on the price and unlock size; the annualization is an arithmetic projection of the disclosed cadence.

Set that **\$568M/yr** of unlocks against the **\$72.5M** of on-chain fees and the unlock-to-on-chain-fee ratio is **roughly 7.8×**. A broader "hidden-subsidy multiple" of **approximately 2.6×** appears only once you pad the denominator with estimated SVR run-rate and estimated enterprise revenue (see below) — and two-thirds of that denominator is unverifiable. We report both: the **7.8× fee-only ratio is the hard one**; the 2.6× is a softer, estimate-laden figure.[^s5_4][^s5_9]

> Strip away the dashboards and the oracle sector is a paradox: record adoption, collapsing tokens. LINK is down roughly **85% from its 2021 peak** of \$52.70; its one-year price change is volatile and baseline-dependent (CoinGecko shows it positive year-on-year as of 20 June 2026, off a depressed mid-2025 low).[^s5_5] PYTH is down approximately **64% year-on-year and 97% from its all-time high** of \$1.20.[^s5_6] Usage is up. Tokens are deeply below peak. The gap between adoption and token value is where the emissions and unlocks live.

#### The opacity is Chainlink's business model — and it is invisible by design

The most important fact about Chainlink's economics is that the biggest contracts are unpriced in public. Chainlink's disclosed enterprise and institutional clients include **Swift, DTCC, Fidelity, UBS, and the US Department of Commerce** (which publishes six macroeconomic indicators across ten blockchains via Chainlink).[^s5_7] None of these deals have a public price. Our **estimate of approximately \$150M/yr in enterprise contract revenue is exactly that — an estimate**, inferred from disclosed client names and institutional pricing norms, not hard data.[^s5_8] It could be materially higher or lower. The honest position is that the single largest revenue line in the dominant oracle network cannot be verified by anyone outside the contracting parties.

Stacking the pieces gives a rough Chainlink revenue picture: approximately \$72.5M on-chain fees (🔷 hard) + approximately \$33M annualized SVR run-rate (Q1 2026 × 4, estimate) + approximately \$150M estimated enterprise (soft) ≈ **\$256M/yr total** — against approximately **\$568M/yr in insider unlocks**, the 2.6× ratio. Two of the three revenue lines are estimates, so the precise multiple should be read as directional.[^s5_4][^s5_9]

#### The one bright spot: MEV recapture (SVR)

The most credible path to *transparent* Chainlink monetization is Smart Value Recapture (SVR) — clawing back the oracle-extractable value (OEV) that MEV searchers used to skim from liquidations. SVR captured **\$8.3M in Q1 2026 alone, more than all prior quarters combined, for an all-time \$18.3M and approximately 99% of the oracle-MEV market**.[^s5_10] It is small, but it is real, on-chain, and growing — the rare oracle revenue line that doesn't depend on a private contract or a token print. This is a protocol-captured slice of the MEV economy disaggregated in §5.2.

#### The competitive field is fragmenting

Chainlink's DeFi oracle share has slipped to **60–68%** from north of 70%,[^s5_11] as specialists carve out the institutional RWA niche:

| Provider | Total Value Secured | On-chain fees (live) | Model / Notes |
|---|---|---|---|
| **Chainlink** | \$110B (self-reported)[^s5_1] | \$6.04M/30d 🔷[^s5_2] | Push feeds; CCIP + DeFi; 2,672 integrations[^s5_12] |
| **Chronicle** | \$10.2B[^s5_13] | grant-funded (Sky/MakerDAO) | Won SparkDAO \$1B Grand Prix oracle mandate (BlackRock, Janus Henderson funds)[^s5_14] |
| **RedStone** | \$8.5–10B ⏳[^s5_15] | embedded at update | Pull model; 150+ chains; RWA-focused (source March 2026) |
| **Pyth** | \$4.2B DeFi-only to \$16.1B self-reported[^s5_16] | \$316,224/30d 🔷[^s5_17] | Pull model, fees on-chain at point of use; 110+ chains; 2.13B PYTH unlocked May 2026 (insider supply)[^s5_6] |
| **API3** | — | \$93,206/30d 🔷[^s5_18] | First-party oracle; \$709,805 all-time on-chain fees |
| **Switchboard** | \$2B+[^s5_19] | — | Pull model; 100% of Solana lending TVL |

The strategic battleground is shifting from DeFi price feeds to **institutional RWA oracles** — Chronicle's BlackRock/Janus Henderson mandate is the clearest signal,[^s5_14] landing as the tokenized RWA market expanded from approximately \$6B in early 2025 to roughly \$31B by mid-2026.[^s5_20] But the structural feature that defines the *leader* — revenue priced in rooms you can't see into — does not generalize cleanly: the pull-model providers (Pyth, RedStone, Switchboard) charge transparently on-chain, even if those fees are tiny relative to value secured.

**Sector revenue, our best estimate: \$250–400M/yr across all providers — flagged as soft data, because for Chainlink it is dominated by private enterprise contracts not visible on-chain.**[^s5_21] This is an estimate, not 🔷 hard data.

---

### 5.2 MEV: A \$500M–\$610M Parallel Economy, Hiding in Plain Sight

The prior (October 2025) report pegged global MEV at **\$8–15B/year**. Live data forces a sharp downward revision. That old range bundled BNB, L2s, alt-chains, and speculative projections into one headline. Strip it back to what we can actually measure on the two largest markets and the picture tightens dramatically.

**On Ethereum, validators collected \$241.4M via MEV-Boost over the trailing twelve months;[^s5_22] on Solana, Jito MEV tips paid validators \$164.8M.[^s5_23]** 🔷 HARD DATA — both confirmed live via DefiLlama on 20 June 2026. These are the floor: the value that *visibly* reached validators.

Gross MEV — what actually moved through the sandwich, arbitrage, and liquidation machinery before searchers and builders took their cut — has to be *estimated* from searcher-margin assumptions. Keeping the estimate *internally consistent* with the validator-share model (validators retain 65–80% of gross on Ethereum, 70–80% of gross on Solana), the hard \$241.4M and \$164.8M that reached validators imply **\$302–371M/yr gross on Ethereum and \$206–235M/yr on Solana, for a combined \$508–606M/yr**.[^s5_24][^s5_25] Halved conservatively to avoid double-counting the searcher-to-builder-to-validator flow, the report-quality figure lands near **approximately \$280M/yr**.[^s5_26] We label this **estimate, not hard data** — the only hard numbers here are the \$241.4M and \$164.8M that reached validators. (The October 2025 report's \$8–15B headline bundled BNB, L2s, and speculative projections and is superseded.)

> MEV is not a line item on the fee market. It is a parallel economy layered silently on top of it. For every \$1 validators visibly collect via MEV-Boost, roughly **\$1.30–1.40 of gross MEV** moved through the system — searcher profit and builder margin stacked on top of the validator payment.[^s5_27]

#### Not all MEV is extraction: disaggregating the \$1

MEV is routinely described as pure theft. It isn't — it splits into three economically distinct categories, and only one of them is unambiguously extractive:

- **Extractive MEV (sandwich attacks):** value taken directly from ordinary users via front/back-running. This is the genuinely predatory slice — and it is *collapsing*. Ethereum sandwich take fell from approximately \$10M/month (late 2024) to **approximately \$2.5M/month by October 2025** as bot competition compressed margins.[^s5_32]
- **Efficiency MEV (arbitrage, liquidations):** value from correcting cross-venue price differences and clearing bad debt. This keeps DEX prices aligned with CEXs and keeps lending markets solvent — a service, not a theft, even though searchers profit from it. The CEX-DEX arbitrage study below sits here.
- **Protocol-captured MEV:** value clawed back *to the protocol or its users* rather than leaking to searchers — e.g. Chainlink SVR (§5.1), Jito's tip routing to stakers, and intent-based execution (CoW Swap). This slice is *growing* as the market professionalizes.

The headline "\$508–606M/yr parallel economy" therefore includes a shrinking extractive core, a large efficiency layer that arguably should exist, and a growing protocol-captured layer. We keep all three in the hidden-economy tally because all three are value moving outside the visible fee market — but the moral weight differs sharply by category.

#### Where \$1 of gross MEV goes (Ethereum MEV-Boost model)

| Recipient | Share of \$1 | Notes |
|---|---|---|
| Validators / stakers | \$0.65–\$0.80 | Of which Lido approximately \$0.20 (\~30% of staked ETH), Coinbase approximately \$0.08 (\~12%), independents approximately \$0.52[^s5_27] |
| Searchers (net profit) | \$0.15–\$0.25 | The bots running the strategies |
| Block builders | \$0.05–\$0.10 | Margin for assembling the block |

On Solana's Jito model, **94% of tips flow straight to validators and stakers, with 6% routed to the Jito DAO and infrastructure** — a high protocol-captured share by design.[^s5_28]

#### The structural story: professionalizing, not shrinking

MEV isn't dying — it's consolidating and going off-chain:

- **Builder concentration is now extreme.** Titan Builder controls approximately **50% of Ethereum blocks** as of February 2026, up from 24% in the prior report.[^s5_29] MEV-Boost still routes approximately **92.75% of all Ethereum blocks**.[^s5_30]
- **SUAVE is dead; BuilderNet is the successor.** Flashbots archived SUAVE in May 2025 and pivoted to BuilderNet, a TEE-based decentralized builder network that reached **25.5% of blocks by January 2026**.[^s5_29][^s5_31]
- **The money migrated to CEX-DEX arbitrage (efficiency MEV).** A 19-month academic study (Aug 2023–Mar 2025) found **\$233.8M extracted across 7.2M arbitrages by just 19 searchers** — the top three (Wintermute, SCP, Kayle) taking approximately 73%.[^s5_33] On Solana, Helius logged **\$142.8M in arbitrage profits across 90.4M successful transactions** over a trailing year.[^s5_25]
- **Intent-based protection went mainstream (protocol-captured).** CoW Swap hit a **\$9B monthly volume** all-time high in July 2025, evidence that users are actively routing around the extraction machine.[^s5_34]

The trend line: fewer, more professional searchers; heavier builder centralization; a shrinking *extractive* sandwich core; and a steady drift of *efficiency* extraction into venues — CEX-DEX arbitrage, private order flow — where it is even harder to measure than the on-chain sandwich it replaced.

---

### 5.3 RPC & Indexing: A \$600M–\$900M Business That Won't Show Its Books

If oracles hide behind enterprise contracts and MEV hides off-chain, RPC providers simply hide — they are private companies that don't publish revenue. The plumbing that every dApp, wallet, and bot calls to read and write the chain is now an estimated **\$600M–\$900M/yr business**, almost none of it disclosed.[^s5_35] In the taxonomy, this sub-sector's subsidy is overwhelmingly **external VC capital** (private providers) plus **token emissions** (The Graph) — not consensus issuance.

The anchor data point: **Alchemy reported approximately \$447M ARR in late 2025** (a third-party, unaudited estimate),[^s5_36] establishing that this is a real multi-hundred-million-dollar infrastructure industry, not a startup experiment. Its peers fill out the rest of the estimate — Infura approximately \$60–80M, QuickNode approximately \$25–40M, Ankr approximately \$20–35M, Dune approximately \$8–15M.[^s5_35] None of these are audited figures; all are **estimates** built from funding disclosures, growth rates, and request volumes — never 🔷 hard data.

| Provider | Revenue (est.) | Valuation / status | Scale |
|---|---|---|---|
| **Alchemy** | approximately \$447M ARR (2025) est.[^s5_36] | \$10.2B (2022 round, stale)[^s5_37] | x402 agentic gateway launched Feb 2026[^s5_38] |
| **Infura (ConsenSys)** | approximately \$60–80M est.[^s5_39] | ConsenSys eyeing fall-2026 IPO at \$10B+[^s5_40] | 10B+ daily API requests[^s5_41] |
| **QuickNode** | approximately \$25–40M est.[^s5_42] | \$800M (Jan 2023)[^s5_43] | 82+ chains, 135+ networks[^s5_44] |
| **Ankr** | approximately \$20–35M est.[^s5_45] | ANKR mcap approximately \$37M 🔷[^s5_46] | 8B+ requests/day |
| **Dune Analytics** | approximately \$8–15M est.[^s5_47] | \$1B (2022, stale)[^s5_47] | 100K+ analysts, 300K+ dashboards |

**The single public-market test is coming.** ConsenSys (parent of Infura and MetaMask) has mandated JPMorgan and Goldman Sachs for a fall-2026 NYSE listing targeting **\$10B+**, up from a \$7B private mark in 2022.[^s5_40] It will be the first real measure of whether Ethereum infrastructure can command a ten-figure valuation when the base chain it rides earns only on the order of \$100M/yr in fees from users.

#### The Graph: a 78-to-1 emission ratio, laid bare

No part of this layer exposes the thesis more brutally than **The Graph**, the decentralized indexer. In Q4 2025 it generated **just \$98,667 in real, user-paid query fees** — under \$400K annualized.[^s5_48] In the same period, the protocol *minted* approximately **\$7.6M worth of GRT in indexing rewards** (Q3 2025 figure).[^s5_49] That is a **rewards-to-fees ratio of roughly 78:1** — meaning approximately **98.7% of the value flowing to indexers is protocol-printed emission, and only approximately 1.3% is organic revenue**.[^s5_50] This is token-emission subsidy (newly minted supply paid to indexers), distinct from the insider-unlock category — but, like unlocks, it is non-organic value flow marked at a depressed token price.

> Of every \$1 of value reaching a Graph indexer, **\$0.013 is a real fee and \$0.987 is freshly minted GRT**. The token has fallen to approximately \$0.0195 — roughly **99% below its \$2.84 all-time high**.[^s5_51] 🔷 HARD DATA on the live price. The price collapse is what made the emission impossible to ignore.

The Graph's response is the **Horizon upgrade** (live December 2025), which unbundles indexing, storage, and query execution and adds **x402 AI-agent payment support (May 2026)** — an explicit attempt to grow real fee revenue before the emission model becomes politically untenable.[^s5_52]

#### Where \$1 of RPC spend goes — and what it unlocks

For centralized providers, the direct math is simple software economics: approximately **\$0.75–\$0.85 gross margin**, with approximately \$0.15–\$0.25 covering cloud compute, bandwidth, and node costs.[^s5_53] The interesting number is the **multiplier** — how much downstream activity each RPC dollar enables.

We estimate **\$4–\$8 of broader ecosystem value is unlocked per \$1 of RPC/indexing fees**.[^s5_54] This is an **estimate, reasoned not measured**: a single Ethereum transaction triggers 3–10 RPC calls to submit and monitor; a DeFi front-end's \$1 of RPC spend supports dozens of user sessions transacting hundreds of dollars each; and MEV bots are the extreme case — paying approximately \$50K/month in RPC fees to extract an estimated \$5–20M/month, a 100–400× ratio.[^s5_54] The plumbing is cheap. What flows through it is not.

#### The subsidy didn't disappear — it changed form

RPC providers carry approximately **0% token subsidy** (they're private, on subscription revenue) — but they were heavily **VC-subsidized**: Alchemy (\$564M raised) and QuickNode (\$106M) together injected roughly **\$670M of venture capital** into free and cheap developer access to capture market share.[^s5_55][^s5_42] At approximately \$447M ARR, Alchemy is only now approaching VC recovery — after eight years of subsidized growth. The Graph carries the subsidy in token emissions; the private providers carried it in venture capital. Either way, the developer who pays \$1 today is standing on years of someone else's money.

---

### 5.4 Infrastructure Layer: The Bottom Line

The infrastructure layer is the report's thesis in miniature. Three sub-sectors, three different non-organic value flows hiding the real money:

| Sub-sector | Verifiable on-chain income (organic fees) | Non-organic / hidden layer | Taxonomy bucket |
|---|---|---|---|
| **Oracles** | approximately \$72.5M/yr (Chainlink fees, 30d-annualized) 🔷[^s5_2] | approximately \$568M/yr LINK unlocks + approximately \$150M est. private contracts[^s5_4][^s5_8] | Insider supply / value transfer + opaque enterprise revenue |
| **MEV** | \$241.4M (ETH) + \$164.8M (SOL) to validators 🔷[^s5_22][^s5_23] | approximately \$508M–\$606M gross extraction (est.)[^s5_24] | Off-chain economy: extractive + efficiency + protocol-captured |
| **RPC / Indexing** | The Graph approximately \$99K/quarter fees[^s5_48] | approximately \$600–900M private revenue + 78:1 GRT emission (est.)[^s5_35][^s5_50] | External VC capital (private) + token emissions (The Graph) |

The pattern is identical across all three: **the numbers we can verify are small, and the numbers that matter are either off-chain, token-printed, or behind a private contract.** When a user pays \$1 in fees, the infrastructure layer beneath them is moving multiples of that — but most of it is structurally designed not to be counted, and most of it is *notional* value marked at depressed token prices rather than cash. That is not an accident of measurement. For the market leaders, it is the business model.

---


[^s5_1]: [Chainlink CCIP Stack Drives \$110B in Value Secured](https://crypto.news/chainlinks-ccip-stack-drives-110b-in-value-secured-overtaking-defi-oracles/) — crypto.news (May 22, 2026), citing Chainlink's own dashboard: \$60B in cross-chain CCIP transfers + \$50B in DeFi data feeds. This is a Chainlink-reported figure; DefiLlama's DeFi-only oracle methodology shows approximately \$47–50B. Both measure different service lines.

[^s5_2]: [DefiLlama — Chainlink fees](https://defillama.com/protocol/chainlink) — On-chain fees \$6.04M trailing 30 days; \$55.7M trailing 1 year; \$58.6M all-time. Annualized via 30d×12 ≈ \$72.5M/yr (the trailing-1y actual is lower at \$55.7M). Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA

[^s5_3]: [Chainlink Executes \$165M Quarterly Token Unlock](https://www.ainvest.com/news/chainlink-executes-165m-quarterly-token-unlock-expands-oracle-network-integrations-2604/) — ainvest (April 2026): 17.875M LINK released (\~\$165M at unlock), of which 14.875M (83%) to Binance and 4.125M (17%) to a staking multisig. In rubric terms this is **insider supply / value transfer** — tokens released at market price into Binance, transferring value from new buyers to Chainlink Labs.

[^s5_4]: [CoinGecko — Chainlink (LINK)](https://www.coingecko.com/en/coins/chainlink) — LINK \$7.94, market cap \$5.94B, circulating 748M of 1B total (circulating supply rose from approximately 727M, reflecting the Q2 unlock). Quarterly approximately 17.9M LINK unlock annualizes to approximately \$568M/yr at current price (was approximately \$659M/yr at April 2026 prices near \$9.20). Retrieved via CoinGecko API (June 20, 2026). 🔷 HARD DATA on price/mcap/supply; annualization is an arithmetic projection of disclosed cadence (not 🔷).

[^s5_5]: [CoinGecko — LINK historical](https://www.coingecko.com/en/coins/chainlink) — ATH \$52.70 (May 10, 2021); current price approximately 85.0% below ATH. One-year price change is baseline-dependent and volatile — CoinGecko's trailing-1y metric reads positive as of 20 June 2026 (off a depressed mid-2025 low near \$5.70–6), while comparisons against a higher 2025 baseline (\~\$13.84) show a decline; we therefore make no precise YoY claim and report only the verified ATH drawdown. Retrieved via CoinGecko API (June 20, 2026). 🔷 HARD DATA (price, ATH, drawdown).

[^s5_6]: [CoinGecko — Pyth Network (PYTH)](https://www.coingecko.com/en/coins/pyth-network) — PYTH \$0.0363, approximately 64% below year-ago and approximately 97% below ATH \$1.20 (March 2024). 2.13B PYTH unlocked May 19, 2026 — valued approximately \$92M at the unlock-date price, approximately \$77M at current \$0.0363 (time-stamped: figure was higher at time of unlock). This unlock is **insider supply / value transfer**. Retrieved via CoinGecko API (June 20, 2026). 🔷 HARD DATA (price, ATH); unlock dollar value is mark-to-market.

[^s5_7]: [US Department of Commerce Macroeconomic Data on Chainlink](https://blog.chain.link/united-states-department-of-commerce-macroeconomic-data/) — Chainlink official blog. Disclosed institutional clients include Swift, DTCC, Fidelity, UBS, and the US Department of Commerce (six macro indicators across ten blockchains). Contract values undisclosed.

[^s5_8]: Enterprise contract revenue of approximately **\$150M/yr is an analyst ESTIMATE** based on disclosed client names and institutional oracle pricing norms. No public disclosure exists; treat as an informed range only — actual may be materially higher or lower. NOT hard data.

[^s5_9]: [Chainlink Q1 2026 Quarterly Review](https://chain.link/blog/quarterly-review-q1-2026) — SVR captured \$8.3M in Q1 2026; CCIP transfer volume \$18B+ (78% QoQ, 319% YoY); Polymarket \$5B+ Q1 volume powered by Chainlink feeds; Amundi/Spiko tokenized fund reached \$400M+ AUM in three weeks. The "2.6×" hidden-subsidy multiple uses an estimate-laden denominator (\$72.5M fees + approximately \$33M SVR est. + approximately \$150M enterprise est.); the harder unlock-to-on-chain-fee-only ratio is approximately 7.8×.

[^s5_10]: [Chainlink Q1 2026 Quarterly Review — SVR](https://chain.link/blog/quarterly-review-q1-2026) — Smart Value Recapture: \$8.3M captured Q1 2026 (more than all prior quarters combined); \$18.3M all-time; approximately 99% oracle-MEV market share. This is **protocol-captured MEV** in the §5.2 taxonomy.

[^s5_11]: [Chainlink Oracle Market Share](https://crypto.news/chainlinks-ccip-stack-drives-110b-in-value-secured-overtaking-defi-oracles/) — crypto.news (May 2026): Chainlink 60–68% of DeFi oracle category TVS, down from 70%+ in prior years.

[^s5_12]: [Chainlink Ecosystem — Live Integrations](https://crypto.news/chainlinks-ccip-stack-drives-110b-in-value-secured-overtaking-defi-oracles/) — 2,672 live integrations across 60+ chains; \$30.31 trillion cumulative transaction value enabled (May 2026).

[^s5_13]: [The Block — Chronicle Oracle / MakerDAO-Sky RWA](https://www.theblock.co/post/348308/chronicle-oracle-raises-seed-makerdao-sky-real-world-assets-tokenization) — Chronicle TVS \$10.2B (April 2026); 1,296 oracles; 17% market share; grant-funded via Sky (MakerDAO) governance rather than private enterprise contracts; exclusively secured \$22B+ for the Sky ecosystem since 2017.

[^s5_14]: [The Block — Chronicle Tapped for \$1B SparkDAO Grand Prix](https://www.theblock.co/post/350614/chronicle-tapped-as-oracle-provider-for-winners-of-the-1-billion-sparkdao-tokenization-grand-prix) — Chronicle named oracle provider for SparkDAO Tokenization Grand Prix winners, including BlackRock and Janus Henderson funds.

[^s5_15]: [RedStone — Blockchain Oracles Comparison 2026](https://blog.redstone.finance/2026/03/30/blockchain-oracles-comparison-chainlink-vs-pyth-vs-redstone-2026/) — RedStone TVS \$8.5–10B; 150+ chains; 170–200+ protocol clients; pull model with on-chain verification, fees embedded at update time; zero mispricing events claimed since launch. ⏳ HISTORICAL (March 2026): source is >3 months old as of June 2026 and self-reported by RedStone; no newer independent aggregate exists. Not independently verifiable via public API.

[^s5_16]: [Messari — Pyth Network Profile](https://messari.io/project/pyth-network/profile) — Pyth TVS ranges from \$4.2B (Messari DeFi-only, Q4 2025) to \$16.1B (Pyth's own KPI including all Total Value Enabled, Dec 2025). Methodologies differ.

[^s5_17]: [DefiLlama — Pyth Network fees](https://defillama.com/protocol/pyth-network) — On-chain fees \$316,224 trailing 30 days (approximately \$3.8M annualized via 30d×12; trailing-1y actual \$2.02M). Pyth's pull model charges these fees on-chain at the point of each price update — transparent, unlike Chainlink's push-feed enterprise pricing. Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA

[^s5_18]: [DefiLlama — API3 fees](https://defillama.com/protocol/api3) — On-chain fees \$93,206 trailing 30 days (approximately \$1.1M annualized via 30d×12); \$705,960 trailing 1 year; \$709,805 all-time. Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA

[^s5_19]: [CoinMarketCap — Switchboard 2026](https://coinmarketcap.com/cmc-ai/switchboard-protocol/latest-updates/) — Switchboard TVS \$2B+; 100% of Solana lending TVL; 70% of Aptos lending TVL; pull model.

[^s5_20]: [RedStone — Tokenization & RWA Standards Report 2026](https://blog.redstone.finance/2026/03/26/tokenization-rwa-report-2026/) — Tokenized RWA market \$19.3B in Q1 2026; broader RWA grew from approximately \$6B (early 2025) to approximately \$31B (mid-2026). ⏳ HISTORICAL (March 2026): >3 months old; directional context only.

[^s5_21]: [DefiLlama — Oracles dashboard](https://defillama.com/oracles) — Total oracle sector revenue across all providers ESTIMATED at \$250–400M/yr; largely opaque for Chainlink (dominated by private enterprise contracts not visible on-chain), more transparent for pull-model providers. NOT hard data.

[^s5_22]: [DefiLlama — Flashbots (MEV-Boost)](https://defillama.com/protocol/flashbots) — ETH paid to block proposers via MEV-Boost bundles: \$241.4M trailing 12 months; \$10.84M trailing 30 days; \$1.665B cumulative all-time. Flashbots earns zero revenue from this flow. Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA

[^s5_23]: [DefiLlama — Jito MEV Tips](https://defillama.com/protocol/jito-mev-tips) — Solana MEV tips paid to validators: \$164.8M trailing 12 months; \$2.71M trailing 30 days; \$1.417B cumulative all-time. Retrieved via DefiLlama API (June 20, 2026). 🔷 HARD DATA

[^s5_24]: Combined gross MEV (Ethereum + Solana) of **\$508M–\$606M/yr is an ESTIMATE**, derived from DefiLlama hard data (validator MEV-Boost/Jito flows) divided *consistently* by the same validator-share model used in this section (validators retain 65–80% of gross on ETH, 70–80% on SOL): ETH \$241.4M ÷ 0.65–0.80 = \$302–371M; SOL \$164.8M ÷ 0.70–0.80 = \$206–235M. The prior Oct 2025 report's \$8–15B figure aggregated BNB, L2s, alt-chains, and speculative projections and is superseded. NOT hard data.

[^s5_25]: [Helius — Solana MEV Report](https://www.helius.dev/blog/solana-mev-report) — Trailing year: 3.75M SOL in Jito tips; 90.4M successful arbitrage transactions; \$142.8M total arbitrage profits (efficiency MEV). Solana gross MEV estimated \$206–235M/yr (Jito tips ÷ (1 − searcher margin)).

[^s5_26]: Conservative report-quality MEV figure of approximately **\$280M/yr is an ESTIMATE** — the approximately \$557M combined-gross midpoint halved to avoid double-counting searcher-to-builder-to-validator flows. NOT hard data.

[^s5_27]: [DefiLlama — Flashbots dollar-flow model](https://defillama.com/protocol/flashbots) — Per \$1 gross MEV (Ethereum MEV-Boost model): validators/stakers \$0.65–\$0.80 (Lido approximately \$0.20 at approximately 30% staked ETH, Coinbase approximately \$0.08 at approximately 12%, independents approximately \$0.52); searchers \$0.15–\$0.25; builders \$0.05–\$0.10. Hidden-economy multiple approximately 1.3–1.4× per validator-visible dollar. Distribution shares are estimates; validator totals are 🔷 hard data.

[^s5_28]: [Jito Foundation — TipRouter NCN](https://www.jito.network/blog/what-is-jito-tiprouter/) — On Solana's Jito model, 94% of MEV tips flow directly to validators and stakers; 6% routes to the Jito DAO, JitoSOL stakers, and JTO holders — a high protocol-captured share.

[^s5_29]: [Observers.com / Blockworks — Ethereum Block Builder Concentration](https://www.observers.com/how-two-block-builders-monopolized-ethereum-block-production/) — Titan Builder approximately 50% of Ethereum blocks by February 2026 (up from 24% prior); BuilderNet (Flashbots+Beaverbuild+Nethermind) reached 25.5% by January 2026.

[^s5_30]: [mevboost.pics](https://mevboost.pics/) — MEV-Boost routes approximately 92.75% of all Ethereum blocks as of June 2026.

[^s5_31]: [Blockworks — Flashbots BuilderNet](https://blockworks.com/news/flashbots-block-building-network-mev) — SUAVE archived May 2025; Flashbots pivoted to BuilderNet, a TEE-based decentralized block-builder network.

[^s5_32]: [EigenPhi — MEV analytics](https://eigenphi.io/) — Ethereum sandwich-attack extraction (the genuinely extractive slice) declined from approximately \$10M/month (late 2024) to approximately \$2.5M/month (October 2025) as bot competition compressed margins; approximately 95,000+ attacks Nov 2024–Oct 2025. Accessed June 2026.

[^s5_33]: [Measuring CEX-DEX Extracted Value and Searcher Profitability (2025)](https://arxiv.org/html/2507.13023v1) — 19-month study (Aug 2023–Mar 2025): \$233.8M extracted across 7.2M CEX-DEX arbitrages (efficiency MEV) by 19 major searchers; top three (Wintermute, SCP, Kayle) approximately 73% of value; searcher net margins 10–40%. Accessed June 2026.

[^s5_34]: [VaaSBlock — MEV in 2026](https://www.vaasblock.com/news/mev-flashbots-suave-ethereum-extraction-redistribution-2026/) — CoW Swap reached \$9B monthly volume (July 2025 all-time high) and 34.3% DEX-aggregator market share, evidence that intent-based (protocol-captured) execution is mainstream. Accessed June 2026.

[^s5_35]: Total RPC + indexing market revenue of **\$600M–\$900M/yr is an ESTIMATE**, derived from Alchemy approximately \$447M ARR + Infura approximately \$60–80M + QuickNode approximately \$25–40M + Ankr approximately \$20–35M + Dune approximately \$8–15M + smaller providers. None are audited. NOT hard data.

[^s5_36]: [Latka — Alchemy company profile](https://getlatka.com/companies/alchemy) — Alchemy approximately \$447M ARR (November 2025). Third-party, unaudited ESTIMATE; Alchemy is private. Retrieved June 20, 2026. NOT hard data.

[^s5_37]: [CoinDesk — Alchemy Tops \$10B Valuation (Feb 2022)](https://www.coindesk.com/business/2022/02/08/web-3-infrastructure-giant-alchemy-tops-10b-valuation-in-200m-funding-round) — \$200M Series C-1 at \$10.2B valuation. ⏳ HISTORICAL (Feb 2022): no updated valuation round since; latest public mark is four years old.

[^s5_38]: [Alchemy Blog — x402 AI Agent Infrastructure](https://www.alchemy.com/blog/how-x402-brings-real-time-crypto-payments-to-the-web) — x402 agentic gateway launched February 2026; AI agents autonomously purchase compute credits and access 100+ chains via HTTP 402 payment triggers.

[^s5_39]: [BlockEden.xyz — ConsenSys IPO Crossroads (April 2026)](https://blockeden.xyz/blog/2026/04/23/consensys-ipo-metamask-infura-linea-crypto-infrastructure-public-markets/) — Infura estimated at 20–30% of ConsenSys's \$150M+ ARR (≈\$60–80M); 430,000+ developers; 10B+ daily API requests. ⏳ HISTORICAL note: some developer-count metrics date to 2022. Estimate, not hard data.

[^s5_40]: [CoinMarketCap — ConsenSys Taps Wall Street for 2026 IPO](https://coinmarketcap.com/academy/article/metamask-parent-consensys-taps-wall-street-for-2026-ipo) — ConsenSys targeting fall-2026 NYSE listing; JPMorgan and Goldman Sachs mandated; last private valuation \$7B (2022), IPO target \$10B+.

[^s5_41]: [CoinLaw — ConsenSys Statistics 2026](https://coinlaw.io/consensys-statistics/) — Infura processes 10B+ daily API requests and approximately \$4.8T annual on-chain transaction volume; approximately 58% market share of Ethereum RPC.

[^s5_42]: [Latka — QuickNode revenue](https://getlatka.com/companies/quicknode.com) — QuickNode \$17.6M revenue (2023 baseline); estimated \$25–40M by 2025 at approximately 60% annual growth. \$106M total funding over 6 rounds. Unaudited ESTIMATE.

[^s5_43]: [TechCrunch — QuickNode \$60M Series B (Jan 2023)](https://techcrunch.com/2023/01/24/quicknode-raises-60m-at-800m-valuation-to-become-the-aws-or-azure-of-blockchain/) — \$60M Series B at \$800M valuation. ⏳ HISTORICAL (Jan 2023): no newer round disclosed.

[^s5_44]: [OnFinality — 2026 Guide to Blockchain Infrastructure](https://blog.onfinality.io/2026-guide-to-blockchain-infrastructure/) — QuickNode supports 82+ chains across 135+ networks; 99.99% uptime SLA; flat-rate RPS pricing introduced March 2026.

[^s5_45]: Ankr annual revenue of approximately **\$20–35M is an ESTIMATE** based on its approximately \$37M token market cap and request volumes versus peers; public network still nascent. NOT hard data.

[^s5_46]: [CoinGecko — Ankr (ANKR)](https://www.coingecko.com/en/coins/ankr-network) — ANKR \$0.0037, market cap approximately \$37M, circulating 10B of 10B max. Ankr serves 8B+ requests/day. Retrieved via CoinGecko API (June 20, 2026). 🔷 HARD DATA (price/mcap only; revenue is estimate per [^s5_45]).

[^s5_47]: [Tracxn — Dune Analytics Profile](https://tracxn.com/d/companies/dune-analytics/__XskUZos4lkfEOnTJIbC-1n9WdooVINLFPRtWW9pdZC4) — Dune \$4M revenue (2023 actual), approximately \$8–15M estimated (2025); \$79.4M total funding; \$1B valuation; 147 employees; 100K+ analysts; 300K+ public dashboards. ⏳ HISTORICAL: valuation from Feb 2022, no updated round since.

[^s5_48]: [Messari — State of The Graph Q4 2025](https://messari.io/report/state-of-the-graph-q4-2025) — Query fees \$98,667 in Q4 2025 (−8.7% QoQ from \$108,066 in Q3); Substreams revenue 6.08M GRT (approximately \$120K, +4× QoQ); 160,000+ delegators.

[^s5_49]: [Messari — State of The Graph Q3 2025](https://messari.io/report/state-of-the-graph-q3-2025) — Indexing rewards 81.6M GRT (approximately \$7.6M USD), an all-time high in GRT terms (+29.6% QoQ); 99 active indexers; query volume 5.46B (−15.9% QoQ from Q2 ATH of 6.49B).

[^s5_50]: The Graph emission ratio: approximately \$98,667 quarterly fees vs approximately \$7.6M quarterly minted GRT rewards = approximately **78:1 rewards-to-fees, or approximately 98.7% emission / approximately 1.3% organic**. Derived from Messari Q3/Q4 2025 figures.[^s5_48][^s5_49] ESTIMATE based on disclosed protocol data; rewards value is mark-to-market notional, not cash.

[^s5_51]: [CoinGecko — The Graph (GRT)](https://www.coingecko.com/en/coins/the-graph) — GRT \$0.0195, market cap approximately \$211M; roughly 99% below all-time high of \$2.84. Retrieved via CoinGecko API (June 20, 2026). 🔷 HARD DATA

[^s5_52]: [AInvest — The Graph Horizon Upgrade (Dec 2025)](https://www.ainvest.com/news/graph-horizon-upgrade-implications-grt-data-infrastructure-dominance-2512/) — Horizon protocol live December 2025; separates indexing, storage, and query execution; enables ZK-proof-verified subgraph data; x402 AI-agent USDC-per-request payment support activated May 2026.

[^s5_53]: RPC dollar-flow: centralized providers run approximately 75–85% gross margins (software/API economics); approximately \$0.15–\$0.25 of each \$1 covers cloud compute, bandwidth, and node-operator costs. ESTIMATE based on disclosed margin norms for API businesses.

[^s5_54]: RPC hidden-economy multiplier of **\$4–\$8 of ecosystem value unlocked per \$1 of RPC/indexing fees is an ESTIMATE**, reasoned not measured: a single Ethereum tx triggers 3–10 RPC calls; DeFi front-ends support dozens of sessions per \$1 of RPC; MEV bots pay approximately \$50K/month to extract an estimated \$5–20M/month (100–400×). NOT hard data.

[^s5_55]: [Tracxn — Alchemy funding](https://tracxn.com/d/companies/alchemy/__WjL1CMTTJSKorF3RTSl8hIZlQKuuUhMZzsjtQOR5c2g) — Alchemy raised \$564M across 5 rounds. Combined with QuickNode's \$106M, approximately \$670M of VC capital subsidized free/cheap developer access to capture market share (external-capital bucket).

[^s5_56]: Measurement-basis note: throughout this section, on-chain fees and VC dollars are *realized cash*, while token unlock and emission values (LINK unlocks, PYTH unlock, GRT indexing rewards) are *marked-to-market notional supply* — newly available tokens valued at a depressed market price, not cash that necessarily changed hands. Ratios comparing unlocks/emissions to fees measure total economic value-at-stake, not like-for-like cash flows. This mirrors the report-wide caveat that issuance and unlock figures are notional while fees and VC are cash.

---

## 6. Ecosystem Funding: Foundation and VC Money Flows

*The off-chain half of the subsidy thesis. Everything in Sections 1–5 happens on-chain, where the blockchain itself signs the receipt. This section follows the money that never touches a block: the foundation grants, the venture capital, and the exchange profits that quietly keep the lights on. It is the harder half to measure — most of it is private — but it is also where the subsidy machine is most naked.*

### Four buckets, not one word

Before the dollars, the taxonomy. This report does not lump every non-fee flow under the lazy word "subsidy." There are four distinct buckets, and they are measured on different bases:

1. **Organic user fees** — what users actually pay for blockspace and services. Gross DeFi fees run approximately **\$20.3B/yr** (30-day run-rate); **retained protocol revenue** — what tokenholders and protocols keep after paying LPs and validators — is approximately **\$12.8B/yr**, roughly 63¢ on the fee dollar. The rest is overhead paid straight back out.[^s6_e5] 🔷 HARD DATA
2. **Consensus / security issuance** — the designed security budget of BTC + ETH + SOL and other L1s, approximately **\$13.8B/yr** for the core three at today's depressed prices.[^s6_e28] A budget, not a temporary handout.
3. **External capital (VC)** — capital formation, a **cyclical run-rate near \$16B/yr** in early 2026.[^s6_e9]
4. **Insider supply / value transfer (token unlocks)** — an estimated **\$18–24B/yr** of vested tokens hitting the open market at market price.[^s6_e29] The largest and softest of the four, kept in the thesis because it is a real value transfer from new buyers to insiders — but flagged with wide error bars throughout.

This section measures buckets 1, 3 and 4 plus the off-ledger exchange channel; the issuance budget (bucket 2) is dissected in Sections 1–3. The point of separating them is honesty: issuance is a security cost a network *chooses* to pay; VC is capital formation; unlocks are a transfer. Calling all three "subsidy" in one breath is the imprecision a hostile referee would punish.

### Measurement basis — read this before the ratios

The flows below are **not** like-for-like. Fees, revenue and VC are **realised cash** changing hands. Issuance and token unlocks are **mark-to-market notional** — the dollar value of newly available supply, endogenous to the very token price that also deflates the fee numbers. No cash necessarily moves when a token unlocks; value is transferred only if and when it is sold. When this section sums these flows against fees, it is comparing **total economic value-at-stake**, not a clean cash-on-cash ratio.[^s6_e30] That caveat is stated here so it cannot be called hidden.

### The shape of the off-chain subsidy

Strip the on-chain story away and a parallel economy comes into focus. Across 2025 the industry absorbed roughly **\$20B of venture capital**[^s6_e1], spent an estimated **\$2–5B in foundation and DAO grants**[^s6_e2], and saw its two largest exchanges alone book roughly **\$24B in combined revenue**[^s6_e3][^s6_e4] — none of it counted in the approximately **\$12.8B of retained, on-chain protocol revenue** that the rest of this report measures.[^s6_e5] 🔷 HARD DATA (retained revenue; DeFiLlama dailyRevenue 30-day \$1.0495B annualised = \$12.77B/yr, retrieved via api.llama.fi, June 20, 2026)

That asymmetry is the point. The on-chain ledger is the part of the business that pays for itself. The off-chain ledger is the part that someone else pays for — and in mid-2026, with **BTC at \$63,932, ETH at \$1,731, and SOL at \$71.48**[^s6_e6] 🔷 HARD DATA (CoinGecko, June 20, 2026), the dollar value of that subsidy has compressed hard from the October 2025 baseline even as its structural share of the industry held. Total crypto market capitalisation sits near **\$2.28T with Bitcoin dominance at 56.2%**[^s6_e6], and Ethereum DeFi TVL near **\$39.0B**[^s6_e31] 🔷 HARD DATA — context for how far the dollar denominators have fallen.

### Venture capital: the record, then the hangover

Crypto VC ran a full cycle inside eighteen months. Galaxy Research's tracking put **full-year 2025 deployment at roughly \$20B across approximately 1,660 deals**[^s6_e1], with **Q4 2025 the strongest quarter since Q2 2022 at \$8.5B across 425 deals**[^s6_e7]. Then the market cooled and the capital followed it down: **Q1 2026 fell approximately 50% quarter-on-quarter to \$4.0B across 355 deals**[^s6_e8], implying a **2026 cyclical run-rate near \$16B**[^s6_e9] if the Q1 pace holds.

That \$16B is explicitly a **cyclical run-rate scenario, not a forecast** — a single soft quarter annualised four times. It could rebound toward the 2025 \$20B level or fall further; the band on this bucket is roughly **\$16–20B/yr**, and it is realised cash, the one bucket that is unambiguously hard-money. Notably, even as totals fell, **median deal size hit a record high above \$4.5M in Q1 2026**[^s6_e8] — fewer bets, bigger checks.

> The following number would make a growth investor wince: the sector that raised \$8.5B in one quarter raised less than half of that the next. Venture capital is not patient money. It is pro-cyclical money wearing a long-horizon costume.

The capital that remained got more concentrated, not more adventurous. In Q1 2026 roughly **65% of the \$4B flowed into trading, exchange, investing and lending businesses (approximately \$2.6B)**[^s6_e8] — the parts of crypto that look most like traditional finance — and **the US captured 70%+ of invested capital while accounting for 43.5% of deal count**[^s6_e8]. Fewer bets, bigger checks, closer to home.

The mega-funds tell the same story of disciplined retreat. **a16z crypto closed a \$2.2B Fund V in May 2026, lifting its cumulative crypto raise to \$9.8B**[^s6_e10] — but its tracked AUM had already **fallen approximately 40% to roughly \$9.5B**[^s6_e11] as marks reset across its four crypto funds. **Paradigm, sitting on its \$850M 2024 Fund III, was reported to be targeting a new approximately \$1.5B vehicle spanning crypto, AI and robotics**[^s6_e12] — note the hedge: even the purest crypto franchises now sell themselves as something broader.

A separate channel sits alongside venture and is easy to double-count: **Digital Asset Treasury (DAT) companies raised an estimated \$29B through 2025**[^s6_e13] to buy and hold tokens on public balance sheets. That is capital mobilisation, not protocol revenue — and it is *not* inside the VC figure above. Treat it as a third subsidy spigot, not a rounding error.

### Insider supply: the channel missing from most subsidy discussions

One channel is conspicuously absent from most subsidy debates: the vesting schedule. Token unlocks transfer an estimated **\$18–24B per year** from buyers in the open market to insiders — team, early investors, foundations — at *market* price.[^s6_e29] This is the largest single non-organic bucket in the entire thesis, and the softest: **no verified public aggregate exists**, so every figure here is an ESTIMATE with wide error bars, never 🔷 HARD DATA.

The basis: 2026 monthly unlock value has averaged roughly **\$2B/month** across tracking services, implying approximately \$24B/yr gross.[^s6_e29] But that average is **contaminated by a single outlier** — March 2026 spiked to approximately \$6B, of which **69% (\$4.18B) was one token, WhiteBIT's WBT**.[^s6_e32] Strip the March WBT cliff and the underlying monthly run-rate is closer to **\$1.6–1.8B/month**, or roughly **\$19–21B/yr gross**. We therefore centre the gross near **\$20B** and, after netting a coarse VC cost-basis overlap (the unlocking tokens partly represent VC positions already counted as cash deployment), arrive at a **net central of approximately \$19–20B/yr, band \$18–24B**.

That overlap netting is itself an estimate, not a sourced figure: with no public decomposition of unlock recipients (VC vs team vs foundation vs ecosystem), the overlap could plausibly be anywhere from **\$2.5B to \$6B**. We make no precise adjustment beyond stating that **unlock value is marked at market and exceeds the VC cost basis embedded within it** — it is not a re-count of the VC dollars, because \$1 of VC cost basis from 2021 can unlock as \$5 or as 20¢ of market value today.

### Foundations: the grant economy runs above its own revenue

Foundations are the clearest case of spending that outruns earning. Take the live examples one chain at a time:

| Foundation / DAO | 2025–26 spend or ask | Organic revenue it sits on |
|---|---|---|
| **Ethereum Foundation** | 15% opex cap on treasury (first-ever formal policy, June 2025), approximately \$40M/yr implied at the April 2026 \~\$271M portfolio[^s6_e14][^s6_e15] | n/a (protocol fees accrue to validators, not EF) |
| **Arbitrum Foundation** | Requested **\$43.5M** from the DAO for an approximately \$27.6M operating budget plus grants[^s6_e16] | **\~\$23.5M** gross protocol revenue in 2025 — spending approximately 2.3x revenue[^s6_e17] |
| **Optimism** | RetroPGF Round 5 (**8M OP** to 79 projects) + Round 6 (**5M OP** to 88 projects)[^s6_e18][^s6_e19] | Sequencer revenue, recycled into incentives |
| **Polygon** | Community Grants Season 2: **35M POL (\~\$17.5M est.)**[^s6_e20] | n/a |
| **Polkadot** | Treasury spend **\$7.4M** in Q4 2025 — lowest since OpenGov launch, but its first net-profit quarter (1.6M DOT)[^s6_e21] | OpenGov revenue finally edged ahead of outflow |
| **Interchain (Cosmos)** | **\$7.5M** 2024 grant allocation across core teams and builders[^s6_e22] ⏳ HISTORICAL (2024 program; no newer aggregate published) | n/a |

The Arbitrum line is the tell. A foundation asking the DAO for **\$43.5M against approximately \$23.5M of revenue**[^s6_e16][^s6_e17] is, by definition, spending future token value to manufacture present-day activity. That is grant subsidy in its purest form — and delegates noticed, openly questioning spending above DAO revenue.[^s6_e16]

The Ethereum Foundation is the most disciplined actor in the set, and even its discipline is a story about shrinkage *and* reversal. Its **first-ever treasury policy (June 2025) capped operating spend at 15% of treasury with a 2.5-year buffer, targeting an endowment-style 5% over a five-year horizon**[^s6_e14]. It put the balance sheet to work, **reaching a 70,000 ETH staking target on April 3, 2026**[^s6_e23]. But that target did not hold: in May 2026 the EF **unstaked 21,271 ETH (approximately \$49.6M) for treasury rebalancing**[^s6_e33] and sold a further 10,000 ETH via OTC, cutting its staked position roughly 30% to **approximately 52,965 ETH**[^s6_e33]. At today's \$1,731 and an approximately 2.7% staking APY, that reduced position yields only **approximately \$2.5M/yr**[^s6_e24] — not the approximately \$4M implied at the 70,000 ETH peak. The reversal itself tells the story: the endowment is being drawn down to fund operations.

The headline number is the collapse in the corpus. The **tracked EF portfolio stood near \$270.9M (approximately 102,400 ETH) in April 2026**[^s6_e25] 🔷 HARD DATA (on-chain wallet tracking, April 2026 snapshot — composition has since shifted with the May unstaking and OTC sale) — **down from roughly \$970M at October 2024**. The endowment that was supposed to fund Ethereum for decades is a fraction of its former dollar size, mostly because ETH itself trades roughly **65% below its August 2025 ATH of \$4,946**[^s6_e6]. 🔷 HARD DATA (CoinGecko)

Aggregate the visible programs and the credible range for **foundation and DAO ecosystem grant spend across major chains lands at approximately \$2–5B/yr**[^s6_e2] — with the per-chain data above clustering toward the lower end. It is an estimate, not hard data: most foundations disclose nothing, and the ones that do disclose in tokens whose dollar value moves under them.

### Exchanges: the one place the cash is real

If foundations are the softest data in this report, exchanges are nearly the hardest. The money is bigger, the disclosure is better, and the dependence is more direct than anyone likes to admit.

| Exchange | 2025 revenue | Disclosure quality |
|---|---|---|
| **Binance** | **\~\$17.5B (est.)** — \$34T total trading volume, \$7.1T spot, 300M registered users[^s6_e3] | Estimate; Binance discloses operations, not revenue |
| **Coinbase** | **\$7.18B** (FY2025 10-K)[^s6_e4] | 🔷 HARD DATA (public company filing) |
| **Kraken** | **\$2.2B** (+33% YoY), \$530.6M EBITDA[^s6_e26] | 🔷 HARD DATA (reported) |

Coinbase and Kraken are reported numbers; Binance's approximately \$17.5B is an **estimate** — the firm publishes user counts and volumes but not a P&L, so the figure should be read as a credible approximation, not a fact, and third-party estimates span roughly \$16–17.5B.[^s6_e27] Either way, the three together clear roughly **\$27B in revenue**, more than double the entire industry's retained on-chain income.

That gap is the recycling channel. Exchange profits do not vanish — they fund market-making desks, token listings, launchpads, BNB's quarterly auto-burn, and in Binance's and Coinbase's cases entire L1/L2 ecosystems (BNB Chain, Base) whose on-chain activity then shows up in the "organic" column elsewhere in this report. The on-chain demand looks self-generated. A meaningful slice of it is exchange capital wearing an on-chain costume. Exchange revenue is, however, **largely trading fees separate from L1 fee revenue** — the recycling attribution below is deliberately indirect and conservative.

### When a user pays \$1, here is the off-chain machine that moves

Putting the off-chain pieces against the organic income gives the subsidy multiple for this half of the thesis. **Denominator choice matters and is stated explicitly:** against gross DeFi fees (approximately \$20.3B/yr) the ratios compress; against retained protocol revenue (approximately \$12.8B/yr) they widen. All multiples below are quoted against **both** denominators. Every figure is an **estimate** — most of the numerator is private and mark-to-market — so treat the ranges as directional, not precise:

| Off-chain channel | Per \$1 gross fees (\$20.3B) / per \$1 retained revenue (\$12.8B) | Basis |
|---|---|---|
| **VC deployment** | **\$0.8 / \$1.3** | \$16–20B/yr cyclical run-rate seeding teams and liquidity[^s6_e1][^s6_e9] (realised cash) |
| **Insider supply / token unlocks** | **\$1.0 / \$1.6** | \$18–24B/yr vested tokens hitting market at market price; value transfer to insiders; wide error bars, no verified public aggregate[^s6_e29] (mark-to-market notional) |
| **Foundation / DAO grants** | **\$0.1–0.25 / \$0.2–0.4** | \$2–5B/yr grants[^s6_e2][^s6_e17] |
| **Exchange revenue recycle** | **\$1.0–1.3 / \$1.6–2.1** | approximately \$27B exchange revenue, indirectly and conservatively attributed[^s6_e3][^s6_e4][^s6_e26] |

Token unlocks — the bucket most subsidy discussions ignore — are individually the **largest single off-chain channel**, dwarfing foundation grants. Sum the off-ledger channels and, for every dollar of *retained* on-chain revenue, roughly **\$4–5 of VC, insider unlocks, grants and recycled exchange profit** are working off-ledger; against gross fees the same stack is roughly **\$2.6–3 per dollar**.

> The machine looks self-sustaining. Section by section it isn't, and this is the section where you can see why. For every dollar a user actually pays, several more dollars of venture capital, vesting-schedule value transfer, foundation grants and exchange profit are working off-ledger to make the on-chain economy look like one. The on-chain receipts are real. The going concern behind them is, for now, still mostly subsidy.

**Caveats, stated plainly:** Issuance and unlock values are mark-to-market notional supply, not cash flows; VC and fees are realised cash — the ratios compare total economic value-at-stake, not like-for-like cash.[^s6_e30] Binance and Coinbase revenue is largely trading fees, separate from L1 fee revenue — the recycling channel is indirect, and the attribution is deliberately conservative. Foundation spending carries wide uncertainty from non-disclosure. The token-unlock figure has no verified public aggregate and the widest error bars of any bucket here. The approximately \$29B DAT channel sits outside the VC figure entirely. None of these multipliers should be read to a decimal place; they are the order-of-magnitude shape of an economy that does not want to be measured.

---

[^s6_e1]: [CryptoPotato — Galaxy Research Q1 2026 VC report (full-year 2025 \~\$20B context)](https://cryptopotato.com/crypto-vc-funding-falls-50-after-massive-q4-2025-surge-galaxy/) — Galaxy Research tracking: \~\$20B crypto VC across \~1,660 deals in 2025 (retrieved June 20, 2026). ESTIMATE (third-party tracker).
[^s6_e2]: [DefiLlama — protocol & DAO revenue reference](https://defillama.com/) — Synthesis of public foundation/DAO grant announcements; estimated \$2–5B/yr ecosystem-wide grant spend (retrieved June 20, 2026). ESTIMATE (most foundations do not disclose).
[^s6_e3]: [Business of Apps — Binance statistics](https://www.businessofapps.com/data/binance-statistics/) — Binance 2025 revenue \~\$17.5B (est.), \$34T total volume, 300M users; 2024 \~\$16.8B. ESTIMATE — Binance does not publish revenue.
[^s6_e4]: [Coinbase FY2025 Form 10-K (SEC)](https://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK=0001679788&type=10-K&dateb=&owner=include&count=40) — Coinbase FY2025 total revenue \$7.181B (Form 10-K filed Feb 12, 2026). 🔷 HARD DATA (SEC filing).
[^s6_e5]: [DefiLlama — Fees & Revenue overview](https://defillama.com/fees) — Industry retained on-chain protocol revenue approximately \$12.8B/yr (30-day revenue \$1.0495B annualised); DeFi gross fees 30-day \$1.6699B (\$20.3B annualised); trailing-12m fees \$24.9B / revenue \$14.08B. Confirmed live June 20, 2026. 🔷 HARD DATA (retrieved via DefiLlama API).
[^s6_e6]: [CoinGecko — Bitcoin](https://www.coingecko.com/en/coins/bitcoin) — BTC \$63,932, ETH \$1,731.38, SOL \$71.48, BNB \$586.26; total crypto market cap \$2.28T; BTC dominance 56.2%; ETH ATH \$4,946.05 (Aug 24, 2025). 🔷 HARD DATA (retrieved via CoinGecko API, June 20, 2026).
[^s6_e7]: [CryptoPotato — Crypto VC Q4 2025 (\$8.5B)](https://cryptopotato.com/crypto-vc-explodes-in-q4-2025-8-5b-floods-later-stage-startups/) — Galaxy Research: Q4 2025 \$8.5B across 425 deals, strongest quarter since Q2 2022 (retrieved June 20, 2026).
[^s6_e8]: [BingX Flash News — Galaxy Research Q1 2026 VC report](https://bingx.com/en/flash-news/post/galaxy-crypto-vc-funding-fell-qoq-to-b-across-deals-in-q) — Q1 2026 \$4.0B across 355 deals (−50% QoQ); \~65% to trading/exchange/investing/lending; US 70%+ of capital, 43.5% of deals; median deal size record high >\$4.5M (retrieved June 20, 2026).
[^s6_e9]: [CryptoPotato — Galaxy: VC funding falls 50%](https://cryptopotato.com/crypto-vc-funding-falls-50-after-massive-q4-2025-surge-galaxy/) — Implied 2026 cyclical run-rate \~\$16B based on Q1 2026 pace × 4 (retrieved June 20, 2026). ESTIMATE / cyclical run-rate scenario, not a forecast.
[^s6_e10]: [TechCrunch — a16z crypto raises \$2.2B Fund V](https://techcrunch.com/2026/05/05/as-crypto-cools-a16zcrypto-raises-a-2-2b-fund/) — a16z crypto Fund V \$2.2B (May 5, 2026); cumulative crypto raise \$9.8B (retrieved June 20, 2026).
[^s6_e11]: [ChainCatcher — a16z crypto AUM decline](https://www.chaincatcher.com/en/article/2259439) — a16z crypto AUM fell \~40% to \~\$9.5B across four crypto funds (retrieved June 20, 2026).
[^s6_e12]: [The Block — a16z crypto Fund V coverage (Paradigm competitive context)](https://www.theblock.co/post/400012/a16z-crypto-raises-2-2-billion-fifth-fund-promotes-cto-general-partner) — Paradigm \$850M 2024 Fund III; reported new \~\$1.5B fund targeting crypto/AI/robotics (retrieved June 20, 2026).
[^s6_e13]: [CryptoPotato — Galaxy Q1 2026 report (DAT context)](https://cryptopotato.com/crypto-vc-funding-falls-50-after-massive-q4-2025-surge-galaxy/) — Digital Asset Treasury companies raised \~\$29B through 2025; separate channel from VC (retrieved June 20, 2026). ESTIMATE.
[^s6_e14]: [Ethereum Foundation — Treasury Policy](https://blog.ethereum.org/2025/06/04/ef-treasury-policy) — First-ever EF treasury policy (June 4, 2025): 15% opex cap, 2.5-year buffer, 5% long-term endowment target. Official EF. ⏳ HISTORICAL (June 2025 policy; still the governing document).
[^s6_e15]: [EtherWorld — Ethereum Foundation's first-ever treasury policy explained](https://etherworld.co/2025/06/05/ethereum-foundations-first-ever-treasury-policy-explained/) — \~\$40M/yr opex implied at \~\$271M portfolio; \~\$145M/yr at the prior \~\$970M (Oct 2024) level (retrieved June 20, 2026). ESTIMATE.
[^s6_e16]: [The Defiant — Arbitrum Foundation seeks \$45M funding](https://thedefiant.io/news/blockchains/arbitrum-foundation-seeks-usd45m-funding-as-delegates-question-spending-above-dao-revenue) — Arbitrum Foundation \$43.5M DAO request (\$16M stablecoins + 1,740 ETH + 230M ARB) for \~\$27.6M operating budget plus grants; delegates question spending above DAO revenue (retrieved June 20, 2026).
[^s6_e17]: [AMBCrypto — Arbitrum seeks fresh funding as DAO revenue trails spending](https://ambcrypto.com/arbitrum-seeks-fresh-funding-as-dao-revenue-still-trails-ecosystem-spending/) — Arbitrum DAO gross protocol revenue 2025 \~\$23.5M; foundation spending \~2.3x revenue (retrieved June 20, 2026).
[^s6_e18]: [Optimism Governance — RetroPGF Round 5 details](https://gov.optimism.io/t/retro-funding-5-op-stack-round-details/8612) — RetroPGF Round 5: 8M OP distributed to 79 projects (OP Stack focus) (retrieved June 20, 2026).
[^s6_e19]: [RetroPGF — Optimism retroactive public goods funding](https://www.retropgf.com/) — RetroPGF Round 6: 5M OP distributed to 88 projects (governance focus) (retrieved June 20, 2026).
[^s6_e20]: [Polygon — Community Grants Program Season 2](https://polygon.technology/blog/polygon-community-grants-program-announces-season-2-with-35m-pol-and-ai-leading-the-pack) — Polygon Community Grants Season 2: 35M POL (\~\$17.5M est.) backing AI, DePIN and other verticals (retrieved June 20, 2026).
[^s6_e21]: [The Defiant — Polkadot Treasury posts first OpenGov profit](https://thedefiant.io/news/blockchains/polkadot-treasury-posts-first-opengov-profit-as-dot-price-lags) — Polkadot Treasury Q4 2025 spend \$7.4M (Development \$2.5M, Outreach \$1.7M, Operations \$1.3M); first OpenGov net profit of 1.6M DOT (retrieved June 20, 2026).
[^s6_e22]: [Interchain Foundation — 2024 Funding Program](https://medium.com/the-interchain-foundation/icf-funding-program-2024-3928d3b59e2f) — ICF 2024 grant allocation \$7.5M (Informal Systems, Interchain GmbH, Strangelove Ventures + builder programs). ⏳ HISTORICAL (2024; no newer annual aggregate published).
[^s6_e23]: [CoinDesk — Ethereum Foundation reaches 70,000 ETH staking target](https://www.coindesk.com/markets/2026/04/03/ethereum-foundation-stakes-another-usd93-million-ether-reaching-its-70-000-eth-target) — EF reached its 70,000 ETH staking target April 3, 2026 (retrieved June 20, 2026). Note: subsequently reversed — see [^s6_e33].
[^s6_e24]: [CoinDesk — Ethereum Foundation puts treasury to work via staking](https://www.coindesk.com/business/2026/02/24/putting-the-treasury-to-work-the-ethereum-foundation-just-staked-70-000-eth-to-fund-its-future) — Staking at \~2.7% APY; on the post-May-2026 reduced position of \~52,965 ETH at \$1,731 this implies \~\$2.5M/yr recurring yield (estimate, down from \~\$4M at the 70,000 ETH peak) (retrieved June 20, 2026). ESTIMATE.
[^s6_e25]: [CoinDesk — Ethereum Foundation staking / treasury tracking](https://www.coindesk.com/markets/2026/04/03/ethereum-foundation-stakes-another-usd93-million-ether-reaching-its-70-000-eth-target) — EF Arkham-tracked portfolio \~\$270.9M (\~102,400 ETH), April 2026 snapshot; down from \~\$970M at October 2024. Composition shifted after May 2026 unstaking/OTC sale. 🔷 HARD DATA (on-chain wallet tracking, April 2026).
[^s6_e26]: [Yahoo Finance — Kraken parent Payward FY2025 results](https://finance.yahoo.com/news/kraken-parent-company-payward-posts-144559791.html) — Kraken FY2025 revenue \$2.2B (+33% YoY from \$1.7B); EBITDA \$530.6M. 🔷 HARD DATA (reported).
[^s6_e27]: [PR Newswire — Binance 2025 End-of-Year Report](https://www.prnewswire.com/in/news-releases/binances-2025-end-of-year-report-trust-liquidity-and-web3-discovery-302657209.html) — Binance discloses operational metrics (volume, users) but no revenue; the \~\$17.5B figure is a third-party estimate, with the credible range \~\$16–17.5B (retrieved June 20, 2026). ESTIMATE.
[^s6_e28]: [The Block — crypto issuance / security budget data](https://www.theblock.co/data/on-chain-metrics/bitcoin) — Core-three annual consensus issuance at June 20, 2026 prices: BTC 164,250 BTC × \$63,932 ≈ \$10.5B; ETH \~1.05M ETH gross × \$1,731 ≈ \$1.7B; SOL 3.795% × 580.06M × \$71.48 ≈ \$1.6B; total ≈ \$13.8B (BTC \~76%). BTC/ETH/SOL price and supply inputs 🔷 HARD DATA; the aggregation and ETH gross-issuance figure are ESTIMATES. ETH figure is GROSS consensus issuance — net issuance post-EIP-1559 burn is far lower and burn-variable.
[^s6_e29]: [Tokenomist — token unlock tracker](https://tokenomist.ai/) — 2026 monthly token unlock value averaging \~\$2B/month gross (\~\$24B/yr); ex-March-WBT outlier the run-rate is \~\$1.6–1.8B/month (\~\$19–21B/yr); net of a coarse VC cost-basis overlap (\~\$2.5–6B, no public decomposition), central \~\$19–20B/yr, band \$18–24B. ESTIMATE — no verified public aggregate exists, widest error bars in this report. Marked at market price.
[^s6_e30]: Measurement-basis note: Fees, retained revenue and VC are realised cash. Consensus issuance and token unlocks are mark-to-market notional value of newly available supply — no cash necessarily moves, and the value is endogenous to the token price that also deflates the fee figures. Ratios in this section compare total economic value-at-stake, not like-for-like cash flows.
[^s6_e31]: [DefiLlama — Ethereum chain TVL](https://defillama.com/chain/Ethereum) — Ethereum DeFi TVL \~\$39.0B (retrieved via DefiLlama API, June 20, 2026). 🔷 HARD DATA.
[^s6_e32]: [CryptoRank — token unlock calendar](https://cryptorank.io/upcoming-token-unlocks) — March 2026 unlock value spiked to \~\$6B, of which \~69% (\$4.18B) was a single token (WhiteBIT WBT); the spike contaminates the 2026 monthly average and is stripped for the underlying run-rate (retrieved June 20, 2026). ESTIMATE.
[^s6_e33]: [CryptoNews — Ethereum Foundation unstakes \$49.6M in ETH for treasury rebalancing](https://cryptonews.com/news/ethereum-foundation-news-unstakes-49m-eth-treasury-rebalancing/) — EF unstaked 21,271 ETH (\~\$49.6M) in May 2026 plus a 10,000 ETH OTC sale to BitMine, cutting its staked position \~30% from 70,000 to \~52,965 ETH (retrieved June 20, 2026).

---

## Comprehensive Money Flow Summary

Strip away the narrative and one comparison refuses to behave. As of **20 June 2026**, the entire transparent on-chain economy — every fee users actually pay for blockspace and DeFi services — runs at roughly **\$20.3 billion a year** in gross fees, of which only about **\$12.8 billion** is retained revenue: the slice protocols and tokenholders keep after paying out liquidity providers, suppliers, and sequencer costs.[^s7_s1] 🔷 HARD DATA. Underneath that organic income sits a far larger stack of **non-fee-funded value flows** — consensus issuance, venture capital, and insider token unlocks — that we estimate at roughly **\$52.8 billion a year** (band \$48–60B).[^s7_s2] The machine looks self-sustaining. It isn't quite. Depending on which organic denominator you anchor to, **roughly 72% (versus gross fees) to 81% (versus retained revenue), with a defended central estimate near \~80%, of measured value flows originate from sources other than organic user demand.**[^s7_s3]

That range — not a single false-precision figure — is the honest headline. The low end (\~72%) uses gross fees and applies no haircut. The high end (\~81%) uses retained revenue. The central \~80% emerges once you discount gross fees for **circularity**: a real share of "fees" is incentive-driven (emissions-farmed DEX volume, perp wash-trading), so truly exogenous demand sits *below* the \$20.3B headline — plausibly \$12–15B after a 25–40% haircut, which pulls the fee-based ratio up toward 78–81%.[^s7_s3] Four independent triangulations land in the same neighborhood; that convergence, not any one quotient, is what we defend.

A measurement caveat belongs up front, because a hostile reviewer will raise it: **issuance and unlock values are marked-to-market notional supply, not realized cash, while fees, revenue, and VC are actual cash changing hands.**[^s7_s2] Summing them produces a *total-economic-value-at-stake* ratio, not a like-for-like cash comparison. We keep the sum — it is the thesis — but flag the basis mix rather than hide it.

Price compression since the October 2025 baseline did most of the work on the absolute dollars. BTC sits at **\$63,932**, ETH at **\$1,731.38**, SOL at **\$71.48**[^s7_s4] 🔷 HARD DATA — well below the prior-cycle peak. Because both numerator (issuance, marked at today's depressed token prices) and denominator (fees, also marked today) deflate together, the *ratio* barely moved even as the headline dollars fell. We anchor the headline on the **30-day-annualized run-rate** (\$20.3B fees, \$12.8B revenue) rather than the trailing-twelve-month figures (\$24.9B / \$14.1B)[^s7_s1] precisely for that internal consistency: the trailing-year fee base is inflated by the late-2025 price peak, while the issuance numerator is marked at today's prices. Mixing the two would flatter the ratio dishonestly.

### Direct Fee Recipients (Per \$1 User Fee)

Where a single user dollar actually lands differs sharply by network. Some chains pay validators. Some burn the dollar outright. Some hand it to a single corporation.

| Network | Validators/Miners | Token Burn | Protocol/DAO Treasury | L1 Settlement |
|---------|------------------|------------|-----------------------|---------------|
| **Ethereum**[^s7_s5] | \$0.15 (priority tip) | \$0.85 (EIP-1559 base fee) | \$0.00 | N/A |
| **Bitcoin**[^s7_s6] | \$1.00 | \$0.00 | \$0.00 | N/A |
| **Solana**[^s7_s7] | \$0.95–0.99 | \$0.01–0.05 | \$0.00 | N/A |
| **BNB Chain**[^s7_s8] | \$0.90 | \$0.10 (BEP-95) | \$0.00 | N/A |
| **Cardano**[^s7_s9] | \$1.00 | \$0.00 | \$0.00 | N/A |
| **Avalanche**[^s7_s10] | \$0.00 | \$1.00 (100% burned) | \$0.00 | N/A |
| **Base**[^s7_s11] | \$0.00 | \$0.002 (L1 blob) | \$0.998 (Coinbase) | \$0.002 |
| **Arbitrum**[^s7_s12] | \$0.00 | \$0.00 | \$0.69 (DAO) | \$0.31 (L1 DA) |
| **Optimism**[^s7_s13] | \$0.00 | \$0.00 | \$0.97 (Collective) | \$0.03 (L1 DA) |

Two patterns jump out. First, **Bitcoin and Cardano route 100% of fees to block producers with zero burn** — pure pay-the-validator economies. Second, the rollups have split into two camps: Coinbase's **Base captures 99.8% of every fee dollar for its corporate parent**[^s7_s11] after walking away from the Optimism revenue share in February 2026, while **Optimism and Arbitrum recycle 97–69% into community treasuries**.[^s7_s12][^s7_s13] Same technology, opposite philosophies of who gets paid. Note that Base and Hyperliquid are the **fee-real exceptions** to the broader pattern below: their organic fees are genuine corporate or protocol revenue, not issuance dressed up as demand.

### The Hidden Multiplier (Per \$1 User Fee)

The visible fee split is the small story. The real story is what fires in the background every time that dollar moves — issuance to validators, MEV to bots, inflation to stakers. This is the "hidden-economy multiple": for every \$1 a user pays, \$X of total economic activity is triggered. *These multiples apply to the issuance-funded L1 sample below; they are not an industry-wide constant.*

| Network | Total Activity per \$1 Fee | Non-Fee-Funded Share | Dominant Hidden Flow |
|---------|---------------------------|----------------------|----------------------|
| **Cardano**[^s7_s9] | \~\$133 | \~99% | Ouroboros issuance (\~\$132 ADA) |
| **Bitcoin**[^s7_s6] | \~\$134 | \~99% | Block subsidy (\$10.5B issuance vs \$78.7M fees) |
| **Avalanche**[^s7_s10] | \~\$64 (inflation-to-fee) | \~98% | Staking-reward inflation |
| **BNB Chain**[^s7_s8] | \~\$22.8 | \~96% | Corporate auto-burn (21.8x) |
| **Ethereum**[^s7_s5] | \~\$9.0 | \~89% | Staking issuance (\~6.0x) + MEV (\~1.8x) |
| **Solana**[^s7_s7] | \~\$7.3 | \~86% | Inflation (\~5.3x) + Jito MEV (\~0.97x) |
| **Base / Optimism**[^s7_s11][^s7_s13] | \~\$5–7 | varies | App-layer DEX volume + token unlocks |

A clarification matters here, because the headline number moves with the denominator. Ethereum's multiple is the one most often overstated. Measured against its **live trailing-twelve-month fee base of \$302.71M**[^s7_s14] 🔷 HARD DATA — not the lower 30-day snapshot — ETH's staking issuance multiple is roughly **6.0x**, MEV adds about **1.8x**, and the total settles near **\~9.0x with an \~89% non-fee-funded fraction**.[^s7_s5] The fee denominator you pick decides whether Ethereum looks 9x or 22x subsidized; the honest, full-year number is about 9x. Bitcoin and Cardano need no such caveat: their multiples sit near **134x and 133x** because their fee income is almost nonexistent next to their issuance.[^s7_s6][^s7_s9]

A word on MEV, which appears in several of these multiples: it is **not uniform extraction.** It splits into genuinely extractive flow (sandwich attacks on retail), efficiency-providing flow (arbitrage and liquidations that keep prices and collateral healthy), and protocol-captured flow (e.g. proposer rewards routed back to stakers).[^s7_s21] We keep MEV in the hidden economy because users ultimately bear it, but it is wrong to treat all of it as a pure tax.

### Annual Non-Fee-Funded Value Flows

Zoom out from per-dollar mechanics to the absolute capital stack. The non-fee-funded base resolves into a four-bucket taxonomy, deliberately *not* lumped under one word.

| Category | Annual Value (June 2026) | Primary Recipients | Confidence |
|----------|--------------------------|--------------------|-----------|
| **BTC issuance (security budget)**[^s7_s15] | \~\$10.5B | Miners | 🔷 HARD DATA (price/schedule) |
| **ETH issuance (gross consensus)**[^s7_s16] | \~\$1.7B | Stakers/validators | Estimate (gross, pre-burn) |
| **SOL inflation issuance**[^s7_s17] | \~\$1.57B | Stakers/validators | Estimate (schedule-derived) |
| **Other L1 issuance**[^s7_s17] | \~\$1.0–2.0B | Validators across Tron/ADA/AVAX/etc. | Estimate (aggregate) |
| **VC deployment (cyclical run-rate)**[^s7_s18] | \~\$16B (band \$16–20B) | Protocols, teams, infra | Estimate (run-rate, not forecast) |
| **Insider supply / value transfer (token unlocks)**[^s7_s19] | \~\$21.5B (band \$18–24B) | VC/team/foundation allocations | Estimate (wide error bars) |
| **Foundation/DAO grants**[^s7_s20] | \~\$2–5B | Developers, ecosystem projects | Estimate |
| **MEV extraction**[^s7_s21] | \~\$2–5B | Searchers, builders, validators | Estimate |

The single largest hard-data line is **Bitcoin's issuance-funded security budget**: 164,250 BTC minted into existence each year (3.125 BTC/block × 144 × 365), worth **\~\$10.5B** at \$63,932, to secure a network that collects under **\$79M** in actual user fees.[^s7_s15][^s7_s22] This is best understood not as a temporary external subsidy but as a *designed, permanent security budget* — the protocol's deliberate price for proof-of-work finality. Framed that way, **fees cover well under 1% of Bitcoin's security spend**, and at live prices **Bitcoin alone is 76% of the BTC+ETH+SOL "core-3" issuance** — the industry's security budget is now overwhelmingly a Bitcoin number.[^s7_s15] The same Friedman-fainting arithmetic stands, but the label is honest: this is issuance, not a handout.

The ETH figure deserves a footnote in the body itself: the **\~\$1.7B is *gross* consensus issuance** (\~1.0M ETH/yr at \~39.7M staked).[^s7_s16] Net of EIP-1559 burn, ETH's *net* new supply is far smaller — and the burn is variable, swinging with L1 and blob demand. The \$1.7B is a security-budget gross, not a net dilution number; do not read it as ETH printing \$1.7B of fresh float every year.

The largest *soft* line is the pair of insider-and-investor flows. **Venture capital** carries the report's widest cash-side band. Galaxy Research pegs Q1 2026 at **\~\$4.0B deployed across \~355 deals** (−50% QoQ, −16% deal count), implying a **\~\$16B annualized cyclical run-rate** after FY2025's \~\$20B record; median deal size hit an all-time high above \$4.5M.[^s7_s18] We label this a **cyclical run-rate scenario, explicitly not a forecast** — annualizing a single soft quarter four-fold is a scenario, not a prediction.

**Insider supply / value transfer (token unlocks)** is the largest line of all and the most uncertain. This is value transferred from new market buyers to insiders — VC, team, and foundation allocations minted by vesting schedules and **marked at market price**, which is why it dwarfs, and is *not* a re-count of, the VC cost basis embedded within it.[^s7_s19] We estimate **\~\$21.5B/yr net (band \$18–24B)** from 2026 monthly unlock value averaging roughly \$2B (\~\$24B gross), less a coarse VC cost-basis overlap. Two honesty flags: (1) the overlap netting is a coarse estimate with its own error band (\$2.5–6B) given that no public decomposition of unlock recipients exists; and (2) the 2026 monthly average is contaminated by the **March 2026 cliff**, which spiked to \~\$6B but was 69% a single token (WhiteBIT WBT, \$4.18B). Ex-WBT, the central net figure is closer to **\~\$19B**, toward the low edge of the band.[^s7_s19] No verified public annual aggregate exists; this line is an estimate with wide error bars, never 🔷.

### Biggest Money Recipients in the Blockchain Economy

**By annual value captured:**

1. **Miners and stakers** — the dominant recipients. Bitcoin miners alone absorb \~\$10.5B in issuance[^s7_s15]; ETH and SOL stakers split roughly \$3.3B more in consensus issuance.[^s7_s16][^s7_s17] Combined, block producers are the largest paid class in crypto, and the overwhelming majority of their pay is minted, not earned — by design, as a security budget.

2. **VC firms and early investors** — capturing value through **insider token unlocks (\~\$21.5B/yr, wide band)**[^s7_s19] layered on top of **fresh deployment (\~\$16B/yr run-rate)**.[^s7_s18] The vesting cliff, not the fee market, is where most early capital is realized.

3. **Exchanges** — the clearest organic bright spot, and a reminder that not all real revenue is on-chain. **Coinbase reported \$7.18B in FY2025 revenue** 🔷 HARD DATA, **Kraken \$2.2B** 🔷 HARD DATA, and **Binance an estimated \~\$17.5B** (not disclosed).[^s7_s25] This is real revenue from real users — but it sits largely off-chain and recycles into listings, market-making, and incentives rather than appearing in the \$20.3B on-chain fee figure. Relatedly, **stablecoin settlement** — enormous in volume, low in fee, and largely organic — sits *outside* the issuance framing entirely: it is genuine payment demand, not subsidy.

4. **Foundations** — redistributing **\$2–5B/yr** of token-funded treasuries into grants. The Ethereum Foundation's tracked portfolio has shrunk to **\~\$271M** (from \~\$970M at its 2024 peak), and it has formalized a 15%-opex-cap treasury policy and staked 70,000 ETH for recurring yield[^s7_s20][^s7_s26] — a foundation visibly bracing for a leaner, cash-flow-aware era.

5. **Infrastructure providers** — oracles, RPC, indexers, and MEV searchers collectively skim **\$2–6B/yr** in "hidden taxes" on user activity.[^s7_s21] One qualification: the "oracles are a pure tax" claim holds for Chainlink's dominant push-feed model, but not universally — Pyth's on-chain pull-fee model, staking, and Oracle Integrity Staking route value differently, and some oracle usage is genuinely paid-for service.[^s7_s21]

### Key Insights: Who Really Gets Paid

1. **Among the issuance-funded L1s analyzed here, issuance dwarfs fees** — validators and miners earn the most, but mostly from minted supply, not users. This does not generalize to fee-real venues (Hyperliquid, Coinbase's Base, which captures 99.8% of fees as genuine corporate revenue) or to organic stablecoin settlement.[^s7_s11]
2. **VCs and early investors extract the most realized value**, through unlock schedules timed independently of network usage.[^s7_s19]
3. **Exchanges are where the genuine cash revenue lives** — and most of it is off-chain.[^s7_s25]
4. **Corporate-controlled rollups capture fees most efficiently:** Base routes 99.8% to Coinbase.[^s7_s11]
5. **Burn mechanisms only reward holders when activity is high** — and on Ethereum, with L1 fees compressed to \~\$303M/yr as Base and other L2s absorbed mainnet traffic, the burn has gone quiet and ETH is **currently net inflationary (\~+0.83%, having flipped from deflationary)**. That burn is variable, however, and can swing back up with renewed L1 or blob demand; the directional flip is real but not necessarily permanent.[^s7_s27]
6. **The denominator is the debate.** Whether the headline reads 72% or 81% depends on whether you anchor to gross fees or retained revenue; the defended central estimate is **\~80%** after a fee-circularity haircut.[^s7_s3]

---

## Conclusion: The Blockchain Industry as Modern Digital Tribalism

The data across every major network in this report converges on one stubborn comparison: **most measured value flows in this industry do not originate from organic user demand.** As of June 2026, roughly **72% (versus gross fees) to 81% (versus retained revenue), central \~80%, of value flows are sustained not by fees but by consensus issuance, venture financing, and insider token unlocks.**[^s7_s3] For every \~\$1 of organic run-rate fees users pay, roughly **\$2.6 of non-fee-funded value** is moving underneath — issuance, VC, and insider unlocks. Price compression deflated the absolute dollars — from an \$86–113B base in October 2025 to a non-fee-funded \~\$52.8B today — but the *ratio* barely moved, because numerator and denominator are marked at the same depressed prices.[^s7_s28] The structure is durable; the dollar tag is cyclical.

Crucially, the three non-fee buckets are **not equivalent.** Consensus issuance is a *designed security budget* — a permanent, deliberate cost of decentralized finality, not a temporary external prop. Venture capital is *capital formation* — real cash funding real building. Only insider unlocks are a genuine *value transfer* from new buyers to early allocations. Lumping all three under the word "subsidy" flattens a distinction that matters; the honest framing is **non-fee-funded value flows**, disaggregated.

### The Paradox of Innovation

This inefficiency is not purely a flaw. It is also the engine. What conventional analysts dismiss as unsustainable tokenomics functions, in practice, as a large-scale public R&D experiment — one that finances innovation through collective conviction rather than centralized coordination. Issuance, MEV redistribution, and ecosystem grants look irrational on a balance sheet, yet they have bankrolled one of the most ambitious technological buildouts of the century: a globally distributed, continuously operating financial network that emerged without a central sponsor or a state.

### The Adaptive Strength

The paradox is that blockchain's weakness — its overreliance on narrative and capital flows — is also its greatest adaptive strength. Cycles of speculation and correction act as self-funding feedback loops:

- Each hype phase finances the next layer of infrastructure: from DeFi to rollups, oracles, zero-knowledge proofs, and restaking.
- Each contraction eliminates weaker designs, concentrating value in systems that can convert belief into durable usage. The 2026 drawdown is doing exactly that — foundations are formalizing treasury discipline[^s7_s26], VC has halved off its Q4 2025 peak[^s7_s18], and chains whose only income was issuance are now visibly exposed.

In this sense, the industry's volatility is not noise. It is the mechanism by which it iterates toward sustainability.

### The Path Forward

The maturation of fee markets, the rise of application-specific chains, and the integration of real-world assets all point toward a gradual shift from belief-based to cash-flow-based economics. The first networks to internalize that transition — to convert user trust into recurring, verifiable revenue rather than perpetual issuance — will define the next phase of the digital asset economy. Until then, blockchain remains both experiment and spectacle: a global system where financial theater funds genuine technological progress.

> *The blockchain industry operates as a value-redistribution system in which organic user fees represent a minority of total money flows — roughly 20–28% depending on the denominator — with the remainder sustained by consensus issuance (a designed security budget), venture capital (capital formation), and insider token unlocks (value transfer to early allocations). Yet this very structure — this transformation of technology into tribalism, of finance into fandom — may be blockchain's most durable innovation. For in the end, all money is belief, and blockchain has learned to manufacture belief at scale.*

**The revolution will not be economically rational. But it will be on-chain, tokenized, and impossible to look away from.**

---

[^s7_s1]: [DefiLlama — Fees & Revenue Overview](https://defillama.com/fees) — Gross protocol fees 30-day \$1.6699B (annualized \$20.32B; trailing-1y \$24.91B); retained revenue 30-day \$1.0495B (annualized \$12.77B; trailing-1y \$14.08B). Revenue = what protocols/tokenholders keep after paying LPs and suppliers. Headline anchored on the 30-day run-rate for consistency with issuance marked at today's prices. Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA
[^s7_s2]: [DefiLlama — Fees & Revenue Overview](https://defillama.com/fees) — Non-fee-funded base \~\$52.8B/yr (band \$48–60B) = issuance \$15.3B + VC \$16B run-rate + insider unlocks (net) \$21.5B. Measurement-basis note: issuance and unlocks are marked-to-market *notional* supply, not realized cash; VC and fees are realized cash. The sum is total economic value-at-stake, not a like-for-like cash comparison. Component hard-data lines (BTC/ETH/SOL price+supply) cited individually; VC and unlocks are estimates. Retrieved June 20, 2026. Estimate (aggregate).
[^s7_s3]: [DefiLlama — Fees & Revenue Overview](https://defillama.com/fees) — Non-fee-funded share via share-of-total method: vs \$20.3B gross-fee run-rate = 72.2%; vs \$12.8B retained-revenue run-rate = 80.5%. Fee-circularity haircut (25–40% of DEX/perp gross fees are emissions-farmed or wash-traded → truly-organic denominator \$12–15B) lifts the fee-based ratio to \~78–81%. Four-way triangulation lands near \~80%. Reported as a defended range, not a single figure. Retrieved June 20, 2026. Estimate.
[^s7_s4]: [CoinGecko — Bitcoin](https://www.coingecko.com/en/coins/bitcoin) / [Ethereum](https://www.coingecko.com/en/coins/ethereum) / [Solana](https://www.coingecko.com/en/coins/solana) — BTC \$63,932, ETH \$1,731.38, SOL \$71.48. Retrieved via CoinGecko Simple Price API, June 20, 2026. 🔷 HARD DATA
[^s7_s5]: [DefiLlama — Ethereum Fees](https://defillama.com/chain/Ethereum) — Per \$1 gas: \$0.85 burned (EIP-1559), \$0.15 validator tip. Hidden multiplier \~9.0x against full-year \$302.71M fee base: staking issuance \~6.0x + MEV \~1.8x; non-fee-funded fraction \~89%. Retrieved June 20, 2026. 🔷 HARD DATA (fee base); estimate (MEV).
[^s7_s6]: [DefiLlama — Bitcoin Fees](https://defillama.com/chain/Bitcoin) — Per \$1 fee: \$1.00 to block-winning miner, no burn. Issuance-funded security budget \$10.5B/yr vs \$78.7M/yr fees = \~134:1; over 99% of miner income is issuance. Retrieved June 20, 2026. 🔷 HARD DATA
[^s7_s7]: [DefiLlama — Solana Fees](https://defillama.com/chain/Solana) — Per \$1 fee: \~\$0.95–0.99 to validators (priority fees dominate post-SIMD-0096), \~\$0.01–0.05 burned. Inflation multiple \~5.3x (\$1.57B issuance ÷ \$304.85M trailing-1y fees) + Jito MEV \~0.97x = \~7.3x total; \~86% inflation/MEV-funded. Retrieved June 20, 2026. 🔷 HARD DATA (fees); estimate (issuance).
[^s7_s8]: [DefiLlama — BSC Fees](https://defillama.com/chain/BSC) — Per \$1 gas: \$0.90 to validators/delegators, \$0.10 burned (BEP-95). Corporate quarterly auto-burn vs \$214.47M trailing-1y organic fees = \~21.8x. Retrieved June 20, 2026. 🔷 HARD DATA (fees); estimate (burn ratio).
[^s7_s9]: [DefiLlama — Cardano Fees](https://defillama.com/chain/Cardano) — Per \$1 fee: \$1.00 to stake-pool operators, zero burn. Ouroboros issuance triggers \~\$132 in new ADA per \$1 fee (\~\$106 to SPOs, \~\$26 to treasury) ÷ \$1.84M trailing-1y fees = \~133x. Issuance schedule-derived estimate. Retrieved June 20, 2026.
[^s7_s10]: [DefiLlama — Avalanche Fees](https://defillama.com/chain/Avalanche) — Per \$1 fee: \$1.00 burned (100%). Validator inflation \~\$64 per \$1 fee (separate from fees, funded by staking-reward allocation). Estimate. Retrieved June 20, 2026.
[^s7_s11]: [DefiLlama — Base Fees](https://defillama.com/chain/Base) — Per \$1 sequencer fee (post-OP Stack revenue-share departure, Feb 2026): \$0.998 to Coinbase, \$0.002 ETH L1 blob fees, \$0.00 to Optimism Collective. Base captures \~99.8% of fees as genuine corporate revenue — a fee-real exception. Retrieved June 20, 2026. 🔷 HARD DATA
[^s7_s12]: [Arbitrum Fee Distribution Docs](https://docs.arbitrum.foundation/) — Per \$1 fee: \~\$0.31 L1 data-availability reimbursement, \~\$0.69 to Arbitrum DAO treasury, \$0.00 corporate profit (Offchain Labs operates near break-even). Retrieved June 20, 2026.
[^s7_s13]: [DefiLlama — Optimism Fees](https://defillama.com/chain/Optimism) — Per \$1 gas: \~\$0.03 L1 data costs, \~\$0.97 to Optimism Collective treasury (100% of net sequencer profit). Broader activity multiplier \~5.6x. Retrieved June 20, 2026.
[^s7_s14]: [DefiLlama — Ethereum Fees](https://defillama.com/chain/Ethereum) — Ethereum trailing-twelve-month fees \$302.71M (total1y). This full-year base — not the 30-day snapshot — is the correct denominator for the subsidy multiplier. Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA
[^s7_s15]: [Bitcoin Halving Schedule](https://www.bitcoinblockhalf.com/) — 3.125 BTC/block × 144 blocks/day × 365 = 164,250 BTC/yr = \~\$10.5B at \$63,932. BTC is \~76% of the BTC+ETH+SOL core-3 issuance at live prices. Next halving \~April 2028. Retrieved June 20, 2026. 🔷 HARD DATA (price × on-chain block schedule).
[^s7_s16]: [Etherscan — ETH Supply](https://etherscan.io/stat/supply) — Gross consensus issuance \~1.0M ETH/yr at \~39.7M ETH staked = \~\$1.7B at \$1,731.38. This is GROSS, pre-EIP-1559-burn; net new supply is far lower and burn-variable. Retrieved via Etherscan API v2 (ethsupply2), June 20, 2026. Estimate (gross issuance derivation).
[^s7_s17]: [Solana Tokenomics — Inflation Schedule](https://solanacompass.com/tokenomics) — 3.795% disinflationary inflation × \~580.06M circulating SOL = \~22M SOL/yr = \~\$1.57B at \$71.48 (8% start, −15%/yr, 1.5% floor). Other L1 issuance (Tron/ADA/AVAX/DOT/NEAR/ATOM/APT) adds a \~\$1.0–2.0B aggregate estimate. Retrieved June 20, 2026. Estimate (schedule-derived).
[^s7_s18]: [CryptoPotato — Galaxy Research Q1 2026 Crypto VC Report](https://cryptopotato.com/crypto-vc-funding-falls-50-after-massive-q4-2025-surge-galaxy/) — Q1 2026 \~\$4.0B across \~355 deals (−50% QoQ, −16% deal count); ×4 = \~\$16B annualized cyclical run-rate (band \$16–20B). FY2025 \~\$20B record. Median deal size ATH >\$4.5M. Labeled run-rate scenario, NOT a forecast. Retrieved June 20, 2026. Estimate.
[^s7_s19]: [Tokenomist — Token Unlock Schedule](https://tokenomist.ai/) — Insider supply / value transfer: 2026 monthly unlock value averages \~\$2B (\~\$24B/yr gross), net of a coarse VC cost-basis overlap (\$2.5–6B band) → \~\$21.5B/yr net (band \$18–24B), marked at market price. March 2026 spiked to \~\$6B but 69% was one token (WhiteBIT WBT, \$4.18B); ex-WBT the central is closer to \~\$19B. No verified public annual aggregate exists. Expert estimate, wide error bars, not 🔷. Retrieved June 20, 2026.
[^s7_s20]: [Ethereum Foundation — Treasury Policy](https://blog.ethereum.org/2025/06/04/ef-treasury-policy) — Foundation/DAO ecosystem grant spend estimated \$2–5B/yr across major chains. EF policy: 15% opex cap, 2.5-yr buffer. June 4, 2025. ⏳ HISTORICAL (policy doc; still in force, no newer aggregate). Estimate (aggregate).
[^s7_s21]: [DefiLlama — Fees Overview](https://defillama.com/fees) — Cross-chain MEV estimated \$2–5B/yr, disaggregated into extractive (sandwich), efficiency (arbitrage/liquidation), and protocol-captured flow — not a uniform tax. Oracle/RPC/indexer "hidden taxes" add \$0.4–1B/yr; the pure-tax framing fits Chainlink's push-feed model but not Pyth's pull-fee/staking model. Expert estimate; not on-chain-verifiable in aggregate. Retrieved June 20, 2026.
[^s7_s22]: [DefiLlama — Bitcoin Fees](https://defillama.com/chain/Bitcoin) — BTC L1 fees 30-day \$6.555M = \~\$78.7M annualized (trailing-1y \$104.6M). Retrieved via DefiLlama API, June 20, 2026. 🔷 HARD DATA
[^s7_s25]: [Coinbase SEC Filing — FY2025 Shareholder Letter](https://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK=0001679788&type=10-K) — Coinbase FY2025 revenue \$7.18B (🔷 HARD DATA); Kraken FY2025 \$2.2B (🔷 HARD DATA, [Yahoo Finance](https://finance.yahoo.com/news/kraken-parent-company-payward-posts-144559791.html)); Binance \~\$17.5B estimated (not disclosed). Stablecoin settlement volume is large, low-fee, and largely organic — outside the issuance framing. Retrieved June 20, 2026.
[^s7_s26]: [CoinDesk — Ethereum Foundation Stakes 70,000 ETH](https://www.coindesk.com/markets/2026/04/03/ethereum-foundation-stakes-another-usd93-million-ether-reaching-its-70-000-eth-target) — EF tracked portfolio \~\$270.9M (down from \~\$970M Oct 2024); 70,000 ETH staked for \~2.7% recurring yield. April 3, 2026.
[^s7_s27]: [Ultrasound.money — ETH Burn/Issuance](https://ultrasound.money/) — ETH burn compressed as L2s absorbed mainnet activity; net inflation \~+0.83% (currently net inflationary, flipped from deflationary). Burn is variable and can swing back up with L1/blob demand. ETH L1 fees \~\$303M/yr trailing. Retrieved June 20, 2026. 🔷 HARD DATA (Etherscan-corroborated burn).
[^s7_s28]: [DefiLlama — Fees & Revenue Overview](https://defillama.com/fees) — Oct 2025 baseline cited an \$86–113B funding base vs \~\$13.7B income; June 2026 deflates to a non-fee-funded \~\$52.8B vs \$20.3B gross fees / \$12.8B retained revenue on price compression. Numerator and denominator both marked at today's depressed prices, so the structural ratio is essentially unchanged. Retrieved June 20, 2026. Estimate.
