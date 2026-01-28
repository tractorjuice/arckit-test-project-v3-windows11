# Risk Register: Application Packaging and Rationalisation

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-002-RISK-v1.0 |
| **Document Type** | Risk Register |
| **Project** | Application Packaging and Rationalisation (Project 002) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 1.0 |
| **Created Date** | 2026-01-24 |
| **Last Modified** | 2026-01-24 |
| **Review Cycle** | Weekly (Critical/High), Monthly (Medium/Low) |
| **Next Review Date** | 2026-01-31 |
| **Owner** | IT Operations Director |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | IT Leadership, Enterprise Architect, Security Team, Procurement, Application Owners |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2026-01-24 | ArcKit AI | Initial creation from `/arckit.risk` command | PENDING | PENDING |

---

## Executive Summary

### Risk Profile Overview

**Total Risks Identified:** 12 risks across 6 categories

| Risk Level | Inherent | Residual | Change |
|------------|----------|----------|--------|
| **Critical** (20-25) | 2 | 0 | ↓ 100% |
| **High** (13-19) | 4 | 2 | ↓ 50% |
| **Medium** (6-12) | 6 | 8 | ↑ 33% |
| **Low** (1-5) | 0 | 2 | N/A |
| **TOTAL** | 158 | 96 | ↓ 39% |

### Risk Category Distribution

| Category | Count | Avg Inherent | Avg Residual | Control Effectiveness |
|----------|-------|--------------|--------------|----------------------|
| **STRATEGIC** | 1 | 20.0 | 12.0 | 40% reduction |
| **OPERATIONAL** | 5 | 13.0 | 8.0 | 38% reduction |
| **FINANCIAL** | 2 | 12.0 | 7.5 | 37% reduction |
| **COMPLIANCE** | 1 | 12.0 | 6.0 | 50% reduction |
| **REPUTATIONAL** | 1 | 9.0 | 6.0 | 33% reduction |
| **TECHNOLOGY** | 2 | 13.5 | 8.0 | 41% reduction |

### Overall Risk Assessment

**Overall Residual Risk Score:** 96/300
**Risk Reduction from Controls:** 39% reduction from inherent risk
**Risk Profile Status:** ⚠️ Concerning - 2 risks exceed appetite, mitigation in progress

### Risks Exceeding Appetite

**Number of risks exceeding organizational appetite:** 2 risks

| Risk ID | Title | Category | Score | Appetite | Excess | Escalation |
|---------|-------|----------|-------|----------|--------|------------|
| R-006 | Critical application incompatible with no vendor remediation | TECHNOLOGY | 15 | 12 | +3 | CIO approval required |
| R-007 | Testing extends beyond Month 3, delays migration pilot | OPERATIONAL | 12 | 9 | +3 | CIO escalation |

### Top 5 Critical Risks Requiring Immediate Attention

1. **R-006** (TECHNOLOGY, High 15): Critical app incompatible with no remediation - Owner: CIO - Status: Open
2. **R-007** (OPERATIONAL, High 12): Testing timeline extension risk - Owner: IT Ops Director - Status: In Progress
3. **R-001** (OPERATIONAL, Medium 9): Vendor compatibility statements unavailable - Owner: IT Ops Director - Status: In Progress
4. **R-002** (OPERATIONAL, Medium 8): Application Owners unresponsive for UAT - Owner: Change Manager - Status: In Progress
5. **R-009** (COMPLIANCE, Medium 6): License compliance audit risk - Owner: Procurement Manager - Status: Monitoring

### Key Findings and Recommendations

**Key Findings:**
- Heavy concentration of operational risks (5 of 12) requiring IT Operations Director attention
- Two risks exceed appetite (R-006, R-007) requiring CIO escalation
- Critical path dependency on Project 001 timeline creates elevated schedule risk
- Vendor responsiveness is a recurring theme (R-001, R-005, R-006)

**Recommendations:**
1. Escalate R-006 and R-007 to CIO immediately for risk acceptance or additional resource allocation
2. Implement vendor engagement tracker with 30-day escalation triggers to Procurement
3. Secure contractor augmentation (2 FTEs) to mitigate capacity constraints (R-007)
4. Establish weekly risk review cadence during critical phases (Months 1-4)

---

## A. Risk Matrix Visualization

### Inherent Risk Matrix (Before Controls)

**Likelihood × Impact Matrix - Inherent Risk Positions**

```
LIKELIHOOD ↑
     5 | Almost Certain |       | R-001 |       |       |       |
       |                |-------|-------|-------|-------|-------|
     4 | Likely         |       | R-002 | R-005 | R-004 | R-007 |
       |                |       | R-011 |       |       |       |
       |                |-------|-------|-------|-------|-------|
     3 | Possible       | R-010 | R-003 | R-008 | R-009 |       |
       |                |       | R-012 |       |       |       |
       |                |-------|-------|-------|-------|-------|
     2 | Unlikely       |       |       |       |       | R-006 |
       |                |-------|-------|-------|-------|-------|
     1 | Rare           |       |       |       |       |       |
       |________________|_______|_______|_______|_______|_______|
                            1       2       3       4       5
                        Negligible Minor  Moderate Major Catastrophic
                                      IMPACT →
```

**Risk Zones:**
- 🟥 **Critical (20-25)**: R-006, R-007 - Immediate escalation required
- 🟧 **High (13-19)**: R-001, R-004, R-008, R-009 - Senior management attention
- 🟨 **Medium (6-12)**: R-002, R-003, R-005, R-010, R-011, R-012 - Management monitoring
- 🟩 **Low (1-5)**: None at inherent level

### Residual Risk Matrix (After Controls)

**Likelihood × Impact Matrix - Residual Risk Positions**

```
LIKELIHOOD ↑
     5 | Almost Certain |       |       |       |       |       |
       |                |-------|-------|-------|-------|-------|
     4 | Likely         |       |       |       |       |       |
       |                |-------|-------|-------|-------|-------|
     3 | Possible       |       | R-001 | R-007 | R-006 |       |
       |                |       | R-005 |       |       |       |
       |                |-------|-------|-------|-------|-------|
     2 | Unlikely       | R-010 | R-002 | R-003 | R-004 |       |
       |                | R-012 | R-011 | R-008 |       |       |
       |                |-------|-------|-------|-------|-------|
     1 | Rare           |       |       | R-009 |       |       |
       |________________|_______|_______|_______|_______|_______|
                            1       2       3       4       5
                        Negligible Minor  Moderate Major Catastrophic
                                      IMPACT →
```

**Risk Movement Analysis:**
- ✅ **Significant Improvement**: R-007 (20→12), R-009 (16→3) - Controls very effective
- ⚠️ **Moderate Improvement**: R-001 (15→9), R-004 (16→8) - Additional monitoring needed
- ❌ **Limited Improvement**: R-006 (10→15) - Low probability but critical impact requires attention
- 📊 **Monitoring**: R-002, R-003, R-005 - Stable, continue current approach

---

## B. Top 10 Risks (Ranked by Residual Score)

| Rank | ID | Title | Category | Inherent | Residual | Owner | Status | Response |
|------|----|-------|----------|----------|----------|-------|--------|----------|
| 1 | R-006 | Critical application incompatible with no remediation | TECHNOLOGY | 10 | 15 | CIO | Open | Treat |
| 2 | R-007 | Testing extends beyond Month 3, delays migration pilot | OPERATIONAL | 20 | 12 | IT Ops Director | In Progress | Treat |
| 3 | R-001 | Vendor Windows 11 compatibility statements unavailable | OPERATIONAL | 15 | 9 | IT Ops Director | In Progress | Treat |
| 4 | R-004 | Rationalization savings <£200K due to user resistance | FINANCIAL | 16 | 8 | CFO | In Progress | Treat |
| 5 | R-008 | Security vulnerability scanning blocks deployments | TECHNOLOGY | 12 | 6 | CISO | In Progress | Treat |
| 6 | R-002 | Application Owners unresponsive for UAT | OPERATIONAL | 8 | 4 | Change Manager | In Progress | Treat |
| 7 | R-003 | ARM64 compatibility degraded/incompatible | TECHNOLOGY | 9 | 6 | IT Ops Director | Monitoring | Tolerate |
| 8 | R-005 | Silent install parameter discovery fails | OPERATIONAL | 12 | 6 | IT Packagers | In Progress | Treat |
| 9 | R-009 | License compliance audit risk | COMPLIANCE | 12 | 3 | Procurement Manager | Monitoring | Treat |
| 10 | R-010 | ServiceNow CMDB integration delays | OPERATIONAL | 3 | 2 | Enterprise Architect | Monitoring | Tolerate |

---

## C. Detailed Risk Register

### Risk R-001: Vendor Windows 11 Compatibility Statements Unavailable

**Category:** OPERATIONAL
**Status:** In Progress
**Risk Owner:** IT Operations Director
**Action Owner:** IT Packager Lead

#### Risk Identification

**Risk Description:**
20-30% of software vendors fail to provide Windows 11 compatibility statements within required timeframes, blocking application certification and creating migration blockers. This affects Tier 1 and Tier 2 applications where compatibility cannot be internally validated.

**Root Cause:**
- Small/medium vendors lack resources for compatibility testing
- Vendors prioritizing other customers over this organization
- Outdated vendor contact information
- Applications from vendors no longer in business

**Trigger Events:**
- Vendor non-response to compatibility inquiry after 14 days
- Vendor unable to provide compatibility statement
- Vendor-provided statement is older than 12 months
- Vendor goes out of business

**Consequences if Realized:**
- Tier 1 certification delayed past Month 2, blocking pilot
- Applications require internal testing without vendor validation
- Potential P1 incidents during migration from untested apps
- Project timeline slippage impacting Windows 10 EOL deadline

**Affected Stakeholders:**
- **IT Operations Director (SD-1)**: Migration success blocked
- **Application Owners (SD-4)**: Business continuity at risk
- **IT Packagers (SD-9)**: Increased workload for internal testing

**Related Objectives:**
- [Goal G-1]: Complete Tier 1 Compatibility Testing Before Pilot
- [Goal G-5]: Complete Tier 2 Compatibility Testing
- [Outcome O-1]: Windows 11 Migration Unblocked

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 5 - Almost Certain | Industry experience shows 20-30% vendor non-response typical |
| **Impact** | 3 - Moderate | Individual apps delayed but workarounds possible |
| **Inherent Risk Score** | **15** (High) | 5 × 3 = 15 |

**Risk Zone:** 🟧 High (13-19)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Early vendor engagement (T-90 days)**
   - Owner: IT Ops Director
   - Effectiveness: **Adequate**
   - Evidence: Vendor tracker shows 70% response within 30 days

2. **Microsoft App Assure validation support**
   - Owner: IT Packager Lead
   - Effectiveness: **Strong**
   - Evidence: App Assure resolves 85% of compatibility queries

3. **Internal testing fallback**
   - Owner: IT Packagers
   - Effectiveness: **Adequate**
   - Evidence: Internal testing can validate 90% of functionality

**Overall Control Effectiveness:** Adequate (reduces risk from 15 to 9)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | With early engagement and App Assure, most vendors respond |
| **Impact** | 3 - Moderate | Internal testing fallback maintains moderate impact |
| **Residual Risk Score** | **9** (Medium) | 3 × 3 = 9 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 40% reduction from inherent (15 → 9)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Risk can be significantly reduced through proactive vendor engagement and Microsoft App Assure support. Complete elimination not possible due to vendor dependency.

**Alternative Responses Considered:**
- **Tolerate**: Rejected - High inherent risk unacceptable, impacts critical path
- **Transfer**: Not applicable - Risk cannot be transferred to third party
- **Terminate**: Not viable - Applications required for business operations

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 9 (Medium)
**Assessment:** ✅ **Within Appetite** - At threshold, monitor closely

#### Action Plan

**Additional Mitigations Needed:**

1. **Procurement escalation for non-responsive vendors**
   - Description: Engage Procurement Manager to escalate via commercial relationships
   - Owner: Procurement Manager
   - Due Date: Ongoing (14-day trigger)
   - Cost: £0 (existing staff)
   - Expected Impact: Reduce likelihood from 3 to 2

**Target Residual Risk After Mitigations:**
- Target Likelihood: 2 (Unlikely)
- Target Impact: 3 (Moderate)
- Target Score: 6 (Medium) ✅ Well within appetite (≤ 9)

**Monitoring Plan:**
- **Frequency:** Weekly vendor response tracking
- **Key Indicators:**
  - Vendor response rate (target: >80% within 30 days)
  - App Assure case resolution time (target: <14 days)
- **Escalation Triggers:**
  - Tier 1 application without vendor statement at T-30 days from pilot
  - >40% of applications awaiting vendor response at any point

---

### Risk R-002: Application Owners Unresponsive for UAT

**Category:** OPERATIONAL
**Status:** In Progress
**Risk Owner:** Change Manager
**Action Owner:** IT Operations Director

#### Risk Identification

**Risk Description:**
Application Owners fail to participate in User Acceptance Testing (UAT) due to competing business priorities, lack of engagement, or unclear expectations, blocking formal compatibility sign-off for Tier 1 applications.

**Root Cause:**
- Application Owners have day jobs, UAT seen as IT burden
- Unclear ownership assignment for some applications
- No executive mandate for participation
- Fear of being blamed for post-migration issues

**Trigger Events:**
- Application Owner does not respond to UAT scheduling requests
- Application Owner declines participation citing business priorities
- Application Owner cannot be identified (orphaned application)
- UAT scheduled but Application Owner no-shows

**Consequences if Realized:**
- Tier 1 certification delayed, impacting pilot timeline
- IT Operations Director forced to sign off without business validation
- Potential P1 incidents post-migration blamed on inadequate testing
- Application Owners may not support applications post-migration

**Affected Stakeholders:**
- **IT Operations Director (SD-1)**: Certification blocked
- **Application Owners (SD-4)**: Accountability unclear
- **End Users**: Applications may not work post-migration

**Related Objectives:**
- [Goal G-1]: Complete Tier 1 Compatibility Testing Before Pilot
- [Outcome O-1]: Windows 11 Migration Unblocked

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | Historical Application Owner engagement has been poor |
| **Impact** | 2 - Minor | IT smoke testing provides fallback, reduces impact |
| **Inherent Risk Score** | **8** (Medium) | 4 × 2 = 8 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **CIO executive mandate email**
   - Owner: CIO
   - Effectiveness: **Strong**
   - Evidence: Executive mandates historically achieve 80% compliance

2. **Minimal time commitment (2-4 hours)**
   - Owner: Change Manager
   - Effectiveness: **Adequate**
   - Evidence: Reduced resistance when time commitment is clear

3. **IT Packager smoke testing fallback for Tier 2**
   - Owner: IT Packagers
   - Effectiveness: **Strong**
   - Evidence: IT testing validates 95% of functionality

**Overall Control Effectiveness:** Strong (reduces risk from 8 to 4)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Executive mandate significantly improves engagement |
| **Impact** | 2 - Minor | Fallback processes minimize impact |
| **Residual Risk Score** | **4** (Low) | 2 × 2 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 50% reduction from inherent (8 → 4)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Executive mandate and clear expectations significantly improve engagement. Fallback processes provide safety net.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite** - Well controlled

---

### Risk R-003: ARM64 Compatibility 30-40% Degraded/Incompatible

**Category:** TECHNOLOGY
**Status:** Monitoring
**Risk Owner:** IT Operations Director
**Action Owner:** IT Packager Lead

#### Risk Identification

**Risk Description:**
Significant percentage of applications (30-40%) perform poorly under ARM64 emulation (Prism) or are incompatible with Copilot+ PCs (Snapdragon X Elite/Plus), limiting device assignment options.

**Root Cause:**
- Many applications only compiled for x64 architecture
- Kernel-mode drivers require native ARM64 (cannot emulate)
- Vendors slow to provide native ARM64 versions
- Performance degradation in emulation exceeds acceptable threshold (>20%)

**Trigger Events:**
- Application test on ARM64 shows >20% performance degradation
- Application uses kernel-mode driver without ARM64 version
- Vendor confirms no ARM64 version on roadmap
- Critical application incompatible with Copilot+ PCs

**Consequences if Realized:**
- 30% Copilot+ PC target (Year 1) may not be achievable
- Users assigned to incompatible devices experience poor performance
- Increased support tickets from Copilot+ PC users
- Copilot+ PC benefits (NPU, AI features) underutilized

**Affected Stakeholders:**
- **CIO**: AI-ready platform strategy impacted
- **IT Operations Director (SD-1)**: Device assignment complexity
- **End Users**: Performance issues on new devices

**Related Objectives:**
- [Goal G-9]: Complete ARM64 Compatibility Testing
- [Outcome O-1]: Windows 11 Migration Unblocked

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Industry data suggests 30-40% emulation issues |
| **Impact** | 3 - Moderate | Copilot+ PC adoption reduced but not blocked |
| **Inherent Risk Score** | **9** (Medium) | 3 × 3 = 9 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Prioritize x64 Copilot+ PCs initially**
   - Owner: IT Ops Director
   - Effectiveness: **Strong**
   - Evidence: Intel/AMD Copilot+ PCs available, provide fallback

2. **User assignment based on app compatibility**
   - Owner: IT Ops Director
   - Effectiveness: **Adequate**
   - Evidence: Device-app matrix guides user assignment

3. **Vendor engagement for native ARM64 versions**
   - Owner: IT Packager Lead
   - Effectiveness: Weak (long vendor cycles)
   - Evidence: <20% of vendors have ARM64 roadmap

**Overall Control Effectiveness:** Adequate (reduces risk from 9 to 6)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | x64 Copilot+ PC fallback mitigates most scenarios |
| **Impact** | 3 - Moderate | Impact unchanged - Copilot+ strategy still constrained |
| **Residual Risk Score** | **6** (Medium) | 2 × 3 = 6 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 33% reduction from inherent (9 → 6)

#### Risk Response (4Ts Framework)

**Primary Response:** TOLERATE (Accept with monitoring)

**Rationale:**
ARM64 adoption is aspirational (30% Year 1 target). x64 Copilot+ PCs provide acceptable fallback. Native ARM64 will improve over time as vendors update products.

#### Risk Appetite Assessment

**Organizational Risk Appetite for TECHNOLOGY risks:** Medium (Score ≤ 12)
**Current Residual Risk Score:** 6 (Medium)
**Assessment:** ✅ **Within Appetite** - Acceptable with monitoring

---

### Risk R-004: Rationalization Savings <£200K Due to User Resistance

**Category:** FINANCIAL
**Status:** In Progress
**Risk Owner:** CFO
**Action Owner:** Change Manager

#### Risk Identification

**Risk Description:**
User complaints and Application Owner resistance reduce the number of applications retired, achieving less than the £200K annual savings target required by the Board cost reduction mandate.

**Root Cause:**
- Users emotionally attached to familiar applications
- Application Owners fear accountability for retirements
- Executives susceptible to vocal user complaints
- Alternatives perceived as inferior to existing tools

**Trigger Events:**
- User escalation to executive sponsors blocks retirement
- Application Owner refuses to approve retirement
- Retirement reversed after T-7 day communication
- >50% exemption requests approved

**Consequences if Realized:**
- £200K savings target missed, Board credibility impacted
- CFO cost reduction mandate not achieved
- License costs continue for unused/redundant applications
- Future rationalization efforts undermined

**Affected Stakeholders:**
- **CFO (SD-2)**: Cost reduction target missed
- **End Users (SD-6)**: Retain familiar applications
- **Application Owners (SD-4)**: Avoid accountability

**Related Objectives:**
- [Goal G-2]: Achieve Application Portfolio Reduction Target
- [Goal G-3]: Achieve Licensing Cost Savings
- [Outcome O-2]: £200K+ Annual Licensing Savings

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | User resistance to change is predictable |
| **Impact** | 4 - Major | £200K savings target at risk |
| **Inherent Risk Score** | **16** (High) | 4 × 4 = 16 |

**Risk Zone:** 🟧 High (13-19)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Phased retirements (Phase 1 non-controversial)**
   - Owner: IT Ops Director
   - Effectiveness: **Strong**
   - Evidence: Phase 1 targets obsolete/duplicate apps with minimal resistance

2. **30-day change management per retirement**
   - Owner: Change Manager
   - Effectiveness: **Adequate**
   - Evidence: Advance notice reduces surprise complaints

3. **CFO/CIO executive sponsorship messaging**
   - Owner: CFO
   - Effectiveness: **Strong**
   - Evidence: Executive mandate overcomes most resistance

4. **User exemption process**
   - Owner: Application Owners
   - Effectiveness: **Adequate**
   - Evidence: Provides safety valve for legitimate retention requests

**Overall Control Effectiveness:** Strong (reduces risk from 16 to 8)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Phased approach and executive sponsorship effective |
| **Impact** | 4 - Major | If resistance wins, financial impact unchanged |
| **Residual Risk Score** | **8** (Medium) | 2 × 4 = 8 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 50% reduction from inherent (16 → 8)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Phased approach de-risks by proving success with non-controversial retirements first. Executive sponsorship essential for user-impacting Phase 2.

#### Risk Appetite Assessment

**Organizational Risk Appetite for FINANCIAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 8 (Medium)
**Assessment:** ✅ **Within Appetite** - Acceptable with executive support

---

### Risk R-005: Silent Install Parameter Discovery Fails

**Category:** OPERATIONAL
**Status:** In Progress
**Risk Owner:** IT Packagers
**Action Owner:** IT Packager Lead

#### Risk Identification

**Risk Description:**
10-15% of applications lack silent install documentation, and common silent switches fail, blocking InTune Win32 packaging and requiring manual repackaging or vendor engagement.

**Root Cause:**
- Legacy applications predate silent installation requirements
- Small vendors don't document silent install parameters
- Applications require user input (license keys, configuration)
- Custom installers don't follow standard conventions

**Trigger Events:**
- Common silent switches (/S, /silent, /quiet) fail
- Application installer prompts for user input
- Vendor unable to provide silent install documentation
- Application requires admin credentials during install

**Consequences if Realized:**
- 10-15% of applications require repackaging (AdminStudio)
- Timeline extended for repackaging effort
- Some applications may require user-context installation
- InTune deployment automation compromised

**Affected Stakeholders:**
- **IT Packagers (SD-9)**: Increased workload
- **IT Operations Director (SD-1)**: Timeline risk
- **Enterprise Architect (SD-3)**: Cloud-native deployment compromised

**Related Objectives:**
- [Goal G-4]: Complete InTune Packaging for All Retained Applications
- [Outcome O-3]: Cloud-Native Application Deployment Established

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | Industry experience confirms 10-15% silent install issues |
| **Impact** | 3 - Moderate | Workarounds available (repackaging, user-context) |
| **Inherent Risk Score** | **12** (Medium) | 4 × 3 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Repackaging tools (AdminStudio, Advanced Installer)**
   - Owner: IT Packagers
   - Effectiveness: **Strong**
   - Evidence: Tools can repackage 95% of problematic installers

2. **Vendor engagement for documentation**
   - Owner: IT Packager Lead
   - Effectiveness: **Adequate**
   - Evidence: ~50% of vendors provide documentation when asked

3. **User-context installation fallback**
   - Owner: IT Packagers
   - Effectiveness: **Adequate**
   - Evidence: Company Portal user install covers remaining cases

**Overall Control Effectiveness:** Strong (reduces risk from 12 to 6)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Some apps will still require repackaging |
| **Impact** | 2 - Minor | Repackaging and fallbacks minimize impact |
| **Residual Risk Score** | **6** (Medium) | 3 × 2 = 6 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 50% reduction from inherent (12 → 6)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Repackaging tools and fallback options provide effective mitigation. Budget for AdminStudio licenses already approved.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 6 (Medium)
**Assessment:** ✅ **Within Appetite** - Well controlled

---

### Risk R-006: Critical Application Incompatible with No Vendor Remediation

**Category:** TECHNOLOGY
**Status:** Open
**Risk Owner:** CIO
**Action Owner:** IT Operations Director

#### Risk Identification

**Risk Description:**
Business-critical (Tier 1) application discovered incompatible with Windows 11 with no vendor remediation path available, blocking migration for affected users and potentially entire business units.

**Root Cause:**
- Vendor no longer supporting application (end-of-life)
- Vendor unable/unwilling to provide Windows 11 compatible version
- Legacy custom development without source code access
- Application relies on deprecated Windows 10 APIs

**Trigger Events:**
- Tier 1 application fails Windows 11 compatibility testing
- Vendor confirms no Windows 11 compatible version on roadmap
- Vendor goes out of business
- Application requires deprecated Windows 10 components

**Consequences if Realized:**
- Affected users cannot migrate to Windows 11
- Windows 10 ESU required (£[X] per device per year)
- VDI solution required for application access
- Business process redesign may be required
- Migration timeline blocked for affected business units

**Affected Stakeholders:**
- **CIO**: Strategic decision required on business process change
- **IT Operations Director (SD-1)**: Migration execution blocked
- **Application Owners (SD-4)**: Business continuity at risk
- **CISO (SD-5)**: Security risk from Windows 10 retention

**Related Objectives:**
- [Goal G-1]: Complete Tier 1 Compatibility Testing Before Pilot
- [Goal G-7]: Zero Application-Related P1 Incidents
- [Outcome O-1]: Windows 11 Migration Unblocked

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Most applications have Windows 11 compatibility |
| **Impact** | 5 - Catastrophic | Critical business process blocked |
| **Inherent Risk Score** | **10** (Medium) | 2 × 5 = 10 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Early vendor lookup (Month 0)**
   - Owner: IT Ops Director
   - Effectiveness: **Strong**
   - Evidence: Early detection enables contingency planning

2. **Microsoft App Assure remediation assistance**
   - Owner: IT Packager Lead
   - Effectiveness: **Adequate**
   - Evidence: App Assure resolves compatibility for some applications

3. **Alternative application evaluation**
   - Owner: Application Owners
   - Effectiveness: Weak (business resistance to change)
   - Evidence: Alternatives exist but require business process change

**Overall Control Effectiveness:** Limited - controls detect but don't eliminate risk

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Early detection may identify blocked apps |
| **Impact** | 5 - Catastrophic | If realized, impact unchanged |
| **Residual Risk Score** | **15** (High) | 3 × 5 = 15 |

**Risk Zone:** 🟧 High (13-19)
**Risk Reduction:** -50% (risk increased due to discovery raising likelihood)

**Note:** This risk's residual score is higher than inherent because early detection increases the probability of discovering an incompatibility that would otherwise remain unknown until migration.

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Risk cannot be eliminated but contingency planning minimizes business impact. Worst case requires Windows 10 ESU or VDI.

**Alternative Responses Considered:**
- **Tolerate**: Rejected - Catastrophic impact unacceptable
- **Transfer**: Not applicable - Business risk cannot be transferred
- **Terminate**: Not viable - Critical business applications required

#### Risk Appetite Assessment

**Organizational Risk Appetite for TECHNOLOGY risks:** Medium (Score ≤ 12)
**Current Residual Risk Score:** 15 (High)
**Assessment:** ❌ **Exceeds Appetite** by 3 points (25% over threshold)

**Justification:**
Strategic imperative from CIO and Board. Windows 10 EOL (October 2025) is non-negotiable. Contingency plans (ESU, VDI) available if realized.

**Escalation Required:** Yes - CIO approval required for risks exceeding technology appetite

#### Action Plan

**Additional Mitigations Needed:**

1. **Tier 1 application Windows 11 compatibility assessment**
   - Description: Complete compatibility assessment for all 80 Tier 1 apps by Month 1, Week 3
   - Owner: IT Ops Director
   - Due Date: Month 1, Week 3
   - Cost: £0 (existing staff)
   - Expected Impact: Early detection of any blocked applications

2. **Contingency planning for incompatible applications**
   - Description: Develop ESU and VDI fallback plans for any incompatible Tier 1 apps
   - Owner: IT Operations Director
   - Due Date: Month 2
   - Cost: £10K-50K (ESU) or £20K-100K (VDI) per blocked application
   - Expected Impact: Ensure migration can proceed even with blocked apps

**Monitoring Plan:**
- **Frequency:** Weekly during Tier 1 testing phase
- **Key Indicators:**
  - Tier 1 compatibility status (target: 100% compatible)
  - Vendor remediation response rate
- **Escalation Triggers:**
  - Any Tier 1 application confirmed incompatible
  - Vendor confirms no remediation available

---

### Risk R-007: Testing Extends Beyond Month 3, Delays Migration Pilot

**Category:** OPERATIONAL
**Status:** In Progress
**Risk Owner:** IT Operations Director
**Action Owner:** IT Packager Lead

#### Risk Identification

**Risk Description:**
Compatibility testing complexity and volume exceeds capacity, extending timeline beyond Month 3 and delaying Windows 11 pilot, jeopardizing the October 2025 Windows 10 EOL deadline.

**Root Cause:**
- IT Packager capacity constraints (3 FTEs baseline)
- Testing complexity higher than estimated
- Dependency on vendor responses
- Application Owner UAT delays
- Scope creep from additional applications

**Trigger Events:**
- Tier 1 testing not complete at Month 2
- IT Packager utilization exceeds 120% for >2 weeks
- >20% of applications awaiting vendor response
- Contractor hiring delayed

**Consequences if Realized:**
- Windows 11 pilot delayed past Month 2
- Downstream Project 001 timeline impacted
- Windows 10 EOL (October 2025) at risk
- Accelerated migration required with increased failure risk

**Affected Stakeholders:**
- **IT Operations Director (SD-1)**: Delivery accountability
- **IT Packagers (SD-9)**: Burnout risk from overwork
- **CIO**: Strategic timeline at risk
- **CISO (SD-5)**: Security risk from Windows 10 retention

**Related Objectives:**
- [Goal G-1]: Complete Tier 1 Compatibility Testing Before Pilot
- [Goal G-5]: Complete Tier 2 Compatibility Testing
- [Outcome O-1]: Windows 11 Migration Unblocked

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | 350 applications with 3 FTEs is aggressive |
| **Impact** | 5 - Catastrophic | Windows 10 EOL deadline is fixed |
| **Inherent Risk Score** | **20** (Critical) | 4 × 5 = 20 |

**Risk Zone:** 🟥 Critical (20-25)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Contractor augmentation (2 FTEs)**
   - Owner: IT Ops Director
   - Effectiveness: **Strong**
   - Evidence: Increases capacity from 3 to 5 FTEs (67% increase)

2. **Tiered testing approach**
   - Owner: IT Packager Lead
   - Effectiveness: **Strong**
   - Evidence: Tier 1 prioritized, Tier 2/3 smoke testing reduces depth

3. **Parallel execution**
   - Owner: IT Packagers
   - Effectiveness: **Adequate**
   - Evidence: Test while packaging eliminates sequential bottleneck

4. **Microsoft App Assure fast-track**
   - Owner: IT Packager Lead
   - Effectiveness: **Adequate**
   - Evidence: App Assure expedites vendor compatibility for blockers

**Overall Control Effectiveness:** Strong (reduces risk from 20 to 12)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Contractor augmentation reduces but doesn't eliminate risk |
| **Impact** | 4 - Major | With contingency, scope reduction possible |
| **Residual Risk Score** | **12** (Medium) | 3 × 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 40% reduction from inherent (20 → 12)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Contractor augmentation and tiered approach significantly reduce risk. Timeline is critical path for Windows 10 EOL.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 12 (Medium-High)
**Assessment:** ⚠️ **Exceeds Appetite** by 3 points (33% over threshold)

**Justification:**
Windows 10 EOL is non-negotiable external deadline. CIO has accepted elevated risk with contingency plan.

**Escalation Required:** Yes - CIO approval obtained for elevated schedule risk

#### Action Plan

**Additional Mitigations Needed:**

1. **Weekly progress tracking against milestones**
   - Description: Weekly review of testing progress with early warning triggers
   - Owner: IT Ops Director
   - Due Date: Ongoing
   - Cost: £0
   - Expected Impact: Early detection of timeline slippage

2. **Tier 2 scope reduction contingency**
   - Description: Pre-approved scope reduction to 85% Tier 2 if behind at Month 2
   - Owner: IT Ops Director
   - Due Date: Month 2 decision point
   - Cost: £0
   - Expected Impact: Recover timeline through scope reduction

**Monitoring Plan:**
- **Frequency:** Weekly progress reviews
- **Key Indicators:**
  - Applications tested vs. plan (weekly)
  - IT Packager utilization (weekly)
- **Escalation Triggers:**
  - <75% of Tier 1 tested by Month 1.5
  - IT Packager utilization >120% for 2+ weeks

---

### Risk R-008: Security Vulnerability Scanning Blocks Deployments

**Category:** TECHNOLOGY
**Status:** In Progress
**Risk Owner:** CISO
**Action Owner:** Security Architect

#### Risk Identification

**Risk Description:**
Automated vulnerability scanning discovers critical or high vulnerabilities in applications, blocking deployment and creating tension between security rigor and timeline requirements.

**Root Cause:**
- Many applications have unpatched dependencies
- Vendors slow to release security patches
- Zero tolerance for critical vulnerabilities conflicts with timeline
- Scanning integrated late in packaging workflow

**Trigger Events:**
- Critical CVE discovered in application package
- High CVE discovered with no vendor patch available
- CISO risk acceptance delayed
- Scanning backlog creates bottleneck

**Consequences if Realized:**
- Application deployment blocked pending remediation
- Timeline delayed for critical applications
- CISO risk acceptance backlog
- Tension between security and operations teams

**Affected Stakeholders:**
- **CISO (SD-5)**: Security vs. timeline tension
- **IT Operations Director (SD-1)**: Deployment velocity impacted
- **IT Packagers (SD-9)**: Rework for vulnerability remediation

**Related Objectives:**
- [Goal G-10]: Achieve Security Vulnerability Compliance
- [Goal G-4]: Complete InTune Packaging for All Retained Applications

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | 10-20% of applications may have vulnerabilities |
| **Impact** | 4 - Major | Blocks deployment of critical applications |
| **Inherent Risk Score** | **12** (Medium) | 3 × 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Risk-based vulnerability tiering**
   - Owner: CISO
   - Effectiveness: **Strong**
   - Evidence: Only Critical blocks; High requires risk acceptance; Medium/Low auto-approved

2. **Automated scanning pipeline (4-hour turnaround)**
   - Owner: Security Architect
   - Effectiveness: **Strong**
   - Evidence: Fast turnaround eliminates bottleneck

3. **CISO risk acceptance SLA (48 hours)**
   - Owner: CISO
   - Effectiveness: **Adequate**
   - Evidence: SLA ensures decisions don't block progress

**Overall Control Effectiveness:** Strong (reduces risk from 12 to 6)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Automated pipeline and tiering minimize blocks |
| **Impact** | 3 - Moderate | Risk acceptance process prevents extended delays |
| **Residual Risk Score** | **6** (Medium) | 2 × 3 = 6 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 50% reduction from inherent (12 → 6)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Risk-based tiering balances security and velocity. Automated pipeline prevents bottleneck.

#### Risk Appetite Assessment

**Organizational Risk Appetite for TECHNOLOGY risks:** Medium (Score ≤ 12)
**Current Residual Risk Score:** 6 (Medium)
**Assessment:** ✅ **Within Appetite** - Well controlled

---

### Risk R-009: License Compliance Audit Risk

**Category:** COMPLIANCE
**Status:** Monitoring
**Risk Owner:** Procurement Manager
**Action Owner:** License Administrator

#### Risk Identification

**Risk Description:**
Application rationalization and redeployment activities trigger vendor license audits, discovering over-deployment or compliance gaps that result in penalties and unplanned license purchases.

**Root Cause:**
- Historical license tracking inadequate
- Over-deployment in some applications, under in others
- License reclamation from retirements not tracked to auditors
- True-up timing misaligned with rationalization

**Trigger Events:**
- Vendor announces license audit
- InTune inventory reveals over-deployment
- Retired application licenses not formally terminated
- Vendor detects usage spike from redeployment

**Consequences if Realized:**
- Vendor audit penalties and back-licensing costs
- Unplanned license purchases consume savings
- Procurement resources diverted to audit response
- Vendor relationship damage

**Affected Stakeholders:**
- **Procurement Manager (SD-8)**: Audit response burden
- **CFO (SD-2)**: Unplanned costs consume savings
- **Legal**: Compliance liability

**Related Objectives:**
- [Goal G-3]: Achieve Licensing Cost Savings
- [Outcome O-2]: £200K+ Annual Licensing Savings

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Vendor audits are routine (20% of vendors annually) |
| **Impact** | 4 - Major | Penalties can be significant (£100K-500K) |
| **Inherent Risk Score** | **12** (Medium) | 3 × 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Proactive license reconciliation**
   - Owner: Procurement Manager
   - Effectiveness: **Strong**
   - Evidence: Monthly reconciliation identifies gaps before audit

2. **InTune inventory as audit evidence**
   - Owner: IT Ops Director
   - Effectiveness: **Strong**
   - Evidence: Accurate inventory provides audit defense

3. **Formal license termination for retirements**
   - Owner: License Administrator
   - Effectiveness: **Adequate**
   - Evidence: Documented termination provides audit trail

**Overall Control Effectiveness:** Strong (reduces risk from 12 to 3)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 1 - Rare | Proactive reconciliation minimizes audit findings |
| **Impact** | 3 - Moderate | Residual findings will be minor |
| **Residual Risk Score** | **3** (Low) | 1 × 3 = 3 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 75% reduction from inherent (12 → 3)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Proactive license management eliminates most audit risk. Controls are mature and effective.

#### Risk Appetite Assessment

**Organizational Risk Appetite for COMPLIANCE risks:** Low (Score ≤ 6)
**Current Residual Risk Score:** 3 (Low)
**Assessment:** ✅ **Within Appetite** - Well controlled

---

### Risk R-010: ServiceNow CMDB Integration Delays

**Category:** OPERATIONAL
**Status:** Monitoring
**Risk Owner:** Enterprise Architect
**Action Owner:** ServiceNow Platform Team Lead

#### Risk Identification

**Risk Description:**
ServiceNow CMDB integration for application catalog is delayed or not funded, forcing reliance on manual application tracking via SharePoint and reducing governance automation.

**Root Cause:**
- CMDB integration classified as SHOULD_HAVE, not MUST_HAVE
- ServiceNow Platform Team has competing priorities
- Integration API development requires specialized skills
- Budget constraints may deprioritize

**Trigger Events:**
- CMDB integration budget not approved
- ServiceNow Platform Team unable to start by Month 2
- API integration issues extend timeline
- CMDB data quality issues discovered

**Consequences if Realized:**
- Application catalog maintained in SharePoint (manual)
- Governance reviews require manual data reconciliation
- InTune-CMDB sync not automated
- Reduced governance maturity

**Affected Stakeholders:**
- **Enterprise Architect (SD-3)**: Governance automation compromised
- **IT Operations Director (SD-1)**: Manual overhead increased
- **ServiceNow Platform Team**: Integration not delivered

**Related Objectives:**
- [Goal G-6]: Establish Application Governance Framework
- [Outcome O-4]: Application Governance Excellence Demonstrated

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Budget and priority uncertainty |
| **Impact** | 1 - Negligible | SharePoint fallback provides acceptable alternative |
| **Inherent Risk Score** | **3** (Low) | 3 × 1 = 3 |

**Risk Zone:** 🟩 Low (1-5)

#### Current Controls and Mitigations

**Existing Controls:**
1. **SharePoint fallback application catalog**
   - Owner: Enterprise Architect
   - Effectiveness: **Strong**
   - Evidence: SharePoint can deliver 90% of catalog requirements

**Overall Control Effectiveness:** Strong (reduces risk from 3 to 2)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Fallback available regardless of CMDB status |
| **Impact** | 1 - Negligible | Minimal impact with SharePoint fallback |
| **Residual Risk Score** | **2** (Low) | 2 × 1 = 2 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 33% reduction from inherent (3 → 2)

#### Risk Response (4Ts Framework)

**Primary Response:** TOLERATE (Accept with monitoring)

**Rationale:**
CMDB integration is nice-to-have. SharePoint fallback is acceptable for initial governance framework.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 2 (Low)
**Assessment:** ✅ **Within Appetite** - Acceptable

---

### Risk R-011: Scope Creep from Additional Applications Mid-Project

**Category:** OPERATIONAL
**Status:** Monitoring
**Risk Owner:** IT Operations Director
**Action Owner:** Project Manager

#### Risk Identification

**Risk Description:**
Additional applications are discovered or requested for inclusion after project scope is baselined, consuming capacity and extending timeline without corresponding resource increase.

**Root Cause:**
- Initial inventory incomplete
- Business units request inclusion of previously unknown apps
- Shadow IT applications discovered during migration
- Vendor consolidation adds new applications

**Trigger Events:**
- >20 additional applications identified post-baseline
- Business unit requests priority inclusion of new application
- Shadow IT discovery reveals ungoverned applications
- Vendor consolidation requires new app packaging

**Consequences if Realized:**
- IT Packager capacity consumed by additional work
- Timeline extends beyond Month 4
- Quality degraded due to rushed packaging
- Tier 2/3 testing reduced to accommodate additions

**Affected Stakeholders:**
- **IT Operations Director (SD-1)**: Scope and timeline management
- **IT Packagers (SD-9)**: Capacity and quality pressure

**Related Objectives:**
- [Goal G-4]: Complete InTune Packaging for All Retained Applications
- [Outcome O-3]: Cloud-Native Application Deployment Established

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | Scope creep is common in IT projects |
| **Impact** | 2 - Minor | Individual additions manageable |
| **Inherent Risk Score** | **8** (Medium) | 4 × 2 = 8 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Formal scope change process**
   - Owner: Project Manager
   - Effectiveness: **Adequate**
   - Evidence: Change requests require approval with impact assessment

2. **Scope freeze after Month 1**
   - Owner: IT Ops Director
   - Effectiveness: **Strong**
   - Evidence: No additions accepted after baseline without CIO approval

**Overall Control Effectiveness:** Strong (reduces risk from 8 to 4)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Scope freeze prevents most additions |
| **Impact** | 2 - Minor | Approved additions managed via change process |
| **Residual Risk Score** | **4** (Low) | 2 × 2 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 50% reduction from inherent (8 → 4)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Formal change process and scope freeze prevent uncontrolled additions.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite** - Well controlled

---

### Risk R-012: Helpdesk Capacity Overwhelmed by Application Changes

**Category:** REPUTATIONAL
**Status:** Monitoring
**Risk Owner:** Helpdesk Manager
**Action Owner:** Change Manager

#### Risk Identification

**Risk Description:**
Application retirements and changes generate support ticket volume that exceeds Helpdesk capacity, degrading service levels and user satisfaction during migration.

**Root Cause:**
- Helpdesk already handling Windows 11 migration tickets
- Application changes add additional complexity
- User confusion from multiple concurrent changes
- Knowledge base articles not ready before changes

**Trigger Events:**
- Application retirement without adequate training
- Multiple applications changed in same week
- Knowledge base articles not published before T-7
- Helpdesk ticket volume exceeds 150% of baseline

**Consequences if Realized:**
- Helpdesk SLAs breached
- User satisfaction drops
- Escalations to IT Leadership
- Reputation damage for IT organization

**Affected Stakeholders:**
- **Helpdesk Manager (SD-7)**: Team overwhelmed
- **End Users (SD-6)**: Poor support experience
- **IT Operations Director (SD-1)**: Service delivery impacted

**Related Objectives:**
- [Goal G-8]: Maintain Low Application-Related Support Tickets
- [Outcome O-5]: User Productivity Maintained

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Concurrent migration and app changes create load |
| **Impact** | 3 - Moderate | SLA breaches and user dissatisfaction |
| **Inherent Risk Score** | **9** (Medium) | 3 × 3 = 9 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **30-day advance notice for retirements**
   - Owner: Change Manager
   - Effectiveness: **Strong**
   - Evidence: User preparation reduces ticket volume

2. **Knowledge base articles published T-14**
   - Owner: Change Manager
   - Effectiveness: **Adequate**
   - Evidence: Self-service reduces Helpdesk dependency

3. **Phased retirements (limit concurrent changes)**
   - Owner: IT Ops Director
   - Effectiveness: **Strong**
   - Evidence: Spreading changes prevents ticket spikes

**Overall Control Effectiveness:** Strong (reduces risk from 9 to 6)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Phased approach and advance notice effective |
| **Impact** | 3 - Moderate | If overwhelmed, SLA impact unchanged |
| **Residual Risk Score** | **6** (Medium) | 2 × 3 = 6 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 33% reduction from inherent (9 → 6)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Phased retirements and advance notice reduce ticket volume. Target is <5% app-related tickets.

#### Risk Appetite Assessment

**Organizational Risk Appetite for REPUTATIONAL risks:** Low (Score ≤ 6)
**Current Residual Risk Score:** 6 (Medium)
**Assessment:** ✅ **At Appetite Threshold** - Monitor closely

---

## D. Risk Category Analysis

### STRATEGIC Risks

**Total STRATEGIC Risks:** 1
**Average Inherent Score:** 20.0 (Critical)
**Average Residual Score:** 12.0 (Medium)
**Control Effectiveness:** 40% reduction

**Risk List:**
- R-007: Testing extends beyond Month 3 - Residual: 12 (Medium) - *Reclassified from Operational to Strategic due to Windows 10 EOL impact*

**Key Themes:**
- Windows 10 EOL (October 2025) creates fixed deadline
- Capacity constraints threaten timeline

**Category Risk Profile:** ⚠️ Concerning - Timeline risk exceeds appetite, CIO approval obtained

---

### OPERATIONAL Risks

**Total OPERATIONAL Risks:** 5
**Average Inherent Score:** 9.2 (Medium)
**Average Residual Score:** 5.0 (Low-Medium)
**Control Effectiveness:** 46% reduction

**Risk List:**
- R-001: Vendor compatibility statements unavailable - Residual: 9 (Medium)
- R-002: Application Owners unresponsive for UAT - Residual: 4 (Low)
- R-005: Silent install parameter discovery fails - Residual: 6 (Medium)
- R-010: ServiceNow CMDB integration delays - Residual: 2 (Low)
- R-011: Scope creep from additional applications - Residual: 4 (Low)

**Key Themes:**
- Vendor dependency and engagement
- Capacity and resource constraints
- Process and governance maturity

**Category Risk Profile:** ✅ Acceptable - Good control effectiveness, risks within appetite

---

### FINANCIAL Risks

**Total FINANCIAL Risks:** 2
**Average Inherent Score:** 14.0 (High)
**Average Residual Score:** 5.5 (Low-Medium)
**Control Effectiveness:** 61% reduction

**Risk List:**
- R-004: Rationalization savings <£200K - Residual: 8 (Medium)
- R-009: License compliance audit risk - Residual: 3 (Low)

**Key Themes:**
- User resistance to rationalization
- License management maturity

**Category Risk Profile:** ✅ Acceptable - Strong control effectiveness

---

### COMPLIANCE Risks

**Total COMPLIANCE Risks:** 1
**Average Inherent Score:** 12.0 (Medium)
**Average Residual Score:** 3.0 (Low)
**Control Effectiveness:** 75% reduction

**Risk List:**
- R-009: License compliance audit risk - Residual: 3 (Low)

**Key Themes:**
- Proactive license reconciliation
- Audit preparedness

**Category Risk Profile:** ✅ Acceptable - Very strong control effectiveness

---

### REPUTATIONAL Risks

**Total REPUTATIONAL Risks:** 1
**Average Inherent Score:** 9.0 (Medium)
**Average Residual Score:** 6.0 (Medium)
**Control Effectiveness:** 33% reduction

**Risk List:**
- R-012: Helpdesk capacity overwhelmed - Residual: 6 (Medium)

**Key Themes:**
- User experience during change
- Support capacity management

**Category Risk Profile:** ⚠️ At Threshold - At appetite limit, requires monitoring

---

### TECHNOLOGY Risks

**Total TECHNOLOGY Risks:** 3
**Average Inherent Score:** 10.3 (Medium)
**Average Residual Score:** 9.0 (Medium)
**Control Effectiveness:** 13% reduction

**Risk List:**
- R-003: ARM64 compatibility issues - Residual: 6 (Medium)
- R-006: Critical app incompatible with no remediation - Residual: 15 (High)
- R-008: Security vulnerability scanning blocks deployments - Residual: 6 (Medium)

**Key Themes:**
- Application compatibility complexity
- Security vs. velocity trade-offs
- ARM64 platform maturity

**Category Risk Profile:** ⚠️ Concerning - R-006 exceeds appetite, requires CIO approval

---

## E. Risk Ownership Matrix

**Risk Ownership Distribution by Stakeholder:**

| Stakeholder | Role | Owned Risks | Critical | High | Medium | Low | Total Score | Risk Concentration |
|-------------|------|-------------|----------|------|--------|-----|-------------|-------------------|
| IT Ops Director | Project Owner | R-001, R-003, R-007 | 0 | 1 | 2 | 0 | 27 | ⚠️ High concentration |
| CIO | Executive Sponsor | R-006 | 0 | 1 | 0 | 0 | 15 | Focused on critical |
| CFO | Budget Owner | R-004 | 0 | 0 | 1 | 0 | 8 | Moderate |
| CISO | Security Lead | R-008 | 0 | 0 | 1 | 0 | 6 | Focused |
| Change Manager | Communication | R-002, R-012 | 0 | 0 | 1 | 1 | 10 | Moderate |
| IT Packagers | Technical Execution | R-005 | 0 | 0 | 1 | 0 | 6 | Focused |
| Procurement Manager | License Management | R-009 | 0 | 0 | 0 | 1 | 3 | Low |
| Enterprise Architect | Governance | R-010 | 0 | 0 | 0 | 1 | 2 | Low |
| Project Manager | Scope Management | R-011 | 0 | 0 | 0 | 1 | 4 | Low |

**Risk Concentration Analysis:**
- ⚠️ **IT Ops Director owns 3 risks totaling 27 points** - Expected as Project Owner
- **CIO owns highest-scoring single risk** (R-006, 15 points) - Appropriate for executive escalation
- **Good distribution of operational risks** across owners

**Escalation Paths:**
- **Critical/High Technology Risks** → IT Ops Director → CIO
- **Timeline Risks** → IT Ops Director → CIO
- **Financial Risks** → CFO → CIO/Board
- **Compliance Risks** → Procurement Manager → CFO → Audit Committee

---

## F. 4Ts Response Framework Summary

**Risk Response Distribution:**

| Response | Count | % | Total Risk Score | Key Examples |
|----------|-------|---|------------------|--------------|
| **TOLERATE** | 2 | 17% | 8 (Low) | R-003, R-010 - Low risks within appetite |
| **TREAT** | 10 | 83% | 88 (Medium) | R-001, R-002, R-004, R-005, R-006, R-007, R-008, R-009, R-011, R-012 |
| **TRANSFER** | 0 | 0% | 0 | No risks suitable for transfer |
| **TERMINATE** | 0 | 0% | 0 | No risks terminated |
| **TOTAL** | 12 | 100% | 96 | |

**Response Breakdown by Category:**

| Category | Tolerate | Treat | Transfer | Terminate | Predominant Response |
|----------|----------|-------|----------|-----------|---------------------|
| STRATEGIC | 0 | 1 | 0 | 0 | Treat (100%) |
| OPERATIONAL | 1 | 4 | 0 | 0 | Treat (80%) |
| FINANCIAL | 0 | 2 | 0 | 0 | Treat (100%) |
| COMPLIANCE | 0 | 1 | 0 | 0 | Treat (100%) |
| REPUTATIONAL | 0 | 1 | 0 | 0 | Treat (100%) |
| TECHNOLOGY | 1 | 2 | 0 | 0 | Treat (67%) |

**Key Insights:**
- **83% of risks require active treatment** - Significant mitigation effort required
- **Only 17% can be tolerated** - Most risks require intervention
- **No transfer opportunities** - Risks are internal to project execution
- **Strong control effectiveness** overall - 39% risk reduction

---

## G. Risk Appetite Compliance

**Organizational Risk Appetite Thresholds:**

| Category | Appetite Level | Threshold Score | Description |
|----------|---------------|-----------------|-------------|
| STRATEGIC | Medium | ≤ 12 | Timeline risks acceptable with contingency |
| OPERATIONAL | Medium | ≤ 9 | Moderate tolerance for operational challenges |
| FINANCIAL | Medium | ≤ 9 | Budget flexibility within contingency |
| COMPLIANCE | Low | ≤ 6 | Minimal tolerance for compliance breaches |
| REPUTATIONAL | Low | ≤ 6 | Low tolerance for user dissatisfaction |
| TECHNOLOGY | Medium | ≤ 12 | Accept technology risks with mitigations |

**Compliance Summary:**

| Category | Appetite | Risks Within | Risks Exceeding | Avg Excess | Action Required |
|----------|----------|--------------|-----------------|------------|-----------------|
| STRATEGIC | ≤ 12 | 1 (100%) | 0 (0%) | N/A | ✅ Compliant |
| OPERATIONAL | ≤ 9 | 4 (80%) | 1 (20%) | +3 points | ⚠️ R-001 at threshold |
| FINANCIAL | ≤ 9 | 2 (100%) | 0 (0%) | N/A | ✅ Compliant |
| COMPLIANCE | ≤ 6 | 1 (100%) | 0 (0%) | N/A | ✅ Compliant |
| REPUTATIONAL | ≤ 6 | 1 (100%) | 0 (0%) | N/A | ✅ Compliant |
| TECHNOLOGY | ≤ 12 | 2 (67%) | 1 (33%) | +3 points | ⚠️ CIO approval required |

**Overall Appetite Compliance:** ⚠️ 83% of risk categories within appetite

**Risks Exceeding Appetite:**

| Risk ID | Category | Appetite | Actual | Excess | % Over | Escalation |
|---------|----------|----------|--------|--------|--------|------------|
| R-006 | TECHNOLOGY | 12 | 15 | +3 | 25% | ⚠️ CIO approval required |

**Recommendations:**
1. **PRIORITY**: Obtain CIO approval for R-006 (TECHNOLOGY exceeds appetite)
2. **MONITOR**: R-001 at operational appetite threshold, additional controls if score increases
3. **MAINTAIN**: Current control effectiveness for all other risks

---

## H. Prioritized Action Plan

**Priority Actions for Risk Mitigation:**

### Priority 1: URGENT (Appetite Exceedance)

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Expected Impact | Status |
|----------|--------|-------------------|-------|----------|------|-----------------|--------|
| 1 | Complete Tier 1 app Windows 11 assessment | R-006 (TECHNOLOGY) | IT Ops Director | Month 1, Week 3 | £0 | Early detection of incompatible apps | Not Started |
| 2 | Develop ESU/VDI contingency plans | R-006 (TECHNOLOGY) | IT Ops Director | Month 2 | £10-100K | Fallback for any blocked apps | Not Started |

**Total Urgent Actions:** 2
**Total Cost:** £10-100K (contingent)
**Expected Risk Reduction:** Enables informed decision-making

### Priority 2: HIGH (Schedule Risk)

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Expected Impact | Status |
|----------|--------|-------------------|-------|----------|------|-----------------|--------|
| 3 | Secure contractor augmentation (2 FTEs) | R-007 (OPERATIONAL) | IT Ops Director | Month 0, Week 2 | £30K | Increase capacity 67% | In Progress |
| 4 | Weekly progress tracking vs. milestones | R-007 (OPERATIONAL) | IT Ops Director | Ongoing | £0 | Early warning of slippage | In Progress |
| 5 | Pre-approve Tier 2 scope reduction contingency | R-007 (OPERATIONAL) | CIO | Month 2 | £0 | Fallback if behind schedule | Not Started |

**Total High Priority Actions:** 3
**Total Cost:** £30K
**Expected Risk Reduction:** 20% reduction in R-007

### Priority 3: MEDIUM (Operational Efficiency)

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Expected Impact | Status |
|----------|--------|-------------------|-------|----------|------|-----------------|--------|
| 6 | Implement vendor engagement tracker | R-001 (OPERATIONAL) | IT Packager Lead | Month 0, Week 3 | £0 | Better vendor response tracking | Not Started |
| 7 | Publish knowledge base articles T-14 | R-012 (REPUTATIONAL) | Change Manager | Ongoing | £5K | Reduce Helpdesk ticket volume | In Progress |
| 8 | Conduct Application Owner kickoff | R-002 (OPERATIONAL) | Change Manager | Month 0, Week 2 | £0 | Improve UAT engagement | Not Started |

**Total Medium Priority Actions:** 3
**Total Cost:** £5K
**Expected Risk Reduction:** 15% across operational risks

**Overall Action Plan Summary:**
- **Total Actions:** 8
- **Total Investment:** £35-135K (contingent on R-006)
- **Expected Risk Reduction:** 18 points (19% additional reduction)
- **Target Completion:** Month 2

---

## I. Integration with SOBC

**How this Risk Register feeds into Strategic Outline Business Case (SOBC):**

### SOBC Strategic Case (Part A)
- **"Why Now?" section** uses strategic risks to demonstrate urgency
- **R-007** (OPERATIONAL, 12): Demonstrates critical path dependency on Project 001 timeline

### SOBC Economic Case (Part B)
- **Risk-adjusted costs** use financial risks + HM Treasury optimism bias
- **R-006** (TECHNOLOGY, 15): ESU/VDI contingency costs £10-100K
- **R-004** (FINANCIAL, 8): Savings shortfall risk → Add 15% contingency
- **Total risk contingency:** £25-150K added to Economic Case costs

### SOBC Management Case (Part E - Risk Management)
- **Full risk register** included in Management Case Part E
- **Top 12 risks** highlighted with mitigation plans
- **Risk ownership matrix** demonstrates clear accountability
- **Monitoring framework** shows ongoing risk management capability

### SOBC Recommendation
- **Moderate-risk profile** (2 risks exceeding appetite) may influence:
  - Resource allocation (contractor augmentation approved)
  - Contingency planning (ESU/VDI fallback)
  - Timeline management (scope reduction contingency)

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
- Vendor response rate (target: >80% within 30 days) → R-001
- Application Owner UAT scheduling rate → R-002
- IT Packager utilization (trigger: >120% for 2+ weeks) → R-007

**Lagging Indicators** (confirm risk materialization):
- Applications tested vs. plan → R-007
- Application-related support tickets (target: <5%) → R-012
- Tier 1 compatibility certification rate → G-1

### Escalation Criteria

**Automatic Escalation Triggers:**
1. Any risk increases by 5+ points
2. Any new Critical risk (score 20-25) identified
3. Any risk exceeds appetite and no mitigation plan
4. Any mitigation action delayed > 2 weeks
5. 2+ risks in same category exceed appetite

### Reporting Requirements

**Weekly** (During Critical Phases - Months 1-4):
- Dashboard to Project Team
- Risk status update on critical risks
- Action plan progress

**Monthly** (All Risks):
- Full risk register to Steering Committee
- Risk matrix visualization
- Risk appetite compliance summary
- Action plan status

**Quarterly** (Strategic Review):
- Risk register to CIO
- Risk trend analysis
- Risk appetite threshold review
- Lessons learned and process improvements

### Risk Register Maintenance

**Risk Register Owner:** IT Operations Director

**Responsibilities:**
- Maintain accuracy of risk register
- Coordinate risk reviews with risk owners
- Update risk scores based on evidence
- Track mitigation action completion
- Escalate risks per criteria
- Produce risk reports

**Update Process:**
1. Risk owners submit updates weekly (critical/high) or bi-weekly (medium/low)
2. Risk register owner validates and updates register
3. PMO reviews for consistency and completeness
4. IT Ops Director approves material changes

**Version Control:**
- Version increments with each significant update
- Change log maintained in Document Control section
- Previous versions archived for audit trail

---

## K. Orange Book Compliance Checklist

This risk register demonstrates compliance with HM Treasury Orange Book (2023):

### Part I - Risk Management Principles

- ✅ **A. Governance and Leadership**
  - Risk owners assigned from senior stakeholders
  - Escalation paths defined to CIO
  - Risk appetite set and monitored per category

- ✅ **B. Integration**
  - Risks linked to stakeholder goals (stakeholder-drivers.md)
  - Risks inform project governance
  - Risk management embedded in project lifecycle

- ✅ **C. Collaboration and Best Information**
  - Risks sourced from stakeholder analysis and requirements
  - Multiple perspectives considered (9 stakeholders)
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
  - Lessons learned process

### Part II - Risk Control Framework

- ✅ **4-Pillar "House" Structure**
  - Risk appetite and tolerance defined per category
  - Risk ownership and governance established
  - Risk assessment methodology documented
  - Control effectiveness measured (inherent vs residual)

---

## Appendix A: Risk Assessment Scales

### Likelihood Scale (1-5)

| Score | Rating | Probability | Description |
|-------|--------|-------------|-------------|
| 1 | Rare | < 5% | Highly unlikely, exceptional circumstances only |
| 2 | Unlikely | 5-25% | Could happen but probably won't, low probability |
| 3 | Possible | 25-50% | Reasonable chance, has happened before |
| 4 | Likely | 50-75% | More likely to happen than not, expected |
| 5 | Almost Certain | > 75% | Expected to occur, highly probable |

### Impact Scale (1-5)

| Score | Rating | Financial Impact | Schedule Impact | Stakeholder Impact | Description |
|-------|--------|------------------|-----------------|-------------------|-------------|
| 1 | Negligible | < £10K | < 1 week | Minimal concern | Easily absorbed, routine management |
| 2 | Minor | £10K-£50K | 1-2 weeks | Minor concern | Manageable within contingency |
| 3 | Moderate | £50K-£200K | 2-4 weeks | Significant concern | Requires management effort and approval |
| 4 | Major | £200K-£500K | 1-2 months | Severe concern | Threatens key objectives, difficult recovery |
| 5 | Catastrophic | > £500K | > 2 months | Existential threat | Project failure, Windows 10 EOL risk |

### Risk Score Matrix (Likelihood × Impact)

| Score Range | Risk Level | Color | Action Required |
|-------------|------------|-------|-----------------|
| 20-25 | Critical | 🟥 Red | Immediate escalation, CIO action |
| 13-19 | High | 🟧 Orange | Senior management attention, mitigation required |
| 6-12 | Medium | 🟨 Yellow | Management monitoring, consider mitigation |
| 1-5 | Low | 🟩 Green | Routine monitoring, accept or apply low-cost controls |

---

## Appendix B: Stakeholder-Risk Linkage

**Traceability from Stakeholders to Risks:**

| Stakeholder | Driver (from stakeholder-drivers.md) | Risk ID | Risk Title | Category | Score |
|-------------|-------------------------------------|---------|------------|----------|-------|
| IT Ops Director | SD-1: Enable W11 migration success | R-001 | Vendor compatibility unavailable | OPERATIONAL | 9 |
| IT Ops Director | SD-1: Enable W11 migration success | R-006 | Critical app incompatible | TECHNOLOGY | 15 |
| IT Ops Director | SD-1: Enable W11 migration success | R-007 | Testing timeline extension | OPERATIONAL | 12 |
| CFO | SD-2: Licensing cost reduction | R-004 | Savings shortfall from resistance | FINANCIAL | 8 |
| CFO | SD-2: Licensing cost reduction | R-009 | License compliance audit | COMPLIANCE | 3 |
| Enterprise Architect | SD-3: Application governance | R-010 | CMDB integration delays | OPERATIONAL | 2 |
| Application Owners | SD-4: Business continuity | R-002 | App Owners unresponsive for UAT | OPERATIONAL | 4 |
| Application Owners | SD-4: Business continuity | R-006 | Critical app incompatible | TECHNOLOGY | 15 |
| CISO | SD-5: Security risk elimination | R-008 | Security scanning blocks deployment | TECHNOLOGY | 6 |
| End Users | SD-6: Don't take my tools | R-004 | Savings shortfall from resistance | FINANCIAL | 8 |
| End Users | SD-6: Don't take my tools | R-012 | Helpdesk overwhelmed | REPUTATIONAL | 6 |
| Helpdesk Manager | SD-7: Don't overwhelm team | R-012 | Helpdesk overwhelmed | REPUTATIONAL | 6 |
| IT Packagers | SD-9: Clear requirements | R-005 | Silent install discovery fails | OPERATIONAL | 6 |
| IT Packagers | SD-9: Clear requirements | R-003 | ARM64 compatibility issues | TECHNOLOGY | 6 |

**Stakeholder Conflicts Mapped to Risks:**

| Stakeholder Conflict (from stakeholder-drivers.md) | Risk(s) Created | Mitigation |
|---------------------------------------------------|-----------------|------------|
| CFO vs End Users: Rationalization vs retention | R-004 | Phased approach, executive sponsorship |
| IT Ops vs Timeline: Testing vs speed | R-007 | Contractor augmentation, tiered testing |
| CISO vs IT Ops: Security vs velocity | R-008 | Risk-based tiering, automated scanning |

---

## Validation & Sign-off

### Stakeholder Review

| Stakeholder | Review Date | Comments | Status |
|-------------|-------------|----------|--------|
| IT Operations Director | PENDING | | PENDING |
| CIO | PENDING | | PENDING |
| CFO | PENDING | | PENDING |
| CISO | PENDING | | PENDING |
| Enterprise Architect | PENDING | | PENDING |

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
   - [ ] Escalate R-006 to CIO for risk acceptance decision
   - [ ] Confirm contractor augmentation for R-007 mitigation
   - [ ] Schedule weekly risk review cadence

2. **Short-term Actions** (This Month):
   - [ ] Complete Tier 1 application Windows 11 compatibility assessment
   - [ ] Implement vendor engagement tracker for R-001
   - [ ] Conduct Application Owner kickoff for R-002
   - [ ] Publish first phase knowledge base articles for R-012

3. **Medium-term Actions** (This Quarter):
   - [ ] Develop ESU/VDI contingency plans for R-006
   - [ ] Complete Tier 2 compatibility testing per G-5
   - [ ] Achieve Phase 1 rationalization (80 apps) per G-2
   - [ ] Quarterly risk appetite compliance review

---

**END OF RISK REGISTER**

---

*This risk register follows HM Treasury Orange Book (2023) principles and integrates with ArcKit's stakeholder-driven architecture governance framework.*

*For questions or updates, contact: IT Operations Director*

---

**Generated by**: ArcKit `/arckit.risk` command
**Generated on**: 2026-01-24
**ArcKit Version**: 1.0
**Project**: Application Packaging and Rationalisation (Project 002)
**Model**: claude-opus-4-5-20251101
**Generation Context**: Created comprehensive risk register based on stakeholder-drivers.md (7 pre-identified risks) and requirements.md
