# Style Guide - Blockchain Payment Flow Analysis

**Version:** 1.0
**Last Updated:** October 31, 2025
**Applies To:** All markdown documents in repository

---

## Core Writing Principles

### 1. Tone and Voice

**Objective:** Maintain institutional-grade professionalism with absolute neutrality.

**Rules:**
- Write in third person or first-person plural ("we analyzed," not "I think")
- Use active voice where possible
- Avoid emotional language or exclamations
- No emojis except in commit messages (where required by automation)
- Present facts, not opinions

**Examples:**

❌ **Wrong:**
```
Bitcoin is absolutely crushing it this week! The price action is incredibly
bullish and we're definitely going to see $200K soon. This is so exciting!
```

✅ **Correct:**
```
Bitcoin increased 12.3% over the past 7 days, reaching $104,500. Historical
analysis of similar price movements (2017, 2021) suggests potential
continuation, though increased volatility typically follows rapid appreciation.
```

---

### 2. Neutrality Standards

**Forbidden Terms:**
- Bullish, bearish (use "upward trend," "downward trend")
- Moon, dump, pump, rekt
- FUD, FOMO, hopium, copium
- Exciting, amazing, revolutionary, game-changing
- Definitely, certainly, obviously (use "data suggests," "likely")
- Scam, rug pull (use "project discontinuation," "liquidity removal event")

**Acceptable Alternatives:**

| ❌ Avoid | ✅ Use Instead |
|---------|---------------|
| "Bullish price action" | "Upward price momentum" |
| "Bearish sentiment" | "Risk-off positioning" |
| "Going to the moon" | "Experiencing significant appreciation" |
| "This is a scam" | "Red flags identified: [specific issues]" |
| "Revolutionary technology" | "Novel technical approach with [specific innovation]" |
| "Definitely will happen" | "Historical precedent suggests X% probability" |
| "Amazing performance" | "Outperformed benchmark by X%" |
| "Terrible investment" | "Risk-adjusted returns below threshold" |

---

### 3. Data Presentation

**Always Include:**
- Specific numbers, not ranges (unless uncertainty is genuine)
- Source attribution
- Timestamp or data collection date
- Comparison context (vs what benchmark?)
- Statistical significance where applicable

**Format Examples:**

❌ **Wrong:**
```
Bitcoin has gone up a lot recently compared to other cryptos.
```

✅ **Correct:**
```
Bitcoin increased 8.3% over 30 days (Oct 1-31, 2025), outperforming the
median altcoin return of 2.1% by 6.2 percentage points [1].

[1] CoinGecko, Oct 31, 2025, https://www.coingecko.com
```

---

## Document Structure Standards

### Markdown File Template

```markdown
# [Document Title]

**Last Updated:** [Date]
**Data Current As Of:** [Date]
**Update Frequency:** [Daily/Weekly/Monthly]
**Analyst:** [Human/Agent Name]

---

## Executive Summary

[3-5 sentence summary of key findings]

**Key Metrics:**
- Metric 1: Value (Source, Date)
- Metric 2: Value (Source, Date)
- Metric 3: Value (Source, Date)

---

## 1. [Section Title]

### Subsection

[Content with inline citations [1]]

---

## [Final Section]. References

1. **Source Name** - URL - Description
2. **Source Name** - URL - Description

---

**Document Version:** X.Y
**Last Updated:** [Date]
**Next Review:** [Date]
```

---

### Heading Hierarchy

**Rules:**
- H1 (`#`) - Document title only (one per file)
- H2 (`##`) - Major sections, numbered (e.g., "## 1. Introduction")
- H3 (`###`) - Subsections, not numbered
- H4 (`####`) - Sub-subsections, sparingly used
- H5-H6 - Avoid unless absolutely necessary

**Example Structure:**
```markdown
# Document Title

## 1. First Major Section

### First Subsection

Content here...

#### Detail Point (if needed)

### Second Subsection

## 2. Second Major Section

### Subsection A
```

---

## Formatting Standards

### Numbers and Percentages

**Rules:**
- Use thousand separators: `$1,234,567` not `$1234567`
- Percentages to 1 decimal: `12.3%` not `12.34567%`
- Large numbers: Use shorthand with full number in parentheses
  - `$4.3T ($4,300,000,000,000)`
- Decimal precision: Match source precision, max 2 decimals for prices

**Examples:**
```markdown
- Bitcoin market cap: $2.1T ($2,100,000,000,000)
- TVL increased 8.3% to $45.2B
- Price: $104,523.45 (CoinGecko, Oct 31, 2025)
```

---

### Dates and Times

**Format Standards:**
- Dates: `October 31, 2025` or `Oct 31, 2025` (consistent within document)
- Short dates: `2025-10-31` (ISO 8601)
- Times: `14:30 UTC` (always specify timezone)
- Date ranges: `Oct 1-31, 2025` or `October 1-31, 2025`

**Examples:**
```markdown
- **Analysis Date:** October 31, 2025
- **Data Collection:** 2025-10-31 09:00 UTC
- **Period Analyzed:** Oct 1-31, 2025 (30 days)
```

---

### Citations and References

**Inline Citation Format:**
```markdown
Bitcoin's MVRV Z-Score reached 2.43 [1], suggesting mid-cycle positioning [2].
```

**Reference Section Format:**
```markdown
## References

1. **Glassnode** - https://glassnode.com/metrics/mvrv - MVRV Z-Score data, accessed Oct 31, 2025
2. **Bitcoin Magazine Pro** - https://bitcoinmagazinepro.com/analysis - Cycle analysis methodology, Oct 2025
```

**Reference Numbering:**
- Use sequential numbers [1], [2], [3]...
- Reuse numbers for repeated citations
- Keep references at end of document
- Include access date for time-sensitive data

---

### Tables

**Format Standards:**
- Use markdown tables for structured data
- Include units in column headers
- Right-align numbers, left-align text
- Include source note below table

**Example:**
```markdown
| Protocol | TVL (USD) | 7d Change | 30d Change |
|----------|-----------|-----------|------------|
| Aave     | $12.3B    | +3.2%     | +8.7%      |
| Uniswap  | $8.9B     | -1.4%     | +5.3%      |
| Compound | $4.2B     | +0.8%     | +2.1%      |

*Source: DeFiLlama, Oct 31, 2025*
```

---

### Code Blocks

**Use for:**
- Formulas and equations
- Example calculations
- API responses
- Configuration examples

**Format:**
````markdown
```python
# Formula for MVRV Z-Score
mvrv_zscore = (market_cap - realized_cap) / std_dev(market_cap)
```
````

---

## Content-Specific Guidelines

### Protocol Analysis

**Required Sections:**
1. Overview (what it is, launched when)
2. Technical Architecture (how it works)
3. Economic Model (tokenomics, revenue)
4. Metrics (TVL, volume, users, revenue)
5. Risk Assessment (technical, economic, regulatory)
6. Competitive Position (vs peers)
7. References

**Tone:**
- Describe functionality objectively
- Present metrics without interpretation unless data-backed
- Acknowledge both strengths and weaknesses
- No predictions without probabilistic framing

---

### Market Analysis

**Required Elements:**
- Time period analyzed
- Data sources with timestamps
- Benchmark comparisons
- Statistical significance tests (where applicable)
- Risk disclosures

**Structure:**
```markdown
## Market Analysis: [Topic]

**Period:** [Start Date] - [End Date]
**Data Sources:** [List]
**Methodology:** [Brief description]

### Current State
[Factual description with citations]

### Historical Context
[Comparison to previous periods]

### Forward-Looking Indicators
[Leading indicators with probabilities, not predictions]

### Risk Factors
[Downside scenarios]
```

---

### Newsletter/Signal Analysis

**Format for Tracking:**
```markdown
### [Newsletter Name] - Issue #X

**Publication Date:** [Date]
**Analysis Date:** [Date] (X days post-publication)

#### Claims and Predictions

**Claim 1: [Brief description]**
- Details: [Full claim]
- Timeframe: [Expected timeline]
- Verification Status: ✅ Verified / ⚠️ Pending / ❌ Incorrect
- Evidence: [Specific data points]

**Claim 2: [Brief description]**
[Same structure]

#### Accuracy Assessment

**Verified Correct:** X/Y (Z%)
**Pending Verification:** N
**Incorrect:** M

**Overall Reliability:** [Score with methodology]
```

---

## Quality Checklist

### Pre-Commit Checklist

Before committing any document, verify:

- [ ] **Neutrality:** No emotional or promotional language
- [ ] **Citations:** All claims have source attribution
- [ ] **Timestamps:** All data points include collection date
- [ ] **Formatting:** Follows markdown standards above
- [ ] **Numbers:** Properly formatted with appropriate precision
- [ ] **Tone:** Professional and institutional-grade
- [ ] **Structure:** Follows template hierarchy
- [ ] **References:** All links functional and properly formatted
- [ ] **Disclaimer:** Included where appropriate
- [ ] **Version:** Document version and update date current

---

## Automated Quality Checks

### Bias Detection Keywords

**Automated scanner flags these terms:**

**Promotional/Hype:**
- Revolutionary, game-changing, groundbreaking
- Amazing, incredible, fantastic, awesome
- Best, perfect, flawless
- Guaranteed, certain, definite
- Must-buy, can't-miss, no-brainer

**Emotional/Speculative:**
- Exciting, thrilling
- Scary, terrifying, concerning (use "risk factor" instead)
- Hope, fear, greed
- Obviously, clearly, definitely (without data)
- Will, shall (use "may," "could," "probability of")

**Colloquial/Unprofessional:**
- DYOR, NFA, WAGMI, GM, GN
- Ape, degen, anon
- Rekt, wrecked
- Shitcoin (use "low-quality asset" with specific criteria)

**Sentiment Indicators:**
The automated system scores documents on 0-1 scale:
- 0.0-0.3: Negative/bearish bias
- 0.4-0.6: Neutral (target range)
- 0.7-1.0: Positive/bullish bias

**Action:** Documents outside 0.4-0.6 range flagged for rewrite.

---

## Agent-Specific Guidelines

### For Data Collector Agents

**Output Format:**
```json
{
  "metric": "btc_price",
  "value": 104523.45,
  "source": "CoinGecko API",
  "timestamp": "2025-10-31T09:00:00Z",
  "currency": "USD",
  "verification": {
    "source_2": "CoinMarketCap API",
    "value_2": 104489.12,
    "variance": 0.03
  }
}
```

### For Writer Agents

**Instructions:**
1. Load governance documents first
2. Check existing document structure
3. Update only designated sections
4. Maintain all formatting
5. Add inline citations for new data
6. Update "Last Updated" timestamp
7. Commit with descriptive message

**Never:**
- Delete existing content without verification
- Change document structure
- Remove citations
- Add promotional language
- Make predictions without probability framing

---

## Examples: Before and After

### Example 1: Protocol Description

❌ **Before (Biased):**
```
Uniswap is absolutely revolutionizing DeFi with its amazing AMM technology!
This incredible protocol is definitely going to be the future of trading.
With over $8 billion in TVL, it's clearly the best DEX in crypto.
```

✅ **After (Neutral):**
```
Uniswap is an automated market maker (AMM) protocol launched in November 2018 [1].
As of October 31, 2025, it holds $8.9B in total value locked, ranking as the
second-largest decentralized exchange by TVL [2]. The protocol facilitates
token swaps through liquidity pools rather than order books, with over
$2.1B in 24-hour trading volume [2].

[1] Uniswap Documentation, https://docs.uniswap.org
[2] DeFiLlama, Oct 31, 2025, https://defillama.com/protocol/uniswap
```

---

### Example 2: Market Analysis

❌ **Before (Emotional):**
```
The market is absolutely tanking! Bitcoin crashed 8% and everyone is panicking.
This is terrible news and we're probably heading into a brutal bear market.
Very scary times ahead!
```

✅ **After (Neutral):**
```
Bitcoin declined 8.2% over 24 hours to $95,840 (Oct 31, 2025, 09:00 UTC) [1],
the largest single-day drop since July 2025 [2]. Trading volume increased
143% to $48.2B, indicating elevated market activity [1].

Historical analysis shows that 8%+ single-day declines have occurred 37 times
since 2020, with subsequent 30-day performance ranging from -25% to +18%
(median: -2.3%) [3]. On-chain metrics show:

- MVRV Z-Score: 2.1 (neutral zone) [4]
- Exchange inflows: +$1.2B (24h) [5]
- Long-term holder supply: 14.2M BTC (unchanged) [4]

[1] CoinGecko, Oct 31, 2025
[2] TradingView historical data
[3] Internal analysis of CoinGecko data, 2020-2025
[4] Glassnode, Oct 31, 2025
[5] CryptoQuant, Oct 31, 2025
```

---

### Example 3: Prediction/Forecast

❌ **Before (Overconfident):**
```
Bitcoin will definitely hit $200K by December based on the Pi Cycle indicator.
This is a guaranteed moon mission. You should definitely buy now before it's
too late!
```

✅ **After (Probabilistic):**
```
The Pi Cycle Top indicator projects a potential crossover on September 17, 2025 [1].
Historically, this indicator has signaled market tops within 3 days on three
occasions (2013, 2017, 2021 first peak), though it failed to signal the
November 2021 double-top [2].

If the projected timeline holds and historical price patterns repeat, Bitcoin
could reach the $180K-$200K range by Q4 2025 [1][2]. However, several factors
introduce uncertainty:

**Supporting factors:**
- MVRV Z-Score currently at 2.4, below historical top levels (>7) [3]
- Institutional inflows remain positive (+$890M, October) [4]

**Risk factors:**
- Pi Cycle indicator has 75% historical accuracy (3/4 cycles) [2]
- New market structure (ETFs) may alter indicator reliability [5]
- Macro conditions differ from previous cycles [6]

**Probability Assessment:** Based on historical precedent and current
indicators, estimated 45-60% probability of reaching $180K+ by year-end,
with high uncertainty range due to changing market structure [Internal model].

[1] Bitcoin Magazine Pro, Oct 2025
[2] TradingView, Historical Pi Cycle analysis
[3] Glassnode, Oct 31, 2025
[4] Farside Investors, Bitcoin ETF flows
[5] BlackRock ETF holdings analysis
[6] Federal Reserve policy assessment
```

---

## Version Control

**Document Versioning:**
- Major version (X.0): Structural changes or complete rewrites
- Minor version (1.X): Content updates, new sections
- Update date: Changes to data only

**Example:**
```markdown
**Document Version:** 2.3
**Last Updated:** October 31, 2025
```

Means:
- 2nd major revision (structural change)
- 3rd minor update since last major revision
- Data current as of Oct 31, 2025

---

## Exceptions and Edge Cases

### When Opinions Are Necessary

**Allowed:**
- Risk assessments (clearly labeled as "Risk Assessment")
- Methodology choices (with rationale)
- Uncertainty acknowledgment
- Limitation disclosures

**Format:**
```markdown
### Risk Assessment

Based on analysis of [specific factors], the following risks are identified:

**High Risk:** [Factor] - [Specific evidence]
**Medium Risk:** [Factor] - [Specific evidence]
**Low Risk:** [Factor] - [Specific evidence]

This assessment is based on [methodology] and subject to [limitations].
```

---

### When Timely Updates Aren't Possible

**Stale Data Protocol:**

If data cannot be updated within 48 hours, add banner:

```markdown
> ⚠️ **DATA FRESHNESS WARNING**
>
> The data in this section was last updated on [Date], which is more than
> 48 hours old. Current market conditions may differ materially from the
> analysis below. Exercise additional caution when using this information.
>
> Expected update: [Date/Time]
> Reason for delay: [Brief explanation]
```

---

## Style Guide Maintenance

**Review Schedule:** Quarterly
**Update Process:** Submit PR to `.governance/STYLE_GUIDE.md`
**Approval Required:** Repository owner
**Effective Date:** Upon merge to main branch

**Next Review:** January 31, 2026

---

**Style Guide Version:** 1.0
**Effective Date:** October 31, 2025
**Last Updated:** October 31, 2025
