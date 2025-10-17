import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from matplotlib.patches import FancyBboxPatch, Circle
import seaborn as sns

# Set style
plt.style.use('seaborn-v0_8-darkgrid')
sns.set_palette("husl")

# Create figure with multiple subplots
fig = plt.figure(figsize=(22, 26))
fig.suptitle('RPC & Infrastructure Providers - Comprehensive Market Analysis',
             fontsize=22, fontweight='bold', y=0.995)

# ========== Chart 1: Provider Revenue Comparison ==========
ax1 = plt.subplot(4, 3, 1)
providers = ['Infura', 'Alchemy', 'QuickNode', 'The Graph', 'Ankr']
revenue_low = [50, 50, 30, 30, 20]
revenue_high = [150, 100, 80, 80, 50]
revenue_mid = [(low + high) / 2 for low, high in zip(revenue_low, revenue_high)]

colors_providers = ['#3498db', '#9b59b6', '#e74c3c', '#f39c12', '#1abc9c']
x1 = np.arange(len(providers))
bars1 = ax1.bar(x1, revenue_mid, color=colors_providers,
                alpha=0.8, edgecolor='black', linewidth=2)

# Add error bars
errors1 = [(high - low) / 2 for low, high in zip(revenue_low, revenue_high)]
ax1.errorbar(x1, revenue_mid, yerr=errors1, fmt='none', ecolor='black', capsize=5, capthick=2)

ax1.set_ylabel('Annual Revenue ($M)', fontsize=11, fontweight='bold')
ax1.set_title('Annual Revenue by Provider', fontsize=13, fontweight='bold', pad=15)
ax1.set_xticks(x1)
ax1.set_xticklabels(providers, fontsize=9, rotation=30, ha='right')
ax1.grid(axis='y', alpha=0.3)

# Add value labels
for i, (bar, low, high) in enumerate(zip(bars1, revenue_low, revenue_high)):
    label = f'${low}-{high}M'
    ax1.text(bar.get_x() + bar.get_width()/2, bar.get_height() + errors1[i] + 3,
             label, ha='center', va='bottom', fontsize=8, fontweight='bold')

# ========== Chart 2: Market Share Pie Chart ==========
ax2 = plt.subplot(4, 3, 2)
market_shares = [27.5, 22.5, 12.5, 12.5, 10, 15]
share_labels = ['Infura\n(27.5%)', 'Alchemy\n(22.5%)', 'QuickNode\n(12.5%)',
                'The Graph\n(12.5%)', 'Ankr\n(10%)', 'Others\n(15%)']
colors_share = ['#3498db', '#9b59b6', '#e74c3c', '#f39c12', '#1abc9c', '#95a5a6']

wedges, texts, autotexts = ax2.pie(market_shares, labels=share_labels, colors=colors_share,
                                     autopct='%1.1f%%', startangle=90, pctdistance=0.85,
                                     textprops={'fontsize': 9, 'fontweight': 'bold'})
for autotext in autotexts:
    autotext.set_color('white')
    autotext.set_fontsize(10)
    autotext.set_fontweight('bold')

ax2.set_title('Market Share Distribution\n(Total: $200-500M Market)', fontsize=13, fontweight='bold', pad=15)

# ========== Chart 3: Daily API Call Volume ==========
ax3 = plt.subplot(4, 3, 3)
api_providers = ['Infura', 'Alchemy', 'Ankr', 'Others\n(est)']
api_volume = [10, 8, 6, 26]
colors_api = ['#3498db', '#9b59b6', '#1abc9c', '#95a5a6']

x3 = np.arange(len(api_providers))
bars3 = ax3.bar(x3, api_volume, color=colors_api,
                alpha=0.8, edgecolor='black', linewidth=2)

ax3.set_ylabel('Daily API Calls (Billions)', fontsize=11, fontweight='bold')
ax3.set_title('Daily API Call Volume by Provider', fontsize=13, fontweight='bold', pad=15)
ax3.set_xticks(x3)
ax3.set_xticklabels(api_providers, fontsize=9)
ax3.grid(axis='y', alpha=0.3)

# Add value labels
for bar, val in zip(bars3, api_volume):
    ax3.text(bar.get_x() + bar.get_width()/2, bar.get_height() + 0.5,
             f'{val}B+', ha='center', va='bottom', fontsize=10, fontweight='bold')

# ========== Chart 4: Revenue Sources Breakdown ==========
ax4 = plt.subplot(4, 3, 4)

# Revenue source percentages
primary_service = np.array([65, 75, 82.5, 75, 65])
secondary_service = np.array([27.5, 17.5, 12.5, 17.5, 22.5])
other_revenue = np.array([7.5, 7.5, 5, 7.5, 12.5])

x4 = np.arange(len(providers))
width = 0.6

bars_primary = ax4.bar(x4, primary_service, width, label='Primary Service',
                       color='#3498db', alpha=0.8, edgecolor='black', linewidth=1.5)
bars_secondary = ax4.bar(x4, secondary_service, width, bottom=primary_service,
                         label='Secondary Service', color='#9b59b6', alpha=0.8,
                         edgecolor='black', linewidth=1.5)
bars_other = ax4.bar(x4, other_revenue, width,
                     bottom=primary_service + secondary_service,
                     label='Other', color='#95a5a6', alpha=0.8,
                     edgecolor='black', linewidth=1.5)

ax4.set_ylabel('Revenue Distribution (%)', fontsize=11, fontweight='bold')
ax4.set_title('Revenue Sources by Provider', fontsize=13, fontweight='bold', pad=15)
ax4.set_xticks(x4)
ax4.set_xticklabels(providers, fontsize=9, rotation=30, ha='right')
ax4.legend(fontsize=9, loc='upper right')
ax4.grid(axis='y', alpha=0.3)
ax4.set_ylim(0, 110)

# ========== Chart 5: Networks Supported ==========
ax5 = plt.subplot(4, 3, 5)
network_providers = ['Ankr', 'QuickNode', 'Infura', 'Alchemy', 'The Graph']
networks = [50, 20, 15, 12, 10]
colors_networks = ['#1abc9c', '#e74c3c', '#3498db', '#9b59b6', '#f39c12']

x5 = np.arange(len(network_providers))
bars5 = ax5.barh(x5, networks, color=colors_networks,
                 alpha=0.8, edgecolor='black', linewidth=2)

ax5.set_xlabel('Number of Networks Supported', fontsize=11, fontweight='bold')
ax5.set_title('Multi-Chain Support Comparison', fontsize=13, fontweight='bold', pad=15)
ax5.set_yticks(x5)
ax5.set_yticklabels(network_providers, fontsize=9)
ax5.grid(axis='x', alpha=0.3)

# Add value labels
for bar, val in zip(bars5, networks):
    ax5.text(val + 1, bar.get_y() + bar.get_height()/2,
             f'{val}+', va='center', fontsize=10, fontweight='bold')

# ========== Chart 6: Funding & Valuation Bubble Chart ==========
ax6 = plt.subplot(4, 3, 6)

# Data: revenue_mid, valuation (M), funding (M)
funding_data = {
    'Infura': {'revenue': 100, 'valuation': 0, 'funding': 295, 'label': 'Infura\n(Consensys)'},
    'Alchemy': {'revenue': 75, 'valuation': 10200, 'funding': 295, 'label': 'Alchemy\n$10.2B'},
    'QuickNode': {'revenue': 55, 'valuation': 1000, 'funding': 60, 'label': 'QuickNode\n$60M'},
    'The Graph': {'revenue': 55, 'valuation': 500, 'funding': 80, 'label': 'The Graph'},
    'Ankr': {'revenue': 35, 'valuation': 300, 'funding': 50, 'label': 'Ankr'},
}

for i, (name, data) in enumerate(funding_data.items()):
    size = data['funding'] * 10
    ax6.scatter(data['revenue'], data['valuation'] if data['valuation'] > 0 else 50,
               s=size, c=colors_providers[i], alpha=0.7,
               edgecolors='black', linewidth=2, label=data['label'])

ax6.set_xlabel('Annual Revenue ($M)', fontsize=11, fontweight='bold')
ax6.set_ylabel('Valuation ($M)', fontsize=11, fontweight='bold')
ax6.set_title('Funding & Valuation Overview\n(Bubble size = Funding amount)',
              fontsize=13, fontweight='bold', pad=15)
ax6.set_yscale('log')
ax6.legend(fontsize=8, loc='upper left')
ax6.grid(alpha=0.3)

# ========== Chart 7: Pricing Comparison Across Tiers ==========
ax7 = plt.subplot(4, 3, 7)

tiers = ['Free', 'Starter', 'Growth', 'Enterprise']
x_tiers = np.arange(len(tiers))

pricing_data = {
    'Infura': [0, 49, 299, 10000],
    'Alchemy': [0, 199, 499, 8000],
    'QuickNode': [0, 99, 399, 12000],
    'Ankr': [0, 50, 250, 6000]
}

for i, (provider, prices) in enumerate(pricing_data.items()):
    ax7.plot(x_tiers, prices, marker='o', linewidth=3, markersize=8,
            label=provider, alpha=0.8)

ax7.set_yscale('log')
ax7.set_ylabel('Monthly Price ($)', fontsize=11, fontweight='bold')
ax7.set_xlabel('Pricing Tier', fontsize=11, fontweight='bold')
ax7.set_title('Pricing Models Comparison', fontsize=13, fontweight='bold', pad=15)
ax7.set_xticks(x_tiers)
ax7.set_xticklabels(tiers, fontsize=9)
ax7.legend(fontsize=9)
ax7.grid(alpha=0.3)

# ========== Chart 8: Market Growth Projection ==========
ax8 = plt.subplot(4, 3, 8)

years = [2020, 2021, 2022, 2023, 2024, 2025]
market_size = [80, 120, 180, 280, 350, 480]
actual_years = years[:5]
actual_size = market_size[:5]
projected_years = years[4:]
projected_size = market_size[4:]

ax8.plot(actual_years, actual_size, marker='o', linewidth=4, markersize=10,
         color='#3498db', label='Actual', alpha=0.8)
ax8.plot(projected_years, projected_size, marker='o', linewidth=4, markersize=10,
         color='#e74c3c', linestyle='--', label='Projected', alpha=0.8)
ax8.fill_between(years, 0, market_size, alpha=0.2, color='#3498db')

ax8.set_ylabel('Market Size ($M)', fontsize=11, fontweight='bold')
ax8.set_xlabel('Year', fontsize=11, fontweight='bold')
ax8.set_title('Market Growth Trajectory (2020-2025)\n25-43% Annual Growth',
              fontsize=13, fontweight='bold', pad=15)
ax8.legend(fontsize=10)
ax8.grid(alpha=0.3)

# Add annotation
ax8.annotate('Projected Growth\n25-43% CAGR',
            xy=(2024.5, 415), xytext=(2022.5, 450),
            arrowprops=dict(arrowstyle='->', lw=2, color='#e74c3c'),
            fontsize=10, fontweight='bold', color='#e74c3c',
            bbox=dict(boxstyle='round,pad=0.5', facecolor='yellow', alpha=0.3))

# ========== Chart 9: Client Type Distribution ==========
ax9 = plt.subplot(4, 3, 9)

client_types = ['Enterprise', 'Developer\nSubscriptions', 'Pay-as-you-go', 'Token\nEconomy']
infura_dist = [65, 27.5, 7.5, 0]
alchemy_dist = [50, 35, 15, 0]
graph_dist = [20, 10, 5, 65]

x9 = np.arange(len(client_types))
width = 0.25

bars_inf = ax9.bar(x9 - width, infura_dist, width, label='Infura',
                   color='#3498db', alpha=0.8, edgecolor='black', linewidth=1.5)
bars_alc = ax9.bar(x9, alchemy_dist, width, label='Alchemy',
                   color='#9b59b6', alpha=0.8, edgecolor='black', linewidth=1.5)
bars_grp = ax9.bar(x9 + width, graph_dist, width, label='The Graph',
                   color='#f39c12', alpha=0.8, edgecolor='black', linewidth=1.5)

ax9.set_ylabel('Revenue Distribution (%)', fontsize=11, fontweight='bold')
ax9.set_title('Client Type Revenue Distribution', fontsize=13, fontweight='bold', pad=15)
ax9.set_xticks(x9)
ax9.set_xticklabels(client_types, fontsize=9)
ax9.legend(fontsize=9)
ax9.grid(axis='y', alpha=0.3)

# ========== Chart 10: Key Performance Metrics ==========
ax10 = plt.subplot(4, 3, 10)

metrics = ['Infura', 'Alchemy', 'QuickNode', 'The Graph', 'Ankr']
developers_millions = [5, 4, 2, 1.5, 1.2]  # Millions of developers/users

x10 = np.arange(len(metrics))
bars10 = ax10.bar(x10, developers_millions, color=colors_providers,
                  alpha=0.8, edgecolor='black', linewidth=2)

ax10.set_ylabel('Developer/User Base (Millions)', fontsize=11, fontweight='bold')
ax10.set_title('Developer & User Base Comparison', fontsize=13, fontweight='bold', pad=15)
ax10.set_xticks(x10)
ax10.set_xticklabels(metrics, fontsize=9, rotation=30, ha='right')
ax10.grid(axis='y', alpha=0.3)

# Add value labels
for bar, val in zip(bars10, developers_millions):
    ax10.text(bar.get_x() + bar.get_width()/2, bar.get_height() + 0.1,
              f'{val}M+', ha='center', va='bottom', fontsize=9, fontweight='bold')

# ========== Chart 11: Response Time Performance ==========
ax11 = plt.subplot(4, 3, 11)

perf_providers = ['QuickNode', 'Alchemy', 'Infura', 'Ankr', 'The Graph']
response_times = [75, 120, 150, 140, 180]  # milliseconds
colors_perf = ['#e74c3c', '#9b59b6', '#3498db', '#1abc9c', '#f39c12']

x11 = np.arange(len(perf_providers))
bars11 = ax11.barh(x11, response_times, color=colors_perf,
                   alpha=0.8, edgecolor='black', linewidth=2)

ax11.set_xlabel('Average Response Time (ms)', fontsize=11, fontweight='bold')
ax11.set_title('API Response Time Performance\n(Lower is Better)',
               fontsize=13, fontweight='bold', pad=15)
ax11.set_yticks(x11)
ax11.set_yticklabels(perf_providers, fontsize=9)
ax11.grid(axis='x', alpha=0.3)
ax11.invert_yaxis()

# Add value labels
for bar, val in zip(bars11, response_times):
    ax11.text(val + 3, bar.get_y() + bar.get_height()/2,
              f'{val}ms', va='center', fontsize=9, fontweight='bold')

# Add reference line for sub-100ms
ax11.axvline(x=100, color='green', linestyle='--', linewidth=2, alpha=0.5, label='Sub-100ms Target')
ax11.legend(fontsize=9)

# ========== Chart 12: Cost Efficiency Analysis ==========
ax12 = plt.subplot(4, 3, 12)

cost_providers = ['Ankr', 'The Graph', 'QuickNode', 'Alchemy', 'Infura']
cost_index = [30, 50, 85, 100, 100]  # Indexed to 100 (Infura/Alchemy baseline)
savings_pct = [70, 50, 15, 0, 0]

x12 = np.arange(len(cost_providers))
bars_cost = ax12.bar(x12, cost_index, color=['#2ecc71', '#27ae60', '#f39c12', '#e67e22', '#e74c3c'],
                     alpha=0.8, edgecolor='black', linewidth=2)

ax12.set_ylabel('Relative Cost Index', fontsize=11, fontweight='bold')
ax12.set_title('Cost Efficiency Comparison\n(Lower = More Cost-Effective)',
               fontsize=13, fontweight='bold', pad=15)
ax12.set_xticks(x12)
ax12.set_xticklabels(cost_providers, fontsize=9, rotation=30, ha='right')
ax12.grid(axis='y', alpha=0.3)
ax12.axhline(y=100, color='red', linestyle='--', linewidth=2, alpha=0.5, label='Industry Baseline')
ax12.legend(fontsize=9)

# Add value labels with savings
for bar, val, savings in zip(bars_cost, cost_index, savings_pct):
    if savings > 0:
        label = f'{val}\n(-{savings}%)'
        color = 'green'
    else:
        label = f'{val}'
        color = 'black'
    ax12.text(bar.get_x() + bar.get_width()/2, bar.get_height() + 2,
              label, ha='center', va='bottom', fontsize=8, fontweight='bold', color=color)

plt.tight_layout(rect=[0, 0, 1, 0.995], pad=3.0)
plt.savefig('/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis/rpc_infrastructure_analysis.png',
            dpi=300, bbox_inches='tight', facecolor='white')
print("RPC Infrastructure analysis chart saved as: rpc_infrastructure_analysis.png")
# plt.show()  # Commented out to avoid display timeout
