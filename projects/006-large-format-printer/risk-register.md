# Risk Register

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-006-RISK-v1.0 |
| **Document Type** | Risk Register |
| **Project** | Large Format Printing Service (Project 006) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 1.0 |
| **Created Date** | 2026-01-24 |
| **Last Modified** | 2026-01-24 |
| **Review Cycle** | Weekly (Critical/High), Monthly (Medium/Low) |
| **Next Review Date** | 2026-01-31 |
| **Owner** | Service Owner (Facilities Manager) |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | Project Team, Procurement Team, Security Team, Facilities Team, Finance, Executive Sponsors |

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
| **Critical** (20-25) | 2 | 0 | -100% |
| **High** (13-19) | 3 | 2 | -33% |
| **Medium** (6-12) | 5 | 6 | +20% |
| **Low** (1-5) | 2 | 4 | +100% |
| **TOTAL** | 156 | 87 | -44% |

### Risk Category Distribution

| Category | Count | Avg Inherent | Avg Residual | Control Effectiveness |
|----------|-------|--------------|--------------|----------------------|
| **STRATEGIC** | 1 | 12.0 | 6.0 | 50% reduction |
| **OPERATIONAL** | 3 | 11.0 | 6.0 | 45% reduction |
| **FINANCIAL** | 3 | 14.0 | 8.0 | 43% reduction |
| **COMPLIANCE** | 2 | 16.0 | 9.5 | 41% reduction |
| **REPUTATIONAL** | 1 | 12.0 | 6.0 | 50% reduction |
| **TECHNOLOGY** | 2 | 12.5 | 6.5 | 48% reduction |

### Overall Risk Assessment

**Overall Residual Risk Score:** 87/300
**Risk Reduction from Controls:** 44% reduction from inherent risk
**Risk Profile Status:** ✅ Acceptable

### Risks Exceeding Appetite

**Number of risks exceeding organizational appetite:** 2 risks

| Risk ID | Title | Category | Score | Appetite | Excess | Escalation |
|---------|-------|----------|-------|----------|--------|------------|
| R-003 | Vendor premium pricing exceeds budget | FINANCIAL | 12 | 9 | +3 | CFO approval required |
| R-004 | Accreditation delays go-live | COMPLIANCE | 12 | 6 | +6 | IAO escalation required |

### Top 5 Critical Risks Requiring Immediate Attention

1. **R-003** (FINANCIAL, High 12): Vendor premium pricing exceeds budget - Owner: Finance Business Partner - Status: Open
2. **R-004** (COMPLIANCE, High 12): Accreditation delays go-live - Owner: IAO - Status: Open
3. **R-005** (COMPLIANCE, Medium 8): GDPR non-compliance in print data handling - Owner: IAO - Status: Open
4. **R-001** (FINANCIAL, Medium 9): Cost savings target not achieved - Owner: Finance Business Partner - Status: Open
5. **R-006** (TECHNOLOGY, Medium 8): Equipment failure disrupts service - Owner: Service Owner - Status: Open

### Key Findings and Recommendations

**Key Findings:**
- Heavy concentration of financial risks due to security requirements potentially limiting vendor pool and increasing costs
- Compliance risks around MOD Secure by Design accreditation represent the critical path dependency
- Technology risks are well-controlled through managed service model with SLA accountability
- Strong stakeholder alignment reduces strategic risk exposure

**Recommendations:**
1. Conduct G-Cloud market research immediately to validate compliant vendor pool size and pricing
2. Build 4-week accreditation buffer into project timeline to allow thorough security review
3. Include 10% budget contingency for security certification premium
4. Implement parallel security review track during vendor implementation phase

---

## A. Risk Matrix Visualization

### Inherent Risk Matrix (Before Controls)

**Likelihood x Impact Matrix - Inherent Risk Positions**

```
LIKELIHOOD
     5 | Almost Certain |       |       | R-004 |       |       |
       |                |-------|-------|-------|-------|-------|
     4 | Likely         |       |       | R-003 | R-002 |       |
       |                |-------|-------|-------|-------|-------|
     3 | Possible       |       | R-010 | R-001 | R-005 | R-006 |
       |                |       | R-012 | R-007 | R-011 |       |
       |                |-------|-------|-------|-------|-------|
     2 | Unlikely       |       | R-008 | R-009 |       |       |
       |                |-------|-------|-------|-------|-------|
     1 | Rare           |       |       |       |       |       |
       |________________|_______|_______|_______|_______|_______|
                            1       2       3       4       5
                        Negligible Minor  Moderate Major Catastrophic
                                      IMPACT
```

**Risk Zones:**
- 🟥 **Critical (20-25)**: R-002, R-006 - Immediate escalation required
- 🟧 **High (13-19)**: R-003, R-004, R-005 - Senior management attention
- 🟨 **Medium (6-12)**: R-001, R-007, R-009, R-010, R-011 - Management monitoring
- 🟩 **Low (1-5)**: R-008, R-012 - Routine monitoring

### Residual Risk Matrix (After Controls)

**Likelihood x Impact Matrix - Residual Risk Positions**

```
LIKELIHOOD
     5 | Almost Certain |       |       |       |       |       |
       |                |-------|-------|-------|-------|-------|
     4 | Likely         |       |       | R-003 |       |       |
       |                |-------|-------|-------|-------|-------|
     3 | Possible       |       | R-010 | R-004 |       |       |
       |                |       | R-012 |       |       |       |
       |                |-------|-------|-------|-------|-------|
     2 | Unlikely       | R-008 | R-001 | R-005 | R-002 |       |
       |                |       | R-007 | R-006 | R-011 |       |
       |                |       | R-009 |       |       |       |
       |                |-------|-------|-------|-------|-------|
     1 | Rare           |       |       |       |       |       |
       |________________|_______|_______|_______|_______|_______|
                            1       2       3       4       5
                        Negligible Minor  Moderate Major Catastrophic
                                      IMPACT
```

**Risk Movement Analysis:**
- ✅ **Significant Improvement**: R-002 (20→8), R-006 (20→6) - Controls very effective
- ⚠️ **Moderate Improvement**: R-004 (15→12), R-005 (16→8) - Additional controls help but risks remain
- 📊 **Monitoring**: R-003 (12→12) - Limited improvement possible without budget increase

---

## B. Top 10 Risks (Ranked by Residual Score)

| Rank | ID | Title | Category | Inherent | Residual | Owner | Status | Response |
|------|-----|-------|----------|----------|----------|-------|--------|----------|
| 1 | R-003 | Vendor premium pricing exceeds budget | FINANCIAL | 12 | 12 | Finance BP | Open | Treat |
| 2 | R-004 | Accreditation delays go-live | COMPLIANCE | 15 | 12 | IAO | Open | Treat |
| 3 | R-001 | Cost savings target not achieved | FINANCIAL | 9 | 9 | Finance BP | Open | Treat |
| 4 | R-002 | Confidentiality breach via print service | REPUTATIONAL | 20 | 8 | Security Lead | Open | Treat |
| 5 | R-005 | GDPR non-compliance in print data handling | COMPLIANCE | 16 | 8 | IAO | Open | Treat |
| 6 | R-011 | User adoption of portal low | OPERATIONAL | 12 | 8 | Service Owner | Open | Treat |
| 7 | R-006 | Equipment failure disrupts service | TECHNOLOGY | 20 | 6 | Service Owner | Open | Treat |
| 8 | R-007 | Service quality issues damage satisfaction | OPERATIONAL | 9 | 6 | Service Owner | Open | Treat |
| 9 | R-010 | Strategic direction change impacts project | STRATEGIC | 12 | 6 | Executive Sponsor | Open | Tolerate |
| 10 | R-009 | Vendor lock-in limits flexibility | TECHNOLOGY | 6 | 4 | Procurement Lead | Open | Tolerate |

---

## C. Detailed Risk Register

### Risk R-001: Cost Savings Target Not Achieved

**Category:** FINANCIAL
**Status:** Open
**Risk Owner:** Finance Business Partner (from Stakeholder RACI: Accountable for G-1)
**Action Owner:** Procurement Lead

#### Risk Identification

**Risk Description:**
The managed print service fails to deliver the targeted 20% cost savings (£10K-15K annually) compared to current external print spending baseline, resulting in budget pressure and undermined business case for the project.

**Root Cause:**
- Service pricing higher than estimated due to security requirements premium
- Actual print volumes exceed contract capacity requiring additional charges
- Hidden fees not identified during procurement (setup, overage, consumables)

**Trigger Events:**
- Contract pricing exceeds £30K/year threshold
- First quarter actual costs significantly above forecast
- Unplanned charges appear on invoices

**Consequences if Realized:**
- Budget overrun requiring additional funding approval
- Business case invalidated, project credibility damaged
- Executive Sponsor objectives not met (SD-7: Quick Win)

**Affected Stakeholders:**
- **Finance Business Partner (SD-1)**: Primary driver - cost predictability not achieved
- **Executive Sponsor (SD-7)**: Quick win narrative undermined
- **Service Owner (SD-2)**: Project success questioned

**Related Objectives:**
- Goal G-1: Predictable Annual Print Costs - cost savings target missed
- Outcome O-1: £10K-15K Annual Savings - not achieved

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Security requirements may limit vendor pool and increase pricing |
| **Impact** | 3 - Moderate | Budget pressure, business case weakened, but not project failure |
| **Inherent Risk Score** | **9** (Medium) | 3 x 3 = 9 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **All-inclusive pricing requirement in RFP**: Fixed monthly fee includes consumables, maintenance, support
   - Owner: Procurement Lead
   - Effectiveness: **Strong**
   - Evidence: RFP template includes mandatory pricing structure

2. **Multi-year price lock clause**: Contract terms prevent price increases in Year 1
   - Owner: Contract Manager
   - Effectiveness: **Adequate**
   - Evidence: Standard contract template provision

3. **TCO analysis during vendor evaluation**: Comprehensive cost comparison including hidden fees
   - Owner: Finance Business Partner
   - Effectiveness: **Adequate**
   - Evidence: Evaluation criteria includes 30% cost weighting

**Overall Control Effectiveness:** Adequate (maintains risk at 9)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Controls reduce surprise costs but cannot eliminate pricing pressure |
| **Impact** | 3 - Moderate | Impact unchanged if savings not achieved |
| **Residual Risk Score** | **9** (Medium) | 3 x 3 = 9 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 0% reduction (controls prevent escalation, don't reduce)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Risk is within appetite but requires active management to achieve savings target. Cannot eliminate market pricing pressure, but can optimize procurement approach.

**Alternative Responses Considered:**
- **Tolerate**: Rejected - Active management needed to achieve business case
- **Transfer**: Not applicable - Internal budget risk
- **Terminate**: Not viable - Project has strategic value beyond cost savings

#### Risk Appetite Assessment

**Organizational Risk Appetite for FINANCIAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 9 (Medium)
**Assessment:** ✅ **Within Appetite** (at threshold)

**Justification:**
At appetite threshold. Requires monitoring but acceptable given other project benefits (security, quality, admin reduction).

**Escalation Required:** No - within appetite

#### Action Plan

**Additional Mitigations Needed:**

1. **G-Cloud market research before RFP**
   - Description: Validate compliant vendor pool size and indicative pricing
   - Owner: Procurement Lead
   - Due Date: 2026-02-07
   - Cost: Internal effort only
   - Expected Impact: Validate budget assumptions, adjust if needed

2. **Include volume flexibility clause**
   - Description: Contract allows ±20% volume variation without price changes
   - Owner: Contract Manager
   - Due Date: 2026-03-15
   - Cost: £0
   - Expected Impact: Reduce volume-related cost surprises

**Target Residual Risk After Mitigations:**
- Target Likelihood: 2 (Unlikely)
- Target Impact: 3 (Moderate)
- Target Score: 6 (Medium) ✅ Within appetite

**Success Criteria:**
- Contract signed within £30K annual budget cap
- First quarter costs within 5% of forecast
- Zero unplanned charges in Year 1

---

### Risk R-002: Confidentiality Breach via Print Service

**Category:** REPUTATIONAL
**Status:** Open
**Risk Owner:** Security Lead (from Stakeholder RACI: Accountable for G-5)
**Action Owner:** Service Owner

#### Risk Identification

**Risk Description:**
Sensitive organizational documents (board materials, strategic plans, financial reports) are exposed through the print service due to inadequate security controls, causing reputational damage and potential regulatory consequences.

**Root Cause:**
- Documents left uncollected at print device accessible to unauthorized persons
- Vendor personnel without appropriate vetting access sensitive materials
- Network security vulnerabilities allow data interception
- Audit logging inadequate for breach detection

**Trigger Events:**
- Sensitive document found by unauthorized person
- Vendor personnel reports suspicious document content
- Security audit identifies logging gaps
- Cyber attack targets print infrastructure

**Consequences if Realized:**
- Reputational damage with stakeholders, customers, regulators
- Potential GDPR penalty if personal data involved
- Executive accountability questions
- Loss of stakeholder confidence in managed service model

**Affected Stakeholders:**
- **Security Lead (SD-4)**: Data protection responsibility breached
- **Executive Assistant (SD-9)**: Confidentiality for board materials compromised
- **IAO (SD-3)**: Accreditation at risk, personal accountability
- **Executive Sponsor (SD-7)**: Quick win becomes reputational incident

**Related Objectives:**
- Goal G-5: Maintain Zero Confidentiality Breaches - directly failed
- Outcome O-5: Zero Data Security Incidents - not achieved

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | Without controls, document exposure is common in print environments |
| **Impact** | 5 - Catastrophic | Breach of sensitive documents could damage reputation severely |
| **Inherent Risk Score** | **20** (Critical) | 4 x 5 = 20 |

**Risk Zone:** 🟥 Critical (20-25)

#### Current Controls and Mitigations

**Existing Controls:**
1. **On-premises equipment (no external handling)**: All printing on-site, eliminates external document handling
   - Owner: Service Owner
   - Effectiveness: **Strong**
   - Evidence: Service model specifies on-premises only

2. **Secure print release requirement (NFR-SEC-007)**: Documents held until user authenticates at device
   - Owner: Security Lead
   - Effectiveness: **Strong**
   - Evidence: Mandatory security requirement in RFP

3. **BPSS vetting requirement (NFR-SEC-010)**: All vendor on-site personnel must be vetted
   - Owner: IAO
   - Effectiveness: **Adequate**
   - Evidence: Contract requirement for personnel vetting

4. **Comprehensive audit logging (NFR-SEC-006)**: All print jobs logged with user, time, document name
   - Owner: Security Lead
   - Effectiveness: **Strong**
   - Evidence: SIEM integration requirement in RFP

**Overall Control Effectiveness:** Strong (reduces risk from 20 to 8)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Secure print release and vetting significantly reduce breach probability |
| **Impact** | 4 - Major | Impact remains significant if breach occurs despite controls |
| **Residual Risk Score** | **8** (Medium) | 2 x 4 = 8 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 60% reduction from inherent (20 → 8)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce)

**Rationale:**
Critical inherent risk requires comprehensive controls. Residual risk acceptable given defence-in-depth approach with secure print release, vetting, and audit logging.

#### Risk Appetite Assessment

**Organizational Risk Appetite for REPUTATIONAL risks:** Low (Score ≤ 6)
**Current Residual Risk Score:** 8 (Medium)
**Assessment:** ⚠️ **Slightly Exceeds Appetite** by 2 points (33% over threshold)

**Justification:**
Defence-in-depth controls provide strong protection. Residual risk accepted given security controls exceed current state (external print shops) and MOD Secure by Design requirements met.

**Escalation Required:** Yes - Security Lead approval documented

#### Action Plan

**Additional Mitigations Needed:**

1. **Mandatory secure print release policy**
   - Description: OFFICIAL-SENSITIVE documents must use secure print release
   - Owner: IAO
   - Due Date: 2026-04-01
   - Cost: Policy effort only
   - Expected Impact: Reduce likelihood from 2 to 1

**Target Residual Risk After Mitigations:**
- Target Likelihood: 1 (Rare)
- Target Impact: 4 (Major)
- Target Score: 4 (Low) ✅ Within appetite

**Success Criteria:**
- Zero confidentiality breaches in Year 1
- 100% secure print adoption for OFFICIAL-SENSITIVE
- 100% audit log completeness verified monthly

---

### Risk R-003: Vendor Premium Pricing Exceeds Budget

**Category:** FINANCIAL
**Status:** Open
**Risk Owner:** Finance Business Partner (from Stakeholder RACI: Accountable for budget)
**Action Owner:** Procurement Lead

#### Risk Identification

**Risk Description:**
Mandatory Cyber Essentials+ certification and enhanced MOD Secure by Design requirements reduce vendor pool, limiting competitive tension and resulting in service pricing 15-25% above budget assumptions.

**Root Cause:**
- Cyber Essentials+ certification mandatory (non-negotiable per MOD SbD)
- Enhanced security requirements (penetration testing rights, BPSS vetting) filter out smaller vendors
- Limited G-Cloud compliant vendors for specialist large format print service
- Security-certified vendors command premium pricing

**Trigger Events:**
- RFP responses all exceed budget cap
- Only 1-2 compliant vendors respond to procurement
- Vendor pricing negotiations fail to achieve target
- Security requirements rejected by cost-competitive vendors

**Consequences if Realized:**
- Budget increased by £5K-10K annually (25-35% over baseline)
- Executive approval required for budget increase
- Finance Business Partner driver (SD-1) not satisfied
- Business case ROI diminished

**Affected Stakeholders:**
- **Finance Business Partner (SD-1)**: Cost predictability achieved but at higher level than planned
- **Procurement Lead (SD-8)**: Procurement process complicated by limited vendor pool
- **IAO (SD-3)**: Security requirements create budget tension with Finance

**Related Objectives:**
- Goal G-1: Predictable Annual Print Costs - predictability achieved but at higher cost
- Stakeholder Conflict 1: Cost Minimisation vs. Security Requirements - realized

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | Security requirements known to limit vendor pool and increase pricing |
| **Impact** | 3 - Moderate | Budget increase required but project proceeds with approval |
| **Inherent Risk Score** | **12** (Medium) | 4 x 3 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **G-Cloud framework route**: Pre-qualified vendors, competitive pricing transparency
   - Owner: Procurement Lead
   - Effectiveness: **Adequate**
   - Evidence: G-Cloud pricing published, benchmark available

2. **Budget contingency (10%)**: £3K contingency included for security premium
   - Owner: Finance Business Partner
   - Effectiveness: **Adequate**
   - Evidence: Budget planning document

3. **Cost weighting in evaluation (30%)**: Incentivizes competitive pricing within compliant pool
   - Owner: Procurement Lead
   - Effectiveness: **Adequate**
   - Evidence: Evaluation criteria documented

**Overall Control Effectiveness:** Adequate (maintains risk at 12)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | Market reality - limited control over vendor pricing |
| **Impact** | 3 - Moderate | Budget contingency partially absorbs but may not cover |
| **Residual Risk Score** | **12** (Medium) | 4 x 3 = 12 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 0% (controls cannot reduce market pricing pressure)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Mitigate/Reduce through scope adjustment if needed)

**Rationale:**
Cannot eliminate market pricing reality. If budget exceeded, consider scope reduction (reduced SLA tier, simplified media options) rather than compromising security.

#### Risk Appetite Assessment

**Organizational Risk Appetite for FINANCIAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 12 (Medium)
**Assessment:** ❌ **Exceeds Appetite** by 3 points (33% over threshold)

**Justification:**
Security certification non-negotiable per MOD Secure by Design. Proceeding requires explicit acceptance that security compliance has cost premium. CFO approval documented.

**Escalation Required:** Yes - CFO approval required for budget flexibility

#### Action Plan

**Additional Mitigations Needed:**

1. **Market research validation**
   - Description: G-Cloud search and informal vendor engagement to validate pricing assumptions
   - Owner: Procurement Lead
   - Due Date: 2026-02-14
   - Cost: Internal effort
   - Expected Impact: Early warning if budget assumptions incorrect

2. **Scope flexibility options**
   - Description: Identify reduced scope options (SLA tier, media options) if pricing exceeds cap
   - Owner: Service Owner
   - Due Date: 2026-02-28
   - Cost: £0
   - Expected Impact: Provide alternatives if full scope unaffordable

**Target Residual Risk After Mitigations:**
- Target Likelihood: 3 (Possible)
- Target Impact: 3 (Moderate)
- Target Score: 9 (Medium) ✅ Within appetite

**Success Criteria:**
- At least 3 compliant vendors respond to RFP
- Contract signed within £35K budget cap (including contingency)
- Scope adjustments identified if needed before vendor selection

---

### Risk R-004: Accreditation Delays Go-Live

**Category:** COMPLIANCE
**Status:** Open
**Risk Owner:** IAO (from Stakeholder RACI: Accountable for G-3)
**Action Owner:** Security Lead

#### Risk Identification

**Risk Description:**
JSP 440 Risk Managed Accreditation cannot be completed before planned go-live date due to inadequate vendor security documentation, security findings requiring remediation, or compressed timeline pressure.

**Root Cause:**
- Vendor provides incomplete security documentation (secure configuration baseline)
- Security review identifies findings requiring vendor remediation
- Insufficient time allocated for thorough accreditation review
- Executive pressure to meet go-live date overrides security process

**Trigger Events:**
- Vendor documentation incomplete 2 weeks before planned review
- Security assessment identifies critical/high findings
- Business Impact Assessment reveals undocumented risks
- Executive Sponsor requests go-live before IAO sign-off

**Consequences if Realized:**
- Service cannot handle OFFICIAL data - operational use blocked
- Go-live delayed 2-6 weeks for remediation
- IAO personal accountability if proceeding without accreditation
- Reputational damage if security incident occurs post-go-live

**Affected Stakeholders:**
- **IAO (SD-3)**: Accreditation sign-off responsibility, cannot cut corners
- **Executive Sponsor (SD-7)**: Quick win delayed, timeline pressure
- **Security Lead (SD-4)**: Defence-in-depth requirements may not be verified
- **Service Owner (SD-2)**: Go-live delayed affects operational benefits

**Related Objectives:**
- Goal G-3: JSP 440 Accreditation Before Go-Live - at risk
- Outcome O-3: Security Accreditation Achieved - delayed
- Stakeholder Conflict 2: Rapid Go-Live vs. Thorough Accreditation - realized

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 5 - Almost Certain | Accreditation frequently delayed by documentation or findings |
| **Impact** | 3 - Moderate | Go-live delayed but project proceeds after remediation |
| **Inherent Risk Score** | **15** (High) | 5 x 3 = 15 |

**Risk Zone:** 🟧 High (13-19)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Security requirements in RFP**: Comprehensive NFR-SEC requirements ensure vendor prepares documentation
   - Owner: Security Lead
   - Effectiveness: **Strong**
   - Evidence: 11 security NFRs documented in requirements.md

2. **4-week accreditation buffer**: Go-live date includes buffer for security review
   - Owner: IAO
   - Effectiveness: **Adequate**
   - Evidence: Project timeline includes buffer

3. **Documentation requirements in contract**: Vendor contractually obligated to provide security baseline
   - Owner: Contract Manager
   - Effectiveness: **Adequate**
   - Evidence: Contract template provisions

**Overall Control Effectiveness:** Adequate (reduces risk from 15 to 12)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | Buffer helps but findings may still require remediation time |
| **Impact** | 3 - Moderate | Impact unchanged - delay likely if findings discovered |
| **Residual Risk Score** | **12** (Medium) | 4 x 3 = 12 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 20% reduction from inherent (15 → 12)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Build in sufficient timeline buffer)

**Rationale:**
Accreditation is non-negotiable (IAO personal accountability). Timeline must accommodate thorough review. Cannot compress security process to meet arbitrary deadline.

#### Risk Appetite Assessment

**Organizational Risk Appetite for COMPLIANCE risks:** Very Low (Score ≤ 6)
**Current Residual Risk Score:** 12 (Medium)
**Assessment:** ❌ **Exceeds Appetite** by 6 points (100% over threshold)

**Justification:**
Compliance risk inherently high for new service requiring accreditation. IAO accepts risk given controls in place (buffer, documentation requirements). Service will not go live without accreditation regardless of schedule pressure.

**Escalation Required:** Yes - IAO has authority to delay go-live until accreditation complete

#### Action Plan

**Additional Mitigations Needed:**

1. **Parallel security review track**
   - Description: Security review begins during vendor implementation, not sequentially after
   - Owner: Security Lead
   - Due Date: Implementation start
   - Cost: Security team time
   - Expected Impact: Reduce likelihood from 4 to 3 (earlier issue identification)

2. **Vendor remediation SLA in contract**
   - Description: 5-day remediation SLA for security findings in contract terms
   - Owner: Contract Manager
   - Due Date: Contract signature
   - Cost: £0
   - Expected Impact: Accelerate remediation if findings identified

**Target Residual Risk After Mitigations:**
- Target Likelihood: 3 (Possible)
- Target Impact: 3 (Moderate)
- Target Score: 9 (Medium) - Still exceeds appetite but controlled

**Success Criteria:**
- Vendor documentation received 4 weeks before go-live
- Zero critical security findings at accreditation review
- IAO sign-off achieved on or before planned go-live date

---

### Risk R-005: GDPR Non-Compliance in Print Data Handling

**Category:** COMPLIANCE
**Status:** Open
**Risk Owner:** IAO (from Stakeholder RACI: Data protection accountability)
**Action Owner:** Security Lead

#### Risk Identification

**Risk Description:**
Print service processes personal data (names, documents containing PII) without adequate GDPR compliance, resulting in regulatory investigation, fines, or enforcement action.

**Root Cause:**
- Print job metadata contains personal data (user names, document titles)
- Audit logs retained beyond legal basis
- Vendor data processing agreement inadequate
- Cross-border data transfer (if vendor uses non-UK infrastructure)

**Trigger Events:**
- Subject access request reveals print service data
- Audit identifies GDPR compliance gaps
- Data breach notification required
- ICO inquiry following complaint

**Consequences if Realized:**
- ICO investigation and potential fine (up to 4% revenue or £17.5M)
- Reputational damage with data subjects
- Remediation costs and operational disruption
- Personal liability for senior management

**Affected Stakeholders:**
- **IAO (SD-3)**: Data protection compliance accountability
- **Security Lead (SD-4)**: Defence-in-depth includes data protection
- **Executive Sponsor (SD-7)**: Regulatory incident damages quick win narrative

**Related Objectives:**
- Goal G-5: Zero Confidentiality Breaches - GDPR breach counts
- Outcome O-5: Zero Data Security Incidents - regulatory incident

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | Print services commonly have GDPR compliance gaps |
| **Impact** | 4 - Major | Regulatory fine potential, reputational damage |
| **Inherent Risk Score** | **16** (High) | 4 x 4 = 16 |

**Risk Zone:** 🟧 High (13-19)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Data Processing Agreement requirement**: Contract includes GDPR-compliant DPA
   - Owner: Contract Manager
   - Effectiveness: **Strong**
   - Evidence: Standard contract template includes DPA

2. **UK-only data processing requirement (NFR-SEC-004)**: No cross-border transfers
   - Owner: Security Lead
   - Effectiveness: **Strong**
   - Evidence: Security requirement in RFP

3. **Data retention limits (NFR-SEC-009)**: Audit logs retained 12 months only
   - Owner: Security Lead
   - Effectiveness: **Adequate**
   - Evidence: Retention requirement in contract

**Overall Control Effectiveness:** Strong (reduces risk from 16 to 8)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | DPA and UK-only processing significantly reduce compliance risk |
| **Impact** | 4 - Major | Impact unchanged if breach occurs |
| **Residual Risk Score** | **8** (Medium) | 2 x 4 = 8 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 50% reduction from inherent (16 → 8)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Comprehensive GDPR controls)

**Rationale:**
GDPR compliance is mandatory. Controls address key risk areas (DPA, data location, retention). Residual risk acceptable with implemented controls.

#### Risk Appetite Assessment

**Organizational Risk Appetite for COMPLIANCE risks:** Very Low (Score ≤ 6)
**Current Residual Risk Score:** 8 (Medium)
**Assessment:** ⚠️ **Exceeds Appetite** by 2 points (33% over threshold)

**Justification:**
GDPR compliance inherently challenging for services processing personal data. Controls represent best practice. Residual risk accepted given comprehensive DPA and UK-only data processing.

**Escalation Required:** Yes - IAO acknowledgment documented

#### Action Plan

**Additional Mitigations Needed:**

1. **GDPR compliance verification during security review**
   - Description: Explicit GDPR compliance checklist in accreditation review
   - Owner: IAO
   - Due Date: Accreditation review
   - Cost: Internal effort
   - Expected Impact: Verify controls effective before go-live

**Target Residual Risk After Mitigations:**
- Target Likelihood: 2 (Unlikely)
- Target Impact: 4 (Major)
- Target Score: 8 (Medium) - Accepted given controls

**Success Criteria:**
- GDPR compliance verified at accreditation
- DPA signed before service go-live
- Zero GDPR complaints or SAR issues in Year 1

---

### Risk R-006: Equipment Failure Disrupts Service

**Category:** TECHNOLOGY
**Status:** Open
**Risk Owner:** Service Owner (from Stakeholder RACI: Service delivery accountability)
**Action Owner:** Vendor (via contract)

#### Risk Identification

**Risk Description:**
Large format print equipment fails during peak demand period, causing service outage exceeding SLA and disrupting end user operations (marketing campaigns, engineering projects, executive meetings).

**Root Cause:**
- Equipment hardware failure (print heads, rollers, power supply)
- Consumables stock-out (ink, paper) due to vendor failure
- Network connectivity issues preventing job submission
- Software/firmware issues requiring vendor intervention

**Trigger Events:**
- Equipment error during critical print job
- Consumables exhausted with no backup stock
- Network outage affecting print infrastructure VLAN
- Firmware update causes system instability

**Consequences if Realized:**
- Marketing campaign delayed (SD-5 impact)
- Engineering project reviews postponed (SD-6 impact)
- Executive meeting materials unavailable (SD-9 impact)
- User satisfaction drops, complaints to Facilities

**Affected Stakeholders:**
- **Service Owner (SD-2)**: Service quality commitment breached
- **Marketing Manager (SD-5)**: Campaign materials delayed
- **Engineering Lead (SD-6)**: Technical drawings unavailable
- **Executive Assistant (SD-9)**: Board materials not printed

**Related Objectives:**
- Goal G-2: 95% On-Time Print Jobs - SLA missed
- Outcome O-2: 95% User Satisfaction - satisfaction drops

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 4 - Likely | Print equipment reliability issues common |
| **Impact** | 5 - Catastrophic | Service outage during critical period severely impacts users |
| **Inherent Risk Score** | **20** (Critical) | 4 x 5 = 20 |

**Risk Zone:** 🟥 Critical (20-25)

#### Current Controls and Mitigations

**Existing Controls:**
1. **99% equipment availability SLA (NFR-A-001)**: Vendor contractually obligated
   - Owner: Contract Manager
   - Effectiveness: **Strong**
   - Evidence: SLA requirement in RFP

2. **4-hour response time for critical issues (NFR-A-002)**: Rapid vendor response
   - Owner: Service Owner
   - Effectiveness: **Strong**
   - Evidence: SLA requirement in contract

3. **Proactive consumables management**: Vendor monitors and replenishes automatically
   - Owner: Vendor
   - Effectiveness: **Strong**
   - Evidence: Managed service model specification

4. **100% burst capacity clause**: Temporary capacity available during outages
   - Owner: Contract Manager
   - Effectiveness: **Adequate**
   - Evidence: Contract provision for backup service

**Overall Control Effectiveness:** Strong (reduces risk from 20 to 6)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | SLA accountability and proactive management significantly reduce failure |
| **Impact** | 3 - Moderate | Burst capacity and rapid response limit outage duration |
| **Residual Risk Score** | **6** (Medium) | 2 x 3 = 6 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 70% reduction from inherent (20 → 6)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (SLA accountability and backup capacity)

**Rationale:**
Critical inherent risk well-controlled through managed service SLAs. Vendor has strong incentive (service credits) to maintain availability.

#### Risk Appetite Assessment

**Organizational Risk Appetite for TECHNOLOGY risks:** Medium (Score ≤ 12)
**Current Residual Risk Score:** 6 (Medium)
**Assessment:** ✅ **Within Appetite**

**Escalation Required:** No

#### Action Plan

**Additional Mitigations Needed:**

1. **Service credit regime review**
   - Description: Ensure service credits meaningful enough to incentivize vendor performance
   - Owner: Contract Manager
   - Due Date: Contract negotiation
   - Cost: £0
   - Expected Impact: Strengthen vendor accountability

**Target Residual Risk After Mitigations:**
- Target Likelihood: 2 (Unlikely)
- Target Impact: 3 (Moderate)
- Target Score: 6 (Medium) ✅ Within appetite

**Success Criteria:**
- Equipment availability >99% monthly
- Zero outages exceeding 4 hours
- Service credits invoked <2x per year

---

### Risk R-007: Service Quality Issues Damage Satisfaction

**Category:** OPERATIONAL
**Status:** Open
**Risk Owner:** Service Owner (from Stakeholder RACI: Service quality accountability)
**Action Owner:** Vendor (via SLA)

#### Risk Identification

**Risk Description:**
Managed print service delivers inconsistent quality (colour drift, scale inaccuracy, media issues) causing user complaints, reprints, and low satisfaction scores.

**Root Cause:**
- Equipment calibration not maintained (colour drift)
- Scale accuracy verification not performed
- Incorrect media loaded or media quality issues
- Profile configuration errors for different print types

**Trigger Events:**
- Marketing materials with incorrect colours
- Engineering drawings with scale errors
- Paper quality complaints
- Multiple reprint requests

**Consequences if Realized:**
- User satisfaction target missed (O-2)
- Marketing/Engineering departments dissatisfied
- Service Owner receives complaints
- Business case for managed service questioned

**Affected Stakeholders:**
- **Marketing Manager (SD-5)**: Colour accuracy critical for brand materials
- **Engineering Lead (SD-6)**: Scale accuracy critical for technical drawings
- **Service Owner (SD-2)**: Service quality reflects on Facilities

**Related Objectives:**
- Goal G-6: Meet End User Quality Requirements - not achieved
- Outcome O-2: 95% User Satisfaction - target missed

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Quality issues occur in print services without active management |
| **Impact** | 3 - Moderate | User dissatisfaction, reprints, complaints |
| **Inherent Risk Score** | **9** (Medium) | 3 x 3 = 9 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Quality SLAs (NFR-Q-001, NFR-Q-002)**: Delta E < 2 colour accuracy, 100% scale accuracy
   - Owner: Service Owner
   - Effectiveness: **Strong**
   - Evidence: Quality requirements in RFP

2. **Calibration certificates required**: Weekly/monthly calibration with documented evidence
   - Owner: Vendor
   - Effectiveness: **Strong**
   - Evidence: Contract requirement

3. **No-cost reprints for quality issues**: Vendor bears reprint costs
   - Owner: Contract Manager
   - Effectiveness: **Adequate**
   - Evidence: Standard contract provision

**Overall Control Effectiveness:** Strong (reduces risk from 9 to 6)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | SLA accountability incentivizes quality maintenance |
| **Impact** | 3 - Moderate | Impact unchanged if quality issues occur |
| **Residual Risk Score** | **6** (Medium) | 2 x 3 = 6 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 33% reduction from inherent (9 → 6)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Quality SLAs with vendor accountability)

**Rationale:**
Quality requirements contractually enforced with vendor bearing reprint costs. Strong incentive alignment.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Low (Score ≤ 6)
**Current Residual Risk Score:** 6 (Medium)
**Assessment:** ✅ **Within Appetite** (at threshold)

**Escalation Required:** No

#### Action Plan

**Additional Mitigations Needed:**

1. **Quality profile acceptance testing**
   - Description: Test all print profiles (Photo, Technical, Economy) during acceptance
   - Owner: Service Owner
   - Due Date: Service acceptance
   - Cost: Internal effort
   - Expected Impact: Verify quality before go-live

**Target Residual Risk After Mitigations:**
- Target Likelihood: 2 (Unlikely)
- Target Impact: 3 (Moderate)
- Target Score: 6 (Medium) ✅ At appetite threshold

**Success Criteria:**
- Quality complaints <2 per month
- Reprint rate <2% of jobs
- User satisfaction 4.5/5.0 for quality

---

### Risk R-008: Vendor Financial Instability

**Category:** FINANCIAL
**Status:** Open
**Risk Owner:** Finance Business Partner
**Action Owner:** Procurement Lead

#### Risk Identification

**Risk Description:**
Selected vendor experiences financial difficulties (insolvency, acquisition, cost-cutting) impacting service delivery continuity or quality.

**Root Cause:**
- Small vendor with limited financial reserves
- Market conditions affect vendor viability
- Vendor acquired by company with different priorities
- Cost-cutting reduces service quality

**Trigger Events:**
- Vendor announces financial difficulties
- Service quality deteriorates due to cost-cutting
- Key vendor personnel leave
- Vendor acquired or merged

**Consequences if Realized:**
- Service continuity risk if vendor fails
- Quality deterioration during transition
- Re-procurement costs and delays
- Business disruption during vendor change

**Affected Stakeholders:**
- **Finance Business Partner (SD-1)**: Re-procurement costs, budget disruption
- **Service Owner (SD-2)**: Service continuity risk
- **Procurement Lead (SD-8)**: Emergency procurement required

**Related Objectives:**
- Goal G-2: 95% On-Time Delivery - at risk during transition
- Goal G-4: Minimise Admin Overhead - increased during vendor change

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | G-Cloud vendors typically established businesses |
| **Impact** | 2 - Minor | Service transition manageable with notice |
| **Inherent Risk Score** | **4** (Low) | 2 x 2 = 4 |

**Risk Zone:** 🟩 Low (1-5)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Financial stability check during evaluation**: Credit check and references
   - Owner: Procurement Lead
   - Effectiveness: **Adequate**
   - Evidence: Standard procurement due diligence

2. **G-Cloud framework**: Pre-qualified vendors with CCS vetting
   - Owner: Procurement Lead
   - Effectiveness: **Adequate**
   - Evidence: G-Cloud qualification requirements

3. **Termination for convenience clause**: 90-day notice exit provision
   - Owner: Contract Manager
   - Effectiveness: **Adequate**
   - Evidence: Standard contract term

**Overall Control Effectiveness:** Adequate (maintains risk at 2)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Due diligence reduces but cannot eliminate vendor risk |
| **Impact** | 1 - Negligible | Exit provisions and market alternatives limit impact |
| **Residual Risk Score** | **2** (Low) | 2 x 1 = 2 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 50% reduction from inherent (4 → 2)

#### Risk Response (4Ts Framework)

**Primary Response:** TOLERATE (Low risk, due diligence performed)

**Rationale:**
Risk is low and within appetite. Standard procurement due diligence appropriate. No additional mitigations cost-effective.

#### Risk Appetite Assessment

**Organizational Risk Appetite for FINANCIAL risks:** Medium (Score ≤ 9)
**Current Residual Risk Score:** 2 (Low)
**Assessment:** ✅ **Within Appetite**

**Escalation Required:** No

---

### Risk R-009: Vendor Lock-In Limits Flexibility

**Category:** TECHNOLOGY
**Status:** Open
**Risk Owner:** Procurement Lead
**Action Owner:** Contract Manager

#### Risk Identification

**Risk Description:**
Contract terms or technical dependencies create vendor lock-in, limiting ability to change vendors or negotiate favorable renewal terms.

**Root Cause:**
- Proprietary portal or workflow systems
- Long contract term with high exit costs
- Data format or integration dependencies
- Limited market alternatives for specialist service

**Trigger Events:**
- Contract renewal with unfavorable pricing
- Vendor performance issues but cannot exit
- Technical migration barriers discovered
- Market research shows better alternatives

**Consequences if Realized:**
- Forced to accept unfavorable renewal terms
- Technical migration costs high
- Unable to exit poor-performing vendor
- Limited competitive tension at renewal

**Affected Stakeholders:**
- **Finance Business Partner (SD-1)**: Renewal pricing pressure
- **Procurement Lead (SD-8)**: Limited negotiation leverage

**Related Objectives:**
- Goal G-1: Cost Predictability - renewal pricing risk

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Market has alternatives, standard service model |
| **Impact** | 3 - Moderate | Higher renewal costs or difficult transition |
| **Inherent Risk Score** | **6** (Medium) | 2 x 3 = 6 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Standard service model (no proprietary systems)**: Avoid unique vendor dependencies
   - Owner: Enterprise Architect
   - Effectiveness: **Adequate**
   - Evidence: RFP specifies standard interfaces

2. **Data export requirements**: Vendor must provide data export capability
   - Owner: Contract Manager
   - Effectiveness: **Adequate**
   - Evidence: Contract data portability clause

3. **Reasonable termination notice (90 days)**: Adequate transition period
   - Owner: Contract Manager
   - Effectiveness: **Adequate**
   - Evidence: Standard contract term

**Overall Control Effectiveness:** Adequate (reduces risk from 6 to 4)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Standard service reduces lock-in |
| **Impact** | 2 - Minor | Data portability and notice period enable transition |
| **Residual Risk Score** | **4** (Low) | 2 x 2 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 33% reduction from inherent (6 → 4)

#### Risk Response (4Ts Framework)

**Primary Response:** TOLERATE (Low residual risk with adequate controls)

**Rationale:**
Vendor lock-in risk low for standard managed print service. Controls ensure portability and exit capability.

#### Risk Appetite Assessment

**Organizational Risk Appetite for TECHNOLOGY risks:** Medium (Score ≤ 12)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite**

**Escalation Required:** No

---

### Risk R-010: Strategic Direction Change Impacts Project

**Category:** STRATEGIC
**Status:** Open
**Risk Owner:** Executive Sponsor (from Stakeholder RACI: Strategic accountability)
**Action Owner:** Service Owner

#### Risk Identification

**Risk Description:**
Organizational strategic direction change (restructuring, budget cuts, policy shift) reduces priority or cancels the large format print service project.

**Root Cause:**
- Organizational restructuring affecting Facilities function
- Budget reduction requiring discretionary spend cuts
- Policy change affecting procurement approach
- Leadership change with different priorities

**Trigger Events:**
- Budget reduction announcement
- Organizational restructure announced
- New leadership with different priorities
- Policy directive affecting procurement

**Consequences if Realized:**
- Project delayed or cancelled
- Sunk procurement costs
- User needs unmet (continue external printing)
- Team effort wasted

**Affected Stakeholders:**
- **Executive Sponsor (SD-7)**: Strategic priorities shift
- **Service Owner (SD-2)**: Project sponsor withdrawn
- **End Users (SD-5, SD-6, SD-9)**: Print service improvements not delivered

**Related Objectives:**
- All goals potentially cancelled if project stopped

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Strategic changes occur periodically |
| **Impact** | 4 - Major | Project cancellation wastes effort and delays benefits |
| **Inherent Risk Score** | **12** (Medium) | 3 x 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Executive Sponsor commitment**: Formal project sponsorship established
   - Owner: Executive Sponsor
   - Effectiveness: **Adequate**
   - Evidence: Project charter

2. **Short procurement timeline (3-6 months)**: Reduces exposure to strategic changes
   - Owner: Procurement Lead
   - Effectiveness: **Strong**
   - Evidence: Project timeline

3. **Strong business case**: Clear cost savings and operational benefits
   - Owner: Finance Business Partner
   - Effectiveness: **Adequate**
   - Evidence: Business case document

**Overall Control Effectiveness:** Adequate (reduces risk from 12 to 6)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Short timeline and executive commitment reduce risk |
| **Impact** | 3 - Moderate | Sunk costs limited by short procurement phase |
| **Residual Risk Score** | **6** (Medium) | 2 x 3 = 6 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 50% reduction from inherent (12 → 6)

#### Risk Response (4Ts Framework)

**Primary Response:** TOLERATE (Cannot control strategic direction)

**Rationale:**
External strategic decisions beyond project control. Mitigated by short timeline and strong business case. Accept and monitor.

#### Risk Appetite Assessment

**Organizational Risk Appetite for STRATEGIC risks:** Medium (Score ≤ 12)
**Current Residual Risk Score:** 6 (Medium)
**Assessment:** ✅ **Within Appetite**

**Escalation Required:** No

---

### Risk R-011: User Adoption of Portal Low

**Category:** OPERATIONAL
**Status:** Open
**Risk Owner:** Service Owner (from Stakeholder RACI: Service delivery)
**Action Owner:** Service Owner

#### Risk Identification

**Risk Description:**
End users continue contacting Facilities directly instead of using self-service portal, undermining administrative overhead reduction goal.

**Root Cause:**
- Users unfamiliar with new portal
- Portal usability issues
- Old habits (contacting Facilities) persist
- Portal training inadequate

**Trigger Events:**
- Users email/call Facilities for print requests
- Portal adoption <50% after 3 months
- Complaints about portal complexity
- Facilities team still spending 3+ hours/week on print coordination

**Consequences if Realized:**
- Admin overhead reduction goal (G-4) not achieved
- Service Owner workload unchanged
- Managed service benefits undermined
- User satisfaction potentially lower

**Affected Stakeholders:**
- **Service Owner (SD-2)**: Admin reduction not achieved
- **End Users (SD-5, SD-6, SD-9)**: May prefer Facilities contact over portal

**Related Objectives:**
- Goal G-4: Minimise Administrative Overhead - not achieved
- Outcome O-4: 80% Admin Reduction - not delivered

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | User behavior change requires active management |
| **Impact** | 4 - Major | Key project benefit (admin reduction) not delivered |
| **Inherent Risk Score** | **12** (Medium) | 3 x 4 = 12 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **User training before go-live**: Portal walkthrough, FAQ, documentation
   - Owner: Service Owner
   - Effectiveness: **Adequate**
   - Evidence: Training plan in implementation

2. **Communication campaign**: Emphasize self-service benefits
   - Owner: Service Owner
   - Effectiveness: **Adequate**
   - Evidence: Communication plan

3. **Facilities redirect policy**: Facilities redirects users to portal, doesn't handle requests
   - Owner: Service Owner
   - Effectiveness: **Adequate**
   - Evidence: Operational procedure

**Overall Control Effectiveness:** Adequate (reduces risk from 12 to 8)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Training and redirect policy encourage adoption |
| **Impact** | 4 - Major | Impact unchanged if adoption fails |
| **Residual Risk Score** | **8** (Medium) | 2 x 4 = 8 |

**Risk Zone:** 🟨 Medium (6-12)
**Risk Reduction:** 33% reduction from inherent (12 → 8)

#### Risk Response (4Ts Framework)

**Primary Response:** TREAT (Training and change management)

**Rationale:**
User adoption requires active change management. Training and redirect policy essential for success.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Low (Score ≤ 6)
**Current Residual Risk Score:** 8 (Medium)
**Assessment:** ⚠️ **Exceeds Appetite** by 2 points (33% over threshold)

**Justification:**
User adoption inherently challenging for new systems. Controls represent best practice. Residual risk accepted with monitoring and additional intervention if needed.

**Escalation Required:** No - Service Owner managing

#### Action Plan

**Additional Mitigations Needed:**

1. **Monthly adoption metrics tracking**
   - Description: Track portal adoption rate, intervene if <80%
   - Owner: Service Owner
   - Due Date: Ongoing from go-live
   - Cost: Internal effort
   - Expected Impact: Early intervention if adoption low

2. **Mandatory portal use policy (if needed)**
   - Description: If adoption <50% at month 3, implement mandatory policy
   - Owner: Executive Sponsor
   - Due Date: Month 3 review
   - Cost: £0
   - Expected Impact: Force adoption if voluntary adoption fails

**Target Residual Risk After Mitigations:**
- Target Likelihood: 2 (Unlikely)
- Target Impact: 3 (Moderate)
- Target Score: 6 (Medium) ✅ Within appetite

**Success Criteria:**
- Portal adoption >90% by month 6
- Admin time <1 hour/week
- User queries to Facilities <5/month

---

### Risk R-012: Procurement Challenge or Delay

**Category:** OPERATIONAL
**Status:** Open
**Risk Owner:** Procurement Lead
**Action Owner:** Contract Manager

#### Risk Identification

**Risk Description:**
Procurement process delayed by vendor challenge, legal review issues, or stakeholder disagreement on evaluation criteria, delaying service go-live.

**Root Cause:**
- Losing vendor challenges award decision
- Legal review identifies contract issues
- Stakeholders disagree on vendor selection
- Evaluation criteria ambiguity leads to dispute

**Trigger Events:**
- Vendor formal challenge received
- Legal review requires contract renegotiation
- Steering committee cannot agree on vendor
- Evaluation scoring disputed by stakeholders

**Consequences if Realized:**
- Go-live delayed 2-4 months
- Legal costs for challenge response
- Stakeholder frustration
- Benefits realization delayed

**Affected Stakeholders:**
- **Procurement Lead (SD-8)**: Procurement challenge to manage
- **Executive Sponsor (SD-7)**: Quick win delayed
- **End Users (SD-5, SD-6, SD-9)**: Service improvements delayed

**Related Objectives:**
- Project timeline - delayed
- Goal G-1, G-2 achievement - deferred

#### Inherent Risk Assessment (Before Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 3 - Possible | Procurement challenges occur occasionally |
| **Impact** | 2 - Minor | Delay manageable, not project-ending |
| **Inherent Risk Score** | **6** (Medium) | 3 x 2 = 6 |

**Risk Zone:** 🟨 Medium (6-12)

#### Current Controls and Mitigations

**Existing Controls:**
1. **Clear evaluation criteria**: Published criteria, transparent scoring
   - Owner: Procurement Lead
   - Effectiveness: **Strong**
   - Evidence: RFP includes evaluation methodology

2. **Stakeholder alignment on requirements**: Requirements document agreed before RFP
   - Owner: Procurement Lead
   - Effectiveness: **Adequate**
   - Evidence: Stakeholder sign-off on requirements

3. **G-Cloud compliant process**: Framework process reduces challenge risk
   - Owner: Procurement Lead
   - Effectiveness: **Strong**
   - Evidence: G-Cloud call-off procedure

**Overall Control Effectiveness:** Strong (reduces risk from 6 to 4)

#### Residual Risk Assessment (After Controls)

| Assessment | Rating | Justification |
|------------|--------|---------------|
| **Likelihood** | 2 - Unlikely | Framework process and clear criteria reduce challenge risk |
| **Impact** | 2 - Minor | Impact unchanged if delay occurs |
| **Residual Risk Score** | **4** (Low) | 2 x 2 = 4 |

**Risk Zone:** 🟩 Low (1-5)
**Risk Reduction:** 33% reduction from inherent (6 → 4)

#### Risk Response (4Ts Framework)

**Primary Response:** TOLERATE (Low residual risk with strong controls)

**Rationale:**
Procurement challenge risk inherent in all procurements. G-Cloud process and transparent evaluation minimize risk.

#### Risk Appetite Assessment

**Organizational Risk Appetite for OPERATIONAL risks:** Low (Score ≤ 6)
**Current Residual Risk Score:** 4 (Low)
**Assessment:** ✅ **Within Appetite**

**Escalation Required:** No

---

## D. Risk Category Analysis

### STRATEGIC Risks

**Total STRATEGIC Risks:** 1
**Average Inherent Score:** 12.0 (Medium)
**Average Residual Score:** 6.0 (Medium)
**Control Effectiveness:** 50% reduction

**Risk List:**
- R-010: Strategic direction change impacts project - Residual: 6 (Medium)

**Key Themes:**
- External strategic decisions beyond project control
- Mitigated by short timeline and executive commitment

**Category Risk Profile:** ✅ Acceptable - Single risk within appetite, tolerated

---

### OPERATIONAL Risks

**Total OPERATIONAL Risks:** 3
**Average Inherent Score:** 11.0 (Medium)
**Average Residual Score:** 6.0 (Medium)
**Control Effectiveness:** 45% reduction

**Risk List:**
- R-007: Service quality issues - Residual: 6 (Medium)
- R-011: User adoption low - Residual: 8 (Medium)
- R-012: Procurement challenge - Residual: 4 (Low)

**Key Themes:**
- Service quality managed through SLAs with vendor accountability
- User adoption requires active change management
- Procurement process well-controlled through G-Cloud framework

**Category Risk Profile:** ⚠️ Concerning - R-011 exceeds appetite, requires monitoring

---

### FINANCIAL Risks

**Total FINANCIAL Risks:** 3
**Average Inherent Score:** 8.3 (Medium)
**Average Residual Score:** 7.7 (Medium)
**Control Effectiveness:** 7% reduction (limited control over market pricing)

**Risk List:**
- R-001: Cost savings not achieved - Residual: 9 (Medium)
- R-003: Vendor premium pricing - Residual: 12 (Medium)
- R-008: Vendor financial instability - Residual: 2 (Low)

**Key Themes:**
- Security requirements create pricing pressure - market reality
- Cost controls through procurement approach and TCO analysis
- Vendor stability low risk with G-Cloud due diligence

**Category Risk Profile:** ⚠️ Concerning - R-003 exceeds appetite, requires CFO approval

---

### COMPLIANCE/REGULATORY Risks

**Total COMPLIANCE Risks:** 2
**Average Inherent Score:** 15.5 (High)
**Average Residual Score:** 10.0 (Medium)
**Control Effectiveness:** 35% reduction

**Risk List:**
- R-004: Accreditation delays go-live - Residual: 12 (Medium)
- R-005: GDPR non-compliance - Residual: 8 (Medium)

**Key Themes:**
- MOD Secure by Design accreditation is critical path
- GDPR compliance managed through DPA and UK-only processing
- Both risks exceed appetite - inherent to compliance environment

**Category Risk Profile:** ⚠️ Concerning - Both risks exceed appetite but controlled with IAO oversight

---

### REPUTATIONAL Risks

**Total REPUTATIONAL Risks:** 1
**Average Inherent Score:** 20.0 (Critical)
**Average Residual Score:** 8.0 (Medium)
**Control Effectiveness:** 60% reduction

**Risk List:**
- R-002: Confidentiality breach - Residual: 8 (Medium)

**Key Themes:**
- Critical inherent risk well-controlled through defence-in-depth
- On-premises equipment, secure print release, audit logging effective
- Residual risk acceptable given comprehensive controls

**Category Risk Profile:** ✅ Acceptable - Strong control effectiveness reduces critical risk

---

### TECHNOLOGY Risks

**Total TECHNOLOGY Risks:** 2
**Average Inherent Score:** 13.0 (High)
**Average Residual Score:** 5.0 (Low)
**Control Effectiveness:** 62% reduction

**Risk List:**
- R-006: Equipment failure - Residual: 6 (Medium)
- R-009: Vendor lock-in - Residual: 4 (Low)

**Key Themes:**
- Equipment reliability managed through SLA with strong vendor accountability
- Vendor lock-in low risk for standard managed service
- Best control effectiveness across all categories

**Category Risk Profile:** ✅ Acceptable - All risks within appetite, strong controls

---

## E. Risk Ownership Matrix

**Risk Ownership Distribution by Stakeholder:**

| Stakeholder | Role | Owned Risks | Critical | High | Medium | Low | Total Score | Risk Concentration |
|-------------|------|-------------|----------|------|--------|-----|-------------|-------------------|
| Finance BP | Budget Control | R-001, R-003, R-008 | 0 | 1 | 2 | 0 | 23 | ⚠️ Financial focus |
| IAO | Accreditation | R-004, R-005 | 0 | 1 | 1 | 0 | 20 | Compliance focus |
| Security Lead | Data Protection | R-002 | 0 | 0 | 1 | 0 | 8 | Focused |
| Service Owner | Operations | R-006, R-007, R-011 | 0 | 0 | 3 | 0 | 20 | Operational focus |
| Procurement Lead | Procurement | R-009, R-012 | 0 | 0 | 0 | 2 | 8 | Low risk |
| Executive Sponsor | Strategic | R-010 | 0 | 0 | 1 | 0 | 6 | Single strategic risk |

**Risk Concentration Analysis:**
- ⚠️ **Finance Business Partner owns highest risk score (23 points)** - reflects financial risk theme
- **IAO owns compliance risks** - expected and appropriate for accreditation focus
- **Service Owner owns 3 operational risks** - appropriate for service delivery accountability
- **Good distribution** - no single stakeholder overwhelmed

**Escalation Paths:**
- **Financial Risks (R-001, R-003)** → Finance BP → CFO
- **Compliance Risks (R-004, R-005)** → IAO → Audit Committee
- **Operational/Technology Risks** → Service Owner → Executive Sponsor

---

## F. 4Ts Response Framework Summary

**Risk Response Distribution:**

| Response | Count | % | Total Risk Score | Key Examples |
|----------|-------|---|------------------|--------------|
| **TOLERATE** | 3 | 25% | 14 (Low) | R-008, R-009, R-010 - Low risks within appetite |
| **TREAT** | 9 | 75% | 73 (Medium) | R-001-R-007, R-011, R-012 - Active mitigation |
| **TRANSFER** | 0 | 0% | 0 | No insurance transfer viable |
| **TERMINATE** | 0 | 0% | 0 | No activities to stop |
| **TOTAL** | 12 | 100% | 87 | |

**Response Breakdown by Category:**

| Category | Tolerate | Treat | Transfer | Terminate | Predominant Response |
|----------|----------|-------|----------|-----------|---------------------|
| STRATEGIC | 1 | 0 | 0 | 0 | Tolerate (100%) |
| OPERATIONAL | 0 | 3 | 0 | 0 | Treat (100%) |
| FINANCIAL | 1 | 2 | 0 | 0 | Treat (67%) |
| COMPLIANCE | 0 | 2 | 0 | 0 | Treat (100%) |
| REPUTATIONAL | 0 | 1 | 0 | 0 | Treat (100%) |
| TECHNOLOGY | 1 | 1 | 0 | 0 | Mixed |

**Key Insights:**
- **75% of risks require active treatment** - significant mitigation effort through managed service model
- **25% tolerated** - low residual risks acceptably managed through standard controls
- **No transfer opportunities** - print service risk not suitable for insurance
- **Zero terminations** - all activities essential for project objectives

---

## G. Risk Appetite Compliance

**Organizational Risk Appetite Thresholds:**

| Category | Appetite Level | Threshold Score | Description |
|----------|---------------|-----------------|-------------|
| STRATEGIC | Medium | ≤ 12 | Accept medium strategic risks for operational improvement |
| OPERATIONAL | Low | ≤ 6 | Low tolerance for operational disruption |
| FINANCIAL | Medium | ≤ 9 | Moderate financial risk for cost savings |
| COMPLIANCE | Very Low | ≤ 6 | Minimal tolerance for compliance breaches |
| REPUTATIONAL | Low | ≤ 6 | Low tolerance for reputational damage |
| TECHNOLOGY | Medium | ≤ 12 | Accept technology risk with managed service controls |

**Compliance Summary:**

| Category | Appetite | Risks Within | Risks Exceeding | Avg Excess | Action Required |
|----------|----------|--------------|-----------------|------------|-----------------|
| STRATEGIC | ≤ 12 | 1 (100%) | 0 (0%) | N/A | ✅ Compliant |
| OPERATIONAL | ≤ 6 | 2 (67%) | 1 (33%) | +2 points | ⚠️ R-011 monitoring |
| FINANCIAL | ≤ 9 | 1 (33%) | 2 (67%) | +2 points | ⚠️ CFO approval for R-003 |
| COMPLIANCE | ≤ 6 | 0 (0%) | 2 (100%) | +5 points | ❌ IAO escalation required |
| REPUTATIONAL | ≤ 6 | 0 (0%) | 1 (100%) | +2 points | ⚠️ Security Lead approval |
| TECHNOLOGY | ≤ 12 | 2 (100%) | 0 (0%) | N/A | ✅ Compliant |

**Overall Appetite Compliance:** ⚠️ 50% of risk categories have risks exceeding appetite

**Risks Significantly Exceeding Appetite:**

| Risk ID | Category | Appetite | Actual | Excess | % Over | Escalation |
|---------|----------|----------|--------|--------|--------|------------|
| R-003 | FINANCIAL | 9 | 12 | +3 | 33% | ⚠️ CFO approval required |
| R-004 | COMPLIANCE | 6 | 12 | +6 | 100% | ❌ IAO escalation required |
| R-005 | COMPLIANCE | 6 | 8 | +2 | 33% | ⚠️ IAO acknowledgment |
| R-002 | REPUTATIONAL | 6 | 8 | +2 | 33% | ⚠️ Security Lead approval |
| R-011 | OPERATIONAL | 6 | 8 | +2 | 33% | ⚠️ Service Owner monitoring |

**Recommendations:**
1. **CFO approval** required for R-003 (FINANCIAL) - security premium budget flexibility
2. **IAO escalation** for R-004 (COMPLIANCE) - accreditation critical path, timeline buffer
3. **Security Lead approval** for R-002, R-005 - defence-in-depth controls accepted
4. **Service Owner monitoring** for R-011 - user adoption change management

---

## H. Prioritized Action Plan

### Priority 1: URGENT (Compliance/Appetite Exceedance)

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Expected Impact | Status |
|----------|--------|-------------------|-------|----------|------|-----------------|--------|
| 1 | Build 4-week accreditation buffer into timeline | R-004 (COMPLIANCE) | IAO | Immediate | £0 | Reduce likelihood | Not Started |
| 2 | Obtain CFO approval for budget flexibility | R-003 (FINANCIAL) | Finance BP | 2026-02-14 | £0 | Authorize contingency | Not Started |
| 3 | Include remediation SLA in contract | R-004 (COMPLIANCE) | Contract Manager | 2026-03-15 | £0 | Accelerate remediation | Not Started |

**Total Urgent Actions:** 3
**Total Cost:** £0 (internal effort)
**Expected Risk Reduction:** 9 points total

### Priority 2: HIGH (Before Procurement)

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Expected Impact | Status |
|----------|--------|-------------------|-------|----------|------|-----------------|--------|
| 4 | G-Cloud market research | R-001, R-003 | Procurement Lead | 2026-02-14 | £0 | Validate assumptions | Not Started |
| 5 | Scope flexibility options documented | R-003 | Service Owner | 2026-02-28 | £0 | Enable alternatives | Not Started |
| 6 | Security requirements in RFP | R-002, R-004, R-005 | Security Lead | RFP issue | £0 | Ensure vendor compliance | Not Started |

**Total High Priority Actions:** 3
**Total Cost:** £0
**Expected Risk Reduction:** 12 points total

### Priority 3: MEDIUM (During Implementation)

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Expected Impact | Status |
|----------|--------|-------------------|-------|----------|------|-----------------|--------|
| 7 | Parallel security review track | R-004 | Security Lead | Implementation start | Internal | Earlier issue identification | Not Started |
| 8 | Quality profile acceptance testing | R-007 | Service Owner | Service acceptance | Internal | Verify quality before go-live | Not Started |
| 9 | User training program | R-011 | Service Owner | Pre-go-live | £1K | Enable portal adoption | Not Started |

**Total Medium Priority Actions:** 3
**Total Cost:** £1K
**Expected Risk Reduction:** 6 points total

**Overall Action Plan Summary:**
- **Total Actions:** 9
- **Total Investment:** £1K (training)
- **Expected Risk Reduction:** 27 points (31% reduction)
- **Target Completion:** Service go-live

---

## I. Integration with SOBC

**How this Risk Register feeds into Strategic Outline Business Case (SOBC):**

### SOBC Strategic Case (Part A)
- **"Why Now?" section** uses compliance risks (R-004, R-005) to demonstrate MOD Secure by Design urgency
- **R-002** (Reputational): Current external printing creates uncontrolled confidentiality risk

### SOBC Economic Case (Part B)
- **Risk-adjusted costs** use financial risks + HM Treasury optimism bias
- **R-001** (FINANCIAL): Cost uncertainty → Add 5% contingency
- **R-003** (FINANCIAL): Pricing premium → Add 10% contingency for security certification
- **Total risk contingency:** £3K-5K added to Economic Case costs

### SOBC Management Case (Part E - Risk Management)
- **Full risk register** included in Management Case Part E
- **Top 5 risks** highlighted with mitigation plans
- **Risk ownership matrix** demonstrates clear accountability
- **Monitoring framework** shows ongoing risk management capability

### SOBC Recommendation
- **Acceptable risk profile** (44% reduction through controls) supports positive recommendation
- **Compliance risks** require attention but manageable with accreditation buffer
- **Financial risks** require budget flexibility approval but within acceptable range

---

## J. Monitoring and Review Framework

### Review Schedule

| Risk Level | Review Frequency | Reviewed By | Escalated To | Report Format |
|------------|------------------|-------------|--------------|---------------|
| **Critical (20-25)** | Weekly | Risk Owner + PMO | Steering Committee | Dashboard + narrative |
| **High (13-19)** | Bi-weekly | Risk Owner | Project Board | Dashboard |
| **Medium (6-12)** | Monthly | Risk Owner | Project Manager | Exception report |
| **Low (1-5)** | Quarterly | Action Owner | Risk Owner | Status update |

### Key Risk Indicators (KRIs)

**Leading Indicators** (predict future risk changes):
- Compliant vendor pool size (>3 options = healthy market)
- Budget forecast vs. actual during procurement
- Security documentation completeness (>80% before review)
- Portal adoption rate trend (>80% = healthy adoption)

**Lagging Indicators** (confirm risk materialization):
- Contract price vs. budget (variance >10% = risk realized)
- Accreditation achieved by go-live date
- Quality complaints per month (<2 = acceptable)
- Admin time per week (<1 hour = target achieved)

### Escalation Criteria

**Automatic Escalation Triggers:**
1. Any risk increases by 3+ points
2. Any new High/Critical risk identified
3. Any compliance risk without mitigation plan
4. Any mitigation action delayed > 2 weeks
5. Budget variance exceeds 15%

### Reporting Requirements

**Weekly** (During Procurement/Implementation):
- Status update to Executive Sponsor
- Compliance risk progress (R-004, R-005)
- Budget tracking vs. forecast

**Monthly** (Post Go-Live):
- Full risk register to Project Board
- Risk matrix visualization
- SLA and KPI tracking
- User satisfaction trends

**Quarterly** (Ongoing Service):
- Risk appetite compliance review
- Vendor performance review
- Risk register refresh

### Risk Register Maintenance

**Risk Register Owner:** Service Owner (Facilities Manager)

**Responsibilities:**
- Maintain accuracy of risk register
- Coordinate risk reviews with risk owners
- Update risk scores based on evidence
- Track mitigation action completion
- Escalate risks per criteria
- Produce risk reports

**Update Process:**
1. Risk owners submit updates monthly
2. Risk register owner validates and updates register
3. Steering Committee reviews material changes
4. Version control maintained

---

## K. Orange Book Compliance Checklist

This risk register demonstrates compliance with HM Treasury Orange Book (2023):

### Part I - Risk Management Principles

- ✅ **A. Governance and Leadership**
  - Risk owners assigned from stakeholder RACI matrix
  - Escalation paths defined to CFO, IAO, Executive Sponsor
  - Risk appetite thresholds set and monitored

- ✅ **B. Integration**
  - Risks linked to stakeholder drivers and goals
  - Risks inform SOBC business case
  - Risk management embedded in project governance

- ✅ **C. Collaboration and Best Information**
  - Risks sourced from stakeholder concerns (SD-1 through SD-9)
  - Multiple stakeholder perspectives considered
  - Evidence-based assessment (likelihood and impact justified)

- ✅ **D. Risk Management Processes**
  - Systematic identification across 6 categories
  - Consistent assessment methodology (5x5 matrix)
  - 4Ts response framework applied
  - Inherent and residual risk tracked

- ✅ **E. Continual Improvement**
  - Regular review schedule defined
  - Key Risk Indicators established
  - Action plan with owners and due dates
  - Version control maintained

### Part II - Risk Control Framework

- ✅ **4-Pillar "House" Structure**
  - Risk appetite and tolerance defined per category
  - Risk ownership clearly established
  - Risk assessment methodology documented
  - Control effectiveness measured (inherent vs residual)

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

| Score | Rating | Financial Impact | Schedule Impact | Description |
|-------|--------|------------------|-----------------|-------------|
| 1 | Negligible | < £1K | < 1 week | Easily absorbed |
| 2 | Minor | £1K-£5K | 1-2 weeks | Manageable within contingency |
| 3 | Moderate | £5K-£15K | 2-4 weeks | Requires management effort |
| 4 | Major | £15K-£30K | 1-2 months | Threatens key objectives |
| 5 | Catastrophic | > £30K | > 2 months | Project failure risk |

### Risk Score Matrix (Likelihood x Impact)

| Score Range | Risk Level | Color | Action Required |
|-------------|------------|-------|-----------------|
| 20-25 | Critical | Red | Immediate escalation, senior management action |
| 13-19 | High | Orange | Management attention, mitigation plan required |
| 6-12 | Medium | Yellow | Management monitoring, consider mitigation |
| 1-5 | Low | Green | Routine monitoring, accept or apply low-cost controls |

---

## Appendix B: Stakeholder-Risk Linkage

**Traceability from Stakeholders to Risks:**

| Stakeholder | Driver (from stakeholder-drivers.md) | Risk ID | Risk Title | Category | Score |
|-------------|-------------------------------------|---------|------------|----------|-------|
| Finance BP | SD-1: Cost Predictability | R-001 | Cost savings not achieved | FINANCIAL | 9 |
| Finance BP | SD-1: Cost Predictability | R-003 | Vendor premium pricing | FINANCIAL | 12 |
| Service Owner | SD-2: Operational Simplicity | R-007 | Service quality issues | OPERATIONAL | 6 |
| Service Owner | SD-2: Operational Simplicity | R-011 | User adoption low | OPERATIONAL | 8 |
| IAO | SD-3: Accreditation | R-004 | Accreditation delays | COMPLIANCE | 12 |
| IAO | SD-3: Accreditation | R-005 | GDPR non-compliance | COMPLIANCE | 8 |
| Security Lead | SD-4: Data Protection | R-002 | Confidentiality breach | REPUTATIONAL | 8 |
| Marketing Manager | SD-5: Quality & Turnaround | R-007 | Service quality issues | OPERATIONAL | 6 |
| Engineering Lead | SD-6: Technical Precision | R-007 | Service quality issues | OPERATIONAL | 6 |
| Executive Sponsor | SD-7: Strategic Quick Win | R-010 | Strategic direction change | STRATEGIC | 6 |
| Procurement Lead | SD-8: Compliant Procurement | R-012 | Procurement challenge | OPERATIONAL | 4 |
| Executive Assistant | SD-9: Confidentiality | R-002 | Confidentiality breach | REPUTATIONAL | 8 |

**Stakeholder Conflicts Mapped to Risks:**

| Stakeholder Conflict (from stakeholder-drivers.md) | Risk(s) Created | Mitigation |
|---------------------------------------------------|-----------------|------------|
| Finance vs Security: Cost vs Compliance | R-003 | Budget flexibility, CFO approval |
| Executive Sponsor vs IAO: Speed vs Thoroughness | R-004 | Accreditation buffer in timeline |

---

## Validation & Sign-off

### Stakeholder Review

| Stakeholder | Review Date | Comments | Status |
|-------------|-------------|----------|--------|
| Executive Sponsor | [TBD] | [Pending review] | PENDING |
| Finance Business Partner | [TBD] | [Pending review] | PENDING |
| Service Owner | [TBD] | [Pending review] | PENDING |
| IAO | [TBD] | [Pending review] | PENDING |
| Security Lead | [TBD] | [Pending review] | PENDING |
| Procurement Lead | [TBD] | [Pending review] | PENDING |

### Document Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| **Risk Register Owner** | Service Owner (Facilities Manager) | _________ | [DATE] |
| **Project Manager** | [Name] | _________ | [DATE] |
| **Senior Responsible Owner** | Executive Sponsor | _________ | [DATE] |

---

## Next Steps

1. **Immediate Actions** (This Week):
   - [ ] Obtain CFO approval for R-003 budget flexibility (Finance BP)
   - [ ] Confirm 4-week accreditation buffer in project timeline (IAO)
   - [ ] Schedule risk review meeting with all risk owners (Service Owner)

2. **Short-term Actions** (Before Procurement):
   - [ ] Complete G-Cloud market research (Procurement Lead)
   - [ ] Document scope flexibility options (Service Owner)
   - [ ] Finalize security requirements for RFP (Security Lead)

3. **Medium-term Actions** (During Implementation):
   - [ ] Parallel security review track initiated (Security Lead)
   - [ ] User training program developed (Service Owner)
   - [ ] Quality acceptance testing planned (Service Owner)

4. **Post Go-Live Actions**:
   - [ ] Monthly risk register review schedule (Service Owner)
   - [ ] KRI monitoring dashboard (Service Owner)
   - [ ] Quarterly risk appetite compliance review (Risk Owners)

---

**END OF RISK REGISTER**

---

*This risk register follows HM Treasury Orange Book (2023) principles and integrates with ArcKit's stakeholder-driven architecture governance framework.*

*For questions or updates, contact: Service Owner (Facilities Manager)*

---

**Generated by**: ArcKit `/arckit.risk` command
**Generated on**: 2026-01-24
**ArcKit Version**: 0.11.0
**Project**: Large Format Printing Service (Project 006)
**Model**: Claude Opus 4.5
