import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns

# Set style
plt.style.use('seaborn-v0_8-darkgrid')
sns.set_palette("husl")

# Create figure with additional comparative charts
fig = plt.figure(figsize=(20, 12))

# ========== Chart 1: MEV per Transaction Value Comparison ==========
ax1 = plt.subplot(2, 3, 1)
chains_tx = ['Ethereum', 'Solana', 'BNB Chain', 'Arbitrum', 'Base', 'Polygon']
# Estimated MEV per $1M of transaction value
mev_per_million = [150, 80, 120, 100, 50, 90]  # Estimated based on MEV intensity

x1 = np.arange(len(chains_tx))
bars1 = ax1.bar(x1, mev_per_million, color=['#1f77b4', '#ff7f0e', '#f1c40f', '#3498db', '#2c3e50', '#8e44ad'],
                alpha=0.8, edgecolor='black', linewidth=1.5)

ax1.set_ylabel('MEV per $1M Volume ($)', fontsize=11, fontweight='bold')
ax1.set_title('MEV Extraction Efficiency by Chain', fontsize=13, fontweight='bold', pad=15)
ax1.set_xticks(x1)
ax1.set_xticklabels(chains_tx, fontsize=9, rotation=45, ha='right')
ax1.grid(axis='y', alpha=0.3)

# Add value labels
for bar, val in zip(bars1, mev_per_million):
    ax1.text(bar.get_x() + bar.get_width()/2, bar.get_height() + 3,
             f'${val}', ha='center', va='bottom', fontsize=9, fontweight='bold')

# ========== Chart 2: Centralization Score (Validator/Sequencer Capture) ==========
ax2 = plt.subplot(2, 3, 2)
chains_cent = ['Ethereum', 'Solana', 'BNB\nChain', 'L2\nSequencers', 'Alt L1s\n(avg)', 'Polygon']
centralization_score = [12.5, 94, 87.5, 93.3, 92.5, 65]
colors_cent = ['green', 'orange', 'red', 'red', 'orange', 'orange']

x2 = np.arange(len(chains_cent))
bars2 = ax2.bar(x2, centralization_score, color=colors_cent,
                alpha=0.7, edgecolor='black', linewidth=1.5)

ax2.set_ylabel('Validator/Sequencer Capture (%)', fontsize=11, fontweight='bold')
ax2.set_title('MEV Centralization Score\n(Higher = More Centralized)', fontsize=13, fontweight='bold', pad=15)
ax2.set_xticks(x2)
ax2.set_xticklabels(chains_cent, fontsize=9)
ax2.grid(axis='y', alpha=0.3)
ax2.axhline(y=50, color='red', linestyle='--', linewidth=2, alpha=0.5, label='50% Threshold')
ax2.legend(fontsize=9)

# Add value labels
for bar, val in zip(bars2, centralization_score):
    ax2.text(bar.get_x() + bar.get_width()/2, bar.get_height() + 1.5,
             f'{val:.1f}%', ha='center', va='bottom', fontsize=9, fontweight='bold')

# ========== Chart 3: Searcher Profit Margins Comparison ==========
ax3 = plt.subplot(2, 3, 3)
chains_margin = ['Ethereum', 'Solana', 'BNB Chain', 'L2 Rollups', 'Cross-Chain']
# Net profit margins for searchers after tips/fees
margin_low = [25, 20, 30, 35, 40]
margin_high = [45, 40, 50, 50, 60]
margin_mid = [(low + high) / 2 for low, high in zip(margin_low, margin_high)]

x3 = np.arange(len(chains_margin))
bars3 = ax3.bar(x3, margin_mid, color=['#e74c3c', '#3498db', '#f39c12', '#9b59b6', '#16a085'],
                alpha=0.8, edgecolor='black', linewidth=1.5)

# Add error bars
errors3 = [(high - low) / 2 for low, high in zip(margin_low, margin_high)]
ax3.errorbar(x3, margin_mid, yerr=errors3, fmt='none', ecolor='black', capsize=5, capthick=2)

ax3.set_ylabel('Net Profit Margin (%)', fontsize=11, fontweight='bold')
ax3.set_title('MEV Searcher Profit Margins by Ecosystem', fontsize=13, fontweight='bold', pad=15)
ax3.set_xticks(x3)
ax3.set_xticklabels(chains_margin, fontsize=9)
ax3.grid(axis='y', alpha=0.3)

# Add value labels
for i, (bar, low, high) in enumerate(zip(bars3, margin_low, margin_high)):
    label = f'{low}-{high}%'
    ax3.text(bar.get_x() + bar.get_width()/2, bar.get_height() + errors3[i] + 1,
             label, ha='center', va='bottom', fontsize=8, fontweight='bold')

# ========== Chart 4: MEV Infrastructure Development Timeline ==========
ax4 = plt.subplot(2, 3, 4)
# Timeline of key MEV infrastructure launches
events = ['Flashbots\nLaunched', 'MEV-Boost\n(95% adoption)', 'Jito\nLaunched', 'Builder\nMarket', 'L2 Sequencer\nAuctions']
years = [2020, 2022, 2022.5, 2023, 2024.5]
impact = [8, 10, 9, 7, 6]  # Relative impact score

colors_timeline = ['#e74c3c', '#3498db', '#f39c12', '#2ecc71', '#9b59b6']
ax4.scatter(years, impact, s=[i*100 for i in impact], c=colors_timeline, alpha=0.7, edgecolors='black', linewidth=2)

for i, (year, imp, event) in enumerate(zip(years, impact, events)):
    ax4.annotate(event, (year, imp), xytext=(0, 10), textcoords='offset points',
                ha='center', fontsize=8, fontweight='bold',
                bbox=dict(boxstyle='round,pad=0.3', facecolor=colors_timeline[i], alpha=0.3))

ax4.set_xlabel('Year', fontsize=11, fontweight='bold')
ax4.set_ylabel('Market Impact Score', fontsize=11, fontweight='bold')
ax4.set_title('MEV Infrastructure Evolution Timeline', fontsize=13, fontweight='bold', pad=15)
ax4.set_xlim(2019.5, 2025)
ax4.set_ylim(4, 11)
ax4.grid(alpha=0.3)

# ========== Chart 5: Ecosystem Maturity Matrix ==========
ax5 = plt.subplot(2, 3, 5)

ecosystems = {
    'Ethereum': {'maturity': 10, 'mev_value': 4000, 'decentralization': 8},
    'Solana': {'maturity': 8, 'mev_value': 1200, 'decentralization': 3},
    'BNB Chain': {'maturity': 7, 'mev_value': 750, 'decentralization': 2},
    'Arbitrum': {'maturity': 6, 'mev_value': 200, 'decentralization': 1},
    'Base': {'maturity': 5, 'mev_value': 15, 'decentralization': 1},
    'Polygon': {'maturity': 7, 'mev_value': 225, 'decentralization': 4},
    'Sui': {'maturity': 4, 'mev_value': 35, 'decentralization': 5},
    'Aptos': {'maturity': 5, 'mev_value': 55, 'decentralization': 4},
}

x_maturity = [data['maturity'] for data in ecosystems.values()]
y_decentral = [data['decentralization'] for data in ecosystems.values()]
sizes = [data['mev_value'] / 10 for data in ecosystems.values()]  # Scale for visualization
colors_eco = ['#1f77b4', '#ff7f0e', '#f1c40f', '#3498db', '#2c3e50', '#8e44ad', '#16a085', '#e67e22']

scatter = ax5.scatter(x_maturity, y_decentral, s=sizes, c=colors_eco, alpha=0.6, edgecolors='black', linewidth=2)

for i, (name, data) in enumerate(ecosystems.items()):
    ax5.annotate(name, (data['maturity'], data['decentralization']),
                xytext=(5, 5), textcoords='offset points', fontsize=8, fontweight='bold')

ax5.set_xlabel('Infrastructure Maturity Score (1-10)', fontsize=11, fontweight='bold')
ax5.set_ylabel('MEV Decentralization Score (1-10)', fontsize=11, fontweight='bold')
ax5.set_title('MEV Ecosystem Maturity Matrix\n(Bubble size = Annual MEV value)', fontsize=13, fontweight='bold', pad=15)
ax5.set_xlim(3, 11)
ax5.set_ylim(0, 9)
ax5.grid(alpha=0.3)

# Add quadrant lines
ax5.axvline(x=6.5, color='gray', linestyle='--', alpha=0.5)
ax5.axhline(y=4.5, color='gray', linestyle='--', alpha=0.5)

# Add quadrant labels
ax5.text(8.5, 7, 'Mature &\nDecentralized', fontsize=9, ha='center', style='italic', alpha=0.6)
ax5.text(8.5, 2, 'Mature &\nCentralized', fontsize=9, ha='center', style='italic', alpha=0.6)
ax5.text(4.5, 7, 'Emerging &\nDecentralized', fontsize=9, ha='center', style='italic', alpha=0.6)
ax5.text(4.5, 2, 'Emerging &\nCentralized', fontsize=9, ha='center', style='italic', alpha=0.6)

# ========== Chart 6: Value Distribution: Users vs MEV Recipients ==========
ax6 = plt.subplot(2, 3, 6)

# Comparing how much value goes to MEV vs stays with users
chains_value = ['Ethereum', 'Solana', 'BNB Chain', 'L2 Rollups', 'Alt L1s']
# Estimated % of extractable value captured by MEV (rest goes to users via better execution)
mev_captured = [70, 85, 90, 95, 80]  # % captured by MEV actors
user_retained = [30, 15, 10, 5, 20]  # % retained by users

x6 = np.arange(len(chains_value))
width = 0.6

bars_mev = ax6.bar(x6, mev_captured, width, label='Captured by MEV Actors',
                   color='#e74c3c', alpha=0.8, edgecolor='black', linewidth=1.5)
bars_user = ax6.bar(x6, user_retained, width, bottom=mev_captured, label='Retained by Users',
                    color='#2ecc71', alpha=0.8, edgecolor='black', linewidth=1.5)

ax6.set_ylabel('% of Extractable Value', fontsize=11, fontweight='bold')
ax6.set_title('Value Capture: MEV Actors vs End Users', fontsize=13, fontweight='bold', pad=15)
ax6.set_xticks(x6)
ax6.set_xticklabels(chains_value, fontsize=9, rotation=45, ha='right')
ax6.legend(fontsize=10)
ax6.grid(axis='y', alpha=0.3)
ax6.set_ylim(0, 110)

# Add percentage labels
for i, (mev_cap, user_ret) in enumerate(zip(mev_captured, user_retained)):
    ax6.text(i, mev_cap / 2, f'{mev_cap}%', ha='center', va='center',
             fontsize=9, fontweight='bold', color='white')
    ax6.text(i, mev_cap + user_ret / 2, f'{user_ret}%', ha='center', va='center',
             fontsize=9, fontweight='bold', color='white')

plt.tight_layout(pad=3.0)
plt.savefig('/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis/mev_comparative_analysis.png',
            dpi=300, bbox_inches='tight')
print("Comparative chart saved as: mev_comparative_analysis.png")
plt.show()
