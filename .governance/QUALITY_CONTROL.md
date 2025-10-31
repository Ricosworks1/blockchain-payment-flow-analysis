# Quality Control Framework

**Version:** 1.0
**Last Updated:** October 31, 2025
**Purpose:** Ensure all research maintains neutrality, accuracy, and institutional quality

---

## Quality Assurance Philosophy

### Core Objective

**Eliminate bias, maintain accuracy, ensure actionability.**

Every piece of content in this repository must pass through multiple quality gates before publication. This framework defines those gates and the processes for maintaining quality standards.

---

## Three-Layer Quality System

### Layer 1: Automated Pre-Commit Checks (100% Coverage)

**Runs on:** Every file before git commit
**Time:** <30 seconds per file
**Blocking:** Yes - prevents commit if fails

#### 1.1 Bias Detection Scanner

**Purpose:** Flag promotional, emotional, or biased language

**Implementation:**
```python
import re
from typing import List, Dict

FORBIDDEN_TERMS = {
    # Promotional/Hype
    "revolutionary", "game-changing", "groundbreaking", "amazing",
    "incredible", "fantastic", "awesome", "best", "perfect",
    "flawless", "guaranteed", "certain", "definite",

    # Emotional/Speculative
    "exciting", "thrilling", "scary", "terrifying", "hope",
    "fear", "greed", "obviously", "clearly",

    # Market calls
    "bullish", "bearish", "moon", "dump", "pump", "rekt",

    # Colloquial
    "DYOR", "NFA", "WAGMI", "GM", "GN", "ape", "degen",
    "shitcoin", "shilling", "FUD", "FOMO"
}

def scan_for_bias(text: str) -> Dict:
    """Scan text for forbidden terms and biased language."""

    violations = []

    # Check forbidden terms
    text_lower = text.lower()
    for term in FORBIDDEN_TERMS:
        if term.lower() in text_lower:
            # Find all occurrences
            pattern = re.compile(re.escape(term), re.IGNORECASE)
            for match in pattern.finditer(text):
                violations.append({
                    "type": "forbidden_term",
                    "term": term,
                    "position": match.start(),
                    "line": text[:match.start()].count('\n') + 1,
                    "severity": "high",
                    "suggestion": get_neutral_alternative(term)
                })

    # Check for excessive superlatives
    superlatives = ["most", "best", "worst", "greatest", "biggest"]
    for sup in superlatives:
        count = text_lower.count(sup)
        if count > 5:  # More than 5 occurrences
            violations.append({
                "type": "excessive_superlatives",
                "term": sup,
                "count": count,
                "severity": "medium",
                "suggestion": "Use specific quantitative comparisons instead"
            })

    # Check for certainty without evidence
    certainty_patterns = [
        r"will definitely",
        r"certainly will",
        r"guaranteed to",
        r"no doubt",
        r"obviously will",
    ]
    for pattern in certainty_patterns:
        matches = re.finditer(pattern, text, re.IGNORECASE)
        for match in matches:
            violations.append({
                "type": "unsubstantiated_certainty",
                "text": match.group(),
                "position": match.start(),
                "line": text[:match.start()].count('\n') + 1,
                "severity": "high",
                "suggestion": "Use probabilistic language: 'likely', 'may', 'historical data suggests'"
            })

    return {
        "passed": len(violations) == 0,
        "violations": violations,
        "total_violations": len(violations)
    }


def get_neutral_alternative(term: str) -> str:
    """Suggest neutral alternatives for biased terms."""

    alternatives = {
        "bullish": "upward momentum / positive trend",
        "bearish": "downward momentum / negative trend",
        "moon": "significant appreciation",
        "dump": "rapid decline",
        "pump": "rapid increase",
        "revolutionary": "novel / innovative (specify how)",
        "amazing": "noteworthy / significant",
        "scam": "project with red flags: [list specific issues]",
        "definitely": "likely / data suggests",
        "guaranteed": "historical precedent indicates",
    }

    return alternatives.get(term.lower(), "use neutral, factual language")
```

---

#### 1.2 Sentiment Analysis

**Purpose:** Ensure text maintains neutral tone (not overly positive or negative)

**Target Range:** 0.4 - 0.6 on 0-1 scale
- 0.0 = Extremely negative
- 0.5 = Perfectly neutral
- 1.0 = Extremely positive

**Implementation:**
```python
from transformers import pipeline

# Load pre-trained sentiment analyzer
sentiment_analyzer = pipeline(
    "sentiment-analysis",
    model="distilbert-base-uncased-finetuned-sst-2-english"
)

def analyze_document_sentiment(text: str) -> Dict:
    """Analyze overall sentiment of document."""

    # Split into paragraphs
    paragraphs = [p for p in text.split('\n\n') if len(p) > 50]

    # Analyze each paragraph
    results = []
    for i, para in enumerate(paragraphs):
        if len(para) < 50:  # Skip short paragraphs
            continue

        sentiment = sentiment_analyzer(para[:512])[0]  # Max 512 tokens

        # Convert to 0-1 scale
        if sentiment['label'] == 'POSITIVE':
            score = 0.5 + (sentiment['score'] * 0.5)
        else:  # NEGATIVE
            score = 0.5 - (sentiment['score'] * 0.5)

        results.append({
            "paragraph": i + 1,
            "score": score,
            "label": "neutral" if 0.4 <= score <= 0.6 else ("positive" if score > 0.6 else "negative")
        })

    # Calculate overall score
    avg_score = sum(r['score'] for r in results) / len(results)

    # Identify problematic paragraphs
    violations = [r for r in results if not (0.4 <= r['score'] <= 0.6)]

    return {
        "passed": 0.4 <= avg_score <= 0.6,
        "overall_score": avg_score,
        "target_range": [0.4, 0.6],
        "paragraph_results": results,
        "violations": violations,
        "recommendation": "Rewrite paragraphs with extreme sentiment" if violations else "Sentiment is neutral"
    }
```

---

#### 1.3 Citation Verification

**Purpose:** Ensure all claims have source attribution

**Implementation:**
```python
import re
import requests
from urllib.parse import urlparse

def verify_citations(text: str) -> Dict:
    """Verify all citations have corresponding references and links work."""

    # Extract inline citations [1], [2], etc.
    citation_pattern = r'\[(\d+)\]'
    citations = set(re.findall(citation_pattern, text))

    # Extract references section
    ref_section = extract_reference_section(text)

    if not ref_section:
        return {
            "passed": False,
            "error": "No references section found",
            "violations": ["Document must include ## References section"]
        }

    # Extract reference numbers from references section
    ref_numbers = set()
    ref_urls = {}

    for line in ref_section.split('\n'):
        # Match: "1. **Source** - URL - Description"
        match = re.match(r'(\d+)\.\s+\*\*(.+?)\*\*\s+-\s+(https?://\S+)', line)
        if match:
            ref_num = match.group(1)
            url = match.group(3)
            ref_numbers.add(ref_num)
            ref_urls[ref_num] = url

    # Find orphaned citations (no corresponding reference)
    orphaned = citations - ref_numbers

    # Find unused references (reference exists but not cited)
    unused = ref_numbers - citations

    # Verify URLs are accessible
    broken_links = []
    for ref_num, url in ref_urls.items():
        if not check_url_accessible(url):
            broken_links.append({
                "reference": ref_num,
                "url": url,
                "error": "URL not accessible"
            })

    violations = []
    if orphaned:
        violations.append(f"Orphaned citations (no reference): {', '.join(sorted(orphaned))}")
    if unused:
        violations.append(f"Unused references (not cited): {', '.join(sorted(unused))}")
    if broken_links:
        violations.append(f"Broken links: {len(broken_links)} URLs not accessible")

    return {
        "passed": len(violations) == 0,
        "total_citations": len(citations),
        "total_references": len(ref_numbers),
        "orphaned_citations": list(orphaned),
        "unused_references": list(unused),
        "broken_links": broken_links,
        "violations": violations
    }


def check_url_accessible(url: str, timeout: int = 5) -> bool:
    """Check if URL returns 200 status code."""
    try:
        response = requests.head(url, timeout=timeout, allow_redirects=True)
        return response.status_code == 200
    except:
        return False


def extract_reference_section(text: str) -> str:
    """Extract the References section from markdown."""
    # Find "## References" or "## [Number]. References"
    match = re.search(r'## (\d+\.\s+)?References\s*\n(.*)', text, re.DOTALL | re.IGNORECASE)
    if match:
        return match.group(2)
    return ""
```

---

#### 1.4 Data Freshness Check

**Purpose:** Flag stale data that hasn't been updated recently

**Implementation:**
```python
from datetime import datetime, timedelta
import re

def check_data_freshness(text: str, max_age_days: int = 30) -> Dict:
    """Check if all data points have recent timestamps."""

    # Extract all timestamps from document
    timestamp_patterns = [
        r'as of ([A-Z][a-z]+ \d{1,2}, \d{4})',
        r'(\d{4}-\d{2}-\d{2})',
        r'\(([A-Z][a-z]{2} \d{1,2}, \d{4})\)',
    ]

    timestamps = []
    for pattern in timestamp_patterns:
        matches = re.finditer(pattern, text, re.IGNORECASE)
        for match in matches:
            try:
                date_str = match.group(1)
                # Try to parse various formats
                for fmt in ['%B %d, %Y', '%Y-%m-%d', '%b %d, %Y']:
                    try:
                        date = datetime.strptime(date_str, fmt)
                        timestamps.append({
                            "date": date,
                            "date_str": date_str,
                            "position": match.start(),
                            "line": text[:match.start()].count('\n') + 1
                        })
                        break
                    except ValueError:
                        continue
            except:
                continue

    # Check age of all timestamps
    now = datetime.now()
    stale_data = []

    for ts in timestamps:
        age_days = (now - ts['date']).days
        if age_days > max_age_days:
            stale_data.append({
                "date": ts['date_str'],
                "age_days": age_days,
                "line": ts['line'],
                "severity": "high" if age_days > 60 else "medium"
            })

    # Check document "Last Updated" field
    last_updated_match = re.search(r'\*\*Last Updated:\*\*\s+(.+)', text)
    doc_last_updated = None
    doc_stale = False

    if last_updated_match:
        try:
            date_str = last_updated_match.group(1).strip()
            for fmt in ['%B %d, %Y', '%Y-%m-%d', '%b %d, %Y']:
                try:
                    doc_last_updated = datetime.strptime(date_str, fmt)
                    break
                except ValueError:
                    continue

            if doc_last_updated:
                doc_age = (now - doc_last_updated).days
                doc_stale = doc_age > 7  # Document itself should be updated weekly
        except:
            pass

    return {
        "passed": len(stale_data) == 0 and not doc_stale,
        "total_timestamps": len(timestamps),
        "stale_data_count": len(stale_data),
        "stale_data": stale_data,
        "document_last_updated": doc_last_updated.strftime('%Y-%m-%d') if doc_last_updated else None,
        "document_stale": doc_stale,
        "recommendation": "Update stale data points" if stale_data else "All data is fresh"
    }
```

---

#### 1.5 Format Consistency Check

**Purpose:** Ensure markdown formatting follows style guide

**Implementation:**
```python
def check_format_consistency(text: str) -> Dict:
    """Check markdown formatting consistency."""

    violations = []

    # Check: Only one H1 heading
    h1_count = len(re.findall(r'^# [^#]', text, re.MULTILINE))
    if h1_count == 0:
        violations.append("No H1 heading found - document must have title")
    elif h1_count > 1:
        violations.append(f"Multiple H1 headings found ({h1_count}) - only one allowed")

    # Check: H2 headings are numbered
    h2_headings = re.findall(r'^## (.+)$', text, re.MULTILINE)
    for h2 in h2_headings:
        if not re.match(r'^\d+\.', h2) and h2.lower() not in ['references', 'executive summary']:
            violations.append(f"H2 heading not numbered: '{h2}'")

    # Check: Tables have source notes
    table_pattern = r'(\|.+\|.+\n\|[-:| ]+\|.+\n(\|.+\|.+\n)+)'
    tables = re.finditer(table_pattern, text)

    for table in tables:
        # Check if next line is a source note
        table_end = table.end()
        next_line = text[table_end:table_end+100].split('\n')[0]
        if not next_line.startswith('*Source:'):
            violations.append(f"Table at line {text[:table.start()].count(chr(10)) + 1} missing source note")

    # Check: Numbers have proper formatting
    # Should have thousand separators: $1,234,567 not $1234567
    bad_numbers = re.findall(r'\$\d{4,}(?!,)', text)
    if bad_numbers:
        violations.append(f"Numbers without thousand separators: {bad_numbers[:3]}")

    # Check: Required sections present
    required_sections = ['Executive Summary', 'References']
    for section in required_sections:
        if section.lower() not in text.lower():
            violations.append(f"Missing required section: {section}")

    return {
        "passed": len(violations) == 0,
        "violations": violations,
        "total_violations": len(violations)
    }
```

---

### Layer 2: Agent Cross-Validation (Critical Data Only)

**Runs on:** Critical metrics and controversial claims
**Time:** 1-2 minutes per metric
**Blocking:** No - flags for review but doesn't block

#### 2.1 Multi-Source Data Verification

**Purpose:** Ensure critical data points match across multiple sources

**Process:**
1. Data Collector Agents fetch same metric from 2-3 sources
2. Validator Agent compares values
3. If variance <5%: Approve (high confidence)
4. If variance 5-10%: Approve with medium confidence, use median
5. If variance >10%: Flag for human review

**Implementation:**
```python
from statistics import median, stdev

def cross_validate_metric(metric_name: str, sources: List[Dict]) -> Dict:
    """Cross-validate a metric across multiple sources."""

    if len(sources) < 2:
        return {
            "status": "insufficient_data",
            "confidence": "low",
            "error": "Need at least 2 sources for validation"
        }

    values = [s['value'] for s in sources]

    # Calculate variance
    mean_val = sum(values) / len(values)
    max_val = max(values)
    min_val = min(values)
    variance_pct = ((max_val - min_val) / mean_val) * 100 if mean_val != 0 else 0

    # Determine confidence and action
    if variance_pct < 5:
        status = "approved"
        confidence = "high"
        final_value = mean_val
    elif variance_pct < 10:
        status = "approved"
        confidence = "medium"
        final_value = median(values)
    else:
        status = "flagged"
        confidence = "low"
        final_value = None

    return {
        "status": status,
        "confidence": confidence,
        "final_value": final_value,
        "variance_pct": variance_pct,
        "sources": sources,
        "mean": mean_val,
        "median": median(values),
        "min": min_val,
        "max": max_val,
        "requires_review": status == "flagged"
    }
```

---

#### 2.2 Historical Consistency Check

**Purpose:** Flag anomalies that deviate significantly from historical patterns

**Implementation:**
```python
import numpy as np

def check_historical_consistency(metric_name: str, new_value: float, historical_values: List[float]) -> Dict:
    """Check if new value is consistent with historical data."""

    if len(historical_values) < 7:  # Need at least a week of data
        return {
            "status": "insufficient_history",
            "anomaly": False
        }

    # Calculate z-score
    mean = np.mean(historical_values)
    std = np.std(historical_values)

    if std == 0:
        z_score = 0
    else:
        z_score = (new_value - mean) / std

    # Flag if >3 standard deviations
    is_anomaly = abs(z_score) > 3

    return {
        "status": "anomaly_detected" if is_anomaly else "consistent",
        "anomaly": is_anomaly,
        "z_score": z_score,
        "new_value": new_value,
        "historical_mean": mean,
        "historical_std": std,
        "recommendation": "Manual review recommended" if is_anomaly else "Value is consistent with history"
    }
```

---

### Layer 3: Human Audit (Random Sampling)

**Runs on:** 10% of updated files weekly
**Time:** 2-3 hours per week
**Blocking:** No - retroactive correction if issues found

#### 3.1 Weekly Audit Process

**Schedule:** Every Friday, 14:00-17:00 UTC

**Process:**
1. Reviewer Agent randomly selects 10% of files updated this week
2. Human reviewer manually checks each file:
   - Read full content for tone and clarity
   - Verify 5 random data points against sources
   - Check that analysis is logically sound
   - Assess overall quality and actionability
3. Document findings in audit report
4. If issues found: Create correction tasks

**Audit Checklist:**
```markdown
## Weekly Audit - Week of [Date]

### Files Reviewed
- [x] /context/crypto_trade_signal/crypto_buy_signal_analysis.md
- [x] /case_studies/chains_l2s_and_l1s_refed/ethereum/metrics.md
- [ ] ...

### Per-File Review

#### File: [path]

**Tone Assessment:** ☑️ Neutral / ☐ Slightly Biased / ☐ Highly Biased
**Data Accuracy:** 5/5 data points verified
**Source Quality:** ☑️ All sources accessible and credible
**Logical Soundness:** ☑️ Analysis follows from data
**Formatting:** ☑️ Consistent with style guide
**Actionability:** ☑️ Useful for institutional decision-making

**Issues Found:**
- None

**Corrections Needed:**
- None

---

### Summary

**Files Reviewed:** 12
**Issues Found:** 2
**Accuracy Rate:** 97.3%
**Average Neutrality Score:** 0.51
**Corrections Issued:** 2

**Overall Assessment:** Quality standards maintained. Minor corrections needed in 2 files.
```

---

## Quality Metrics and KPIs

### Target Benchmarks

| Metric | Target | Current | Status |
|--------|--------|---------|--------|
| Bias Detection Pass Rate | >95% | TBD | 🟡 Pending |
| Sentiment Score (Neutrality) | 0.4-0.6 | TBD | 🟡 Pending |
| Citation Coverage | 100% | TBD | 🟡 Pending |
| Data Freshness | >95% <30d | TBD | 🟡 Pending |
| Format Consistency | >98% | TBD | 🟡 Pending |
| Cross-Validation Agreement | >90% <5% var | TBD | 🟡 Pending |
| Human Audit Pass Rate | >95% | TBD | 🟡 Pending |

### Monthly Reporting

**Quality Scorecard (Generated Monthly):**

```markdown
# Monthly Quality Report - [Month Year]

## Executive Summary
Overall quality score: [X]/100
Pass rate: [Y]%
Critical issues: [N]

## Layer 1: Automated Checks

### Bias Detection
- Files scanned: 247
- Violations found: 12 (4.9%)
- Most common violation: Unsubstantiated certainty
- Action taken: All violations corrected

### Sentiment Analysis
- Average score: 0.52 (target: 0.4-0.6)
- Files outside range: 3 (1.2%)
- Action taken: 3 files rewritten

### Citation Verification
- Orphaned citations: 0
- Broken links: 4
- Action taken: Links updated

### Data Freshness
- Average data age: 12 days
- Stale data (>30d): 5 data points (0.8%)
- Action taken: Updated all stale data

### Format Consistency
- Format violations: 7 (2.8%)
- Common issues: Missing source notes on tables
- Action taken: All corrected

## Layer 2: Agent Cross-Validation

### Multi-Source Verification
- Metrics validated: 890
- High confidence: 856 (96.2%)
- Medium confidence: 29 (3.3%)
- Flagged for review: 5 (0.6%)

### Anomaly Detection
- Anomalies detected: 8
- True anomalies: 6 (market events)
- False positives: 2
- Accuracy: 75%

## Layer 3: Human Audit

### Sampling Results
- Files sampled: 25 (10% of 247)
- Data points verified: 125
- Accurate: 121 (96.8%)
- Tone violations: 1
- Logical errors: 0

### Issues Corrected
- Data inaccuracies: 4
- Tone adjustments: 1
- Format fixes: 2

## Recommendations
1. Improve anomaly detection to reduce false positives
2. Add automated check for table source notes
3. Agent 5.3 needs recalibration (3 of 4 inaccuracies)

## Overall Assessment
✅ Quality standards maintained
⚠️ Minor improvements needed in anomaly detection
```

---

## Continuous Improvement Process

### Quarterly Review Cycle

**Every 3 months:**

1. **Review all quality metrics**
   - Identify trends (improving/declining)
   - Compare to targets
   - Root cause analysis for failures

2. **Update forbidden terms list**
   - Add new colloquialisms entering crypto space
   - Remove terms no longer in use

3. **Recalibrate sentiment models**
   - Retrain on recent corpus
   - Adjust thresholds if needed

4. **Revise quality thresholds**
   - Tighten if consistently exceeding targets
   - Loosen slightly if too restrictive and hurting coverage

5. **Agent performance review**
   - Identify consistently problematic agents
   - Retrain or replace underperforming agents

---

## Quality Incident Response

### When Quality Issues Are Detected

**Severity Levels:**

**CRITICAL (Immediate action required):**
- Factually incorrect data published
- Biased content that could mislead users
- Broken fundamental analysis logic
- Security/privacy breach

**Action:** Immediate correction within 1 hour, post-mortem within 24h

**HIGH (Fix within 24 hours):**
- Multiple data points outdated (>30 days)
- Significant bias detected post-publication
- Broken links to critical sources
- Format violations affecting readability

**Action:** Correct within 24h, review process to prevent recurrence

**MEDIUM (Fix within 1 week):**
- Minor data inaccuracies
- Slight tone issues
- Minor formatting inconsistencies
- Non-critical broken links

**Action:** Include in next update cycle

**LOW (Fix within 1 month):**
- Cosmetic formatting issues
- Link rot on supplementary sources
- Minor style guide deviations

**Action:** Batch fix in monthly maintenance

---

### Post-Incident Review Template

```markdown
# Quality Incident Report - [Date]

## Incident Summary
**Severity:** [Critical/High/Medium/Low]
**Detected:** [Date and time]
**Corrected:** [Date and time]
**Affected Files:** [List]

## Description
[What went wrong]

## Root Cause
[Why it happened]

## Impact
[Who was affected, potential damage]

## Immediate Actions Taken
1. [Action 1]
2. [Action 2]

## Preventive Measures
1. [How to prevent this in future]
2. [Process changes]
3. [Tool improvements]

## Responsible Agent/Human
[If agent: which one, why did it fail]
[If human: process gap identified]

## Follow-Up Tasks
- [ ] Update agent logic
- [ ] Add new automated check
- [ ] Revise process documentation
- [ ] Train agents on new rules

## Status
☑️ Resolved / ☐ In Progress / ☐ Monitoring
```

---

## Tools and Scripts

### Pre-Commit Hook Installation

**Setup:**
```bash
#!/bin/bash
# .git/hooks/pre-commit

# Run quality checks before allowing commit
python3 .governance/scripts/quality_check.py --files $(git diff --cached --name-only --diff-filter=ACM)

if [ $? -ne 0 ]; then
    echo "❌ Quality checks failed. Commit blocked."
    echo "Fix issues above and try again."
    exit 1
fi

echo "✅ Quality checks passed."
exit 0
```

### Quality Check Script

**File:** `.governance/scripts/quality_check.py`

```python
#!/usr/bin/env python3
"""
Pre-commit quality check script.
Runs all Layer 1 automated checks on staged files.
"""

import sys
import argparse
from pathlib import Path

# Import all check functions
from checks.bias_detection import scan_for_bias
from checks.sentiment import analyze_document_sentiment
from checks.citations import verify_citations
from checks.freshness import check_data_freshness
from checks.formatting import check_format_consistency

def run_quality_checks(file_path: str) -> bool:
    """Run all quality checks on a file."""

    # Only check markdown files
    if not file_path.endswith('.md'):
        return True

    print(f"\n🔍 Checking: {file_path}")

    # Read file
    with open(file_path, 'r') as f:
        text = f.read()

    passed = True

    # Run checks
    checks = [
        ("Bias Detection", scan_for_bias(text)),
        ("Sentiment Analysis", analyze_document_sentiment(text)),
        ("Citation Verification", verify_citations(text)),
        ("Data Freshness", check_data_freshness(text)),
        ("Format Consistency", check_format_consistency(text)),
    ]

    for check_name, result in checks:
        if result['passed']:
            print(f"  ✅ {check_name}: PASSED")
        else:
            print(f"  ❌ {check_name}: FAILED")
            passed = False

            # Print violations
            if 'violations' in result:
                for v in result['violations'][:3]:  # Show first 3
                    print(f"     - {v}")

                if len(result['violations']) > 3:
                    print(f"     ... and {len(result['violations']) - 3} more")

    return passed


def main():
    parser = argparse.ArgumentParser(description='Run quality checks on files')
    parser.add_argument('--files', nargs='+', required=True, help='Files to check')
    args = parser.parse_args()

    all_passed = True

    for file_path in args.files:
        if not run_quality_checks(file_path):
            all_passed = False

    if all_passed:
        print("\n✅ All quality checks passed!")
        sys.exit(0)
    else:
        print("\n❌ Some quality checks failed. Please fix issues above.")
        sys.exit(1)


if __name__ == '__main__':
    main()
```

---

## Quality Dashboard (Future Enhancement)

**Real-time monitoring interface showing:**

- Current quality scores across all metrics
- Trend lines (improving/declining)
- Recent violations and corrections
- Agent performance rankings
- Files needing attention
- Upcoming audit schedule

**Prototype:**
```
┌─────────────────────────────────────────────────────────────┐
│  Quality Dashboard - Blockchain Payment Flow Analysis       │
└─────────────────────────────────────────────────────────────┘

  Overall Quality Score: 96.8/100  ✅

  ┌─────────────────────────────┐  ┌─────────────────────────────┐
  │  Layer 1: Automated Checks  │  │  Layer 2: Cross-Validation  │
  │  ───────────────────────────│  │  ───────────────────────────│
  │  Bias Detection:    98.2% ✅│  │  Multi-Source:       96.2% ✅│
  │  Sentiment:         97.8% ✅│  │  Anomaly Detection:  92.5% ✅│
  │  Citations:         99.1% ✅│  │                              │
  │  Data Freshness:    95.3% ✅│  │                              │
  │  Formatting:        97.2% ✅│  │                              │
  └─────────────────────────────┘  └─────────────────────────────┘

  Recent Violations (Last 7 Days):
  ╔═══════════════════════════════════════════════════════════╗
  ║ • bias_detection: 3 violations in case_studies/...      ║
  ║ • stale_data: 2 files with data >30 days old            ║
  ║ • sentiment: 1 file scored 0.68 (too positive)          ║
  ╚═══════════════════════════════════════════════════════════╝

  Files Needing Attention:
  • /case_studies/chains_l2s_and_l1s_refed/arbitrum/analysis.md
    └─ Data freshness: 45 days old

  Next Human Audit: Friday Nov 3, 14:00 UTC (2 days)
```

---

**Quality Control Version:** 1.0
**Last Updated:** October 31, 2025
**Next Review:** January 31, 2026
