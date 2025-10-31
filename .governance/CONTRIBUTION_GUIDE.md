# Contribution Guide - Manual Research Additions

**Version:** 1.0
**Last Updated:** October 31, 2025
**Purpose:** Guidelines for adding new research manually to the repository

---

## Philosophy: Quality Over Quantity

### The Core Question

**Before adding anything, ask:** "Does this improve the tool?"

Not: "Is this interesting?" or "Do I want to document this?"

But specifically: **"Does this make the repository more valuable for institutional investors making blockchain investment decisions?"**

---

## Evaluation Framework

### Decision Tree: Should I Add This?

```
Is this content about blockchain payment flows,
market dynamics, or protocol economics?
    │
    ├─ NO ──> Do not add
    │
    └─ YES
        │
        Is the information verified with credible sources?
            │
            ├─ NO ──> Verify first, then reassess
            │
            └─ YES
                │
                Is the tone neutral and institutional-grade?
                    │
                    ├─ NO ──> Rewrite to be neutral, then reassess
                    │
                    └─ YES
                        │
                        Does this provide unique insights
                        not already in the repository?
                            │
                            ├─ NO ──> Consider if update to existing
                            │         content is more appropriate
                            │
                            └─ YES
                                │
                                Will institutions use this for
                                investment decisions?
                                    │
                                    ├─ NO ──> Do not add
                                    │
                                    └─ YES ──> ✅ ADD IT!
```

---

## Types of Acceptable Additions

### ✅ HIGH VALUE (Always Add)

**1. New Protocol Case Studies**
- Protocols with >$100M TVL
- Novel technical innovations with adoption
- Emerging protocols showing strong growth (10x in 30 days)

**Requirements:**
- Complete metrics (TVL, volume, users, revenue)
- Technical architecture documentation
- Economic model analysis
- Competitive positioning
- Risk assessment

**2. Original Market Analysis**
- Novel analytical frameworks
- Quantitative research with data backing
- Multi-factor correlation studies
- Market structure insights

**Requirements:**
- Clear methodology section
- Reproducible analysis
- Statistical significance testing
- Risk disclosures

**3. Updated Protocol Metrics**
- Fresh data for existing case studies
- Significant metric changes (>20%)
- New product launches or upgrades

**Requirements:**
- Source attribution
- Timestamp
- Context for changes

**4. Regulatory Developments**
- Major policy changes affecting market structure
- Institutional adoption milestones
- Legal precedents

**Requirements:**
- Official source (government, court, exchange)
- Implications for market participants
- Neutral tone (no fearmongering or celebration)

---

### ⚠️ MEDIUM VALUE (Evaluate Carefully)

**1. Emerging Narratives**
- New sector formations
- Capital rotation patterns
- Macro trend shifts

**Criteria:**
- Must have quantitative backing (TVL growth, token performance)
- Cross-verify across multiple sources
- Include skeptical view alongside bullish case

**2. Technical Innovations**
- Novel consensus mechanisms
- Scaling breakthroughs
- Cryptographic advances

**Criteria:**
- Technical paper or spec available
- Live implementation (not just whitepaper)
- Expert validation from credible sources

**3. Historical Analysis**
- Past cycle comparisons
- Pattern recognition
- Correlation studies

**Criteria:**
- Statistical rigor
- Acknowledge limitations of historical comparisons
- Include probability ranges, not certainties

---

### ❌ LOW VALUE (Usually Reject)

**1. News Aggregation**
- Simple reposting of news without analysis
- Breaking news without context
- Rumor or speculation

**Why reject:** Users can get news elsewhere. We provide analysis.

**Exception:** If adding significant original analysis or implications.

**2. Opinion Pieces**
- "I think Bitcoin will..." without data
- Predictions without probabilistic framing
- Sentiment-driven analysis

**Why reject:** Violates neutrality principle.

**Exception:** If reframed as data-driven analysis with clear methodology.

**3. Token Promotions**
- New token launches without substantial metrics
- "Hidden gems" or "top picks"
- Affiliate or sponsored content

**Why reject:** Violates non-commerciality principle.

**Exception:** None. Never add promotional content.

**4. Meme or Entertainment Content**
- Crypto Twitter drama
- Personality-focused content
- Community gossip

**Why reject:** Not institutional-grade.

**Exception:** None.

---

## Submission Process

### Step 1: Pre-Submission Checklist

Before writing any content, verify:

- [ ] Content aligns with repository mission (blockchain payment flows)
- [ ] You have verified sources for all claims
- [ ] Content provides unique value not already present
- [ ] You can write in neutral, institutional tone
- [ ] Content is actionable for institutional investors
- [ ] No conflicts of interest (you don't hold tokens, work for project, etc.)

---

### Step 2: Research and Verification

**Minimum Requirements:**

1. **Primary Sources**
   - Protocol documentation
   - Blockchain explorer data
   - Official announcements
   - Academic papers

2. **Data Verification**
   - Cross-check metrics across 2+ sources
   - Document all sources with URLs
   - Include data collection timestamps
   - Note any discrepancies

3. **Quality Sources (Tier 1)**
   - DeFiLlama, CoinGecko, CoinMarketCap (market data)
   - Glassnode, CryptoQuant (on-chain data)
   - Token Terminal (protocol financials)
   - Official protocol sites and documentation
   - Academic institutions and research papers

4. **Acceptable Sources (Tier 2)**
   - The Block, CoinDesk (news, with verification)
   - Dune Analytics (community dashboards)
   - Messari (research reports)
   - L2Beat (L2-specific data)

5. **Avoid (Low Quality)**
   - Random Twitter threads
   - Telegram/Discord screenshots
   - Blog posts without sources
   - "Trust me bro" claims

---

### Step 3: Content Creation

**Use the Style Guide:**
- Read `.governance/STYLE_GUIDE.md` thoroughly
- Follow document templates
- Use neutral language (see forbidden terms list)
- Include all required sections
- Format properly (headings, tables, citations)

**Required Document Sections:**

```markdown
# [Title]

**Last Updated:** [Date]
**Data Current As Of:** [Date]
**Update Frequency:** [Daily/Weekly/Monthly/Manual]
**Analyst:** [Your Name or "Manual Contribution"]

---

## Executive Summary

[3-5 sentences summarizing key findings]

**Key Metrics:**
- Metric 1: Value (Source, Date)
- Metric 2: Value (Source, Date)

---

## 1. [First Section]

[Content with inline citations [1]]

---

## [N]. References

1. **Source Name** - URL - Description
2. **Source Name** - URL - Description

---

**Document Version:** 1.0
**Last Updated:** [Date]
**Next Review:** [Date]

---

DISCLAIMER: This research is for informational purposes only...
[Full disclaimer from PROJECT_CHARTER.md]
```

---

### Step 4: Self-Quality Check

Run through all quality checks before submitting:

**Bias Detection:**
- Read your content aloud
- Would you present this to a pension fund investment committee?
- Does it sound promotional or skeptical?
- Remove all emotional language

**Sentiment Check:**
- Is tone neutral? (not overly positive or negative)
- Have you used any forbidden terms?
- Are predictions framed probabilistically?

**Citation Check:**
- Does every claim have a source?
- Are all URLs functional?
- Are sources credible (see Tier 1/2 list)?
- Have you included access dates?

**Formatting Check:**
- One H1 heading only
- H2 headings numbered
- Tables have source notes
- Numbers properly formatted ($1,234,567)
- Required sections present

**If using automated tools:**
```bash
# Run quality check script
python3 .governance/scripts/quality_check.py --files your_file.md
```

---

### Step 5: Determine Placement

**Where does this content belong?**

```
Repository Structure:
├── context/
│   ├── crypto_trade_signal/     ← Trading signals, market timing
│   └── context/                 ← General market context, macro
│
├── case_studies/
│   ├── chains_l2s_and_l1s_refed/    ← L1 and L2 blockchain analysis
│   ├── ai_chains_and_protocols/     ← AI-focused chains
│   ├── defi_protocols/              ← DeFi protocols (DEX, lending, etc.)
│   └── infrastructure/              ← Oracles, MEV, data providers
│
└── research/
    ├── payment_flows/           ← Payment flow analysis
    ├── subsidy_economy/         ← Economics of blockchain subsidies
    └── market_structure/        ← Market microstructure research
```

**Decision Guide:**

- **Protocol Analysis:** → `/case_studies/[appropriate_category]/[protocol_name]/`
- **Market Analysis:** → `/context/context/` or `/context/crypto_trade_signal/`
- **Original Research:** → `/research/[appropriate_category]/`
- **Cross-cutting topic:** Choose most relevant, add cross-references to others

**Naming Conventions:**

- Use lowercase with underscores: `uniswap_analysis.md`
- Include version or date if applicable: `market_structure_q4_2025.md`
- Be descriptive: `aave_v3_risk_assessment.md` not `aave.md`

---

### Step 6: Git Workflow

**Branch Creation:**

```bash
# Create feature branch
git checkout -b research/[topic-name]

# Example:
git checkout -b research/uniswap-v4-analysis
```

**Commit Message Format:**

```bash
git add [your-files]

git commit -m "[CATEGORY] Brief description

Detailed explanation:
- Added comprehensive analysis of [topic]
- Includes [specific sections]
- Data sourced from [sources]

Data current as of: [date]
Analyst: [your name]

Sources verified: [Yes/No]
Quality checked: [Yes/No]
"
```

**Categories:**
- `[RESEARCH]` - New original research
- `[CASE STUDY]` - New protocol analysis
- `[UPDATE]` - Updates to existing content
- `[FIX]` - Corrections
- `[GOVERNANCE]` - Changes to governance docs

---

### Step 7: Pull Request (if collaborative) OR Direct Push

**If you're the repository owner:**
```bash
# Merge to main
git checkout main
git merge research/[topic-name]
git push origin main
```

**If collaborating:**
Create a pull request with:

**PR Title:** `[CATEGORY] Brief description`

**PR Description:**
```markdown
## Summary
[What this adds to the repository]

## Checklist
- [x] Follows style guide
- [x] All sources verified
- [x] Neutral tone maintained
- [x] Quality checks passed
- [x] Proper placement in repository structure

## Value Proposition
[Why this improves the tool]

## Data Sources
- Source 1: [URL]
- Source 2: [URL]

## Conflicts of Interest
[Disclose any, or state "None"]
```

---

## Special Cases

### Updating Existing Content

**When to Update vs Create New:**

**Update existing file if:**
- New data for same protocol/topic
- Correction to existing analysis
- Adding missing section
- Updating stale data

**Create new file if:**
- Different time period (Q1 vs Q2 analysis)
- Different methodology
- Separate but related topic
- Version upgrade (Protocol V2 → V3 might warrant new file)

**Update Process:**

1. Read existing file completely
2. Identify sections needing updates
3. Use Edit tool to make surgical changes
4. Update "Last Updated" and "Version" fields
5. Add note in changelog if file has one
6. Commit with `[UPDATE]` tag

**Example:**
```bash
git commit -m "[UPDATE] Refresh Uniswap metrics with Q4 2025 data

Updated:
- TVL figures (Oct 31, 2025)
- 30-day volume trends
- Competitive positioning vs Curve

Sources: DeFiLlama, Uniswap Analytics
Data current as of: 2025-10-31
"
```

---

### Adding Time-Sensitive Information

**Breaking Developments:**

If adding time-sensitive information (exploit, major announcement, regulatory action):

1. **Verify immediately from multiple sources**
2. **Document uncertainty if details emerging**
3. **Add DEVELOPING tag if ongoing**
4. **Update as situation evolves**

**Format:**
```markdown
> 🚨 **DEVELOPING SITUATION**
>
> **As of:** [Date Time UTC]
> **Status:** [Ongoing / Resolved / Under Investigation]
>
> [Factual summary of what is known]
>
> **What We Know:**
> - [Fact 1] (Source, Time)
> - [Fact 2] (Source, Time)
>
> **What We Don't Know:**
> - [Unknown 1]
> - [Unknown 2]
>
> **Next Update:** [Expected time]
```

---

### Handling Controversial Topics

**Protocols with Allegations or Issues:**

Maintain neutrality even when covering negative developments:

**❌ Wrong:**
```
Project X is clearly a scam run by fraudsters. They're obviously
just trying to steal user funds. This is terrible and everyone
should stay away.
```

**✅ Correct:**
```
Project X has been the subject of allegations regarding [specific claims].

**Known Facts:**
- [Fact 1 with source]
- [Fact 2 with source]

**Allegations:**
- [Claim 1] (Source: [who made claim])
- [Claim 2] (Source: [who made claim])

**Project Response:**
- [Official response if available]

**Risk Assessment:**
The following risk factors have been identified:
1. [Specific risk with evidence]
2. [Specific risk with evidence]

**Recommendation:**
Exercise heightened caution. Conduct additional due diligence before
deployment of capital. Monitor situation for further developments.
```

---

## Common Mistakes to Avoid

### ❌ Mistake 1: Promotional Language

**Wrong:**
```markdown
Uniswap is revolutionizing DeFi with its amazing AMM technology!
This is definitely the future of trading and will absolutely
dominate the market.
```

**Right:**
```markdown
Uniswap introduced the automated market maker (AMM) model to
Ethereum in November 2018. As of October 2025, it processes
$2.1B in daily volume and holds $8.9B in TVL, ranking as the
second-largest DEX by total value locked.
```

---

### ❌ Mistake 2: Unverified Claims

**Wrong:**
```markdown
Bitcoin will hit $200K by December based on the Pi Cycle indicator.
```

**Right:**
```markdown
The Pi Cycle Top indicator projects a potential crossover on
September 17, 2025, which has historically preceded major tops
with 75% accuracy (3/4 cycles). If historical patterns hold,
Bitcoin could reach $180K-$200K by Q4 2025, though this carries
significant uncertainty due to changed market structure (ETFs,
institutional adoption).
```

---

### ❌ Mistake 3: Missing Sources

**Wrong:**
```markdown
Ethereum's TVL increased significantly last month.
```

**Right:**
```markdown
Ethereum's total value locked increased 18.3% from $45.2B to
$53.5B between September 30 and October 31, 2025 [1].

[1] DeFiLlama - https://defillama.com/chain/Ethereum - Accessed Oct 31, 2025
```

---

### ❌ Mistake 4: Opinion Without Data

**Wrong:**
```markdown
I think Layer 2s will eventually surpass Ethereum mainnet because
they're obviously better for users.
```

**Right:**
```markdown
Layer 2 transaction volumes increased 340% year-over-year,
reaching 12.3M daily transactions vs Ethereum mainnet's 1.1M
(October 2025) [1]. If this growth trajectory continues (+25%
per month), L2 volumes could surpass mainnet by Q2 2026, though
this depends on factors including:

- Continued fee pressure on mainnet
- L2 user experience improvements
- Bridge security developments

[1] L2Beat - https://l2beat.com - Oct 31, 2025
```

---

## Quality Assurance for Manual Additions

### Pre-Commit Manual Checklist

Print this checklist and check each box before committing:

```
CONTENT QUALITY
□ Provides unique value not already in repository
□ Relevant to blockchain payment flows and institutional investment
□ All claims verified with credible sources
□ No conflicts of interest

TONE & STYLE
□ Neutral tone throughout (no cheerleading or FUD)
□ No forbidden terms (see STYLE_GUIDE.md)
□ No emotional language
□ Institutional-grade professionalism

CITATIONS & SOURCES
□ Every claim has source attribution
□ All URLs functional
□ Sources are credible (Tier 1 or Tier 2)
□ Data timestamps included

FORMATTING
□ Follows document template
□ One H1, numbered H2s
□ Tables have source notes
□ Numbers properly formatted
□ All required sections present

TECHNICAL
□ Placed in correct directory
□ Properly named file
□ Git commit message follows format
□ No duplicate content

AUTOMATED CHECKS
□ Ran quality_check.py script (if available)
□ Passed bias detection
□ Passed sentiment analysis
□ Passed citation verification
□ Passed format check

FINAL REVIEW
□ Read entire document aloud
□ Would present this to institutional investors
□ Improves the repository
□ Ready to commit
```

---

## Getting Help

### When Unsure

**If you're not sure whether to add something:**

1. **Pause and wait 24 hours**
   - Good research ideas stay good
   - Bad ideas often reveal themselves with time

2. **Ask these questions:**
   - Would I bet my professional reputation on this?
   - Would I present this to a pension fund?
   - Does this make the repository more valuable?

3. **Err on the side of caution**
   - Better to skip mediocre content than pollute the repository
   - Quality always beats quantity

### Review Request

**For major additions, request informal review:**

Create a draft and ask:
- Does this maintain our neutrality standard?
- Are these sources credible enough?
- Is this placement appropriate?
- Does this improve the tool?

---

## Monthly Self-Audit

**First Monday of each month, review your contributions:**

```markdown
## Monthly Contribution Audit - [Month Year]

### Contributions Made
1. [File/Topic 1]
2. [File/Topic 2]

### Self-Assessment

**Quality:**
- Did I maintain neutral tone? [Yes/No - examples]
- Were all sources credible? [Yes/No - any weak sources?]
- Did I follow style guide? [Yes/No - deviations?]

**Value:**
- Did these contributions improve the tool? [Yes/No - how?]
- Would I do anything differently? [Reflection]

**Metrics:**
- Files added: [N]
- Files updated: [N]
- Sources added: [N]
- Errors corrected: [N]

### Improvements for Next Month
1. [Specific improvement goal]
2. [Specific improvement goal]
```

---

## Repository Scope Boundaries

### IN SCOPE (Add These)

✅ Blockchain payment flow analysis
✅ Protocol economics and metrics
✅ Market structure insights
✅ Institutional adoption trends
✅ Regulatory developments impacting markets
✅ Technical innovations with market implications
✅ DeFi protocol analysis
✅ L1/L2 blockchain comparisons
✅ Oracle and infrastructure analysis
✅ Subsidy economics and token flows
✅ Risk analysis frameworks

### OUT OF SCOPE (Don't Add)

❌ Blockchain gaming (unless payment-flow relevant)
❌ NFT art/collectibles (unless market structure relevant)
❌ Web3 social media
❌ Metaverse projects
❌ Individual founder profiles
❌ Company culture/hiring
❌ Conference summaries
❌ Tutorial content ("How to use...")
❌ Beginner educational content
❌ Price prediction for trading
❌ Day trading strategies

### EDGE CASES (Evaluate Carefully)

⚠️ Stablecoins: IN if analyzing payment flows, OUT if just price tracking
⚠️ CBDCs: IN if relevant to crypto market structure
⚠️ Bitcoin ETFs: IN if analyzing market impact
⚠️ Mining/Staking: IN if analyzing economics, OUT if hardware guides
⚠️ Governance: IN if analyzing token economics, OUT if just proposal summaries

---

## Conclusion

### Remember the Mission

This repository exists to provide **pure, accurate, unbiased institutional-grade research** on blockchain payment flows.

Every contribution should advance that mission.

**When in doubt:**
- Ask: "Does this improve the tool?"
- Maintain neutrality
- Verify thoroughly
- Follow the style guide
- Quality over quantity

**Thank you for contributing to rigorous, independent research.**

---

**Contribution Guide Version:** 1.0
**Last Updated:** October 31, 2025
**Next Review:** January 31, 2026

For questions or clarifications, open a GitHub issue with tag `[GOVERNANCE]`.
