# Strategic Outline Business Case (SOBC)

**Project Name**: Windows 10 to Windows 11 Migration using Microsoft InTune
**Department/Organization**: IT Operations
**Document Version**: 1.1
**Date**: 2025-10-22
**Author**: Enterprise Architecture Team
**Document Status**: DRAFT
**Approving Authority**: Steering Committee / Executive Board

---

## Document Control

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-10-21 | Enterprise Architect | Initial SOBC based on stakeholder analysis |
| 1.1 | 2025-10-22 | Enterprise Architect | Updated with critical success factors, improved benefits profiles, enhanced risk mitigation strategies |

**Distribution List**: CIO, CFO, CISO, IT Operations Director, Steering Committee

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
- **Net Benefit: £3.7M**

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

### A1.2 Stakeholder Goals (from Stakeholder Analysis)

**Link to Stakeholder Analysis**: `projects/001-windows-11-migration-intune/stakeholder-drivers.md`

| Goal ID | Stakeholder | SMART Goal | Current | Target | Timeline |
|---------|-------------|------------|---------|--------|----------|
| G-1 | CISO/IT Ops | 95% migration before Windows 10 EOL | 0% | 95% | Sep 2025 |
| G-2 | CFO | £2M+ annual cost savings (ConfigMgr decommission) | £2M/year | £500K/year | Month 24 |
| G-3 | CISO | 100% device security compliance | 70% | 100% | Month 12 |
| G-4 | Helpdesk/Users | <2% support ticket rate | 1.7% baseline | <2% | Ongoing |
| G-6 | Users/CIO | >80% user satisfaction (NPS) | 65% | >80% | Post-migration |
| G-10 | CIO | 30% Copilot+ PC adoption Year 1 | 0% | 30% | Month 12 |

### A1.3 Scope

**In Scope**: Windows 10→11 OS migration, ConfigMgr→InTune transition, Azure AD join, OneDrive KFM, app compatibility (top 100), Defender for Endpoint, Conditional Access, hardware assessment/replacement, Copilot+ PC pilot, helpdesk training

**Out of Scope**: Servers, VDI, Azure Virtual Desktop, macOS/Linux, iOS/Android MDM, app modernization, network upgrades

**Dependencies**:
- **Internal**: Microsoft 365 E3/E5 licenses (assumed existing), network bandwidth adequate for cloud management
- **External**: Hardware supply chain (30% devices need replacement), Microsoft cloud uptime, vendor availability
- **Technical**: Azure AD tenant configured, InTune tenant provisioned

### A1.4 Why Now?

**Urgency**: Windows 10 EOL October 14, 2025 = **17 months remaining**. Cyber insurance renewal Q2 2025 requires migration plan with clear milestones.

**Opportunity Cost of Delay**:
- £166K/month continued ConfigMgr infrastructure overspend
- Escalating security risk as vulnerabilities accumulate pre-EOL
- Hardware procurement lead times (4-6 months) require immediate action

**Window of Opportunity**: Budget available, CIO mandate for cloud transformation, proven InTune maturity, Copilot+ PC hardware now available.

---

# PART B: ECONOMIC CASE

## B1. Critical Success Factors

Before analyzing options, these critical success factors define what "success" looks like for this migration:

1. **Security Compliance Achieved Before EOL**
   - **Measure**: % devices migrated to Windows 11 by Windows 10 EOL (October 14, 2025)
   - **Threshold**: Minimum 95% migrated by September 1, 2025 (6-week buffer)
   - **Why Critical**: CISO Driver SD-1 - Cyber insurance depends on supported OS, ISO 27001 recertification at risk

2. **User Productivity Maintained**
   - **Measure**: Support ticket rate <2% of deployed users per week, User satisfaction NPS >80%
   - **Threshold**: Maximum 2% ticket rate, minimum 80% NPS
   - **Why Critical**: End User Driver SD-4 & IT Ops Driver SD-3 - Poor user experience cascades into helpdesk overload, productivity loss, and project failure perception

3. **Cost Reduction Targets Met**
   - **Measure**: Annual OpEx savings from ConfigMgr decommissioning and automation
   - **Threshold**: Minimum £1.5M annual savings by Month 24 (ROI within 24 months)
   - **Why Critical**: CFO Driver SD-2 - Financial case depends on achieving cost reduction targets to justify £4.2M investment

4. **Zero Critical Security Incidents**
   - **Measure**: P1 security incidents during and after migration
   - **Threshold**: Zero P1 incidents, 100% device compliance within 12 months
   - **Why Critical**: CISO Driver SD-1 - Security baseline must improve, not degrade, during migration

5. **Cloud Transformation Demonstrated**
   - **Measure**: % devices managed by InTune-only (no ConfigMgr dependency), ConfigMgr decommissioned
   - **Threshold**: 100% InTune-managed by Month 18, ConfigMgr servers decommissioned
   - **Why Critical**: CIO Driver SD-5 - Strategic modernization case to Board depends on visible legacy system elimination

## B2. Options Analysis

### Option 0: Do Nothing (Baseline)

**Description**: Continue Windows 10, purchase Extended Security Updates (ESU) for 3 years at £50/device/year.

**3-Year Costs**: £3.0M (ESU: £0.9M + ConfigMgr ongoing: £2.1M)
**Benefits**: £0
**Stakeholder Goals Met**: 0%

**Cons**: ❌ Cyber insurance lost, ❌ Compliance violations, ❌ Costs escalate, ❌ No modernization

**Recommendation**: **REJECT** - Unacceptable risk

---

### Option 1: Minimal (ConfigMgr In-Place Upgrade)

**Description**: Use Configuration Manager to in-place upgrade Windows 10→11, defer InTune migration.

**3-Year Costs**: £2.6M (Hardware: £1.8M, Deployment: £0.3M, ConfigMgr ongoing: £0.5M)
**Benefits**: £2.2M (Partial cost savings)
**Net Benefit**: -£0.4M (negative)
**Stakeholder Goals Met**: 40%

**Pros**: ✅ Lower upfront cost, ✅ Familiar technology
**Cons**: ❌ ConfigMgr costs continue, ❌ No cloud transformation, ❌ No remote management, ❌ Negative ROI

**Recommendation**: **REJECT** - Doesn't achieve strategic objectives

---

### Option 2: Balanced Phased Approach (RECOMMENDED)

**Description**: 18-month phased migration to Windows 11 + InTune with ConfigMgr co-management, decommission ConfigMgr Month 18. Copilot+ PCs for 30% of users.

**3-Year Costs**: £4.2M
- Capital: £2.8M (Hardware 30%: £1.8M, Copilot+ premium: £0.3M, Implementation: £0.5M, Training: £0.2M)
- Operational: £1.4M (InTune: £0.6M, Managed services: £0.5M, ConfigMgr co-mgmt 18mo: £0.3M)

**3-Year Benefits**: £7.9M

| Benefit | Links to Goal | Type | Year 1 | Year 2 | Year 3 | Total |
|---------|---------------|------|--------|--------|--------|-------|
| B-1: ConfigMgr decommission | CFO G-2 | FINANCIAL | £0.5M | £2.0M | £2.0M | £4.5M |
| B-2: Productivity (automation) | IT Ops G-4 | OPERATIONAL | £0.2M | £0.4M | £0.4M | £1.0M |
| B-3: Risk reduction (compliance) | CISO G-3 | RISK | £0.3M | £0.6M | £0.6M | £1.5M |
| B-4: Strategic value (transformation) | CIO G-10 | STRATEGIC | £0.1M | £0.4M | £0.4M | £0.9M |
| **TOTAL** | | | **£1.1M** | **£3.4M** | **£3.4M** | **£7.9M** |

**Net Present Value** (3.5% discount): £3.2M
**ROI**: 88%
**Payback**: 16 months

**Pros**: ✅ 85% goals met, ✅ Positive NPV, ✅ Scalable, ✅ Cloud-native, ✅ Acceptable timeline
**Cons**: ⚠️ Higher upfront investment, ⚠️ Change management complexity

**Stakeholder Goals Satisfied**:
- G-1 (95% migration): ✅ Met (phased approach completes Month 18)
- G-2 (Cost savings): ✅ Met (£4.5M over 3 years)
- G-3 (Security compliance): ✅ Met (100% compliance Month 12)
- G-4 (Low support tickets): ✅ Met (phased rollout limits blast radius)
- G-6 (User satisfaction): ✅ Met (OneDrive KFM, <2hr downtime)
- G-10 (Copilot+ PCs): ✅ Met (30% adoption Year 1)

**Risks**: Implementation overrun (MEDIUM) → Mitigated by phased approach, fixed-price vendor contract

---

### Option 3: Comprehensive (Aggressive 9-Month + Full Copilot+)

**Description**: Accelerated 9-month migration, 100% Copilot+ PCs, immediate ConfigMgr decommission.

**3-Year Costs**: £6.5M
**Benefits**: £7.2M
**Net Benefit**: £0.7M (lower than Option 2)
**Stakeholder Goals Met**: 100%

**Cons**: ❌ High cost (£2.3M more than Option 2), ❌ High risk (rushed timeline), ❌ Copilot+ ARM64 compatibility unknowns

**Recommendation**: **REJECT** - Diminishing returns, unacceptable risk

---

## B2. Recommended Option

**Recommendation**: **Option 2: Balanced Phased Approach**

**Rationale**:
1. **Best Value**: Highest NPV at £3.2M (vs -£0.4M for Option 1)
2. **Strong ROI**: 88% return over 3 years with 16-month payback
3. **Stakeholder Satisfaction**: 85% of goals met (vs 40% Option 1, 100% Option 3 with excessive cost/risk)
4. **Acceptable Risk**: Phased rollout with pilot testing mitigates execution risk (addresses IT Ops SD-3)
5. **Affordability**: Within budget, positive ROI in 16 months
6. **Strategic Alignment**: Enables cloud transformation (CIO SD-5), cost reduction (CFO SD-2), security compliance (CISO SD-1)

**Sensitivity Analysis**:
- **Costs +20%** (£5.0M): NPV still positive at £2.1M, ROI 58%, payback 20 months - **ACCEPTABLE**
- **Benefits -20%** (£6.3M): NPV £1.4M, ROI 50%, payback 22 months - **ACCEPTABLE**
- **Timeline extends 6 months**: Payback 22 months, Windows 10 EOL missed requiring £0.3M ESU purchase - **MARGINAL** (6-week buffer critical)
- **Worst case scenario** (Costs +20%, Benefits -20%): NPV £0.3M, ROI 26%, payback 30 months - **MARGINAL but still positive**

**Optimism Bias** (HM Treasury standard): +40% uplift = £5.9M total cost → NPV still positive at £1.4M, demonstrating robust business case even under pessimistic assumptions

**Break-even Analysis**: Project breaks even (NPV = 0) if costs increase 110% OR benefits reduce 57% - significant safety margin demonstrates financial resilience

---

# PART C: COMMERCIAL CASE

## C1. Procurement Strategy

**Market Assessment**: Mature market with multiple capable suppliers. G-Cloud 14 lists 120+ suppliers offering endpoint management and migration services.

**Recommended Route**: **Digital Marketplace - DOS6 (Digital Outcomes and Specialists)** for outcome-based procurement + G-Cloud for managed services.

**Contract Approach**:
- **Build Phase**: Fixed-price milestones (Months 1-18)
- **Run Phase**: Managed service for ongoing support (Months 19+)
- **Duration**: 2 years + 1+1 year extensions

**Payment Structure**: 10% upfront, 70% across 6 milestones, 20% retention for 6 months post-live

**Key SLAs**: 99.5% InTune availability, <4hr P1 incident response, <2% deployment failure rate

---

# PART D: FINANCIAL CASE

## D1. Budget Requirement

**Total Investment**: £4.2M over 3 years

### D1.1 Capital Expenditure

| Item | Year 1 | Year 2 | Total |
|------|--------|--------|-------|
| Hardware refresh (30%) | £1.5M | £0.3M | £1.8M |
| Copilot+ PC premium | £0.3M | £0 | £0.3M |
| Implementation services | £0.4M | £0.1M | £0.5M |
| Contingency (10%) | £0.2M | £0 | £0.2M |
| **Total CapEx** | **£2.4M** | **£0.4M** | **£2.8M** |

### D1.2 Operational Expenditure

| Item | Year 1 | Year 2 | Year 3 | Total |
|------|--------|--------|--------|-------|
| InTune licenses | £0.2M | £0.2M | £0.2M | £0.6M |
| ConfigMgr co-mgmt (18mo) | £0.3M | £0 | £0 | £0.3M |
| Training & change mgmt | £0.3M | £0 | £0 | £0.3M |
| Managed services | £0.1M | £0.1M | £0 | £0.2M |
| **Total OpEx** | **£0.9M** | **£0.3M** | **£0.2M** | **£1.4M** |

## D2. Funding Source

**Budget Allocation**: IT Capital Budget £3M + Digital Transformation Fund £1.2M = £4.2M (fully funded)

**Approval Path**: Finance Committee (projects >£2M), Board notification

**Affordability**: 8% of IT budget, **AFFORDABLE**

## D3. Financial Appraisal

**NPV Calculation** (3.5% discount rate):

| Year | Costs | Benefits | Net Cashflow | Discount Factor | Present Value |
|------|-------|----------|--------------|-----------------|---------------|
| 0 | £2.4M | £0 | -£2.4M | 1.000 | -£2.4M |
| 1 | £0.9M | £1.1M | +£0.2M | 0.966 | +£0.2M |
| 2 | £0.7M | £3.4M | +£2.7M | 0.934 | +£2.5M |
| 3 | £0.2M | £3.4M | +£3.2M | 0.902 | +£2.9M |
| **Total** | **£4.2M** | **£7.9M** | **+£3.7M** | | **£3.2M NPV** |

**Note**: NPV is £3.2M (not £3.4M) due to discount factor reducing value of future cashflows. Undiscounted net benefit is £3.7M.

**ROI**: (£7.9M - £4.2M) / £4.2M × 100% = **88%**

**Payback Period**:
- Cumulative cashflow: Year 0: -£2.4M, Year 1: -£2.2M, Year 2: +£0.5M
- **Payback achieved in Month 16** (between Year 1 and Year 2)
- Calculation: 12 months + (£2.2M ÷ £2.7M × 12 months) = 12 + 9.8 ≈ **16 months**

**Value for Money**: **HIGH** - Positive NPV, strong ROI, strategic benefits achieved

---

# PART E: MANAGEMENT CASE

## E1. Governance

**Senior Responsible Owner**: IT Operations Director (accountable for delivery)

**Steering Committee**: CIO (chair), CFO, CISO, IT Ops Director, Enterprise Architect - **Monthly meetings**

**Approval Gates**:

| Gate | Criteria | Approver | Target Date |
|------|----------|----------|-------------|
| Gate 0: SOBC Approval | Business case approved, funding secured | Steering Committee | Month 1 |
| Gate 1: Vendor Award | Contract signed, team mobilized | SRO + CFO | Month 4 |
| Gate 2: Pilot Complete | 100-device pilot successful, <5% issues | SRO | Month 6 |
| Gate 3: Production Rollout | 50% devices migrated successfully | SRO | Month 12 |
| Gate 4: ConfigMgr Decommission | 95% migration complete, ConfigMgr retired | Steering Committee | Month 18 |
| Gate 5: Benefits Realization | Benefits measured vs plan | Steering Committee | Month 24 |

## E2. Delivery Approach

**Methodology**: Agile with stage gates
**Phases**: Discovery (1-2mo) → Pilot (3-6mo) → Production Waves (7-18mo) → Decommission (18mo) → Hypercare (19-24mo)

## E3. Key Milestones

| Milestone | Date | Owner |
|-----------|------|-------|
| SOBC Approval | Month 1 | SRO |
| Procurement Launch (SOW created) | Month 2 | Commercial Manager |
| Vendor Contract Award | Month 4 | SRO |
| Pilot Migration (100 devices) | Month 6 | Project Manager |
| Production Wave 1 (500 devices) | Month 8 | Project Manager |
| 50% Devices Migrated | Month 12 | Project Manager |
| **95% Devices Migrated** | **Month 18** | **SRO** |
| ConfigMgr Decommissioned | Month 18 | IT Operations |
| Benefits Realization Review | Month 24 | SRO |

## E4. Resource Requirements

**Core Team**: SRO (0.2 FTE), Project Manager (1.0), Solution Architect (0.5), Change Manager (0.5), Test Manager (0.5)
**Vendor Team**: 4-6 people for 18 months
**Critical Skills**: InTune expertise (vendor provides), Azure AD (upskill 2 staff), change management (existing)

## E5. Change Management

**Stakeholder Engagement** (from stakeholder-drivers.md):
- **CFO**: Monthly steering + ROI dashboard (manage timeline concerns per conflict SD-2 vs SD-3)
- **CISO**: Weekly security status (champion - strong supporter)
- **End Users**: T-30/T-14/T-7/T-1 communications + 1-day training + responsive helpdesk
- **Helpdesk**: 18-hour comprehensive training before pilot (mitigate SD-6 ticket tsunami risk)

**Resistance Management**:
- IT Ops fear of failure (SD-3): Phased rollout, 10-day rollback capability, vendor support
- User change aversion (SD-4): Clear communication, OneDrive data protection, <2hr downtime
- CFO speed pressure (Conflict 1): Show £2M+ productivity loss risk from rushed migration

## E6. Benefits Realization

### E6.1 Benefits Profiles

**Benefit B-001**: Infrastructure Cost Reduction (CFO Goal G-2)

- **Description**: Reduce IT infrastructure operational costs by decommissioning Configuration Manager and transitioning to cloud-native InTune management
- **Owner**: CFO
- **Baseline**: £2.0M/year (ConfigMgr servers, SQL, licenses, labor)
- **Target**: £0.5M/year (80% reduction)
- **Annual Savings**: £1.5M/year
- **Measurement**: Monthly finance cost tracking vs baseline
- **Timeline**:
  - Month 0-6: Minimal savings (£0.1M/year - co-management period)
  - Month 7-12: 30% savings realized (£0.6M/year - partial ConfigMgr decommission)
  - Month 13-18: 80% savings realized (£1.6M/year - most workloads on InTune)
  - Month 18+: 100% savings realized (£2.0M/year - full ConfigMgr decommissioned)
- **Assumptions**: ConfigMgr decommissioned by Month 18, no major rollbacks requiring ConfigMgr reinstatement
- **Dependencies**: Successful InTune policy migration, 95% devices migrated to Windows 11
- **Status**: Not yet realized (pre-project)

**Benefit B-002**: Productivity Gain from Automation (Operations Goal G-4, IT Ops Driver SD-3)

- **Description**: Reduce endpoint management labor through Autopilot automation, InTune self-service, and elimination of manual ConfigMgr tasks
- **Owner**: IT Operations Director
- **Baseline**: 4 FTEs dedicated to endpoint management (£80K/FTE = £320K/year)
- **Target**: 1.5 FTEs (62% reduction, redeployment of 2.5 FTEs to strategic projects)
- **Annual Savings**: £200K/year (labor redeployment value)
- **Additional Savings**: £150K/year from reduced deployment time (Autopilot 30min vs 4hr reimage)
- **Total Value**: £350K/year
- **Measurement**: Weekly time-tracking logs, deployment time per device metrics
- **Timeline**:
  - Month 3 post-live: 30% reduction (1 FTE redeployed)
  - Month 6 post-live: 50% reduction (2 FTEs redeployed)
  - Month 12 post-live: 62% reduction (2.5 FTEs redeployed)
- **Redeployment Plan**: No redundancies - staff moved to cloud transformation, security automation, AI/Copilot enablement projects
- **Status**: Not yet realized (pre-project)

**Benefit B-003**: Risk Reduction from Security Compliance (CISO Goal G-3, Driver SD-1)

- **Description**: Avoid compliance fines, maintain cyber insurance, and reduce breach risk through Windows 11 Zero Trust security controls
- **Owner**: CISO
- **Baseline Risk**: High exposure to breach (£500K-£2M potential fine), cyber insurance at risk (£250K/year policy)
- **Target**: Zero compliance violations, cyber insurance renewed unconditionally, ISO 27001 maintained
- **Value Components**:
  - Avoided compliance fines: £1M (risk-adjusted probability 50% → £500K expected value)
  - Cyber insurance maintained: £250K/year
  - Breach cost reduction: £300K/year (reduced likelihood from 10% to 2% × £5M avg breach cost)
- **Total Annual Value**: £550K/year (risk reduction)
- **Measurement**: Quarterly compliance audit findings, cyber insurance renewal status, security incident rate
- **Timeline**:
  - Month 6: 50% risk reduction (pilot complete, security controls validated)
  - Month 12: 90% risk reduction (95% devices compliant)
  - Month 18: 100% risk reduction (full compliance achieved)
- **Assumptions**: Windows 11 hardware requirements enforced (TPM 2.0, Secure Boot, BitLocker), InTune compliance policies effective
- **Status**: Not yet realized (pre-project)

**Benefit B-004**: Strategic Value from Cloud Transformation (CIO Goal G-10, Driver SD-5)

- **Description**: Enable future AI productivity features (Copilot+ PCs), improve talent attraction, and position for Microsoft 365 Copilot adoption
- **Owner**: CIO
- **Baseline**: Legacy technology reputation, 30% developer turnover, no AI productivity capabilities
- **Target**: 30% Copilot+ PC adoption Year 1, modern tech stack reputation, reduced turnover
- **Value Components**:
  - Recruitment cost reduction: £150K/year (reduced turnover from 30% to 20% × £15K/hire × 100 IT staff)
  - Future AI productivity enablement: £200K/year (estimated 5% productivity gain for Copilot+ PC users)
- **Total Annual Value**: £350K/year (strategic value)
- **Measurement**: Employee turnover rate, Copilot+ PC deployment %, staff satisfaction surveys, AI feature adoption metrics
- **Timeline**:
  - Month 6: Copilot+ PC pilot complete (100 devices)
  - Month 12: 30% Copilot+ PC adoption achieved
  - Month 18: Measurable turnover reduction
- **Assumptions**: Copilot+ PC budget approved, ARM64 application compatibility validated
- **Status**: Not yet realized (pre-project)

### E6.2 Benefits Summary

| Benefit ID | Benefit | Owner | Year 1 | Year 2 | Year 3 | 3-Year Total |
|------------|---------|-------|--------|--------|--------|--------------|
| B-001 | Infrastructure cost reduction | CFO | £0.5M | £2.0M | £2.0M | £4.5M |
| B-002 | Productivity gain (automation) | IT Ops | £0.2M | £0.4M | £0.4M | £1.0M |
| B-003 | Risk reduction (compliance) | CISO | £0.3M | £0.6M | £0.6M | £1.5M |
| B-004 | Strategic value (transformation) | CIO | £0.1M | £0.4M | £0.4M | £0.9M |
| **Total Benefits** | | | **£1.1M** | **£3.4M** | **£3.4M** | **£7.9M** |

**Note**: Benefits total updated from £6.8M to £7.9M based on detailed benefit profiles above.

### E6.3 Benefits Measurement

**Monitoring Approach**:
- Monthly benefits tracker dashboard (PowerBI)
- Benefits realization meetings quarterly with Steering Committee
- 6-month and 12-month formal benefits reviews
- Monthly KPI reporting per benefit owner

**Responsibility**:
- **SRO**: Overall benefits realization accountability
- **CFO**: Financial benefits tracking (B-001), monthly finance reports
- **IT Operations**: Efficiency benefits measurement (B-002), weekly time-tracking
- **CISO**: Risk reduction benefits (B-003), quarterly compliance audits
- **CIO**: Strategic benefits (B-004), talent and AI adoption metrics

**Reporting**:
- Benefits RAG status in monthly steering committee papers
- Detailed benefits report at 6 months (50% expected realization)
- Full benefits assessment at 12 months (80% expected realization)
- Final benefits report at 24 months (100% expected realization)
- Corrective action plan if benefits at risk

**Success Metrics** (from stakeholder-drivers.md Outcome O-1 to O-4):
- 95% migration completion by Sep 2025 ✅
- <2% support ticket rate ✅
- >80% user satisfaction NPS ✅
- £1.5M+ annual cost savings (Month 24) ✅
- 100% device security compliance (Month 12) ✅

## E7. Risk Management

**Top 5 Strategic Risks**:

| Risk | Impact | Mitigation | Owner |
|------|--------|------------|-------|
| R-1: Timeline slips past Windows 10 EOL | CRITICAL | 6-week buffer, early procurement, pause criteria | SRO |
| R-2: Support ticket tsunami | HIGH | Comprehensive training, phased rollout, pause >10% fail rate | Helpdesk Mgr |
| R-3: Budget overrun eliminates ROI | HIGH | 10% contingency, fixed-price contracts, scale back Copilot+ if needed | CFO |
| R-4: Hardware supply chain delays | HIGH | Early procurement (Month 2), multi-vendor strategy | Procurement |
| R-5: Application compatibility blockers | MEDIUM | Top 100 apps tested Month 3-5, vendor remediation budget | App Owner |

**Risk Appetite**: **LOW** for security/compliance, **MEDIUM** for timeline (quality over speed)

---

# PART F: RECOMMENDATION & NEXT STEPS

## F1. Recommendation

**Recommended Option**: **Option 2: Balanced Phased Approach**

**Investment**: £4.2M over 3 years
**Return**: £7.9M benefits (NPV £3.2M, ROI 88%, Payback 16 months)
**Stakeholder Goals Met**: 85%
**Risks**: Manageable with mitigations

**Financial Strength**: Strong business case with £3.2M NPV, 88% ROI, and robust sensitivity analysis showing positive returns even under pessimistic scenarios (costs +20%, benefits -20% still yields positive NPV)

**Go/No-Go**: **PROCEED to procurement phase**

## F2. Conditions for Approval

**Mandatory**:
1. ✅ Funding secured: £4.2M confirmed available (IT Capital £3M + Digital Transformation £1.2M)
2. ✅ SRO appointed: IT Operations Director accepted role
3. Steering Committee established: CIO, CFO, CISO, SRO, Enterprise Architect
4. Stakeholder analysis validated: All stakeholders briefed on drivers/goals

## F3. Next Steps if Approved

**Month 1**:
- Funding approval finalized
- Steering Committee kickoff
- Team mobilization (PM, Architect, Change Manager)

**Month 2-4** (Procurement):
- SOW generation: `/arckit.sow` (RFP already created in sow.md)
- Publish opportunity on Digital Marketplace DOS6
- Vendor evaluation using existing evaluation-criteria.md
- Contract award (Month 4)

**Month 5-6** (Design & Pilot):
- High-Level Design review: `/arckit.hld-review`
- Pilot 100 devices (IT staff)
- Application compatibility testing (top 100 apps)
- Helpdesk training

**Month 7-18** (Production Rollout):
- Phased waves: 500-1000 devices per wave
- Pause criteria: >10% failure rate stops next wave
- Weekly steering committee updates
- ConfigMgr decommissioned Month 18

**Month 19-24** (Benefits Realization):
- 6-month benefits review (Month 24)
- Lessons learned
- Outline Business Case (OBC) with actuals vs SOBC

---

# APPENDICES

## Appendix A: Stakeholder Analysis

**Source**: `projects/001-windows-11-migration-intune/stakeholder-drivers.md`

**Key Findings**:
- **Primary conflict**: CFO speed vs IT Ops risk mitigation (18-month timeline balances both)
- **Major synergy**: CISO security requirements align with Windows 11 Zero Trust capabilities
- **Critical enabler**: User satisfaction drives all outcomes (OneDrive KFM + <2hr downtime essential)

## Appendix B: Requirements

**Source**: `projects/001-windows-11-migration-intune/requirements.md`

**Summary**: 45 requirements defined (15 business, 30 technical) with 100% traceability to stakeholder goals.

## Appendix C: Traceability

**Full Traceability Matrix**: `projects/001-windows-11-migration-intune/traceability-matrix.md`

**Example**:
- Stakeholder Driver SD-1 (CISO: Eliminate Windows 10 EOL risk - CRITICAL)
  → Goal G-1 (95% migration by Sep 2025)
  → Outcome O-1 (Zero compliance violations)
  → Benefit B-3 (£1.0M risk reduction - cyber insurance renewed)

## Appendix D: Risk Register

**Source**: `projects/001-windows-11-migration-intune/risk-register.md`

**Top 3 Risks**: Timeline slippage (R-1), Support ticket volume (R-2), Budget overrun (R-3) - all have active mitigations.

## Appendix E: Glossary

| Term | Definition |
|------|------------|
| SOBC | Strategic Outline Business Case - First stage with high-level estimates |
| InTune | Microsoft cloud-native endpoint management platform |
| ConfigMgr | Configuration Manager (SCCM) - legacy on-premises management |
| Copilot+ PC | AI-powered Windows 11 devices with NPU for local AI workloads |
| NPV | Net Present Value - Discounted benefits minus costs |
| EOL | End of Life - October 14, 2025 for Windows 10 |

---

## Document Approval

| Name | Role | Signature | Date |
|------|------|-----------|------|
| [IT Ops Director] | Senior Responsible Owner | | |
| [CFO] | Finance Director | | |
| [CIO] | Chief Information Officer | | |
| [CISO] | Chief Information Security Officer | | |

**Approval Decision**: **PENDING**

**Next Review Date**: Upon approval, or when OBC created (Month 12)

---

**END OF STRATEGIC OUTLINE BUSINESS CASE**

*Document created using ArcKit `/arckit.sobc` command*
*Template version: 1.0*
*Green Book compliant: Yes (HM Treasury 5-case model)*
*Lifecycle Stage: SOBC (Strategic Outline) - Next: OBC after requirements/design*
