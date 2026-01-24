# Risk Register: Windows 11 Migration with Microsoft InTune

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-001-RISK-v4.0 |
| **Document Type** | Risk Register |
| **Project** | Windows 11 Deployment with Microsoft InTune (Project 001) |
| **Classification** | OFFICIAL-SENSITIVE |
| **Status** | DRAFT |
| **Version** | 4.0 |
| **Created Date** | 2025-10-20 |
| **Last Modified** | 2026-01-24 |
| **Review Cycle** | Weekly (Critical/High), Monthly (Medium/Low) |
| **Next Review Date** | 2026-01-31 |
| **Owner** | IT Operations Director |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | IT Leadership, Project Team, Security Team, Steering Committee |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2025-10-20 | Enterprise Architecture Team | Initial risk register created | PENDING | PENDING |
| 2.0 | 2025-10-21 | Enterprise Architecture Team | Added CAAT/MOD SbD compliance risks (later corrected in v3.0) | PENDING | PENDING |
| 3.0 | 2025-10-28 | Enterprise Architecture Team | CRITICAL CORRECTION: Removed CAAT/DTSL risks not applicable to existing system changes | PENDING | PENDING |
| 4.0 | 2026-01-24 | ArcKit AI | Updated to latest template format | PENDING | PENDING |

---

## ⚠️ CRITICAL CORRECTION NOTICE - RISK REGISTER SUPERSEDED

**This risk register has been CORRECTED to reflect that MOD Secure by Design (SbD) CAAT registration is NOT REQUIRED for this project.**

**Previous Assessment (v2.0 - 2025-10-21)**: INCORRECT - Assumed CAAT registration and MOD SbD framework risks applied to this Windows 11 migration project.

**Corrected Assessment (v3.0 - 2025-10-28)**: This project is delivering **changes to an EXISTING accredited in-service system** (Windows 10 enterprise environment), NOT a NEW operational capability. Therefore:

**RISKS REMOVED (NOT APPLICABLE):**
- ❌ **R-001 (v2.0): CAAT registration risk** - CAAT not required (only for NEW operational capabilities)
- ❌ **R-002 (v2.0): DTSL appointment risk** - DTSL not required (not a MOD SbD programme)
- ❌ **R-004 (v2.0): BIA for CAAT risk** - BIA for CAAT not required
- ❌ **R-006 (v2.0): ISN 2023/10 supplier attestation risk** - Not a MOD programme

**RISKS UPDATED:**
- ✅ **R-003: Timeline risk** - Security prep timeline reduced from 3 months to 2 months (CAAT overhead removed)
- ✅ **R-004 (NEW): Security Impact Assessment risk** - Using organizational template (not CAAT BIA)
- ✅ **R-005: Threat model risk** - Owner changed from DTSL to Project Security Lead
- ✅ **R-007: Vendor selection risk** - Criteria changed from CAAT expertise to organizational security governance experience

**Result**: **Total risks reduced from 22 → 18 risks**. Critical risks reduced from 3 → 1. Overall residual risk reduced from 193 → 130 (33% improvement).

---

---

## Executive Summary

### Risk Profile Overview

**Total Risks Identified:** 18 risks across 6 categories (reduced from 22 in v2.0)

**CRITICAL CORRECTION (v3.0)**: MOD Secure by Design Assessment v3.0 confirmed that CAAT registration, DTSL appointment, CAAT BIA, and ISN 2023/10 supplier attestation are **NOT APPLICABLE** to this project (delivering changes to EXISTING accredited in-service system, not NEW operational capability). Four risks from v2.0 have been **REMOVED** as not applicable. Security preparation timeline reduced from 3 months to 2 months.

| Risk Level | Inherent | Residual | Change |
|------------|----------|----------|--------|
| **Critical** (20-25) | 5 | 1 | ↓ 80% |
| **High** (13-19) | 7 | 5 | ↓ 29% |
| **Medium** (6-12) | 4 | 9 | ↑ 125% |
| **Low** (1-5) | 2 | 3 | ↑ 50% |
| **TOTAL** | 207 | 130 | ↓ 37% |

**Overall Residual Risk Score:** 130/450 (29% of maximum)
**Risk Reduction from Controls:** 37% reduction from inherent risk
**Risk Profile Status:** ⚠️ **ACCEPTABLE** - 1 Critical risk (Timeline EOL), 5 High risks require active management

### Risk Category Distribution

| Category | Count | Avg Inherent | Avg Residual | Control Effectiveness |
|----------|-------|--------------|--------------|----------------------|
| **STRATEGIC** | 2 | 17.5 | 10.0 | 43% reduction |
| **OPERATIONAL** | 6 | 11.8 | 7.8 | 34% reduction |
| **FINANCIAL** | 3 | 11.3 | 8.0 | 29% reduction |
| **COMPLIANCE** | 4 | 12.8 | 7.5 | 41% reduction |
| **REPUTATIONAL** | 1 | 15.0 | 9.0 | 40% reduction |
| **TECHNOLOGY** | 2 | 13.5 | 9.0 | 33% reduction |

### Top 10 Critical Risks Requiring Immediate Attention

1. **R-003** (STRATEGIC, Critical 20→12): Timeline Slips Past Windows 10 EOL - Owner: IT Ops Director - Status: In Progress
2. **R-005** (COMPLIANCE, High 15→12): No Threat Model Documented - Owner: Project Security Lead - Status: Open
3. **R-007** (OPERATIONAL, High 16→12): Vendor Selection - Security Governance Experience Gap - Owner: Procurement - Status: Open
4. **R-008** (OPERATIONAL, High 15→12): Support Ticket Volume Overwhelms Helpdesk - Owner: Helpdesk Manager - Status: In Progress
5. **R-009** (FINANCIAL, High 15→12): Budget Overruns Eliminate ROI - Owner: CFO - Status: In Progress
6. **R-010** (TECHNOLOGY, High 16→9): Cloud Data Sovereignty Requirements - Owner: CISO - Status: Open
7. **R-004** (COMPLIANCE, Medium 12→9): Security Impact Assessment Not Completed - Owner: Project Security Lead - Status: Open
8. **R-001** (COMPLIANCE, Medium 12→9): CAB Approval Delayed - Owner: IT Ops Director - Status: Open
9. **R-011** (OPERATIONAL, Medium 12→9): Application Compatibility Issues Block Migration - Owner: App Owners - Status: In Progress
10. **R-012** (OPERATIONAL, Medium 12→8): Hardware Incompatibility Not Identified - Owner: IT Ops Director - Status: Open

### Key Findings

**✅ CRITICAL CORRECTION APPLIED:**
- Removed 4 false risks: CAAT registration (v2.0 R-001), DTSL appointment (v2.0 R-002), CAAT BIA (v2.0 R-004), ISN 2023/10 attestation (v2.0 R-006)
- Critical risks reduced: 3 → 1 (Timeline EOL only remaining critical risk)
- Overall residual risk reduced: 193 → 130 (33% improvement)
- Security preparation timeline: 3 months → 2 months (CAAT overhead removed)

**⚠️ ORGANIZATIONAL SECURITY GOVERNANCE RISKS (4 risks):**
- CAB approval process delays (new R-001)
- Security Impact Assessment not completed (new R-004, replacing CAAT BIA)
- Threat model not documented (R-005, owner changed to Project Security Lead)
- Vendor selection - organizational security governance experience (R-007, updated criteria)

**⚠️ VENDOR SELECTION:**
- Evaluation criteria must assess organizational CAB/security review experience (not CAAT)
- Vendors must demonstrate ISO 27001, NIST CSF, NCSC Secure Design experience
- InTune Zero Trust Architecture expertise required

**📊 RISK CONCENTRATION:**
- CISO risk ownership reduced from 43% → 28% (DTSL/CAAT risks removed)
- IT Ops Director owns 35% of residual risk (timeline execution critical)
- All COMPLIANCE risks now within appetite (previously 5/7 exceeded)

### Recommendations

1. **IMMEDIATE (Week 1)**: Appoint Project Security Lead and obtain SRO approval - Required for Security Impact Assessment
2. **URGENT (Week 2)**: Complete Security Impact Assessment using organizational template - Submit to CAB
3. **HIGH PRIORITY (Month 1)**: Complete threat modeling (STRIDE methodology) and Security Architecture Review
4. **CRITICAL (Vendor Selection)**: Evaluate vendors on organizational security governance experience (ISO 27001, NIST CSF, NCSC)
5. **TIMELINE**: 2-month security preparation (not 3 months) - Sep 2025 target achievable

---

## A. Risk Matrix Visualization

### Inherent Risk Matrix (Before Controls)

```
LIKELIHOOD ↑
     5 |       |       | R-003 |       |       |  ← Almost Certain
       |       |       |       |       |       |
       |-------|-------|-------|-------|-------|
     4 |       |       | R-008 | R-007 | R-009 |  ← Likely
       |       |       | R-011 | R-010 | R-014 |
       |-------|-------|-------|-------|-------|
     3 |       | R-015 | R-004 | R-012 | R-001 |  ← Possible
       |       | R-018 | R-005 | R-013 |       |
       |-------|-------|-------|-------|-------|
     2 |       | R-019 | R-016 |       |       |  ← Unlikely
       | R-022 |       | R-020 |       |       |
       |-------|-------|-------|-------|-------|
     1 |       | R-021 |       | R-017 |       |  ← Rare
       |       |       |       |       |       |
       |_______|_______|_______|_______|_______|
           1       2       3       4       5
       Negligible Minor  Moderate Major Catastrophic
                    IMPACT →
```

**Risk Zones:**
- 🟥 **Critical (20-25)**: R-003 - Immediate escalation to CIO/Board
- 🟧 **High (13-19)**: R-007 through R-010, R-014 - Senior management attention
- 🟨 **Medium (6-12)**: R-001, R-004, R-005, R-011 through R-013, R-016, R-020 - Management monitoring
- 🟩 **Low (1-5)**: R-017 through R-019, R-021, R-022 - Routine monitoring

### Residual Risk Matrix (After Controls)

```
LIKELIHOOD ↑
     5 |       |       |       |       |       |  ← Almost Certain
       |       |       |       |       |       |
       |-------|-------|-------|-------|-------|
     4 |       |       |       |       |       |  ← Likely
       |       |       |       |       |       |
       |-------|-------|-------|-------|-------|
     3 |       | R-015 | R-003 | R-005 | R-007 |  ← Possible
       | R-018 | R-019 | R-008 | R-009 |       |
       |       |       | R-011 |       |       |
       |-------|-------|-------|-------|-------|
     2 |       | R-022 | R-001 | R-010 |       |  ← Unlikely
       |       |       | R-004 | R-012 |       |
       |       |       | R-014 | R-013 |       |
       |       |       | R-016 |       |       |
       |       |       | R-020 |       |       |
       |-------|-------|-------|-------|-------|
     1 |       | R-021 |       | R-017 |       |  ← Rare
       |       |       |       |       |       |
       |_______|_______|_______|_______|_______|
           1       2       3       4       5
       Negligible Minor  Moderate Major Catastrophic
                    IMPACT →
```

**Risk Movement Analysis:**
- ✅ **Critical→Medium (EXCELLENT)**: R-003 (20→12) - Timeline buffer + controls effective
- ✅ **High→Medium (GOOD)**: R-005, R-007, R-008, R-009 average 15→11 - Controls mitigate effectively
- ✅ **High→Medium (GOOD)**: R-010 (16→9) - Cloud sovereignty controls strong
- ⚠️ **New Medium Risks**: R-001 (CAB), R-004 (Security Impact Assessment) - Organizational governance requirements

---

## B. Top 10 Risks (Ranked by Residual Score)

| Rank | ID | Title | Category | Inherent | Residual | Owner | Status | Response |
|------|----|-------|----------|----------|----------|-------|--------|----------|
| 1 | R-003 | Timeline Slips Past Windows 10 EOL | STRATEGIC | 20 | 12 | IT Ops Director | In Progress | Treat |
| 2 | R-005 | No Threat Model Documented | COMPLIANCE | 15 | 12 | Project Security Lead | Open | Treat |
| 3 | R-007 | Vendor Selection - Security Governance Gap | OPERATIONAL | 16 | 12 | Procurement | Open | Treat |
| 4 | R-008 | Support Ticket Volume Overwhelms Helpdesk | OPERATIONAL | 15 | 12 | Helpdesk Mgr | In Progress | Treat |
| 5 | R-009 | Budget Overruns Eliminate ROI | FINANCIAL | 15 | 12 | CFO | In Progress | Treat |
| 6 | R-010 | Cloud Data Sovereignty Requirements | TECHNOLOGY | 16 | 9 | CISO | Open | Treat |
| 7 | R-001 | CAB Approval Delayed | COMPLIANCE | 12 | 9 | IT Ops Director | Open | Treat |
| 8 | R-004 | Security Impact Assessment Not Completed | COMPLIANCE | 12 | 9 | Project Security Lead | Open | Treat |
| 9 | R-011 | Application Compatibility Issues | OPERATIONAL | 12 | 9 | App Owners | In Progress | Treat |
| 10 | R-012 | Hardware Incompatibility Not Identified | OPERATIONAL | 12 | 8 | IT Ops Director | Open | Treat |

---

## C. Detailed Risk Profiles

### Risk R-001: CAB Approval Delayed (NEW - Replaces v2.0 R-001 CAAT) ⚠️ MEDIUM

**Category:** COMPLIANCE | **Status:** Open | **Owner:** IT Operations Director

**Risk Description:**
Change Advisory Board (CAB) approval for Windows 11 migration delayed due to incomplete Security Impact Assessment, stakeholder concerns, or CAB meeting capacity constraints. CAB approval is mandatory organizational gate before Beta phase for changes to existing accredited systems.

**Root Cause:** Security Impact Assessment template must be completed with threat model, Architecture Review, and stakeholder sign-offs before CAB submission.

**Consequences if Realized:**
- 2-4 week delay for CAB meeting schedule and review cycle
- Sep 2025 migration deadline at risk if CAB deferred for additional information
- Security gates not passed → Beta phase blocked
- Organizational governance failure → Audit finding

**Affected Stakeholders:** CIO (SD-5 strategic delivery), CISO (SD-1 governance), IT Ops (SD-3 execution), Project Security Lead

**Inherent Risk:** Likelihood 3 × Impact 4 = **12 (Medium)**
**Residual Risk:** Likelihood 3 × Impact 3 = **9 (Medium)** after controls

**Risk Appetite:** 6 (Medium tolerance for governance delays)
**Status vs Appetite:** ⚠️ Exceeds appetite by 3 points - Active management required

**Current Controls:**
- Security Impact Assessment template available (organizational standard)
- CAB meeting schedule published (monthly meetings with 2-week submission deadline)
- Project Security Lead appointed to coordinate security deliverables

**Mitigation Actions:**
1. Appoint Project Security Lead and SRO (IT Ops Director, Week 1, £0) → Enables Security Impact Assessment
2. Complete Security Impact Assessment (Project Security Lead, Week 2, £5K) → Likelihood 3→2
3. Pre-brief CAB chair on scope and timeline (Week 2, £0) → Impact 3→2
4. Submit to CAB with complete documentation (Week 3, £0) → **Target: 4 (Within appetite)**

**Success Criteria:** CAB approval obtained within 4 weeks of Security Impact Assessment completion

**Monitoring:** Weekly Steering Committee review until CAB approval obtained

---

### Risk R-003: Timeline Slips Past Windows 10 EOL (October 2025) ⚠️ CRITICAL

**Category:** STRATEGIC | **Status:** In Progress | **Owner:** IT Operations Director

**Risk Description:**
Migration timeline slips past Windows 10 EOL (Oct 14, 2025) due to organizational security preparation delays (2-month CAB process), hardware supply chain delays, vendor capacity constraints, or application compatibility blockers. Sep 2025 target has 6-week buffer.

**Root Cause (CORRECTED v3.0):** Timeline requires 2-month organizational security preparation (Security Impact Assessment, CAB approval, threat model, Security Architecture Review). Original v2.0 incorrectly assumed 3-month MOD CAAT process.

**Consequences if Realized:**
- Windows 10 devices unsupported post-EOL → Critical security vulnerability
- Cyber insurance invalidated → £500K-£2M breach exposure uninsured
- Compliance audit findings → ISO 27001 recertification at risk
- Extended Security Updates (ESU) cost → £50-£200 per device per year

**Affected Stakeholders:** CISO (SD-1 EOL risk), CIO (SD-5 strategic failure), IT Ops (SD-3 execution failure), CFO (SD-2 ESU costs)

**Inherent Risk:** Likelihood 5 × Impact 4 = **20 (Critical)**
**Residual Risk:** Likelihood 3 × Impact 4 = **12 (Medium)** after controls

**Risk Appetite:** 12 (High tolerance for controlled timeline variance with ESU fallback)
**Status vs Appetite:** ✅ Within appetite

**Current Controls:**
- 6-week timeline buffer (Sep 1 target vs Oct 14 EOL)
- Phased rollout with pause criteria
- Early hardware procurement
- **v3.0 CORRECTION**: Security prep timeline reduced from 3 months → 2 months (CAAT overhead removed)

**Mitigation Actions:**
1. Parallel security activities (Security Impact Assessment + threat model concurrent) (£15K, Month 1) → Likelihood 3→2
2. Pre-authorize £200K ESU contingency (CFO, Sep 2025) → Impact 4→3
3. Increase wave throughput 500→750 devices/week (IT Ops, Month 4) → Likelihood 2→1
**Target: 6 (Within appetite 12)**

**Success Criteria:** Migration complete by Sep 1, 2025 (6 weeks before Windows 10 EOL)

**Monitoring:** Weekly Steering Committee review, monthly Board updates

---

### Risk R-004: Security Impact Assessment Not Completed (NEW - Replaces v2.0 R-004 CAAT BIA) ⚠️ MEDIUM

**Category:** COMPLIANCE | **Status:** Open | **Owner:** Project Security Lead

**Risk Description:**
Security Impact Assessment not completed using organizational template before CAB submission. Assessment required to document threat landscape, security controls, data flows, compliance requirements, and risk mitigation for change to existing accredited system.

**Root Cause:** Security Impact Assessment template requires input from multiple stakeholders (CISO, Data Protection Officer, App Owners) and technical analysis (threat model, Architecture Review).

**Consequences if Realized:**
- CAB approval delayed (R-001) → 2-4 week delay
- Security gaps not identified early → Remediation costs increase
- Organizational governance requirements not met → Audit finding
- Architecture Review cannot proceed without baseline assessment

**Affected Stakeholders:** Project Security Lead (assessment owner), CISO (governance), CAB (approval gate), IT Ops (timeline)

**Inherent Risk:** Likelihood 4 × Impact 3 = **12 (Medium)**
**Residual Risk:** Likelihood 3 × Impact 3 = **9 (Medium)** after controls

**Risk Appetite:** 6 (Low tolerance for security governance gaps)
**Status vs Appetite:** ⚠️ Exceeds appetite by 3 points - Active management required

**Current Controls:**
- Organizational Security Impact Assessment template available
- Project Security Lead appointment (Week 1)
- Threat modeling guidance available (STRIDE methodology)

**Mitigation Actions:**
1. Appoint Project Security Lead with security assessment experience (CIO, Week 1, £0) → Likelihood 4→3
2. Complete Security Impact Assessment (Project Security Lead, Week 2, £5K consultant support) → Likelihood 3→2, Impact 3→2
3. CISO review and approval (Week 3, £0) → **Target: 4 (Within appetite)**

**Success Criteria:** Security Impact Assessment 100% complete, CISO approved, submitted to CAB by Week 3

**Monitoring:** Weekly Project Security Lead updates to IT Ops Director

---

### Risk R-005: No Threat Model Documented ⚠️ HIGH

**Category:** COMPLIANCE | **Status:** Open | **Owner:** Project Security Lead (CHANGED from DTSL in v2.0)

**Risk Description:**
Formal threat model using STRIDE methodology not documented. Threat model required by organizational security governance to identify attack vectors, threat actors, vulnerabilities, and mitigations for Security Impact Assessment and Architecture Review.

**Root Cause:** Threat modeling expertise required (STRIDE: Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, Elevation of Privilege). Zero Trust Architecture (Conditional Access, MFA, encryption) creates complex threat landscape.

**Consequences if Realized:**
- Security Impact Assessment incomplete (R-004) → CAB approval blocked (R-001)
- Security Architecture Review cannot validate controls without threat baseline
- Unidentified attack vectors discovered post-deployment → Remediation costs £50K-£200K
- Organizational security governance failure → Audit finding

**Affected Stakeholders:** Project Security Lead (owner), CISO (security governance), IT Ops (timeline), CAB (approval gate)

**Inherent Risk:** Likelihood 3 × Impact 5 = **15 (High)**
**Residual Risk:** Likelihood 3 × Impact 4 = **12 (Medium)** after controls

**Risk Appetite:** 6 (Low tolerance for threat modeling gaps)
**Status vs Appetite:** ⚠️ Exceeds appetite by 6 points (100%) - Active mitigation required

**Current Controls:**
- Requirements v5.0 NFR-SEC-004 mandates threat model before Beta
- STRIDE methodology guidance available
- Zero Trust Architecture design documented (Conditional Access, MFA, BitLocker, Defender)

**Mitigation Actions:**
1. Project Security Lead complete STRIDE threat model with CISO support (Month 1, £15K) → Likelihood 3→2, Impact 4→2
2. Architecture Review validates threat model completeness (Month 2, £0) → **Target: 4 (Within appetite)**

**Success Criteria:** STRIDE threat model 100% complete, CISO approved, all attack vectors documented with mitigations

**Monitoring:** Bi-weekly Project Security Lead updates until complete

---

### Risk R-007: Vendor Selection - Security Governance Experience Gap ⚠️ HIGH

**Category:** OPERATIONAL | **Status:** Open | **Owner:** Procurement

**Risk Description (CORRECTED v3.0):**
Vendor selected lacks organizational security governance experience (ISO 27001, NIST CSF, NCSC Secure Design, CAB processes, Security Impact Assessments). Vendor must demonstrate experience with organizational change control and security review processes for existing accredited systems.

**Root Cause:** v2.0 incorrectly focused on MOD CAAT expertise (not required). v3.0 corrects criteria to organizational security governance.

**Consequences if Realized:**
- Vendor cannot coordinate CAB approval process → R-001 worsens
- Security Impact Assessment incomplete or non-compliant → CAB rejection
- Organizational security governance requirements not met → Audit finding
- Re-procurement if vendor fundamentally unable to deliver → £250K-£500K + 8-12 week delay

**Affected Stakeholders:** Procurement (vendor selection), CISO (governance compliance), IT Ops (timeline), CFO (re-procurement costs)

**Inherent Risk:** Likelihood 4 × Impact 4 = **16 (High)**
**Residual Risk:** Likelihood 3 × Impact 4 = **12 (Medium)** after controls

**Risk Appetite:** 8 (Medium-high tolerance for vendor capability gaps if remediable)
**Status vs Appetite:** ⚠️ Exceeds appetite by 4 points (50%) - Active mitigation required

**Current Controls:**
- Evaluation Criteria v2.0 updated to assess organizational security governance experience (not CAAT)
- Mandatory qualification: Vendor must demonstrate 2+ projects with ISO 27001, CAB processes, Security Impact Assessments
- Scoring criteria: ISO 27001 (2 points), NIST CSF (2 points), NCSC (2 points), InTune Zero Trust (2 points) = 8 points total

**Mitigation Actions:**
1. Update RFP/SOW to clearly state organizational security governance requirements (not MOD CAAT) (Procurement, Week 1, £0) → Impact 4→3
2. Enforce mandatory qualification during vendor evaluation (Procurement, Month 2, £0) → Likelihood 3→2
3. Require vendor to provide Project Security Lead CV and security governance case studies (Month 2, £0) → **Target: 6 (Within appetite)**

**Success Criteria:** Selected vendor scores 6+/8 on organizational security governance criteria, has demonstrated CAB experience on 2+ projects

**Monitoring:** Procurement weekly updates during RFP evaluation phase

---

### Summary Risk Profiles (R-008 through R-022)

**R-008: Support Ticket Volume Overwhelms Helpdesk**
- OPERATIONAL | Inherent 15 | Residual 12 | Owner: Helpdesk Manager
- Issue: >5% support ticket rate overwhelms 30-person team
- Mitigation: 18hr helpdesk training, pilot validation, phased rollout, contract temp augmentation (10 FTEs, £50K)

**R-009: Budget Overruns Eliminate ROI**
- FINANCIAL | Inherent 15 | Residual 12 | Owner: CFO
- Issue: Hardware costs, professional services, organizational security costs (£20K) eliminate £X savings
- Mitigation: 10% contingency (£100K), fixed-price contracts, phased procurement

**R-010: Cloud Data Sovereignty Requirements**
- TECHNOLOGY | Inherent 16 | Residual 9 | Owner: CISO
- Issue: Azure UK South data residency requirements for OFFICIAL-SENSITIVE data (organizational policy, not MOD-assured requirement)
- Mitigation: Obtain organizational cloud assurance by Month 2; fallback to UK Gov cloud (£20K)

**R-011 through R-022:** Application compatibility (R-011), hardware incompatibility (R-012), user resistance (R-013), Copilot+ ARM64 (R-014), InTune skills gap (R-015), Conditional Access lockouts (R-016), Azure outage (R-017), ConfigMgr decommission (R-018), insider threat (R-019), supply chain (R-020), OneDrive sync (R-021), performance (R-022) - See detailed register for full profiles.

---

## D. Risk Category Analysis

### COMPLIANCE Risks (4 risks - CORRECTED from 7 in v2.0) - ✅ ACCEPTABLE

**Average Residual Score:** 7.5 (Medium)
**Control Effectiveness:** 41% reduction (improved from 36% in v2.0)

**Risk List:**
- R-001: CAB Approval Delayed - 9 (Medium) ⚠️ Exceeds appetite (threshold 6) by 3 points
- R-004: Security Impact Assessment Not Completed - 9 (Medium) ⚠️ Exceeds appetite by 3 points
- R-005: Threat Model Missing - 12 (Medium) ⚠️ Exceeds appetite by 6 points
- R-002: Conditional Access Policies (NEW numbering) - 6 (Medium) ✅ Within appetite

**v3.0 CORRECTION:** Removed 4 false compliance risks from v2.0:
- ❌ v2.0 R-001 (CAAT Registration) - NOT APPLICABLE
- ❌ v2.0 R-002 (DTSL Appointment) - NOT APPLICABLE
- ❌ v2.0 R-004 (BIA for CAAT) - Replaced with organizational Security Impact Assessment
- ❌ v2.0 R-006 (ISN 2023/10 Supplier Attestation) - NOT APPLICABLE

**Key Themes:**
- Organizational CAB and security review processes (not MOD CAAT)
- Security Impact Assessment using organizational template (not CAAT BIA)
- Project Security Lead (not DTSL) responsible for threat model and security coordination

**Category Risk Profile:** ✅ **ACCEPTABLE** - 3 of 4 risks exceed appetite but manageable with active mitigation (vs 5 of 7 in v2.0). 2-month timeline achievable (vs 3 months in v2.0).

**Recommendations:** Week 1: Appoint Project Security Lead + SRO, Week 2: Complete Security Impact Assessment, Week 3: Submit to CAB, Month 1: Threat model complete

---

### OPERATIONAL Risks (6 risks) - ⚠️ CONCERNING

**Average Residual Score:** 7.8 (Medium)
**Control Effectiveness:** 34% reduction

**Risk List:** R-007 (Vendor Security Governance Experience - CORRECTED), R-008 (Support Tickets), R-012 (Hardware), R-013 (User Resistance), R-015 (Skills Gap), R-016 (CA Lockouts)

**v3.0 CORRECTION:** R-007 updated from "CAAT expertise" to "organizational security governance experience"

**Category Risk Profile:** ⚠️ **CONCERNING** - R-007 and R-008 require active management. Within appetite (threshold 6) for most.

---

### FINANCIAL Risks (3 risks) - ⚠️ CONCERNING

**Average Residual Score:** 8.0 (Medium)

**Risk List:** R-009 (Budget Overruns) - 12 (Medium) ❌ Exceeds appetite (threshold 9) by 3 points

**v3.0 CORRECTION:** Organizational security costs reduced from £50K (MOD CAAT/DTSL) to £20K (Project Security Lead, Security Impact Assessment). Budget risk reduced.

**Category Risk Profile:** ⚠️ **CONCERNING** - R-009 exceeds appetite. CFO monitoring required.

---

### STRATEGIC, TECHNOLOGY, REPUTATIONAL - ✅ ACCEPTABLE

All within appetite after controls applied. Continue active monitoring.

---

## E. Risk Ownership Matrix

| Stakeholder | Owned Risks | Critical | High | Medium | Low | Total Score | Concentration |
|-------------|-------------|----------|------|--------|-----|-------------|---------------|
| **IT Ops Director** | R-001, R-003, R-008, R-012, R-015, R-017, R-018, R-021, R-022 | 0 | 1 | 7 | 1 | 73 | ⚠️ **35%** |
| **CISO** | R-002, R-010, R-019 | 0 | 1 | 2 | 0 | 36 | Moderate **28%** |
| **Project Security Lead** | R-004, R-005, R-020 | 0 | 1 | 2 | 0 | 30 | Moderate **23%** |
| **Procurement** | R-007 | 0 | 1 | 0 | 0 | 12 | Low |
| **CFO** | R-009 | 0 | 0 | 1 | 0 | 12 | Low |
| **CIO** | R-014 | 0 | 0 | 1 | 0 | 6 | Low |

**v3.0 IMPROVEMENT:** CISO risk ownership reduced from 43% (83 points) → 28% (36 points) after removing false CAAT/DTSL/MOD risks. IT Ops Director now primary risk owner at 35% (appropriate for execution-focused migration project).

**Escalation Paths:**
- Critical/High COMPLIANCE → Project Security Lead → CISO → CIO → Board
- Timeline Slippage → IT Ops → Steering Committee → Board

---

## F. 4Ts Response Summary

| Response | Count | % | Notes |
|----------|-------|---|-------|
| **TOLERATE** | 3 | 17% | Low risks within appetite (R-017, R-019, R-022) |
| **TREAT** | 15 | 83% | Active mitigation required (R-001 through R-016, R-018, R-020, R-021) |
| **TRANSFER** | 0 | 0% | Most risks internal, cannot transfer |
| **TERMINATE** | 0 | 0% | Project essential for Windows 10 EOL compliance |

**Key Insight:** 83% require active treatment - High-risk project with significant mitigation effort needed (unchanged from v2.0)

---

## G. Prioritized Action Plan

### Priority 1: CRITICAL (Week 1 - BLOCKERS)

| Action | Risk(s) | Owner | Due | Cost | Expected Impact |
|--------|---------|-------|-----|------|-----------------|
| **Appoint Project Security Lead** | R-001, R-004, R-005 | CIO | 2025-10-25 | £0 | Unblocks Security Impact Assessment, CAB submission |
| **Appoint SRO** | R-001 | CIO | 2025-10-25 | £0 | Enables CAB submission approval |

**Priority 1 Total:** 2 actions | £0 | **Unblocks all organizational security activities** | **CRITICAL PATH**

**v3.0 CORRECTION:** Removed "Register on CAAT" and "Appoint DTSL" from P1 (not applicable)

### Priority 2: URGENT (Week 2-Month 1)

| Action | Risk(s) | Owner | Due | Cost | Expected Impact |
|--------|---------|-------|-----|------|-----------------|
| Complete Security Impact Assessment | R-004, R-001 | Project Security Lead | 2025-11-01 | £5K | Reduce R-004 from 9→4, enable CAB submission |
| Submit to CAB with complete documentation | R-001 | IT Ops Director | 2025-11-08 | £0 | Reduce R-001 from 9→4 |
| Complete threat model (STRIDE) | R-005 | Project Security Lead | 2025-11-21 | £15K | Reduce R-005 from 12→4 |
| Security Architecture Review | R-004, R-005 | CISO | 2025-11-21 | £0 | Validate Security Impact Assessment and threat model |

**Priority 2 Total:** 4 actions | £20K | **24 point reduction** | Blocked by P1

**v3.0 CORRECTION:** Removed "Complete CAAT BIA" and "Obtain supplier attestations per ISN 2023/10" (not applicable). Reduced costs from £40K → £20K.

### Priority 3: HIGH (Month 2-3)

| Action | Risk(s) | Owner | Due | Cost | Expected Impact |
|--------|---------|-------|-----|------|-----------------|
| Evaluate vendors on organizational security governance | R-007 | Procurement | 2025-12-15 | £0 | Reduce from 12→6 |
| Obtain organizational cloud assurance for Azure UK South | R-010 | CISO | 2025-12-01 | £20K | Reduce from 9→4 |
| Complete app compatibility testing (top 100 apps) | R-011 | App Owners | 2025-12-31 | £50K | Reduce from 9→4 |
| 18hr helpdesk training delivery | R-008 | Helpdesk Mgr | 2026-01-15 | £20K | Reduce from 12→6 |

**Priority 3 Total:** 4 actions | £90K | **22 point reduction**

**v3.0 CORRECTION:** R-007 criteria changed from "CAAT expertise" to "organizational security governance experience"

### Priority 4: MEDIUM (Month 4-6)

| Action | Risk(s) | Owner | Due | Cost |
|--------|---------|-------|-----|------|
| Pilot phase (50-100 devices) | R-003, R-008, R-013, R-016 | IT Ops | 2026-02-01 | £0 |
| ESU contingency authorization | R-003 | CFO | 2025-09-01 | £0 |
| 40hr InTune training | R-015 | IT Ops | 2026-03-01 | £20K |
| Copilot+ ARM64 pilot | R-014 | CIO | 2026-03-31 | £10K |

**Priority 4 Total:** 4 actions | £30K | **15 point reduction**

### Overall Action Plan Summary

- **Total Actions:** 14 priority actions (reduced from 14 in v2.0, but different composition)
- **Total Investment:** £140K (reduced from £160K in v2.0 - £20K savings from removing MOD CAAT costs)
- **Expected Risk Reduction:** 61 points (47% reduction from 130→69)
- **Critical Path:** P1 (Week 1) blocks all subsequent security activities
- **Target Completion:** Month 6 (before pilot deployment)

**v3.0 SAVINGS:**
- Approved: £0 (no organizational security budget in original plan)
- Requested: £140K (organizational security + training + cloud assurance)
- Contingency: £200K (ESU fallback, helpdesk augmentation)
- **Total: £340K additional funding required** (£20K savings vs v2.0 £360K due to removal of MOD CAAT overhead)

---

## H. Monitoring Framework

### Review Schedule

| Risk Level | Frequency | Reviewed By | Escalated To |
|------------|-----------|-------------|--------------|
| Critical (20-25) | Daily until mitigated | Risk Owner + CIO | Board |
| High (13-19) | Weekly | Risk Owner + PMO | Steering Committee |
| Medium (6-12) | Bi-weekly | Risk Owner | Project Manager |
| Low (1-5) | Monthly | Action Owner | Risk Owner |

### Key Risk Indicators (KRIs)

**Leading Indicators:**
1. Project Security Lead appointment status (Green: Appointed | Red: Not Appointed)
2. Security Impact Assessment completion % (Green: 100% | Red: <75%)
3. CAB submission date (Green: Week 3 | Red: >Week 4)
4. Vendor RFP organizational security governance scores (Green: 2+ vendors score 6+/8 | Red: 0 vendors >4/8)
5. Hardware assessment completion % (Green: 100% | Red: <75%)
6. Pilot success rate (Green: >95% | Red: <90%)

**Lagging Indicators:**
7. Migration completion % vs timeline (Green: On track | Red: >4 weeks behind)
8. Support ticket rate (Green: <2% | Red: >5%)
9. Budget variance (Green: <5% | Red: >10%)
10. Compliance audit findings (Green: 0 | Red: 1+)

**v3.0 CORRECTION:** Removed CAAT registration and DTSL appointment KRIs (not applicable)

### Escalation Criteria

**Automatic Triggers:**
1. Any risk increases by 5+ points → Escalate to Steering Committee within 24hr
2. Any new Critical risk → Escalate to CIO immediately
3. R-001 (CAB approval) or R-004 (Security Impact Assessment) not mitigated by Week 3 → Escalate to CIO
4. Any P1/P2 action delayed >1 week → Escalate to Steering Committee
5. 3+ risks in same category exceed appetite → Escalate to category owner
6. Pilot success rate <90% → Escalate + pause production waves

**v3.0 CORRECTION:** Changed escalation trigger from "R-001 or R-002 not mitigated by Week 2" (CAAT/DTSL) to "R-001 or R-004 not mitigated by Week 3" (CAB/Security Impact Assessment)

**Next Review Date:** 2025-11-04 (Weekly until Critical/High risks mitigated)

---

## I. Orange Book Compliance Checklist

✅ **A. Governance and Leadership** - Risk owners from stakeholder RACI, escalation paths, appetite set
✅ **B. Integration** - Risks linked to goals (G-1 through G-14), stakeholder drivers (SD-1 through SD-7), business case
✅ **C. Collaboration** - Risks from stakeholder concerns, MOD SbD Assessment v3.0, organizational security team input, multiple perspectives
✅ **D. Risk Management Processes** - 6 categories, 5×5 matrix, 4Ts framework, inherent vs residual tracked
✅ **E. Continual Improvement** - Review schedule, KRIs, lessons learned, version control (v3.0 corrects false MOD risks)

---

## Next Steps

### Immediate Actions (This Week)

1. **[ ] CRITICAL**: Present risk register v3.0 to CIO - 1 Critical risk (Timeline EOL), total residual risk 130 (improved from v2.0 193)
2. **[ ] CRITICAL**: Escalate to Steering Committee - £140K funding required for organizational security preparation
3. **[ ] CRITICAL**: CIO appoint Project Security Lead - **DUE: 2025-10-25**
4. **[ ] CRITICAL**: CIO appoint SRO for CAB approval - **DUE: 2025-10-25**
5. **[ ] HIGH**: Initiate organizational security consultant procurement (£20K for Security Impact Assessment + threat model support)
6. **[ ] HIGH**: Update project timeline - 2-month organizational security prep (CAB cycle + Security Architecture Review)
7. **[ ] HIGH**: Validate vendor RFP includes organizational security governance criteria (ISO 27001, NIST CSF, NCSC, CAB experience)

### Short-term Actions (Next 4 Weeks)

8. **[ ] URGENT**: Project Security Lead complete Security Impact Assessment - **DUE: 2025-11-01**
9. **[ ] URGENT**: Submit to CAB with complete security documentation - **DUE: 2025-11-08**
10. **[ ] URGENT**: Project Security Lead complete threat model (STRIDE) - **DUE: 2025-11-21**
11. **[ ] URGENT**: CISO Security Architecture Review - **DUE: 2025-11-21**
12. **[ ] HIGH**: CISO obtain organizational cloud assurance for Azure UK South - **DUE: 2025-12-01**
13. **[ ] HIGH**: Set up weekly Critical/High risk dashboard
14. **[ ] MEDIUM**: Integrate risk register into SOBC Management Case Part E

### Medium-term Actions (This Quarter)

15. **[ ] HIGH**: Evaluate vendor RFP responses using organizational security governance criteria - **DUE: 2025-12-15**
16. **[ ] HIGH**: Complete app compatibility testing (top 100 apps) - **DUE: 2025-12-31**
17. **[ ] MEDIUM**: Deliver 18hr helpdesk training - **DUE: 2026-01-15**
18. **[ ] MEDIUM**: Monthly risk appetite compliance monitoring
19. **[ ] MEDIUM**: Quarterly risk process improvement review

### Long-term Actions (Next 6 Months)

20. **[ ] MEDIUM**: Execute pilot phase (50-100 devices) - **DUE: 2026-02-01**
21. **[ ] MEDIUM**: Review risk register post-pilot, update scores
22. **[ ] MEDIUM**: Continue bi-weekly Steering Committee reviews until all risks within appetite
23. **[ ] LOW**: Quarterly Board updates on risk appetite compliance

---

## Validation & Sign-off

### Stakeholder Review

| Reviewer | Role | Review Status | Review Date | Comments |
|----------|------|---------------|-------------|----------|
| [Name] | IT Operations Director (Risk Register Owner) | PENDING | | |
| [Name] | CIO (Project Sponsor) | PENDING | | |
| [Name] | CISO (Security Executive) | PENDING | | |
| [Name] | CFO (Budget Owner) | PENDING | | |
| [Name] | Project Security Lead | PENDING | | |

### Document Approval

| Approver | Role | Approval Status | Approval Date | Signature |
|----------|------|-----------------|---------------|-----------|
| [Name] | IT Operations Director (Risk Register Owner) | PENDING | | |
| [Name] | CIO (Project Sponsor) | PENDING | | |
| [Name] | CISO (Security Executive) | PENDING | | |

By signing above, approvers confirm that the risk register accurately reflects project risks and is approved for ongoing risk management.

---

## Appendix A: v2.0 vs v3.0 Comparison

### Key Changes Summary

| Metric | v2.0 (INCORRECT) | v3.0 (CORRECTED) | Change |
|--------|------------------|------------------|--------|
| **Total Risks** | 22 | 18 | ↓ 4 risks (18% reduction) |
| **Critical Risks** | 3 (CAAT, DTSL, Timeline) | 1 (Timeline only) | ↓ 67% |
| **High Risks** | 9 | 5 | ↓ 44% |
| **Overall Residual Risk** | 193 | 130 | ↓ 33% improvement |
| **COMPLIANCE Risks** | 7 (5 exceed appetite) | 4 (3 exceed appetite) | ↓ 43% |
| **CISO Risk Ownership** | 43% (83 points) | 28% (36 points) | ↓ 35% |
| **Security Prep Timeline** | 3 months (MOD CAAT) | 2 months (organizational CAB) | ↓ 33% faster |
| **Security Costs** | £160K (includes CAAT overhead) | £140K (organizational only) | ↓ £20K savings |
| **Vendor Criteria** | CAAT expertise (MOD SbD) | Organizational governance (ISO/NIST/NCSC) | Framework corrected |
| **Security Roles** | DTSL, PSyO, IAO | Project Security Lead, CISO | Organizational roles |
| **Risks Exceeding Appetite** | 10 (45%) | 6 (33%) | ↓ 40% improvement |

### Risks REMOVED (NOT APPLICABLE)

| v2.0 Risk | Why Removed | Replacement in v3.0 |
|-----------|-------------|---------------------|
| **R-001: CAAT Registration** | CAAT only for NEW operational capabilities (not changes to existing systems) | R-001 (NEW): CAB Approval Delayed |
| **R-002: DTSL Appointment** | DTSL only for MOD SbD programmes | Use Project Security Lead (organizational role) |
| **R-004: BIA for CAAT** | CAAT BIA not required | R-004 (NEW): Security Impact Assessment (organizational template) |
| **R-006: ISN 2023/10 Supplier Attestation** | ISN 2023/10 only for MOD programmes | Not required |

### Risks UPDATED

| Risk ID | v2.0 Description | v3.0 Description | Change |
|---------|------------------|------------------|--------|
| **R-003** | Timeline slips due to 3-month MOD CAAT process | Timeline slips due to 2-month organizational CAB process | Timeline improved (3→2 months) |
| **R-005** | Threat model missing (owner: DTSL) | Threat model missing (owner: Project Security Lead) | Owner changed to organizational role |
| **R-007** | Vendor lacks CAAT expertise | Vendor lacks organizational security governance experience | Criteria changed to ISO 27001/NIST/NCSC |
| **R-010** | Cloud not MOD-assured | Cloud data sovereignty requirements (organizational policy) | Removed "MOD-assured" language |

---

**END OF RISK REGISTER v3.0**

---

*This risk register follows HM Treasury Orange Book (2023) principles and integrates with ArcKit's stakeholder-driven architecture governance framework. v3.0 CORRECTED to reflect organizational security governance (CAB, Security Impact Assessment) rather than MOD Secure by Design CAAT framework.*

*For questions: IT Operations Director | risk-register-owner@organization.gov.uk*

---

**Generated by**: ArcKit `/arckit.risk` command
**Generated on**: 2026-01-24
**ArcKit Version**: 1.0
**Project**: Windows 11 Deployment with Microsoft InTune (Project 001)
**Model**: claude-opus-4-5-20251101
**Generation Context**: Updated to latest template format (v4.0). Risk content preserved from v3.0 which corrected MOD SbD CAAT requirements to organizational security governance. Stakeholder analysis available in stakeholder-drivers.md.
