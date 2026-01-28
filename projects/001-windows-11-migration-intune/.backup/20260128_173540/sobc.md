# Strategic Outline Business Case (SOBC)

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-001-SOBC-v3.0 |
| **Document Type** | Strategic Outline Business Case (SOBC) |
| **Project** | Windows 11 Migration (Project 001) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 3.0 |
| **Created Date** | 2025-10-21 |
| **Last Modified** | 2026-01-24 |
| **Review Cycle** | Quarterly |
| **Next Review Date** | 2026-04-24 |
| **Owner** | IT Operations Director |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | CIO, CFO, CISO, IT Operations Director, Steering Committee |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2025-10-21 | Enterprise Architect | Initial SOBC based on stakeholder analysis | PENDING | PENDING |
| 1.1 | 2025-10-22 | Enterprise Architect | Updated with critical success factors, improved benefits profiles, enhanced risk mitigation strategies | PENDING | PENDING |
| 2.0 | 2025-10-28 | Enterprise Architect | Confirmed alignment with Requirements v5.0 - organizational security governance approach | PENDING | PENDING |
| 3.0 | 2026-01-24 | ArcKit AI | Updated to latest template format with HM Treasury Green Book 5-case model | PENDING | PENDING |

## Document Purpose

This Strategic Outline Business Case (SOBC) provides the first stage justification for investing in the Windows 10 to Windows 11 Migration Programme using Microsoft InTune. It follows HM Treasury Green Book 5-case model to secure executive approval and funding to proceed with detailed requirements and design.

---

## Executive Summary

**Purpose**: Secure approval and funding to migrate from Windows 10 to Windows 11 with cloud-native InTune management before Windows 10 End of Life (October 2025).

**Problem Statement**: The organization faces critical security and compliance risks with ~6,000 Windows 10 devices approaching End of Life. Without migration, cyber insurance will be lost, compliance audits will fail, and breach exposure will increase significantly. Legacy Configuration Manager infrastructure costs £2M+ annually while limiting remote workforce capabilities.

**Proposed Solution**: Migrate 95% of Windows 10 devices to Windows 11 by September 2025 (6-week buffer before EOL) while transitioning from on-premises Configuration Manager to cloud-native Microsoft InTune. Deploy Copilot+ PCs for 30% of users to enable AI productivity features.

**Strategic Fit**: Aligns with organizational cloud-first strategy, Zero Trust security requirements, and digital transformation objectives. Satisfies CISO compliance mandate (SD-1), CFO cost reduction goals (SD-2), and CIO modernization strategy (SD-5).

**Investment Required**: £4.2M over 3 years
- Capital: £2.8M (hardware refresh, implementation services)
- Operational (3 years): £1.4M (InTune licenses, training, support)

**Expected Benefits**: £7.9M over 3 years
- Infrastructure cost reduction: £4.5M (ConfigMgr decommissioning)
- Productivity gains: £1.0M (automation, reduced manual work)
- Risk reduction: £1.5M (compliance maintained, insurance renewed)
- Strategic value: £0.9M (cloud transformation, talent retention, AI enablement)

**Return on Investment**:
- NPV: £3.2M (discounted at 3.5%)
- Payback Period: 16 months
- ROI: 88% over 3 years

**Recommended Option**: Option 2 - Balanced Phased Approach (18-month migration)

**Key Risks**:
1. Timeline slips past Windows 10 EOL (MEDIUM/CRITICAL) - Mitigated by 6-week buffer, early hardware procurement
2. Support ticket tsunami overwhelms helpdesk (MEDIUM/HIGH) - Mitigated by comprehensive training, phased rollout
3. Budget overruns eliminate ROI (MEDIUM/HIGH) - Mitigated by 10% contingency, fixed-price contracts

**Go/No-Go Recommendation**: **PROCEED**

**Rationale**: Failure to proceed results in unacceptable security risk, compliance violations, cyber insurance loss, and £2M+ annual infrastructure overspend. Recommended option delivers 85% of stakeholder goals with positive NPV and acceptable payback period.

**Next Steps if Approved**:
1. Secure funding approval: Within 2 weeks
2. Define detailed requirements: Complete (already done)
3. Launch procurement: Month 2
4. Vendor contract award: Month 4
5. Migration pilot: Month 6

---

# PART A: STRATEGIC CASE

## A1. Strategic Context

### A1.1 Problem Statement

**Current Situation**: 6,000 Windows 10 devices managed via on-premises Configuration Manager approaching End of Life (October 2025). Legacy infrastructure costs £2M+ annually with no remote management capability.

**Specific Pain Points** (from `stakeholder-drivers.md`):

| Stakeholder | Driver ID | Pain Point | Impact | Intensity |
|-------------|-----------|------------|--------|-----------|
| CISO | SD-1 | Windows 10 EOL security risk | Cyber insurance loss, audit failures | CRITICAL |
| CFO | SD-2 | High infrastructure costs (£2M+/year) | Budget pressure, margin erosion | HIGH |
| IT Operations | SD-3 | Fear of failed migration | Career risk, executive escalations | CRITICAL |
| End Users | SD-4 | Potential work disruption | Productivity loss, frustration | HIGH |
| CIO | SD-5 | Legacy tech blocking cloud transformation | Talent attrition, competitive disadvantage | HIGH |

**Consequences of Inaction**:
- **Security**: Cyber insurance non-renewal, £500K-£2M breach penalties, reputational damage
- **Compliance**: ISO 27001 recertification at risk, regulatory audit failures
- **Financial**: £2M+ annual infrastructure overspend continues indefinitely
- **Strategic**: Cannot support remote workforce, lose competitive advantage, talent attrition

### A1.2 Strategic Drivers

**Link to Stakeholder Analysis**: `projects/001-windows-11-migration-intune/stakeholder-drivers.md`

**Primary Drivers** (from Stakeholder Analysis):

| Driver ID | Stakeholder | Driver Type | Driver Description | Strategic Imperative |
|-----------|-------------|-------------|-------------------|---------------------|
| SD-1 | CISO | COMPLIANCE | Eliminate Windows 10 EOL security risk | Risk mitigation |
| SD-2 | CFO | FINANCIAL | Reduce IT infrastructure costs 80% | Cost efficiency |
| SD-3 | IT Operations | OPERATIONAL | Execute risk-free migration | Execution excellence |
| SD-5 | CIO | STRATEGIC | Deliver strategic modernization | Cloud transformation |

**Strategic Alignment**:
- **Architecture Principles**: Cloud-First Endpoint Management (Principle 1), Zero Trust Security (Principle 2)
- **Cloud-First Strategy**: InTune eliminates on-premises infrastructure
- **Zero Trust Security**: Windows 11 + Conditional Access enforces security-by-default

### A1.3 Stakeholder Goals

**Goals Addressed** (from Stakeholder Analysis):

| Goal ID | Stakeholder | SMART Goal | Current State | Target State | Timeline |
|---------|-------------|------------|---------------|--------------|----------|
| G-1 | CISO/IT Ops | 95% migration before Windows 10 EOL | 0% | 95% | Sep 2025 |
| G-2 | CFO | £2M+ annual cost savings (ConfigMgr decommission) | £2M/year | £0.5M/year | Month 24 |
| G-3 | CISO | 100% device security compliance | 70% | 100% | Month 12 |
| G-4 | Helpdesk/Users | <2% support ticket rate | 1.7% baseline | <2% | Ongoing |
| G-6 | Users/CIO | >80% user satisfaction (NPS) | 65% | >80% | Post-migration |
| G-10 | CIO | 30% Copilot+ PC adoption Year 1 | 0% | 30% | Month 12 |

### A1.4 Scope

**In Scope**:
- Windows 10→11 OS migration (~6,000 devices)
- Configuration Manager→InTune transition
- Azure AD join and hybrid identity
- OneDrive Known Folder Move (KFM)
- Application compatibility testing (top 100 apps)
- Defender for Endpoint deployment
- Conditional Access policies
- Hardware assessment and replacement (30% of devices)
- Copilot+ PC pilot (30% Year 1)
- Helpdesk training (18 hours per staff)

**Out of Scope** (for this phase):
- Server migration
- Virtual Desktop Infrastructure (VDI)
- Azure Virtual Desktop (AVD)
- macOS/Linux devices
- iOS/Android MDM (separate project)
- Application modernization
- Network infrastructure upgrades

**Interfaces**:
- **Microsoft 365 Tenant**: Azure AD, Exchange Online, SharePoint/OneDrive
- **Security Stack**: Defender for Endpoint, Conditional Access, Azure AD Identity Protection
- **ServiceNow**: Incident management integration

**Assumptions**:
1. Microsoft 365 E3/E5 licenses available (includes InTune) - Risk if wrong: £200K license cost
2. Network bandwidth adequate for cloud management - Risk if wrong: Deployment delays
3. Hardware supply chain stable - Risk if wrong: 4-6 month procurement delays

**Dependencies**:
- **Internal**: Azure AD tenant configured, InTune tenant provisioned
- **External**: Hardware vendor capacity, Microsoft cloud uptime (99.99%)
- **Technical**: Existing ConfigMgr infrastructure operational during co-management

### A1.5 Why Now?

**Urgency Factors**:
- **Compliance Deadline**: Windows 10 EOL October 14, 2025 = 9 months remaining
- **Cyber Insurance**: Renewal Q2 2025 requires migration plan with clear milestones
- **Hardware Lead Times**: 4-6 months for procurement requires immediate action

**Opportunity Cost of Delay**:
- £166K/month continued ConfigMgr infrastructure overspend
- Escalating security risk as vulnerabilities accumulate pre-EOL
- Cyber insurance cancellation risk if no migration plan

**Window of Opportunity**:
- Budget available in current financial year
- CIO mandate for cloud transformation provides executive sponsorship
- InTune maturity proven across industry
- Copilot+ PC hardware now available

---

# PART B: ECONOMIC CASE

## B1. Critical Success Factors

Before analyzing options, these critical success factors define what "success" looks like:

1. **Security Compliance Achieved Before EOL**
   - **Measure**: % devices migrated to Windows 11 by Windows 10 EOL (October 14, 2025)
   - **Threshold**: Minimum 95% migrated by September 1, 2025 (6-week buffer)
   - **Why Critical**: CISO Driver SD-1 - Cyber insurance depends on supported OS

2. **User Productivity Maintained**
   - **Measure**: Support ticket rate <2% of deployed users per week, User satisfaction NPS >80%
   - **Threshold**: Maximum 2% ticket rate, minimum 80% NPS
   - **Why Critical**: End User Driver SD-4 - Poor experience cascades into productivity loss

3. **Cost Reduction Targets Met**
   - **Measure**: Annual OpEx savings from ConfigMgr decommissioning
   - **Threshold**: Minimum £1.5M annual savings by Month 24
   - **Why Critical**: CFO Driver SD-2 - Financial case depends on cost reduction

4. **Zero Critical Security Incidents**
   - **Measure**: P1 security incidents during and after migration
   - **Threshold**: Zero P1 incidents, 100% device compliance within 12 months
   - **Why Critical**: CISO Driver SD-1 - Security baseline must improve

5. **Cloud Transformation Demonstrated**
   - **Measure**: % devices managed by InTune-only, ConfigMgr decommissioned
   - **Threshold**: 100% InTune-managed by Month 18, ConfigMgr retired
   - **Why Critical**: CIO Driver SD-5 - Strategic modernization proof point

## B2. Options Analysis

### Option 0: Do Nothing (Baseline)

**Description**: Continue Windows 10, purchase Extended Security Updates (ESU) for 3 years at £50/device/year.

**Costs** (3-year):
- Capital: £0
- Operational: £3.0M (ESU: £0.9M + ConfigMgr ongoing: £2.1M)
- Total: £3.0M

**Benefits**: £0 (no improvement)

**Pros**:
- ✅ No upfront investment
- ✅ No implementation risk

**Cons**:
- ❌ Stakeholder goals not met (0%)
- ❌ Cyber insurance at risk (exclusion for unsupported OS)
- ❌ Compliance violations (ISO 27001)
- ❌ No cloud transformation

**Stakeholder Goals Met**: 0%

**Recommendation**: **REJECT** - Unacceptable security and compliance risk

---

### Option 1: Minimal (ConfigMgr In-Place Upgrade)

**Description**: Use Configuration Manager to in-place upgrade Windows 10→11, defer InTune migration.

**Scope**:
- Windows 10→11 upgrade via ConfigMgr task sequence
- Hardware replacement (30%)
- Minimal InTune integration

**Costs** (3-year) - ROM (±40%):
- Capital: £1.8M (Hardware replacement)
- Operational: £0.8M (Deployment: £0.3M, ConfigMgr ongoing: £0.5M)
- Total 3-year TCO: £2.6M

**Benefits** (3-year): £2.2M
- Partial cost savings (no ConfigMgr decommission)
- Basic security compliance

**Net Benefit**: -£0.4M (negative)

**Pros**:
- ✅ Lower upfront cost
- ✅ Familiar technology (ConfigMgr)
- ✅ Faster initial deployment

**Cons**:
- ❌ ConfigMgr infrastructure costs continue
- ❌ No cloud transformation
- ❌ No remote management capability
- ❌ Negative ROI

**Stakeholder Impact**:
- CFO Goal G-2: ❌ Not met (minimal cost savings)
- CIO Goal G-10: ❌ Not met (no cloud transformation)
- CISO Goal G-3: ⚠️ Partially met (OS upgraded but no modern security)

**Stakeholder Goals Met**: 40%

**Recommendation**: **REJECT** - Doesn't achieve strategic objectives

---

### Option 2: Balanced Phased Approach (RECOMMENDED)

**Description**: 18-month phased migration to Windows 11 + InTune with ConfigMgr co-management, decommission ConfigMgr Month 18. Copilot+ PCs for 30% of users.

**Scope**:
- Full Windows 11 migration (~6,000 devices)
- InTune cloud-native management
- Azure AD join with Conditional Access
- Copilot+ PCs (30% Year 1)
- ConfigMgr decommissioned Month 18

**Costs** (3-year) - ROM (±30%):
- Capital: £2.8M
  - Hardware refresh (30%): £1.8M
  - Copilot+ PC premium: £0.3M
  - Implementation services: £0.5M
  - Training: £0.2M
- Operational: £1.4M over 3 years
  - InTune licenses: £0.6M
  - Managed services: £0.5M
  - ConfigMgr co-mgmt (18mo): £0.3M
- Total 3-year TCO: £4.2M

**Benefits** (3-year):

| Benefit ID | Benefit Description | Stakeholder Goal | Type | Year 1 | Year 2 | Year 3 | 3-Year Total |
|------------|---------------------|------------------|------|--------|--------|--------|--------------|
| B-001 | ConfigMgr decommissioning | CFO G-2 | FINANCIAL | £0.5M | £2.0M | £2.0M | £4.5M |
| B-002 | Productivity gain (automation) | IT Ops G-4 | OPERATIONAL | £0.2M | £0.4M | £0.4M | £1.0M |
| B-003 | Risk reduction (compliance) | CISO G-3 | RISK | £0.3M | £0.6M | £0.6M | £1.5M |
| B-004 | Strategic value (transformation) | CIO G-10 | STRATEGIC | £0.1M | £0.4M | £0.4M | £0.9M |
| **Total Benefits** | | | | **£1.1M** | **£3.4M** | **£3.4M** | **£7.9M** |

**Net Present Value** (3.5% discount rate):
- Total Benefits PV: £7.4M
- Total Costs PV: £4.2M
- **NPV: £3.2M** (positive = good investment)

**Return on Investment**:
- **ROI: 88%** over 3 years
- **Payback Period: 16 months**

**Pros**:
- ✅ 85% of stakeholder goals met
- ✅ Positive NPV £3.2M
- ✅ Acceptable payback period (16 months)
- ✅ Scalable cloud-native platform
- ✅ Modern technology stack (attracts talent)
- ✅ AI-ready with Copilot+ PCs

**Cons**:
- ⚠️ Higher upfront investment than Option 1
- ⚠️ 18-month implementation timeline
- ⚠️ Change management complexity
- ⚠️ New skills required (InTune vs ConfigMgr)

**Stakeholder Impact**:
- CFO Goal G-2: ✅ Met (£4.5M savings over 3 years)
- CIO Goal G-10: ✅ Met (30% Copilot+ PCs, cloud transformation)
- CISO Goal G-3: ✅ Met (100% device compliance, Zero Trust)
- IT Ops Goal G-4: ✅ Met (phased rollout, <2% tickets)
- User Goal G-6: ✅ Met (>80% NPS, <2hr downtime)

**Stakeholder Goals Met**: 85%

**Risks**:
- Implementation overrun → Mitig: Phased approach, 6-week buffer
- User adoption → Mitig: Change management, training, responsive support
- Skills gap → Mitig: Vendor support, upskilling programme

---

### Option 3: Comprehensive (Aggressive 9-Month + Full Copilot+)

**Description**: Accelerated 9-month migration, 100% Copilot+ PCs, immediate ConfigMgr decommission.

**Scope**:
- Full Windows 11 migration
- 100% Copilot+ PCs (all new devices)
- Immediate ConfigMgr decommission (Month 9)
- Premium managed services

**Costs** (3-year) - ROM (±40%):
- Capital: £4.5M (higher hardware, premium implementation)
- Operational: £2.0M over 3 years
- Total 3-year TCO: £6.5M

**Benefits** (3-year): £7.2M (marginally higher than Option 2)

**Net Benefit**: £0.7M (lower than Option 2 due to higher costs)

**Pros**:
- ✅ 100% of stakeholder goals met
- ✅ Fastest timeline (9 months)
- ✅ Maximum AI enablement

**Cons**:
- ❌ High cost (£2.3M more than Option 2)
- ❌ High risk (rushed timeline)
- ❌ ARM64 compatibility unknowns for 100% Copilot+
- ❌ Lower net benefit than Option 2

**Stakeholder Goals Met**: 100%

**Recommendation**: **REJECT** - Diminishing returns, unacceptable execution risk

---

## B3. Recommended Option

**Recommendation**: **Option 2: Balanced Phased Approach**

**Rationale**:
1. **Best Value**: Highest NPV at £3.2M (vs -£0.4M for Option 1, £0.7M for Option 3)
2. **Strong ROI**: 88% return over 3 years with 16-month payback
3. **Stakeholder Satisfaction**: 85% of goals met (vs 40% Option 1, 100% Option 3 with excessive risk)
4. **Acceptable Risk**: Phased rollout with pilot testing mitigates execution risk
5. **Affordability**: Within budget constraints
6. **Strategic Alignment**: Enables cloud transformation (CIO SD-5), cost reduction (CFO SD-2), security compliance (CISO SD-1)

**Sensitivity Analysis**:
- **Costs +20%** (£5.0M): NPV still positive at £2.1M, ROI 58% - **ACCEPTABLE**
- **Benefits -20%** (£6.3M): NPV £1.4M, ROI 50% - **ACCEPTABLE**
- **Timeline extends 6 months**: Payback 22 months - **MARGINAL** (6-week buffer critical)
- **Worst case** (Costs +20%, Benefits -20%): NPV £0.3M, ROI 26% - **MARGINAL but positive**

**Optimism Bias Adjustment** (HM Treasury standard):
- Standard uplift for IT projects: +40% on costs
- Adjusted Total Cost: £4.2M → £5.9M (with uplift)
- NPV with optimism bias: Still positive at £1.4M

**Break-even Analysis**: Project breaks even (NPV = 0) if costs increase 110% OR benefits reduce 57% - significant safety margin

---

# PART C: COMMERCIAL CASE

## C1. Procurement Strategy

### C1.1 Market Assessment

**Market Maturity**: Mature market with multiple capable suppliers. Digital Marketplace lists 120+ suppliers offering endpoint management and migration services.

**Supplier Landscape**:
- **Tier 1** (Large integrators): Avanade, Accenture, Capgemini - Full service capability
- **Tier 2** (Microsoft specialists): Insight, SoftwareONE - Deep Microsoft expertise
- **Tier 3** (SMEs): Regional partners - Agility, competitive pricing

**Digital Marketplace Assessment**:
- **G-Cloud 14**: 120+ suppliers offering endpoint management
- **DOS6**: 50+ suppliers for migration specialists
- **SME participation**: 45% of suppliers are SMEs

### C1.2 Sourcing Route

**Recommended Route**: **Digital Marketplace - DOS6 (Digital Outcomes and Specialists)** for outcome-based procurement + G-Cloud for managed services.

**Rationale**:
- Compliant with procurement regulations
- Competitive market ensures value for money
- SME access maintained
- Outcome-based contracting aligns incentives

**Alternative Routes Considered**:

| Route | Pros | Cons | Recommendation |
|-------|------|------|----------------|
| Direct award | Fast | No competition, value concerns | Reject |
| Restricted tender | Quality control | Limits SME access | Reject |
| Open competition (DOS) | Best value, transparency | Time required | **ACCEPT** |

### C1.3 Contract Approach

**Proposed Contract Type**:
- **Build Phase**: Fixed-price with milestones (Months 1-18)
- **Run Phase**: Managed service agreement (Months 19+)

**Contract Duration**:
- Initial term: 2 years
- Extension options: 1+1 years
- Total potential: 4 years

**Payment Structure**:
- Upfront: 10% on contract award
- Milestones: 70% across 6 milestones
- Retention: 20% held for 6 months post-live

**Key Contract Terms**:
- Service Level Agreements: 99.5% InTune availability, <4hr P1 response
- Penalties: £5K per hour downtime beyond SLA
- Intellectual Property: Client owns all bespoke configuration
- Termination: 3 months notice, exit management included

### C1.4 Social Value

**Social Value Weighting**: 10% of evaluation criteria

**Social Value Themes**:
1. **Economic**: Create apprenticeships, local SME subcontracting
2. **Social**: Diversity & inclusion commitments, accessibility
3. **Environmental**: Carbon-neutral delivery, sustainable practices

**Evaluation Approach**:
- Technical: 60%
- Cost: 30%
- Social Value: 10%

---

# PART D: FINANCIAL CASE

## D1. Budget Requirement

**Total Investment Required**: £4.2M over 3 years

### D1.1 Capital Expenditure (CapEx)

| Item | Year 1 | Year 2 | Year 3 | Total |
|------|--------|--------|--------|-------|
| Hardware refresh (30%) | £1.5M | £0.3M | £0 | £1.8M |
| Copilot+ PC premium | £0.3M | £0 | £0 | £0.3M |
| Implementation services | £0.4M | £0.1M | £0 | £0.5M |
| Contingency (10%) | £0.2M | £0 | £0 | £0.2M |
| **Total CapEx** | **£2.4M** | **£0.4M** | **£0** | **£2.8M** |

### D1.2 Operational Expenditure (OpEx)

| Item | Year 1 | Year 2 | Year 3 | 3-Year Total |
|------|--------|--------|--------|--------------|
| InTune licenses | £0.2M | £0.2M | £0.2M | £0.6M |
| ConfigMgr co-mgmt (18mo) | £0.3M | £0 | £0 | £0.3M |
| Training & change mgmt | £0.3M | £0 | £0 | £0.3M |
| Managed services | £0.1M | £0.1M | £0 | £0.2M |
| **Total OpEx** | **£0.9M** | **£0.3M** | **£0.2M** | **£1.4M** |

### D1.3 Total Cost of Ownership (TCO)

| | Year 1 | Year 2 | Year 3 | 3-Year Total |
|---|--------|--------|--------|--------------|
| CapEx | £2.4M | £0.4M | £0 | £2.8M |
| OpEx | £0.9M | £0.3M | £0.2M | £1.4M |
| **Total TCO** | **£3.3M** | **£0.7M** | **£0.2M** | **£4.2M** |

## D2. Funding Source

**Budget Allocation**:
- IT Capital Budget: £3.0M
- Digital Transformation Fund: £1.2M
- **Total Available**: £4.2M (fully funded)

**Approval Path**:
1. **Finance Committee**: Projects >£2M
2. **Board**: Notification (within delegated authority)

**Funding Gaps**: None - project fully funded within existing budget allocation.

## D3. Affordability

**Organizational Budget Context**:
- Total IT budget: £50M/year
- This project: 8% of IT budget
- Assessment: **AFFORDABLE**

**Cash Flow Impact**:
- Largest payment: £1.5M hardware (Month 2-4)
- **Cashflow Risk**: LOW - phased procurement
- **Mitigation**: Payment staging with vendor

**Ongoing Affordability**:
- Year 3+ OpEx: £0.2M/year
- Funded by: Savings from ConfigMgr decommissioning (£1.5M/year)

## D4. Financial Appraisal

### D4.1 Economic Appraisal (HM Treasury Green Book)

**Discount Rate**: 3.5% (HMT standard social time preference rate)

**Net Present Value Calculation**:

| Year | Costs | Benefits | Net Cashflow | Discount Factor | Present Value |
|------|-------|----------|--------------|-----------------|---------------|
| 0 | £2.4M | £0 | -£2.4M | 1.000 | -£2.4M |
| 1 | £0.9M | £1.1M | +£0.2M | 0.966 | +£0.2M |
| 2 | £0.7M | £3.4M | +£2.7M | 0.934 | +£2.5M |
| 3 | £0.2M | £3.4M | +£3.2M | 0.902 | +£2.9M |
| **Total** | **£4.2M** | **£7.9M** | **+£3.7M** | | **£3.2M NPV** |

**NPV Result**: £3.2M (positive = good investment)

### D4.2 Return on Investment

**ROI Calculation**:
```
ROI = (Total Benefits - Total Costs) / Total Costs × 100%
ROI = (£7.9M - £4.2M) / £4.2M × 100% = 88%
```

**Payback Period**:
- Cumulative: Year 0: -£2.4M, Year 1: -£2.2M, Year 2: +£0.5M
- **Payback: 16 months** (between Year 1 and Year 2)

### D4.3 Value for Money Assessment

**Qualitative Assessment**:
- **Economy**: Competitive procurement ensures lowest cost
- **Efficiency**: Automation reduces headcount from 4 to 1.5 FTEs
- **Effectiveness**: Meets 85% of stakeholder goals

**Overall VfM Rating**: **HIGH**

**Justification**: Positive NPV, strong ROI, strategic benefits achieved, affordable within existing budget

---

# PART E: MANAGEMENT CASE

## E1. Governance

### E1.1 Roles & Responsibilities (RACI)

Derived from stakeholder analysis RACI matrix in `stakeholder-drivers.md`:

| Decision/Activity | Responsible | Accountable | Consulted | Informed |
|-------------------|-------------|-------------|-----------|----------|
| Overall programme success | Project Manager | SRO (IT Ops Director) | Steering Committee | All stakeholders |
| Budget approval | CFO | CIO | Finance Committee | Board |
| Migration timeline | IT Ops Director | CIO | CISO, Enterprise Architect | CFO, Users |
| Architecture exceptions | Enterprise Architect | CIO | CISO, IT Ops | All |
| Security policy | Security Architect | CISO | IT Ops, Compliance | EA |
| Go/no-go per wave | IT Ops Director | CIO | CISO, Helpdesk | All |
| User communication | Change Manager | IT Ops Director | HR, Dept Champions | All users |

**Senior Responsible Owner (SRO)**: IT Operations Director
- Accountable for delivery
- Chairs project board
- Reports to CIO

**Steering Committee**:
- CIO (Chair)
- CFO
- CISO
- IT Operations Director
- Enterprise Architect

**Meeting Frequency**: Monthly (weekly during critical phases)

### E1.2 Approval Gates

| Gate | Criteria | Approving Body | Target Date |
|------|----------|----------------|-------------|
| **Gate 0: SOBC Approval** | Business case approved, funding secured | Steering Committee | Month 1 |
| **Gate 1: Vendor Award** | Contract signed, team mobilized | SRO + CFO | Month 4 |
| **Gate 2: Pilot Complete** | 100-device pilot successful, <5% issues | SRO | Month 6 |
| **Gate 3: Production Rollout** | 50% devices migrated successfully | SRO | Month 12 |
| **Gate 4: ConfigMgr Decommission** | 95% migration complete, ConfigMgr retired | Steering Committee | Month 18 |
| **Gate 5: Benefits Realization** | Benefits measured vs plan | Steering Committee | Month 24 |

## E2. Delivery Approach

**Methodology**: Agile with stage gates

**Phases**:
1. **Discovery** (Months 1-2): Requirements, design, procurement
2. **Pilot** (Months 3-6): 100-device pilot with IT staff
3. **Production Waves** (Months 7-18): 500-1000 devices per wave
4. **Decommission** (Month 18): ConfigMgr retired
5. **Hypercare** (Months 19-24): Stabilize, optimize, benefits tracking

**Delivery Model**:
- **In-house**: Project management, business analysis, change management
- **Vendor**: Technical design, implementation, deployment support
- **Hybrid**: Joint team, co-located where possible

## E3. Key Milestones

| Milestone | Date | Dependencies | Owner |
|-----------|------|--------------|-------|
| SOBC Approval | Month 1 | Stakeholder analysis | SRO |
| Funding Secured | Month 1 | SOBC approval | CFO |
| Procurement Launch (SOW) | Month 2 | Funding secured | Commercial |
| Vendor Contract Award | Month 4 | Evaluation complete | SRO |
| Pilot Migration (100 devices) | Month 6 | Vendor onboarded | PM |
| Production Wave 1 (500 devices) | Month 8 | Pilot successful | PM |
| 50% Devices Migrated | Month 12 | Waves on track | PM |
| **95% Devices Migrated** | **Month 18** | All waves complete | **SRO** |
| ConfigMgr Decommissioned | Month 18 | Migration complete | IT Ops |
| Benefits Realization Review | Month 24 | 6 months post-live | SRO |

**Critical Path**:
- Hardware procurement (Months 2-4)
- Pilot success (Month 6)
- Wave execution (Months 7-18)
- Application compatibility resolution (ongoing)

## E4. Resource Requirements

### E4.1 Team Structure

**Core Project Team** (internal):

| Role | FTE | Duration | Total Effort |
|------|-----|----------|--------------|
| Senior Responsible Owner | 0.2 | 18 months | 3.6 months |
| Project Manager | 1.0 | 18 months | 18 months |
| Solution Architect | 0.5 | 12 months | 6 months |
| Change Manager | 0.5 | 18 months | 9 months |
| Test Manager | 0.5 | 12 months | 6 months |

**Vendor Team** (expected):
- Implementation team: 4-6 people for 18 months
- Support team: 2-3 people ongoing

### E4.2 Skills Required

**Critical Skills**:
- InTune/Endpoint Manager expertise: **Gap** - vendor provides
- Azure AD/Conditional Access: **Gap** - upskill 2 staff
- Windows 11 deployment: **Available** - existing team
- Change management: **Available** - existing capability

**Training Plan**:
- InTune certification: 5 staff, £5K, Months 1-3
- Helpdesk training: 30 staff, 18 hours each, Month 5

## E5. Change Management

### E5.1 Stakeholder Engagement

**Engagement Strategy** (from stakeholder analysis):

| Stakeholder | Power-Interest | Engagement Approach | Frequency | Owner |
|-------------|----------------|---------------------|-----------|-------|
| CFO | High-High | Manage Closely - Steering + Monthly ROI dashboard | Monthly | SRO |
| CISO | High-High | Manage Closely - Weekly security status | Weekly | Security Architect |
| End Users (6000) | Low-High | Keep Informed - Newsletter + Training | Fortnightly | Change Manager |
| Helpdesk (30) | Medium-High | Keep Informed - Training + Tools | Weekly | Helpdesk Manager |

### E5.2 Communications Plan

| Stakeholder Group | Message | Channel | Frequency | Owner |
|-------------------|---------|---------|-----------|-------|
| Steering Committee | Progress, risks, decisions | Meeting + Papers | Monthly | SRO |
| Senior Leadership | Strategic progress | Email update | Monthly | CIO |
| End Users | What's changing, when, training | Newsletter, Intranet | Fortnightly | Change Manager |
| Helpdesk | Technical updates, tools | Team meetings | Weekly | Helpdesk Manager |

### E5.3 Resistance Management

**Anticipated Resistance** (from stakeholder conflict analysis):

| Source | Reason | Impact | Mitigation |
|--------|--------|--------|------------|
| IT Operations | Fear of failed migration | Medium | Phased rollout, 10-day rollback, vendor support |
| End Users | Change fatigue, UI changes | Medium | Clear communication, simple training, responsive support |
| CFO | Timeline pressure vs risk | Medium | Show productivity loss risk from rushing |

**Change Champions**:
- 20 department champions (1 per department)
- Early involvement, training, recognition

### E5.4 Training Plan

| Audience | Training Type | Duration | Delivery | Timing |
|----------|---------------|----------|----------|--------|
| Helpdesk (30) | InTune troubleshooting | 18 hours | Classroom + Hands-on | Month 5 (before pilot) |
| Power users (100) | Windows 11 features | 2 hours | Online + Video | T-14 days |
| End users (6000) | Self-service guide | 30 mins | Video + Quick guide | T-7 days |

## E6. Benefits Realization

### E6.1 Benefits Profiles

**Benefit B-001**: Infrastructure Cost Reduction (CFO Goal G-2)

- **Description**: Reduce IT infrastructure costs 80% by decommissioning ConfigMgr
- **Owner**: CFO
- **Baseline**: £2.0M/year (ConfigMgr servers, SQL, licenses, labor)
- **Target**: £0.5M/year (InTune-only)
- **Measurement**: Monthly finance cost tracking
- **Timeline**:
  - Month 6: 10% savings (co-management)
  - Month 12: 50% savings (partial decommission)
  - Month 18: 80% savings (full decommission)
- **Status**: Not yet realized (pre-project)

**Benefit B-002**: Productivity Gain (Operations Goal G-4)

- **Description**: Reduce endpoint management labor through Autopilot automation
- **Owner**: IT Operations Director
- **Baseline**: 4 FTEs for endpoint management
- **Target**: 1.5 FTEs (62% reduction)
- **Measurement**: Weekly time-tracking
- **Timeline**:
  - Month 6: 1 FTE redeployed
  - Month 12: 2 FTEs redeployed
  - Month 18: 2.5 FTEs redeployed
- **Status**: Not yet realized (pre-project)

**Benefit B-003**: Risk Reduction (CISO Goal G-3)

- **Description**: Avoid compliance fines, maintain cyber insurance
- **Owner**: CISO
- **Baseline**: High exposure (unsupported OS)
- **Target**: Zero compliance violations, insurance renewed
- **Measurement**: Quarterly compliance audit, insurance renewal
- **Timeline**:
  - Month 6: 50% risk reduction (pilot validated)
  - Month 12: 90% risk reduction (95% devices compliant)
  - Month 18: 100% risk reduction (full compliance)
- **Status**: Not yet realized (pre-project)

**Benefit B-004**: Strategic Value (CIO Goal G-10)

- **Description**: Enable AI productivity, cloud transformation
- **Owner**: CIO
- **Baseline**: 0% Copilot+ PCs, legacy infrastructure
- **Target**: 30% Copilot+ PCs, cloud-native management
- **Measurement**: Procurement tracking, employee satisfaction
- **Timeline**:
  - Month 6: Copilot+ PC pilot (100 devices)
  - Month 12: 30% Copilot+ PC adoption
  - Month 18: Cloud transformation complete
- **Status**: Not yet realized (pre-project)

### E6.2 Benefits Measurement

**Monitoring Approach**:
- Monthly benefits tracker dashboard (PowerBI)
- Quarterly benefits realization meetings with Steering Committee
- 6-month and 12-month formal reviews

**Responsibility**:
- **SRO**: Overall benefits accountability
- **CFO**: Financial benefits (B-001)
- **IT Ops**: Efficiency benefits (B-002)
- **CISO**: Risk benefits (B-003)
- **CIO**: Strategic benefits (B-004)

**Reporting**:
- Benefits RAG status in monthly steering papers
- Detailed report at 6 months and 12 months post-live
- Corrective action if benefits at risk

## E7. Risk Management

### E7.1 Top 10 Strategic Risks

| Risk ID | Risk Description | Stakeholder Impact | Likelihood | Impact | Score | Mitigation | Owner |
|---------|------------------|-------------------|------------|--------|-------|------------|-------|
| R-001 | Timeline slips past Windows 10 EOL | CISO - compliance failure | Medium | Critical | 12 | 6-week buffer, early procurement | SRO |
| R-002 | Support ticket tsunami | Helpdesk - overwhelm | Medium | High | 9 | 18hr training, phased rollout, pause criteria | Helpdesk Mgr |
| R-003 | Budget overrun eliminates ROI | CFO - no cost savings | Medium | High | 9 | 10% contingency, fixed-price contracts | CFO |
| R-004 | Hardware supply chain delays | All - timeline slip | Medium | High | 9 | Early procurement, multi-vendor | Procurement |
| R-005 | Application compatibility blockers | Users - broken apps | Medium | Medium | 6 | Top 100 apps tested, remediation budget | App Owners |
| R-006 | Key stakeholder leaves | All - sponsorship lost | Low | Critical | 8 | Multiple sponsors, governance framework | SRO |
| R-007 | User resistance creates adoption barriers | Users - low satisfaction | Medium | Medium | 6 | Champions, communication, training | Change Mgr |
| R-008 | Skills gap in InTune | IT Ops - poor execution | Medium | Medium | 6 | Vendor support, upskilling programme | IT Ops |
| R-009 | Cyber security incident during migration | CISO - breach | Low | Critical | 8 | Security testing, phased rollout | CISO |
| R-010 | Copilot+ PC ARM64 compatibility | CIO - limited adoption | Medium | Low | 4 | Pilot first, prioritize x64 initially | CIO |

**Risk Score**: Likelihood (1-4) × Impact (1-4) = Score (1-16)

**Risk Appetite**:
- **Security/Compliance Risk**: LOW (zero tolerance for breaches)
- **Financial Risk**: MEDIUM (10% overrun acceptable)
- **Timeline Risk**: MEDIUM (quality over speed, but EOL deadline firm)

### E7.2 Risk Mitigation Summary

**High Risks (Score 12+)**:
- R-001 (Timeline slips): 6-week buffer, early procurement, pause criteria

**Medium Risks (Score 6-11)**:
- R-002, R-003, R-004, R-005, R-006, R-007, R-008, R-009: Active mitigations in place

**Low Risks (Score 1-5)**:
- R-010 (ARM64 compatibility): Monitor, pilot-based approach

---

# PART F: RECOMMENDATION & NEXT STEPS

## F1. Summary of Recommendation

**Recommended Option**: **Option 2: Balanced Phased Approach**

**Investment**: £4.2M over 3 years

**Expected Return**: £7.9M over 3 years
- **NPV**: £3.2M
- **ROI**: 88%
- **Payback Period**: 16 months

**Stakeholder Goals Met**: 85%

**Risks**: Manageable (High risks have active mitigations)

**Affordability**: Fully funded within existing budget

**Go/No-Go Recommendation**: **PROCEED to procurement phase**

## F2. Conditions for Approval

**Mandatory Conditions**:
1. ✅ Funding secured: £4.2M confirmed (IT Capital £3M + Digital Transformation £1.2M)
2. ✅ SRO appointed: IT Operations Director accepted role
3. ☐ Steering Committee established: CIO, CFO, CISO, SRO, EA
4. ☐ Stakeholder analysis validated: All stakeholders briefed

**Recommended Conditions**:
1. Hardware procurement initiated within Month 2 (critical path)
2. Vendor selection completed by Month 4
3. Helpdesk training completed before pilot (Month 5)

## F3. Next Steps if Approved

**Immediate Actions** (Month 1):
1. **Funding Approval**: CFO secures £4.2M allocation - **Target: Week 2**
2. **Team Mobilization**: SRO appoints Project Manager, core team - **Target: Week 2**
3. **Stakeholder Kickoff**: SRO briefs all stakeholders - **Target: Week 3**

**Phase 1: Procurement** (Months 2-4):
1. **SOW Generation**: `/arckit.sow` (already created) - **Target: Month 2**
2. **Digital Marketplace**: Publish DOS6 opportunity - **Target: Month 2**
3. **Vendor Evaluation**: Score using evaluation-criteria.md - **Target: Month 3**
4. **Contract Award**: Sign with selected vendor - **Target: Month 4**

**Phase 2: Design & Pilot** (Months 5-6):
1. **High-Level Design**: Vendor delivers HLD - **Target: Month 5**
2. **Helpdesk Training**: 18 hours per staff - **Target: Month 5**
3. **Pilot Migration**: 100 IT staff devices - **Target: Month 6**
4. **Application Testing**: Top 100 apps validated - **Target: Month 6**

**Phase 3: Production Rollout** (Months 7-18):
1. **Phased Waves**: 500-1000 devices per wave
2. **Pause Criteria**: >10% failure rate stops deployment
3. **Weekly Steering**: Status updates during waves
4. **ConfigMgr Decommission**: Month 18

**Phase 4: Benefits Realization** (Months 19-24):
1. **6-Month Review**: Measure benefits vs plan - **Target: Month 24**
2. **Lessons Learned**: Document for future projects
3. **OBC Update**: Create Outline Business Case with actuals

## F4. Next Steps if Not Approved

If this SOBC is not approved:

1. **Understand Objections**: SRO meets with approving body
2. **Revise SOBC**: Address concerns (different option, phased approach)
3. **Re-submit**: Present revised SOBC within 4 weeks
4. **Communicate**: Inform stakeholders of decision

**Do Nothing Consequences**:
- Windows 10 EOL October 2025 = unsupported OS
- Cyber insurance cancelled
- ISO 27001 recertification failed
- £2M+ annual infrastructure overspend continues

---

# APPENDICES

## Appendix A: Stakeholder Analysis

**Source**: `projects/001-windows-11-migration-intune/stakeholder-drivers.md`

**Key Stakeholders**:
- **CISO**: Eliminate EOL security risk (CRITICAL)
- **CFO**: Reduce infrastructure costs 80% (HIGH)
- **IT Operations Director**: Execute risk-free migration (CRITICAL)
- **End Users**: Minimize work disruption (HIGH)
- **CIO**: Deliver strategic modernization (HIGH)

**Primary Conflict**: CFO speed vs IT Ops risk mitigation → Resolved via 18-month phased timeline

## Appendix B: Architecture Principles

**Source**: `.arckit/memory/architecture-principles.md`

**Relevant Principles**:
- **Principle 1: Cloud-First Endpoint Management** - InTune as primary platform
- **Principle 2: Zero Trust Security** - TPM 2.0, Conditional Access, Defender EDR
- **Principle 3: User Experience First** - OneDrive KFM, <2hr downtime

## Appendix C: Options Analysis Details

**Detailed Cost Breakdown**: See Section B2 above

**Assumptions Register**:
1. 30% hardware replacement required (based on inventory assessment)
2. Microsoft 365 E3/E5 licenses available (includes InTune)
3. Network bandwidth adequate for cloud management
4. Vendor capacity available for 18-month timeline

## Appendix D: Benefits Calculation

**Benefit B-001 Calculation** (Infrastructure Cost Reduction):
- ConfigMgr servers: £400K/year → £0
- SQL licensing: £200K/year → £0
- ConfigMgr labor: £600K/year → £100K/year (reduced)
- Datacenter footprint: £300K/year → £0
- **Total Savings**: £1.5M/year (Month 18+)

## Appendix E: Risk Register

**Source**: `projects/001-windows-11-migration-intune/risk-register.md`

**Top 3 Risks**:
1. R-001: Timeline slippage (Score 12) - 6-week buffer mitigates
2. R-002: Support ticket volume (Score 9) - Training + phased rollout
3. R-003: Budget overrun (Score 9) - 10% contingency + fixed-price

## Appendix F: Glossary

| Term | Definition |
|------|------------|
| SOBC | Strategic Outline Business Case - First stage with high-level estimates |
| OBC | Outline Business Case - Second stage with refined costs after requirements |
| FBC | Full Business Case - Final stage with accurate costs before implementation |
| InTune | Microsoft cloud-native endpoint management platform |
| ConfigMgr | Configuration Manager (SCCM) - legacy on-premises management |
| NPV | Net Present Value - Discounted benefits minus costs |
| ROI | Return on Investment - (Benefits - Costs) / Costs × 100% |
| TCO | Total Cost of Ownership - Capital + Operational costs over lifecycle |
| EOL | End of Life - October 14, 2025 for Windows 10 |
| SRO | Senior Responsible Owner - Accountable for project delivery |

---

## Document Approval

| Name | Role | Signature | Date |
|------|------|-----------|------|
| [IT Ops Director] | Senior Responsible Owner | | |
| [CFO] | Finance Director | | |
| [CIO] | Chief Information Officer | | |
| [CISO] | Chief Information Security Officer | | |

**Approval Decision**: **PENDING**

**Conditions** (if any):
1. [To be determined upon review]
2. [To be determined upon review]

**Approval Date**: [Pending]

**Next Review Date**: Upon approval, or when OBC created (Month 12)

---

**END OF STRATEGIC OUTLINE BUSINESS CASE**

*Document created using ArcKit `/arckit.sobc` command*
*Template version: 1.0*
*Green Book compliant: Yes (HM Treasury 5-case model)*
*Lifecycle Stage: SOBC (Strategic Outline) - Next: OBC after requirements/design*

---

**Generated by**: ArcKit `/arckit.sobc` command
**Generated on**: 2026-01-24
**ArcKit Version**: 0.1.0
**Project**: Windows 11 Migration (Project 001)
**Model**: Claude Opus 4.5
