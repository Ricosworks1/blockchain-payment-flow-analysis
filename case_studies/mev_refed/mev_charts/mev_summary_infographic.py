import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
from matplotlib.patches import FancyBboxPatch, Circle
import numpy as np

# Set style
plt.style.use('seaborn-v0_8-whitegrid')

# Create figure
fig = plt.figure(figsize=(20, 14))
fig.suptitle('MEV Recipients & Distribution Summary - Comprehensive Overview',
             fontsize=20, fontweight='bold', y=0.98)

# ========== Top Section: Market Overview ==========
ax_main = plt.subplot(3, 3, (1, 3))
ax_main.axis('off')

# Title box
title_box = FancyBboxPatch((0.05, 0.85), 0.9, 0.12, boxstyle="round,pad=0.01",
                           edgecolor='black', facecolor='#3498db', linewidth=3)
ax_main.add_patch(title_box)
ax_main.text(0.5, 0.91, 'TOTAL MEV MARKET: $7-9 BILLION ANNUALLY',
             fontsize=18, fontweight='bold', ha='center', color='white')

# Three main ecosystems
ecosystems = [
    {'name': 'ETHEREUM', 'value': '$3-5B', 'color': '#1f77b4', 'x': 0.15},
    {'name': 'SOLANA', 'value': '$1.2B', 'color': '#ff7f0e', 'x': 0.5},
    {'name': 'OTHER CHAINS', 'value': '$2-4B', 'color': '#2ca02c', 'x': 0.85}
]

for eco in ecosystems:
    box = FancyBboxPatch((eco['x']-0.12, 0.65), 0.24, 0.15, boxstyle="round,pad=0.01",
                         edgecolor='black', facecolor=eco['color'], linewidth=2, alpha=0.7)
    ax_main.add_patch(box)
    ax_main.text(eco['x'], 0.76, eco['name'], fontsize=14, fontweight='bold',
                ha='center', va='center', color='white')
    ax_main.text(eco['x'], 0.69, eco['value'], fontsize=12, fontweight='bold',
                ha='center', va='center', color='white')

# ========== Ethereum Deep Dive ==========
ax_eth = plt.subplot(3, 3, 4)
ax_eth.axis('off')
ax_eth.set_xlim(0, 1)
ax_eth.set_ylim(0, 1)

# Title
eth_title = FancyBboxPatch((0.05, 0.88), 0.9, 0.1, boxstyle="round,pad=0.01",
                           edgecolor='black', facecolor='#1f77b4', linewidth=2)
ax_eth.add_patch(eth_title)
ax_eth.text(0.5, 0.93, 'ETHEREUM MEV', fontsize=14, fontweight='bold', ha='center', color='white')

# Distribution
eth_data = [
    ('MEV Searchers', '60-70%', '$2.1-4.9B', 0.75, '#e74c3c'),
    ('Block Builders', '15-25%', '$600M-1.75B', 0.58, '#3498db'),
    ('Validators', '10-15%', '$400M', 0.41, '#2ecc71'),
    ('MEV-Boost Relays', '1-5%', '$50-350M', 0.24, '#f39c12'),
]

for name, pct, value, y_pos, color in eth_data:
    box = FancyBboxPatch((0.05, y_pos-0.05), 0.9, 0.08, boxstyle="round,pad=0.005",
                         edgecolor='black', facecolor=color, linewidth=1.5, alpha=0.7)
    ax_eth.add_patch(box)
    ax_eth.text(0.08, y_pos, name, fontsize=10, fontweight='bold', va='center', color='white')
    ax_eth.text(0.5, y_pos, pct, fontsize=9, fontweight='bold', va='center', ha='center', color='white')
    ax_eth.text(0.92, y_pos, value, fontsize=8, fontweight='bold', va='center', ha='right', color='white')

# Key characteristic
char_box = FancyBboxPatch((0.05, 0.02), 0.9, 0.18, boxstyle="round,pad=0.01",
                          edgecolor='gray', facecolor='lightblue', linewidth=1, alpha=0.3)
ax_eth.add_patch(char_box)
ax_eth.text(0.5, 0.15, 'KEY CHARACTERISTICS:', fontsize=9, fontweight='bold', ha='center')
ax_eth.text(0.5, 0.11, '• 95% MEV-Boost adoption', fontsize=8, ha='center')
ax_eth.text(0.5, 0.08, '• Most decentralized model', fontsize=8, ha='center')
ax_eth.text(0.5, 0.05, '• Mature infrastructure', fontsize=8, ha='center')

# ========== Solana/Jito Deep Dive ==========
ax_sol = plt.subplot(3, 3, 5)
ax_sol.axis('off')
ax_sol.set_xlim(0, 1)
ax_sol.set_ylim(0, 1)

# Title
sol_title = FancyBboxPatch((0.05, 0.88), 0.9, 0.1, boxstyle="round,pad=0.01",
                           edgecolor='black', facecolor='#ff7f0e', linewidth=2)
ax_sol.add_patch(sol_title)
ax_sol.text(0.5, 0.93, 'SOLANA (JITO) MEV', fontsize=14, fontweight='bold', ha='center', color='white')

# Distribution
sol_data = [
    ('Validators', '94%', '$1.128B', 0.75, '#1abc9c'),
    ('Jito DAO', '5.7%', '$68.4M', 0.58, '#e67e22'),
    ('JitoSOL Holders', '0.15%', '$1.8M', 0.41, '#9b59b6'),
    ('JTO Holders', '0.15%', '$1.8M', 0.24, '#34495e'),
]

for name, pct, value, y_pos, color in sol_data:
    box = FancyBboxPatch((0.05, y_pos-0.05), 0.9, 0.08, boxstyle="round,pad=0.005",
                         edgecolor='black', facecolor=color, linewidth=1.5, alpha=0.7)
    ax_sol.add_patch(box)
    ax_sol.text(0.08, y_pos, name, fontsize=10, fontweight='bold', va='center', color='white')
    ax_sol.text(0.5, y_pos, pct, fontsize=9, fontweight='bold', va='center', ha='center', color='white')
    ax_sol.text(0.92, y_pos, value, fontsize=8, fontweight='bold', va='center', ha='right', color='white')

# Key characteristic
char_box = FancyBboxPatch((0.05, 0.02), 0.9, 0.18, boxstyle="round,pad=0.01",
                          edgecolor='gray', facecolor='#ffe6cc', linewidth=1, alpha=0.5)
ax_sol.add_patch(char_box)
ax_sol.text(0.5, 0.15, 'KEY CHARACTERISTICS:', fontsize=9, fontweight='bold', ha='center')
ax_sol.text(0.5, 0.11, '• 93% validator adoption', fontsize=8, ha='center')
ax_sol.text(0.5, 0.08, '• Validator-centric model', fontsize=8, ha='center')
ax_sol.text(0.5, 0.05, '• Peak tips: $14.7M/day', fontsize=8, ha='center')

# ========== Other Chains Overview ==========
ax_other = plt.subplot(3, 3, 6)
ax_other.axis('off')
ax_other.set_xlim(0, 1)
ax_other.set_ylim(0, 1)

# Title
other_title = FancyBboxPatch((0.05, 0.88), 0.9, 0.1, boxstyle="round,pad=0.01",
                             edgecolor='black', facecolor='#2ca02c', linewidth=2)
ax_other.add_patch(other_title)
ax_other.text(0.5, 0.93, 'OTHER CHAINS MEV', fontsize=14, fontweight='bold', ha='center', color='white')

# Distribution by category
other_data = [
    ('EVM L1s', '$1.3-2.2B', 0.75, '#f1c40f'),
    ('Ethereum L2s', '$400-800M', 0.58, '#e74c3c'),
    ('Alt L1s', '$200-600M', 0.41, '#9467bd'),
    ('Cross-Chain', '$200-500M', 0.24, '#8c564b'),
]

for name, value, y_pos, color in other_data:
    box = FancyBboxPatch((0.05, y_pos-0.05), 0.9, 0.08, boxstyle="round,pad=0.005",
                         edgecolor='black', facecolor=color, linewidth=1.5, alpha=0.7)
    ax_other.add_patch(box)
    ax_other.text(0.15, y_pos, name, fontsize=10, fontweight='bold', va='center', color='white')
    ax_other.text(0.85, y_pos, value, fontsize=9, fontweight='bold', va='center', ha='right', color='white')

# Key characteristic
char_box = FancyBboxPatch((0.05, 0.02), 0.9, 0.18, boxstyle="round,pad=0.01",
                          edgecolor='gray', facecolor='#d5f4e6', linewidth=1, alpha=0.5)
ax_other.add_patch(char_box)
ax_other.text(0.5, 0.15, 'KEY CHARACTERISTICS:', fontsize=9, fontweight='bold', ha='center')
ax_other.text(0.5, 0.11, '• Highly fragmented', fontsize=8, ha='center')
ax_other.text(0.5, 0.08, '• 60-100% validator capture', fontsize=8, ha='center')
ax_other.text(0.5, 0.05, '• L2s: sequencer-dominated', fontsize=8, ha='center')

# ========== EVM L1 Breakdown ==========
ax_evm = plt.subplot(3, 3, 7)
ax_evm.axis('off')
ax_evm.set_xlim(0, 1)
ax_evm.set_ylim(0, 1)

evm_title = FancyBboxPatch((0.05, 0.88), 0.9, 0.08, boxstyle="round,pad=0.01",
                           edgecolor='black', facecolor='#f1c40f', linewidth=2)
ax_evm.add_patch(evm_title)
ax_evm.text(0.5, 0.92, 'EVM L1 CHAINS', fontsize=12, fontweight='bold', ha='center')

evm_chains = [
    ('BNB Chain', '$600-900M', '85-90%', 0.70),
    ('Avalanche', '$200-400M', '70-80%', 0.50),
    ('Polygon', '$150-300M', '60-70%', 0.30),
]

for name, value, val_pct, y_pos in evm_chains:
    box = FancyBboxPatch((0.05, y_pos-0.06), 0.9, 0.12, boxstyle="round,pad=0.005",
                         edgecolor='black', facecolor='lightgray', linewidth=1.5, alpha=0.6)
    ax_evm.add_patch(box)
    ax_evm.text(0.1, y_pos+0.03, name, fontsize=10, fontweight='bold', va='center')
    ax_evm.text(0.5, y_pos+0.03, value, fontsize=9, va='center', ha='center')
    ax_evm.text(0.5, y_pos-0.02, f'Validators: {val_pct}', fontsize=7,
               va='center', ha='center', style='italic')

ax_evm.text(0.5, 0.08, 'Centralized validator\ncapture models', fontsize=9, ha='center',
           style='italic', bbox=dict(boxstyle='round', facecolor='yellow', alpha=0.3))

# ========== L2 Rollups Breakdown ==========
ax_l2 = plt.subplot(3, 3, 8)
ax_l2.axis('off')
ax_l2.set_xlim(0, 1)
ax_l2.set_ylim(0, 1)

l2_title = FancyBboxPatch((0.05, 0.88), 0.9, 0.08, boxstyle="round,pad=0.01",
                          edgecolor='black', facecolor='#e74c3c', linewidth=2)
ax_l2.add_patch(l2_title)
ax_l2.text(0.5, 0.92, 'ETHEREUM L2 ROLLUPS', fontsize=12, fontweight='bold', ha='center', color='white')

l2_chains = [
    ('Arbitrum', '$150-250M', '95% Offchain Labs', 0.70),
    ('Base', '$10-20M', '95% Coinbase', 0.50),
    ('Optimism', '$8-15M', '90% OP', 0.30),
]

for name, value, seq_pct, y_pos in l2_chains:
    box = FancyBboxPatch((0.05, y_pos-0.06), 0.9, 0.12, boxstyle="round,pad=0.005",
                         edgecolor='black', facecolor='lightcoral', linewidth=1.5, alpha=0.5)
    ax_l2.add_patch(box)
    ax_l2.text(0.1, y_pos+0.03, name, fontsize=10, fontweight='bold', va='center')
    ax_l2.text(0.5, y_pos+0.03, value, fontsize=9, va='center', ha='center')
    ax_l2.text(0.5, y_pos-0.02, seq_pct, fontsize=7, va='center', ha='center', style='italic')

ax_l2.text(0.5, 0.08, 'Sequencer-dominated:\nCorporate revenue streams',
          fontsize=9, ha='center', style='italic',
          bbox=dict(boxstyle='round', facecolor='lightcoral', alpha=0.3))

# ========== MEV Infrastructure Revenue ==========
ax_infra = plt.subplot(3, 3, 9)
ax_infra.axis('off')
ax_infra.set_xlim(0, 1)
ax_infra.set_ylim(0, 1)

infra_title = FancyBboxPatch((0.05, 0.88), 0.9, 0.08, boxstyle="round,pad=0.01",
                             edgecolor='black', facecolor='#9467bd', linewidth=2)
ax_infra.add_patch(infra_title)
ax_infra.text(0.5, 0.92, 'MEV INFRASTRUCTURE', fontsize=12, fontweight='bold', ha='center', color='white')

infra_data = [
    ('Searcher Firms', '$500M-2B', 0.65),
    ('Builder Networks', '$100-300M', 0.45),
    ('Flashbots Relays', '$10-30M', 0.25),
]

for name, value, y_pos in infra_data:
    box = FancyBboxPatch((0.05, y_pos-0.06), 0.9, 0.10, boxstyle="round,pad=0.005",
                         edgecolor='black', facecolor='plum', linewidth=1.5, alpha=0.6)
    ax_infra.add_patch(box)
    ax_infra.text(0.15, y_pos, name, fontsize=10, fontweight='bold', va='center')
    ax_infra.text(0.85, y_pos, value, fontsize=9, fontweight='bold', va='center', ha='right')

ax_infra.text(0.5, 0.08, 'Ethereum-focused\ninfrastructure layer', fontsize=9, ha='center',
             style='italic', bbox=dict(boxstyle='round', facecolor='plum', alpha=0.3))

plt.tight_layout(rect=[0, 0, 1, 0.97], pad=2.0)
plt.savefig('/Users/ricardomastrangelo/VS Studio/Blockchains Payment Flow Analysis/mev_summary_infographic.png',
            dpi=300, bbox_inches='tight', facecolor='white')
print("Summary infographic saved as: mev_summary_infographic.png")
plt.show()
