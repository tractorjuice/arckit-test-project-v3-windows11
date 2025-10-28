# Stakeholder Drivers & Goals Analysis: Windows 11 Migration

**Document Type**: Stakeholder Analysis
**Project ID**: 001
**Version**: 2.0
**Date**: 2025-10-28
**Status**: DRAFT
**Owner**: IT Operations & Enterprise Architecture
**Analyst**: Enterprise Architecture Team
**Last Updated**: 2025-10-28 (Updated for Requirements v5.0 - organizational security governance confirmed)

---

## Executive Summary

### Purpose
This document identifies key stakeholders, their underlying drivers, goals, and measurable outcomes for the Windows 10 to Windows 11 migration using Microsoft InTune.

### Key Findings
- **Primary conflict**: CFO wants rapid cost savings vs. IT Operations wants controlled risk mitigation through phased rollout
- **Major synergy**: CISO security requirements align perfectly with Windows 11's built-in Zero Trust capabilities
- **Critical enabler**: User satisfaction directly impacts all stakeholder outcomes - poor user experience cascades into helpdesk costs, productivity loss, and change resistance

### Critical Success Factors
- 95% migration completion before Windows 10 EOL (Oct 2025) to avoid compliance violations
- <2% support ticket rate to keep helpdesk costs manageable and user satisfaction high
- £[X]M annual cost savings from ConfigMgr decommissioning to satisfy CFO ROI requirements

### Stakeholder Alignment Score
**Overall Alignment**: **MEDIUM-HIGH**

Strong technical alignment between CISO, IT Ops, and Enterprise Architect. Main tension between CFO (speed/cost) and IT Operations (risk mitigation). User representatives concerned about disruption but not blocking. Executive sponsorship from CIO provides air cover for phased approach.

---

## Stakeholder Identification

### Power-Interest Grid

```
HIGH POWER
    │  MANAGE CLOSELY              │  KEEP SATISFIED
    │  • CIO (Exec Sponsor)        │  • CFO (Budget Owner)
    │  • CISO (Security)            │  • SIRO (Governance - TBD)
    │  • IT Ops Director            │  • Compliance Officer
────┼──────────────────────────────┼─────────────────────
    │  KEEP INFORMED               │  MONITOR
    │  • End Users (6000+)          │  • HR (User advocate)
    │  • Helpdesk Manager           │  • Procurement
    │  • Application Owners         │  • Facilities
LOW POWER                                    HIGH INTEREST
```

---

## Key Stakeholder Drivers

### SD-1: CISO - "Eliminate Windows 10 EOL Security Risk"

**Driver Category**: COMPLIANCE + RISK

**Driver Statement**: "We cannot maintain cyber insurance or pass audits with unsupported Windows 10 devices after October 2025. Unsupported OS = unacceptable breach risk and regulatory violations."

**Context**: Board-level pressure post-ransomware incidents in sector. Cyber insurance renewal explicitly requires supported OS. ISO 27001 recertification at risk.

**Driver Intensity**: **CRITICAL**

**Enablers**: Windows 11 built-in Zero Trust (TPM 2.0, Secure Boot, BitLocker, Defender EDR), Microsoft security baselines, cloud-native management via InTune

**Blockers**: Hardware incompatibility (30% of devices need replacement), budget constraints for hardware refresh, application compatibility issues

**Maps to Goals**: G-1 (95% migration by Sep 2025), G-3 (100% device compliance), G-5 (Zero P1 security incidents)

---

### SD-2: CFO - "Reduce IT Infrastructure Costs"

**Driver Category**: FINANCIAL

**Driver Statement**: "Cut datacenter costs by £[X]M annually through Configuration Manager decommissioning and operational efficiencies. Need ROI within 24 months to justify £[Y]M migration investment."

**Context**: Board mandate for 15% IT cost reduction. Datacenter lease renewal upcoming. Private equity pressure for margin improvement.

**Driver Intensity**: **HIGH**

**Enablers**: Cloud-native InTune (no on-prem infrastructure), ConfigMgr decommissioning (Month 18), reduced helpdesk labor via automation, extended device lifecycles (4-5 years vs 3-4)

**Blockers**: Upfront hardware replacement costs (30% of devices), professional services fees, potential productivity loss during migration

**Maps to Goals**: G-2 (£[X]M annual savings), G-4 (<2% support ticket rate), G-7 (ConfigMgr decommissioned Month 18)

---

### SD-3: IT Operations Director - "Execute Risk-Free Migration"

**Driver Category**: RISK + PERSONAL

**Driver Statement**: "Cannot afford a failed migration that disrupts business operations or creates executive-level escalations. My team's credibility and my reputation depend on flawless execution."

**Context**: Previous botched Windows 7 to 10 migration created 6-month recovery period. Executive team has low tolerance for IT disruption. IT Ops Director has 18-month tenure - success needed for promotion.

**Driver Intensity**: **CRITICAL**

**Enablers**: Phased rollout with pilot testing, 10-day rollback capability, application compatibility testing, comprehensive helpdesk training, OneDrive data protection

**Blockers**: Aggressive timeline pressure from CFO, hardware supply chain delays, vendor dependency on Microsoft cloud uptime, untested Copilot+ PC ARM64 compatibility

**Maps to Goals**: G-1 (95% success rate), G-4 (<2% support tickets), G-6 (>80% user satisfaction), G-8 (<5% rollback rate)

---

### SD-4: End Users - "Don't Break My Work"

**Driver Category**: OPERATIONAL + PERSONAL

**Driver Statement**: "I don't care about Windows 11 features. Just don't lose my files, don't break my applications, and don't make me spend hours relearning how to do my job."

**Context**: Users are productivity-focused, change-averse, time-constrained. Poor migration experience = lost productivity, missed deadlines, frustration. Task workers have minimal IT literacy.

**Driver Intensity**: **HIGH**

**Enablers**: OneDrive Known Folder Move (zero data loss), <2hr downtime per device, application continuity, simple training materials, responsive helpdesk support

**Blockers**: UI changes in Windows 11 (Start menu, taskbar), application incompatibility, slow performance on older hardware, inadequate training

**Maps to Goals**: G-6 (>80% user satisfaction), G-4 (<2% support ticket rate), G-8 (<5% rollback rate), G-9 (<2hr downtime per device)

---

### SD-5: CIO - "Deliver Strategic Modernization"

**Driver Category**: STRATEGIC + POLITICAL

**Driver Statement**: "This is more than OS upgrade - it's cloud transformation enabling remote workforce, AI productivity (Copilot+ PCs), and future Microsoft 365 Copilot adoption. Need visible success for Board credibility."

**Context**: CIO hired 18 months ago to modernize IT. Board expects cloud-first strategy. Competitors deploying AI productivity tools. Talent acquisition requires modern tech stack.

**Driver Intensity**: **HIGH**

**Enablers**: Copilot+ PC adoption (30% Year 1, 70% Year 2), InTune cloud management, Autopilot zero-touch provisioning, Windows 11 AI features, decommissioning legacy ConfigMgr

**Blockers**: Conservative IT culture resistant to cloud, budget constraints limiting Copilot+ PC adoption, ARM64 application compatibility unknowns, skills gap in InTune vs ConfigMgr

**Maps to Goals**: G-2 (Cost savings demonstrate efficiency), G-7 (ConfigMgr decommission = cloud transformation), G-10 (30% Copilot+ PC adoption Year 1)

---

### SD-6: Helpdesk Manager - "Avoid Support Ticket Tsunami"

**Driver Category**: OPERATIONAL + RISK

**Driver Statement**: "My 30-person team is already at capacity. A poorly executed migration generating >5% support tickets will overwhelm us, tank our SLAs, and cause executive escalations."

**Context**: Helpdesk already handling 100 tickets/week baseline. Previous Windows 7 migration generated 400 tickets/week for 6 months. Team morale low from overwork. Manager on performance improvement plan.

**Driver Intensity**: **HIGH**

**Enablers**: Comprehensive helpdesk training (18 hours), InTune Remote Help for remote troubleshooting, self-service Company Portal, proactive user communication, knowledge base articles, phased rollout (limits blast radius)

**Blockers**: Inadequate training budget, complex InTune troubleshooting vs familiar ConfigMgr, Conditional Access lockout scenarios, application compatibility surprises

**Maps to Goals**: G-4 (<2% support ticket rate), G-6 (>80% user satisfaction), G-11 (Helpdesk trained before pilot)

---

### SD-7: Enterprise Architect - "Establish Governance Excellence"

**Driver Category**: COMPLIANCE + PERSONAL

**Driver Statement**: "Create architectural precedent for future projects - immutable principles, traceability, exception management. Demonstrate EA value to secure budget for EA practice growth."

**Context**: EA practice only 12 months old, needs to prove value. Previous projects lacked governance rigor. Architecture Review Board newly established. EA Director wants to grow team from 2 to 5 FTEs.

**Driver Intensity**: **MEDIUM-HIGH**

**Enablers**: 18 architecture principles with exception process, requirements traceability (45 requirements), 4 governance gates, policy-as-code (InTune policies in Git), Wardley mapping for build vs buy

**Blockers**: IT culture of "just get it done" bypassing governance, time pressure from CFO undermining thorough reviews, lack of EA tooling budget

**Maps to Goals**: G-12 (Zero exceptions without approval), G-13 (100% requirements traceability), G-14 (Quarterly architecture reviews)

---

## Driver-to-Goal Mapping

### Goal G-1: Complete Migration Before Windows 10 EOL

**Derived From Drivers**: SD-1 (CISO security), SD-3 (IT Ops execution), SD-5 (CIO strategic)

**Goal Owner**: IT Operations Director

**SMART Goal**: "Migrate 95% of eligible Windows 10 devices to Windows 11 by September 1, 2025 (6 weeks before EOL)"

**Why This Matters**:
- CISO: Eliminates unsupported OS security risk, maintains cyber insurance, passes compliance audits
- IT Ops: Demonstrates successful execution, avoids emergency migrations under time pressure
- CIO: Shows Board that IT can deliver strategic initiatives on time

**Success Metrics**:
- **Primary**: % devices migrated (target 95%)
- **Secondary**: Migration success rate (target >95%), rollback rate (target <5%)

**Baseline**: 0% migrated (100% Windows 10)
**Target**: 95% migrated by Sep 1, 2025
**Measurement**: InTune device inventory OS version, weekly dashboard updates

**Dependencies**: Hardware procurement lead times, application compatibility testing completion, vendor capacity

**Risks**: Supply chain delays, vendor capacity constraints, application blockers, user resistance

---

### Goal G-2: Achieve Cost Reduction Target

**Derived From Drivers**: SD-2 (CFO financial), SD-5 (CIO efficiency)

**Goal Owner**: CFO / IT Operations Director

**SMART Goal**: "Reduce IT infrastructure operational costs by £[X]M annually through Configuration Manager decommissioning and automation efficiencies, achieving ROI within 24 months"

**Success Metrics**:
- **Primary**: Annual OpEx savings (£[X]M)
- **Secondary**: ConfigMgr infrastructure decommissioned (Month 18), deployment time reduced (<30min Autopilot vs [X]hr manual)

**Baseline**: £[Y]M/year (ConfigMgr servers, SQL, labor)
**Target**: £[X]M annual savings by Month 24
**Measurement**: Finance cost tracking, labor time tracking

---

### Goal G-3: Achieve 100% Security Compliance

**Derived From Drivers**: SD-1 (CISO security)

**Goal Owner**: CISO

**SMART Goal**: "Achieve 90% device compliance with security policies (TPM 2.0, BitLocker, Defender, MFA) by Month 6, 100% by Month 12"

**Success Metrics**:
- **Primary**: % compliant devices (InTune compliance reporting)
- **Secondary**: Zero P1 security incidents, cyber insurance renewed, ISO 27001 recertification passed

**Baseline**: 70% compliant (current Windows 10 estate)
**Target**: 100% compliant (Month 12)

---

### Goal G-4: Minimize Support Ticket Volume

**Derived From Drivers**: SD-3 (IT Ops execution), SD-4 (User experience), SD-6 (Helpdesk capacity)

**Goal Owner**: Helpdesk Manager / IT Operations Director

**SMART Goal**: "Maintain support ticket rate <2% of deployed users per week during and after migration"

**Success Metrics**:
- **Primary**: Weekly support tickets / deployed users (target <2%)
- **Secondary**: First contact resolution rate (>70%), average resolution time (<4hr)

**Baseline**: 100 tickets/week (baseline), 2-3% during previous migration
**Target**: <120 tickets/week during migration (<2% of 6000 users)
**Measurement**: ServiceNow ticket tracking

---

### Goal G-6: Achieve High User Satisfaction

**Derived From Drivers**: SD-4 (User experience), SD-3 (IT Ops execution), SD-5 (CIO credibility)

**Goal Owner**: Change Management Lead

**SMART Goal**: "Achieve >80% user satisfaction (NPS) measured via post-migration surveys"

**Success Metrics**:
- **Primary**: User satisfaction NPS score (target >80%)
- **Secondary**: Training completion rate (100%), survey response rate (>50%)

**Baseline**: 65% satisfaction (current state surveys)
**Target**: >80% satisfaction
**Measurement**: Post-migration surveys (T+1 day, T+30 days)

---

## Goal-to-Outcome Mapping

### Outcome O-1: Zero Compliance Violations

**Supported Goals**: G-1 (Migration completion), G-3 (Security compliance)

**Outcome Statement**: "Maintain zero compliance audit findings, renew cyber insurance without exceptions, and pass ISO 27001 recertification by Month 12"

**Measurement Details**:
- **KPIs**: Compliance audit findings (target: 0), Cyber insurance renewal status (target: approved), ISO 27001 recertification (target: passed)
- **Current Value**: 3 findings (unsupported OS), cyber insurance with Windows 10 EOL exception clause
- **Target Value**: 0 findings, insurance renewed unconditionally, ISO cert maintained
- **Data Source**: Compliance audit reports, insurance broker communications, ISO auditor reports

**Business Value**:
- **Financial Impact**: Avoid £500K-£2M penalties from breaches, maintain £[X]M cyber insurance coverage
- **Strategic Impact**: Maintain customer trust, competitive advantage in regulated sectors
- **Risk Impact**: Eliminate board-level security risk from unsupported OS

**Stakeholder Benefits**:
- **CISO**: Career risk eliminated, board credibility maintained, no breach liability
- **CIO**: Executive team confidence in IT security posture
- **Compliance Officer**: Clean audit record, regulatory relationship maintained

---

### Outcome O-2: £[X]M Annual Cost Reduction

**Supported Goals**: G-2 (Cost reduction), G-7 (ConfigMgr decommission)

**Outcome Statement**: "Achieve £[X]M annual operational cost savings through ConfigMgr infrastructure decommissioning, reduced labor, and operational efficiencies by Month 24"

**Measurement Details**:
- **KPIs**: Annual IT infrastructure OpEx, Cost per device managed, IT labor allocation
- **Current Value**: £[Y]M/year
- **Target Value**: £[Y-X]M/year (£[X]M savings)
- **Measurement Frequency**: Monthly cost tracking, quarterly CFO reviews

**Business Value**:
- **Financial Impact**: £[X]M/year OpEx reduction, 24-month ROI on £[Z]M migration investment
- **Operational Impact**: 40% reduction in endpoint management labor, redeployment of 1-2 FTEs to strategic projects

**Timeline**:
- **Month 0-6**: Minimal savings (co-management period)
- **Month 7-12**: 50% savings realized (partial ConfigMgr decommission)
- **Month 13-18**: 80% savings realized
- **Month 18+**: 100% savings realized (full ConfigMgr decommission)

**Stakeholder Benefits**:
- **CFO**: Cost reduction targets met, ROI demonstrated to Board, margin improvement
- **CIO**: Demonstrates IT efficiency, frees budget for AI/innovation investments
- **IT Operations**: Team capacity freed for strategic work vs infrastructure firefighting

---

### Outcome O-3: High User Productivity Maintained

**Supported Goals**: G-4 (Low support tickets), G-6 (User satisfaction), G-8 (Low rollback rate), G-9 (Minimal downtime)

**Outcome Statement**: "Maintain >80% user satisfaction, <2 hours downtime per user, and <2% support ticket rate, proving migration did not disrupt business operations"

**Measurement Details**:
- **KPIs**: User satisfaction NPS (>80%), Average downtime per device (<2hr), Support ticket rate (<2%)
- **Current Value**: NPS 65%, Downtime varies (reimaging takes 4-8hr), Ticket rate 1.7% baseline
- **Target Value**: NPS >80%, Downtime <2hr, Ticket rate <2%
- **Measurement Frequency**: Weekly ticket tracking, post-migration surveys

**Business Value**:
- **Financial Impact**: Zero productivity loss from migration (6000 users × £[X]/hr × 0hr lost = £0 loss vs £[Y]M potential loss from bad migration)
- **Operational Impact**: No business disruption, maintained service delivery
- **Customer Impact**: No downstream impact on customer-facing operations

**Leading Indicators**: Pilot phase NPS >75%, Early adopter ticket rate <3%, OneDrive sync health 100%

**Lagging Indicators**: Production NPS >80% (Month 24), Support ticket rate normalized to baseline (Month 12)

**Stakeholder Benefits**:
- **End Users**: Minimal disruption, data preserved, applications work, responsive support
- **IT Operations**: No executive escalations, reputation intact, promotion case strengthened
- **Helpdesk**: Manageable ticket volume, team not overwhelmed, SLAs maintained
- **Business Units**: No productivity loss, revenue operations unaffected

---

### Outcome O-4: Cloud-Native IT Capability Established

**Supported Goals**: G-7 (ConfigMgr decommission), G-10 (Copilot+ PC adoption), G-2 (Cost reduction)

**Outcome Statement**: "Achieve 100% cloud-native endpoint management via InTune (zero on-prem dependencies), deploy 30% Copilot+ PCs in Year 1, and position organization for AI-powered productivity"

**Measurement Details**:
- **KPIs**: % devices InTune-only managed (target 100%), % Copilot+ PCs (target 30% Year 1), ConfigMgr decommissioned (target Month 18)
- **Current Value**: 0% InTune-only (100% ConfigMgr), 0% Copilot+ PCs
- **Target Value**: 100% InTune-only (Month 18), 30% Copilot+ PCs (Month 12)

**Business Value**:
- **Strategic Impact**: Future-ready for Microsoft 365 Copilot, competitive advantage in AI productivity, cloud-first IT culture established
- **Operational Impact**: Remote device management without VPN, modern zero-touch provisioning, reduced datacenter footprint
- **Talent Impact**: Attract digital talent preferring modern tech stack

**Stakeholder Benefits**:
- **CIO**: Board-level strategic modernization success story, positioning for future AI investments
- **CFO**: Infrastructure cost reduction, improved capital efficiency (cloud OpEx vs CapEx)
- **Enterprise Architect**: Architectural precedent for cloud-first strategy in future projects

---

## Traceability Matrix (Key Stakeholders)

| Stakeholder | Driver | Goal | Outcome | Satisfied? |
|-------------|--------|------|---------|-----------|
| CISO | SD-1: Eliminate Windows 10 EOL risk | G-1: 95% migrated by Sep 2025 | O-1: Zero compliance violations | ✅ Yes (if migration completes on time) |
| CISO | SD-1: Security compliance | G-3: 100% device compliance | O-1: Zero compliance violations | ✅ Yes (if compliance targets met) |
| CFO | SD-2: Reduce IT costs | G-2: £[X]M annual savings | O-2: £[X]M cost reduction | ✅ Yes (if ConfigMgr decommissioned Month 18) |
| CFO | SD-2: ROI within 24 months | G-2: Cost reduction | O-2: £[X]M savings | ⚠️ Partial (ROI depends on avoiding budget overruns) |
| IT Ops Director | SD-3: Risk-free execution | G-1: 95% migration success | O-3: No business disruption | ✅ Yes (if phased rollout successful) |
| IT Ops Director | SD-3: Protect reputation | G-4: <2% support tickets | O-3: High user satisfaction | ✅ Yes (if helpdesk trained, apps tested) |
| End Users | SD-4: Don't break my work | G-6: >80% satisfaction | O-3: <2hr downtime, zero data loss | ✅ Yes (if OneDrive KFM, app compatibility validated) |
| End Users | SD-4: Minimal disruption | G-9: <2hr downtime | O-3: Maintained productivity | ✅ Yes (if Autopilot performs <30min) |
| CIO | SD-5: Strategic modernization | G-7: ConfigMgr decommission | O-4: Cloud-native capability | ✅ Yes (if 18-month timeline met) |
| CIO | SD-5: AI productivity | G-10: 30% Copilot+ PCs | O-4: Future-ready platform | ⚠️ Partial (depends on budget approval, ARM64 compatibility) |
| Helpdesk Mgr | SD-6: Avoid ticket tsunami | G-4: <2% support tickets | O-3: Manageable workload | ✅ Yes (if training, phased rollout effective) |
| Enterprise Architect | SD-7: Governance excellence | G-12: Zero unapproved exceptions | O-5: Architectural precedent | ✅ Yes (if exception process enforced) |

---

## Conflict Analysis & Resolution

### Conflict 1: Speed vs. Risk

**Competing Drivers**:
- **CFO (SD-2)** wants rapid migration to start cost savings sooner (prefer 12-month timeline)
- **IT Operations (SD-3)** needs slow, careful phased rollout to minimize risk (prefer 24-month timeline)

**Impact**: Timeline tension creates pressure to skip testing phases or rush production waves, increasing failure risk

**Resolution Strategy**:
- **Compromise**: 18-month timeline with aggressive early phases, conservative later phases
- **Quick wins**: Migrate low-risk IT staff first (pilot) to generate early learnings and cost savings visibility
- **Risk mitigation**: Pause criteria enforced (>10% failure rate stops deployment)
- **CFO buy-in**: Show that failed migration costs £[Y]M in productivity loss + 6-month recovery, far exceeding savings from speed

---

### Conflict 2: Innovation vs. Stability

**Competing Drivers**:
- **CIO (SD-5)** wants Copilot+ PC adoption for AI productivity and modernization visibility
- **IT Operations (SD-3)** concerned about ARM64 application compatibility unknowns and support complexity
- **CFO (SD-2)** resists Copilot+ PC premium pricing (£100-300 per device)

**Impact**: Copilot+ PC adoption may be deprioritized, missing strategic AI opportunity

**Resolution Strategy**:
- **Phased approach**: 50-100 device Copilot+ PC pilot (IT staff, early adopters) to validate ARM64 compatibility before scaling
- **Risk reduction**: Prioritize x64 Copilot+ PCs (Intel/AMD) over ARM64 (Qualcomm) initially - full app compatibility, lower risk
- **Budget compromise**: 30% Copilot+ in Year 1 (not 100%), prioritize executives and knowledge workers with highest productivity ROI
- **Proof point**: Measure productivity gains in pilot (10-15% expected) to justify premium pricing to CFO

---

### Synergy 1: Security + Compliance Alignment

**Aligned Drivers**:
- **CISO (SD-1)** security requirements perfectly match **Windows 11 built-in capabilities** (TPM 2.0, Secure Boot, Defender EDR, BitLocker)
- **Compliance Officer** audit requirements satisfied by same controls
- **Enterprise Architect (SD-7)** governance desire for immutable security principles aligns with CISO needs

**Value**: Zero-Trust security achieved "for free" via Windows 11 hardware requirements + InTune policies, no custom security solutions needed

---

### Synergy 2: User Experience + Cost Efficiency

**Aligned Drivers**:
- **End Users (SD-4)** want zero data loss → OneDrive KFM provides cloud backup
- **CFO (SD-2)** wants reduced costs → OneDrive eliminates need for backup infrastructure
- **IT Operations (SD-3)** wants risk mitigation → OneDrive enables safe device wipes/rollbacks

**Value**: Single solution (OneDrive KFM) satisfies user experience, cost reduction, and risk mitigation simultaneously

---

## Communication Plan (Key Messages)

### For CFO:
**Message**: "This migration delivers £[X]M annual cost savings (Month 18) while avoiding £[Y]M potential productivity loss from failed execution. 18-month timeline balances speed with risk mitigation."

**Talking Points**:
- ConfigMgr decommissioning eliminates £[X]M datacenter costs
- Autopilot reduces deployment time from [X]hr to 30min (labor savings)
- Phased rollout prevents catastrophic failure costing £[Y]M in productivity loss
- 24-month ROI on migration investment

**Frequency**: Monthly Steering Committee meetings, quarterly CFO 1:1s

---

### For CISO:
**Message**: "Windows 11 eliminates unsupported OS risk before October 2025 EOL, achieving Zero Trust security via built-in controls (TPM 2.0, BitLocker, Defender EDR, Conditional Access). Cyber insurance renewed unconditionally."

**Talking Points**:
- 95% migration by Sep 2025 (6 weeks buffer before EOL)
- 100% device compliance with security policies (Month 12)
- Zero P1 security incidents target
- ISO 27001 recertification maintained

**Frequency**: Weekly security status calls, bi-weekly Steering Committee

---

### For End Users:
**Message**: "Your files are automatically backed up to OneDrive. Migration takes <2 hours. All your applications will work. If anything goes wrong, we can roll back within 10 days. Helpdesk is trained and ready to help."

**Talking Points**:
- Zero data loss (OneDrive backup verified before migration)
- <2hr downtime (scheduled during low-usage period)
- All tested applications available post-migration
- Simple training guide + helpdesk support
- 10-day rollback window if issues occur

**Frequency**: T-30, T-14, T-7, T-1 communications via email + intranet + department champions

---

## Change Impact & Resistance

| Stakeholder | Change Impact | Resistance Risk | Mitigation |
|-------------|---------------|-----------------|------------|
| **CISO** | LOW (enables better security) | LOW (strong supporter) | Champion - enlist as executive advocate |
| **CFO** | LOW (reduces costs) | MEDIUM (timeline concerns) | Show ROI model, demonstrate risk of rushing |
| **IT Operations** | HIGH (new technology, skillset) | MEDIUM (fear of failure) | Comprehensive training, vendor support, phased rollout |
| **End Users** | MEDIUM (UI changes, learning curve) | MEDIUM-HIGH (change fatigue) | Clear communication, simple training, responsive support |
| **Helpdesk** | HIGH (new troubleshooting tools) | MEDIUM (overwhelm risk) | 18hr training, InTune Remote Help, knowledge base |
| **Enterprise Architect** | LOW (enables governance) | LOW (strong supporter) | Champion - enlist to enforce principles |

**Champions**: CISO, CIO, Enterprise Architect
**Fence-sitters**: CFO (needs ROI proof), Helpdesk Manager (needs capacity assurance)
**Resisters**: Application Owners (fear compatibility issues), Conservative End Users (prefer status quo)

---

## Critical Risks

### R-1: Migration Timeline Slips Past Windows 10 EOL

**Related Stakeholders**: CISO (compliance), CIO (strategic), IT Operations (execution)

**Risk**: Hardware supply chain delays, vendor capacity constraints, or application blockers cause migration to extend past October 2025 Windows 10 EOL

**Impact on Goals**: G-1 (migration completion), O-1 (zero compliance violations)

**Probability**: MEDIUM | **Impact**: CRITICAL

**Mitigation**: 6-week buffer (Sep 1 target), early hardware procurement, application testing in parallel, vendor capacity committed

**Contingency**: If slippage occurs, purchase Extended Security Updates (ESU) for remaining Windows 10 devices at £[X] per device per year

---

### R-2: Support Ticket Volume Overwhelms Helpdesk

**Related Stakeholders**: Helpdesk Manager, IT Operations, End Users

**Risk**: Poor training, unexpected application issues, or inadequate communication generates >5% support ticket rate, overwhelming 30-person helpdesk team

**Impact on Goals**: G-4 (support tickets), G-6 (user satisfaction), O-3 (productivity maintained)

**Probability**: MEDIUM | **Impact**: HIGH

**Mitigation**: Comprehensive helpdesk training (18hr), pilot phase validation, phased rollout (limits blast radius to 500-1000 users per wave), pause criteria enforced

**Contingency**: Contract temporary helpdesk augmentation (10 FTEs, £[X]K cost), extend wave timelines to reduce concurrent support load

---

### R-3: Budget Overruns Eliminate ROI

**Related Stakeholders**: CFO, CIO

**Risk**: Hardware refresh costs exceed estimates, professional services overrun, or unexpected issues require additional vendor support, eliminating cost savings

**Impact on Goals**: G-2 (cost reduction), O-2 (£[X]M savings)

**Probability**: MEDIUM | **Impact**: HIGH

**Mitigation**: 10% contingency budget, fixed-price vendor contracts where possible, phased hardware procurement based on actual compatibility assessment

**Contingency**: Scale back Copilot+ PC adoption (revert to standard Windows 11 devices), extend ConfigMgr decommissioning timeline to reduce migration pace/cost

---

## Governance & Decision Rights (RACI)

| Decision | Responsible | Accountable | Consulted | Informed |
|----------|-------------|-------------|-----------|----------|
| **Budget approval** | CFO | CIO | IT Ops, Finance | All stakeholders |
| **Migration timeline** | IT Ops Director | CIO | CISO, Enterprise Architect | CFO, Users |
| **Architecture principles exceptions** | Enterprise Architect | CIO/CTO | CISO, IT Ops | All |
| **Go/no-go per wave** | IT Ops Director | CIO | CISO, Helpdesk, Change Mgmt | All |
| **Hardware replacement strategy** | IT Ops Director | CFO | Procurement, End User Reps | All |
| **Security policy configuration** | Security Architect | CISO | IT Ops, Compliance | Enterprise Architect |
| **Application compatibility decisions** | Application Owners | IT Ops Director | End Users, Enterprise Architect | CIO |
| **User communication** | Change Manager | IT Ops Director | HR, Dept Champions | All users |

**Escalation Path**:
1. **Level 1**: Project Manager (day-to-day issues, <£10K decisions)
2. **Level 2**: IT Operations Director + Steering Committee (scope/timeline/budget variances, £10-100K decisions)
3. **Level 3**: CIO + CFO (strategic pivots, >£100K decisions, mission-critical escalations)

---

## Success Metrics Summary

| Metric | Baseline | Target | Timeline | Owner | Status Tracking |
|--------|----------|--------|----------|-------|----------------|
| **Migration completion** | 0% | 95% | Sep 2025 | IT Ops | Weekly InTune dashboard |
| **Security compliance** | 70% | 100% | Month 12 | CISO | Weekly InTune compliance report |
| **Cost savings** | £0 | £[X]M/year | Month 24 | CFO | Monthly finance reports |
| **Support ticket rate** | 1.7% baseline | <2% | Ongoing | Helpdesk Mgr | Weekly ServiceNow reports |
| **User satisfaction** | NPS 65% | NPS >80% | T+30 days | Change Mgr | Post-migration surveys |
| **Rollback rate** | N/A | <5% | Per wave | IT Ops | Weekly migration metrics |
| **Downtime per device** | 4-8hr (reimage) | <2hr | Per device | IT Ops | Autopilot Endpoint Analytics |
| **ConfigMgr decommission** | 100% usage | 0% usage | Month 18 | IT Ops | Monthly infrastructure tracking |
| **Copilot+ PC adoption** | 0% | 30% | Month 12 | CIO/CFO | Monthly procurement tracking |

---

## Next Steps

1. **Immediate (Week 1)**: Present stakeholder analysis to Steering Committee for validation
2. **Week 2**: Conduct 1:1 validation sessions with CISO, CFO, IT Ops Director to confirm drivers
3. **Week 3**: Integrate stakeholder outcomes into requirements prioritization (link to requirements.md)
4. **Week 4**: Publish stakeholder communication plan with timeline (T-90 to T+30 days)
5. **Month 2**: Track early indicators (hardware assessment completion, app testing progress) against stakeholder timelines
6. **Ongoing**: Update stakeholder drivers quarterly as context changes (budget shifts, org changes, external pressures)

---

## Approval

| Stakeholder | Role | Review Date | Status |
|-------------|------|-------------|--------|
| CIO | Executive Sponsor | | PENDING |
| CFO | Budget Owner | | PENDING |
| CISO | Security Executive | | PENDING |
| IT Operations Director | Project Owner | | PENDING |
| Enterprise Architect | EA Oversight | | PENDING |

---

**Document Control**:
- **Version**: 2.0
- **Classification**: INTERNAL
- **Next Review**: Quarterly during project lifecycle
- **Document Owner**: Enterprise Architecture Team

**Version History**:

| Version | Date | Changes | Impact |
|---------|------|---------|--------|
| 1.0 | 2025-10-20 | Initial stakeholder drivers analysis | Baseline |
| 2.0 | 2025-10-28 | Updated for Requirements v5.0 alignment - **Confirmed organizational security governance approach** (CAB approval, Security Impact Assessment, Security Architecture Review). No stakeholder driver changes required as document did not contain MOD CAAT-specific references. All stakeholder goals remain unchanged and aligned with corrected requirements. | No material changes - stakeholder drivers already aligned with organizational security governance |
