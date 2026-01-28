# Vendor Evaluation Criteria: Windows 10 to Windows 11 Migration using Microsoft InTune

**Document Type**: Vendor Evaluation Framework
**RFP ID**: RFP-WIN11-001
**Project ID**: 001
**Version**: 3.0
**Date**: 2025-10-28
**Evaluation Lead**: [NAME]
**Evaluation Committee**: [LIST_MEMBERS]
**Last Updated**: 2025-10-28 (CRITICAL CORRECTION: Removed MOD CAAT requirements - updated for organizational security governance)

---

## ⚠️ CRITICAL CORRECTION NOTICE - EVALUATION CRITERIA SUPERSEDED

**This evaluation criteria document has been CORRECTED to reflect that MOD Secure by Design (SbD) CAAT registration is NOT REQUIRED for this project.**

**Previous Version (v2.0 - 2025-10-21)**: INCORRECT - Assumed MOD CAAT registration and MOD SbD continuous assurance expertise were mandatory vendor qualifications.

**Corrected Version (v3.0 - 2025-10-28)**: This project is delivering **changes to an EXISTING accredited in-service system** (Windows 10 enterprise environment), NOT a NEW operational capability. Therefore:

**VENDOR REQUIREMENTS REMOVED (NOT APPLICABLE):**
- ❌ **MQ-11 (v2.0)**: MOD CAAT/DTSL/RMADS/ISN 2023/10 experience - NOT REQUIRED
- ❌ **Subcriterion 1.3 (v2.0)**: MOD CAAT Continuous Assurance Approach (8 points) - REMOVED
- ❌ **Subcriterion 3.2 (v2.0)**: MOD Security Roles (DTSL, Second Line, PSyO) (7 points) - REMOVED

**UPDATED TO ORGANIZATIONAL SECURITY GOVERNANCE:**
- ✅ **MQ-11 (v3.0)**: Organizational CAB/Security Impact Assessment/Security Architecture Review experience
- ✅ **Subcriterion 1.3 (v3.0)**: Organizational Security Governance Approach (8 points)
- ✅ **Subcriterion 3.2 (v3.0)**: Organizational Security Team Roles (7 points)

**Result**: Vendors NO LONGER need MOD CAAT/DTSL/RMADS experience. Focus on **organizational security governance** (ISO 27001, NIST CSF, NCSC, CAB processes, Security Impact Assessments).

---

## 1. Evaluation Overview

### 1.1 Purpose

This document defines the criteria, scoring methodology, and process for evaluating vendor proposals for the Windows 10 to Windows 11 migration project. The goal is to select the vendor that provides the best value considering technical capability, experience, cost, and ability to deliver a mission-critical transformation affecting [NUMBER] devices and [NUMBER] users across the organization.

### 1.2 Evaluation Principles

- **Objective**: Criteria are measurable and consistently applied across all vendors
- **Transparent**: Vendors understand evaluation criteria from RFP Section 8
- **Fair**: All vendors evaluated against identical criteria with no preferential treatment
- **Documented**: Scores and rationale captured for auditability and compliance
- **Value-Based**: Best value (70% technical, 30% cost), not necessarily lowest price
- **Risk-Aware**: Vendor capability to deliver complex migration without disrupting business operations

### 1.3 Evaluation Team

| Name | Role | Department | Evaluation Focus | Voting |
|------|------|------------|------------------|--------|
| [NAME] | Evaluation Lead | Procurement | Process orchestration, final scoring compilation | Yes |
| [NAME] | Technical Evaluator #1 | Enterprise Architecture | Architecture principles compliance, InTune design quality | Yes |
| [NAME] | Technical Evaluator #2 | Security | Zero Trust design, Defender for Endpoint, compliance | Yes |
| [NAME] | Technical Evaluator #3 | IT Operations | Migration methodology, wave planning, operational feasibility | Yes |
| [NAME] | Business Evaluator #1 | IT Operations (Project Owner) | Requirements understanding, risk management, team quality | Yes |
| [NAME] | Business Evaluator #2 | Finance | Cost evaluation, budget alignment, value for money | Yes |
| [NAME] | Observer (non-voting) | Legal | Contract terms review, compliance verification | No |
| [NAME] | Observer (non-voting) | Change Management | User experience, training approach, communication plan quality | No |

### 1.4 Conflict of Interest

All voting evaluators must disclose any conflicts of interest with vendors by completing Conflict of Interest Form (Appendix D):
- [ ] Personal relationships with vendor employees or executives
- [ ] Financial interests in vendor companies (stock ownership, investments)
- [ ] Prior employment with vendor (within 2 years)
- [ ] Concurrent consulting arrangements or side employment
- [ ] Family members employed by vendor
- [ ] Gifts or entertainment received from vendor >$50 in past 12 months

**Evaluators with conflicts must recuse themselves from evaluation of that specific vendor.**

---

## 2. Evaluation Process

### 2.1 Process Flow

```
1. Proposals Received (Deadline: [DATE])
   ↓
2. Mandatory Qualifications Check (Pass/Fail) (2 days)
   ↓ (Qualified vendors only proceed)
3. Individual Technical Scoring (Blind to Cost) (1 week)
   ↓
4. Consensus Technical Scoring Meeting (1 day)
   ↓
5. Shortlist Top 3-5 Vendors (1 day)
   ↓
6. Cost Proposals Opened (Shortlisted only) (1 day)
   ↓
7. Cost Scoring (2 days)
   ↓
8. Combined Technical + Cost Scoring (1 day)
   ↓
9. Vendor Presentations & Q&A (1 week)
   ↓
10. Reference Checks (Parallel with presentations) (1 week)
   ↓
11. Final Scoring Adjustment & Selection (2 days)
   ↓
12. Selection Approval & Notification (1 day)
   ↓
13. Contract Negotiation & Award (2-3 weeks)
```

### 2.2 Timeline

| Phase | Duration | Deadline | Responsible |
|-------|----------|----------|-------------|
| **Proposals Due** | - | [DATE] | Vendors |
| **Mandatory Qualifications Check** | 2 business days | [DATE + 2 days] | Procurement + IT Ops |
| **Disqualification Notification** | Same day | [DATE + 2 days] | Procurement |
| **Individual Technical Scoring** | 1 week | [DATE + 1 week] | All voting evaluators |
| **Consensus Technical Scoring Meeting** | 4 hours | [DATE + 8 days] | Evaluation committee |
| **Shortlist Decision** | Same day | [DATE + 8 days] | Evaluation lead |
| **Shortlist Notification to Vendors** | Next day | [DATE + 9 days] | Procurement |
| **Cost Proposals Opened** | Same day | [DATE + 9 days] | Finance |
| **Cost Scoring** | 2 business days | [DATE + 11 days] | Finance + Evaluation lead |
| **Vendor Presentations** | 1 week | [DATE + 9 to 16 days] | Shortlisted vendors |
| **Reference Checks** | 1 week (parallel) | [DATE + 16 days] | Assigned evaluators |
| **Final Scoring & Recommendation** | 2 business days | [DATE + 18 days] | Evaluation committee |
| **Executive Approval** | 1 business day | [DATE + 19 days] | CIO/CTO |
| **Award Notification** | Same day | [DATE + 19 days] | Procurement |
| **Contract Negotiation Begins** | Next day | [DATE + 20 days] | Procurement + Legal |

---

## 3. Mandatory Qualifications (Pass/Fail)

Before scoring, vendors must meet ALL mandatory qualifications (MQ-1 through **MQ-11** from SOW v4.0 Section 6.1). **Failure on any item results in automatic disqualification.**

**CRITICAL UPDATE (v3.0)**: MQ-11 completely rewritten to focus on organizational security governance (NOT MOD CAAT/DTSL).

### 3.1 Mandatory Qualification Checklist

| ID | Qualification | Verification Evidence Required | Pass/Fail | Notes |
|----|---------------|-------------------------------|-----------|-------|
| **MQ-1** | **Microsoft Gold/Solutions Partner** with Modern Work or Security competency | Microsoft Partner Network certificate, partner directory listing | [ ] Pass [ ] Fail | |
| **MQ-2** | **3+ years InTune/Autopilot experience** in enterprise environments (1000+ devices) | Case studies, project references with timelines | [ ] Pass [ ] Fail | |
| **MQ-3** | **3+ completed Windows 11 migrations** in past 2 years (1000+ devices each) | Project summaries with completion dates, client names | [ ] Pass [ ] Fail | |
| **MQ-4** | **Configuration Manager co-management experience** | Case study demonstrating ConfigMgr to InTune transition | [ ] Pass [ ] Fail | |
| **MQ-5** | **3+ verifiable references** from Windows 11 projects (1000+ devices) | Reference contact info (name, title, email, phone) provided | [ ] Pass [ ] Fail | |
| **MQ-6** | **Team certifications**: Endpoint Admin (2+), Security/Identity (1+), Azure Admin (1+), CISSP/CEH (1+) | Certification IDs provided, Microsoft Learn profiles linked | [ ] Pass [ ] Fail | |
| **MQ-7** | **Financial stability**: 5+ years in business, $10M+ revenue, audited financials or D&B rating | Financial statements, D&B report, or public filings | [ ] Pass [ ] Fail | |
| **MQ-8** | **Insurance coverage**: Professional liability ($5M), Cyber liability ($2M), General liability ($2M) | Certificates of insurance with coverage amounts and expiration dates | [ ] Pass [ ] Fail | |
| **MQ-9** | **SOC 2 Type II or ISO 27001** certification | SOC 2 report or ISO 27001 certificate (not expired) | [ ] Pass [ ] Fail | |
| **MQ-10** | **Background checks** policy for staff accessing client systems | Background check policy document, sample background check certificate | [ ] Pass [ ] Fail | |
| **MQ-11** | **Organizational Security Governance Experience** (UPDATED v3.0 - CRITICAL)<br><br>Vendor MUST demonstrate ALL of the following:<br>• **2+ enterprise projects** with organizational CAB approval processes for changes to existing accredited systems (past 3 years)<br>• **Organizational Security Impact Assessment experience** using templates similar to ISO 27001, NIST CSF, or NCSC frameworks<br>• **Security Architecture Review coordination** with organizational security teams<br>• **Reputable penetration testing vendor procurement** (CREST-certified or equivalent preferred)<br>• **Supply Chain Security** including SBOM creation (SPDX/CycloneDX format)<br>• **At least 1 Security Architect** with ISO 27001/NIST CSF/NCSC experience supporting CAB approval processes<br>• **Project Security Lead** candidate proposed (organizational security coordination role) | Evidence required:<br>• 2+ case studies from enterprise projects with CAB approval processes (public sector or large enterprises preferred)<br>• Security Impact Assessment sample document OR Security Architect CV demonstrating experience<br>• Security Architecture Review coordination evidence (emails, approval documents, architecture diagrams)<br>• Penetration testing vendor procurement/coordination evidence<br>• SBOM samples (SPDX/CycloneDX format)<br>• Security Architect CV with ISO 27001/NIST CSF/NCSC certifications or demonstrable project experience<br>• Project Security Lead CV with organizational security governance experience | [ ] Pass [ ] Fail | **v3.0 CLARIFICATION**: Vendors NO LONGER need MOD CAAT/DTSL/RMADS/ISN 2023/10 experience. Focus is on **organizational security governance** (CAB processes, Security Impact Assessments, Security Architecture Reviews). Vendors with UK Government (non-MOD) or large enterprise security governance experience are qualified. |

### 3.2 Disqualification Procedure

1. **Evaluator identifies failure**: Any evaluator can flag a potential mandatory qualification failure
2. **Evaluation lead confirms**: Procurement and IT Operations jointly verify the failure against RFP requirements
3. **Clarification opportunity (48 hours)**: Vendor notified of specific failure, given 48 hours to provide clarifying evidence if failure was due to misunderstanding or missing documentation
4. **Final determination**: Evaluation lead makes final pass/fail decision after reviewing any clarifications
5. **Disqualification notification**: Vendor notified immediately with specific reason for disqualification
6. **No appeal**: Mandatory qualification failures are objective (pass/fail), no appeals accepted

---

## 4. Technical Evaluation Criteria (100 Points)

Technical proposals are scored **blind to cost** to ensure unbiased evaluation. Cost proposals remain sealed until after technical scoring and shortlisting.

### 4.1 Criteria Summary

| Category | Weight | Max Points | Primary Evaluator(s) |
|----------|--------|------------|---------------------|
| **1. Technical Solution and Approach** | 35% | 35 | Technical Evaluators (Architecture, Security) |
| **2. Project Management and Delivery** | 20% | 20 | IT Operations, Project Owner |
| **3. Team Qualifications and Experience** | 25% | 25 | All Evaluators |
| **4. Relevant Experience and References** | 15% | 15 | Business Evaluators |
| **5. Understanding of Requirements** | 5% | 5 | All Evaluators |
| **TOTAL** | **100%** | **100** | |

---

## 4.2 Category 1: Technical Solution and Approach (35 points)

**Purpose**: Evaluate the proposed technical solution's quality, feasibility, architecture alignment, and ability to meet Windows 11 migration requirements.

### Subcriteria

| Subcriterion | Points | Evaluation Questions |
|--------------|--------|---------------------|
| **1.1 InTune Architecture Quality** | 8 | • Does the InTune architecture follow Microsoft best practices?<br>• Is the Azure AD join strategy appropriate?<br>• Are Autopilot profiles designed for all scenarios?<br>• Does the architecture align with Principles 1, 7, 8?<br>• Are C4 diagrams provided and clear? |
| **1.2 Security and Zero Trust Design** | 8 | • Does the security design implement Zero Trust elements?<br>• Is Microsoft Security Baseline properly applied?<br>• Are device compliance policies comprehensive?<br>• Does the design align with Principle 2? |
| **1.3 Organizational Security Governance Approach** (UPDATED v3.0) | 8 | • Does vendor demonstrate understanding of organizational CAB approval processes?<br>• Is 2-month security preparation timeline realistic (Security Impact Assessment Week 2, CAB submission Week 3, Security Architecture Review Month 2)?<br>• Does approach include Security Impact Assessment using organizational template?<br>• Does approach include Security Architecture Review coordination with organizational security team?<br>• Does approach include reputable penetration testing vendor procurement (CREST-certified preferred)?<br>• Does approach align with NFR-SEC-004, NFR-SEC-005, NFR-SEC-006 (organizational security governance)?<br>• Is Project Security Lead role clearly defined for CAB coordination? |
| **1.4 Migration Methodology** | 6 | • Is the phased rollout approach sound?<br>• Are wave sizes appropriate (500-1000)?<br>• Are pause/resume criteria defined?<br>• Is rollback capability described? |
| **1.5 Application Compatibility Testing** | 3 | • Is the test lab approach appropriate?<br>• Is testing methodology comprehensive?<br>• Is ARM64 testing included for Copilot+ PCs?<br>• Is remediation strategy clear? |
| **1.6 Data Protection Strategy** | 2 | • Is OneDrive KFM deployment well-designed?<br>• Are pre-migration checks included?<br>• Is 100% data preservation guarantee credible? |

### Scoring Rubric (General)

| Score Range | Description |
|-------------|-------------|
| **Excellent (90-100%)** | Exceeds expectations; innovative; deep expertise; minimal risks; follows all principles |
| **Good (75-89%)** | Meets expectations; sound approach; minor gaps; generally follows principles |
| **Adequate (60-74%)** | Meets most expectations; workable; some concerns; partial principle alignment |
| **Weak (40-59%)** | Minimum expectations; significant concerns; poor principle alignment |
| **Unacceptable (0-39%)** | Major flaws; unworkable approach; violates principles; high risk |

### Detailed Scoring: Subcriterion 1.3 - Organizational Security Governance (8 points)

**CRITICAL SUBCRITERION (v3.0)**: This evaluates vendor understanding of organizational security governance (CAB approval, Security Impact Assessments, Security Architecture Reviews) for changes to existing accredited systems.

| Score | Description | Indicators |
|-------|-------------|------------|
| **8 points (Excellent)** | Comprehensive understanding of organizational security governance with detailed 2-month implementation plan | • Explicitly proposes Security Impact Assessment using organizational template by Week 2<br>• CAB submission package documented (Week 3) with Security Impact Assessment, Threat Model, Security Architecture Review approval<br>• 2-month security preparation timeline accurate (Week 1: Project Security Lead + SRO, Week 2: Security Impact Assessment, Month 1: Threat Model, Month 2: Security Architecture Review + CAB approval)<br>• Security Architecture Review coordination with organizational security team proposed<br>• Penetration testing vendor procurement proposed (CREST-certified preferred) by Month 1<br>• Project Security Lead role clearly defined for CAB coordination and security governance<br>• References NFR-SEC-004, NFR-SEC-005, NFR-SEC-006 explicitly (v5.0 organizational governance) |
| **6 points (Good)** | Good organizational security governance understanding with minor gaps | • Proposes CAB approval but lacks detail on Security Impact Assessment process<br>• Security Architecture Review mentioned but coordination process not fully defined<br>• Timeline generally correct (2 months) but lacks granularity<br>• Project Security Lead role mentioned but responsibilities unclear |
| **4 points (Adequate)** | Basic organizational security governance awareness but significant gaps | • Mentions CAB approval but approach unclear<br>• Proposes some security activities but misses key elements (e.g., Security Impact Assessment template, Security Architecture Review coordination)<br>• Timeline inaccurate (e.g., 3-4 months instead of 2 months)<br>• No clear Project Security Lead role definition |
| **2 points (Weak)** | Minimal organizational security governance understanding | • Generic "security review" proposed without CAB specificity<br>• No Security Impact Assessment or Security Architecture Review process<br>• Timeline assumes 6+ months for generic "security approvals"<br>• No security coordination roles defined<br>• **v3.0 NOTE**: Vendors proposing deprecated MOD CAAT/DTSL/RMADS processes score 2/8 (incorrect framework) |
| **0 points (Unacceptable)** | No organizational security governance approach OR fundamental misunderstanding | • No CAB approval process documented<br>• No security governance approach described<br>• Completely incorrect understanding of organizational security requirements |

---

## 4.3 Category 2: Project Management and Delivery (20 points)

### Subcriteria

| Subcriterion | Points | Evaluation Questions |
|--------------|--------|---------------------|
| **2.1 Project Timeline & Phasing** | 6 | • Is 24-month timeline realistic for 95% completion by Sep 2025?<br>• Are phases logically sequenced?<br>• Are milestones aligned with SOW?<br>• Is 2-month security prep timeline (NOT 3 months) accurate?<br>• Is there buffer for risks? |
| **2.2 Wave Planning Strategy** | 5 | • Is the strategy for 20 waves well-defined?<br>• Are waves composed to spread risk?<br>• Are go/no-go criteria clear? |
| **2.3 Risk Management** | 4 | • Are top 10 risks identified proactively?<br>• Are mitigation strategies credible?<br>• Does vendor show Windows 11-specific awareness? |
| **2.4 Change Management & Communication** | 3 | • Is communication plan comprehensive?<br>• Are training materials appropriate?<br>• Is helpdesk enablement thorough? |
| **2.5 Quality Assurance & Testing** | 2 | • Is QA strategy comprehensive?<br>• Are acceptance criteria defined?<br>• Is regression testing planned? |

---

## 4.4 Category 3: Team Qualifications and Experience (25 points)

### Subcriteria

| Subcriterion | Points | Evaluation Questions |
|--------------|--------|---------------------|
| **3.1 Key Personnel Qualifications** | 10 | • Do key personnel have strong Windows 11/InTune experience?<br>• Are Microsoft certifications current?<br>• Is team composition appropriate?<br>• Are Solution Architect and Technical Lead dedicated 50%+? |
| **3.2 Organizational Security Team Roles** (UPDATED v3.0) | 7 | • Is **Project Security Lead** role filled by qualified individual with organizational security governance experience (CAB coordination, Security Impact Assessments)?<br>• Does proposed Project Security Lead have experience with Security Architecture Reviews?<br>• Is **Security Architect** experienced with ISO 27001/NIST CSF/NCSC frameworks?<br>• Does Security Architect have CAB approval process experience (public sector or large enterprise preferred)?<br>• Are penetration testing coordination capabilities demonstrated?<br>• Is Supply Chain Security specialist proposed (optional) for SBOM creation?<br>• **v3.0 NOTE**: Vendors proposing MOD-specific roles (DTSL, PSyO, Second Line) score lower (2-4/7) as these indicate misunderstanding of organizational security governance requirements |
| **3.3 Team Size & Allocation** | 4 | • Is team size adequate for 24-month project?<br>• Are key personnel not spread thin?<br>• Are backup resources identified?<br>• Is on-site presence committed (Security Architect + Project Security Lead for CAB meetings)? |
| **3.4 Domain Expertise** | 3 | • Does team have Windows 11 migration expertise?<br>• Have they solved similar challenges?<br>• Is InTune expertise deep? |
| **3.5 Onshore/UK-Based Model** | 1 | • Is the mix appropriate (min 70% onshore)?<br>• Are security roles UK-based for in-person CAB attendance?<br>• Is time zone coverage adequate? |

---

## 4.5 Category 4: Relevant Experience and References (15 points)

### Subcriteria

| Subcriterion | Points | Evaluation Questions |
|--------------|--------|---------------------|
| **4.1 Reference Project Relevance** | 10 | • Are reference projects similar (1000+ devices, InTune, Win11)?<br>• Do case studies demonstrate organizational security governance (CAB approvals, Security Impact Assessments preferred)?<br>• Were projects successful?<br>• Are references contactable? |
| **4.2 Industry Experience** | 3 | • Does vendor have industry experience?<br>• Do they understand regulations?<br>• Can they provide relevant insights? |
| **4.3 Innovation & Microsoft Partnership** | 2 | • Is vendor recognized as Microsoft leader?<br>• Do they demonstrate innovation?<br>• Are they forward-thinking? |

---

## 4.6 Category 5: Understanding of Requirements (5 points)

### Subcriteria

| Subcriterion | Points | Evaluation Questions |
|--------------|--------|---------------------|
| **5.1 Problem Understanding** | 2 | • Does vendor understand the business problem?<br>• Do they articulate WHY this is critical?<br>• Do they show user empathy? |
| **5.2 Requirements Comprehension** | 2 | • Are all BR and FR requirements addressed?<br>• Are 18 architecture principles referenced?<br>• Are requirements interpreted correctly (v5.0 organizational security governance)?<br>• **v3.0**: Does vendor demonstrate understanding that CAAT/DTSL are NOT REQUIRED? |
| **5.3 Thoughtful Questions** | 1 | • Did vendor ask insightful questions?<br>• Do they identify gaps or ambiguities?<br>• Do they proactively identify risks? |

---

## 5. Cost Evaluation (Shortlisted Vendors Only)

### 5.1 Cost Scoring Methodology

**Method**: **Lowest Price Best Value** (proportional scoring)

- Lowest cost proposal receives **100 cost points**
- **Formula**: `Cost Score = (Lowest Price / Vendor Price) × 100`

**Example**:
- Vendor A: $1,400,000 → Cost Score = **100 points**
- Vendor B: $1,700,000 → Cost Score = **82.4 points**
- Vendor C: $1,900,000 → Cost Score = **73.7 points**

**v3.0 NOTE**: Vendor costs should be **£20K-£30K (approximately $25K-$40K) lower** than previously estimated due to removal of MOD CAAT overhead (no CAAT registration fees, no DTSL-specific training, no ISN 2023/10 continuous attestation management).

### 5.2 Cost Reasonableness Check

Finance evaluator verifies cost reasonableness before scoring:

**Red Flags** (may reject as non-credible):
- Unrealistically low bids (<70% of next-lowest)
- Incomplete cost breakdown
- Hidden costs ("TBD" or "to be negotiated")
- Budget mismatch (exceeds RFP range)

---

## 6. Combined Scoring (Final Score)

### 6.1 Final Scoring Formula

**Final Score = (Technical Score × 0.70) + (Cost Score × 0.30)**

**Weights**: Technical 70%, Cost 30%

**Rationale**: Migration failure costs far more than vendor price delta. Best value = high-quality delivery at reasonable cost.

### 6.2 Example Combined Scoring

| Vendor | Technical (0-100) | Technical Weighted (70%) | Cost Score (0-100) | Cost Weighted (30%) | **Final Score** | Rank |
|--------|-------------------|--------------------------|--------------------|--------------------|-----------------|------|
| Vendor A | 78 | 54.6 | 100 | 30.0 | **84.6** | 2 |
| Vendor B | 88 | 61.6 | 83.3 | 25.0 | **86.6** | 1 |
| Vendor C | 72 | 50.4 | 75.0 | 22.5 | **72.9** | 3 |

---

## 7. Vendor Presentations (Shortlisted Only)

**Duration**: 2 hours per vendor (60 min presentation + 60 min Q&A)

**Attendees**: Evaluation committee + CIO/CTO + CISO + stakeholders

**Presentation Content**:
1. Company overview (5 min)
2. Team introductions (10 min) - **Focus on Project Security Lead and Security Architect CAB experience**
3. Technical solution deep-dive (30 min) - InTune architecture, security, migration, **CAB approval strategy**
4. Project management approach (10 min) - **2-month security prep timeline emphasis**
5. Vendor questions (5 min)

**Q&A Topics**:
- Technical details (InTune policies, Autopilot, security)
- **Organizational security governance approach** (CAB coordination, Security Impact Assessment, Security Architecture Review)
- Project management (wave planning, risk management)
- Team capabilities and experience (**Project Security Lead CAB coordination experience**)
- Scenario-based questions (failure recovery, escalations, CAB rejection scenarios)

**Impact**: Presentations may adjust technical scores based on clarifications, technical depth, or concerns raised.

---

## 8. Reference Checks

### 8.1 Process

- Contact all 3+ references per vendor
- Use standardized reference check template (10 questions + 2 additional questions on security governance)
- Document in Reference Check Summary form

### 8.2 Key Questions

1. Project scope and success
2. On-time and on-budget delivery
3. Quality of deliverables
4. Team effectiveness and communication
5. Issue resolution
6. Technical expertise
7. Post-go-live support
8. User satisfaction
9. Would you hire again?
10. Anything else we should know?
11. **[NEW v3.0]** Did the project require organizational CAB approval or security governance processes? How effective was the vendor at navigating those?
12. **[NEW v3.0]** Did the vendor have a dedicated security coordinator/lead? How effective were they at liaising with organizational security teams?

### 8.3 Impact on Scoring

References do **NOT add points** but may:
- **Disqualify**: Multiple negative references
- **Lower scores 10-20%**: Concerning patterns (always late, over budget, weak team, **poor CAB coordination**)
- **No adjustment**: Positive or mixed references with no patterns

---

## 9. Final Selection Decision

### 9.1 Decision Factors

**Quantitative (Primary)**:
- Highest final combined score (70% technical + 30% cost)
- Minimum 70/100 technical score threshold
- Cost within budget range

**Qualitative (Secondary)**:
- Cultural fit and communication
- Confidence in delivery (references, case studies)
- Strategic partnership potential
- Risk tolerance
- **v3.0**: Organizational security governance capability (CAB approval track record)

### 9.2 Selection Approval

**Decision Authority**: CIO/CTO

**Required Approvals**:
- Evaluation Lead
- Technical Evaluator #1 (Enterprise Architect)
- IT Operations Director (Project Owner)
- Finance (Budget Owner)
- Executive Sponsor (CIO/CTO)

---

## 10. Vendor Notification

### 10.1 Award Notification

**Timing**: Within 1 business hour of approval

**Method**: Phone call + formal email

**Content**: Congratulations, contract value, next steps (contract negotiation)

### 10.2 Non-Selected Vendors

**Shortlisted but not selected**:
- Email notification within 1 business day
- Offer optional debrief (vendor must request)

**Not shortlisted**:
- Email notification within 2 business days
- No debrief offered

### 10.3 Debrief Guidelines

**Share**:
- Vendor's strengths and improvement areas
- Technical score range (e.g., 70-79)
- General criteria and weighting

**Do NOT share**:
- Other vendors' names, scores, or costs
- Selected vendor identity or cost
- Exact scores or evaluator identities

---

## 11. Documentation and Records

### 11.1 Required Documentation (Retain 7 years)

- RFP/SOW and evaluation criteria
- All vendor proposals (technical and cost)
- Mandatory qualifications check results
- Individual and consensus scoring sheets
- Presentation notes and Q&A transcripts
- Reference check notes
- Selection decision memo and approvals
- Vendor notifications
- Any appeals and decisions

### 11.2 Storage

**Location**: Secure SharePoint site (restricted access)

**Folder Structure**:
- /RFP-Documents/
- /Vendor-Proposals/
- /Evaluation-Scoring/
- /Reference-Checks/
- /Selection-Decision/
- /Vendor-Notifications/
- /Appeals/

### 11.3 Confidentiality

- Evaluators sign NDA
- Proposals not shared outside committee
- Scores remain confidential
- Consult Legal for FOIA/public records requests

---

## 12. Appendices

### Appendix A: Individual Evaluator Scorecard

[Excel workbook for each evaluator with all subcriteria and scoring rubric]

### Appendix B: Consensus Scoring Worksheet

[Excel workbook for consensus meeting with individual scores, consensus scores, and discussion notes]

### Appendix C: Evaluation Committee Charter

**Purpose**: Select best-value vendor for Windows 11 migration

**Authority**: Committee makes recommendation; CIO/CTO approves

**Membership**: 6 voting members + 2 observers

**Responsibilities**: Review proposals, score objectively, attend meetings, maintain confidentiality, disclose conflicts

**Decision-Making**: Consensus preferred; majority vote if needed; Evaluation Lead tie-breaks

### Appendix D: Conflict of Interest Form

[Form for evaluators to disclose any conflicts with vendors]

**Disclosures**: Personal relationships, financial interests, prior employment, family, gifts >$50

**Recusal Decision**: No conflicts / Recuse from specific vendor / Can remain objective

---

**Document Control**

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-10-15 | Enterprise Architecture Team + Procurement | Initial version for Windows 11 migration vendor selection |
| 2.0 | 2025-10-21 | Enterprise Architecture Team | **INCORRECT**: Added MOD CAAT/DTSL requirements based on incorrect MOD SbD Assessment v2.0 |
| **3.0** | **2025-10-28** | **Enterprise Architecture Team** | **CRITICAL CORRECTION for SOW v4.0 and Requirements v5.0 alignment**:<br><br>**Section 3: Mandatory Qualifications**<br>• **REMOVED MQ-11 (v2.0)**: MOD CAAT/DTSL/RMADS/ISN 2023/10 expertise - NOT APPLICABLE<br>• **NEW MQ-11 (v3.0)**: Organizational security governance experience (CAB approval, Security Impact Assessments, Security Architecture Reviews, ISO 27001/NIST CSF/NCSC frameworks)<br>• Vendors NO LONGER need UK Gov/MOD security experience - Enterprise/public sector organizational security governance experience now qualifies<br><br>**Section 4.2: Technical Solution**<br>• **UPDATED Subcriterion 1.3** (8 points): Organizational Security Governance Approach (REPLACES "MOD CAAT Continuous Assurance")<br>• Focus on 2-month CAB approval process (Security Impact Assessment Week 2, CAB submission Week 3, Security Architecture Review Month 2, CAB approval Month 2-3)<br>• Project Security Lead role (REPLACES DTSL) for CAB coordination<br>• Vendors proposing deprecated MOD CAAT/DTSL processes score 2/8 (incorrect framework)<br><br>**Section 4.3: Project Timeline**<br>• **Subcriterion 2.1**: Updated to evaluate 2-month security prep timeline accuracy (NOT 3 months)<br><br>**Section 4.4: Team Qualifications**<br>• **UPDATED Subcriterion 3.2** (7 points): Organizational Security Team Roles (REPLACES "MOD Security Roles")<br>• Focus on Project Security Lead (organizational CAB coordinator), Security Architect (ISO 27001/NIST CSF/NCSC), penetration testing coordination<br>• Vendors proposing MOD-specific roles (DTSL, PSyO, Second Line) score lower (2-4/7) as indicator of requirements misunderstanding<br><br>**Section 4.6: Understanding of Requirements**<br>• **Subcriterion 5.2**: Added evaluation of whether vendor demonstrates understanding that CAAT/DTSL are NOT REQUIRED<br><br>**Section 5: Cost Evaluation**<br>• **Note**: Vendor costs should be £20K-£30K lower than v2.0 estimates due to removal of MOD CAAT overhead<br><br>**Section 7: Vendor Presentations**<br>• **Updated Q&A topics**: Focus on organizational CAB approval strategy, Project Security Lead CAB coordination experience, Security Architecture Review process<br><br>**Section 8: Reference Checks**<br>• **Added questions 11-12**: CAB approval coordination effectiveness, security coordinator/lead effectiveness<br><br>**Rationale**: Aligned with Requirements v5.0 (NFR-SEC-004/005/006 organizational security governance), SOW v4.0 (organizational CAB processes), MOD SbD Assessment v3.0 (CAAT NOT APPLICABLE), Risk Register v3.0. This Windows 11 migration is change to EXISTING accredited system (Windows 10), NOT new operational capability requiring MOD CAAT. Correct approach: Organizational CAB approval, Security Impact Assessment, Security Architecture Review. |

**Approvals**

| Role | Name | Signature | Date |
|------|------|-----------|------|
| **Evaluation Lead (Procurement)** | [NAME] | _________ | [DATE] |
| **Technical Evaluator #1 (Enterprise Architect)** | [NAME] | _________ | [DATE] |
| **IT Operations Director (Project Owner)** | [NAME] | _________ | [DATE] |
| **Finance (Budget Owner)** | [NAME] | _________ | [DATE] |
| **Legal (Compliance Review)** | [NAME] | _________ | [DATE] |
| **Executive Sponsor (CIO/CTO)** | [NAME] | _________ | [DATE] |

---

**END OF VENDOR EVALUATION CRITERIA DOCUMENT v3.0**
