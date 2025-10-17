import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
from matplotlib.patches import FancyBboxPatch, Circle, FancyArrow
import numpy as np

# Set style
plt.style.use('seaborn-v0_8-whitegrid')

# Create figure
fig = plt.figure(figsize=(20, 14))
fig.suptitle('RPC & Infrastructure Providers - Market Summary Dashboard',
             fontsize=20, fontweight='bold', y=0.98)

# ========== Top Section: Market Overview ==========
ax_main = plt.subplot(3, 3, (1, 3))
ax_main.axis('off')
ax_main.set_xlim(0, 1)
ax_main.set_ylim(0, 1)

# Title box
title_box = FancyBboxPatch((0.05, 0.85), 0.9, 0.12, boxstyle="round,pad=0.01",
                           edgecolor='black', facecolor='#667eea', linewidth=3)
ax_main.add_patch(title_box)
ax_main.text(0.5, 0.91, 'TOTAL MARKET: $200-500M ANNUALLY | 50B+ DAILY API CALLS',
             fontsize=16, fontweight='bold', ha='center', color='white')

# Key metrics boxes
metrics = [
    {'label': 'Market Growth', 'value': '25-43%', 'x': 0.13, 'color': '#2ecc71'},
    {'label': 'API Volume', 'value': '50B+', 'x': 0.37, 'color': '#3498db'},
    {'label': 'Providers', 'value': '5+', 'x': 0.61, 'color': '#9b59b6'},
    {'label': 'Networks', 'value': '50+', 'x': 0.85, 'color': '#e74c3c'}
]

for metric in metrics:
    box = FancyBboxPatch((metric['x']-0.1, 0.68), 0.2, 0.12, boxstyle="round,pad=0.01",
                         edgecolor='black', facecolor=metric['color'], linewidth=2, alpha=0.8)
    ax_main.add_patch(box)
    ax_main.text(metric['x'], 0.77, metric['value'], fontsize=16, fontweight='bold',
                ha='center', va='center', color='white')
    ax_main.text(metric['x'], 0.70, metric['label'], fontsize=10, fontweight='bold',
                ha='center', va='center', color='white')

# Market leaders
leaders_y = 0.55
ax_main.text(0.5, leaders_y, 'TOP 5 MARKET LEADERS', fontsize=13, fontweight='bold',
            ha='center', bbox=dict(boxstyle='round', facecolor='lightblue', alpha=0.5))

leaders = [
    {'name': 'Infura', 'share': '27.5%', 'x': 0.12},
    {'name': 'Alchemy', 'share': '22.5%', 'x': 0.29},
    {'name': 'QuickNode', 'share': '12.5%', 'x': 0.5},
    {'name': 'The Graph', 'share': '12.5%', 'x': 0.71},
    {'name': 'Ankr', 'share': '10%', 'x': 0.88}
]

colors_leaders = ['#3498db', '#9b59b6', '#e74c3c', '#f39c12', '#1abc9c']
for i, leader in enumerate(leaders):
    box = FancyBboxPatch((leader['x']-0.07, 0.42), 0.14, 0.08, boxstyle="round,pad=0.005",
                         edgecolor='black', facecolor=colors_leaders[i], linewidth=1.5, alpha=0.7)
    ax_main.add_patch(box)
    ax_main.text(leader['x'], 0.48, leader['name'], fontsize=9, fontweight='bold',
                ha='center', va='center', color='white')
    ax_main.text(leader['x'], 0.44, leader['share'], fontsize=8, fontweight='bold',
                ha='center', va='center', color='white')

# Bottom summary
summary_box = FancyBboxPatch((0.05, 0.05), 0.9, 0.32, boxstyle="round,pad=0.01",
                            edgecolor='gray', facecolor='#f8f9fa', linewidth=2, alpha=0.8)
ax_main.add_patch(summary_box)

summary_text = """MARKET DYNAMICS & BUSINESS MODELS

Revenue Distribution:              Competitive Landscape:              Business Models:
• Total: $200-500M/year           • Infura: 25-30% share              • Freemium: 100K-300M monthly requests
• Growth: 25-43% annually         • Alchemy: 20-25% share             • Usage-Based: $0.0001-0.01 per call
• API Calls: 50B+ daily           • QuickNode: 10-15% share           • Enterprise: $10K-1M+ contracts
                                  • Ankr: 8-12% share                 • Protocol Tokens: Decentralized fees
                                  • The Graph: 10-15% share"""

ax_main.text(0.5, 0.21, summary_text, fontsize=8.5, ha='center', va='center',
            family='monospace', bbox=dict(boxstyle='round', facecolor='white', alpha=0.3))

# ========== Infura Section ==========
ax_infura = plt.subplot(3, 3, 4)
ax_infura.axis('off')
ax_infura.set_xlim(0, 1)
ax_infura.set_ylim(0, 1)

infura_title = FancyBboxPatch((0.05, 0.88), 0.9, 0.1, boxstyle="round,pad=0.01",
                              edgecolor='black', facecolor='#3498db', linewidth=2)
ax_infura.add_patch(infura_title)
ax_infura.text(0.5, 0.93, '🔷 INFURA (CONSENSYS)', fontsize=13, fontweight='bold', ha='center', color='white')

infura_data = [
    ('Revenue', '$50-150M/year', 0.75),
    ('Position', 'Established Leader', 0.60),
    ('API Calls', '10B+ daily', 0.45),
    ('Networks', '15+ supported', 0.30),
]

for label, value, y_pos in infura_data:
    box = FancyBboxPatch((0.05, y_pos-0.05), 0.9, 0.08, boxstyle="round,pad=0.005",
                         edgecolor='black', facecolor='lightblue', linewidth=1.5, alpha=0.7)
    ax_infura.add_patch(box)
    ax_infura.text(0.15, y_pos, label + ':', fontsize=9, fontweight='bold', va='center')
    ax_infura.text(0.85, y_pos, value, fontsize=9, fontweight='bold', va='center', ha='right')

# Revenue mix
char_box = FancyBboxPatch((0.05, 0.02), 0.9, 0.20, boxstyle="round,pad=0.01",
                          edgecolor='gray', facecolor='#ebf5fb', linewidth=1, alpha=0.8)
ax_infura.add_patch(char_box)
ax_infura.text(0.5, 0.17, 'REVENUE MIX', fontsize=9, fontweight='bold', ha='center')
ax_infura.text(0.5, 0.13, '60-70% Enterprise Clients', fontsize=8, ha='center')
ax_infura.text(0.5, 0.09, '25-30% Developer Subscriptions', fontsize=8, ha='center')
ax_infura.text(0.5, 0.05, 'Clients: Uniswap, Compound, MetaMask', fontsize=7, ha='center', style='italic')

# ========== Alchemy Section ==========
ax_alchemy = plt.subplot(3, 3, 5)
ax_alchemy.axis('off')
ax_alchemy.set_xlim(0, 1)
ax_alchemy.set_ylim(0, 1)

alchemy_title = FancyBboxPatch((0.05, 0.88), 0.9, 0.1, boxstyle="round,pad=0.01",
                               edgecolor='black', facecolor='#9b59b6', linewidth=2)
ax_alchemy.add_patch(alchemy_title)
ax_alchemy.text(0.5, 0.93, '⚗️ ALCHEMY', fontsize=13, fontweight='bold', ha='center', color='white')

alchemy_data = [
    ('Revenue', '$50-100M/year', 0.75),
    ('Valuation', '$10.2B', 0.60),
    ('Requests', '8B+ daily', 0.45),
    ('Developers', '4M+', 0.30),
]

for label, value, y_pos in alchemy_data:
    box = FancyBboxPatch((0.05, y_pos-0.05), 0.9, 0.08, boxstyle="round,pad=0.005",
                         edgecolor='black', facecolor='#e8daef', linewidth=1.5, alpha=0.7)
    ax_alchemy.add_patch(box)
    ax_alchemy.text(0.15, y_pos, label + ':', fontsize=9, fontweight='bold', va='center')
    ax_alchemy.text(0.85, y_pos, value, fontsize=9, fontweight='bold', va='center', ha='right')

char_box = FancyBboxPatch((0.05, 0.02), 0.9, 0.20, boxstyle="round,pad=0.01",
                          edgecolor='gray', facecolor='#f4ecf7', linewidth=1, alpha=0.8)
ax_alchemy.add_patch(char_box)
ax_alchemy.text(0.5, 0.17, 'REVENUE MIX', fontsize=9, fontweight='bold', ha='center')
ax_alchemy.text(0.5, 0.13, '70-80% Platform API', fontsize=8, ha='center')
ax_alchemy.text(0.5, 0.09, '15-20% Alchemy Pay', fontsize=8, ha='center')
ax_alchemy.text(0.5, 0.05, 'Funding: $295M (Feb 2022)', fontsize=7, ha='center', style='italic')

# ========== QuickNode Section ==========
ax_quick = plt.subplot(3, 3, 6)
ax_quick.axis('off')
ax_quick.set_xlim(0, 1)
ax_quick.set_ylim(0, 1)

quick_title = FancyBboxPatch((0.05, 0.88), 0.9, 0.1, boxstyle="round,pad=0.01",
                             edgecolor='black', facecolor='#e74c3c', linewidth=2)
ax_quick.add_patch(quick_title)
ax_quick.text(0.5, 0.93, '⚡ QUICKNODE', fontsize=13, fontweight='bold', ha='center', color='white')

quick_data = [
    ('Revenue', '$30-80M/year', 0.75),
    ('Response', 'Sub-100ms', 0.60),
    ('Networks', '20+ supported', 0.45),
    ('Funding', '$60M Series A', 0.30),
]

for label, value, y_pos in quick_data:
    box = FancyBboxPatch((0.05, y_pos-0.05), 0.9, 0.08, boxstyle="round,pad=0.005",
                         edgecolor='black', facecolor='#fadbd8', linewidth=1.5, alpha=0.7)
    ax_quick.add_patch(box)
    ax_quick.text(0.15, y_pos, label + ':', fontsize=9, fontweight='bold', va='center')
    ax_quick.text(0.85, y_pos, value, fontsize=9, fontweight='bold', va='center', ha='right')

char_box = FancyBboxPatch((0.05, 0.02), 0.9, 0.20, boxstyle="round,pad=0.01",
                          edgecolor='gray', facecolor='#f9ebea', linewidth=1, alpha=0.8)
ax_quick.add_patch(char_box)
ax_quick.text(0.5, 0.17, 'REVENUE MIX', fontsize=9, fontweight='bold', ha='center')
ax_quick.text(0.5, 0.13, '80-85% Node Infrastructure', fontsize=8, ha='center')
ax_quick.text(0.5, 0.09, '10-15% Add-ons', fontsize=8, ha='center')
ax_quick.text(0.5, 0.05, 'Focus: Performance-Optimized', fontsize=7, ha='center', style='italic')

# ========== Ankr Section ==========
ax_ankr = plt.subplot(3, 3, 7)
ax_ankr.axis('off')
ax_ankr.set_xlim(0, 1)
ax_ankr.set_ylim(0, 1)

ankr_title = FancyBboxPatch((0.05, 0.88), 0.9, 0.1, boxstyle="round,pad=0.01",
                            edgecolor='black', facecolor='#1abc9c', linewidth=2)
ax_ankr.add_patch(ankr_title)
ax_ankr.text(0.5, 0.93, '⚓ ANKR', fontsize=13, fontweight='bold', ha='center', color='white')

ankr_data = [
    ('Revenue', '$20-50M/year', 0.75),
    ('Requests', '6B+ daily', 0.60),
    ('Networks', '50+ supported', 0.45),
    ('Cost Savings', '50-70% lower', 0.30),
]

for label, value, y_pos in ankr_data:
    box = FancyBboxPatch((0.05, y_pos-0.05), 0.9, 0.08, boxstyle="round,pad=0.005",
                         edgecolor='black', facecolor='#d5f4e6', linewidth=1.5, alpha=0.7)
    ax_ankr.add_patch(box)
    ax_ankr.text(0.15, y_pos, label + ':', fontsize=9, fontweight='bold', va='center')
    ax_ankr.text(0.85, y_pos, value, fontsize=9, fontweight='bold', va='center', ha='right')

char_box = FancyBboxPatch((0.05, 0.02), 0.9, 0.20, boxstyle="round,pad=0.01",
                          edgecolor='gray', facecolor='#e8f8f5', linewidth=1, alpha=0.8)
ax_ankr.add_patch(char_box)
ax_ankr.text(0.5, 0.17, 'REVENUE MIX', fontsize=9, fontweight='bold', ha='center')
ax_ankr.text(0.5, 0.13, '60-70% RPC Services', fontsize=8, ha='center')
ax_ankr.text(0.5, 0.09, '20-25% Staking', fontsize=8, ha='center')
ax_ankr.text(0.5, 0.05, 'Model: Decentralized Infrastructure', fontsize=7, ha='center', style='italic')

# ========== The Graph Section ==========
ax_graph = plt.subplot(3, 3, 8)
ax_graph.axis('off')
ax_graph.set_xlim(0, 1)
ax_graph.set_ylim(0, 1)

graph_title = FancyBboxPatch((0.05, 0.88), 0.9, 0.1, boxstyle="round,pad=0.01",
                             edgecolor='black', facecolor='#f39c12', linewidth=2)
ax_graph.add_patch(graph_title)
ax_graph.text(0.5, 0.93, '📊 THE GRAPH', fontsize=13, fontweight='bold', ha='center', color='white')

graph_data = [
    ('Revenue', '$30-80M/year', 0.75),
    ('Queries', '20B+ monthly', 0.60),
    ('Subgraphs', '4,000+', 0.45),
    ('Token', 'GRT Economy', 0.30),
]

for label, value, y_pos in graph_data:
    box = FancyBboxPatch((0.05, y_pos-0.05), 0.9, 0.08, boxstyle="round,pad=0.005",
                         edgecolor='black', facecolor='#fdebd0', linewidth=1.5, alpha=0.7)
    ax_graph.add_patch(box)
    ax_graph.text(0.15, y_pos, label + ':', fontsize=9, fontweight='bold', va='center')
    ax_graph.text(0.85, y_pos, value, fontsize=9, fontweight='bold', va='center', ha='right')

char_box = FancyBboxPatch((0.05, 0.02), 0.9, 0.20, boxstyle="round,pad=0.01",
                          edgecolor='gray', facecolor='#fef5e7', linewidth=1, alpha=0.8)
ax_graph.add_patch(char_box)
ax_graph.text(0.5, 0.17, 'REVENUE MIX', fontsize=9, fontweight='bold', ha='center')
ax_graph.text(0.5, 0.13, '70-80% Query Fees', fontsize=8, ha='center')
ax_graph.text(0.5, 0.09, '15-20% Indexing Rewards', fontsize=8, ha='center')
ax_graph.text(0.5, 0.05, 'Model: Decentralized Indexing Protocol', fontsize=7, ha='center', style='italic')

# ========== Key Insights ==========
ax_insights = plt.subplot(3, 3, 9)
ax_insights.axis('off')
ax_insights.set_xlim(0, 1)
ax_insights.set_ylim(0, 1)

insights_title = FancyBboxPatch((0.05, 0.88), 0.9, 0.1, boxstyle="round,pad=0.01",
                                edgecolor='black', facecolor='#34495e', linewidth=2)
ax_insights.add_patch(insights_title)
ax_insights.text(0.5, 0.93, '💡 KEY MARKET INSIGHTS', fontsize=13, fontweight='bold', ha='center', color='white')

insights_text = """
MARKET TRENDS:

1. Rapid Growth: 25-43% annual
   expansion driven by Web3 adoption

2. Consolidation: Top 5 providers
   control 85% of market share

3. Decentralization: Emerging trend
   (Ankr, The Graph) vs centralized
   (Infura, Alchemy)

4. Performance Focus: Sub-100ms
   response times becoming standard

5. Multi-Chain: 20-50+ network
   support is competitive advantage

6. Developer-First: Freemium models
   with enterprise upsell strategy
"""

ax_insights.text(0.5, 0.45, insights_text, fontsize=8, ha='left', va='center',
                family='monospace', bbox=dict(boxstyle='round', facecolor='lightyellow', alpha=0.5))

plt.tight_layout(rect=[0, 0, 1, 0.97], pad=2.0)
plt.savefig('/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis/rpc_summary_infographic.png',
            dpi=300, bbox_inches='tight', facecolor='white')
print("RPC summary infographic saved as: rpc_summary_infographic.png")
# plt.show()
