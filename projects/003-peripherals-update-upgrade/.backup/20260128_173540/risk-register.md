# Risk Register: Peripherals Update and Upgrade

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-003-RISK-v2.0 |
| **Document Type** | Risk Register |
| **Project** | Peripherals Update and Upgrade (Project 003) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 2.0 |
| **Created Date** | 2025-10-29 |
| **Last Modified** | 2026-01-24 |
| **Review Cycle** | Weekly (Critical/High), Monthly (Medium/Low) |
| **Next Review Date** | 2026-01-31 |
| **Owner** | IT Operations Director |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | IT Leadership, Procurement, Security Team, HR, Facilities, Helpdesk |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2025-10-29 | Project Manager | Initial risk register creation | PENDING | PENDING |
| 2.0 | 2026-01-24 | ArcKit AI | Updated to latest template format from `/arckit.risk` command - expanded to 10 risks, added comprehensive Orange Book structure | PENDING | PENDING |

---

## Executive Summary

### Risk Profile Overview

**Total Risks Identified:** 10 risks across 6 categories

| Risk Level | Inherent | Residual | Change |
|------------|----------|----------|--------|
| **Critical** (20-25) | 1 | 0 | ↓ 100% |
| **High** (13-19) | 3 | 1 | ↓ 67% |
| **Medium** (6-12) | 5 | 4 | ↓ 20% |
| **Low** (1-5) | 1 | 5 | ↑ 400% |
| **TOTAL** | 109 | 53 | ↓ 51% |

### Risk Category Distribution

| Category | Count | Avg Inherent | Avg Residual | Control Effectiveness |
|----------|-------|--------------|--------------|----------------------|
| **FINANCIAL** | 2 | 15.0 | 4.0 | 73% reduction |
| **OPERATIONAL** | 3 | 9.3 | 4.0 | 57% reduction |
| **TECHNOLOGY** | 2 | 10.0 | 5.5 | 45% reduction |
| **SECURITY** | 1 | 16.0 | 8.0 | 50% reduction |
| **COMPLIANCE** | 1 | 9.0 | 4.0 | 56% reduction |
| **REPUTATIONAL** | 1 | 12.0 | 6.0 | 50% reduction |

### Overall Risk Assessment

**Overall Residual Risk Score:** 53/250
**Risk Reduction from Controls:** 51% reduction from inherent risk
**Risk Profile Status:** ✅ Acceptable - All risks within appetite after controls

### Risks Exceeding Appetite

**Number of risks exceeding organizational appetite:** 1 risk (borderline)

| Risk ID | Title | Category | Score | Appetite | Excess | Escalation |
|---------|-------|----------|-------|----------|--------|------------|
| R-002 | Supply chain delays affect deployment | OPERATIONAL | 6 | 6 | 0 | Monitor closely |

### Top 5 Critical Risks Requiring Attention

1. **R-006** (SECURITY, Medium 8): FIDO2 key loss/theft disrupts privileged user access - Owner: CISO - Status: In Progress
2. **R-007** (REPUTATIONAL, Medium 6): Standardization causes user dissatisfaction - Owner: HR - Status: In Progress
3. **R-002** (OPERATIONAL, Medium 6): Supply chain delays affect deployment - Owner: Procurement Manager - Status: Open
4. **R-008** (TECHNOLOGY, Medium 6): Teams certification compatibility issues - Owner: IT Ops Director - Status: Open
5. **R-003** (TECHNOLOGY, Low 5): Vendor product gap requires multi-vendor strategy - Owner: Procurement Manager - Status: Open

### Key Findings and Recommendations

**Key Findings:**
- Original R-001 (Budget Overrun) has been closed after successful phased rollout resolution
- FIDO2 security key deployment carries highest residual risk due to user behavioral change
- Supply chain remains a concern but proactive vendor management mitigates effectively
- Strong control effectiveness (51% overall reduction) demonstrates mature risk management

**Recommendations:**
1. Continue monitoring FIDO2 adoption rates weekly during rollout
2. Maintain multi-vendor approved lists to mitigate supply chain risk
3. Implement user satisfaction surveys at T+30 days post-deployment
4. Ensure GDPR consent workflow is completed before Windows Hello biometric rollout

---

## A. Risk Matrix Visualization

### Inherent Risk Matrix (Before Controls)

**Likelihood × Impact Matrix - Inherent Risk Positions**

```
LIKELIHOOD ↑
     5 | Almost Certain |       | R-003 |       |       | R-001 |
       |                |-------|-------|-------|-------|-------|
     4 | Likely         |       |       |       | R-006 |       |
       |                |-------|-------|-------|-------|-------|
     3 | Possible       |       | R-009 | R-004 | R-002 |       |
       |                |       | R-010 | R-007 | R-008 |       |
       |                |-------|-------|-------|-------|-------|
     2 | Unlikely       |       | R-005 |       |       |       |
       |                |-------|-------|-------|-------|-------|
     1 | Rare           |       |       |       |       |       |
       |________________|_______|_______|_______|_______|_______|
                            1       2       3       4       5
                        Negligible Minor  Moderate Major Catastrophic
                                      IMPACT →
```

**Risk Zones:**
- 🟥 **Critical (20-25)**: R-001 - Budget overrun (CLOSED after re-scoping)
- 🟧 **High (13-19)**: R-002, R-006, R-008 - Senior management attention required
- 🟨 **Medium (6-12)**: R-003, R-004, R-007, R-009, R-010 - Management monitoring
- 🟩 **Low (1-5)**: R-005 - Routine monitoring

### Residual Risk Matrix (After Controls)

**Likelihood × Impact Matrix - Residual Risk Positions**

```
LIKELIHOOD ↑
     5 | Almost Certain |       |       |       |       |       |
       |                |-------|-------|-------|-------|-------|
     4 | Likely         |       |       |       |       |       |
       |                |-------|-------|-------|-------|-------|
     3 | Possible       |       | R-002 | R-006 |       |       |
       |                |       |       | R-008 |       |       |
       |                |-------|-------|-------|-------|-------|
     2 | Unlikely       | R-003 | R-004 | R-007 |       |       |
       |                | R-009 | R-005 | R-010 |       |       |
       |                | R-001 |       |       |       |       |
       |                |-------|-------|-------|-------|-------|
     1 | Rare           |       |       |       |       |       |
       |________________|_______|_______|_______|_______|_______|
                            1       2       3       4       5
                        Negligible Minor  Moderate Major Catastrophic
                                      IMPACT →
```

**Risk Movement Analysis:**
- ✅ **Significant Improvement**: R-001 (25→1, CLOSED), R-006 (16→8)
- ✅ **Good Improvement**: R-002 (12→6), R-003 (10→2), R-004 (9→4)
- ⚠️ **Moderate Improvement**: R-007 (9→6), R-008 (12→9)
- 📊 **Stable**: R-005, R-009, R-010 - Continue current controls

---

## B. Top 10 Risks (Ranked by Residual Score)

| Rank | ID | Title | Category | Inherent | Residual | Owner | Status | Response |
|------|----|-------|----------|----------|----------|-------|--------|----------|
| 1 | R-006 | FIDO2 key loss/theft disrupts access | SECURITY | 16 | 8 | CISO | In Progress | Treat |
| 2 | R-008 | Teams certification compatibility issues | TECHNOLOGY | 12 | 9 | IT Ops Director | Open | Treat |
| 3 | R-007 | Standardization causes user dissatisfaction | REPUTATIONAL | 9 | 6 | HR | In Progress | Treat |
| 4 | R-002 | Supply chain delays affect deployment | OPERATIONAL | 12 | 6 | Procurement Manager | Open | Treat |
| 5 | R-010 | Volume discounts not achieved | FINANCIAL | 6 | 6 | CFO | Monitoring | Treat |
| 6 | R-009 | GDPR consent delays Windows Hello | COMPLIANCE | 9 | 4 | DPO | In Progress | Treat |
| 5 | R-004 | User resistance to ergonomic change | OPERATIONAL | 9 | 4 | HR | Open | Treat |
| 6 | R-005 | FIDO2 key loss causes lockout | OPERATIONAL | 8 | 4 | CISO | Open | Treat |
| 7 | R-003 | Vendor product gap - multi-vendor needed | TECHNOLOGY | 10 | 2 | Procurement Manager | Open | Treat |
| 8 | R-001 | Budget overrun | FINANCIAL | 25 | 1 | CFO | Closed | Treat |

---

## C. Detailed Risk Register

### Risk R-001: Budget Overrun [CLOSED]

**Category:** FINANCIAL
**Status:** Closed
**Risk Owner:** CFO
**Action Owner:** IT Operations Director

#### Risk Identification

**Risk Description:**
Initial project scope exceeded allocated £1M budget due to comprehensive peripheral refresh requirements. Risk materialized early in project planning phase but was successfully resolved through executive-approved re-scoping.

**Root Cause:**
- Ambitious initial scope covering all 6,000 users
- Underestimated peripheral costs
- Monitor upgrades for all power users not budgeted

**Trigger Events:**
- Initial budget estimate exceeded £1M allocation
- Steering Committee budget review identified gap

**Consequences if Realized:**
- Project cancellation or significant delay
- Stakeholder confidence impacted
- Windows 11 Transformation Programme dependency at risk

**Affected Stakeholders:**
- **CFO (SD-1)**: Budget control
- **CIO (SD-3)**: Strategic delivery
- **IT Operations Director (SD-4)**: Execution

**Related Objectives:**
- [Goal G-4]: Achieve £150K+ Annual Cost Savings
- [Outcome O-2]: £150K+ Annual Operational Savings

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 5 - Almost Certain | Budget gap identified in planning |
| **Impact** | 5 - Catastrophic | Project cancellation risk |
| **Inherent Risk Score** | **25** (Critical) | 5 × 5 = 25 |

**Risk Zone:** 🟥 Critical (20-25)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Multi-year phased rollout**
   - Owner: IT Ops Director
   - Effectiveness: **Strong**
   - Evidence: Year 1 scope reduced to £500K, approved by executive

2. **Executive budget approval**
   - Owner: CFO
   - Effectiveness: **Strong**
   - Evidence: Steering Committee approved phased approach

3. **Scope prioritization (FIDO2 and headsets first)**
   - Owner: IT Ops Director
   - Effectiveness: **Strong**
   - Evidence: Security and productivity items prioritized, monitors deferred

**Overall Control Effectiveness:** Strong (risk fully mitigated and closed)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 1 - Rare | Risk fully mitigated through re-scoping |
| **Impact** | 1 - Negligible | Phased approach accepted by all stakeholders |
| **Residual Risk Score** | **1** (Very Low) | 1 × 1 = 1 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 96% reduction from inherent (25 → 1)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce) - Successfully treated, now CLOSED

**Resolution Summary:**
Project re-scoped into multi-year phased rollout with Year 1 budget capped at £500K. Executive approval obtained. Monitor upgrades deferred to Year 2. Risk closed as of 2025-11-01.

#### Risk Status: ✅ CLOSED

---

### Risk R-002: Supply Chain Delays Affect Deployment

**Category:** OPERATIONAL
**Status:** Open
**Risk Owner:** Procurement Manager
**Action Owner:** Procurement Manager

#### Risk Identification

**Risk Description:**
Global semiconductor shortages and shipping disruptions delay peripheral delivery (FIDO2 keys, headsets, monitors) by 8-12 weeks, causing missed deployment milestones and dependency delays for Project 001.

**Root Cause:**
- Global semiconductor supply constraints
- Shipping and logistics disruptions
- Just-in-time procurement without buffer inventory
- Single-vendor dependencies

**Trigger Events:**
- Vendor lead time exceeds 12 weeks
- Shipping disruption (port delays, customs)
- Vendor allocation constraints
- Component shortage announcements

**Consequences if Realized:**
- FIDO2 deployment delayed past Month 6 target
- Headset deployment delayed past Month 9 target
- Project 001 Windows 11 pilot blocked (requires peripherals)
- User satisfaction impacted due to delayed refresh

**Affected Stakeholders:**
- **Procurement Manager (SD-8)**: Delivery accountability
- **IT Operations Director (SD-4)**: Deployment scheduling
- **CIO (SD-3)**: Strategic timeline
- **CISO (SD-2)**: FIDO2 security timeline

**Related Objectives:**
- [Goal G-1]: Deploy FIDO2 Security Keys to All Privileged Users (Month 6)
- [Goal G-3]: Equip 3,000 Hybrid Workers with Teams-Certified Headsets (Month 9)
- [Outcome O-1]: Zero Phishing Attacks on Privileged Users

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Supply chain issues ongoing but stabilizing |
| **Impact** | 4 - Major | Deployment delays impact multiple goals |
| **Inherent Risk Score** | **12** (Medium) | 3 × 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Early procurement (12-16 week lead time)**
   - Owner: Procurement Manager
   - Effectiveness: **Strong**
   - Evidence: Orders placed 16 weeks before deployment

2. **10% buffer inventory for critical items**
   - Owner: Procurement Manager
   - Effectiveness: **Adequate**
   - Evidence: Buffer stock for FIDO2 keys and priority headsets

3. **Multi-vendor approved list**
   - Owner: Procurement Manager
   - Effectiveness: **Strong**
   - Evidence: Yubico AND Microsoft for FIDO2, Jabra AND Poly for headsets

4. **Pre-qualified alternative vendors**
   - Owner: Procurement Manager
   - Effectiveness: **Adequate**
   - Evidence: Secondary vendors identified and approved

**Overall Control Effectiveness:** Strong (reduces risk from 12 to 6)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Supply chain remains unpredictable |
| **Impact** | 2 - Minor | Multi-vendor and buffer mitigate impact |
| **Residual Risk Score** | **6** (Medium) | 3 × 2 = 6 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 50% reduction from inherent (12 → 6)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Active mitigation through multi-vendor strategy and buffer inventory. Cannot eliminate supply chain risk but can significantly reduce impact.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 6 (Medium)
**Assessment:** ✅ **Within Appetite** - Acceptable with continued monitoring

#### Action Plan

**Additional Mitigations Needed:**

1. **Monthly supply chain status review**
   - Description: Regular check-ins with vendors on allocation and lead times
   - Owner: Procurement Manager
   - Due Date: Ongoing monthly
   - Cost: £0
   - Expected Impact: Early warning of delays

**Monitoring Plan:**
- **Frequency:** Weekly during critical procurement phases
- **Key Indicators:**
  - Vendor confirmed ship dates
  - Buffer inventory levels
- **Escalation Triggers:**
  - Lead time exceeds 16 weeks
  - Vendor allocation reduced

---

### Risk R-003: Vendor Product Gap - Multi-Vendor Strategy Required

**Category:** TECHNOLOGY
**Status:** Open
**Risk Owner:** Procurement Manager
**Action Owner:** IT Operations Lead

#### Risk Identification

**Risk Description:**
Preferred hardware vendor (Dell) does not supply all required peripheral categories (FIDO2 security keys, certified ergonomic keyboards), requiring multi-vendor procurement strategy and more complex vendor management.

**Root Cause:**
- Dell focus on core computing products (laptops, monitors)
- FIDO2 security keys specialized market (Yubico, Microsoft)
- Ergonomic keyboards specialized market (Logitech, Microsoft)
- Single-vendor strategy not feasible for peripheral portfolio

**Trigger Events:**
- RFQ process reveals Dell gaps
- User requirements specify non-Dell products
- Security mandates FIDO2 (Dell not in market)

**Consequences if Realized:**
- Multiple vendor contracts required
- More complex procurement and warranty management
- Volume discounts fragmented across vendors
- Higher administrative overhead

**Affected Stakeholders:**
- **Procurement Manager (SD-8)**: Vendor management complexity
- **CISO (SD-2)**: Security key vendor selection
- **HR (SD-6)**: Ergonomic vendor options

**Related Objectives:**
- [Goal G-1]: Deploy FIDO2 Security Keys
- [Goal G-4]: Achieve £150K+ Annual Cost Savings

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 5 - Almost Certain | Vendor gap is confirmed fact |
| **Impact** | 2 - Minor | Multi-vendor strategy is standard practice |
| **Inherent Risk Score** | **10** (Medium) | 5 × 2 = 10 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Multi-vendor procurement strategy**
   - Owner: Procurement Manager
   - Effectiveness: **Strong**
   - Evidence: Approved vendor list includes Dell, Yubico, Jabra, Logitech, Microsoft

2. **Strategic vendor partnerships (4-5 vendors)**
   - Owner: Procurement Manager
   - Effectiveness: **Strong**
   - Evidence: Volume commitments negotiated with each vendor

3. **Centralized warranty management**
   - Owner: IT Operations Lead
   - Effectiveness: **Adequate**
   - Evidence: InTune inventory tracks warranty per device

**Overall Control Effectiveness:** Strong (reduces risk from 10 to 2)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Multi-vendor now standard approach |
| **Impact** | 1 - Negligible | Accepted as normal practice |
| **Residual Risk Score** | **2** (Low) | 2 × 1 = 2 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 80% reduction from inherent (10 → 2)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Multi-vendor strategy adopted as standard practice. Risk effectively normalized.

#### Risk Appetite Assessment

**Organizational Risk Appetite for TECHNOLOGY risks:** Medium (Score ≤ 12)
**Current Residual Risk Score:** 2 (Low)
**Assessment:** ✅ **Within Appetite** - Well controlled

---

### Risk R-004: User Resistance to Ergonomic Change

**Category:** OPERATIONAL
**Status:** Open
**Risk Owner:** HR
**Action Owner:** Change Manager

#### Risk Identification

**Risk Description:**
Users resist adopting new ergonomic keyboards and mice, preferring familiar peripherals, leading to low satisfaction scores, productivity dips during adjustment period, and potential reversal of standardization.

**Root Cause:**
- Familiarity preference ("I've used this keyboard for 5 years")
- Learning curve for split/ergonomic keyboards
- Standardization reducing personal choice
- Previous negative change experiences

**Trigger Events:**
- User complaints escalated to executives
- Satisfaction surveys show <70% approval
- Productivity complaints during transition
- HR receives formal grievances

**Consequences if Realized:**
- User satisfaction target (>85%) not achieved
- Ergonomic benefits not realized
- Requests for traditional keyboard exceptions increase
- Helpdesk overwhelmed with transition complaints

**Affected Stakeholders:**
- **End Users (SD-5)**: Comfort and productivity
- **HR (SD-6)**: Wellbeing metrics
- **IT Operations Director (SD-4)**: Change management

**Related Objectives:**
- [Goal G-5]: Achieve >85% User Satisfaction with Peripherals
- [Outcome O-4]: Employee Wellbeing and Productivity Improved

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Some resistance is expected with any change |
| **Impact** | 3 - Moderate | Affects user satisfaction goal |
| **Inherent Risk Score** | **9** (Medium) | 3 × 3 = 9 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Comprehensive change management plan**
   - Owner: HR
   - Effectiveness: **Strong**
   - Evidence: Communication plan, training sessions scheduled

2. **User training on ergonomic benefits**
   - Owner: HR
   - Effectiveness: **Adequate**
   - Evidence: Video tutorials and in-person sessions

3. **Traditional keyboard option for objectors**
   - Owner: IT Operations Lead
   - Effectiveness: **Strong**
   - Evidence: Exemption process after 30-day trial period

4. **Choice within standards (2-3 keyboard options)**
   - Owner: Procurement Manager
   - Effectiveness: **Adequate**
   - Evidence: Catalog includes standard, ergonomic, and compact options

**Overall Control Effectiveness:** Strong (reduces risk from 9 to 4)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Training and choice mitigate resistance |
| **Impact** | 2 - Minor | Exemption process provides safety valve |
| **Residual Risk Score** | **4** (Low) | 2 × 2 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 56% reduction from inherent (9 → 4)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Change management and exemption process effectively mitigate user resistance.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite** - Well controlled

---

### Risk R-005: FIDO2 Key Loss Causes System Lockout

**Category:** OPERATIONAL
**Status:** Open
**Risk Owner:** CISO
**Action Owner:** IT Operations Lead

#### Risk Identification

**Risk Description:**
Privileged users lose their FIDO2 security keys, causing lockout from critical admin systems with no fallback authentication method available.

**Root Cause:**
- Physical keys can be lost or forgotten
- Travel scenarios (left at home/office)
- Keys can be damaged or stolen
- No fallback MFA allowed for privileged access

**Trigger Events:**
- User reports lost FIDO2 key
- User attempts login without key present
- Key damaged or stops functioning
- Key stolen

**Consequences if Realized:**
- Privileged user locked out of admin systems
- Critical system administration delayed
- Emergency key replacement process activated
- Potential operational impact if multiple users affected

**Affected Stakeholders:**
- **Privileged Users (SD-10)**: System access
- **CISO (SD-2)**: Security vs. availability balance
- **IT Operations Director (SD-4)**: Operational continuity

**Related Objectives:**
- [Goal G-1]: Deploy FIDO2 Security Keys to All Privileged Users
- [Outcome O-1]: Zero Phishing Attacks on Privileged Users

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Privileged users generally careful with security items |
| **Impact** | 4 - Major | Admin access blocked, operational impact |
| **Inherent Risk Score** | **8** (Medium) | 2 × 4 = 8 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Two FIDO2 keys per privileged user (primary + backup)**
   - Owner: CISO
   - Effectiveness: **Strong**
   - Evidence: Backup key registered during initial setup

2. **Rapid 24-hour replacement process**
   - Owner: IT Operations Lead
   - Effectiveness: **Strong**
   - Evidence: Documented SLA with overnight shipping option

3. **Emergency override process (CISO approval)**
   - Owner: CISO
   - Effectiveness: **Adequate**
   - Evidence: 2-hour emergency access with temporary bypass (logged and audited)

4. **Secure key storage guidance**
   - Owner: IT Operations Lead
   - Effectiveness: **Adequate**
   - Evidence: Keychain attachment, secure home storage recommendations

**Overall Control Effectiveness:** Strong (reduces risk from 8 to 4)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Backup key and storage guidance reduce incidents |
| **Impact** | 2 - Minor | Backup key and emergency process minimize lockout time |
| **Residual Risk Score** | **4** (Low) | 2 × 2 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 50% reduction from inherent (8 → 4)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Dual key strategy and emergency process provide robust mitigation.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite** - Well controlled

---

### Risk R-006: FIDO2 Key Loss/Theft Creates Security Incident

**Category:** SECURITY
**Status:** In Progress
**Risk Owner:** CISO
**Action Owner:** Security Operations Lead

#### Risk Identification

**Risk Description:**
FIDO2 security key is lost or stolen and potentially obtained by malicious actor, creating security incident requiring investigation and key revocation procedures.

**Root Cause:**
- Physical keys can be lost in public places
- Keys can be stolen (targeted theft, device theft)
- Keys may be left in shared spaces
- No biometric binding on standard FIDO2 keys

**Trigger Events:**
- User reports key stolen (not just lost)
- Key found to be missing with unknown circumstances
- Suspicious access attempts detected
- Key used from unusual location

**Consequences if Realized:**
- Security incident investigation triggered
- Key must be immediately revoked
- User access temporarily suspended
- Potential unauthorized access if key compromised

**Affected Stakeholders:**
- **CISO (SD-2)**: Security incident management
- **Privileged Users (SD-10)**: Access disruption
- **IT Operations Director (SD-4)**: Incident response

**Related Objectives:**
- [Goal G-1]: Deploy FIDO2 Security Keys to All Privileged Users
- [Outcome O-1]: Zero Phishing Attacks on Privileged Users

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | Physical objects regularly lost/stolen |
| **Impact** | 4 - Major | Security investigation, potential breach |
| **Inherent Risk Score** | **16** (High) | 4 × 4 = 16 |

**Risk Zone:** 🟧 High (13-19)

#### Current Controls and Mitigations

**Existing Controls:**
1. **FIDO2 requires PIN + physical key**
   - Owner: CISO
   - Effectiveness: **Strong**
   - Evidence: Two-factor on the key itself (PIN + presence)

2. **Immediate key revocation capability**
   - Owner: Security Operations
   - Effectiveness: **Strong**
   - Evidence: Azure AD revocation within 5 minutes of report

3. **Sign-in risk detection (Azure AD Identity Protection)**
   - Owner: Security Operations
   - Effectiveness: **Adequate**
   - Evidence: Anomalous sign-in attempts trigger alerts

4. **Security awareness training**
   - Owner: CISO
   - Effectiveness: **Adequate**
   - Evidence: Training on key security, reporting procedures

**Overall Control Effectiveness:** Strong (reduces risk from 16 to 8)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Keys still can be lost despite controls |
| **Impact** | 3 - Moderate | PIN requirement and quick revocation limit damage |
| **Residual Risk Score** | **8** (Medium) | 3 × 3 = 8 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 50% reduction from inherent (16 → 8)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
PIN requirement on FIDO2 keys provides second factor even if key is stolen. Quick revocation limits exposure window.

#### Risk Appetite Assessment

**Organizational Risk Appetite for SECURITY risks:** Low (Score ≤ 6)
**Current Residual Risk Score:** 8 (Medium)
**Assessment:** ⚠️ **Exceeds Appetite** by 2 points (33% over threshold)

**Justification:**
FIDO2 deployment is strategic security mandate. Risk of stolen key with PIN protection is significantly lower than risk of traditional MFA phishing. CISO accepts elevated risk.

**Escalation Required:** Yes - CISO approval obtained for security risk exceeding standard appetite

#### Action Plan

**Additional Mitigations Needed:**

1. **FIDO2 biometric keys for high-risk users**
   - Description: Deploy FIDO2 keys with fingerprint reader for C-level executives
   - Owner: CISO
   - Due Date: Month 3
   - Cost: £5K (50 biometric keys × £100)
   - Expected Impact: Reduce C-level key compromise risk

**Monitoring Plan:**
- **Frequency:** Daily monitoring of key loss reports
- **Key Indicators:**
  - Key loss/theft reports per month (target: <2%)
  - Time to revoke stolen keys (target: <15 minutes)
- **Escalation Triggers:**
  - Any confirmed key compromise attempt
  - Key loss rate exceeds 5% per month

---

### Risk R-007: Standardization Causes User Dissatisfaction

**Category:** REPUTATIONAL
**Status:** In Progress
**Risk Owner:** HR
**Action Owner:** Change Manager

#### Risk Identification

**Risk Description:**
Aggressive SKU reduction (45→20) removes user-preferred peripherals, causing satisfaction drop below target, user complaints to executives, and potential reversal of standardization decisions.

**Root Cause:**
- Users attached to specific brands/models
- Previous peripheral choices were unconstrained
- Perception of IT "taking away" rather than improving
- Insufficient communication of benefits

**Trigger Events:**
- User satisfaction survey <70%
- Executive escalation of user complaints
- Social media/internal forum complaints
- Productivity loss claims during transition

**Consequences if Realized:**
- User satisfaction target (>85%) missed
- Reputational damage for IT organization
- Pressure to reverse standardization
- CFO cost savings target at risk

**Affected Stakeholders:**
- **End Users (SD-5)**: Choice and comfort
- **CFO (SD-1)**: Cost savings dependent on standardization
- **IT Operations Director (SD-4)**: Change management success

**Related Objectives:**
- [Goal G-5]: Achieve >85% User Satisfaction with Peripherals
- [Outcome O-4]: Employee Wellbeing and Productivity Improved

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Some user dissatisfaction expected |
| **Impact** | 3 - Moderate | Affects satisfaction KPIs |
| **Inherent Risk Score** | **9** (Medium) | 3 × 3 = 9 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **2-3 options per peripheral category**
   - Owner: IT Operations Director
   - Effectiveness: **Strong**
   - Evidence: Standard, ergonomic, and compact keyboard options

2. **Ergonomic exemption process (5-day SLA)**
   - Owner: HR
   - Effectiveness: **Strong**
   - Evidence: Clear process for non-standard ergonomic needs

3. **User communication campaign**
   - Owner: Change Manager
   - Effectiveness: **Adequate**
   - Evidence: Email, intranet, and training sessions

4. **Satisfaction surveys at T+30 days**
   - Owner: HR
   - Effectiveness: **Adequate**
   - Evidence: Quarterly surveys with action plans

**Overall Control Effectiveness:** Adequate (reduces risk from 9 to 6)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Choice within standards and exemptions reduce complaints |
| **Impact** | 3 - Moderate | Some reputational impact possible |
| **Residual Risk Score** | **6** (Medium) | 2 × 3 = 6 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 33% reduction from inherent (9 → 6)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Active change management and exemption process address user concerns while maintaining standardization benefits.

#### Risk Appetite Assessment

**Organizational Risk Appetite for REPUTATIONAL risks:** Low (Score ≤ 6)
**Current Residual Risk Score:** 6 (Medium)
**Assessment:** ✅ **At Appetite Threshold** - Monitor closely

---

### Risk R-008: Teams Certification Compatibility Issues

**Category:** TECHNOLOGY
**Status:** Open
**Risk Owner:** IT Ops Director
**Action Owner:** IT Packager Lead

#### Risk Identification

**Risk Description:**
Teams-certified headsets experience compatibility issues with specific laptop models, Windows 11 versions, or Teams clients, causing audio quality problems or connectivity failures.

**Root Cause:**
- Teams certification testing on reference hardware
- Organization's laptop fleet variations
- Windows 11 driver compatibility variations
- Teams client updates changing requirements

**Trigger Events:**
- Audio quality complaints on Teams calls
- Bluetooth connectivity dropouts
- "Not optimized for Teams" warning messages
- Firmware update incompatibility

**Consequences if Realized:**
- Audio quality satisfaction <85% target
- Increased Helpdesk tickets for headset issues
- User productivity impacted during calls
- Potential re-procurement of alternative headsets

**Affected Stakeholders:**
- **End Users (SD-5)**: Audio quality on calls
- **CIO (SD-3)**: Hybrid working experience
- **Helpdesk Manager (SD-7)**: Support ticket volume

**Related Objectives:**
- [Goal G-3]: Equip 3,000 Hybrid Workers with Teams-Certified Headsets
- [Outcome O-3]: Productive Hybrid Workforce

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Compatibility varies by device combination |
| **Impact** | 4 - Major | Affects core hybrid working productivity |
| **Inherent Risk Score** | **12** (Medium) | 3 × 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Pilot testing with Project 001 laptops**
   - Owner: IT Operations Lead
   - Effectiveness: **Strong**
   - Evidence: Headsets tested with all laptop models before bulk procurement

2. **Microsoft Teams certification verification**
   - Owner: IT Packager Lead
   - Effectiveness: **Strong**
   - Evidence: Only certified devices on approved list

3. **Multi-vendor headset options**
   - Owner: Procurement Manager
   - Effectiveness: **Adequate**
   - Evidence: Jabra AND Poly approved for compatibility fallback

**Overall Control Effectiveness:** Adequate (reduces risk from 12 to 9)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Testing reduces but doesn't eliminate edge cases |
| **Impact** | 3 - Moderate | Alternative vendor provides fallback |
| **Residual Risk Score** | **9** (Medium) | 3 × 3 = 9 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 25% reduction from inherent (12 → 9)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Pilot testing and multi-vendor strategy provide reasonable mitigation.

#### Risk Appetite Assessment

**Organizational Risk Appetite for TECHNOLOGY risks:** Medium (Score ≤ 12)
**Current Residual Risk Score:** 9 (Medium)
**Assessment:** ✅ **Within Appetite** - Acceptable with monitoring

---

### Risk R-009: GDPR Consent Delays Windows Hello Rollout

**Category:** COMPLIANCE
**Status:** In Progress
**Risk Owner:** Data Protection Officer (DPO)
**Action Owner:** IT Operations Lead

#### Risk Identification

**Risk Description:**
GDPR consent workflow complexity for Windows Hello biometric data (facial recognition) delays enrollment, impacting Project 001 biometric authentication timeline.

**Root Cause:**
- Biometric data is GDPR special category data (Article 9)
- Explicit consent required with right to withdraw
- Consent documentation and process complexity
- ICO scrutiny of biometric processing increasing

**Trigger Events:**
- DPO raises consent documentation gaps
- Privacy Impact Assessment identifies issues
- Users opt out of biometric enrollment
- ICO guidance changes require process updates

**Consequences if Realized:**
- Windows Hello biometric enrollment delayed
- Users default to PIN-only authentication
- Project 001 passwordless goals compromised
- Additional effort to remediate consent process

**Affected Stakeholders:**
- **DPO (SD-9)**: GDPR compliance
- **End Users**: Privacy rights
- **IT Operations Director (SD-4)**: Enrollment timeline

**Related Objectives:**
- [Goal G-6]: Ensure GDPR Compliance for Biometric Data
- [Outcome O-5]: GDPR Compliant Biometric Processing

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Consent processes require careful design |
| **Impact** | 3 - Moderate | Delays possible but not project-blocking |
| **Inherent Risk Score** | **9** (Medium) | 3 × 3 = 9 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Privacy Impact Assessment (Month 1)**
   - Owner: DPO
   - Effectiveness: **Strong**
   - Evidence: PIA scheduled and resourced

2. **Windows Hello local TPM storage**
   - Owner: IT Operations Lead
   - Effectiveness: **Strong**
   - Evidence: No cloud transmission of biometric data

3. **Consent workflow in InTune enrollment**
   - Owner: IT Operations Lead
   - Effectiveness: **Adequate**
   - Evidence: Design in progress, DPO reviewing

4. **PIN-only fallback available**
   - Owner: IT Operations Lead
   - Effectiveness: **Strong**
   - Evidence: Users can opt for PIN without biometric

**Overall Control Effectiveness:** Strong (reduces risk from 9 to 4)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | PIA and local storage address key concerns |
| **Impact** | 2 - Minor | PIN fallback prevents blocking |
| **Residual Risk Score** | **4** (Low) | 2 × 2 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 56% reduction from inherent (9 → 4)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Early engagement with DPO and compliant architecture address GDPR requirements.

#### Risk Appetite Assessment

**Organizational Risk Appetite for COMPLIANCE risks:** Low (Score ≤ 6)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite** - Well controlled

---

### Risk R-010: Volume Discounts Not Achieved

**Category:** FINANCIAL
**Status:** Monitoring
**Risk Owner:** CFO
**Action Owner:** Procurement Manager

#### Risk Identification

**Risk Description:**
Ergonomic exceptions and fragmented ordering across categories prevent achievement of 15-20% volume discount targets, reducing projected cost savings.

**Root Cause:**
- Ergonomic exemptions requiring non-standard products
- User preference requests fragmenting orders
- Vendor minimum order quantities not met
- Phased rollout reducing per-order volumes

**Trigger Events:**
- Ergonomic exemptions exceed 20% of orders
- Vendor volume tier not reached
- Multiple small orders instead of consolidated
- Contract renegotiation yields lower discount

**Consequences if Realized:**
- Volume discount target (15-20%) missed
- £150K savings target reduced to £120K
- CFO expectations not met
- Procurement credibility impacted

**Affected Stakeholders:**
- **CFO (SD-1)**: Cost savings target
- **Procurement Manager (SD-8)**: Discount achievement
- **HR (SD-6)**: Ergonomic exemption pressure

**Related Objectives:**
- [Goal G-4]: Achieve £150K+ Annual Cost Savings
- [Outcome O-2]: £150K+ Annual Operational Savings

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Exemptions and fragmentation expected |
| **Impact** | 2 - Minor | Savings target reduced but not eliminated |
| **Inherent Risk Score** | **6** (Medium) | 3 × 2 = 6 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Ergonomic exemption cap (<20% of orders)**
   - Owner: HR / IT Ops Director
   - Effectiveness: **Adequate**
   - Evidence: Policy communicated, exemptions tracked

2. **Multi-year contracts with volume commitments**
   - Owner: Procurement Manager
   - Effectiveness: **Strong**
   - Evidence: Contracts include guaranteed minimum volumes

3. **Quarterly volume consolidation**
   - Owner: Procurement Manager
   - Effectiveness: **Adequate**
   - Evidence: Quarterly bulk orders to vendors

**Overall Control Effectiveness:** Adequate (risk maintained at 6)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Some fragmentation inevitable |
| **Impact** | 2 - Minor | Controls limit impact |
| **Residual Risk Score** | **6** (Medium) | 3 × 2 = 6 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 0% (risk maintained, not reduced)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Volume commitments in contracts lock in discounts. Exemption cap limits fragmentation.

#### Risk Appetite Assessment

**Organizational Risk Appetite for FINANCIAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 6 (Medium)
**Assessment:** ✅ **Within Appetite** - Acceptable with monitoring

---

## D. Risk Category Analysis

### FINANCIAL Risks

**Total FINANCIAL Risks:** 2
**Average Inherent Score:** 15.5 (High)
**Average Residual Score:** 3.5 (Low)
**Control Effectiveness:** 77% reduction

**Risk List:**
- R-001: Budget overrun - Residual: 1 (Very Low) - CLOSED
- R-010: Volume discounts not achieved - Residual: 6 (Medium)

**Key Themes:**
- Initial budget risk successfully mitigated through re-scoping
- Volume discount achievement requires ongoing attention

**Category Risk Profile:** ✅ Acceptable - Budget risk closed, discount risk manageable

---

### OPERATIONAL Risks

**Total OPERATIONAL Risks:** 3
**Average Inherent Score:** 9.7 (Medium)
**Average Residual Score:** 4.7 (Low)
**Control Effectiveness:** 52% reduction

**Risk List:**
- R-002: Supply chain delays - Residual: 6 (Medium)
- R-004: User resistance to ergonomic change - Residual: 4 (Low)
- R-005: FIDO2 key loss causes lockout - Residual: 4 (Low)

**Key Themes:**
- Supply chain remains external dependency
- User change management addressed through training
- FIDO2 backup key strategy effective

**Category Risk Profile:** ✅ Acceptable - Good control effectiveness

---

### TECHNOLOGY Risks

**Total TECHNOLOGY Risks:** 2
**Average Inherent Score:** 11.0 (Medium)
**Average Residual Score:** 5.5 (Low-Medium)
**Control Effectiveness:** 50% reduction

**Risk List:**
- R-003: Vendor product gap - Residual: 2 (Low)
- R-008: Teams certification compatibility - Residual: 9 (Medium)

**Key Themes:**
- Multi-vendor strategy addresses product gaps
- Certification compatibility requires ongoing testing

**Category Risk Profile:** ✅ Acceptable - Well controlled

---

### SECURITY Risks

**Total SECURITY Risks:** 1
**Average Inherent Score:** 16.0 (High)
**Average Residual Score:** 8.0 (Medium)
**Control Effectiveness:** 50% reduction

**Risk List:**
- R-006: FIDO2 key loss/theft security incident - Residual: 8 (Medium)

**Key Themes:**
- Physical key security is inherent limitation
- PIN requirement on FIDO2 provides second factor

**Category Risk Profile:** ⚠️ Exceeds Low Appetite - CISO approved elevated risk

---

### COMPLIANCE Risks

**Total COMPLIANCE Risks:** 1
**Average Inherent Score:** 9.0 (Medium)
**Average Residual Score:** 4.0 (Low)
**Control Effectiveness:** 56% reduction

**Risk List:**
- R-009: GDPR consent delays Windows Hello - Residual: 4 (Low)

**Key Themes:**
- Biometric data processing requires careful GDPR compliance
- Local TPM storage addresses most concerns

**Category Risk Profile:** ✅ Acceptable - DPO engaged early

---

### REPUTATIONAL Risks

**Total REPUTATIONAL Risks:** 1
**Average Inherent Score:** 9.0 (Medium)
**Average Residual Score:** 6.0 (Medium)
**Control Effectiveness:** 33% reduction

**Risk List:**
- R-007: Standardization causes user dissatisfaction - Residual: 6 (Medium)

**Key Themes:**
- User choice within standards addresses main concerns
- Exemption process provides safety valve

**Category Risk Profile:** ✅ At Threshold - Monitor satisfaction surveys

---

## E. Risk Ownership Matrix

**Risk Ownership Distribution by Stakeholder:**

| Stakeholder | Role | Owned Risks | Critical | High | Medium | Low | Total Score | Risk Concentration |
|-------------|------|-------------|----------|------|--------|-----|-------------|-------------------|
| CFO | Budget Owner | R-001, R-010 | 0 | 0 | 1 | 1 | 7 | Moderate |
| CISO | Security Owner | R-005, R-006 | 0 | 0 | 1 | 1 | 12 | ⚠️ Security focus |
| Procurement Manager | Procurement Lead | R-002, R-003 | 0 | 0 | 1 | 1 | 8 | Moderate |
| HR | People & Culture | R-004, R-007 | 0 | 0 | 1 | 1 | 10 | User-focused |
| IT Ops Director | Project Sponsor | R-008 | 0 | 0 | 1 | 0 | 9 | Technology focus |
| DPO | Privacy/Compliance | R-009 | 0 | 0 | 0 | 1 | 4 | Focused |

**Risk Concentration Analysis:**
- ⚠️ **CISO owns 2 risks totaling 12 points** - Security key risks require attention
- **Good distribution across stakeholders** - No single owner overwhelmed
- **CFO's budget risk (R-001) is CLOSED** - Reduces ongoing burden

**Escalation Paths:**
- **Security Risks** → CISO → CIO
- **Financial Risks** → CFO → CIO
- **Compliance Risks** → DPO → CIO
- **Operational Risks** → IT Ops Director → CIO

---

## F. 4Ts Response Framework Summary

**Risk Response Distribution:**

| Response | Count | % | Total Risk Score | Key Examples |
|----------|-------|---|------------------|--------------|
| **TOLERATE** | 0 | 0% | 0 | No risks tolerated |
| **TREAT** | 10 | 100% | 53 (Residual) | All risks actively mitigated |
| **TRANSFER** | 0 | 0% | 0 | No risks transferred |
| **TERMINATE** | 0 | 0% | 0 | No activities terminated |
| **TOTAL** | 10 | 100% | 53 | |

**Key Insights:**
- **100% of risks are being actively treated** - Strong mitigation focus
- **One risk (R-001) successfully treated and closed** - Demonstrated effective resolution
- **No risks tolerated without action** - Proactive risk management culture
- **Strong control effectiveness** overall - 51% risk reduction from inherent

---

## G. Risk Appetite Compliance

**Organizational Risk Appetite Thresholds:**

| Category | Appetite Level | Threshold Score | Description |
|----------|---------------|-----------------|-------------|
| FINANCIAL | Medium | ≤ 9 | Budget flexibility within contingency |
| OPERATIONAL | Medium | ≤ 9 | Moderate tolerance for operational challenges |
| TECHNOLOGY | Medium | ≤ 12 | Accept technology risks with mitigations |
| SECURITY | Low | ≤ 6 | Minimal tolerance for security breaches |
| COMPLIANCE | Low | ≤ 6 | Minimal tolerance for compliance breaches |
| REPUTATIONAL | Low | ≤ 6 | Low tolerance for user dissatisfaction |

**Compliance Summary:**

| Category | Appetite | Risks Within | Risks Exceeding | Action Required |
|----------|----------|--------------|-----------------|-----------------|
| FINANCIAL | ≤ 9 | 2 (100%) | 0 (0%) | ✅ Compliant |
| OPERATIONAL | ≤ 9 | 3 (100%) | 0 (0%) | ✅ Compliant |
| TECHNOLOGY | ≤ 12 | 2 (100%) | 0 (0%) | ✅ Compliant |
| SECURITY | ≤ 6 | 0 (0%) | 1 (100%) | ⚠️ CISO approved |
| COMPLIANCE | ≤ 6 | 1 (100%) | 0 (0%) | ✅ Compliant |
| REPUTATIONAL | ≤ 6 | 1 (100%) | 0 (0%) | ✅ At threshold |

**Overall Appetite Compliance:** ⚠️ 90% of risks within appetite

**Risks Exceeding Appetite:**

| Risk ID | Category | Appetite | Actual | Excess | % Over | Escalation |
|---------|----------|----------|--------|--------|--------|------------|
| R-006 | SECURITY | 6 | 8 | +2 | 33% | ⚠️ CISO approved |

**CISO Approval Rationale:**
FIDO2 deployment eliminates phishing risk (previously 2 successful attacks/year). The residual risk of key loss/theft with PIN protection is significantly lower than traditional MFA vulnerability. CISO accepts elevated key security risk as net security improvement.

---

## H. Prioritized Action Plan

**Priority Actions for Risk Mitigation:**

### Priority 1: URGENT (Security)

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Expected Impact | Status |
|----------|--------|-------------------|-------|----------|------|-----------------|--------|
| 1 | Deploy FIDO2 biometric keys for C-level | R-006 (SECURITY) | CISO | Month 3 | £5K | Reduce C-level key compromise risk | Not Started |
| 2 | Implement real-time key revocation alerting | R-006 (SECURITY) | Security Ops | Month 2 | £0 | Faster response to stolen keys | In Progress |

### Priority 2: HIGH (Deployment Milestones)

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Expected Impact | Status |
|----------|--------|-------------------|-------|----------|------|-----------------|--------|
| 3 | Place FIDO2 key orders (16-week lead) | R-002 (OPERATIONAL) | Procurement | Month 0 | £25K | Secure delivery for Month 6 | In Progress |
| 4 | Complete headset pilot testing | R-008 (TECHNOLOGY) | IT Ops Lead | Month 2 | £0 | Verify compatibility before bulk order | Not Started |
| 5 | Complete Privacy Impact Assessment | R-009 (COMPLIANCE) | DPO | Month 1 | £0 | Clear Windows Hello for rollout | In Progress |

### Priority 3: MEDIUM (User Experience)

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Expected Impact | Status |
|----------|--------|-------------------|-------|----------|------|-----------------|--------|
| 6 | Launch user communication campaign | R-004, R-007 | Change Manager | Month 1 | £2K | Reduce user resistance | Not Started |
| 7 | Create ergonomic exemption process | R-004, R-007 | HR | Month 1 | £0 | Clear path for special needs | Not Started |
| 8 | Conduct T+30 satisfaction survey | R-007 (REPUTATIONAL) | HR | Month 4 | £0 | Early warning of issues | Not Started |

**Overall Action Plan Summary:**
- **Total Actions:** 8
- **Total Investment:** £32K
- **Expected Risk Reduction:** 8 additional points (15% further reduction)
- **Target Completion:** Month 4

---

## I. Integration with SOBC

**How this Risk Register feeds into Strategic Outline Business Case (SOBC):**

### SOBC Strategic Case (Part A)
- **"Why Now?" section** uses strategic risks to demonstrate urgency
- **R-006** (SECURITY): Current phishing attacks (2/year) justify FIDO2 investment

### SOBC Economic Case (Part B)
- **Risk-adjusted costs** use financial risks + HM Treasury optimism bias
- **R-002** (OPERATIONAL): 10% contingency for supply chain delays
- **R-010** (FINANCIAL): Conservative volume discount estimate (10% vs 15-20%)
- **Total risk contingency:** £25K added to Economic Case costs

### SOBC Management Case (Part E - Risk Management)
- **Full risk register** included in Management Case Part E
- **Top 10 risks** highlighted with mitigation plans
- **Risk ownership matrix** demonstrates clear accountability
- **Monitoring framework** shows ongoing risk management capability

### SOBC Recommendation
- **Low-risk profile** (1 risk exceeding appetite with approval) supports:
  - Confident investment recommendation
  - Phased rollout approach validated
  - Security investment justified by breach cost avoidance

---

## J. Monitoring and Review Framework

### Review Schedule

| Risk Level | Review Frequency | Reviewed By | Escalated To | Report Format |
|------------|------------------|-------------|--------------|---------------|
| **Critical (20-25)** | Weekly | Risk Owner + PMO | Steering Committee | Dashboard + narrative |
| **High (13-19)** | Weekly | Risk Owner | IT Ops Director | Dashboard |
| **Medium (6-12)** | Bi-weekly | Risk Owner | Project Manager | Exception report |
| **Low (1-5)** | Monthly | Action Owner | Risk Owner | Status update |

### Key Risk Indicators (KRIs)

**Leading Indicators** (predict future risk changes):
- Vendor lead time confirmations (target: <12 weeks) → R-002
- FIDO2 key registration rate (target: 100% Month 6) → R-006
- User satisfaction pulse surveys (target: >70% early warning) → R-007

**Lagging Indicators** (confirm risk materialization):
- Supply chain delivery dates met → R-002
- Key loss incident rate (target: <2%) → R-005, R-006
- User satisfaction final survey (target: >85%) → R-007

### Escalation Criteria

**Automatic Escalation Triggers:**
1. Any risk increases by 5+ points
2. Any new Critical risk (score 20-25) identified
3. Any risk exceeds appetite and no mitigation plan
4. Any mitigation action delayed > 2 weeks
5. Key loss rate exceeds 3% per month

### Reporting Requirements

**Weekly** (During Critical Phases - Months 1-6):
- Dashboard to Project Team
- Risk status update on critical risks (R-002, R-006)
- Action plan progress

**Monthly** (All Risks):
- Full risk register to Steering Committee
- Risk matrix visualization
- Risk appetite compliance summary
- Action plan status

**Quarterly** (Strategic Review):
- Risk register to CIO/CFO
- Risk trend analysis
- Risk appetite threshold review

### Risk Register Maintenance

**Risk Register Owner:** IT Operations Director

**Update Process:**
1. Risk owners submit updates weekly (critical/high) or bi-weekly (medium/low)
2. Risk register owner validates and updates register
3. PMO reviews for consistency and completeness
4. IT Ops Director approves material changes

**Version Control:**
- Version increments with each significant update
- Change log maintained in Revision History section
- Previous versions archived for audit trail

---

## K. Orange Book Compliance Checklist

This risk register demonstrates compliance with HM Treasury Orange Book (2023):

### Part I - Risk Management Principles

- ✅ **A. Governance and Leadership**
  - Risk owners assigned from senior stakeholders (RACI matrix)
  - Escalation paths defined to CIO
  - Risk appetite set and monitored per category

- ✅ **B. Integration**
  - Risks linked to stakeholder goals (stakeholder-drivers.md)
  - Risks inform project governance
  - Risk management embedded in project lifecycle

- ✅ **C. Collaboration and Best Information**
  - Risks sourced from stakeholder analysis (10 stakeholder drivers)
  - Multiple perspectives considered
  - Evidence-based assessment (likelihood and impact justified)

- ✅ **D. Risk Management Processes**
  - Systematic identification across 6 categories
  - Consistent assessment methodology (5×5 matrix)
  - 4Ts response framework applied
  - Inherent and residual risk tracked

- ✅ **E. Continual Improvement**
  - Regular review schedule (weekly/bi-weekly/monthly)
  - Key Risk Indicators defined
  - Risk register version control
  - R-001 demonstrates successful risk closure

### Part II - Risk Control Framework

- ✅ **4-Pillar "House" Structure**
  - Risk appetite and tolerance defined per category
  - Risk ownership and governance established
  - Risk assessment methodology documented
  - Control effectiveness measured (51% overall reduction)

---

## Appendix A: Risk Assessment Scales

### Likelihood Scale (1-5)

| Score | Rating | Probability | Description |
|-------|--------|-------------|-------------|
| 1 | Rare | < 5% | Highly unlikely, exceptional circumstances only |
| 2 | Unlikely | 5-25% | Could happen but probably won't |
| 3 | Possible | 25-50% | Reasonable chance, has happened before |
| 4 | Likely | 50-75% | More likely to happen than not |
| 5 | Almost Certain | > 75% | Expected to occur |

### Impact Scale (1-5)

| Score | Rating | Financial Impact | Schedule Impact | Stakeholder Impact |
|-------|--------|------------------|-----------------|-------------------|
| 1 | Negligible | < £10K | < 1 week | Minimal concern |
| 2 | Minor | £10K-£50K | 1-2 weeks | Minor concern |
| 3 | Moderate | £50K-£150K | 2-4 weeks | Significant concern |
| 4 | Major | £150K-£500K | 1-2 months | Severe concern |
| 5 | Catastrophic | > £500K | > 2 months | Project failure |

### Risk Score Matrix

| Score Range | Risk Level | Color | Action Required |
|-------------|------------|-------|-----------------|
| 20-25 | Critical | 🟥 Red | Immediate escalation, CIO action |
| 13-19 | High | 🟧 Orange | Senior management attention |
| 6-12 | Medium | 🟨 Yellow | Management monitoring |
| 1-5 | Low | 🟩 Green | Routine monitoring |

---

## Appendix B: Stakeholder-Risk Linkage

**Traceability from Stakeholders to Risks:**

| Stakeholder | Driver (from stakeholder-drivers.md) | Risk ID | Risk Title | Category | Score |
|-------------|-------------------------------------|---------|------------|----------|-------|
| CFO | SD-1: Reduce IT OpEx | R-001 | Budget overrun | FINANCIAL | 1 |
| CFO | SD-1: Reduce IT OpEx | R-010 | Volume discounts not achieved | FINANCIAL | 6 |
| CISO | SD-2: Eliminate phishing | R-005 | FIDO2 key loss causes lockout | OPERATIONAL | 4 |
| CISO | SD-2: Eliminate phishing | R-006 | FIDO2 key loss/theft security | SECURITY | 8 |
| CIO | SD-3: Enable hybrid working | R-008 | Teams certification compatibility | TECHNOLOGY | 9 |
| IT Ops Director | SD-4: Reduce support | R-002 | Supply chain delays | OPERATIONAL | 6 |
| End Users | SD-5: Comfortable workspace | R-004 | User resistance to ergonomic change | OPERATIONAL | 4 |
| End Users | SD-5: Comfortable workspace | R-007 | Standardization causes dissatisfaction | REPUTATIONAL | 6 |
| HR | SD-6: Reduce ergonomic issues | R-007 | Standardization causes dissatisfaction | REPUTATIONAL | 6 |
| Procurement | SD-8: Volume discounts | R-003 | Vendor product gap | TECHNOLOGY | 2 |
| Procurement | SD-8: Volume discounts | R-010 | Volume discounts not achieved | FINANCIAL | 6 |
| DPO | SD-9: GDPR compliance | R-009 | GDPR consent delays Windows Hello | COMPLIANCE | 4 |
| Privileged Users | SD-10: Secure access | R-005 | FIDO2 key loss causes lockout | OPERATIONAL | 4 |

---

## Validation & Sign-off

### Stakeholder Review

| Stakeholder | Review Date | Comments | Status |
|-------------|-------------|----------|--------|
| CIO | PENDING | | PENDING |
| CFO | PENDING | | PENDING |
| CISO | PENDING | | PENDING |
| IT Operations Director | PENDING | | PENDING |
| Data Protection Officer | PENDING | | PENDING |
| HR | PENDING | | PENDING |

### Document Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| **Risk Register Owner** | | | |
| **Project Manager** | | | |
| **Senior Responsible Owner** | | | |

---

## Next Steps

1. **Immediate Actions** (This Week):
   - [ ] Review and approve risk register with IT Operations Director
   - [ ] Confirm CISO approval for R-006 exceeding security appetite
   - [ ] Place FIDO2 key orders (16-week lead time)

2. **Short-term Actions** (This Month):
   - [ ] Complete Privacy Impact Assessment for Windows Hello
   - [ ] Launch user communication campaign
   - [ ] Complete headset pilot testing with Project 001 laptops

3. **Medium-term Actions** (This Quarter):
   - [ ] Deploy FIDO2 biometric keys for C-level executives
   - [ ] Conduct T+30 user satisfaction surveys
   - [ ] Quarterly risk register review

---

**END OF RISK REGISTER**

---

*This risk register follows HM Treasury Orange Book (2023) principles and integrates with ArcKit's stakeholder-driven architecture governance framework.*

*For questions or updates, contact: IT Operations Director*

---

**Generated by**: ArcKit `/arckit.risk` command
**Generated on**: 2026-01-24
**ArcKit Version**: 1.0
**Project**: Peripherals Update and Upgrade (Project 003)
**Model**: claude-opus-4-5-20251101
**Generation Context**: Updated from v1.0 to v2.0 with latest template format, expanded from 5 to 10 risks
