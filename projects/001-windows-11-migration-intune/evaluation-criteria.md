# Vendor Evaluation Criteria: Windows 10 to Windows 11 Migration using Microsoft InTune

**Document Type**: Vendor Evaluation Framework
**RFP ID**: RFP-WIN11-001
**Project ID**: 001
**Version**: 2.0
**Date**: 2025-10-21
**Evaluation Lead**: [NAME]
**Evaluation Committee**: [LIST_MEMBERS]
**Last Updated**: 2025-10-21 (Updated for SOW v3.0 - CAAT continuous assurance framework, CRITICAL changes to MQ-11 and PQ-7 scoring)

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
   �
2. Mandatory Qualifications Check (Pass/Fail) (2 days)
   � (Qualified vendors only proceed)
3. Individual Technical Scoring (Blind to Cost) (1 week)
   �
4. Consensus Technical Scoring Meeting (1 day)
   �
5. Shortlist Top 3-5 Vendors (1 day)
   �
6. Cost Proposals Opened (Shortlisted only) (1 day)
   �
7. Cost Scoring (2 days)
   �
8. Combined Technical + Cost Scoring (1 day)
   �
9. Vendor Presentations & Q&A (1 week)
   �
10. Reference Checks (Parallel with presentations) (1 week)
   �
11. Final Scoring Adjustment & Selection (2 days)
   �
12. Selection Approval & Notification (1 day)
   �
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

Before scoring, vendors must meet ALL mandatory qualifications (MQ-1 through **MQ-11** from SOW v3.0 Section 6.1). **Failure on any item results in automatic disqualification.**

**CRITICAL UPDATE (v2.0)**: MQ-11 added based on SOW v3.0 - MOD Secure by Design continuous assurance expertise is now MANDATORY.

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
| **MQ-11** | **MOD Secure by Design Continuous Assurance Expertise** (NEW v2.0 - CRITICAL)<br><br>Vendor MUST demonstrate ALL of the following:<br>• **2+ UK Government/MOD projects** handling OFFICIAL/OFFICIAL-SENSITIVE data<br>• **CAAT (Cyber Activity and Assurance Tracker) self-assessment experience** - NOT legacy RMADS<br>• **Three Lines of Defence governance** implementation (First/Second/Third Line roles)<br>• **CREST or CHECK-approved penetration testing** coordination<br>• **ISN 2023/10 continuous supplier attestation** management (NOT one-time)<br>• **SBOM creation** and vulnerability tracking<br>• **At least 1 SC/DV cleared CLAS Consultant** on proposed team<br>• **Delivery Team Security Lead (DTSL)** role filled by qualified individual | Evidence required:<br>• 2+ case studies from UK Gov/MOD projects (OFFICIAL/OFFICIAL-SENSITIVE) with client references<br>• CAAT self-assessment completion screenshots OR MOD project completion certificates (post-Aug 2023)<br>• Team member CV demonstrating DTSL role on prior MOD project<br>• Penetration test coordination experience (CREST/CHECK vendor engagement)<br>• ISN 2023/10 continuous attestation process documentation<br>• SBOM samples (SPDX/CycloneDX format)<br>• SC/DV clearance certificates for at least 1 proposed team member | [ ] Pass [ ] Fail | **CRITICAL**: Vendors with only legacy RMADS experience (pre-August 2023) MUST also demonstrate understanding of CAAT framework via written attestation from DTSL candidate explaining CAAT vs RMADS differences. Vendors with NO UK Gov/MOD security experience will be automatically DISQUALIFIED. |

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
| **1.1 InTune Architecture Quality** | 8 | " Does the InTune architecture follow Microsoft best practices?<br>" Is the Azure AD join strategy appropriate?<br>" Are Autopilot profiles designed for all scenarios?<br>" Does the architecture align with Principles 1, 7, 8?<br>" Are C4 diagrams provided and clear? |
| **1.2 Security and Zero Trust Design** | 8 | " Does the security design implement Zero Trust elements?<br>" Is Microsoft Security Baseline properly applied?<br>" Are device compliance policies comprehensive?<br>" Does the design align with Principle 2? |
| **1.3 MOD Secure by Design Continuous Assurance Approach** (NEW v2.0) | 8 | " Does vendor demonstrate understanding of CAAT (NOT RMADS)?<br>" Is Three Lines of Defence governance model proposed (DTSL, Second Line, Third Line)?<br>" Is 3-month security preparation timeline (CAAT registration, BIA, threat model) accurate?<br>" Is continuous supplier attestation per ISN 2023/10 documented (Microsoft quarterly, hardware annually)?<br>" Does approach align with NFR-SEC-004, NFR-SEC-005, NFR-SEC-007?<br>" Are Security Governance Reviews (NOT IAA approval) proposed?<br>" Is continuous CAAT update schedule documented? |
| **1.4 Migration Methodology** | 6 | " Is the phased rollout approach sound?<br>" Are wave sizes appropriate (500-1000)?<br>" Are pause/resume criteria defined?<br>" Is rollback capability described? |
| **1.5 Application Compatibility Testing** | 3 | " Is the test lab approach appropriate?<br>" Is testing methodology comprehensive?<br>" Is ARM64 testing included for Copilot+ PCs?<br>" Is remediation strategy clear? |
| **1.6 Data Protection Strategy** | 2 | " Is OneDrive KFM deployment well-designed?<br>" Are pre-migration checks included?<br>" Is 100% data preservation guarantee credible? |

### Scoring Rubric (General)

| Score Range | Description |
|-------------|-------------|
| **Excellent (90-100%)** | Exceeds expectations; innovative; deep expertise; minimal risks; follows all principles |
| **Good (75-89%)** | Meets expectations; sound approach; minor gaps; generally follows principles |
| **Adequate (60-74%)** | Meets most expectations; workable; some concerns; partial principle alignment |
| **Weak (40-59%)** | Minimum expectations; significant concerns; poor principle alignment |
| **Unacceptable (0-39%)** | Major flaws; unworkable approach; violates principles; high risk |

### Detailed Scoring: Subcriterion 1.3 - MOD CAAT Continuous Assurance (8 points)

**CRITICAL SUBCRITERION**: This evaluates vendor understanding of modern MOD Secure by Design continuous assurance framework (post-August 2023).

| Score | Description | Indicators |
|-------|-------------|------------|
| **8 points (Excellent)** | Comprehensive understanding of CAAT continuous assurance framework with detailed implementation plan | • Explicitly proposes CAAT self-assessment (7 SbD Principles question sets) by Month 1<br>• Three Lines of Defence roles clearly defined (DTSL, Second Line, Third Line)<br>• 3-month security preparation timeline (Week 1: CAAT registration, Week 2: BIA, Month 1: self-assessment)<br>• Security Governance Reviews (Second Line) proposed instead of IAA approval<br>• Continuous supplier attestation schedule documented (Microsoft quarterly, hardware annually)<br>• Demonstrates understanding that CAAT ≠ RMADS<br>• References NFR-SEC-004, NFR-SEC-005, NFR-SEC-007 explicitly |
| **6 points (Good)** | Good CAAT understanding with minor gaps | • Proposes CAAT but lacks detail on self-assessment process<br>• Three Lines of Defence mentioned but roles not fully defined<br>• Timeline generally correct but lacks granularity<br>• Some confusion between CAAT and legacy RMADS terminology |
| **4 points (Adequate)** | Basic CAAT awareness but significant gaps | • Mentions CAAT but approach unclear<br>• Proposes some MOD security activities but misses key elements (e.g., BIA, Second Line)<br>• Timeline inaccurate (e.g., 6 months instead of 3 months)<br>• Conflates CAAT with RMADS processes |
| **2 points (Weak)** | Minimal CAAT understanding, proposes deprecated RMADS approach | • Proposes RMADS documentation instead of CAAT self-assessment<br>• References IAA approval instead of Security Governance Review<br>• Proposes one-time supplier attestation instead of continuous<br>• Uses legacy IAO/IAA/Accreditation Authority terminology<br>• Timeline assumes 6-month accreditation process |
| **0 points (Unacceptable)** | No MOD security approach OR fundamental misunderstanding | • No MOD Secure by Design approach documented<br>• Completely incorrect understanding of CAAT/continuous assurance<br>• Proposes non-compliant security approach |

---

## 4.3 Category 2: Project Management and Delivery (20 points)

### Subcriteria

| Subcriterion | Points | Evaluation Questions |
|--------------|--------|---------------------|
| **2.1 Project Timeline & Phasing** | 6 | " Is 24-month timeline realistic for 95% completion by Sep 2025?<br>" Are phases logically sequenced?<br>" Are milestones aligned with SOW?<br>" Is there buffer for risks? |
| **2.2 Wave Planning Strategy** | 5 | " Is the strategy for 20 waves well-defined?<br>" Are waves composed to spread risk?<br>" Are go/no-go criteria clear? |
| **2.3 Risk Management** | 4 | " Are top 10 risks identified proactively?<br>" Are mitigation strategies credible?<br>" Does vendor show Windows 11-specific awareness? |
| **2.4 Change Management & Communication** | 3 | " Is communication plan comprehensive?<br>" Are training materials appropriate?<br>" Is helpdesk enablement thorough? |
| **2.5 Quality Assurance & Testing** | 2 | " Is QA strategy comprehensive?<br>" Are acceptance criteria defined?<br>" Is regression testing planned? |

---

## 4.4 Category 3: Team Qualifications and Experience (25 points)

### Subcriteria

| Subcriterion | Points | Evaluation Questions |
|--------------|--------|---------------------|
| **3.1 Key Personnel Qualifications** | 10 | " Do key personnel have strong Windows 11/InTune experience?<br>" Are Microsoft certifications current?<br>" Is team composition appropriate?<br>" Are Solution Architect and Technical Lead dedicated 50%+? |
| **3.2 MOD Security Roles (DTSL, Second Line, PSyO)** (NEW v2.0) | 7 | " Is **Delivery Team Security Lead (DTSL)** role filled by qualified individual with CAAT self-assessment experience (NOT just RMADS)?<br>" Does proposed DTSL have SC clearance and MOD project experience?<br>" Is **Second Line Technical Coherence Lead** identified for Security Governance Reviews?<br>" Is **PSyO (Project Security Officer)** role filled (may be combined with DTSL for OFFICIAL-SENSITIVE)?<br>" Do security roles demonstrate understanding of Three Lines of Defence model?<br>" Are CREST/CHECK pen testing coordinators identified? |
| **3.3 Team Size & Allocation** | 4 | " Is team size adequate for 24-month project?<br>" Are key personnel not spread thin?<br>" Are backup resources identified?<br>" Is on-site presence committed? |
| **3.4 Domain Expertise** | 3 | " Does team have Windows 11 migration expertise?<br>" Have they solved similar challenges?<br>" Is InTune expertise deep? |
| **3.5 Onshore/UK-Based Model** | 1 | " Is the mix appropriate (min 70% onshore)?<br>" Are all MOD security roles 100% UK-based (MQ-11 requirement)?<br>" Is time zone coverage adequate? |

---

## 4.5 Category 4: Relevant Experience and References (15 points)

### Subcriteria

| Subcriterion | Points | Evaluation Questions |
|--------------|--------|---------------------|
| **4.1 Reference Project Relevance** | 10 | " Are reference projects similar (1000+ devices, InTune, Win11)?<br>" Do case studies demonstrate required capabilities?<br>" Were projects successful?<br>" Are references contactable? |
| **4.2 Industry Experience** | 3 | " Does vendor have industry experience?<br>" Do they understand regulations?<br>" Can they provide relevant insights? |
| **4.3 Innovation & Microsoft Partnership** | 2 | " Is vendor recognized as Microsoft leader?<br>" Do they demonstrate innovation?<br>" Are they forward-thinking? |

---

## 4.6 Category 5: Understanding of Requirements (5 points)

### Subcriteria

| Subcriterion | Points | Evaluation Questions |
|--------------|--------|---------------------|
| **5.1 Problem Understanding** | 2 | " Does vendor understand the business problem?<br>" Do they articulate WHY this is critical?<br>" Do they show user empathy? |
| **5.2 Requirements Comprehension** | 2 | " Are all BR and FR requirements addressed?<br>" Are 18 architecture principles referenced?<br>" Are requirements interpreted correctly? |
| **5.3 Thoughtful Questions** | 1 | " Did vendor ask insightful questions?<br>" Do they identify gaps or ambiguities?<br>" Do they proactively identify risks? |

---

## 5. Cost Evaluation (Shortlisted Vendors Only)

### 5.1 Cost Scoring Methodology

**Method**: **Lowest Price Best Value** (proportional scoring)

- Lowest cost proposal receives **100 cost points**
- **Formula**: `Cost Score = (Lowest Price / Vendor Price) � 100`

**Example**:
- Vendor A: $1,500,000 � Cost Score = **100 points**
- Vendor B: $1,800,000 � Cost Score = **83.3 points**
- Vendor C: $2,000,000 � Cost Score = **75 points**

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

**Final Score = (Technical Score � 0.70) + (Cost Score � 0.30)**

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
2. Team introductions (10 min)
3. Technical solution deep-dive (30 min) - InTune architecture, security, migration
4. Project management approach (10 min)
5. Vendor questions (5 min)

**Q&A Topics**:
- Technical details (InTune policies, Autopilot, security)
- Project management (wave planning, risk management)
- Team capabilities and experience
- Scenario-based questions (failure recovery, escalations)

**Impact**: Presentations may adjust technical scores based on clarifications, technical depth, or concerns raised.

---

## 8. Reference Checks

### 8.1 Process

- Contact all 3+ references per vendor
- Use standardized reference check template (10 questions)
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

### 8.3 Impact on Scoring

References do **NOT add points** but may:
- **Disqualify**: Multiple negative references
- **Lower scores 10-20%**: Concerning patterns (always late, over budget, weak team)
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
| **2.0** | **2025-10-21** | **Enterprise Architecture Team** | **CRITICAL UPDATE for SOW v3.0 alignment**:<br><br>**Section 3: Mandatory Qualifications**<br>• Added **MQ-11**: MOD Secure by Design Continuous Assurance Expertise (MANDATORY qualification)<br>• Vendors must demonstrate CAAT self-assessment experience (NOT legacy RMADS)<br>• Vendors must propose qualified DTSL (Delivery Team Security Lead) with SC clearance<br>• Vendors must have 2+ UK Gov/MOD projects (OFFICIAL/OFFICIAL-SENSITIVE)<br>• Vendors without UK Gov/MOD security experience will be DISQUALIFIED<br><br>**Section 4.2: Technical Solution**<br>• Added **Subcriterion 1.3** (8 points): MOD CAAT Continuous Assurance Approach<br>• Reweighted subcriteria (1.1: 10→8, 1.2: 9→8, 1.4: 7→6, 1.5: 5→3, 1.6: 4→2 to accommodate new 1.3)<br>• Added detailed scoring rubric for 1.3 distinguishing CAAT (post-Aug 2023) from legacy RMADS<br>• Vendors proposing RMADS (deprecated) will score 2/8 or 0/8 on subcriterion 1.3<br><br>**Section 4.4: Team Qualifications**<br>• Added **Subcriterion 3.2** (7 points): MOD Security Roles (DTSL, Second Line, PSyO)<br>• Reweighted subcriteria (3.1: 12→10, 3.2: 5→4, 3.3: 5→3, 3.4: 3→1 to accommodate new 3.2)<br>• DTSL role with CAAT experience (NOT just RMADS) is now critical evaluation criterion<br>• Second Line Technical Coherence Lead role added (NEW for continuous assurance)<br><br>**Rationale**: Updated to align with Requirements v4.0 (NFR-SEC-004/005/007 CAAT requirements), SOW v3.0 (CAAT continuous assurance framework), and MOD SbD Assessment v2.0. Post-August 2023 MOD framework replaced RMADS point-in-time accreditation with CAAT continuous assurance. Vendors must understand this fundamental shift or risk low scores/disqualification. |

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

**END OF VENDOR EVALUATION CRITERIA DOCUMENT**
