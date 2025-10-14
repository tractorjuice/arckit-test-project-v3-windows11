# ArcKit Full Test Plan

**Test Repository**: `/tmp/arckit-test-project`
**Date**: 2025-10-14
**Version**: Latest (includes v0.2.0 + ATRS + analyze features)

---

## Test Scenario: UK Government AI Chatbot Project

We'll test all ArcKit commands by simulating a realistic UK Government project:

**Project**: Benefits Eligibility Chatbot for Department for Work and Pensions (DWP)
**Type**: HIGH-RISK AI system (affects access to benefits)
**Requirements**: TCoP compliance, AI Playbook compliance, ATRS publication

---

## Phase 1: Establish Architecture Principles

### Test: `/arckit.principles`

**Command**:
```bash
/arckit.principles Create architecture principles for UK Government Department for Work and Pensions (DWP) focused on cloud-first, security-by-design, accessibility WCAG 2.2 AA, and AI responsible deployment
```

**Expected Output**:
- File: `.arckit/memory/architecture-principles.md`
- Sections:
  - Strategic Principles (Cloud-First, API-First, Security-by-Design)
  - Data Principles (Privacy-by-Design, Single Source of Truth)
  - Technology Standards (approved cloud providers, languages, frameworks)
  - Accessibility Requirements (WCAG 2.2 AA)
  - AI/ML Principles (responsible AI, human oversight)
  - Exception Process

**Success Criteria**:
- ✅ File created with comprehensive principles
- ✅ UK Government specific (GOV.UK services, Digital Marketplace, Cyber Essentials)
- ✅ AI-specific principles included
- ✅ Validation gates defined

---

## Phase 2: Define Requirements

### Test: `/arckit.requirements`

**Command**:
```bash
/arckit.requirements Build a benefits eligibility chatbot for DWP that uses GPT-4 to answer citizen questions about Universal Credit, Job Seekers Allowance, and disability benefits. Must handle 10,000 concurrent users, comply with UK GDPR, WCAG 2.2 AA accessibility, integrate with existing DWP systems, provide accurate eligibility guidance, support English and Welsh languages, and include human-in-the-loop review before advice is shown to citizens.
```

**Expected Output**:
- File: `projects/001-benefits-chatbot/requirements.md`
- Requirements categories:
  - Business Requirements (BR-001+): Why build this, business goals
  - Functional Requirements (FR-001+): What it does (chatbot, Q&A, eligibility checks)
  - Non-Functional Requirements:
    - NFR-S-xxx: Security (UK GDPR, data encryption, Cyber Essentials)
    - NFR-P-xxx: Performance (10K concurrent users, response times)
    - NFR-A-xxx: Accessibility (WCAG 2.2 AA, screen readers)
    - NFR-C-xxx: Compliance (UK GDPR, DPA 2018, Equality Act 2010)
    - NFR-E-xxx: Equity/Fairness (bias testing, protected characteristics)
  - Integration Requirements (INT-001+): DWP systems integration
  - Data Requirements (DR-001+): Personal data handling, retention
  - Success Criteria: Measurable KPIs

**Success Criteria**:
- ✅ Comprehensive requirements (50+ requirements)
- ✅ All requirement types covered
- ✅ Each requirement has acceptance criteria
- ✅ Priorities defined (MUST/SHOULD/MAY)
- ✅ UK Government compliance built in

---

## Phase 3: UK Government Compliance Assessments

### Test 3a: `/arckit.tcop`

**Command**:
```bash
/arckit.tcop Assess Technology Code of Practice compliance for DWP benefits eligibility chatbot in Private Beta phase
```

**Expected Output**:
- File: `projects/001-benefits-chatbot/tcop-assessment.md`
- Assessment of all 13 TCoP points:
  1. User Needs
  2. Accessibility (WCAG 2.2 AA)
  3. Open Source
  4. Open Standards
  5. Cloud First
  6. Security (Cyber Essentials)
  7. Privacy (UK GDPR, DPIA)
  8. Share/Reuse (GOV.UK services)
  9. Integration (API-first)
  10. Data
  11. Purchasing (Digital Marketplace)
  12. Sustainable
  13. Service Standard
- Overall score: X/130 points
- Compliance status for each point
- Gap analysis
- Remediation actions

**Success Criteria**:
- ✅ All 13 points assessed
- ✅ Score calculated
- ✅ Gaps identified
- ✅ Next actions provided

### Test 3b: `/arckit.ai-playbook`

**Command**:
```bash
/arckit.ai-playbook Assess AI Playbook compliance for DWP benefits eligibility chatbot using GPT-4 - this is a HIGH-RISK AI system affecting access to benefits
```

**Expected Output**:
- File: `projects/001-benefits-chatbot/ai-playbook-assessment.md`
- Risk Level: HIGH-RISK
- Assessment of 10 principles (each 0-10):
  1. Understanding AI
  2. Lawful/Ethical Use (DPIA, EqIA, Human Rights)
  3. Security (prompt injection, data poisoning)
  4. Human Control (human-in-the-loop MANDATORY)
  5. Lifecycle Management
  6. Right Tool Selection
  7. Collaboration
  8. Commercial Partnership
  9. Skills/Expertise
  10. Organizational Alignment
- Assessment of 6 ethical themes (each 0-10):
  1. Safety/Security/Robustness
  2. Transparency/Explainability (ATRS MANDATORY)
  3. Fairness/Bias/Discrimination
  4. Accountability/Responsibility
  5. Contestability/Redress
  6. Societal Wellbeing
- Overall score: X/160 points
- Go/No-Go decision
- Mandatory documentation checklist (ATRS, DPIA, EqIA, Human Rights, Bias Audit)

**Success Criteria**:
- ✅ HIGH-RISK determined correctly
- ✅ All 10 principles + 6 themes assessed
- ✅ Blocking issues flagged (e.g., missing DPIA)
- ✅ Human-in-the-loop requirement flagged
- ✅ ATRS publication requirement flagged

### Test 3c: `/arckit.atrs`

**Command**:
```bash
/arckit.atrs Generate ATRS record for DWP benefits eligibility chatbot using GPT-4, in Private Beta phase, processing citizen questions about benefits eligibility
```

**Expected Output**:
- File: `projects/001-benefits-chatbot/atrs-record.md`
- **Tier 1 - Public Summary**:
  - Name, description, contact (plain English)
  - Organization: DWP
  - Function: Benefits and welfare
  - Phase: Private Beta
  - Region: England and Wales
- **Tier 2 - Detailed Information**:
  - Section 1: Owner (SRO, team, external suppliers)
  - Section 2: Description (GPT-4, generative AI, rationale)
  - Section 3: Decision-Making (human-in-the-loop, contestability)
  - Section 4: Data (personal data, UK data residency, security)
  - Section 5: Impact Assessments (DPIA, EqIA, Human Rights)
  - Section 6: Fairness/Bias (bias testing, protected characteristics)
  - Section 7: Technical (model performance, explainability)
  - Section 8: Testing (security, prompt injection testing)
  - Section 9: Transparency (GOV.UK publication)
  - Section 10: Governance (oversight board, incident management)
  - Section 11: Compliance (UK GDPR, DPA 2018, Equality Act)
  - Section 12: Performance (KPIs, user feedback)
  - Section 13: Review schedule
- Publication checklist at end

**Success Criteria**:
- ✅ Tier 1 clear and accessible
- ✅ Tier 2 comprehensive and technical
- ✅ All mandatory sections completed
- ✅ Publication checklist provided
- ✅ Ready for GOV.UK repository publication

---

## Phase 4: Vendor Procurement (Optional - can test if desired)

### Test 4a: `/arckit.sow`

**Command**:
```bash
/arckit.sow Generate Statement of Work for vendor RFP to build the benefits eligibility chatbot, 9-month timeline, £1.5M budget, procurement via G-Cloud framework
```

**Expected Output**:
- File: `projects/001-benefits-chatbot/sow.md`
- Sections:
  - Executive Summary
  - Scope of Work
  - Technical Requirements (from requirements.md)
  - Deliverables
  - Timeline (9 months)
  - Budget (£1.5M)
  - Vendor Qualifications
  - Evaluation Criteria
  - Contract Terms
  - Acceptance Criteria

**Success Criteria**:
- ✅ All requirements from requirements.md included
- ✅ UK Government specific (G-Cloud, Security Clearance, IR35)
- ✅ Measurable acceptance criteria
- ✅ Ready for Digital Marketplace RFP

### Test 4b: `/arckit.evaluate`

**Command**:
```bash
/arckit.evaluate Create evaluation framework for benefits chatbot vendors
```

**Expected Output**:
- File: `projects/001-benefits-chatbot/evaluation-criteria.md`
- Technical evaluation (100 points):
  - AI/ML expertise
  - UK Government experience
  - Security capabilities
  - Accessibility expertise
  - Integration capabilities
- Cost evaluation methodology
- Reference check templates
- Scoring matrix

**Success Criteria**:
- ✅ Fair and unbiased scoring
- ✅ All critical requirements weighted
- ✅ Decision matrix provided

---

## Phase 5: Quality Analysis

### Test: `/arckit.analyze`

**Command**:
```bash
/arckit.analyze
```

**Expected Output**:
- **Console output** (no file written - read-only analysis)
- Comprehensive analysis report:
  - **Executive Summary**:
    - Overall governance health score (A-F)
    - Total findings by severity
    - Recommendation (PROCEED / RESOLVE ISSUES / REWORK)
  - **Findings Table**:
    - Requirements quality issues
    - Principles alignment issues
    - Traceability gaps
    - UK Gov compliance issues
  - **Coverage Matrices**:
    - Requirements coverage: X%
    - Principles compliance: X%
    - Traceability: X%
  - **UK Gov Compliance Dashboard**:
    - TCoP score: X/130
    - AI Playbook score: X/160
    - ATRS completeness: X%
  - **Metrics Dashboard**:
    - Quality score
    - Alignment score
    - Traceability score
    - Compliance score
  - **Next Steps**:
    - Critical actions
    - Suggested commands
    - Re-run guidance

**Expected Findings** (examples):
- ✅ HIGH-RISK AI system detected
- ⚠️ DPIA not yet completed (BLOCKING for high-risk AI)
- ⚠️ Human-in-the-loop not fully specified in requirements
- ⚠️ Bias testing methodology not documented
- ✅ Requirements comprehensive (50+ requirements)
- ✅ TCoP compliance good (Cloud-First, Accessibility, Security)
- ⚠️ ATRS not yet published on GOV.UK (required before live)

**Success Criteria**:
- ✅ Analysis runs without errors
- ✅ Detects UK Gov compliance issues
- ✅ Identifies HIGH-RISK AI requirements
- ✅ Provides actionable recommendations
- ✅ Calculates governance health score
- ✅ No files modified (read-only)

---

## Phase 6: Traceability

### Test: `/arckit.traceability`

**Command**:
```bash
/arckit.traceability Generate traceability matrix from requirements through design to tests
```

**Expected Output**:
- File: `projects/001-benefits-chatbot/traceability-matrix.md`
- Requirements → Design → Tests mapping
- Coverage statistics
- Gaps identified
- Orphan detection

**Success Criteria**:
- ✅ All requirements mapped
- ✅ Coverage percentage calculated
- ✅ Gaps highlighted
- ✅ Go/no-go recommendation

---

## Expected Test Results Summary

### Installation Verification
- ✅ 11 commands installed
- ✅ 16 templates installed
- ✅ Project structure correct
- ✅ Git repository initialized

### Command Functionality
- ✅ `/arckit.principles` - Creates architecture principles
- ✅ `/arckit.requirements` - Creates comprehensive requirements (50+ reqs)
- ✅ `/arckit.tcop` - Assesses all 13 TCoP points
- ✅ `/arckit.ai-playbook` - Assesses 10 principles + 6 themes for AI
- ✅ `/arckit.atrs` - Generates complete ATRS record (Tier 1 + Tier 2)
- ✅ `/arckit.sow` - Generates vendor RFP
- ✅ `/arckit.evaluate` - Creates evaluation framework
- ✅ `/arckit.analyze` - Performs comprehensive governance analysis
- ✅ `/arckit.traceability` - Generates traceability matrix

### UK Government Features
- ✅ TCoP: All 13 points assessed with scoring
- ✅ AI Playbook: Risk-based assessment (High/Medium/Low)
- ✅ ATRS: Two-tier public disclosure template
- ✅ Digital Marketplace: G-Cloud procurement support
- ✅ GOV.UK services: Integration guidance (Pay, Notify, Design System)
- ✅ Compliance: GDPR, Equality Act, DPA 2018, WCAG 2.2 AA

### Quality Assurance
- ✅ Analyze command detects issues before implementation
- ✅ Governance health scoring (A-F grades)
- ✅ Actionable recommendations provided
- ✅ Read-only analysis (no files modified)

---

## Test Execution

To run the full test:

1. **Start in test repository**:
   ```bash
   cd /tmp/arckit-test-project
   claude  # or your AI assistant
   ```

2. **Run commands in sequence**:
   ```bash
   # Phase 1: Principles
   /arckit.principles Create architecture principles for UK Government DWP...

   # Phase 2: Requirements
   /arckit.requirements Build a benefits eligibility chatbot for DWP...

   # Phase 3: UK Gov Compliance
   /arckit.tcop Assess TCoP compliance for DWP benefits chatbot in Private Beta
   /arckit.ai-playbook Assess AI Playbook compliance for HIGH-RISK chatbot
   /arckit.atrs Generate ATRS record for DWP benefits chatbot

   # Phase 4: Vendor Procurement (optional)
   /arckit.sow Generate SOW for vendor RFP, 9-month, £1.5M, G-Cloud
   /arckit.evaluate Create evaluation framework for vendors

   # Phase 5: Quality Analysis
   /arckit.analyze

   # Phase 6: Traceability
   /arckit.traceability Generate traceability matrix
   ```

3. **Verify outputs**:
   ```bash
   # Check all files created
   tree projects/001-benefits-chatbot/

   # Check file sizes (should be substantial)
   wc -l projects/001-benefits-chatbot/*.md
   ```

---

## Success Metrics

**Overall Test Pass Criteria**:
- ✅ All 11 commands execute without errors
- ✅ All expected files created
- ✅ UK Government features work correctly (TCoP, AI Playbook, ATRS)
- ✅ Analyze command detects real issues
- ✅ Output quality is high (comprehensive, actionable, realistic)
- ✅ Ready for real-world UK Government project use

**Target Governance Health Score** (from `/arckit.analyze`):
- **B grade (80-89%)** or higher for comprehensive test project
- Critical issues flagged and documented
- Remediation guidance provided

---

## Known Expected Issues

The analyze command **should** detect these issues (by design):

1. **DPIA not completed** - CRITICAL for HIGH-RISK AI (blocking)
2. **Human-in-the-loop not fully documented** - HIGH (required for high-risk)
3. **Bias testing methodology incomplete** - HIGH (fairness requirement)
4. **ATRS not published to GOV.UK** - MEDIUM (required before live)
5. **No actual HLD/DLD yet** - MEDIUM (design phase not started)

These are **expected findings** that demonstrate the analyze command is working correctly by identifying real gaps in a test project.

---

## Test Repository Location

**Path**: `/tmp/arckit-test-project`

**Contents**:
```
/tmp/arckit-test-project/
├── .arckit/
│   ├── memory/
│   │   └── architecture-principles.md (after /arckit.principles)
│   ├── scripts/
│   └── templates/ (16 templates)
├── .claude/
│   └── commands/ (11 commands)
├── projects/
│   └── 001-benefits-chatbot/ (after /arckit.requirements)
│       ├── requirements.md
│       ├── sow.md (after /arckit.sow)
│       ├── evaluation-criteria.md (after /arckit.evaluate)
│       ├── tcop-assessment.md (after /arckit.tcop)
│       ├── ai-playbook-assessment.md (after /arckit.ai-playbook)
│       ├── atrs-record.md (after /arckit.atrs)
│       └── traceability-matrix.md (after /arckit.traceability)
└── README.md
```

**Ready for testing!** 🚀
