# ArcKit Test Project - Quick Start

**Repository**: https://github.com/tractorjuice/arckit-test-project

This is a **full test project** for ArcKit demonstrating all features with a realistic UK Government scenario.

---

## Test Scenario

**Project**: Benefits Eligibility Chatbot for Department for Work and Pensions (DWP)
- **Type**: HIGH-RISK AI system using GPT-4
- **Users**: Citizens seeking benefits advice
- **Compliance**: TCoP, AI Playbook, ATRS required
- **Procurement**: Via G-Cloud Digital Marketplace

---

## Quick Start (GitHub Codespaces)

### 1. Open in Codespaces

Click the green **"Code"** button → **"Open with Codespaces"** → **"New codespace"**

### 2. Install ArcKit

```bash
# Install from source
pip install git+https://github.com/tractorjuice/arc-kit.git

# Or with uv (faster)
uv pip install git+https://github.com/tractorjuice/arc-kit.git
```

### 3. Verify Installation

```bash
# Check commands installed
ls -1 .claude/commands/

# Should show 11 commands:
# - arckit.principles.md
# - arckit.requirements.md
# - arckit.sow.md
# - arckit.evaluate.md
# - arckit.hld-review.md
# - arckit.dld-review.md
# - arckit.traceability.md
# - arckit.tcop.md
# - arckit.ai-playbook.md
# - arckit.atrs.md
# - arckit.analyze.md
```

### 4. Start Claude Code

```bash
claude
```

### 5. Run Test Commands

Follow the test plan in `TEST-PLAN.md`:

```bash
# Phase 1: Architecture Principles
/arckit.principles Create architecture principles for UK Government DWP focused on cloud-first, security-by-design, accessibility WCAG 2.2 AA, and AI responsible deployment

# Phase 2: Requirements
/arckit.requirements Build a benefits eligibility chatbot for DWP that uses GPT-4 to answer citizen questions about Universal Credit, Job Seekers Allowance, and disability benefits. Must handle 10,000 concurrent users, comply with UK GDPR, WCAG 2.2 AA accessibility, integrate with existing DWP systems, provide accurate eligibility guidance, support English and Welsh languages, and include human-in-the-loop review before advice is shown to citizens.

# Phase 3a: Technology Code of Practice
/arckit.tcop Assess Technology Code of Practice compliance for DWP benefits eligibility chatbot in Private Beta phase

# Phase 3b: AI Playbook
/arckit.ai-playbook Assess AI Playbook compliance for DWP benefits eligibility chatbot using GPT-4 - this is a HIGH-RISK AI system affecting access to benefits

# Phase 3c: ATRS
/arckit.atrs Generate ATRS record for DWP benefits eligibility chatbot using GPT-4, in Private Beta phase, processing citizen questions about benefits eligibility

# Phase 4a: Statement of Work (optional)
/arckit.sow Generate Statement of Work for vendor RFP to build the benefits eligibility chatbot, 9-month timeline, £1.5M budget, procurement via G-Cloud framework

# Phase 4b: Vendor Evaluation (optional)
/arckit.evaluate Create evaluation framework for benefits chatbot vendors

# Phase 5: Quality Analysis
/arckit.analyze

# Phase 6: Traceability
/arckit.traceability Generate traceability matrix from requirements through design to tests
```

---

## Expected Outputs

After running all commands, you should have:

```
projects/001-benefits-chatbot/
├── requirements.md                  # 50+ comprehensive requirements
├── tcop-assessment.md               # All 13 TCoP points assessed
├── ai-playbook-assessment.md        # 10 principles + 6 themes
├── atrs-record.md                   # Full ATRS (Tier 1 + Tier 2)
├── sow.md                           # Vendor RFP for G-Cloud
├── evaluation-criteria.md           # Vendor scoring framework
└── traceability-matrix.md           # Requirements traceability

.arckit/memory/
└── architecture-principles.md       # UK Gov architecture principles
```

Plus analysis report from `/arckit.analyze` (console output, not file).

---

## Verification Commands

```bash
# Check all files created
tree projects/

# Check file sizes
wc -l projects/001-benefits-chatbot/*.md

# Check command count
ls -1 .claude/commands/ | wc -l  # Should be 11

# Check template count
ls -1 .arckit/templates/ | wc -l  # Should be 16
```

---

## What to Look For

### Requirements Quality
- ✅ 50+ requirements across BR, FR, NFR, INT, DR categories
- ✅ Each requirement has acceptance criteria
- ✅ Priorities defined (MUST/SHOULD/MAY)
- ✅ UK Government compliance built in (GDPR, Equality Act, WCAG)

### UK Government Compliance
- ✅ **TCoP**: All 13 points assessed with score (expect 70-90%)
- ✅ **AI Playbook**: HIGH-RISK determination, mandatory assessments flagged
- ✅ **ATRS**: Complete Tier 1 (public) and Tier 2 (technical) record

### Quality Analysis
- ✅ **Analyze**: Detects real issues (DPIA missing, bias testing incomplete)
- ✅ **Governance health score**: B grade (80-89%) expected
- ✅ **Actionable recommendations**: Specific next steps provided

### Known Expected Issues

The `/arckit.analyze` command **should** detect these issues:

1. ❌ **DPIA not completed** - CRITICAL (blocking for HIGH-RISK AI)
2. ⚠️ **Human-in-the-loop not fully documented** - HIGH
3. ⚠️ **Bias testing methodology incomplete** - HIGH
4. ⚠️ **ATRS not published to GOV.UK** - MEDIUM (required before live)
5. ⚠️ **No HLD/DLD yet** - MEDIUM (design phase not started)

**These are expected** - they demonstrate the analyze command correctly identifies real gaps!

---

## Full Test Plan

For detailed test plan with expected outputs and success criteria, see:

📄 **[TEST-PLAN.md](TEST-PLAN.md)**

---

## Support

- **ArcKit Issues**: https://github.com/tractorjuice/arc-kit/issues
- **ArcKit Documentation**: https://github.com/tractorjuice/arc-kit
- **Latest Release**: https://github.com/tractorjuice/arc-kit/releases/tag/v0.2.0

---

## What's Being Tested

This test project validates:

### Core Features
- ✅ Architecture principles generation
- ✅ Comprehensive requirements documentation
- ✅ Vendor procurement (SOW, evaluation)
- ✅ Design reviews (HLD, DLD)
- ✅ Requirements traceability

### UK Government Features
- ✅ Technology Code of Practice (TCoP) - 13 points
- ✅ AI Playbook - 10 principles + 6 ethical themes
- ✅ ATRS - Algorithmic Transparency Recording Standard
- ✅ Digital Marketplace - G-Cloud procurement
- ✅ GOV.UK services integration

### Quality Assurance (NEW!)
- ✅ Governance quality analysis
- ✅ Requirements quality checks
- ✅ Principles alignment validation
- ✅ Traceability gap detection
- ✅ UK Gov compliance verification
- ✅ Actionable recommendations

---

## Time to Complete

- **Quick test** (core commands): 30-45 minutes
- **Full test** (all commands): 60-90 minutes
- **Review outputs**: 15-30 minutes

**Total**: ~2 hours for comprehensive testing

---

**Ready to test!** 🚀

Open this repository in GitHub Codespaces and follow the commands above.
