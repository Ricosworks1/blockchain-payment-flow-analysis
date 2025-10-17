import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from matplotlib.patches import Rectangle
import seaborn as sns

# Set style
plt.style.use('seaborn-v0_8-darkgrid')
sns.set_palette("husl")

# Create figure with multiple subplots
fig = plt.figure(figsize=(20, 24))

# ========== Chart 1: Total MEV Market Size by Chain ==========
ax1 = plt.subplot(4, 3, 1)
chains = ['Ethereum', 'Solana\n(Jito)', 'EVM L1s', 'Ethereum\nL2s', 'Alt L1s', 'Cross-Chain']
mev_values_low = [3000, 1200, 1300, 400, 200, 200]
mev_values_high = [5000, 1200, 2200, 800, 600, 500]
mev_values_mid = [(low + high) / 2 for low, high in zip(mev_values_low, mev_values_high)]

x = np.arange(len(chains))
bars = ax1.bar(x, mev_values_mid, color=['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'],
               alpha=0.8, edgecolor='black', linewidth=1.5)

# Add error bars for ranges
errors = [(high - low) / 2 for low, high in zip(mev_values_low, mev_values_high)]
ax1.errorbar(x, mev_values_mid, yerr=errors, fmt='none', ecolor='black', capsize=5, capthick=2)

ax1.set_ylabel('Annual MEV Value ($M)', fontsize=11, fontweight='bold')
ax1.set_title('Annual MEV Market Size by Chain (2024)', fontsize=13, fontweight='bold', pad=15)
ax1.set_xticks(x)
ax1.set_xticklabels(chains, fontsize=9)
ax1.grid(axis='y', alpha=0.3)

# Add value labels
for i, (bar, mid, low, high) in enumerate(zip(bars, mev_values_mid, mev_values_low, mev_values_high)):
    if low == high:
        label = f'${mid:.0f}M'
    else:
        label = f'${low:.0f}M-${high:.0f}M'
    ax1.text(bar.get_x() + bar.get_width()/2, bar.get_height() + errors[i] + 100,
             label, ha='center', va='bottom', fontsize=8, fontweight='bold')

# ========== Chart 2: Total MEV Market Pie Chart ==========
ax2 = plt.subplot(4, 3, 2)
total_low = sum(mev_values_low)
total_high = sum(mev_values_high)
labels = ['Ethereum\n(42-56%)', 'Solana\n(13-17%)', 'EVM L1s\n(15-25%)',
          'ETH L2s\n(5-9%)', 'Alt L1s\n(2-7%)', 'Cross-Chain\n(2-6%)']
sizes = mev_values_mid
colors = ['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b']

wedges, texts, autotexts = ax2.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%',
                                     startangle=90, pctdistance=0.85, textprops={'fontsize': 9})
for autotext in autotexts:
    autotext.set_color('white')
    autotext.set_fontweight('bold')

ax2.set_title(f'MEV Market Share Distribution\nTotal: ${total_low/1000:.1f}B-${total_high/1000:.1f}B',
              fontsize=13, fontweight='bold', pad=15)

# ========== Chart 3: Ethereum MEV Distribution ==========
ax3 = plt.subplot(4, 3, 3)
eth_recipients = ['MEV\nSearchers', 'Block\nBuilders', 'Validators\n(MEV-Boost)', 'MEV-Boost\nRelays']
eth_pct_low = [60, 15, 10, 1]
eth_pct_high = [70, 25, 15, 5]
eth_pct_mid = [(low + high) / 2 for low, high in zip(eth_pct_low, eth_pct_high)]

# Calculate dollar values (using $4B mid-point)
eth_total = 4000
eth_values_low = [eth_total * pct / 100 for pct in eth_pct_low]
eth_values_high = [eth_total * pct / 100 for pct in eth_pct_high]
eth_values_mid = [(low + high) / 2 for low, high in zip(eth_values_low, eth_values_high)]

x3 = np.arange(len(eth_recipients))
bars3 = ax3.bar(x3, eth_values_mid, color=['#e74c3c', '#3498db', '#2ecc71', '#f39c12'],
                alpha=0.8, edgecolor='black', linewidth=1.5)

# Add error bars
errors3 = [(high - low) / 2 for low, high in zip(eth_values_low, eth_values_high)]
ax3.errorbar(x3, eth_values_mid, yerr=errors3, fmt='none', ecolor='black', capsize=5, capthick=2)

ax3.set_ylabel('Annual Value ($M)', fontsize=11, fontweight='bold')
ax3.set_title('Ethereum MEV Distribution by Recipient', fontsize=13, fontweight='bold', pad=15)
ax3.set_xticks(x3)
ax3.set_xticklabels(eth_recipients, fontsize=9)
ax3.grid(axis='y', alpha=0.3)

# Add value labels
for i, (bar, low, high, pct_low, pct_high) in enumerate(zip(bars3, eth_values_low, eth_values_high, eth_pct_low, eth_pct_high)):
    label = f'${low:.0f}M-${high:.0f}M\n({pct_low}-{pct_high}%)'
    ax3.text(bar.get_x() + bar.get_width()/2, bar.get_height() + errors3[i] + 50,
             label, ha='center', va='bottom', fontsize=8, fontweight='bold')

# ========== Chart 4: Solana/Jito MEV Distribution ==========
ax4 = plt.subplot(4, 3, 4)
jito_recipients = ['Validators', 'Jito DAO', 'JitoSOL\nHolders', 'JTO\nHolders']
jito_pct = [94, 5.7, 0.15, 0.15]
jito_total = 1200  # $1.2B annually
jito_values = [jito_total * pct / 100 for pct in jito_pct]

x4 = np.arange(len(jito_recipients))
bars4 = ax4.bar(x4, jito_values, color=['#1abc9c', '#e67e22', '#9b59b6', '#34495e'],
                alpha=0.8, edgecolor='black', linewidth=1.5)

ax4.set_ylabel('Annual Value ($M)', fontsize=11, fontweight='bold')
ax4.set_title('Solana (Jito) MEV Distribution - $1.2B Total', fontsize=13, fontweight='bold', pad=15)
ax4.set_xticks(x4)
ax4.set_xticklabels(jito_recipients, fontsize=9)
ax4.set_yscale('log')
ax4.grid(axis='y', alpha=0.3)

# Add value labels
for i, (bar, val, pct) in enumerate(zip(bars4, jito_values, jito_pct)):
    label = f'${val:.1f}M\n({pct}%)'
    ax4.text(bar.get_x() + bar.get_width()/2, bar.get_height() * 1.3,
             label, ha='center', va='bottom', fontsize=8, fontweight='bold')

# ========== Chart 5: Solana vs Ethereum MEV Distribution Model ==========
ax5 = plt.subplot(4, 3, 5)
categories = ['Validators', 'Searchers/\nBuilders', 'Infrastructure']

# Ethereum distribution (% of total)
eth_dist = [12.5, 67.5, 20]  # Mid-points
# Solana distribution (% of total)
sol_dist = [94, 0, 6]  # Validators get 94%, infrastructure gets 6%, searchers tips not included in pie

x5 = np.arange(len(categories))
width = 0.35

bars_eth = ax5.bar(x5 - width/2, eth_dist, width, label='Ethereum',
                   color='#1f77b4', alpha=0.8, edgecolor='black', linewidth=1.5)
bars_sol = ax5.bar(x5 + width/2, sol_dist, width, label='Solana (Jito)',
                   color='#ff7f0e', alpha=0.8, edgecolor='black', linewidth=1.5)

ax5.set_ylabel('% of Total MEV', fontsize=11, fontweight='bold')
ax5.set_title('MEV Distribution Models: Ethereum vs Solana', fontsize=13, fontweight='bold', pad=15)
ax5.set_xticks(x5)
ax5.set_xticklabels(categories, fontsize=9)
ax5.legend(fontsize=10)
ax5.grid(axis='y', alpha=0.3)

# Add value labels
for bars in [bars_eth, bars_sol]:
    for bar in bars:
        height = bar.get_height()
        if height > 0:
            ax5.text(bar.get_x() + bar.get_width()/2, height + 1.5,
                    f'{height:.1f}%', ha='center', va='bottom', fontsize=8, fontweight='bold')

# ========== Chart 6: EVM L1 Chains MEV Breakdown ==========
ax6 = plt.subplot(4, 3, 6)
evm_chains = ['BNB\nChain', 'Avalanche\nC-Chain', 'Polygon\nPoS']
evm_low = [600, 200, 150]
evm_high = [900, 400, 300]
evm_mid = [(low + high) / 2 for low, high in zip(evm_low, evm_high)]
validator_pct = [87.5, 75, 65]  # Mid-points of validator capture

x6 = np.arange(len(evm_chains))
bars6 = ax6.bar(x6, evm_mid, color=['#f1c40f', '#e74c3c', '#8e44ad'],
                alpha=0.8, edgecolor='black', linewidth=1.5)

# Add error bars
errors6 = [(high - low) / 2 for low, high in zip(evm_low, evm_high)]
ax6.errorbar(x6, evm_mid, yerr=errors6, fmt='none', ecolor='black', capsize=5, capthick=2)

ax6.set_ylabel('Annual MEV Value ($M)', fontsize=11, fontweight='bold')
ax6.set_title('EVM L1 Chains MEV Extraction', fontsize=13, fontweight='bold', pad=15)
ax6.set_xticks(x6)
ax6.set_xticklabels(evm_chains, fontsize=9)
ax6.grid(axis='y', alpha=0.3)

# Add value labels with validator %
for i, (bar, low, high, val_pct) in enumerate(zip(bars6, evm_low, evm_high, validator_pct)):
    label = f'${low}-${high}M\n({val_pct:.0f}% to validators)'
    ax6.text(bar.get_x() + bar.get_width()/2, bar.get_height() + errors6[i] + 20,
             label, ha='center', va='bottom', fontsize=8, fontweight='bold')

# ========== Chart 7: Ethereum L2 Rollups MEV ==========
ax7 = plt.subplot(4, 3, 7)
l2_chains = ['Arbitrum', 'Base', 'Optimism']
l2_low = [150, 10, 8]
l2_high = [250, 20, 15]
l2_mid = [(low + high) / 2 for low, high in zip(l2_low, l2_high)]
sequencer_pct = [95, 95, 90]

x7 = np.arange(len(l2_chains))
bars7 = ax7.bar(x7, l2_mid, color=['#3498db', '#2c3e50', '#e74c3c'],
                alpha=0.8, edgecolor='black', linewidth=1.5)

# Add error bars
errors7 = [(high - low) / 2 for low, high in zip(l2_low, l2_high)]
ax7.errorbar(x7, l2_mid, yerr=errors7, fmt='none', ecolor='black', capsize=5, capthick=2)

ax7.set_ylabel('Annual MEV Value ($M)', fontsize=11, fontweight='bold')
ax7.set_title('Ethereum L2 Rollups MEV Extraction', fontsize=13, fontweight='bold', pad=15)
ax7.set_xticks(x7)
ax7.set_xticklabels(l2_chains, fontsize=9)
ax7.grid(axis='y', alpha=0.3)

# Add value labels
for i, (bar, low, high, seq_pct) in enumerate(zip(bars7, l2_low, l2_high, sequencer_pct)):
    label = f'${low}-${high}M\n({seq_pct}% to sequencer)'
    ax7.text(bar.get_x() + bar.get_width()/2, bar.get_height() + errors7[i] + 5,
             label, ha='center', va='bottom', fontsize=7, fontweight='bold')

# ========== Chart 8: Alternative L1s MEV ==========
ax8 = plt.subplot(4, 3, 8)
alt_chains = ['Aptos', 'Sui', 'Near', 'Cardano']
alt_low = [30, 20, 15, 5]
alt_high = [80, 50, 40, 15]
alt_mid = [(low + high) / 2 for low, high in zip(alt_low, alt_high)]
validator_capture = [85, 100, 100, 100]

x8 = np.arange(len(alt_chains))
bars8 = ax8.bar(x8, alt_mid, color=['#16a085', '#27ae60', '#2980b9', '#8e44ad'],
                alpha=0.8, edgecolor='black', linewidth=1.5)

# Add error bars
errors8 = [(high - low) / 2 for low, high in zip(alt_low, alt_high)]
ax8.errorbar(x8, alt_mid, yerr=errors8, fmt='none', ecolor='black', capsize=5, capthick=2)

ax8.set_ylabel('Annual MEV Value ($M)', fontsize=11, fontweight='bold')
ax8.set_title('Alternative L1s MEV Extraction', fontsize=13, fontweight='bold', pad=15)
ax8.set_xticks(x8)
ax8.set_xticklabels(alt_chains, fontsize=9)
ax8.grid(axis='y', alpha=0.3)

# Add value labels
for i, (bar, low, high, val_cap) in enumerate(zip(bars8, alt_low, alt_high, validator_capture)):
    label = f'${low}-${high}M\n({val_cap}% validators)'
    ax8.text(bar.get_x() + bar.get_width()/2, bar.get_height() + errors8[i] + 3,
             label, ha='center', va='bottom', fontsize=7, fontweight='bold')

# ========== Chart 9: Cross-Chain MEV Distribution ==========
ax9 = plt.subplot(4, 3, 9)
xchain_recipients = ['Bridge\nOperators', 'Cross-chain\nSearchers', 'Multi-chain\nValidators']
xchain_pct_low = [40, 30, 15]
xchain_pct_high = [50, 40, 25]
xchain_pct_mid = [(low + high) / 2 for low, high in zip(xchain_pct_low, xchain_pct_high)]

# Using $350M mid-point for cross-chain MEV
xchain_total = 350
xchain_values_low = [xchain_total * pct / 100 for pct in xchain_pct_low]
xchain_values_high = [xchain_total * pct / 100 for pct in xchain_pct_high]
xchain_values_mid = [(low + high) / 2 for low, high in zip(xchain_values_low, xchain_values_high)]

x9 = np.arange(len(xchain_recipients))
bars9 = ax9.bar(x9, xchain_values_mid, color=['#e67e22', '#3498db', '#2ecc71'],
                alpha=0.8, edgecolor='black', linewidth=1.5)

# Add error bars
errors9 = [(high - low) / 2 for low, high in zip(xchain_values_low, xchain_values_high)]
ax9.errorbar(x9, xchain_values_mid, yerr=errors9, fmt='none', ecolor='black', capsize=5, capthick=2)

ax9.set_ylabel('Annual Value ($M)', fontsize=11, fontweight='bold')
ax9.set_title('Cross-Chain MEV Distribution ($200-500M Total)', fontsize=13, fontweight='bold', pad=15)
ax9.set_xticks(x9)
ax9.set_xticklabels(xchain_recipients, fontsize=9)
ax9.grid(axis='y', alpha=0.3)

# Add value labels
for i, (bar, low, high, pct_low, pct_high) in enumerate(zip(bars9, xchain_values_low, xchain_values_high,
                                                              xchain_pct_low, xchain_pct_high)):
    label = f'${low:.0f}-${high:.0f}M\n({pct_low}-{pct_high}%)'
    ax9.text(bar.get_x() + bar.get_width()/2, bar.get_height() + errors9[i] + 5,
             label, ha='center', va='bottom', fontsize=8, fontweight='bold')

# ========== Chart 10: MEV Infrastructure Revenue ==========
ax10 = plt.subplot(4, 3, 10)
infra = ['MEV Searcher\nFirms', 'Builder\nNetworks', 'Flashbots\n(Relays)']
infra_low = [500, 100, 10]
infra_high = [2000, 300, 30]
infra_mid = [(low + high) / 2 for low, high in zip(infra_low, infra_high)]

x10 = np.arange(len(infra))
bars10 = ax10.bar(x10, infra_mid, color=['#c0392b', '#16a085', '#f39c12'],
                  alpha=0.8, edgecolor='black', linewidth=1.5)

# Add error bars
errors10 = [(high - low) / 2 for low, high in zip(infra_low, infra_high)]
ax10.errorbar(x10, infra_mid, yerr=errors10, fmt='none', ecolor='black', capsize=5, capthick=2)

ax10.set_ylabel('Annual Revenue ($M)', fontsize=11, fontweight='bold')
ax10.set_title('MEV Infrastructure Revenue (Ethereum)', fontsize=13, fontweight='bold', pad=15)
ax10.set_xticks(x10)
ax10.set_xticklabels(infra, fontsize=9)
ax10.grid(axis='y', alpha=0.3)

# Add value labels
for i, (bar, low, high) in enumerate(zip(bars10, infra_low, infra_high)):
    label = f'${low}-${high}M'
    ax10.text(bar.get_x() + bar.get_width()/2, bar.get_height() + errors10[i] + 50,
             label, ha='center', va='bottom', fontsize=8, fontweight='bold')

# ========== Chart 11: Validator MEV Capture Rate Comparison ==========
ax11 = plt.subplot(4, 3, 11)
chains_validator = ['Ethereum', 'BNB Chain', 'Avalanche', 'Polygon', 'Solana\n(Jito)',
                    'Arbitrum\nSequencer', 'Base\nSequencer', 'Sui', 'Aptos', 'Cardano']
validator_capture_pct = [12.5, 87.5, 75, 65, 94, 95, 95, 100, 85, 100]

x11 = np.arange(len(chains_validator))
colors_gradient = plt.cm.RdYlGn(np.linspace(0.2, 0.9, len(chains_validator)))
bars11 = ax11.barh(x11, validator_capture_pct, color=colors_gradient,
                    alpha=0.8, edgecolor='black', linewidth=1.5)

ax11.set_xlabel('Validator/Sequencer MEV Capture (%)', fontsize=11, fontweight='bold')
ax11.set_title('Validator/Sequencer MEV Capture Rate by Chain', fontsize=13, fontweight='bold', pad=15)
ax11.set_yticks(x11)
ax11.set_yticklabels(chains_validator, fontsize=9)
ax11.grid(axis='x', alpha=0.3)
ax11.set_xlim(0, 105)

# Add value labels
for i, (bar, pct) in enumerate(zip(bars11, validator_capture_pct)):
    ax11.text(pct + 1.5, bar.get_y() + bar.get_height()/2, f'{pct:.1f}%',
             va='center', fontsize=8, fontweight='bold')

# ========== Chart 12: Total MEV Flow Sankey-style Breakdown ==========
ax12 = plt.subplot(4, 3, 12)

# Create a stacked bar showing the flow of MEV value
stages = ['Total\nMEV', 'By Chain', 'Recipients']
total_mev = 8900  # Mid-point of total market

# Stage 1: Total MEV
# Stage 2: By chain distribution
eth_share = 4000
sol_share = 1200
other_share = 3700

# Stage 3: Recipient types across all chains
validators_total = eth_share * 0.125 + sol_share * 0.94 + other_share * 0.75  # Weighted average
searchers_total = eth_share * 0.675 + other_share * 0.15
infrastructure_total = eth_share * 0.2 + sol_share * 0.06 + other_share * 0.1

data = pd.DataFrame({
    'Validators/Sequencers': [0, 0, validators_total],
    'Searchers/Builders': [0, 0, searchers_total],
    'Infrastructure': [0, 0, infrastructure_total],
})

# Create text summary instead of complex sankey
ax12.axis('off')
summary_text = f"""
MEV VALUE FLOW SUMMARY (Annual)

Total Market: ${total_mev/1000:.1f}B

BY CHAIN:
• Ethereum: ${eth_share/1000:.1f}B (45%)
• Solana: ${sol_share/1000:.1f}B (13%)
• Other Chains: ${other_share/1000:.1f}B (42%)

BY RECIPIENT TYPE:
• Validators/Sequencers: ${validators_total:.0f}M (38%)
• Searchers/Builders: ${searchers_total:.0f}M (40%)
• Infrastructure: ${infrastructure_total:.0f}M (22%)

KEY INSIGHTS:
• Ethereum: Most decentralized distribution
• Solana: 94% validator capture (highest)
• L2s: 90-95% sequencer capture (centralized)
• Alt L1s: 85-100% validator capture
"""

ax12.text(0.1, 0.9, summary_text, transform=ax12.transAxes, fontsize=10,
         verticalalignment='top', fontfamily='monospace',
         bbox=dict(boxstyle='round', facecolor='wheat', alpha=0.5))

ax12.set_title('MEV Market Flow Summary', fontsize=13, fontweight='bold', pad=15)

plt.tight_layout(pad=3.0)
plt.savefig('/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis/mev_recipients_analysis.png',
            dpi=300, bbox_inches='tight')
print("Chart saved as: mev_recipients_analysis.png")
plt.show()
