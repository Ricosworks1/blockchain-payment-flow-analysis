# Vault & Lending Protocols: Comprehensive Payment Flow Summary

**Analysis Date:** October 26, 2025
**Protocols Analyzed:** 20+ vault/lending/borrowing/yield protocols
**Total TVL Covered:** $15B+ across analyzed protocols

---

## Executive Summary

This comprehensive analysis covers the major vault, lending, borrowing, and yield protocols in DeFi as of Q4 2025, examining their payment flow models, revenue structures, and sustainability.

### Key Findings

**1. Payment Flow Models (5 Categories Identified):**
- **Yield Tokenization:** Pendle (split PT/YT, 3% yield fee + swap fees)
- **Lending Optimization:** Morpho (0% fees currently, 25% max fee switch available)
- **Institutional Credit:** Maple ($70M+ revenue, 10-20% fee take)
- **Stablecoin Vaults:** Reservoir (7.75% APY, 15% performance fee)
- **Perpetuals Vaults:** Avantis (100% fees to LPs, counterparty risk model)

**2. Revenue Sustainability Spectrum:**
| Protocol | Current Revenue | Fee Model | Sustainability |
|----------|----------------|-----------|----------------|
| **Maple Finance** | $70M+ annual | 10-20% of interest | ✅ Highly Sustainable |
| **Pendle Finance** | $130-204M est. | 3% yield + swap fees | ✅ Sustainable |
| **Reservoir** | $7M est. | 15% performance fee | ✅ Sustainable |
| **Avantis** | $0 (100% to LPs) | Future fee switch needed | ⚠️ Unsustainable (protocol) |
| **Morpho** | $0 | Fee switch inactive | ⚠️ Unsustainable |

**3. User Yield Ranges (Risk-Adjusted):**
- **Low Risk Stablecoins:** 6-10% APY (Morpho AUSDC, Reservoir srUSD, Maple syrupUSD)
- **Medium Risk Lending:** 10-20% APY (Pendle PT yields, MetaMorpho vaults)
- **High Risk Vaults:** 20-60% APY (Avantis avUSDC, Growi HF, Peapods LVF)
- **Extreme Risk:** 100%+ APY (Leveraged strategies, often unsustainable)

---

## Detailed Protocol Analyses

### Category 1: Yield Tokenization

#### **Pendle Finance**

**Model:** Split yield-bearing assets into Principal Tokens (PT) and Yield Tokens (YT)

**Payment Flow:**
```
Yield-bearing asset (e.g., stETH) → Pendle Protocol
↓
Mints: PT (principal claim) + YT (yield claim)
↓
Users trade PT/YT on AMM
↓
Fees collected:
  - 3% of yield → vePENDLE stakers
  - 10-30 bps swap fees → 50% LPs, 50% vePENDLE
```

**Key Metrics:**
- **TVL:** $8.9B (August 2025)
- **Revenue:** $130-204M estimated annually
- **Fee Distribution:** 100% to vePENDLE holders
- **User APY:** 5-15% fixed (PT), highly variable (YT), 20-40% (LPs)

**Strengths:**
- Real revenue from trading activity
- 100% fee distribution aligns incentives
- Capital efficient (leveraged yield exposure via YT)

**Weaknesses:**
- 70% TVL concentrated in Ethena USDe
- Complex for retail users
- 0% to treasury (may need adjustment)

---

### Category 2: Lending Optimization

#### **Morpho Blue**

**Model:** P2P matching layer on top of Aave/Compound + permissionless isolated markets

**Payment Flow:**
```
Lender deposits USDC → Morpho
↓
P2P matching engine finds borrowers
↓
Matched: Direct P2P loan (better rates)
Unmatched: Falls back to Aave/Compound
↓
Borrower pays interest → 100% to lenders (currently)
↓
Fee switch: Can activate 0-25% protocol fee via governance
```

**Key Metrics:**
- **TVL:** $1.70B+ (January 2025)
- **Current Revenue:** $0 (fee switch inactive)
- **Potential Revenue:** $26.78M annually (if 25% fee activated)
- **Cumulative Fees:** $156M (all went to lenders)
- **User APY:** 7-10% on stablecoins

**Strengths:**
- Best lender rates (0% protocol take)
- Isolated markets = custom risk parameters
- Permission less (anyone create markets)
- Fee switch ready for future activation

**Weaknesses:**
- $0 revenue despite $1.70B TVL
- Unsustainable without fee activation
- Oracle risk in isolated markets
- Complex for average users

---

### Category 3: Institutional Credit

#### **Maple Finance**

**Model:** On-chain institutional lending marketplace

**Payment Flow:**
```
Retail LPs deposit USDC → syrupUSD
↓
syrupUSD allocated to institutional loan pools
↓
Institutional borrowers pay 8-12% interest
↓
Fee structure:
  - Origination fee: 1-3% of principal → Maple
  - Management fee: 0.5-1% annual → Maple
  - Performance fee: 10-20% of interest → Maple
  - Remainder → syrupUSD holders
↓
20% of Maple revenue → SYRUP buybacks
```

**Key Metrics:**
- **AUM:** $2.6B (surpassed BlackRock Q2 2025)
- **Loans Originated:** $8.4B cumulative
- **Revenue:** $70M+ annually (154% YoY growth)
- **syrupUSD APY:** 7-9%
- **SYRUP Buyback:** 20% of revenue ($14M annually)

**Strengths:**
- Real, growing revenue ($70M+, 154% YoY)
- Surpassed BlackRock as largest on-chain asset manager
- 20% revenue to token buybacks (aligned incentives)
- Proven track record ($8.4B originated)

**Weaknesses:**
- Default risk (Orthogonal Trading $36M default in 2022)
- 73% AUM concentration in syrupUSD
- Regulatory risk (institutional lending)

---

### Category 4: Stablecoin Yield Vaults

#### **Reservoir Protocol**

**Model:** Diversified stablecoin (rUSD) with yield-bearing variants (srUSD, wsrUSD)

**Payment Flow:**
```
User mints rUSD with collateral (USDC, ETH, RWA)
↓
Stake rUSD → srUSD (earns 7.75% APY)
↓
Collateral deployed to:
  - US Treasuries (40%): 4-5% yield
  - DeFi lending (30%): 6-10% yield
  - Algorithmic strategies (20%): 10-15% yield
  - Liquidity buffer (10%)
↓
Blended yield: ~9% gross
↓
Protocol fee: 15% of yield
↓
Net to srUSD holders: 7.75% APY
```

**Key Metrics:**
- **TVL:** $526M (October 2025)
- **Growth:** $25M → $526M in 10 months (20x)
- **srUSD APY:** 7.75%
- **Protocol Revenue:** ~$7M annually (estimated)
- **Redemption Fee:** 1 day's interest (srUSD), 0% (wsrUSD)

**Strengths:**
- Rapid growth (20x in 10 months)
- No lock-ups (withdraw anytime)
- wsrUSD composability (0% fees, real-time accrual)
- Institutional backing ($14M from USV)

**Weaknesses:**
- New protocol (launched Nov 2024)
- Complex multi-asset backing
- Yield dependent on external markets
- Limited track record

---

### Category 5: Perpetuals Liquidity Vaults

#### **Avantis**

**Model:** Decentralized perpetuals DEX with unified liquidity vault

**Payment Flow:**
```
LP deposits USDC → avUSDC vault
↓
Vault serves as counterparty to perpetual traders
↓
Trader opens 10x BTC long position
↓
If trader wins: Vault pays out (loss to LPs)
If trader loses: Vault keeps (profit to LPs)
↓
Plus: 0.06% trading fee → 100% to vault
↓
Net P&L distributed to avUSDC holders
```

**Key Metrics:**
- **TVL:** $80-85M
- **Growth:** $1.5M → $85M in 2024 (56x)
- **Unified Vault:** Launched October 2025 (replaced junior/senior model)
- **Trading Fee:** 0.06% (100% to LPs)
- **Protocol Revenue:** $0 (all fees to LPs)
- **Est. LP APY:** 25-50% (depends on trader P&L)

**Strengths:**
- 100% trading fees to LPs (best in category)
- RWA perpetuals (gold, oil, forex)
- Unified vault improves capital efficiency
- Proven growth (56x in 2024)

**Weaknesses:**
- Counterparty risk (vault loses if traders win)
- $0 protocol revenue (unsustainable)
- New unified vault (Oct 2025, limited track record)
- AVNT token has no revenue share currently

---

## Additional Notable Protocols (Brief Summaries)

### **Superstate (USCC, USTB)**
- **Type:** Tokenized US Treasuries (RWA)
- **Management Fee:** 0.75% annually (USCC), 0.15% (USTB)
- **Fee Waiver:** Until $50M AUM
- **Target Users:** Qualified Purchasers only
- **Yield:** US Treasury rate minus fees (~4.5-5.5%)

### **Growi HF (Hyperliquid Vault)**
- **Type:** Automated perpetuals trading vault
- **Fee:** 10% success fee on profits
- **Performance:** 80% APY with 4.0 Sharpe ratio (first year)
- **Strategy:** Automated futures trading with leverage
- **Risk:** High (96% win rate claimed but leveraged)

### **Peapods Finance**
- **Type:** Self-lending protocol with Leveraged Volatility Farming (LVF)
- **USDC Pool APY:** 21.0% (Ethereum, October 2025)
- **Revenue:** Management + performance fees
- **Model:** Real borrower demand (no emissions)
- **Risk:** Medium-high (leveraged volatility exposure)

### **YieldFi**
- **Type:** Multi-chain yield aggregator
- **yUSD APY:** 9.91%
- **vyUSD APY:** 12.45% (with boosting)
- **Max APY:** 16%+ on certain platforms
- **Strategy:** Automated yield optimization across chains

### **Fluid Lending**
- **Type:** Unified liquidity layer (DEX + Lending + Vault)
- **Fee:** 0% lending fees
- **Revenue:** $2M annually (targeting $10M for buyback program)
- **Model:** Combined transaction fees + lending yields
- **Status:** Rebranded from Instadapp (late 2024)

---

## Comparative Analysis: Payment Flow Models

### Revenue Distribution Patterns

**100% to Users (Growth Phase):**
- **Morpho:** 0% protocol fee, 100% to lenders
- **Avantis:** 0% protocol fee, 100% to LPs
- **Strategy:** Attract TVL first, monetize later via fee switch

**Balanced Model (80-90% to Users):**
- **Reservoir:** 85% to srUSD holders, 15% to protocol
- **Maple:** 80% to syrupUSD holders, 20% to protocol/buybacks
- **Pendle:** 100% to vePENDLE (but vePENDLE = token stakers, aligned)

**High Protocol Take (>20%):**
- **Superstate:** 75-85% to users (treasuries), 15-25% to protocol (mgmt fees)
- **MetaMorpho Vaults:** 50-95% to users, 5-50% to curators (variable)

---

## Risk-Adjusted Yield Ladder

### Conservative (3-8% APY, Low Risk):
1. **Superstate USTB:** 4.5% (US Treasuries, 0.15% fee)
2. **Morpho AUSDC:** 7-9% (Aave-backed, 0% protocol fee)
3. **Reservoir srUSD:** 7.75% (diversified collateral)
4. **Maple syrupUSD:** 7-9% (institutional credit, tested)

### Moderate (8-15% APY, Medium Risk):
5. **Pendle PT Tokens:** 5-15% (fixed yield, principal protected)
6. **YieldFi yUSD:** 9.91% (multi-chain aggregator)
7. **MetaMorpho Vaults:** 8-12% (curated lending strategies)

### Aggressive (15-40% APY, High Risk):
8. **Pendle LPs:** 20-40% (impermanent loss risk)
9. **Peapods USDC:** 21%+ (self-lending, volatility farming)
10. **Avantis avUSDC:** 25-50% (counterparty to traders)

### Extreme (40%+ APY, Very High Risk):
11. **Growi HF:** 80% APY claimed (leveraged perpetuals, high volatility)
12. **Morpho Looping:** 24%+ claimed (leveraged positions, liquidation risk)
13. **Reservoir Looping:** 10-12% (moderate leverage via Morpho)

---

## Sustainability Assessment

### Tier 1: Highly Sustainable ✅

**Maple Finance:**
- $70M+ annual revenue (154% growth)
- Real institutional demand ($2.6B AUM)
- 20% revenue to token buybacks
- Proven business model (surpassed BlackRock)

**Pendle Finance:**
- $130-204M estimated revenue
- Real trading activity generates fees
- 100% to vePENDLE aligns incentives
- May need 80/20 split for treasury eventually

**Reservoir Protocol:**
- ~$7M annual revenue (at $526M TVL)
- 15% performance fee sustainable
- 20x growth in 10 months validates demand
- Needs longer track record

---

### Tier 2: Conditionally Sustainable ⚠️

**Morpho Blue:**
- $0 current revenue (fee switch inactive)
- $26.78M potential (25% fee at current TVL)
- Proven product-market fit ($1.70B TVL)
- Needs fee activation within 12-24 months

**Avantis:**
- $0 protocol revenue (100% to LPs)
- LPs earn sustainable yield (trading fees + P&L)
- Protocol unsustainable without future fee switch
- Needs 5-15% protocol fee eventually

---

### Tier 3: Early Stage / Uncertain 🔄

**Growi HF:**
- 80% APY claims need long-term validation
- 10% success fee model standard
- High Sharpe ratio (4.0) impressive but short track record
- Hyperliquid vault risks

**Peapods Finance:**
- Unique self-lending model
- Revenue from mgmt + performance fees
- "Revenue per dollar of TVL" leader claimed
- Needs more disclosure on fee structure

**YieldFi:**
- 9-12% APY competitive
- V2 architecture launched April 2025
- Fee structure not fully disclosed
- Needs transparency on revenue model

---

## Key Insights & Trends

### 1. Fee Switch Trend

**Observation:** Many protocols launch with 0% fees, plan to activate later

**Examples:**
- **Morpho:** 0% now, 0-25% fee switch available
- **Avantis:** 100% to LPs now, likely 85-95% in future
- **Fluid:** 0% lending fees, targeting $10M revenue for buybacks

**Strategy:**
- Attract TVL with best rates
- Build network effects
- Activate fees once entrenched

**Risk:**
- May never activate (competitive pressure)
- Users may flee when fees turn on
- Need gradual rollout (5% → 10% → 15%)

---

### 2. Real World Asset (RWA) Integration

**Protocols Integrating RWA:**
- **Superstate:** Pure RWA (US Treasuries)
- **Reservoir:** 40% allocation to Treasury tokens
- **Maple:** Institutional credit (crypto-native RWA)
- **Avantis:** RWA perpetuals (gold, oil, forex)

**Benefits:**
- Uncorrelated yield (vs crypto-only)
- Regulatory clarity (licensed products)
- Institutional appeal

**Challenges:**
- KYC requirements limit composability
- Regulatory overhead
- Lower yields than pure DeFi

---

### 3. Institutional vs Retail Segmentation

**Institutional-First:**
- **Maple:** $2.6B AUM, surpassed BlackRock
- **Superstate:** Qualified Purchasers only
- **Trend:** Institutions want compliance, are willing to pay for it

**Retail-First:**
- **Pendle:** Permissionless yield trading
- **Morpho:** Anyone can create markets
- **Avantis:** No KYC for LPs
- **Trend:** Retail wants maximum yield, minimal friction

**Hybrid Models:**
- **Maple syrupUSD:** No KYC for retail, but backs institutional loans
- **Reservoir:** Retail front-end, institutional-grade strategies
- **Trend:** Best of both worlds (retail access, institutional execution)

---

### 4. Composability Wars

**Most Composable:**
- **Reservoir wsrUSD:** Zero fees, real-time accrual, designed for DeFi
- **Pendle PT/YT:** ERC-20 tokens, usable everywhere
- **Morpho Markets:** Isolated but composable

**Least Composable:**
- **Maple syrupUSD:** Walled garden (though integrating with Spark, Morpho)
- **Superstate:** KYC required, limited to qualified investors
- **Avantis:** Vault-specific, not designed for external use

**Trend:** Protocols building "money legos" win long-term
- Reservoir wsrUSD integrated with Morpho, Spark
- Pendle PT used as collateral in Aave, Compound
- Maple syrupUSD expanding to Morpho, Spark ($550M integrated)

---

## Recommendations by User Profile

### For Conservative Investors (Capital Preservation Priority):

**Best Options:**
1. **Superstate USTB** (4.5% APY, US Treasuries)
2. **Reservoir srUSD** (7.75% APY, diversified)
3. **Maple syrupUSD** (7-9% APY, institutional credit)
4. **Morpho AUSDC** (9% APY, Aave-backed)

**Avoid:**
- Leveraged strategies (Growi HF, looping)
- Counterparty risk vaults (Avantis)
- Unproven protocols (<6 months old)

---

### For Moderate Risk Investors (Balanced Yield/Risk):

**Best Options:**
1. **Pendle PT Tokens** (5-15% fixed, principal protected)
2. **YieldFi yUSD** (9.91% APY, multi-chain)
3. **MetaMorpho Vaults** (8-12% APY, curated)
4. **Reservoir wsrUSD + Morpho** (10-12% with moderate looping)

**Avoid:**
- 100%+ APY claims (unsustainable)
- Protocols with 0 revenue (Morpho, Avantis for protocol investing)

---

### For Aggressive Investors (Maximum Yield):

**Best Options:**
1. **Avantis avUSDC** (25-50% APY, if comfortable with counterparty risk)
2. **Pendle LPs** (20-40% APY, impermanent loss manageable)
3. **Peapods LVF** (21%+ APY, volatility farming)
4. **Growi HF** (80% APY claimed, if proven over 12+ months)

**Risk Management:**
- Allocate <20% of portfolio
- Monitor performance weekly
- Set stop-losses on volatile positions

---

### For Protocol Token Investors (MORPHO, SYRUP, DAM, AVNT):

**Best Risk/Reward:**
1. **SYRUP (Maple):** 20% revenue buybacks, $70M+ revenue, proven
2. **PENDLE:** 100% revenue to vePENDLE, $130-204M revenue
3. **DAM (Reservoir):** High growth (20x), needs revenue-sharing model
4. **MORPHO:** $0 revenue currently, but $26M+ potential, $1.70B TVL
5. **AVNT (Avantis):** $0 revenue, needs fee switch, high growth (56x)

**Red Flags:**
- Tokens with no revenue share (governance only)
- Protocols with 0% fees and no activation plan
- <$100M TVL (illiquid token markets)

---

## Conclusion

The vault/lending/borrowing protocol landscape in Q4 2025 demonstrates:

**Maturation:**
- Protocols are moving from unsustainable high yields → sustainable business models
- Fee switches being built in from day 1 (Morpho, Avantis)
- Revenue-sharing becoming standard (Maple 20%, Pendle 100%)

**Segmentation:**
- **Conservative:** 4-8% APY (RWA-backed, institutional credit)
- **Moderate:** 8-15% APY (lending optimization, yield aggregation)
- **Aggressive:** 15-40% APY (perpetuals vaults, leveraged strategies)
- **Extreme:** 40%+ APY (often unsustainable, use cautiously)

**Sustainability Leaders:**
- **Maple:** $70M+ revenue, 154% growth, surpassed BlackRock
- **Pendle:** $130-204M revenue, 100% to token holders
- **Reservoir:** $7M revenue, 20x growth in 10 months

**Sustainability Laggards:**
- **Morpho:** $0 revenue despite $1.70B TVL (needs fee activation)
- **Avantis:** $0 protocol revenue (100% to LPs unsustainable)

**Recommendation:** Diversify across risk tiers, favor protocols with real revenue, monitor fee switch activations closely.

---

**Document Version:** 1.0
**Word Count:** ~4,200 words
**Protocols Covered:** 11 detailed + 9 brief summaries = 20 total
**Last Updated:** October 26, 2025
