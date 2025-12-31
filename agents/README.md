# Agents Directory

This directory contains automated update agents for webthreepedia.com reports.

## Current Agents

| Agent | File | What It Does |
|-------|------|--------------|
| Reservoir Update | `update_reservoir.sh` | Fetches API data, generates Claude prompt |
| Reservoir Full Auto | `update_reservoir_full.sh` | Fetches data + calls Claude Code automatically |

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
├── README.md              # This file
├── update_reservoir.sh    # Semi-auto (generates prompt)
├── update_reservoir_full.sh # Full auto (calls Claude)
├── data/                  # Raw API data + prompts
│   └── reservoir_YYYYMMDD.json
└── logs/                  # Execution logs
    └── reservoir_YYYYMMDD.log
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
