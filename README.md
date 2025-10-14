# ArcKit Test Project v3

**Full-featured test project for ArcKit - Enterprise Architecture Governance Toolkit**

🎯 **Purpose**: Test all ArcKit features with a realistic UK Government AI project scenario

---

## 🚀 Quick Start

### GitHub Codespaces (Recommended)

1. Click the green **"Code"** button above
2. Select **"Open with Codespaces"** → **"New codespace"**
3. ArcKit is pre-configured - just start Claude Code!
4. Follow **[QUICKSTART.md](QUICKSTART.md)** for test commands

---

## 📋 Test Scenario

**Project**: Benefits Eligibility Chatbot for UK Department for Work and Pensions (DWP)

**Details**:
- **System**: HIGH-RISK AI chatbot using GPT-4
- **Purpose**: Answer citizen questions about Universal Credit, JSA, disability benefits
- **Requirements**: 10K concurrent users, UK GDPR, WCAG 2.2 AA, human-in-the-loop
- **Compliance**: Technology Code of Practice, AI Playbook, ATRS required
- **Procurement**: Via G-Cloud Digital Marketplace (£1.5M, 9 months)

---

## ✅ Pre-Installed Commands (12 total)

All commands ready in `.claude/commands/`:

### Core Governance
- `/arckit.principles` - Architecture principles
- `/arckit.requirements` - Comprehensive requirements

### Strategic Planning
- `/arckit.wardley` - Wardley Mapping for build vs buy decisions

### Vendor Management
- `/arckit.sow` - Statement of Work (RFP)
- `/arckit.evaluate` - Vendor evaluation framework

### Design Review
- `/arckit.hld-review` - High-level design review
- `/arckit.dld-review` - Detailed design review

### Traceability
- `/arckit.traceability` - Requirements traceability matrix

### UK Government
- `/arckit.tcop` - Technology Code of Practice (13 points)
- `/arckit.ai-playbook` - AI Playbook (10 principles + 6 themes)
- `/arckit.atrs` - Algorithmic Transparency Record

### Quality Assurance
- `/arckit.analyze` - Governance quality analysis

---

## 📚 Documentation

- **[QUICKSTART.md](QUICKSTART.md)** - Fast start with all commands
- **[TEST-PLAN.md](TEST-PLAN.md)** - Detailed test plan with expected outputs

---

## 🎯 What Gets Tested

### Core Features
- ✅ Architecture principles generation
- ✅ Comprehensive requirements (50+ requirements)
- ✅ Vendor procurement (SOW, evaluation)
- ✅ Requirements traceability

### Strategic Planning (NEW!)
- ✅ Wardley Mapping for build vs buy decisions
- ✅ Component evolution analysis (Genesis → Commodity)
- ✅ UK Government Digital Marketplace procurement strategy
- ✅ GOV.UK services reuse identification

### UK Government Features
- ✅ Technology Code of Practice - All 13 points
- ✅ AI Playbook - 10 principles + 6 ethical themes
- ✅ ATRS - Full transparency record
- ✅ Digital Marketplace - G-Cloud procurement

### Quality Assurance
- ✅ Governance health scoring
- ✅ Requirements quality checks
- ✅ Compliance verification
- ✅ Actionable recommendations

---

## 📊 Expected Results

After testing, you'll have:

```
projects/001-benefits-chatbot/
├── requirements.md (~50+ requirements)
├── wardley-maps/
│   └── procurement-strategy.md (Build vs Buy analysis)
├── tcop-assessment.md (TCoP score ~70-90%)
├── ai-playbook-assessment.md (HIGH-RISK assessment)
├── atrs-record.md (Complete ATRS)
├── sow.md (Vendor RFP)
├── evaluation-criteria.md (Scoring framework)
└── traceability-matrix.md (Requirements mapping)

.arckit/memory/
└── architecture-principles.md (UK Gov principles)
```

Plus analysis report from `/arckit.analyze` showing governance health score (B grade expected).

---

## 📖 More Information

- **ArcKit Repository**: https://github.com/tractorjuice/arc-kit
- **Latest Release**: v0.2.0 - UK Government Compliance Edition
- **Issues**: https://github.com/tractorjuice/arc-kit/issues

---

**Ready to test?** Open in Codespaces and follow [QUICKSTART.md](QUICKSTART.md)! 🚀
