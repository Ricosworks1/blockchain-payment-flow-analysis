# Agents Directory

This directory contains automated update agents for webthreepedia.com reports.

## Current Agents

| Agent | File | What It Does |
|-------|------|--------------|
| Orchestrator | `orchestrator.sh` | Runs all enabled protocol agents |
| Reservoir Update | `update_reservoir.sh` | Fetches API data, generates Claude prompt |
| EdgeX Update | `update_edgex.sh` | Fetches EdgeX API data (TVL + Fees) |
| Data Index Updater | `update_data_index.sh` | Updates centralized data_index.json |

## Protocol Registry

All protocols are registered in `protocol_registry.json`. Enable/disable protocols there.

## Data Index System

All fetched API data is stored in `data/data_index.json` for:
- Historical reference
- Cross-protocol comparison
- Audit trail of data sources
- Quick lookup without re-fetching

### View current data:
```bash
cat agents/data/data_index.json | jq '.protocols.edgex'
```

### Update all protocol data:
```bash
./agents/update_data_index.sh
```

### Update specific protocol:
```bash
./agents/update_data_index.sh edgex
./agents/update_data_index.sh reservoir
```

## How to Use

### Manual Run (Semi-Automatic)
```bash
# Run the agent to fetch data and generate prompt
./agents/update_reservoir.sh

# Then open Claude Code and paste the prompt from:
# agents/data/reservoir_prompt.txt
```

### Full Automation
```bash
# This calls Claude Code automatically
./agents/update_reservoir_full.sh
```

### Daily Automation (Cron)
To run daily at 8 AM:
```bash
crontab -e
# Add this line:
0 8 * * * /Users/ricardomastrangelo/VS\ Studio/Blockchains\ Payment\ Flow\ Analysis/agents/update_reservoir_full.sh
```

## Directory Structure

```
agents/
├── README.md                 # This file
├── orchestrator.sh           # Master agent (runs all protocols)
├── protocol_registry.json    # Protocol configuration
├── update_reservoir.sh       # Reservoir update agent
├── update_edgex.sh           # EdgeX update agent
├── update_data_index.sh      # Data index updater
├── data/                     # Stored API data
│   ├── data_index.json       # Centralized data index (all protocols)
│   ├── reservoir_*.json      # Raw API responses
│   └── edgex_*.json          # Raw API responses
└── logs/                     # Execution logs
    └── *.log
```

## Adding New Protocols

To create an agent for a new protocol:

1. Copy `update_reservoir.sh` as template
2. Update the API endpoints for the new protocol
3. Update the context file path
4. Update the report file path
5. Test with: `./agents/update_<protocol>.sh`

## Troubleshooting

**API rate limits:**
- CoinGecko: 30 calls/min (free tier)
- DefiLlama: Unlimited (free)
- Add `sleep 2` between CoinGecko calls if hitting limits

**jq not found:**
```bash
brew install jq
```

**Claude Code not found:**
```bash
# Install Claude Code CLI
npm install -g @anthropic/claude-code
```
