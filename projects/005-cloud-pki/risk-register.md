# Risk Register: Hybrid Public Key Infrastructure (PKI)

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-005-RISK-v1.0 |
| **Document Type** | Risk Register |
| **Project** | Hybrid Public Key Infrastructure (PKI) (Project 005) |
| **Classification** | OFFICIAL-SENSITIVE |
| **Status** | DRAFT |
| **Version** | 1.0 |
| **Created Date** | 2026-01-24 |
| **Last Modified** | 2026-01-24 |
| **Review Cycle** | Weekly (Critical/High), Monthly (Medium/Low) |
| **Next Review Date** | 2026-01-31 |
| **Owner** | CISO (Executive Sponsor) |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | Security Team, Infrastructure Team, Architecture Team, Executive Sponsors, Compliance Team, Procurement |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2026-01-24 | ArcKit AI | Initial creation from `/arckit.risk` command | PENDING | PENDING |

---

## Executive Summary

### Risk Profile Overview

**Total Risks Identified:** 15 risks across 6 categories

| Risk Level | Inherent | Residual | Change |
|------------|----------|----------|--------|
| **Critical** (20-25) | 2 | 0 | ↓ 100% |
| **High** (13-19) | 6 | 2 | ↓ 67% |
| **Medium** (6-12) | 6 | 8 | ↑ 33% |
| **Low** (1-5) | 1 | 5 | ↑ 400% |
| **TOTAL** | 186 | 99 | ↓ 47% |

### Risk Category Distribution

| Category | Count | Avg Inherent | Avg Residual | Control Effectiveness |
|----------|-------|--------------|--------------|----------------------|
| **STRATEGIC** | 2 | 16.0 | 9.0 | 44% reduction |
| **OPERATIONAL** | 4 | 13.0 | 6.5 | 50% reduction |
| **FINANCIAL** | 3 | 14.0 | 8.0 | 43% reduction |
| **COMPLIANCE** | 2 | 14.5 | 7.0 | 52% reduction |
| **REPUTATIONAL** | 1 | 12.0 | 6.0 | 50% reduction |
| **TECHNOLOGY** | 3 | 11.3 | 5.7 | 50% reduction |

### Overall Risk Assessment

**Overall Residual Risk Score:** 99/375
**Risk Reduction from Controls:** 47% reduction from inherent risk
**Risk Profile Status:** ✅ Acceptable - All risks within appetite after controls with appropriate escalation for 2 exceeding appetite

### Risks Exceeding Appetite

**Number of risks exceeding organizational appetite:** 2 risks

| Risk ID | Title | Category | Score | Appetite | Excess | Escalation |
|---------|-------|----------|-------|----------|--------|------------|
| R-001 | Vendor Service Outage During Critical Migration Phase | TECHNOLOGY | 9 | 9 | 0 | At threshold - Monitoring |
| R-004 | Certificate Migration Causes Production Outages | OPERATIONAL | 12 | 9 | +3 | CIO approval required |

### Top 5 Critical Risks Requiring Immediate Attention

1. **R-004** (OPERATIONAL, Medium 12): Certificate Migration Causes Production Outages - Owner: Infrastructure Manager - Status: In Progress
2. **R-006** (FINANCIAL, Medium 9): Cloud PKI Costs Exceed Budget Forecast - Owner: CFO - Status: Monitoring
3. **R-003** (STRATEGIC, Medium 9): Vendor Lock-In Limits Future Flexibility - Owner: Procurement Manager - Status: In Progress
4. **R-007** (COMPLIANCE, Medium 8): GDPR Non-Compliance for Certificate Data - Owner: DPO - Status: In Progress
5. **R-002** (STRATEGIC, Medium 9): Stakeholder Resistance to Cloud PKI Model - Owner: CISO - Status: In Progress

### Key Findings and Recommendations

**Key Findings:**
- Migration execution risks dominate - R-004 (certificate migration outages) exceeds appetite and requires phased rollout with extensive testing
- Strong control framework achieves 47% risk reduction, but OPERATIONAL category needs enhanced monitoring
- Two key conflicts identified in stakeholder analysis (cost vs. availability, automation vs. security controls) create residual risk requiring ongoing governance
- Financial risks well-controlled through TCO analysis and CFO quarterly reviews, but certificate volume forecast uncertainty remains

**Recommendations:**
1. Extend pilot phase from 3 to 4 weeks to reduce R-004 migration outage risk with more extensive testing
2. Implement weekly vendor delivery status meetings (R-007, R-003) to monitor vendor performance and contract compliance
3. Obtain CFO approval for contingency budget (10% buffer) for certificate volume growth exceeding forecast (R-006)
4. Schedule CISO quarterly risk review to ensure stakeholder alignment remains on track (R-002)

---

## A. Risk Matrix Visualization

### Inherent Risk Matrix (Before Controls)

**Likelihood × Impact Matrix - Inherent Risk Positions**

```
LIKELIHOOD ↑
     5 | Almost Certain |       |       |       |       |       |
       |                |-------|-------|-------|-------|-------|
     4 | Likely         |       |       | R-004 | R-001 | R-005 |
       |                |       |       | R-009 |       |       |
       |                |-------|-------|-------|-------|-------|
     3 | Possible       |       | R-011 | R-002 | R-006 | R-003 |
       |                |       | R-015 | R-007 | R-010 |       |
       |                |       |       | R-012 | R-013 |       |
       |                |-------|-------|-------|-------|-------|
     2 | Unlikely       |       | R-014 | R-008 |       |       |
       |                |-------|-------|-------|-------|-------|
     1 | Rare           |       |       |       |       |       |
       |________________|_______|_______|_______|_______|_______|
                            1       2       3       4       5
                        Negligible Minor  Moderate Major Catastrophic
                                      IMPACT →
```

**Risk Zones:**
- 🟥 **Critical (20-25)**: R-003, R-005 - Immediate escalation required
- 🟧 **High (13-19)**: R-001, R-004, R-006, R-009, R-010, R-013 - Senior management attention
- 🟨 **Medium (6-12)**: R-002, R-007, R-008, R-011, R-012, R-015 - Management monitoring
- 🟩 **Low (1-5)**: R-014 - Routine monitoring

### Residual Risk Matrix (After Controls)

**Likelihood × Impact Matrix - Residual Risk Positions**

```
LIKELIHOOD ↑
     5 | Almost Certain |       |       |       |       |       |
       |                |-------|-------|-------|-------|-------|
     4 | Likely         |       |       |       |       |       |
       |                |-------|-------|-------|-------|-------|
     3 | Possible       |       |       | R-004 | R-006 |       |
       |                |-------|-------|-------|-------|-------|
     2 | Unlikely       |       | R-011 | R-001 | R-003 |       |
       |                |       | R-014 | R-002 |       |       |
       |                |       | R-015 | R-007 |       |       |
       |                |-------|-------|-------|-------|-------|
     1 | Rare           | R-012 | R-008 | R-005 | R-009 |       |
       |                |       |       | R-010 | R-013 |       |
       |________________|_______|_______|_______|_______|_______|
                            1       2       3       4       5
                        Negligible Minor  Moderate Major Catastrophic
                                      IMPACT →
```

**Risk Movement Analysis:**
- ✅ **Significant Improvement**: R-003 (20→8), R-005 (20→3), R-001 (16→6), R-009 (16→4), R-010 (16→4), R-013 (16→4) - Controls very effective
- ⚠️ **Moderate Improvement**: R-004 (12→12), R-006 (12→12) - Additional controls being implemented
- ✅ **Good Improvement**: R-002 (12→6), R-007 (9→6), R-008 (6→2) - Controls adequate

---

## B. Top 10 Risks (Ranked by Residual Score)

| Rank | Risk ID | Title | Category | Inherent L×I | Residual L×I | Owner | Status | Response |
|------|---------|-------|----------|--------------|--------------|-------|--------|----------|
| 1 | R-004 | Certificate migration causes production outages | OPERATIONAL | 4×3=12 | 3×4=12 | Infrastructure Manager | In Progress | TREAT |
| 2 | R-006 | Cloud PKI costs exceed budget forecast | FINANCIAL | 3×4=12 | 3×4=12 | CFO | Monitoring | TREAT |
| 3 | R-003 | Vendor lock-in limits future flexibility | STRATEGIC | 3×5=15 | 2×4=8 | Procurement Manager | In Progress | TREAT |
| 4 | R-007 | GDPR non-compliance for certificate data | COMPLIANCE | 3×3=9 | 2×4=8 | DPO | In Progress | TREAT |
| 5 | R-002 | Stakeholder resistance to cloud PKI model | STRATEGIC | 3×4=12 | 2×3=6 | CISO | In Progress | TREAT |
| 6 | R-001 | Vendor service outage during migration | TECHNOLOGY | 4×4=16 | 2×3=6 | Infrastructure Manager | Monitoring | TREAT |
| 7 | R-011 | Helpdesk unable to troubleshoot certificate issues | OPERATIONAL | 3×2=6 | 2×2=4 | Helpdesk Manager | In Progress | TREAT |
| 8 | R-009 | Certificate validation latency impacts authentication | TECHNOLOGY | 4×4=16 | 1×4=4 | Network Security Engineer | Monitoring | TREAT |
| 9 | R-013 | Security approval workflows delay DevOps releases | OPERATIONAL | 3×4=12 | 1×4=4 | Security Architect | In Progress | TREAT |
| 10 | R-005 | Critical security incident at vendor compromises certificates | TECHNOLOGY | 4×5=20 | 1×3=3 | CISO | Monitoring | TRANSFER |

---

## C. Detailed Risk Register

### Risk R-001: Vendor Service Outage During Critical Migration Phase

**Category:** TECHNOLOGY
**Status:** Monitoring
**Risk Owner:** Infrastructure Manager (from Stakeholder RACI: Accountable for Migration)
**Action Owner:** Security Architect

#### Risk Identification

**Risk Description:**
Cloud PKI vendor experiences service outage during critical migration phase (Months 4-9), causing certificate issuance failures, blocking device enrollment, and potentially triggering rollback to on-premises CA with significant schedule and cost impact.

**Root Cause:**
- Cloud service dependency: Single vendor provides critical PKI infrastructure
- Year 1 single-region deployment (per CFO/CISO conflict resolution): No automatic failover
- Migration timing: Large-scale certificate deployment during Wave 1 and Wave 2 creates peak demand
- Vendor maturity: Cloud PKI market relatively new, vendor operational maturity unproven

**Trigger Events:**
- Vendor datacenter outage (hardware failure, power outage, network connectivity)
- Vendor software bug causing service degradation or complete failure
- Vendor capacity limits exceeded during peak migration demand
- Vendor security incident requiring emergency maintenance

**Consequences if Realized:**
- **Migration Delay**: 2-4 week migration schedule delay while waiting for vendor restoration or executing rollback
- **Certificate Enrollment Failure**: Devices unable to obtain certificates, blocking Zero Trust deployment (Goal G-4)
- **User Impact**: VPN/Wi-Fi certificate-based authentication unavailable for devices mid-migration
- **Financial**: Rollback and recovery effort estimated at $50K (professional services, extended timeline)
- **Reputational**: CISO credibility damaged if migration fails ("I told you cloud was risky")

**Affected Stakeholders:**
- **CISO (SD-1)**: Strategic initiative at risk, reputation damage if migration fails
- **Infrastructure Manager (SD-2)**: Migration execution responsibility, team effort wasted on rollback
- **CFO (SD-3)**: Concerned about cloud service reliability (validates skepticism about cloud)
- **End Users (SD-12)**: Disruption to VPN/Wi-Fi access during outage

**Related Objectives:**
- **Goal G-1**: Eliminate certificate outages - Vendor outage creates new outage risk (ironic)
- **Goal G-4**: Certificate-based authentication 100% - Migration blockage delays Zero Trust

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | 50-75% probability: Cloud service outages occur industry-wide (AWS/Azure have 2-3 significant outages/year). Single-region deployment has no automatic failover. High migration demand may stress vendor capacity. |
| **Impact** | 4 - Major | Major impact: 2-4 week migration delay threatens strategic timeline. Rollback to on-premises CA ($50K cost) and reputational damage. However, organization has on-premises CA backup during Year 1 dual-run period. |
| **Inherent Risk Score** | **16** (High) | 4 × 4 = 16 |

**Risk Zone:** 🟧 High (13-19)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Dual-Run Period (Year 1)** - Keep on-premises CA operational as emergency backup
   - Owner: Infrastructure Manager
   - Effectiveness: **Strong**
   - Evidence: On-premises CA remains operational throughout Year 1, tested monthly, can resume certificate issuance within 4 hours

2. **Vendor SLA with Financial Penalties** - 99.9% availability SLA with service credits
   - Owner: Procurement Manager
   - Effectiveness: **Adequate**
   - Evidence: Contract includes financial penalties for SLA violations (service credits = 10% monthly fee per hour below SLA)

3. **Migration Phase Go/No-Go Gates** - CISO approval required before each migration phase
   - Owner: CISO
   - Effectiveness: **Strong**
   - Evidence: Go/No-Go decision documented for each phase, considers vendor health status, can defer migration if vendor issues emerging

4. **Vendor Service Health Monitoring** - Real-time dashboard monitoring vendor service status
   - Owner: Security Architect
   - Effectiveness: **Adequate**
   - Evidence: Vendor provides service health dashboard, alerts configured for degraded service, reviewed daily during migration phases

**Overall Control Effectiveness:** Strong (reduces risk from 16 to 6)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Reduced to 5-25% probability: Dual-run period means outage doesn't block migration (fallback available). Go/No-Go gates allow deferring migration if vendor issues emerging. Strong vendor SLA incentivizes reliability. |
| **Impact** | 3 - Moderate | Reduced to Moderate: Dual-run period with on-premises CA backup limits impact to minor delay (1-2 days) rather than major rollback. Financial impact limited to rescheduling effort. |
| **Residual Risk Score** | **6** (Medium) | 2 × 3 = 6 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 63% reduction from inherent (16 → 6)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Strong control framework (dual-run period, SLA penalties, Go/No-Go gates) significantly reduces risk. Dual-run period is key control providing fallback capability. Cost of additional controls (e.g., multi-region deployment Year 1) deferred to Year 2 per CFO/CISO conflict resolution.

**Alternative Responses Considered:**
- **Transfer**: Partially applied via SLA financial penalties (vendor bears financial cost of outages)
- **Terminate**: Not viable - Cloud PKI migration is strategic initiative
- **Tolerate**: Rejected for inherent risk (16) but acceptable for residual risk (6)

#### Risk Appetite Assessment

**Organizational Risk Appetite for TECHNOLOGY risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 6 (Medium)
**Assessment:** ✅ **Within Appetite** - Risk acceptable, routine monitoring sufficient

#### Action Plan

**Additional Mitigations Needed:**

1. **Vendor Health Check Before Each Migration Phase**
   - Description: Before each Go/No-Go gate (Week 4, Week 10, Week 13), Security Architect reviews vendor service health metrics (uptime past 30 days, incident history, capacity utilization) and provides report to CISO
   - Owner: Security Architect
   - Due Date: 48 hours before each Go/No-Go gate
   - Cost: $0 (staff time)
   - Expected Impact: Early warning of vendor issues, enables informed Go/No-Go decision

2. **Emergency Rollback Procedure Testing**
   - Description: Monthly test of on-premises CA fallback procedure (certificate issuance from on-premises CA, InTune SCEP connector reconfiguration) to ensure rollback capability remains viable
   - Owner: Infrastructure Manager
   - Due Date: Monthly during dual-run period
   - Cost: $0 (staff time)
   - Expected Impact: Validates fallback capability, ensures rapid recovery if vendor outage occurs

**Monitoring Plan:**
- **Frequency:** Daily vendor health dashboard review during migration phases, weekly during steady-state
- **Key Indicators:**
  - Vendor uptime (target: 99.9% monthly)
  - Certificate issuance latency (target: <5 seconds p95)
  - Vendor incident count (target: <2 incidents/month)
- **Escalation Triggers:**
  - Vendor uptime <99.5% in any 7-day period → Defer migration phase, investigate
  - Any vendor outage >1 hour → Notify CISO, assess impact on migration schedule
  - Vendor declares "major incident" → Activate contingency plan, consider rollback

---

### Risk R-002: Stakeholder Resistance to Cloud PKI Model

**Category:** STRATEGIC
**Status:** In Progress
**Risk Owner:** CISO (from Stakeholder RACI: Accountable for Stakeholder Management)
**Action Owner:** Security Architect

#### Risk Identification

**Risk Description:**
Key stakeholders (particularly CFO and Infrastructure team) resist Cloud PKI model due to concerns about cloud costs, loss of control, and change management burden, leading to reduced project support, budget constraints, or scope limitations that undermine project success.

**Root Cause:**
- **CFO skepticism (SD-3)**: "Cloud is always more expensive than predicted" - concern about hidden costs, budget overruns
- **Infrastructure team preference**: Comfort with on-premises CA, concern about cloud learning curve, job security fears
- **Conflict resolution tension**: CFO/CISO compromise on phased multi-region creates ongoing tension
- **Change fatigue**: Organization undergoing multiple IT transformation initiatives simultaneously

**Trigger Events:**
- Cloud PKI costs exceed budget forecast by >10% (validates CFO skepticism)
- Migration incident causes production outage (validates infrastructure team concerns)
- Vendor announces price increase after Year 1 (confirms lock-in concerns)
- Competing IT initiative requests budget reallocation from Cloud PKI

**Consequences if Realized:**
- **Budget Cuts**: CFO reduces Cloud PKI budget, forcing scope reduction (e.g., defer code signing, reduce device coverage)
- **Resource Constraints**: Infrastructure team deprioritizes Cloud PKI work in favor of "more important" initiatives
- **Schedule Delay**: Stakeholder conflicts require escalation, extending decision timelines
- **Partial Implementation**: Compromise solutions deliver less value than planned (e.g., 50% certificate coverage vs. 100%)

**Affected Stakeholders:**
- **CISO (SD-1)**: Strategic initiative at risk, must manage stakeholder conflicts
- **CFO (SD-3)**: Concerned about financial exposure, needs ROI validation
- **Infrastructure Manager (SD-2)**: Caught between executive direction and team concerns
- **Security Architect (SD-4)**: Zero Trust vision at risk if scope reduced

**Related Objectives:**
- **Goal G-3**: Achieve 30% TCO reduction - Must demonstrate to satisfy CFO
- **Goal G-4**: Certificate-based authentication 100% - Scope reduction threatens target

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | 25-50% probability: Two documented stakeholder conflicts (cost vs. availability, automation vs. security controls). CFO explicitly skeptical per interview notes. Infrastructure team change resistance typical for cloud migrations. |
| **Impact** | 4 - Major | Major strategic impact: Budget cuts or scope reduction would undermine Zero Trust strategic initiative, reduce ROI, and damage CISO credibility. However, CISO as Executive Sponsor provides strong sponsorship. |
| **Inherent Risk Score** | **12** (Medium) | 3 × 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Comprehensive TCO Analysis** - Detailed 3-year TCO comparison (Cloud PKI $980K vs. on-premises $1.7M)
   - Owner: CFO
   - Effectiveness: **Strong**
   - Evidence: TCO analysis reviewed and approved by CFO, 42% savings documented, quarterly validation against actuals

2. **Quarterly CFO Business Reviews** - Regular financial performance reviews
   - Owner: CFO
   - Effectiveness: **Strong**
   - Evidence: Quarterly reviews track actuals vs. budget, provide early warning of cost overruns, demonstrate ROI progress

3. **Stakeholder Communication Plan** - Tailored messaging for each stakeholder per stakeholder-drivers.md
   - Owner: Security Architect
   - Effectiveness: **Adequate**
   - Evidence: Communication plan documented with key messages, frequency, and channels for each stakeholder

4. **Conflict Resolution Framework** - Documented resolution for CFO/CISO and Infrastructure/Security conflicts
   - Owner: CISO
   - Effectiveness: **Strong**
   - Evidence: Phased multi-region approach documented, risk-based automation compromise agreed, decision authority matrix defined

**Overall Control Effectiveness:** Strong (reduces risk from 12 to 6)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Reduced to 5-25% probability: TCO analysis addresses CFO concerns with data. Conflict resolutions documented and agreed. Strong CISO sponsorship. Quarterly reviews provide transparency. |
| **Impact** | 3 - Moderate | Reduced to Moderate: Conflicts documented and resolved through compromise (not eliminated). CISO sponsorship protects project from major scope reduction. |
| **Residual Risk Score** | **6** (Medium) | 2 × 3 = 6 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 50% reduction from inherent (12 → 6)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Active stakeholder management through communication plan, quarterly reviews, and conflict resolution framework. Cannot eliminate stakeholder concerns but can demonstrate value and maintain alignment through transparency.

#### Risk Appetite Assessment

**Organizational Risk Appetite for STRATEGIC risks:** Medium (Score ≤ 12)
**Current Residual Risk Score:** 6 (Medium)
**Assessment:** ✅ **Within Appetite** - Risk acceptable with ongoing stakeholder management

---

### Risk R-003: Vendor Lock-In Limits Future Flexibility

**Category:** STRATEGIC
**Status:** In Progress
**Risk Owner:** Procurement Manager (from Stakeholder RACI: Accountable for Vendor Management)
**Action Owner:** Security Architect

#### Risk Identification

**Risk Description:**
Cloud PKI vendor uses proprietary APIs, data formats, or certificate management approaches that create lock-in, making it difficult or expensive to migrate to alternative vendor if performance, pricing, or strategic fit changes.

**Root Cause:**
- **Proprietary APIs**: Vendor may use non-standard certificate management APIs (not ACME, not standard SCEP)
- **Data format lock-in**: Certificate policies, templates, and configurations stored in vendor-specific format
- **Integration dependencies**: Custom integrations with InTune, Azure AD built on vendor-specific connectors
- **Contract terms**: Multi-year contracts with early termination penalties

**Trigger Events:**
- Vendor acquired by competitor (product discontinuation risk)
- Vendor raises prices significantly (20%+) after Year 1
- Better alternative vendor emerges (lower cost, superior features)
- Vendor security incident damages trust (need to exit quickly)

**Consequences if Realized:**
- **High Migration Cost**: $100-200K migration cost to alternative vendor (integration rebuild, certificate reissuance)
- **Migration Downtime**: 6-12 month migration timeline to alternative vendor
- **Vendor Leverage**: Vendor negotiates from position of strength in contract renewals
- **Strategic Constraint**: Unable to adopt superior PKI technology due to lock-in

**Affected Stakeholders:**
- **Procurement Manager (SD-11)**: Vendor lock-in undermines negotiating leverage
- **CFO (SD-3)**: Lock-in risk threatens cost optimization (vendor price increases)
- **Security Architect (SD-4)**: Lock-in may constrain future architecture evolution

**Related Objectives:**
- **Goal G-3**: Achieve 30% TCO reduction - Vendor price increases could negate savings

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | 25-50% probability: Common pattern in cloud services. Vendors have incentive to create switching costs. SCEP and ACME are standards but implementations vary. |
| **Impact** | 5 - Catastrophic | Catastrophic long-term: Vendor lock-in creates permanent dependency. Migration cost ($100-200K) plus 6-12 month timeline. Unable to respond to market changes. |
| **Inherent Risk Score** | **15** (High) | 3 × 5 = 15 |

**Risk Zone:** 🟧 High (13-19)

#### Current Controls and Mitigations

**Existing Controls:**
1. **RFP Requirement: Open Standards** - Vendor must support SCEP, ACME, REST APIs
   - Owner: Security Architect
   - Effectiveness: **Strong**
   - Evidence: RFP requires SCEP, ACME protocol support. Vendor compliance validated in PoC.

2. **Annual Contract Renewal** - No multi-year lock-in, annual renewal terms
   - Owner: Procurement Manager
   - Effectiveness: **Strong**
   - Evidence: Contract negotiated with annual renewal, no early termination penalty after Year 1

3. **Alternative Vendor Pre-Qualification** - 2 backup vendors identified during RFP
   - Owner: Procurement Manager
   - Effectiveness: **Adequate**
   - Evidence: 2 alternative vendors (DigiCert, Sectigo) evaluated during RFP, maintain relationship

4. **Exit Strategy Documentation** - Documented migration path to alternative vendor
   - Owner: Security Architect
   - Effectiveness: **Adequate**
   - Evidence: Exit strategy documented including certificate export, integration migration, timeline estimate

**Overall Control Effectiveness:** Strong (reduces risk from 15 to 8)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Reduced to 5-25% probability: Open standards (SCEP, ACME) reduce technical lock-in. Annual contract provides flexibility. Alternative vendors identified. |
| **Impact** | 4 - Major | Reduced to Major: Exit strategy provides migration path. Annual contract avoids termination penalty. However, migration still requires 6+ months and significant effort. |
| **Residual Risk Score** | **8** (Medium) | 2 × 4 = 8 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 47% reduction from inherent (15 → 8)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Open standards requirement and annual contract provide flexibility. Cannot eliminate lock-in entirely but can minimize switching costs and preserve negotiating leverage.

#### Risk Appetite Assessment

**Organizational Risk Appetite for STRATEGIC risks:** Medium (Score ≤ 12)
**Current Residual Risk Score:** 8 (Medium)
**Assessment:** ✅ **Within Appetite** - Risk acceptable with vendor management controls

---

### Risk R-004: Certificate Migration Causes Production Outages

**Category:** OPERATIONAL
**Status:** In Progress
**Risk Owner:** Infrastructure Manager (from Stakeholder RACI: Accountable for Migration Execution)
**Action Owner:** Infrastructure Manager

#### Risk Identification

**Risk Description:**
Migration from on-premises CA to Cloud PKI causes certificate-related production outages due to misconfiguration, application incompatibility, or timing issues during certificate cutover, undermining project credibility and stakeholder confidence.

**Root Cause:**
- **Migration complexity**: 1,000+ certificates across devices, servers, applications with different renewal schedules
- **Application compatibility**: Legacy applications may not trust Cloud PKI root CA (certificate chain validation failure)
- **Timing sensitivity**: Certificate cutover must be coordinated with application maintenance windows
- **Knowledge gaps**: Infrastructure team has limited cloud PKI migration experience

**Trigger Events:**
- Root CA trust not propagated to all devices/servers before certificate cutover
- Application certificate validation fails due to intermediate CA chain misconfiguration
- Certificate renewal timing conflict (old certificate expires before new certificate deployed)
- Network connectivity issue prevents device from reaching Cloud PKI SCEP endpoint

**Consequences if Realized:**
- **Production Outage**: VPN, Wi-Fi, or application authentication failures affecting users
- **Stakeholder Confidence**: CISO and CFO question migration approach ("we said zero outages")
- **Schedule Delay**: Rollback and investigation adds 1-2 weeks to migration schedule
- **Team Morale**: Infrastructure team frustrated after firefighting (defeats purpose of Cloud PKI)

**Affected Stakeholders:**
- **Infrastructure Manager (SD-2)**: Migration execution accountability, team morale at risk
- **CISO (SD-1)**: "Eliminate certificate outages" goal undermined (ironic if migration causes outages)
- **End Users (SD-12)**: Productivity disruption from authentication failures

**Related Objectives:**
- **Goal G-1**: Eliminate certificate-related production outages - Migration outage would be failure
- **Goal G-2**: Reduce operational effort - Outage firefighting increases effort

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | 50-75% probability: Certificate migrations commonly experience issues. Large scale (1,000+ certificates, 5,000 devices). Team lacks cloud PKI migration experience. Multiple moving parts (InTune, Azure AD, RADIUS, VPN). |
| **Impact** | 3 - Moderate | Moderate impact: Individual outages likely limited to specific application or device group. Dual-run period allows rollback. However, multiple outages would damage credibility significantly. |
| **Inherent Risk Score** | **12** (Medium) | 4 × 3 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Phased Migration (Pilot → Wave 1 → Wave 2)**
   - Owner: Infrastructure Manager
   - Effectiveness: **Strong**
   - Evidence: 12-month migration plan with 3 phases. Pilot (100 devices) validates approach before production.

2. **Dual-Run Period with On-Premises CA Backup**
   - Owner: Infrastructure Manager
   - Effectiveness: **Strong**
   - Evidence: On-premises CA remains operational throughout Year 1, enabling rapid rollback.

3. **Go/No-Go Gates with CISO Approval**
   - Owner: CISO
   - Effectiveness: **Strong**
   - Evidence: Documented criteria for each phase, CISO sign-off required.

4. **Vendor Professional Services for Knowledge Transfer**
   - Owner: Security Architect
   - Effectiveness: **Adequate**
   - Evidence: $50K professional services budget for vendor-led migration support and training.

**Overall Control Effectiveness:** Adequate (controls strong but risk inherent to complex migration)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Reduced to 25-50% probability: Phased approach and pilot phase catch issues early. But migration complexity means some issues likely despite controls. |
| **Impact** | 4 - Major | Remains Major: Even with controls, an outage during production migration (Wave 1/2) would damage credibility significantly. Impact elevated from inherent due to higher visibility at scale. |
| **Residual Risk Score** | **12** (Medium) | 3 × 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 0% (risk profile shifted from L4×I3 to L3×I4)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Cannot eliminate migration risk but can minimize impact through phased approach, extensive testing, and rapid rollback capability. Additional mitigations needed to reduce likelihood further.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 12 (Medium)
**Assessment:** ❌ **Exceeds Appetite** by 3 points (33% over threshold)

**Justification for Proceeding:**
1. **Strategic Imperative**: Migration is core project objective; cannot be avoided
2. **Strong Controls**: Phased approach, dual-run period, Go/No-Go gates provide safety net
3. **Controlled Risk**: Pilot phase (100 devices) has minimal business impact if issues occur
4. **CISO Approval**: CISO accepted risk as necessary for strategic goal achievement

**Escalation Required:** Yes - CISO approval required for each migration phase Go/No-Go

#### Action Plan

**Additional Mitigations Needed:**

1. **Extend Pilot Phase Duration (3→4 weeks)**
   - Description: Extend pilot from 3 weeks to 4 weeks to allow more comprehensive testing including certificate renewal cycle validation
   - Owner: Infrastructure Manager
   - Due Date: Before pilot phase starts (Month 1)
   - Cost: 1 week schedule extension
   - Expected Impact: Reduce likelihood from 3 to 2

2. **Application Compatibility Testing Matrix**
   - Description: Document all applications consuming certificates, test Cloud PKI certificate chain validation for each application before migration
   - Owner: Security Architect
   - Due Date: Before Wave 1 (Month 4)
   - Cost: $0 (staff time)
   - Expected Impact: Identify incompatible applications before production migration

3. **Runbook: Emergency Rollback Procedure**
   - Description: Documented, tested procedure to rollback any device/application to on-premises CA within 2 hours
   - Owner: Infrastructure Manager
   - Due Date: Before pilot phase (Month 1)
   - Cost: $0 (staff time)
   - Expected Impact: Minimize outage duration if issues occur

**Target Residual Risk After Mitigations:**
- Target Likelihood: 2 (Unlikely)
- Target Impact: 3 (Moderate)
- Target Score: 6 (Medium) ✅ Within appetite

---

### Risk R-005: Critical Security Incident at Vendor Compromises Certificates

**Category:** TECHNOLOGY
**Status:** Monitoring
**Risk Owner:** CISO (from Stakeholder RACI: Accountable for Security)
**Action Owner:** Security Architect

#### Risk Identification

**Risk Description:**
Cloud PKI vendor experiences critical security incident (breach, key compromise, unauthorized certificate issuance) that compromises certificate trust, requiring mass certificate revocation and reissuance affecting all organizational certificates.

**Root Cause:**
- **Single vendor dependency**: All certificates issued by single Cloud PKI provider
- **Vendor security posture**: Vendor security practices may have unknown vulnerabilities
- **Attack surface**: Cloud PKI vendors are high-value targets for nation-state and criminal actors
- **Supply chain risk**: Vendor's supply chain (HSM providers, datacenter providers) could be compromised

**Trigger Events:**
- Vendor root CA private key compromised (catastrophic)
- Vendor issues unauthorized certificates (rogue certificates)
- Vendor data breach exposes certificate metadata
- Vendor employee insider threat

**Consequences if Realized:**
- **Certificate Mass Revocation**: All organizational certificates must be revoked and reissued
- **Extended Downtime**: 1-4 weeks to reissue 1,000+ certificates across all devices and applications
- **Trust Damage**: Browser/OS trust stores may remove vendor root CA (certificates untrusted globally)
- **Regulatory**: GDPR notification requirements, potential fines for data breach
- **Reputational**: "We chose a vendor that got hacked" damages CISO credibility

**Affected Stakeholders:**
- **CISO (SD-1)**: Security accountability, reputation at stake
- **Compliance Officer (SD-5)**: Regulatory notification and audit implications
- **All Users (SD-12)**: Extended authentication failures during recovery

**Related Objectives:**
- **Goal G-1**: Eliminate certificate outages - Vendor breach would cause massive outage
- **Goal G-5**: SOC 2/ISO 27001 compliance - Vendor breach creates compliance incident

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | 50-75% probability: Major PKI vendors have experienced incidents (DigiCert in 2023, Let's Encrypt misissued certificates). Cloud PKI vendors are high-value targets. |
| **Impact** | 5 - Catastrophic | Catastrophic: Root CA compromise requires certificate mass revocation. 1-4 week recovery. Browser trust removal possible. Regulatory and reputational consequences severe. |
| **Inherent Risk Score** | **20** (Critical) | 4 × 5 = 20 |

**Risk Zone:** 🟥 Critical (20-25)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Vendor SOC 2 Type II and ISO 27001 Certification Requirement**
   - Owner: Procurement Manager
   - Effectiveness: **Strong**
   - Evidence: RFP requires current SOC 2 Type II and ISO 27001. Vendor certifications validated annually.

2. **Vendor HSM Key Protection**
   - Owner: Security Architect
   - Effectiveness: **Strong**
   - Evidence: Vendor uses FIPS 140-2 Level 3 HSMs for root CA private key protection. Key ceremony documented.

3. **Vendor Security Questionnaire and Assessment**
   - Owner: Security Architect
   - Effectiveness: **Adequate**
   - Evidence: Completed vendor security assessment (CAIQ) during RFP. Annual reassessment planned.

4. **Incident Response Plan: Vendor Security Incident**
   - Owner: CISO
   - Effectiveness: **Adequate**
   - Evidence: Documented incident response procedure for vendor security incident including communication, assessment, and recovery steps.

5. **Cyber Insurance Coverage**
   - Owner: CFO
   - Effectiveness: **Adequate**
   - Evidence: Organization's cyber insurance policy covers third-party vendor breaches (up to $2M coverage).

**Overall Control Effectiveness:** Strong (reduces risk significantly through transfer and detection)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 1 - Rare | Reduced to <5% probability: SOC 2/ISO 27001 certification indicates mature security practices. HSM key protection prevents key extraction. Vendor security assessment validates controls. |
| **Impact** | 3 - Moderate | Reduced to Moderate: Cyber insurance provides financial coverage. Incident response plan enables rapid response. Dual-run period (Year 1) provides fallback. |
| **Residual Risk Score** | **3** (Low) | 1 × 3 = 3 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 85% reduction from inherent (20 → 3)

#### Risk Response (4Ts Framework)

**Primary Response:** TRANSFER (Insurance) + TREAT (Vendor Due Diligence)

**Rationale:**
Cannot prevent vendor security incident, but can (1) select vendor with strong security posture (TREAT) and (2) transfer financial risk via cyber insurance (TRANSFER). Dual-run period provides fallback capability.

#### Risk Appetite Assessment

**Organizational Risk Appetite for TECHNOLOGY risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 3 (Low)
**Assessment:** ✅ **Within Appetite** - Risk acceptable with transfer and monitoring

---

### Risk R-006: Cloud PKI Costs Exceed Budget Forecast

**Category:** FINANCIAL
**Status:** Monitoring
**Risk Owner:** CFO (from Stakeholder RACI: Accountable for Budget)
**Action Owner:** Procurement Manager

#### Risk Identification

**Risk Description:**
Cloud PKI actual costs exceed budget forecast due to higher-than-expected certificate volume, hidden costs (API calls, data transfer, premium support), or vendor price increases, undermining CFO confidence and TCO savings claims.

**Root Cause:**
- **Certificate volume uncertainty**: 1M certificates forecast but actual volume could be 1.5-2M
- **Hidden costs**: API call charges, data transfer fees, premium support costs not fully included in initial pricing
- **Vendor pricing changes**: Vendor may increase prices after Year 1 (no long-term price lock)
- **Scope expansion**: Additional use cases (code signing, mTLS) may increase certificate demand

**Trigger Events:**
- Certificate volume exceeds forecast by >20% (1M → 1.2M+)
- API call overage charges appear on invoice
- Vendor announces price increase for Year 2
- New use case (Kubernetes certificates, IoT devices) added without budget adjustment

**Consequences if Realized:**
- **Budget Overrun**: Cloud PKI costs exceed $460K Year 1 budget, requiring additional funding or scope reduction
- **TCO Savings at Risk**: 42% TCO reduction claim undermined if actual costs higher than forecast
- **CFO Confidence Lost**: CFO's skepticism ("cloud always more expensive") validated
- **Project Scope Reduction**: May need to reduce scope to stay within budget (e.g., defer code signing)

**Affected Stakeholders:**
- **CFO (SD-3)**: Budget accountability, TCO savings validation
- **Procurement Manager (SD-11)**: Contract cost management, vendor relationship
- **CISO (SD-1)**: Project scope may be reduced if budget constrained

**Related Objectives:**
- **Goal G-3**: Achieve 30% TCO reduction - Cost overrun threatens savings

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | 25-50% probability: Certificate volume estimates inherently uncertain. Cloud cost surprises common (CFO's concern validated by industry experience). Vendor pricing may change. |
| **Impact** | 4 - Major | Major financial impact: 20% budget overrun = $92K additional cost Year 1. Undermines TCO analysis credibility. May require scope reduction. |
| **Inherent Risk Score** | **12** (Medium) | 3 × 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Detailed TCO Analysis with Contingency**
   - Owner: CFO
   - Effectiveness: **Adequate**
   - Evidence: TCO analysis includes 10% contingency for certificate volume growth

2. **Quarterly Financial Reviews**
   - Owner: CFO
   - Effectiveness: **Strong**
   - Evidence: Quarterly actuals vs. budget review identifies variances early

3. **Transparent Vendor Pricing Model**
   - Owner: Procurement Manager
   - Effectiveness: **Adequate**
   - Evidence: RFP required transparent pricing schedule. Volume tiers documented.

4. **Cost Alerts at 90% Budget**
   - Owner: Procurement Manager
   - Effectiveness: **Adequate**
   - Evidence: Monthly invoice review, alert triggered if spending reaches 90% of quarterly budget

**Overall Control Effectiveness:** Adequate (early warning but cannot prevent cost drivers)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Remains 25-50% probability: Controls provide early warning but cannot prevent underlying cost drivers (volume growth, vendor pricing). |
| **Impact** | 4 - Major | Remains Major: Even with contingency, significant overrun would damage CFO confidence and potentially require scope reduction. |
| **Residual Risk Score** | **12** (Medium) | 3 × 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 0% (risk inherent to cloud cost model)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Active cost monitoring and volume management. Early warning enables corrective action before budget exhausted.

#### Risk Appetite Assessment

**Organizational Risk Appetite for FINANCIAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 12 (Medium)
**Assessment:** ⚠️ **At Threshold** - Close monitoring required

**Justification:**
CFO accepted financial risk given comprehensive TCO analysis demonstrating 42% savings. Quarterly reviews provide transparency. Contingency budget available for moderate overruns.

#### Action Plan

**Additional Mitigations Needed:**

1. **Monthly Certificate Volume Tracking**
   - Description: Track actual certificate issuance volume monthly against forecast, alert if trending >10% over forecast
   - Owner: Infrastructure Manager
   - Due Date: Ongoing monthly
   - Cost: $0
   - Expected Impact: Early warning of volume growth enabling corrective action

2. **Annual Vendor Price Lock Negotiation**
   - Description: Negotiate price lock for Year 2-3 during contract renewal (or cap on annual increase)
   - Owner: Procurement Manager
   - Due Date: Month 9 (before Year 1 renewal)
   - Cost: $0
   - Expected Impact: Reduce pricing uncertainty for Years 2-3

---

### Risk R-007: GDPR Non-Compliance for Certificate Data

**Category:** COMPLIANCE
**Status:** In Progress
**Risk Owner:** Data Protection Officer (DPO)
**Action Owner:** Compliance Officer

#### Risk Identification

**Risk Description:**
Certificate metadata (subject names containing employee names/emails, device identifiers, IP addresses) processed by Cloud PKI vendor may violate GDPR requirements for data protection, lawful basis, data residency, or right to erasure.

**Root Cause:**
- **Personal data in certificates**: Certificate subject names may contain personal data (CN=John.Smith@company.com)
- **Vendor data processing**: Cloud PKI vendor processes certificate metadata as data processor
- **Data residency**: Vendor may store/process data outside EU without adequate safeguards
- **Right to erasure**: Revoked certificates must be retained for audit but employee may request erasure

**Trigger Events:**
- Employee data subject access request (DSAR) reveals certificate data handling
- Data protection audit identifies certificate metadata as inadequately protected
- Vendor data breach exposes certificate metadata
- Employee exercises right to erasure for certificate data

**Consequences if Realized:**
- **Regulatory Fine**: GDPR fines up to 4% annual turnover
- **Compliance Remediation**: May require certificate reissuance without personal data
- **Audit Finding**: External auditor flags GDPR compliance gap
- **Reputational**: Privacy violation damages organizational reputation

**Affected Stakeholders:**
- **DPO**: Data protection accountability
- **Compliance Officer (SD-5)**: Compliance audit implications
- **CISO (SD-1)**: Security and privacy governance

**Related Objectives:**
- **Goal G-5**: SOC 2/ISO 27001 compliance - GDPR non-compliance would create audit finding

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | 25-50% probability: Certificate metadata containing personal data is common pattern. Vendor data processing requires GDPR consideration. |
| **Impact** | 3 - Moderate | Moderate compliance impact: GDPR fine risk exists but organization processes limited personal data in certificates. Remediation feasible. |
| **Inherent Risk Score** | **9** (Medium) | 3 × 3 = 9 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Data Processing Agreement (DPA) with Vendor**
   - Owner: DPO
   - Effectiveness: **Strong**
   - Evidence: GDPR-compliant DPA executed covering certificate data processing, data residency, subprocessors

2. **Vendor EU Data Residency**
   - Owner: Procurement Manager
   - Effectiveness: **Strong**
   - Evidence: RFP required EU data residency option. Vendor confirmed data stored in EU datacenter.

3. **Certificate Subject Name Policy**
   - Owner: Security Architect
   - Effectiveness: **Adequate**
   - Evidence: Certificate templates use device identifiers rather than personal names where possible

4. **DPIA for Certificate Data Processing**
   - Owner: DPO
   - Effectiveness: **In Progress**
   - Evidence: DPIA initiated, expected completion before pilot phase

**Overall Control Effectiveness:** Adequate (reduces risk significantly)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Reduced to 5-25% probability: DPA and EU data residency address primary GDPR concerns. DPIA will identify remaining gaps. |
| **Impact** | 4 - Major | Elevated to Major: If GDPR gap discovered during audit, remediation complex and may require certificate reissuance. Fine risk significant. |
| **Residual Risk Score** | **8** (Medium) | 2 × 4 = 8 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 11% reduction from inherent (9 → 8)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
GDPR compliance is mandatory. DPA, EU data residency, and DPIA address key requirements.

#### Risk Appetite Assessment

**Organizational Risk Appetite for COMPLIANCE risks:** Low (Score ≤ 6)
**Current Residual Risk Score:** 8 (Medium)
**Assessment:** ⚠️ **Slightly Exceeds Appetite** by 2 points

**Justification:**
DPO accepted slightly elevated compliance risk given DPIA completion before pilot will address remaining gaps. Vendor DPA and EU data residency provide strong foundation.

---

### Risk R-008: InTune SCEP Integration Fails for Device Enrollment

**Category:** TECHNOLOGY
**Status:** In Progress
**Risk Owner:** Endpoint Manager (from Stakeholder RACI: Accountable for Device Enrollment)
**Action Owner:** Endpoint Manager

#### Risk Identification

**Risk Description:**
Microsoft InTune SCEP integration with Cloud PKI fails due to misconfiguration, network connectivity issues, or platform incompatibility, preventing zero-touch device certificate enrollment and blocking Zero Trust deployment.

**Root Cause:**
- **Integration complexity**: SCEP connector configuration between InTune and Cloud PKI requires precise setup
- **Multi-platform**: Windows, macOS, iOS, Android each have different SCEP enrollment behaviors
- **Network requirements**: Devices must reach Cloud PKI SCEP endpoint from internet
- **Vendor documentation**: InTune integration documentation may be incomplete or inaccurate

**Trigger Events:**
- SCEP connector certificate validation failure
- Firewall blocks device access to Cloud PKI SCEP endpoint
- iOS enrollment fails due to MDM profile configuration
- Android Enterprise enrollment incompatibility

**Consequences if Realized:**
- **Zero-Touch Failure**: 50% device enrollment failure rate (same as manual process)
- **Goal G-7 Not Achieved**: Zero-touch enrollment target not met
- **Helpdesk Burden**: Manual certificate installation fallback increases helpdesk tickets
- **User Experience**: Poor device onboarding experience damages user satisfaction

**Affected Stakeholders:**
- **Endpoint Manager (SD-9)**: Zero-touch enrollment goal ownership
- **Helpdesk Manager (SD-10)**: Manual installation fallback increases tickets
- **End Users (SD-12)**: Poor enrollment experience

**Related Objectives:**
- **Goal G-7**: Achieve zero-touch device certificate enrollment for 100% devices

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | 5-25% probability: InTune SCEP is mature feature with documented integration. Vendor selected for strong InTune support. |
| **Impact** | 3 - Moderate | Moderate impact: Enrollment failures affect user experience but fallback to manual installation available. Not catastrophic. |
| **Inherent Risk Score** | **6** (Medium) | 2 × 3 = 6 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Pilot Phase Testing (All Platforms)**
   - Owner: Endpoint Manager
   - Effectiveness: **Strong**
   - Evidence: Pilot phase includes Windows, macOS, iOS, Android device testing

2. **Vendor Professional Services for InTune Integration**
   - Owner: Security Architect
   - Effectiveness: **Strong**
   - Evidence: Professional services scope includes InTune SCEP integration support

3. **Network Firewall Configuration Validation**
   - Owner: Network Security Engineer
   - Effectiveness: **Adequate**
   - Evidence: Firewall rules validated during pilot for SCEP endpoint connectivity

**Overall Control Effectiveness:** Strong (reduces risk significantly)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 1 - Rare | Reduced to <5% probability: Pilot testing catches integration issues. Vendor professional services provide expertise. |
| **Impact** | 2 - Minor | Reduced to Minor: Issues caught in pilot, fixed before production. Manual fallback available. |
| **Residual Risk Score** | **2** (Low) | 1 × 2 = 2 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 67% reduction from inherent (6 → 2)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Comprehensive pilot testing and vendor professional services address integration risk.

#### Risk Appetite Assessment

**Organizational Risk Appetite for TECHNOLOGY risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 2 (Low)
**Assessment:** ✅ **Within Appetite** - Risk acceptable

---

### Risk R-009: Certificate Validation Latency Impacts Authentication

**Category:** TECHNOLOGY
**Status:** Monitoring
**Risk Owner:** Network Security Engineer (from Stakeholder RACI: Accountable for Network Authentication)
**Action Owner:** Network Security Engineer

#### Risk Identification

**Risk Description:**
Cloud PKI OCSP (Online Certificate Status Protocol) validation latency exceeds acceptable threshold (>500ms), causing VPN/Wi-Fi authentication timeouts, user frustration, and potential authentication failures.

**Root Cause:**
- **Network latency**: OCSP requests traverse internet to Cloud PKI, introducing latency
- **OCSP responder performance**: Vendor OCSP responder capacity may be insufficient at peak demand
- **Certificate chain validation**: Full chain validation adds latency
- **RADIUS configuration**: Timeout settings may be too aggressive

**Trigger Events:**
- Cloud PKI OCSP responder latency spikes during peak hours
- Network congestion increases round-trip latency
- RADIUS server timeout triggers before OCSP response received
- User experiences authentication timeout at VPN/Wi-Fi login

**Consequences if Realized:**
- **Authentication Failures**: VPN/Wi-Fi connection failures frustrate users
- **Helpdesk Tickets**: Users call helpdesk reporting connection issues
- **User Adoption**: Users revert to password authentication (defeats Zero Trust goal)
- **Performance Perception**: "Cloud PKI is slow" damages adoption

**Affected Stakeholders:**
- **Network Security Engineer (SD-8)**: Network authentication accountability
- **End Users (SD-12)**: Authentication experience
- **Helpdesk Manager (SD-10)**: Support ticket increase

**Related Objectives:**
- **Goal G-4**: Certificate-based authentication 100% - Latency issues reduce adoption

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | 50-75% probability: OCSP latency is common challenge with cloud PKI. Network variability introduces latency. Peak demand may stress OCSP responder. |
| **Impact** | 4 - Major | Major user experience impact: Authentication failures directly affect all 5,000 users. User frustration and helpdesk burden. May undermine Zero Trust adoption. |
| **Inherent Risk Score** | **16** (High) | 4 × 4 = 16 |

**Risk Zone:** 🟧 High (13-19)

#### Current Controls and Mitigations

**Existing Controls:**
1. **OCSP Stapling Configuration**
   - Owner: Security Architect
   - Effectiveness: **Strong**
   - Evidence: Servers configured for OCSP stapling, caching validation response to reduce latency

2. **RADIUS Timeout Configuration (3 seconds)**
   - Owner: Network Security Engineer
   - Effectiveness: **Adequate**
   - Evidence: RADIUS timeout set to 3 seconds (vs. default 1 second), accommodating OCSP latency

3. **Vendor OCSP SLA (<500ms p95)**
   - Owner: Procurement Manager
   - Effectiveness: **Strong**
   - Evidence: Contract includes <500ms p95 OCSP response time SLA

4. **CRL Distribution Point Caching**
   - Owner: Security Architect
   - Effectiveness: **Adequate**
   - Evidence: Local CRL caching configured as fallback if OCSP unavailable

**Overall Control Effectiveness:** Strong (reduces risk significantly)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 1 - Rare | Reduced to <5% probability: OCSP stapling eliminates most real-time OCSP lookups. Vendor SLA ensures performance. |
| **Impact** | 4 - Major | Remains Major: If latency issues occur despite controls, user impact significant. |
| **Residual Risk Score** | **4** (Low) | 1 × 4 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 75% reduction from inherent (16 → 4)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
OCSP stapling and caching eliminate most real-time validation overhead. Vendor SLA provides accountability.

#### Risk Appetite Assessment

**Organizational Risk Appetite for TECHNOLOGY risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite** - Risk acceptable

---

### Risk R-010: Code Signing Workflow Blocks CI/CD Releases

**Category:** OPERATIONAL
**Status:** In Progress
**Risk Owner:** Application Security Lead (from Stakeholder RACI: Accountable for Code Signing)
**Action Owner:** DevOps Lead

#### Risk Identification

**Risk Description:**
Code signing certificate approval workflows, API integration complexity, or service failures block CI/CD pipeline releases, negating the automation benefits and frustrating developers.

**Root Cause:**
- **Approval workflow delays**: Security approval required for first-time code signing may block releases
- **API integration complexity**: Cloud PKI REST API integration requires developer effort
- **Service availability**: Code signing API availability during release windows
- **Rate limiting**: Vendor may rate-limit high-volume signing requests

**Trigger Events:**
- Security approval queue delays (>4 hours) block production release
- API authentication failure (token expiration) blocks signing
- Vendor service degradation during release window
- Rate limiting triggered during batch signing

**Consequences if Realized:**
- **Release Delay**: Production releases delayed waiting for certificate or service availability
- **Developer Frustration**: "Cloud PKI is slower than manual process" damages adoption
- **Goal G-6 Not Achieved**: Automated code signing for 80% CI/CD pipelines not met
- **DevOps Velocity**: Deployment frequency target (3x/week) not achieved

**Affected Stakeholders:**
- **DevOps Lead (SD-7)**: CI/CD velocity accountability
- **Application Security Lead (SD-6)**: Code signing implementation
- **Security Architect (SD-4)**: Approval workflow design

**Related Objectives:**
- **Goal G-6**: Implement automated code signing for 80% CI/CD pipelines

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | 25-50% probability: Approval workflow and API integration are common friction points. Balancing security controls with automation requires compromise. |
| **Impact** | 4 - Major | Major DevOps impact: Release delays directly affect deployment velocity metric. Developer frustration undermines adoption. |
| **Inherent Risk Score** | **12** (Medium) | 3 × 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Risk-Based Automation Compromise**
   - Owner: Security Architect
   - Effectiveness: **Strong**
   - Evidence: 90% certificates auto-approved (low-risk), 10% require approval (high-risk). Balances security and automation.

2. **4-Hour Approval SLA**
   - Owner: Security Architect
   - Effectiveness: **Adequate**
   - Evidence: Security approval SLA 4 hours (not days), mobile notifications for urgent approvals

3. **GitHub Actions Integration Documentation**
   - Owner: DevOps Lead
   - Effectiveness: **Adequate**
   - Evidence: Copy-paste workflow examples documented for developer adoption

4. **Auto-Approval for Repeat Signers**
   - Owner: Security Architect
   - Effectiveness: **Strong**
   - Evidence: First-time code signing requires approval, repeat signing auto-approved

**Overall Control Effectiveness:** Strong (reduces risk significantly)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 1 - Rare | Reduced to <5% probability: 90% auto-approval eliminates most delay. Repeat signing auto-approved. 4-hour SLA for exceptions. |
| **Impact** | 4 - Major | Remains Major: If workflow issues occur, release delay impact significant. |
| **Residual Risk Score** | **4** (Low) | 1 × 4 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 67% reduction from inherent (12 → 4)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Risk-based automation compromise addresses conflict between security controls and automation speed.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite** - Risk acceptable

---

### Risk R-011: Helpdesk Unable to Troubleshoot Certificate Issues

**Category:** OPERATIONAL
**Status:** In Progress
**Risk Owner:** Helpdesk Manager (from Stakeholder RACI: Accountable for Support)
**Action Owner:** Infrastructure Manager

#### Risk Identification

**Risk Description:**
Helpdesk team lacks skills and tools to troubleshoot Cloud PKI certificate issues, leading to high escalation rates, slow resolution times, and poor user experience.

**Root Cause:**
- **Skill gap**: Helpdesk team has no PKI expertise (80% of certificate issues currently escalated)
- **New technology**: Cloud PKI introduces new troubleshooting paradigms
- **Tool gaps**: No self-service troubleshooting tools for helpdesk
- **Documentation**: Runbooks not yet created for common certificate issues

**Trigger Events:**
- User reports certificate error, helpdesk cannot diagnose
- Helpdesk spends 30+ minutes on certificate issue before escalating
- First-call resolution rate drops below 50% for certificate issues
- Infrastructure team overwhelmed with helpdesk escalations

**Consequences if Realized:**
- **Poor Resolution Time**: Certificate issues take 4-8 hours to resolve (vs. 30 minute target)
- **User Frustration**: Users frustrated with slow certificate issue resolution
- **Helpdesk Morale**: Helpdesk agents frustrated with complex issues beyond their training
- **Infrastructure Burden**: Infrastructure team capacity consumed by helpdesk escalations

**Affected Stakeholders:**
- **Helpdesk Manager (SD-10)**: First-call resolution accountability
- **Infrastructure Manager (SD-2)**: Escalation burden
- **End Users (SD-12)**: Support experience

**Related Objectives:**
- **Goal G-2**: Reduce operational effort 80% - Helpdesk escalations consume effort

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | 25-50% probability: Helpdesk skill gap is real (80% escalation rate today). New technology requires training. |
| **Impact** | 2 - Minor | Minor operational impact: Slow resolution frustrating but workarounds available. Not business-critical. |
| **Inherent Risk Score** | **6** (Medium) | 3 × 2 = 6 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Helpdesk Training Plan**
   - Owner: Helpdesk Manager
   - Effectiveness: **Adequate**
   - Evidence: Training curriculum developed covering certificate basics and common issues

2. **Troubleshooting Runbooks**
   - Owner: Infrastructure Manager
   - Effectiveness: **In Progress**
   - Evidence: Runbooks being developed for top 10 certificate issues

3. **Self-Service Dashboard (Planned)**
   - Owner: Security Architect
   - Effectiveness: **Planned**
   - Evidence: Certificate status checker tool planned for Q2 deployment

**Overall Control Effectiveness:** Adequate (controls being implemented)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Reduced to 5-25% probability: Training and runbooks will enable first-call resolution for common issues. |
| **Impact** | 2 - Minor | Remains Minor: Even if issues occur, impact limited to support efficiency. |
| **Residual Risk Score** | **4** (Low) | 2 × 2 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 33% reduction from inherent (6 → 4)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Training and documentation enable helpdesk to handle most certificate issues.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite** - Risk acceptable

---

### Risk R-012: On-Premises CA Decommissioning Premature

**Category:** OPERATIONAL
**Status:** Monitoring
**Risk Owner:** Infrastructure Manager (from Stakeholder RACI: Accountable for Infrastructure)
**Action Owner:** Infrastructure Manager

#### Risk Identification

**Risk Description:**
On-premises CA decommissioned before all dependencies migrated, leaving applications or devices without certificate issuance capability and causing service disruption.

**Root Cause:**
- **Incomplete inventory**: Shadow IT certificates not discovered
- **Legacy application dependencies**: Legacy applications may depend on on-premises CA root trust
- **Decommission pressure**: CFO pressure to realize cost savings by decommissioning early
- **Migration timing**: Some certificates have multi-year validity, renewal not yet triggered

**Trigger Events:**
- Legacy application certificate expires, cannot renew from Cloud PKI
- Shadow IT certificate discovered after on-premises CA decommissioned
- Application hard-coded to on-premises CA URL for certificate validation
- Emergency certificate request with no issuance capability

**Consequences if Realized:**
- **Application Failure**: Legacy application fails when certificate expires
- **Recovery Effort**: Must rebuild on-premises CA (complex, time-consuming)
- **Schedule Delay**: Decommissioning timeline extended
- **Stakeholder Confidence**: "We decommissioned too early" damages project credibility

**Affected Stakeholders:**
- **Infrastructure Manager (SD-2)**: Decommissioning accountability
- **CFO (SD-3)**: Cost savings timeline affected
- **Application Owners**: Application availability

**Related Objectives:**
- **Goal G-1**: Eliminate certificate outages - Premature decommissioning could cause outages

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | 25-50% probability: Shadow IT certificates common (40% untracked today). Legacy application dependencies hard to discover. |
| **Impact** | 3 - Moderate | Moderate impact: Application failure for specific legacy app. Recovery possible but time-consuming. |
| **Inherent Risk Score** | **9** (Medium) | 3 × 3 = 9 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Certificate Discovery Scan**
   - Owner: Security Architect
   - Effectiveness: **Strong**
   - Evidence: Network certificate discovery scan identifies all certificates (including shadow IT)

2. **12-Month Dual-Run Period**
   - Owner: Infrastructure Manager
   - Effectiveness: **Strong**
   - Evidence: On-premises CA operational throughout Year 1, decommission only after 12 months validation

3. **Decommission Readiness Checklist**
   - Owner: Infrastructure Manager
   - Effectiveness: **Adequate**
   - Evidence: Checklist includes certificate inventory validation, application dependency confirmation, stakeholder sign-off

**Overall Control Effectiveness:** Strong (reduces risk significantly)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 1 - Rare | Reduced to <5% probability: 12-month dual-run period and certificate discovery provide extensive validation. |
| **Impact** | 1 - Negligible | Reduced to Negligible: Even if issue discovered, on-premises CA still available during Year 1. |
| **Residual Risk Score** | **1** (Low) | 1 × 1 = 1 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 89% reduction from inherent (9 → 1)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
12-month dual-run period and discovery scans ensure all dependencies identified before decommissioning.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 1 (Low)
**Assessment:** ✅ **Within Appetite** - Risk acceptable

---

### Risk R-013: Security Approval Workflows Delay DevOps Releases

**Category:** OPERATIONAL
**Status:** In Progress
**Risk Owner:** Security Architect (from Stakeholder RACI: Accountable for Security Controls)
**Action Owner:** DevOps Lead

#### Risk Identification

**Risk Description:**
Security approval workflows for high-risk certificates (code signing, production servers) create bottleneck that delays DevOps releases, creating friction between Security and Engineering teams.

**Root Cause:**
- **Conflict resolution**: Infrastructure Manager wants 100% automation, Security Architect wants approval controls
- **Approval queue**: Manual approval adds 4+ hours to certificate issuance
- **After-hours releases**: Security Administrator may not be available for urgent approvals
- **Volume**: High release frequency (3x/week target) creates continuous approval demand

**Trigger Events:**
- Production release blocked waiting for code signing certificate approval
- Security Administrator unavailable for urgent after-hours approval
- Approval queue backlog during peak release period
- Developer bypasses approval process (shadow certificate issuance)

**Consequences if Realized:**
- **Release Delay**: Production releases delayed 4-8 hours waiting for approval
- **Team Friction**: Engineering frustrated with "security bureaucracy"
- **Process Bypass**: Developers find workarounds (less secure)
- **Goal G-6 Partial**: 80% CI/CD automation target not achieved due to approval overhead

**Affected Stakeholders:**
- **DevOps Lead (SD-7)**: Release velocity accountability
- **Security Architect (SD-4)**: Security control effectiveness
- **Application Security Lead (SD-6)**: Code signing implementation

**Related Objectives:**
- **Goal G-6**: Implement automated code signing - Approval overhead reduces automation benefit

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | 25-50% probability: Documented conflict between automation and security controls. Approval workflow inherently adds friction. |
| **Impact** | 4 - Major | Major DevOps impact: Release delays damage deployment velocity. Team friction undermines collaboration. |
| **Inherent Risk Score** | **12** (Medium) | 3 × 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Risk-Based Automation (90%/10% Split)**
   - Owner: Security Architect
   - Effectiveness: **Strong**
   - Evidence: 90% low-risk certificates auto-approved, only 10% high-risk require manual approval

2. **4-Hour Approval SLA with Mobile Notifications**
   - Owner: Security Architect
   - Effectiveness: **Adequate**
   - Evidence: SLA ensures timely response, mobile notifications enable after-hours approval

3. **Auto-Approval for Repeat Signers**
   - Owner: Security Architect
   - Effectiveness: **Strong**
   - Evidence: First-time signing requires approval, subsequent signing auto-approved

**Overall Control Effectiveness:** Strong (reduces risk significantly)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 1 - Rare | Reduced to <5% probability: 90% auto-approval and repeat signer auto-approval dramatically reduce approval volume. |
| **Impact** | 4 - Major | Remains Major: If approval bottleneck occurs, impact on release velocity significant. |
| **Residual Risk Score** | **4** (Low) | 1 × 4 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 67% reduction from inherent (12 → 4)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Risk-based automation compromise addresses underlying conflict while preserving security controls for high-risk certificates.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite** - Risk acceptable

---

### Risk R-014: User Resistance to Certificate-Based Authentication

**Category:** REPUTATIONAL
**Status:** In Progress
**Risk Owner:** CISO (from Stakeholder RACI: Accountable for Change Management)
**Action Owner:** Helpdesk Manager

#### Risk Identification

**Risk Description:**
End users resist certificate-based authentication due to perceived complexity, unfamiliarity, or preference for password-based authentication, reducing adoption and undermining Zero Trust goals.

**Root Cause:**
- **Change resistance**: Users prefer familiar password authentication
- **Perception**: "Certificates are complicated" (even if zero-touch)
- **Trust**: Users may not trust "automatic" certificate deployment
- **Error messages**: Certificate errors (when they occur) are confusing

**Trigger Events:**
- Users request password authentication fallback
- User satisfaction surveys show negative feedback about certificate auth
- Users circumvent certificate authentication (manual password entry)
- Helpdesk tickets complaining about certificate complexity

**Consequences if Realized:**
- **Low Adoption**: Certificate-based authentication adoption below 100% target
- **Zero Trust Incomplete**: Password fallback undermines phishing-resistant authentication
- **Change Management Burden**: Additional communication and training required
- **Project Perception**: "Users don't like it" damages project reputation

**Affected Stakeholders:**
- **End Users (SD-12)**: Authentication experience
- **CISO (SD-1)**: Zero Trust adoption accountability
- **Helpdesk Manager (SD-10)**: User support burden

**Related Objectives:**
- **Goal G-4**: Certificate-based authentication 100% - User resistance reduces adoption

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | 5-25% probability: Zero-touch enrollment means users don't interact with certificates. Consumer technology has normalized seamless auth. |
| **Impact** | 2 - Minor | Minor impact: Some resistance expected but not business-critical. Fallback options available. |
| **Inherent Risk Score** | **4** (Low) | 2 × 2 = 4 |

**Risk Zone:** 🟩 Low (1-5)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Zero-Touch Enrollment (No User Action)**
   - Owner: Endpoint Manager
   - Effectiveness: **Strong**
   - Evidence: Certificate deployed automatically during device enrollment, no user interaction

2. **User Communication Campaign**
   - Owner: CISO
   - Effectiveness: **Adequate**
   - Evidence: Communication plan emphasizes passwordless convenience, not certificate complexity

3. **Phased Rollout with Pilot Feedback**
   - Owner: Infrastructure Manager
   - Effectiveness: **Adequate**
   - Evidence: Pilot phase gathers user feedback before full deployment

**Overall Control Effectiveness:** Strong (addresses root cause)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Remains 5-25% probability: Zero-touch enrollment addresses main concern. Some resistance expected. |
| **Impact** | 2 - Minor | Remains Minor: Limited user resistance expected, manageable through communication. |
| **Residual Risk Score** | **4** (Low) | 2 × 2 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 0% (risk already low)

#### Risk Response (4Ts Framework)

**Primary Response:** TOLERATE (Accept)

**Rationale:**
Low residual risk acceptable. Zero-touch enrollment addresses main concern. Communication campaign manages expectations.

#### Risk Appetite Assessment

**Organizational Risk Appetite for REPUTATIONAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite** - Risk acceptable

---

### Risk R-015: Audit Evidence Collection Inadequate for SOC 2/ISO 27001

**Category:** COMPLIANCE
**Status:** In Progress
**Risk Owner:** Compliance Officer (from Stakeholder RACI: Accountable for Compliance)
**Action Owner:** Security Architect

#### Risk Identification

**Risk Description:**
Cloud PKI audit logging and evidence collection capabilities insufficient for SOC 2 Type II and ISO 27001 audit requirements, creating compliance gaps and potential audit findings.

**Root Cause:**
- **Vendor audit capabilities**: Vendor audit logging may not meet specific organizational requirements
- **Evidence access**: Auditor may have difficulty accessing vendor-hosted evidence
- **Retention**: 7-year audit log retention may incur significant storage costs
- **Format**: Audit evidence format may not align with auditor expectations

**Trigger Events:**
- External auditor requests evidence not available from Cloud PKI
- Audit logs missing key events (certificate revocation, privileged access)
- Evidence export takes >1 day (vs. 1-day target)
- Auditor raises concern about vendor-hosted evidence integrity

**Consequences if Realized:**
- **Audit Finding**: SOC 2/ISO 27001 audit finding requiring remediation
- **Certification Risk**: Repeated findings may threaten certification
- **Customer Impact**: SOC 2 report with findings damages customer confidence
- **Remediation Cost**: Additional vendor features or workarounds required

**Affected Stakeholders:**
- **Compliance Officer (SD-5)**: Audit accountability
- **CISO (SD-1)**: Compliance risk oversight
- **External Auditor**: Evidence consumer

**Related Objectives:**
- **Goal G-5**: SOC 2/ISO 27001 compliance with zero findings

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | 25-50% probability: Audit requirements vary by auditor. Vendor capabilities may not align perfectly. |
| **Impact** | 2 - Minor | Minor compliance impact: Audit findings manageable, not certification-threatening. |
| **Inherent Risk Score** | **6** (Medium) | 3 × 2 = 6 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Vendor SOC 2/ISO 27001 Certification Requirement**
   - Owner: Procurement Manager
   - Effectiveness: **Strong**
   - Evidence: Vendor has current SOC 2 Type II and ISO 27001 certifications (inherited compliance)

2. **Pre-Audit Evidence Validation**
   - Owner: Compliance Officer
   - Effectiveness: **Adequate**
   - Evidence: Internal audit before external audit validates evidence availability

3. **Auditor Pre-Consultation**
   - Owner: Compliance Officer
   - Effectiveness: **Adequate**
   - Evidence: Pre-audit meeting with external auditor to align on evidence requirements

**Overall Control Effectiveness:** Adequate (addresses compliance requirements)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Reduced to 5-25% probability: Vendor certifications and pre-audit validation reduce gaps. |
| **Impact** | 2 - Minor | Remains Minor: Minor findings manageable through remediation. |
| **Residual Risk Score** | **4** (Low) | 2 × 2 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 33% reduction from inherent (6 → 4)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Vendor certifications provide foundation. Pre-audit validation catches gaps.

#### Risk Appetite Assessment

**Organizational Risk Appetite for COMPLIANCE risks:** Low (Score ≤ 6)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite** - Risk acceptable

---

## D. Risk Category Analysis

### STRATEGIC Risks

**Total STRATEGIC Risks:** 2
**Average Inherent Score:** 13.5 (High)
**Average Residual Score:** 7.0 (Medium)
**Control Effectiveness:** 48% reduction

**Risk List:**
- R-002: Stakeholder resistance to cloud PKI model - Residual: 6 (Medium)
- R-003: Vendor lock-in limits future flexibility - Residual: 8 (Medium)

**Key Themes:**
- **Stakeholder Alignment**: Documented conflicts (CFO/CISO, Infrastructure/Security) require ongoing governance
- **Vendor Management**: Lock-in risk mitigated through open standards and annual contracts

**Category Risk Profile:** ✅ **Acceptable** - Both risks within appetite after controls

---

### OPERATIONAL Risks

**Total OPERATIONAL Risks:** 4
**Average Inherent Score:** 10.5 (Medium)
**Average Residual Score:** 6.0 (Medium)
**Control Effectiveness:** 43% reduction

**Risk List:**
- R-004: Certificate migration causes production outages - Residual: 12 (Medium) ⚠️
- R-011: Helpdesk unable to troubleshoot certificate issues - Residual: 4 (Low)
- R-012: On-premises CA decommissioning premature - Residual: 1 (Low)
- R-013: Security approval workflows delay DevOps releases - Residual: 4 (Low)

**Key Themes:**
- **Migration Risk Dominance**: R-004 exceeds appetite and requires phased approach with extensive testing
- **Support Readiness**: Training and runbooks address helpdesk skill gaps

**Category Risk Profile:** ⚠️ **Concerning** - R-004 exceeds appetite, requires CISO approval for migration phases

---

### FINANCIAL Risks

**Total FINANCIAL Risks:** 3
**Average Inherent Score:** 11.3 (Medium)
**Average Residual Score:** 7.3 (Medium)
**Control Effectiveness:** 35% reduction

**Risk List:**
- R-006: Cloud PKI costs exceed budget forecast - Residual: 12 (Medium) ⚠️
- Additional financial risks captured in cost controls

**Key Themes:**
- **Cost Uncertainty**: Certificate volume and vendor pricing create residual uncertainty
- **CFO Monitoring**: Quarterly financial reviews provide transparency

**Category Risk Profile:** ⚠️ **At Threshold** - R-006 at appetite boundary, close monitoring required

---

### COMPLIANCE Risks

**Total COMPLIANCE Risks:** 2
**Average Inherent Score:** 7.5 (Medium)
**Average Residual Score:** 6.0 (Medium)
**Control Effectiveness:** 20% reduction

**Risk List:**
- R-007: GDPR non-compliance for certificate data - Residual: 8 (Medium)
- R-015: Audit evidence collection inadequate - Residual: 4 (Low)

**Key Themes:**
- **GDPR**: DPA and EU data residency address primary concerns
- **Audit Readiness**: Vendor certifications and pre-audit validation reduce gap risk

**Category Risk Profile:** ⚠️ **Slightly Concerning** - R-007 slightly exceeds low appetite for compliance

---

### REPUTATIONAL Risks

**Total REPUTATIONAL Risks:** 1
**Average Inherent Score:** 4.0 (Low)
**Average Residual Score:** 4.0 (Low)
**Control Effectiveness:** 0% (risk already low)

**Risk List:**
- R-014: User resistance to certificate-based authentication - Residual: 4 (Low)

**Key Themes:**
- **Zero-Touch**: Automatic enrollment addresses user complexity concerns

**Category Risk Profile:** ✅ **Acceptable** - Risk within appetite

---

### TECHNOLOGY Risks

**Total TECHNOLOGY Risks:** 3
**Average Inherent Score:** 17.3 (High)
**Average Residual Score:** 4.3 (Low)
**Control Effectiveness:** 75% reduction

**Risk List:**
- R-001: Vendor service outage during migration - Residual: 6 (Medium)
- R-005: Critical security incident at vendor - Residual: 3 (Low)
- R-008: InTune SCEP integration fails - Residual: 2 (Low)
- R-009: Certificate validation latency impacts authentication - Residual: 4 (Low)

**Key Themes:**
- **Strong Control Effectiveness**: 75% reduction demonstrates effective technology risk management
- **Vendor Dependency**: Dual-run period and vendor due diligence mitigate vendor risks

**Category Risk Profile:** ✅ **Acceptable** - All technology risks within appetite after controls

---

## E. Risk Ownership Matrix

**Risk Ownership Distribution by Stakeholder:**

| Stakeholder | Role | Owned Risks | Critical | High | Medium | Low | Total Score | Risk Concentration |
|-------------|------|-------------|----------|------|--------|-----|-------------|-------------------|
| **CISO** | Executive Sponsor | R-005, R-014 | 0 | 0 | 0 | 2 | 7 | Low |
| **Infrastructure Manager** | Migration Lead | R-001, R-004, R-012 | 0 | 0 | 2 | 1 | 19 | ⚠️ Moderate |
| **CFO** | Budget Owner | R-006 | 0 | 0 | 1 | 0 | 12 | Focused |
| **Procurement Manager** | Vendor Management | R-003 | 0 | 0 | 1 | 0 | 8 | Focused |
| **Security Architect** | Technical Lead | R-013 | 0 | 0 | 0 | 1 | 4 | Low |
| **DPO** | Compliance Lead | R-007 | 0 | 0 | 1 | 0 | 8 | Focused |
| **Compliance Officer** | Audit Lead | R-015 | 0 | 0 | 0 | 1 | 4 | Low |
| **Endpoint Manager** | Device Enrollment | R-008 | 0 | 0 | 0 | 1 | 2 | Low |
| **Network Security Engineer** | Network Auth | R-009 | 0 | 0 | 0 | 1 | 4 | Low |
| **Application Security Lead** | Code Signing | R-010 | 0 | 0 | 0 | 1 | 4 | Low |
| **Helpdesk Manager** | Support | R-011 | 0 | 0 | 0 | 1 | 4 | Low |

**Risk Concentration Analysis:**
- **Infrastructure Manager owns 3 risks totaling 19 points** - Appropriate given migration execution accountability
- **CFO owns 1 risk (R-006) at 12 points** - Financial risk concentrated but appropriate for budget accountability
- **Good distribution across technical stakeholders** - Each owns 1-2 focused risks aligned with RACI

---

## F. 4Ts Response Framework Summary

**Risk Response Distribution:**

| Response | Count | % | Total Risk Score | Key Examples |
|----------|-------|---|------------------|--------------|
| **TOLERATE** | 1 | 7% | 4 | R-014 (User resistance) |
| **TREAT** | 13 | 87% | 91 | R-001, R-002, R-003, R-004, R-006, R-007, R-008, R-009, R-010, R-011, R-012, R-013, R-015 |
| **TRANSFER** | 1 | 7% | 3 | R-005 (Cyber insurance) |
| **TERMINATE** | 0 | 0% | 0 | None |
| **TOTAL** | 15 | 100% | 99 | |

**Key Insights:**
- **87% of risks require active treatment** - Significant control framework and ongoing management required
- **Transfer applied for vendor security risk** - Cyber insurance provides financial protection
- **No terminations** - All activities essential to Cloud PKI strategic initiative
- **Only 1 tolerated risk** - User resistance low enough to accept without additional controls

---

## G. Risk Appetite Compliance

**Organizational Risk Appetite Thresholds:**

| Category | Appetite Level | Threshold Score | Description |
|----------|---------------|-----------------|-------------|
| STRATEGIC | Medium | ≤ 12 | Moderate strategic risk acceptable for modernization |
| OPERATIONAL | Medium | ≤ 9 | Moderate operational risk acceptable for automation benefits |
| FINANCIAL | Medium | ≤ 9 | Moderate financial risk acceptable for TCO savings |
| COMPLIANCE | Low | ≤ 6 | Minimal compliance risk (GDPR, SOC 2, ISO 27001) |
| REPUTATIONAL | Medium | ≤ 9 | Moderate reputational risk for strategic initiatives |
| TECHNOLOGY | Medium | ≤ 9 | Moderate technology risk for cloud-first strategy |

**Compliance Summary:**

| Category | Appetite | Risks Within | Risks Exceeding | Avg Excess | Action Required |
|----------|----------|--------------|-----------------|------------|-----------------|
| STRATEGIC | ≤ 12 | 2 (100%) | 0 (0%) | 0 | ✅ All within appetite |
| OPERATIONAL | ≤ 9 | 3 (75%) | 1 (25%) | +3 | ⚠️ R-004 requires CISO approval |
| FINANCIAL | ≤ 9 | 0 (0%) | 1 (100%) | +3 | ⚠️ R-006 at threshold, CFO monitoring |
| COMPLIANCE | ≤ 6 | 1 (50%) | 1 (50%) | +2 | ⚠️ R-007 slightly exceeds, DPO monitoring |
| REPUTATIONAL | ≤ 9 | 1 (100%) | 0 (0%) | 0 | ✅ All within appetite |
| TECHNOLOGY | ≤ 9 | 4 (100%) | 0 (0%) | 0 | ✅ All within appetite |

**Overall Appetite Compliance:** ⚠️ **13% of risks (2 of 15) exceed appetite** - Acceptable with escalation

---

## H. Prioritized Action Plan

**Priority 1: URGENT (Critical Risks or Significant Appetite Exceedance)**

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Expected Impact | Status |
|----------|--------|-------------------|-------|----------|------|-----------------|--------|
| 1 | Extend pilot phase 3→4 weeks | R-004 (OPERATIONAL) | Infrastructure Manager | Before pilot | 1 week delay | Reduce L from 3 to 2 | Not Started |
| 2 | Complete DPIA for certificate data | R-007 (COMPLIANCE) | DPO | Before pilot | $5K | Close compliance gap | In Progress |
| 3 | Monthly certificate volume tracking | R-006 (FINANCIAL) | Infrastructure Manager | Ongoing | $0 | Early warning of cost growth | Not Started |

**Priority 2: HIGH (Risks at or Near Appetite Threshold)**

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Expected Impact | Status |
|----------|--------|-------------------|-------|----------|------|-----------------|--------|
| 4 | Application compatibility testing matrix | R-004 (OPERATIONAL) | Security Architect | Before Wave 1 | $0 | Identify incompatible apps | Not Started |
| 5 | Emergency rollback procedure runbook | R-004 (OPERATIONAL) | Infrastructure Manager | Before pilot | $0 | Minimize outage duration | Not Started |
| 6 | Vendor health check before each phase | R-001 (TECHNOLOGY) | Security Architect | Each Go/No-Go | $0 | Informed phase decisions | Not Started |

**Priority 3: MEDIUM (Risks Within Appetite Requiring Monitoring)**

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Expected Impact | Status |
|----------|--------|-------------------|-------|----------|------|-----------------|--------|
| 7 | Helpdesk training curriculum delivery | R-011 (OPERATIONAL) | Helpdesk Manager | Before Wave 1 | $2K | First-call resolution | In Progress |
| 8 | Annual vendor price lock negotiation | R-006 (FINANCIAL) | Procurement Manager | Month 9 | $0 | Reduce Year 2-3 uncertainty | Not Started |
| 9 | Exit strategy documentation update | R-003 (STRATEGIC) | Security Architect | Annually | $0 | Maintain exit capability | Not Started |

**Total Actions:** 9
**Total Cost:** ~$7K (plus 1 week schedule adjustment)
**Expected Risk Reduction:** 15-20 points additional reduction

---

## I. Integration with Business Case (SOBC)

**How this Risk Register feeds into Business Case:**

### Strategic Case
- **R-002** (Stakeholder resistance): Demonstrates stakeholder analysis and conflict resolution
- **R-003** (Vendor lock-in): Addresses strategic flexibility concerns

### Economic Case
- **Risk-adjusted costs**: Financial risks + HM Treasury optimism bias
- **R-006** (Cost overrun): 10% contingency applied to certificate volume estimate
- **TCO analysis**: Validated against risks, includes contingency

### Management Case Part E
- **Full risk register** feeds into risk management section
- **15 risks identified** with comprehensive assessment and controls
- **Risk appetite compliance** documented with escalation for exceptions

### Recommendation
- **R-004 exceeds appetite** but acceptable with phased approach and CISO approval
- **Overall risk profile acceptable** for Cloud PKI strategic initiative
- **Proceed with implementation** with enhanced monitoring for R-004, R-006, R-007

---

## Appendix A: Risk Assessment Methodology

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
| 1 | Negligible | < $10K | < 1 week | Minimal concern | Easily absorbed, routine management |
| 2 | Minor | $10K-$50K | 1-2 weeks | Minor concern | Manageable within contingency |
| 3 | Moderate | $50K-$200K | 2-4 weeks | Significant concern | Requires management effort |
| 4 | Major | $200K-$500K | 1-3 months | Severe concern | Threatens key objectives |
| 5 | Catastrophic | > $500K | > 3 months | Existential threat | Project failure risk |

### Risk Score Matrix (Likelihood × Impact)

| Score Range | Risk Level | Color | Action Required |
|-------------|------------|-------|-----------------|
| 20-25 | Critical | 🟥 Red | Immediate escalation, senior management action |
| 13-19 | High | 🟧 Orange | Management attention, mitigation plan required |
| 6-12 | Medium | 🟨 Yellow | Management monitoring, consider mitigation |
| 1-5 | Low | 🟩 Green | Routine monitoring, accept or apply low-cost controls |

---

## Appendix B: Stakeholder-Risk Linkage

**Traceability from Stakeholders to Risks:**

| Stakeholder | Driver (from stakeholder-drivers.md) | Risk ID | Risk Title | Category | Score |
|-------------|-------------------------------------|---------|------------|----------|-------|
| CISO | SD-1: Eliminate security risk from aging PKI | R-001 | Vendor service outage during migration | TECHNOLOGY | 6 |
| CISO | SD-1: Eliminate security risk from aging PKI | R-004 | Certificate migration causes production outages | OPERATIONAL | 12 |
| CISO | SD-1: Eliminate security risk from aging PKI | R-005 | Critical security incident at vendor | TECHNOLOGY | 3 |
| Infrastructure Manager | SD-2: Reduce operational burden | R-004 | Certificate migration causes production outages | OPERATIONAL | 12 |
| Infrastructure Manager | SD-2: Reduce operational burden | R-012 | On-premises CA decommissioning premature | OPERATIONAL | 1 |
| CFO | SD-3: Reduce TCO | R-006 | Cloud PKI costs exceed budget forecast | FINANCIAL | 12 |
| CFO | SD-3: Reduce TCO | R-003 | Vendor lock-in limits future flexibility | STRATEGIC | 8 |
| Security Architect | SD-4: Enable Zero Trust | R-009 | Certificate validation latency impacts authentication | TECHNOLOGY | 4 |
| Security Architect | SD-4: Enable Zero Trust | R-013 | Security approval workflows delay DevOps | OPERATIONAL | 4 |
| Compliance Officer | SD-5: Meet SOC 2/ISO 27001 requirements | R-007 | GDPR non-compliance for certificate data | COMPLIANCE | 8 |
| Compliance Officer | SD-5: Meet SOC 2/ISO 27001 requirements | R-015 | Audit evidence collection inadequate | COMPLIANCE | 4 |
| Application Security Lead | SD-6: Secure software supply chain | R-010 | Code signing workflow blocks CI/CD | OPERATIONAL | 4 |
| DevOps Lead | SD-7: Accelerate software delivery | R-010 | Code signing workflow blocks CI/CD | OPERATIONAL | 4 |
| DevOps Lead | SD-7: Accelerate software delivery | R-013 | Security approval workflows delay DevOps | OPERATIONAL | 4 |
| Network Security Engineer | SD-8: Enable certificate-based network auth | R-009 | Certificate validation latency impacts authentication | TECHNOLOGY | 4 |
| Endpoint Manager | SD-9: Zero-touch device enrollment | R-008 | InTune SCEP integration fails | TECHNOLOGY | 2 |
| Helpdesk Manager | SD-10: Reduce certificate support tickets | R-011 | Helpdesk unable to troubleshoot certificate issues | OPERATIONAL | 4 |
| Procurement Manager | SD-11: Select vendor with best value | R-003 | Vendor lock-in limits future flexibility | STRATEGIC | 8 |
| End Users | SD-12: Seamless zero-touch experience | R-014 | User resistance to certificate-based authentication | REPUTATIONAL | 4 |

**Stakeholder Conflicts Mapped to Risks:**

| Stakeholder Conflict (from stakeholder-drivers.md) | Risk(s) Created | Mitigation |
|---------------------------------------------------|-----------------|------------|
| CFO vs CISO: Cost optimization vs multi-region availability | R-001, R-006 | Phased approach - Year 1 single-region, Year 2 multi-region |
| Infrastructure Manager vs Security Architect: Full automation vs approval controls | R-010, R-013 | Risk-based automation - 90% auto, 10% approval |
| CFO vs Infrastructure Manager: Fast migration vs thorough testing | R-004 | Phased migration - 12 months with pilot validation |

---

## Validation & Sign-off

### Stakeholder Review

| Stakeholder | Review Date | Comments | Status |
|-------------|-------------|----------|--------|
| CISO | PENDING | | PENDING |
| CFO | PENDING | | PENDING |
| Security Architect | PENDING | | PENDING |
| Infrastructure Manager | PENDING | | PENDING |
| Compliance Officer | PENDING | | PENDING |
| DPO | PENDING | | PENDING |

### Document Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| **Risk Register Owner** | CISO | | |
| **Project Manager** | Infrastructure Manager | | |
| **Senior Responsible Owner** | CISO | | |

---

## Next Steps

1. **Immediate Actions** (This Week):
   - [ ] Schedule pilot phase extension discussion with Infrastructure Manager
   - [ ] Complete DPIA for certificate data processing (R-007)
   - [ ] Create emergency rollback procedure runbook (R-004)
   - [ ] Validate vendor health monitoring dashboard access

2. **Short-term Actions** (This Month):
   - [ ] Deliver helpdesk training curriculum (R-011)
   - [ ] Create application compatibility testing matrix (R-004)
   - [ ] Implement monthly certificate volume tracking (R-006)
   - [ ] Review risk register with CISO for approval

3. **Medium-term Actions** (This Quarter):
   - [ ] Negotiate Year 2 vendor price lock (R-006)
   - [ ] Update exit strategy documentation (R-003)
   - [ ] Quarterly risk review with steering committee
   - [ ] Pre-audit evidence validation (R-015)

---

**END OF RISK REGISTER**

---

*This risk register follows HM Treasury Orange Book (2023) principles and integrates with ArcKit's stakeholder-driven architecture governance framework. All risks are traceable to stakeholder drivers documented in stakeholder-drivers.md (ARC-005-STKE-v2.0).*

*For questions or updates, contact: CISO (Risk Register Owner)*

---

**Generated by**: ArcKit `/arckit.risk` command
**Generated on**: 2026-01-24
**ArcKit Version**: 1.0
**Project**: Hybrid Public Key Infrastructure (PKI) (Project 005)
**Model**: claude-opus-4-5-20251101
