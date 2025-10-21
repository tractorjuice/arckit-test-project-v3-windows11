# Risk Register: Windows 11 Migration with Microsoft InTune

**Document Type**: Risk Management
**Project ID**: 001
**Version**: 1.0
**Date**: 2025-10-21
**Status**: ACTIVE
**Framework**: HM Treasury Orange Book (2023)
**Owner**: IT Operations Director
**Next Review**: 2025-11-21

---

## Executive Summary

### Risk Profile Overview

**Total Risks Identified**: 20 risks across 6 Orange Book categories

**Risk Distribution by Category**:
- STRATEGIC: 4 risks
- OPERATIONAL: 6 risks
- FINANCIAL: 3 risks
- COMPLIANCE/REGULATORY: 3 risks
- REPUTATIONAL: 2 risks
- TECHNOLOGY: 2 risks

**Risk Profile by Severity**:
- **Critical** (score 20-25): 3 risks
- **High** (score 13-19): 6 risks
- **Medium** (score 6-12): 8 risks
- **Low** (score 1-5): 3 risks

**Overall Risk Assessment**: **CONCERNING** - Project has 3 critical risks and 6 high risks requiring immediate attention. Without effective mitigation, project success is at significant risk.

**Inherent Risk Score**: 282/500 (56% - High)
**Residual Risk Score**: 162/500 (32% - Medium) after controls
**Risk Reduction**: 43% through planned mitigations

**Risks Requiring Immediate Escalation**: 9 risks (3 Critical + 6 High)

### Top 5 Critical/High Risks

1. **R-001 (STRATEGIC, Critical 20)**: Migration timeline slips past Windows 10 EOL - Owner: IT Operations Director
2. **R-002 (OPERATIONAL, Critical 20)**: Support ticket volume overwhelms helpdesk capacity - Owner: Helpdesk Manager
3. **R-003 (FINANCIAL, Critical 20)**: Budget overruns eliminate ROI and cost savings - Owner: CFO
4. **R-004 (TECHNOLOGY, High 16)**: Application compatibility failures block user productivity - Owner: IT Operations Director
5. **R-005 (TECHNOLOGY, High 16)**: ARM64 Copilot+ PC application compatibility issues - Owner: IT Operations Director

### 4Ts Response Distribution

- **Treat**: 14 risks (70%) - Active mitigation planned
- **Tolerate**: 4 risks (20%) - Within acceptable limits
- **Transfer**: 1 risk (5%) - Cyber insurance
- **Terminate**: 1 risk (5%) - Cancel risky activity

### Governance and Compliance

**Orange Book Compliance**: ✅ All 5 principles addressed
- ✅ Governance and Leadership: Risk owners assigned from senior stakeholders
- ✅ Integration: Risks linked to stakeholder drivers, goals, and outcomes
- ✅ Collaboration: Risks sourced from stakeholder concerns and conflicts
- ✅ Risk Processes: Systematic identification, assessment, response, monitoring
- ✅ Continual Improvement: Monthly review framework established

**Stakeholder Integration**: All 20 risks have owners from stakeholder RACI matrix (stakeholder-drivers.md)

**Architecture Principles Integration**: 18 architecture principles reviewed; 12 non-compliance scenarios identified as risks

### Recommended Actions

**Immediate (Week 1)**:
1. Escalate 3 critical risks to CIO + Steering Committee
2. Secure contingency budget (10% = £[X]K) for risk mitigation
3. Accelerate hardware procurement to mitigate timeline risk
4. Expand helpdesk training budget by £50K

**Short-term (Month 1)**:
1. Complete application compatibility testing for top 50 apps
2. Implement InTune monitoring dashboards
3. Procure Extended Security Updates (ESU) as contingency
4. Contract temporary helpdesk capacity (10 FTEs on standby)

**Medium-term (Months 2-6)**:
1. Monthly risk review with Steering Committee
2. Quarterly risk register updates
3. Lessons learned after each deployment wave

---

## Risk Matrix Visualization

### Inherent Risk Matrix (Before Controls)

```
LIKELIHOOD ↑
    5 | R-001| R-002| R-003|      |      |  ← Almost Certain
    4 |      | R-004| R-005| R-006| R-007|
    3 | R-008| R-009| R-010| R-011|      |  ← Possible
    2 | R-012| R-013| R-014| R-015|      |
    1 | R-016| R-017| R-018| R-019| R-020|  ← Rare
      +----------------------------------→
        1     2     3     4     5
             IMPACT →

Legend:
Critical (20-25): R-001, R-002, R-003
High (13-19): R-004, R-005, R-006, R-007, R-010, R-011
Medium (6-12): R-008, R-009, R-012, R-013, R-014, R-015
Low (1-5): R-016, R-017, R-018, R-019, R-020
```

### Residual Risk Matrix (After Controls)

```
LIKELIHOOD ↑
    5 |      |      |      |      |      |  ← Almost Certain
    4 |      |      |      |      |      |
    3 |      | R-001| R-002| R-003| R-004|  ← Possible
    2 | R-005| R-006| R-007| R-008| R-009|
    1 | R-010| R-011| R-012| R-013| R-014|  ← Rare
      +----------------------------------→
        1     2     3     4     5
             IMPACT →

Risk Movement Summary:
- R-001: Critical (25) → High (15) - 40% reduction
- R-002: Critical (25) → High (12) - 52% reduction
- R-003: Critical (25) → High (15) - 40% reduction
- Average risk reduction: 43%
```

---

## Top 10 Risks (by Residual Score)

| Rank | ID | Title | Category | Inherent | Residual | Owner | Status | Response |
|------|-----|-------|----------|----------|----------|-------|--------|----------|
| 1 | R-001 | Migration timeline slips past Windows 10 EOL | STRATEGIC | 25 | 15 | IT Ops Director | In Progress | Treat |
| 2 | R-003 | Budget overruns eliminate ROI | FINANCIAL | 25 | 15 | CFO | In Progress | Treat |
| 3 | R-004 | Application compatibility failures | TECHNOLOGY | 16 | 12 | IT Ops Director | In Progress | Treat |
| 4 | R-005 | ARM64 application compatibility issues | TECHNOLOGY | 16 | 10 | IT Ops Director | In Progress | Treat |
| 5 | R-002 | Support ticket volume overwhelms helpdesk | OPERATIONAL | 25 | 9 | Helpdesk Manager | In Progress | Treat |
| 6 | R-006 | Hardware supply chain delays | OPERATIONAL | 16 | 9 | IT Ops Director | In Progress | Treat |
| 7 | R-007 | Insufficient InTune skills in IT team | OPERATIONAL | 16 | 8 | IT Ops Director | In Progress | Treat |
| 8 | R-010 | User resistance and change fatigue | OPERATIONAL | 12 | 8 | Change Manager | In Progress | Treat |
| 9 | R-011 | GDPR non-compliance (Recall feature) | COMPLIANCE | 12 | 6 | CISO | Open | Treat |
| 10 | R-008 | CIO/CFO timeline conflict | STRATEGIC | 9 | 6 | CIO | In Progress | Treat |

---

## Detailed Risk Register

### STRATEGIC RISKS

#### R-001: Migration Timeline Slips Past Windows 10 EOL

**Category**: STRATEGIC
**Status**: In Progress
**Risk Owner**: IT Operations Director
**Action Owner**: Project Manager

**Risk Description**:
Migration extends beyond October 2025 Windows 10 End of Life deadline due to hardware supply chain delays, vendor capacity constraints, or application compatibility blockers. Organization left with unsupported Windows 10 devices creating security vulnerabilities and compliance violations.

**Root Cause**:
- Aggressive 18-month timeline with limited buffer (only 6 weeks)
- Hardware supply chain volatility (30% of devices require replacement)
- Vendor capacity constraints during peak migration period
- Unknown application compatibility issues not discovered until testing

**Trigger Events**:
- Hardware delivery delays >30 days
- Application testing reveals critical blockers requiring vendor patches
- Vendor professional services capacity unavailable during planned waves
- Unexpected business disruption (merger, reorganization) pauses migration

**Consequences if Realized**:
- **Compliance**: Cyber insurance voided, ISO 27001 recertification failed
- **Security**: Unsupported OS = unpatched vulnerabilities, increased breach risk
- **Financial**: £[X]K/month ESU costs, potential breach penalties £500K-£2M
- **Reputational**: Board confidence in IT leadership damaged, CIO/IT Ops credibility at risk

**Affected Stakeholders**: CISO (compliance), CIO (strategic), IT Operations (execution), Compliance Officer
**Related Objectives**: G-1 (95% migration by Sep 2025), O-1 (Zero compliance violations)

**Inherent Risk Assessment** (Before Controls):
- **Likelihood**: 5 (Almost Certain) - Aggressive timeline, many dependencies
- **Impact**: 5 (Catastrophic) - Compliance failure, security breach risk, board-level issue
- **Inherent Score**: 25 (CRITICAL)

**Current Controls**:
- 6-week buffer (Sep 1 target vs Oct 14 EOL)
- Phased rollout allows course correction
- Weekly migration status tracking
- Hardware procurement started early (Month 0)

**Control Effectiveness**: Adequate

**Residual Risk Assessment** (After Controls):
- **Likelihood**: 3 (Possible) - Controls reduce but don't eliminate risk
- **Impact**: 5 (Catastrophic) - Impact unchanged if risk materializes
- **Residual Score**: 15 (HIGH)

**Risk Response (4Ts)**: **TREAT**

**Additional Mitigations Needed**:
1. Procure Extended Security Updates (ESU) as contingency (cost: £[X] per device/year)
2. Establish vendor capacity commitments in writing with SLA penalties
3. Accelerate application testing to Month 1 (vs Month 2) to identify blockers early
4. Add 4 weeks to timeline buffer (target Aug 1 vs Sep 1) - requires CFO approval
5. Identify 500-1000 "low-risk" devices for emergency fast-track migration if slippage occurs

**Actions**:
| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Procure ESU licenses as insurance policy | IT Ops | 2025-11-15 | Open |
| Finalize vendor capacity commitments | Procurement | 2025-11-01 | Open |
| Accelerate app testing by 4 weeks | IT Ops | 2025-11-01 | In Progress |
| Request timeline extension (Aug 1 target) | CIO → CFO | 2025-10-31 | Open |

**Target Residual Risk**: 10 (Medium) - Likelihood reduced to 2 (Unlikely)

**Success Criteria**:
- 95% migration complete by Sep 1, 2025 (6 weeks before EOL)
- ESU procurement complete as fallback for remaining 5%
- Zero devices on unsupported Windows 10 by Oct 14, 2025

**Monitoring Frequency**: Weekly Steering Committee review

---

#### R-008: CIO/CFO Timeline Conflict (Speed vs. Risk)

**Category**: STRATEGIC
**Status**: In Progress
**Risk Owner**: CIO
**Action Owner**: Enterprise Architect

**Risk Description**:
CFO pressure for rapid migration (12-month timeline) to accelerate cost savings conflicts with IT Operations need for phased 18-month rollout to mitigate execution risk. Pressure to skip testing phases or rush production waves increases failure probability.

**Root Cause**:
- CFO driver SD-2: "Need ROI within 24 months" creates timeline urgency
- IT Ops driver SD-3: "Cannot afford failed migration" creates conservatism
- Previous failed Windows 7 migration created 6-month recovery period
- Board mandate for 15% IT cost reduction increases CFO pressure

**Trigger Events**:
- CFO mandates 12-month timeline at Steering Committee
- Board questions migration pace at quarterly reviews
- Early ConfigMgr decommissioning to realize savings faster

**Consequences if Realized**:
- Testing phases compressed, issues escape to production
- Higher failure rates, increased rollbacks
- User satisfaction declines, helpdesk overwhelmed
- IT Operations reputation damaged (similar to Windows 7 failure)

**Affected Stakeholders**: CIO, CFO, IT Operations Director
**Related Objectives**: G-2 (Cost savings), G-1 (Migration completion), O-3 (User satisfaction)

**Inherent Risk Assessment**:
- **Likelihood**: 3 (Possible) - Known stakeholder conflict
- **Impact**: 3 (Moderate) - Operational disruption, reputation damage
- **Inherent Score**: 9 (MEDIUM)

**Current Controls**:
- 18-month timeline compromise (vs 12-month CFO preference, 24-month IT Ops preference)
- CIO as executive sponsor mediating CFO/IT Ops conflict
- Pause criteria (>10% failure rate stops deployment)
- ROI model showing failed migration costs £[Y]M vs savings from speed

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 3 (Moderate)
- **Residual Score**: 6 (MEDIUM)

**Risk Response**: **TREAT**

**Actions**:
| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Present ROI model to CFO (failure cost analysis) | CIO | 2025-11-01 | Open |
| Document pause criteria in governance charter | Enterprise Arch | 2025-10-31 | In Progress |
| Establish Steering Committee escalation process | PMO | 2025-10-31 | Open |

**Target Residual Risk**: 4 (Low)

---

#### R-009: Strategic Direction Change Mid-Project

**Category**: STRATEGIC
**Status**: Open
**Risk Owner**: CIO
**Action Owner**: CIO

**Risk Description**:
Organizational strategic changes (merger, acquisition, new CIO, board mandate) redirect IT priorities mid-migration, pausing or canceling Windows 11 project before completion.

**Root Cause**:
- Private equity ownership creates potential for portfolio changes
- CIO tenure only 18 months (relatively new)
- Competitive pressure may force different technology bets

**Trigger Events**:
- Merger/acquisition announcement
- CIO departure or replacement
- Board strategic pivot (e.g., shift to VDI instead of physical devices)

**Consequences if Realized**:
- Partial migration creates two-tier estate (Windows 10 + Windows 11)
- Sunk costs in hardware, licenses, vendor contracts
- Morale damage from abandoned project
- Windows 10 EOL deadline still looms

**Affected Stakeholders**: CIO, IT Operations, All Users
**Related Objectives**: All goals (G-1 through G-14)

**Inherent Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 4 (Major)
- **Inherent Score**: 8 (MEDIUM)

**Current Controls**:
- CIO executive sponsorship provides air cover
- Board-level compliance mandate (Windows 10 EOL) hard to ignore
- Cyber insurance requirements create external forcing function

**Control Effectiveness**: Adequate

**Residual Risk Assessment**:
- **Likelihood**: 1 (Rare)
- **Impact**: 4 (Major)
- **Residual Score**: 4 (LOW)

**Risk Response**: **TOLERATE**

**Justification**: Low likelihood + strong external drivers (EOL, compliance) make this acceptable risk. Cost of mitigation exceeds benefit.

---

#### R-015: Copilot+ PC Strategy Fails to Deliver ROI

**Category**: STRATEGIC
**Status**: Open
**Risk Owner**: CIO
**Action Owner**: Enterprise Architect

**Risk Description**:
30% Copilot+ PC adoption goal (G-10) fails to deliver promised productivity gains (10-15%), making premium pricing unjustifiable. CFO cancels Copilot+ procurement after pilot.

**Root Cause**:
- Unproven productivity ROI for Copilot+ AI features
- £100-300 premium per device significant in cost-conscious environment
- Users may not adopt AI features (Windows Studio Effects, Recall, etc.)

**Trigger Events**:
- Pilot results show <5% productivity improvement
- User adoption of AI features <20% in pilot
- CFO budget pressure increases

**Consequences if Realized**:
- CIO strategic modernization goal (SD-5) not achieved
- £[X]K wasted on pilot devices
- Revert to standard Windows 11 devices (less future-proof)
- CIO credibility with Board damaged

**Affected Stakeholders**: CIO, CFO, Enterprise Architect
**Related Objectives**: G-10 (30% Copilot+ adoption), O-4 (Cloud-native capability)

**Inherent Risk Assessment**:
- **Likelihood**: 3 (Possible)
- **Impact**: 2 (Minor)
- **Inherent Score**: 6 (MEDIUM)

**Current Controls**:
- 50-100 device pilot to validate before scaling
- User feedback surveys during pilot
- Prioritize x64 Copilot+ PCs (Intel/AMD) over ARM64 for compatibility
- Phased approach: 30% Year 1, scale to 70% Year 2 only if validated

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 2 (Minor)
- **Residual Score**: 4 (LOW)

**Risk Response**: **TOLERATE**

**Justification**: Pilot approach de-risks investment. If ROI not proven, can pivot to standard devices without major impact.

---

### OPERATIONAL RISKS

#### R-002: Support Ticket Volume Overwhelms Helpdesk

**Category**: OPERATIONAL
**Status**: In Progress
**Risk Owner**: Helpdesk Manager
**Action Owner**: Helpdesk Manager

**Risk Description**:
Migration generates >5% support ticket rate (vs <2% target), overwhelming 30-person helpdesk team. Previous Windows 7 migration generated 400 tickets/week for 6 months (vs 100/week baseline). Helpdesk SLAs collapse, user satisfaction plummets, executive escalations occur.

**Root Cause**:
- 6,000 users × 5% = 300 tickets/week (3x baseline capacity)
- Helpdesk already at capacity with 100 tickets/week baseline
- Complex InTune troubleshooting vs familiar ConfigMgr
- Conditional Access lockout scenarios unfamiliar to helpdesk
- Inadequate training budget (only £30K allocated vs £80K needed)

**Trigger Events**:
- Poor user communication → confusion → high call volume
- Unexpected application compatibility issues
- Windows 11 UI changes confuse users
- Conditional Access misconfiguration locks users out

**Consequences if Realized**:
- Helpdesk SLAs violated (>4hr resolution time)
- User satisfaction <50% (vs >80% target)
- Executive escalations damage IT reputation
- Helpdesk morale collapses, attrition increases
- Helpdesk Manager performance improvement plan at risk

**Affected Stakeholders**: Helpdesk Manager (SD-6), IT Operations (SD-3), End Users (SD-4)
**Related Objectives**: G-4 (<2% support tickets), G-6 (>80% user satisfaction), O-3 (High productivity)

**Inherent Risk Assessment**:
- **Likelihood**: 5 (Almost Certain) - Historical precedent, capacity constraints
- **Impact**: 5 (Catastrophic) - Business disruption, executive escalations
- **Inherent Score**: 25 (CRITICAL)

**Current Controls**:
- 18-hour helpdesk training program
- InTune Remote Help for remote troubleshooting
- Phased rollout (500-1000 users/wave) limits blast radius
- Self-service Company Portal
- Knowledge base articles

**Control Effectiveness**: Adequate (insufficient given historical precedent)

**Residual Risk Assessment**:
- **Likelihood**: 3 (Possible)
- **Impact**: 3 (Moderate)
- **Residual Score**: 9 (MEDIUM)

**Risk Response**: **TREAT**

**Additional Mitigations Needed**:
1. **Increase training budget** from £30K to £80K (18hr → 40hr comprehensive training)
2. **Contract temporary helpdesk capacity**: 10 FTEs on standby, £150K (3 months)
3. **Proactive user communication**: T-30/T-14/T-7/T-1 cadence with preparation checklist
4. **Application compatibility testing**: Top 50 apps validated before pilot (vs top 20)
5. **Pause criteria**: >5% ticket rate pauses wave, mandatory issue resolution before resume

**Actions**:
| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Secure additional £50K training budget | CFO approval | 2025-11-01 | Open |
| RFP for temporary helpdesk capacity | Procurement | 2025-11-15 | Open |
| Develop proactive user communication plan | Change Manager | 2025-10-31 | In Progress |
| Expand app testing to top 50 apps | IT Ops | 2025-11-30 | Open |
| Document pause criteria in runbook | PMO | 2025-10-31 | In Progress |

**Target Residual Risk**: 6 (Medium) - Likelihood reduced to 2 (Unlikely)

**Success Criteria**:
- Support ticket rate <2% of deployed users/week
- First contact resolution >70%
- Average resolution time <4hr
- User satisfaction >80%
- Zero P1 incidents requiring executive escalation

**Monitoring Frequency**: Daily during waves, weekly during steady-state

---

#### R-006: Hardware Supply Chain Delays

**Category**: OPERATIONAL
**Status**: In Progress
**Risk Owner**: IT Operations Director
**Action Owner**: Procurement Manager

**Risk Description**:
Global supply chain disruptions delay delivery of replacement devices (30% of estate = 1,800 devices). Lead times extend from 4 weeks to 12+ weeks, blocking migration timeline.

**Root Cause**:
- Global chip shortage affecting PC manufacturing
- Geopolitical tensions impacting supply chains
- Large enterprise orders (1,800 devices) require manufacturing lead time
- TPM 2.0 chips in high demand across industry

**Trigger Events**:
- Vendor notifies of delivery delays
- Component shortages (processors, memory, TPM chips)
- Shipping disruptions (port strikes, logistics issues)

**Consequences if Realized**:
- Migration timeline slips (feeds R-001)
- Users stuck on incompatible Windows 10 devices past EOL
- Costs increase if forced to pay expedite fees
- Wave schedules disrupted, requiring re-planning

**Affected Stakeholders**: IT Operations Director, Procurement, CFO
**Related Objectives**: G-1 (Migration completion), R-001 (Timeline risk)

**Inherent Risk Assessment**:
- **Likelihood**: 4 (Likely) - Industry-wide supply issues documented
- **Impact**: 4 (Major) - Timeline impact, cost escalation
- **Inherent Score**: 16 (HIGH)

**Current Controls**:
- Early procurement (Month 0) to maximize lead time
- Multiple vendor relationships (Dell, HP, Lenovo)
- Phased procurement aligned to wave schedule

**Control Effectiveness**: Adequate

**Residual Risk Assessment**:
- **Likelihood**: 3 (Possible)
- **Impact**: 3 (Moderate)
- **Residual Score**: 9 (MEDIUM)

**Risk Response**: **TREAT**

**Additional Mitigations**:
1. Place bulk orders immediately (Month 0 vs Month 2) for all 1,800 devices
2. Establish vendor SLAs with delivery guarantees + penalties
3. Maintain 10% buffer stock of common configurations
4. Pre-approve expedite budget (£50K) for emergency deliveries

**Actions**:
| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Place bulk hardware orders (all waves) | Procurement | 2025-11-01 | In Progress |
| Negotiate vendor SLAs with delivery guarantees | Procurement | 2025-11-15 | Open |
| Approve £50K expedite budget | CFO | 2025-11-01 | Open |

**Target Residual Risk**: 6 (Medium)

---

#### R-007: Insufficient InTune Skills in IT Team

**Category**: OPERATIONAL
**Status**: In Progress
**Risk Owner**: IT Operations Director
**Action Owner**: IT Operations Director

**Risk Description**:
IT Operations team lacks InTune cloud-native management expertise. Team experienced with ConfigMgr on-prem infrastructure but unfamiliar with Azure AD, Conditional Access, Autopilot troubleshooting. Skills gap causes deployment delays, misconfiguration, and inability to troubleshoot issues.

**Root Cause**:
- 10+ years ConfigMgr experience vs 0-1 years InTune experience
- Conservative IT culture (SD-3: Risk-averse IT Ops Director)
- Cloud-first strategy only 18 months old under new CIO
- Limited training budget and time for upskilling

**Trigger Events**:
- InTune policy misconfiguration locks users out
- Autopilot deployment failures unresolved for days
- Conditional Access troubleshooting requires Microsoft support escalation

**Consequences if Realized**:
- Deployment delays extending timeline
- Increased reliance on vendor professional services (cost overruns)
- User disruptions from misconfigurations
- IT team morale declines from feeling incompetent

**Affected Stakeholders**: IT Operations Director (SD-3), IT Operations Team
**Related Objectives**: G-1 (Migration success), G-7 (ConfigMgr decommission), O-4 (Cloud capability)

**Inherent Risk Assessment**:
- **Likelihood**: 4 (Likely)
- **Impact**: 4 (Major)
- **Inherent Score**: 16 (HIGH)

**Current Controls**:
- Vendor professional services engagement (£[X]K)
- Microsoft Premier Support contract
- InTune pilot phase for hands-on learning

**Control Effectiveness**: Adequate

**Residual Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 4 (Major)
- **Residual Score**: 8 (MEDIUM)

**Risk Response**: **TREAT**

**Additional Mitigations**:
1. Structured training program: Microsoft SC-900, MD-102, MS-102 certifications
2. Hire 1-2 InTune-experienced engineers (£80-100K each)
3. Extend vendor professional services engagement by 6 months
4. Implement "buddy system" pairing ConfigMgr experts with cloud engineers
5. Establish monthly knowledge-sharing sessions

**Actions**:
| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Enroll 5 engineers in Microsoft MD-102 course | IT Ops Director | 2025-11-15 | Open |
| Initiate hiring for 2 InTune-experienced engineers | HR + IT Ops | 2025-12-01 | Open |
| Extend vendor services contract | Procurement | 2025-11-01 | In Progress |

**Target Residual Risk**: 4 (Low)

---

#### R-010: User Resistance and Change Fatigue

**Category**: OPERATIONAL
**Status**: In Progress
**Risk Owner**: Change Manager
**Action Owner**: Change Manager

**Risk Description**:
End users resist Windows 11 migration due to change fatigue, fear of disruption, and "if it ain't broke don't fix it" mentality. Low user engagement leads to missed preparation steps (OneDrive sync), confusion during migration, and poor satisfaction scores.

**Root Cause**:
- SD-4 (End User): "Don't break my work" - change-averse, time-constrained
- Previous Windows 7 migration negative experience
- Windows 11 UI changes (Start menu, taskbar) require relearning
- Users don't see personal benefit (security/compliance invisible to them)

**Trigger Events**:
- Users ignore pre-migration communications
- OneDrive Known Folder Move not verified before migration → data loss perception
- Users reject migration schedule, request deferrals
- Negative word-of-mouth spreads among user community

**Consequences if Realized**:
- User satisfaction <60% (vs >80% target)
- Increased support tickets from unprepared users
- Users resist migration, requiring forced deployments
- Productivity loss from users struggling with UI changes

**Affected Stakeholders**: End Users (SD-4), Change Manager, IT Operations
**Related Objectives**: G-6 (>80% user satisfaction), O-3 (High productivity)

**Inherent Risk Assessment**:
- **Likelihood**: 4 (Likely)
- **Impact**: 3 (Moderate)
- **Inherent Score**: 12 (MEDIUM)

**Current Controls**:
- Multi-channel communication plan (T-30 to T+1 days)
- Training materials (guides, videos, quick reference cards)
- Departmental champions for peer support
- OneDrive KFM deployed before migration (automatic data protection)

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 4 (Major)
- **Residual Score**: 8 (MEDIUM)

**Risk Response**: **TREAT**

**Additional Mitigations**:
1. Executive sponsorship messages from CIO emphasizing business need
2. "What's in it for me" messaging: faster performance, better security, AI features
3. Gamification: "Windows 11 Champion" badges for early adopters
4. Lunch-and-learn sessions with IT staff demonstrating new features
5. Migration satisfaction prize draw (£500 gift cards)

**Actions**:
| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Draft CIO executive message | Change Manager | 2025-10-31 | In Progress |
| Create "What's in it for me" FAQ | Change Manager | 2025-11-01 | Open |
| Organize lunch-and-learn sessions (10 sessions) | Change Manager | 2025-11-30 | Open |

**Target Residual Risk**: 4 (Low)

---

#### R-012: Vendor Dependency on Microsoft Cloud Uptime

**Category**: OPERATIONAL
**Status**: Open
**Risk Owner**: IT Operations Director
**Action Owner**: IT Operations Director

**Risk Description**:
100% dependency on Microsoft cloud services (Azure AD, InTune, Autopilot) creates single point of failure. Microsoft outages block device management, user authentication, and new device provisioning.

**Root Cause**:
- Architecture Principle 1: Cloud-First Endpoint Management (no on-prem fallback)
- Azure AD join (not hybrid) means no local AD for authentication
- InTune-only management (ConfigMgr decommissioned Month 18)

**Trigger Events**:
- Microsoft Azure AD outage (3-6 hours)
- InTune service degradation during migration wave
- Global Microsoft 365 outage

**Consequences if Realized**:
- Users unable to authenticate (Azure AD outage)
- Devices cannot be provisioned during outage
- Policy changes cannot be deployed
- Migration waves delayed
- Helpdesk overwhelmed with "cannot login" tickets

**Affected Stakeholders**: IT Operations, All Users
**Related Objectives**: G-1 (Migration timeline), O-3 (Productivity)

**Inherent Risk Assessment**:
- **Likelihood**: 2 (Unlikely) - Microsoft 99.9% SLA
- **Impact**: 4 (Major) - Widespread user impact
- **Inherent Score**: 8 (MEDIUM)

**Current Controls**:
- Microsoft Premier Support with SLA guarantees
- Hybrid Azure AD join option available if needed
- Windows Hello cached credentials (users can login offline)
- ConfigMgr co-management during transition (Months 0-18)

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 1 (Rare)
- **Impact**: 4 (Major)
- **Residual Score**: 4 (LOW)

**Risk Response**: **TOLERATE**

**Justification**: Microsoft 99.9% SLA + cached credentials + co-management during transition provide adequate mitigation. Cost of on-prem fallback infrastructure exceeds benefit.

---

#### R-013: ConfigMgr Decommissioning Before InTune Ready

**Category**: OPERATIONAL
**Status**: Open
**Risk Owner**: IT Operations Director
**Action Owner**: IT Operations Director

**Risk Description**:
CFO pressure to realize cost savings early causes premature ConfigMgr decommissioning (Month 12 vs Month 18 plan). InTune capabilities not mature enough, creating management gaps.

**Root Cause**:
- CFO driver SD-2: "Cut datacenter costs by £[X]M annually"
- G-7 target: ConfigMgr decommissioned Month 18
- Early decommissioning saves additional £[Y]K

**Trigger Events**:
- CFO mandates Month 12 decommissioning
- Datacenter lease early termination opportunity
- InTune migration appears successful in pilot

**Consequences if Realized**:
- Legacy application deployment gaps
- InTune policy coverage incomplete
- Emergency rollback to ConfigMgr impossible
- Support issues increase

**Affected Stakeholders**: CFO, IT Operations Director
**Related Objectives**: G-2 (Cost savings), G-7 (ConfigMgr decommission)

**Inherent Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 3 (Moderate)
- **Inherent Score**: 6 (MEDIUM)

**Current Controls**:
- Documented 18-month timeline with governance approval
- Co-management workload transition plan (phased)
- Monthly InTune capability readiness reviews

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 1 (Rare)
- **Impact**: 3 (Moderate)
- **Residual Score**: 3 (LOW)

**Risk Response**: **TOLERATE**

---

#### R-014: Phased Rollout Coordination Complexity

**Category**: OPERATIONAL
**Status**: Open
**Risk Owner**: IT Operations Director
**Action Owner**: Project Manager

**Risk Description**:
Coordinating 20+ deployment waves across departments, locations, and device types creates logistical complexity. Wave scheduling conflicts with business operations (fiscal year-end, peak seasons).

**Root Cause**:
- 6,000 users across multiple departments and locations
- 500-1000 users per wave = 12-20 waves
- Business operational calendars vary by department
- User travel schedules (field users, sales teams)

**Trigger Events**:
- Wave scheduled during department peak period (e.g., Finance during fiscal close)
- Key executives unavailable during scheduled wave
- Holiday periods reduce available migration windows

**Consequences if Realized**:
- Wave delays push timeline toward EOL deadline
- Business disruption during critical periods
- User satisfaction declines due to inconvenient timing
- Multiple reschedules create confusion

**Affected Stakeholders**: IT Operations, All Departments
**Related Objectives**: G-1 (Migration completion), O-3 (Productivity)

**Inherent Risk Assessment**:
- **Likelihood**: 3 (Possible)
- **Impact**: 2 (Minor)
- **Inherent Score**: 6 (MEDIUM)

**Current Controls**:
- Wave scheduling input from department heads
- Business calendar review before wave planning
- 2-week notice for wave schedules
- Deferral process for emergency conflicts

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 2 (Minor)
- **Residual Score**: 4 (LOW)

**Risk Response**: **TOLERATE**

---

### FINANCIAL RISKS

#### R-003: Budget Overruns Eliminate ROI

**Category**: FINANCIAL
**Status**: In Progress
**Risk Owner**: CFO
**Action Owner**: IT Operations Director + Finance

**Risk Description**:
Migration costs exceed budget estimates, eliminating promised £[X]M annual cost savings and 24-month ROI target. Hardware refresh (30% of devices) costs more than estimated, professional services overrun, or unexpected compatibility remediation requires additional vendor support.

**Root Cause**:
- Hardware costs volatile (supply chain pricing pressure)
- Professional services billed time-and-materials vs fixed-price
- Application remediation unknowns (legacy .NET apps, ARM64 compat)
- Copilot+ PC premium pricing (£100-300 per device × 30% = £[X]K incremental)
- Temporary helpdesk capacity (if needed) = £150K unbudgeted

**Trigger Events**:
- Hardware pricing increases 10-20% due to supply chain
- Vendor professional services scope creep
- Application remediation requires custom development (£[X]K per app)
- Extended Security Updates (ESU) required if timeline slips (£[X]/device/year)

**Consequences if Realized**:
- CFO goal SD-2 (£[X]M savings, 24-month ROI) not achieved
- CFO credibility with Board damaged
- Future IT investments scrutinized more heavily
- Project viewed as failure despite technical success
- CIO budget for future AI/innovation investments reduced

**Affected Stakeholders**: CFO (SD-2), CIO (SD-5), IT Operations
**Related Objectives**: G-2 (£[X]M annual savings), O-2 (£[X]M cost reduction)

**Inherent Risk Assessment**:
- **Likelihood**: 5 (Almost Certain) - Multiple cost pressure sources
- **Impact**: 5 (Catastrophic) - ROI elimination, CFO goal failure
- **Inherent Score**: 25 (CRITICAL)

**Current Controls**:
- Detailed budget model with line-item tracking
- 10% contingency reserve (£[X]K)
- Fixed-price vendor contracts where possible
- Monthly finance reviews with CFO

**Control Effectiveness**: Adequate (insufficient contingency)

**Residual Risk Assessment**:
- **Likelihood**: 3 (Possible)
- **Impact**: 5 (Catastrophic)
- **Residual Score**: 15 (HIGH)

**Risk Response**: **TREAT**

**Additional Mitigations**:
1. **Increase contingency to 15%** (additional £[X]K) - requires CFO approval
2. **Hardware procurement**: Lock in pricing with bulk orders (Month 0)
3. **Vendor contracts**: Negotiate fixed-price professional services vs T&M
4. **Application remediation**: Cap custom development at £50K, otherwise replace apps
5. **Copilot+ PC**: Limit to 20% in Year 1 (vs 30%) if budget pressure increases
6. **Monthly burn-rate tracking**: Weekly finance reviews during migration waves

**Actions**:
| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Request 15% contingency (additional £[X]K) | CFO approval | 2025-11-01 | Open |
| Lock hardware pricing with bulk orders | Procurement | 2025-11-01 | In Progress |
| Renegotiate vendor contracts to fixed-price | Procurement | 2025-11-15 | Open |
| Establish app remediation cost cap policy | IT Ops | 2025-11-01 | Open |
| Implement weekly finance burn-rate reviews | Finance | 2025-11-01 | Open |

**Target Residual Risk**: 9 (Medium) - Likelihood reduced to 2 (Unlikely)

**Success Criteria**:
- Total migration cost ≤ budget + 10% contingency
- £[X]M annual savings realized by Month 24
- 24-month ROI achieved
- No budget overrun requiring emergency Board approval

**Monitoring Frequency**: Weekly during migration waves, monthly during planning

---

#### R-016: Copilot+ PC Premium Pricing Not Justified

**Category**: FINANCIAL
**Status**: Open
**Risk Owner**: CFO
**Action Owner**: CIO

**Risk Description**:
£100-300 premium per Copilot+ PC (30% adoption = 1,800 devices × £200 avg = £360K) not justified by productivity ROI. CFO rejects Copilot+ procurement after pilot shows insufficient benefit.

**Root Cause**:
- Unproven productivity ROI (Microsoft claims 10-15%, actual TBD)
- CFO cost-conscious environment (15% IT cost reduction mandate)
- Users may not adopt AI features
- Alternative: Standard Windows 11 devices £800 vs Copilot+ £1,000

**Trigger Events**:
- Pilot shows <5% productivity improvement
- User adoption of AI features <30%
- Budget pressure increases mid-project

**Consequences if Realized**:
- £360K savings by reverting to standard devices
- CIO strategic goal (G-10: 30% Copilot+ adoption) not achieved
- Future-proofing lost (no NPU for future AI features)
- Reputational: CIO viewed as pursuing "shiny objects" vs practical solutions

**Affected Stakeholders**: CFO, CIO, Enterprise Architect
**Related Objectives**: G-10 (Copilot+ adoption), O-4 (Cloud-native capability)

**Inherent Risk Assessment**:
- **Likelihood**: 3 (Possible)
- **Impact**: 2 (Minor)
- **Inherent Score**: 6 (MEDIUM)

**Current Controls**:
- 50-100 device pilot validates ROI before scaling
- Phased approach (30% Year 1, scale to 70% Year 2 if proven)
- User feedback surveys and productivity metrics
- Option to pivot to standard devices without sunk costs

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 2 (Minor)
- **Residual Score**: 4 (LOW)

**Risk Response**: **TOLERATE**

---

#### R-017: ConfigMgr Decommissioning Savings Not Realized

**Category**: FINANCIAL
**Status**: Open
**Risk Owner**: CFO
**Action Owner**: IT Operations Director

**Risk Description**:
£[X]M annual ConfigMgr savings not realized due to delayed decommissioning (beyond Month 18) or unexpected costs to maintain InTune equivalents (third-party tools, additional licenses).

**Root Cause**:
- Technical dependencies require ConfigMgr longer than planned
- Legacy application distribution gaps in InTune
- Additional third-party tools needed (packaging, reporting)

**Trigger Events**:
- ConfigMgr decommissioning delayed to Month 24+
- Critical app requires ConfigMgr indefinitely
- InTune limitations require third-party solutions (£[X]K/year)

**Consequences if Realized**:
- CFO savings target (G-2) partially achieved (80% vs 100%)
- ROI timeline extends beyond 24 months
- Ongoing dual-management overhead (InTune + ConfigMgr)

**Affected Stakeholders**: CFO, IT Operations
**Related Objectives**: G-2 (Cost savings), G-7 (ConfigMgr decommission)

**Inherent Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 3 (Moderate)
- **Inherent Score**: 6 (MEDIUM)

**Current Controls**:
- Application inventory and InTune capability gap analysis
- Month 18 hard deadline with governance oversight
- Alternative app deployment methods planned (Win32 apps, MSIX)

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 1 (Rare)
- **Impact**: 3 (Moderate)
- **Residual Score**: 3 (LOW)

**Risk Response**: **TOLERATE**

---

### COMPLIANCE/REGULATORY RISKS

#### R-011: GDPR Non-Compliance (Recall Feature)

**Category**: COMPLIANCE/REGULATORY
**Status**: Open
**Risk Owner**: CISO
**Action Owner**: CISO + Data Protection Officer

**Risk Description**:
Windows 11 Recall feature (Copilot+ PCs) captures screenshots of user activity including potentially sensitive personal data, creating GDPR Article 5 compliance risk (data minimization, purpose limitation). If enabled without proper controls, creates ICO enforcement action risk.

**Root Cause**:
- Recall feature stores photographic memory of all PC activity
- Default settings may capture sensitive data (passwords, customer info, PHI)
- Copilot+ PC deployment (30% of estate) includes Recall capability
- Data Protection Impact Assessment (DPIA) not yet completed

**Trigger Events**:
- Recall enabled by default on Copilot+ PCs
- User accesses sensitive customer data, Recall captures it
- Data subject access request (DSAR) reveals Recall data retention
- ICO audit identifies Recall as non-compliant

**Consequences if Realized**:
- ICO enforcement action, penalties up to £17.5M or 4% revenue
- Data breach notification requirements if Recall data exposed
- Reputational damage to organization as data processor
- Legal liability to customers/partners
- Emergency Recall disablement disrupting Copilot+ PC value

**Affected Stakeholders**: CISO, Data Protection Officer, Legal, CIO
**Related Objectives**: G-3 (100% compliance), O-1 (Zero compliance violations)

**Inherent Risk Assessment**:
- **Likelihood**: 4 (Likely) - Recall enabled by default on Copilot+ PCs
- **Impact**: 3 (Moderate) - Penalties, reputational damage
- **Inherent Score**: 12 (MEDIUM)

**Current Controls**:
- Architecture Principle 3A: Recall disabled by default, explicit opt-in required
- InTune policies exclude sensitive apps (Finance, HR, Customer systems) from Recall
- 30-90 day retention limit configured
- User right to delete Recall history

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 3 (Moderate)
- **Residual Score**: 6 (MEDIUM)

**Risk Response**: **TREAT**

**Additional Mitigations**:
1. Complete Data Protection Impact Assessment (DPIA) before Copilot+ deployment
2. Legal review of Recall feature against GDPR Articles 5, 6, 25
3. User privacy notices and consent mechanisms
4. InTune policy blacklist for sensitive applications
5. Annual GDPR compliance audits including Recall review

**Actions**:
| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Complete Recall DPIA | DPO | 2025-11-15 | Open |
| Legal GDPR review | Legal | 2025-11-15 | Open |
| Configure InTune Recall exclusions | CISO | 2025-11-30 | Open |
| User privacy notice + consent mechanism | DPO | 2025-12-01 | Open |

**Target Residual Risk**: 3 (Low)

**Success Criteria**:
- DPIA completed and approved by DPO
- Zero ICO findings related to Recall
- 100% user consent for Recall opt-in
- Sensitive apps excluded from Recall indexing

---

#### R-018: Cyber Insurance Non-Renewal

**Category**: COMPLIANCE/REGULATORY
**Status**: Open
**Risk Owner**: CISO
**Action Owner**: CISO + CFO

**Risk Description**:
Cyber insurance renewal (£[X]M coverage) rejected or premiums increase 50%+ if Windows 10 devices remain unsupported past EOL. Current policy has explicit "supported OS" requirement.

**Root Cause**:
- Cyber insurance market hardening post-ransomware surge
- Insurers require supported OS as baseline control
- Windows 10 EOL October 2025 = unsupported OS

**Trigger Events**:
- Migration extends past October 2025 (feeds R-001)
- Insurance renewal conversation Q3 2025
- Insurer risk assessment identifies unsupported OS

**Consequences if Realized**:
- Insurance renewal rejected → £[X]M coverage lost
- Premiums increase 50-100% (£[Y]K additional annual cost)
- Self-insured breach risk (potential £2-5M uninsured loss)
- Board fiduciary duty concerns

**Affected Stakeholders**: CISO, CFO, Board
**Related Objectives**: G-1 (Migration completion), O-1 (Zero compliance violations)

**Inherent Risk Assessment**:
- **Likelihood**: 3 (Possible) - Depends on R-001 timeline risk
- **Impact**: 4 (Major) - Financial + risk transfer loss
- **Inherent Score**: 12 (MEDIUM)

**Current Controls**:
- 6-week buffer (Sep 1 target vs Oct 14 EOL)
- Insurer informed of migration plan
- ESU procurement as contingency for remaining 5% devices

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 1 (Rare)
- **Impact**: 4 (Major)
- **Residual Score**: 4 (LOW)

**Risk Response**: **TRANSFER + TREAT**

**Mitigations**:
1. **Early insurer engagement**: Provide migration plan to insurer by Dec 2024
2. **ESU commitment**: Demonstrate contingency plan for any remaining devices
3. **Alternative insurers**: Obtain 2-3 quotes as leverage/backup
4. **Self-insurance reserve**: CFO sets aside £500K for potential premium increase

**Actions**:
| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Present migration plan to cyber insurer | CISO | 2025-11-30 | Open |
| Procure ESU for 5% contingency devices | IT Ops | 2025-12-01 | Open |
| Obtain alternative insurer quotes | CFO | 2026-Q1 | Open |

**Target Residual Risk**: 2 (Low)

---

#### R-019: ISO 27001 Recertification Failed

**Category**: COMPLIANCE/REGULATORY
**Status**: Open
**Risk Owner**: CISO
**Action Owner**: CISO + Compliance Officer

**Risk Description**:
ISO 27001 annual recertification audit (Month 12) identifies unsupported Windows 10 devices or incomplete Windows 11 security baseline implementation as non-conformance. Certification suspended pending remediation.

**Root Cause**:
- ISO 27001 Annex A.8.8: Technical vulnerability management
- Unsupported OS = unpatched vulnerabilities = non-conformance
- Security baseline implementation gaps (TPM, BitLocker, Defender)

**Trigger Events**:
- Annual ISO 27001 audit scheduled Month 12
- Auditor identifies Windows 10 devices past EOL
- Security baseline compliance <100% on Windows 11 devices

**Consequences if Realized**:
- ISO 27001 certification suspended (30-90 day remediation)
- Customer contracts requiring ISO 27001 at risk
- Competitive disadvantage (cannot bid on ISO-required contracts)
- Reputational damage in regulated sectors
- Board/investor confidence impact

**Affected Stakeholders**: CISO, Compliance Officer, Sales, CIO
**Related Objectives**: G-3 (100% compliance), O-1 (Zero compliance violations)

**Inherent Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 4 (Major)
- **Inherent Score**: 8 (MEDIUM)

**Current Controls**:
- Migration target Sep 2025 (before Month 12 audit)
- InTune compliance policies enforcing security baselines
- Monthly compliance reporting to CISO
- 95% migration target allows 5% ESU exception

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 1 (Rare)
- **Impact**: 3 (Moderate)
- **Residual Score**: 3 (LOW)

**Risk Response**: **TOLERATE**

**Justification**: Timeline + compliance monitoring provide adequate control. Unlikely to materialize.

---

### REPUTATIONAL RISKS

#### R-020: High-Profile Service Outage Damages Citizen Trust

**Category**: REPUTATIONAL
**Status**: Open
**Risk Owner**: CIO
**Action Owner**: IT Operations Director

**Risk Description**:
Failed migration during critical business period (e.g., fiscal year-end, customer-facing operations) causes widespread service disruption visible to external stakeholders (customers, partners, media). Reputational damage to organization.

**Root Cause**:
- Wave scheduling conflict with critical business period
- Application compatibility issue not caught in testing
- Widespread Conditional Access lockout scenario
- Microsoft cloud outage during migration wave

**Trigger Events**:
- Migration wave during peak operational period
- Critical customer-facing application fails post-migration
- Mass user lockouts prevent service delivery
- Social media amplification of issues

**Consequences if Realized**:
- Media coverage of IT failure
- Customer complaints and service delivery impact
- Executive scrutiny and CIO credibility damaged
- Competitive advantage lost (perceived as incompetent)
- Stock price impact (if public company)

**Affected Stakeholders**: CIO, Executive Team, Brand/Marketing
**Related Objectives**: O-3 (High productivity), G-6 (User satisfaction)

**Inherent Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 4 (Major)
- **Inherent Score**: 8 (MEDIUM)

**Current Controls**:
- Wave scheduling avoids peak business periods
- Phased rollout limits blast radius
- Pause criteria (>10% failure rate)
- Rollback capability (10-day window)
- Executive/VIP users migrated last (after validation)

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 1 (Rare)
- **Impact**: 4 (Major)
- **Residual Score**: 4 (LOW)

**Risk Response**: **TOLERATE**

---

### TECHNOLOGY RISKS

#### R-004: Application Compatibility Failures Block User Productivity

**Category**: TECHNOLOGY
**Status**: In Progress
**Risk Owner**: IT Operations Director
**Action Owner**: Application Owners + IT Operations

**Risk Description**:
Business-critical applications incompatible with Windows 11 block user productivity post-migration. Legacy .NET Framework apps, kernel-mode drivers, 32-bit applications fail or perform poorly. Users cannot perform job functions, requiring emergency rollbacks.

**Root Cause**:
- Legacy application estate (10-15 years old)
- Vendors slow to certify Windows 11 compatibility
- .NET Framework 3.5/4.0 applications require updates
- Security software (VPN, DLP, antivirus) kernel drivers incompatible
- Insufficient testing in pilot phase (only top 20 apps vs 200+ total)

**Trigger Events**:
- Line-of-business app fails to launch on Windows 11
- VPN client incompatible, remote users locked out
- Performance degradation (2x slower) on critical apps
- Data corruption in database applications

**Consequences if Realized**:
- Users unable to perform job functions (productivity loss)
- Emergency rollbacks required (wave pause, timeline delay)
- Support ticket surge (feeds R-002)
- User satisfaction plummets (feeds R-010)
- Vendor escalations and emergency patch requests
- Potential data loss from app crashes

**Affected Stakeholders**: IT Operations (SD-3), End Users (SD-4), Application Owners
**Related Objectives**: G-1 (Migration success), G-6 (User satisfaction), O-3 (Productivity)

**Inherent Risk Assessment**:
- **Likelihood**: 4 (Likely) - Legacy app estate, insufficient testing
- **Impact**: 4 (Major) - Productivity loss, rollbacks, user disruption
- **Inherent Score**: 16 (HIGH)

**Current Controls**:
- Architecture Principle 5: Application compatibility testing required before migration
- Pilot phase testing (IT staff devices)
- Vendor compatibility verification
- 10-day rollback window

**Control Effectiveness**: Adequate (insufficient coverage)

**Residual Risk Assessment**:
- **Likelihood**: 3 (Possible)
- **Impact**: 4 (Major)
- **Residual Score**: 12 (MEDIUM)

**Risk Response**: **TREAT**

**Additional Mitigations**:
1. **Expand testing coverage**: Top 50 apps (vs 20) representing 90% of usage
2. **Windows 11 VDI lab**: Full testing environment before physical deployment
3. **Vendor engagement**: Proactive outreach to top 20 vendors for compatibility statements
4. **App modernization budget**: £100K for emergency app updates/replacements
5. **App-V/MSIX packaging**: Isolate problematic apps to reduce OS dependency
6. **Tiered testing**:
   - Tier 1 (20 apps): Full UAT with business users, regression testing
   - Tier 2 (30 apps): Smoke testing, basic functionality
   - Tier 3 (100+ apps): Pilot phase user feedback

**Actions**:
| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Deploy Windows 11 VDI testing environment | IT Ops | 2025-11-01 | In Progress |
| Test top 50 apps (expand from 20) | App Owners | 2025-11-30 | Open |
| Vendor compatibility outreach (top 20) | IT Ops | 2025-11-15 | Open |
| Secure £100K app modernization budget | CFO | 2025-11-01 | Open |
| Implement App-V packaging for 10 legacy apps | IT Ops | 2025-12-15 | Open |

**Target Residual Risk**: 8 (Medium) - Likelihood reduced to 2 (Unlikely)

**Success Criteria**:
- <1% application compatibility issues post-migration
- Zero Tier 1 critical app failures
- Rollback rate <5% due to app issues
- Application catalog 100% tested before user migration

**Monitoring Frequency**: Weekly during testing phase, daily during migration waves

---

#### R-005: ARM64 Copilot+ PC Application Compatibility Issues

**Category**: TECHNOLOGY
**Status**: In Progress
**Risk Owner**: IT Operations Director
**Action Owner**: IT Operations Director + Enterprise Architect

**Risk Description**:
Qualcomm Snapdragon ARM64 Copilot+ PCs experience application compatibility issues due to x64 emulation limitations. Business-critical apps fail, perform slowly (30-50% degradation), or require ARM64-native versions unavailable from vendors. 30% Copilot+ adoption target at risk.

**Root Cause**:
- ARM64 architecture requires emulation for x64/x86 apps
- Prism emulator has compatibility gaps (kernel drivers, anti-cheat, DRM)
- Vendor ARM64-native app availability limited
- VPN clients, security software require ARM64-native kernel drivers
- Architecture Principle 3A: 30% Copilot+ PC adoption includes ARM64 devices

**Trigger Events**:
- Critical VPN client incompatible with ARM64 (remote users blocked)
- Line-of-business app crashes on ARM64 emulation
- 50% performance degradation makes apps unusable
- Vendor confirms "no ARM64 support planned"

**Consequences if Realized**:
- ARM64 Copilot+ PC deployment canceled (feeds R-015)
- £[X]K wasted on incompatible devices
- Users reverted to x64 devices (rollback logistics)
- CIO strategic goal (G-10) not achieved
- Revert to x64 Copilot+ PCs only (higher cost, less battery efficiency)

**Affected Stakeholders**: CIO (SD-5), IT Operations (SD-3), Copilot+ PC users
**Related Objectives**: G-10 (30% Copilot+ adoption), O-4 (Cloud-native capability)

**Inherent Risk Assessment**:
- **Likelihood**: 4 (Likely) - ARM64 ecosystem immature
- **Impact**: 4 (Major) - Deployment failure, wasted investment
- **Inherent Score**: 16 (HIGH)

**Current Controls**:
- Architecture Principle 3A: Test ARM64 compatibility before deployment
- 50-100 device ARM64 pilot (IT staff, early adopters)
- Prioritize x64 Copilot+ PCs (Intel/AMD) for lower risk
- Fallback: Revert to x64 Copilot+ or standard Windows 11 devices

**Control Effectiveness**: Strong

**Residual Risk Assessment**:
- **Likelihood**: 2 (Unlikely)
- **Impact**: 5 (Catastrophic)
- **Residual Score**: 10 (MEDIUM)

**Risk Response**: **TREAT**

**Additional Mitigations**:
1. **ARM64 compatibility matrix**: Test top 50 apps on ARM64 before any deployment
2. **Prioritize x64 Copilot+ PCs**: 80% x64 (Intel/AMD), 20% ARM64 (Snapdragon) in Year 1
3. **Vendor ARM64 roadmap**: Confirm vendor support before Snapdragon orders
4. **Pilot validation**: 100% app compatibility required before scaling ARM64
5. **Procurement flexibility**: Return/exchange clause for incompatible ARM64 devices

**Actions**:
| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| Test top 50 apps on ARM64 Copilot+ PC | IT Ops | 2025-11-30 | In Progress |
| Shift Copilot+ mix to 80% x64 / 20% ARM64 | Procurement | 2025-11-01 | Open |
| Confirm VPN vendor ARM64 support | IT Ops | 2025-11-15 | Open |
| Negotiate device return clause with vendors | Procurement | 2025-11-01 | Open |

**Target Residual Risk**: 6 (Medium) - Likelihood reduced to 2 (Unlikely)

**Success Criteria**:
- 100% critical apps validated on ARM64 before deployment
- <5% ARM64 compatibility issues in pilot
- Zero forced rollbacks due to ARM64 incompatibility
- Vendor ARM64 support confirmed for top 10 apps

**Monitoring Frequency**: Weekly during ARM64 pilot, monthly thereafter

---

## Risk by Category Analysis

### STRATEGIC Risks (4 risks)

- **Total Risks**: 4
- **Average Inherent Score**: 12.0 (Medium)
- **Average Residual Score**: 7.5 (Medium)
- **Control Effectiveness**: 38% risk reduction

**Key Themes**:
- Timeline pressure vs Windows 10 EOL creates critical strategic risk
- CIO/CFO stakeholder tension (speed vs risk) manageable but ongoing
- Strategic direction changes unlikely but would have major impact
- Copilot+ PC ROI unproven but pilot approach de-risks

**Top Risk**: R-001 (Migration timeline slips past EOL) - Residual 15 (High)

---

### OPERATIONAL Risks (6 risks)

- **Total Risks**: 6
- **Average Inherent Score**: 12.3 (Medium)
- **Average Residual Score**: 6.8 (Medium)
- **Control Effectiveness**: 45% risk reduction

**Key Themes**:
- Helpdesk capacity and skills gaps are primary operational concerns
- Historical precedent (Windows 7 failure) drives risk-averse approach
- Cloud skills gap addressable through training and hiring
- User resistance mitigated through strong change management

**Top Risk**: R-002 (Support ticket volume overwhelms helpdesk) - Residual 9 (Medium)

---

### FINANCIAL Risks (3 risks)

- **Total Risks**: 3
- **Average Inherent Score**: 12.3 (Medium)
- **Average Residual Score**: 7.3 (Medium)
- **Control Effectiveness**: 41% risk reduction

**Key Themes**:
- Budget overruns threaten CFO ROI goal (critical)
- Copilot+ PC premium pricing requires validation
- ConfigMgr savings well-controlled, low residual risk

**Top Risk**: R-003 (Budget overruns eliminate ROI) - Residual 15 (High)

---

### COMPLIANCE/REGULATORY Risks (3 risks)

- **Total Risks**: 3
- **Average Inherent Score**: 10.7 (Medium)
- **Average Residual Score**: 4.3 (Low)
- **Control Effectiveness**: 60% risk reduction

**Key Themes**:
- GDPR Recall feature manageable with proper controls
- Cyber insurance renewal depends on timeline (feeds R-001)
- ISO 27001 recertification low risk due to timeline buffer

**Top Risk**: R-011 (GDPR non-compliance - Recall) - Residual 6 (Medium)

---

### REPUTATIONAL Risks (2 risks)

- **Total Risks**: 2
- **Average Inherent Score**: 8.0 (Medium)
- **Average Residual Score**: 4.0 (Low)
- **Control Effectiveness**: 50% risk reduction

**Key Themes**:
- Service outage during critical period unlikely but high impact
- Phased rollout and pause criteria provide strong mitigation

**Top Risk**: R-020 (Service outage damages reputation) - Residual 4 (Low)

---

### TECHNOLOGY Risks (2 risks)

- **Total Risks**: 2
- **Average Inherent Score**: 16.0 (High)
- **Average Residual Score**: 11.0 (Medium)
- **Control Effectiveness**: 31% risk reduction

**Key Themes**:
- Application compatibility testing critical to success
- ARM64 ecosystem immaturity creates uncertainty
- Expanded testing coverage essential

**Top Risk**: R-004 (Application compatibility failures) - Residual 12 (Medium)

---

## Risk Ownership Matrix

| Stakeholder | Owned Risks | Critical/High Risks | Risk Load | Notes |
|-------------|-------------|---------------------|-----------|-------|
| **IT Operations Director** | 9 risks | 6 Critical/High | HEAVY | Primary risk owner for execution |
| **CFO** | 3 risks | 1 Critical | MEDIUM | Financial risk concentration |
| **CISO** | 3 risks | 0 Critical/High | LIGHT | Compliance risks well-controlled |
| **CIO** | 3 risks | 1 High | MEDIUM | Strategic oversight |
| **Helpdesk Manager** | 1 risk | 1 Critical | FOCUSED | Single critical risk (capacity) |
| **Change Manager** | 1 risk | 0 Critical/High | LIGHT | User engagement risk |

**Risk Ownership Concerns**:
- **IT Operations Director**: 9 risks (45% of total) - heavy concentration creates capacity risk
- **Recommendation**: Delegate 2-3 operational risks to Project Manager to balance load

**Escalation Path**:
1. **Level 1**: Risk Owner (daily monitoring, mitigation actions)
2. **Level 2**: Steering Committee (weekly review of Critical/High risks)
3. **Level 3**: CIO + CFO (Critical risks exceeding mitigation capacity)
4. **Level 4**: Board (risks threatening project viability)

---

## 4Ts Response Summary

| Response | Count | % | Examples | Rationale |
|----------|-------|---|----------|-----------|
| **Treat** | 14 | 70% | R-001, R-002, R-003, R-004, R-005, R-006, R-007, R-010, R-011 | Active mitigation planned, risk reducible |
| **Tolerate** | 4 | 20% | R-009, R-012, R-015, R-019 | Within acceptable limits, mitigation cost > benefit |
| **Transfer** | 1 | 5% | R-018 (Cyber insurance) | Risk transferred to insurer |
| **Terminate** | 1 | 5% | R-013 (Early ConfigMgr decom) | Activity cancelled to eliminate risk |

**4Ts Analysis**:
- **High Treatment Rate (70%)**: Appropriate given 9 Critical/High risks requiring active mitigation
- **Low Tolerance Rate (20%)**: Reflects aggressive risk management posture
- **Transfer Opportunity**: Only 1 risk transferred (cyber insurance); consider business interruption insurance for R-020
- **Termination**: Prevented premature ConfigMgr decommissioning through governance

---

## Action Plan (Prioritized)

### Priority 1: Critical Risk Mitigations (Weeks 1-2)

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Status |
|----------|--------|-------------------|-------|----------|------|--------|
| 1 | Procure ESU licenses as contingency | R-001 (Critical) | IT Ops | 2025-11-15 | £[X]K | Open |
| 2 | Secure additional £50K helpdesk training budget | R-002 (Critical) | CFO | 2025-11-01 | £50K | Open |
| 3 | Request 15% contingency (additional £[X]K) | R-003 (Critical) | CFO | 2025-11-01 | £[X]K | Open |
| 4 | Deploy Windows 11 VDI testing environment | R-004 (High) | IT Ops | 2025-11-01 | £20K | In Progress |
| 5 | Lock hardware pricing with bulk orders | R-003, R-006 | Procurement | 2025-11-01 | £0 | In Progress |

### Priority 2: High Risk Mitigations (Weeks 3-4)

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Status |
|----------|--------|-------------------|-------|----------|------|--------|
| 6 | Test top 50 apps on Windows 11 (expand from 20) | R-004 (High) | App Owners | 2025-11-30 | £40K | Open |
| 7 | Test top 50 apps on ARM64 Copilot+ PC | R-005 (High) | IT Ops | 2025-11-30 | £0 | In Progress |
| 8 | RFP for temporary helpdesk capacity (10 FTEs) | R-002 (Critical) | Procurement | 2025-11-15 | £150K | Open |
| 9 | Enroll 5 engineers in Microsoft MD-102 course | R-007 (High) | IT Ops | 2025-11-15 | £15K | Open |
| 10 | Shift Copilot+ mix to 80% x64 / 20% ARM64 | R-005 (High) | Procurement | 2025-11-01 | £0 | Open |

### Priority 3: Medium Risk Mitigations (Months 2-3)

| Priority | Action | Risk(s) Addressed | Owner | Due Date | Cost | Status |
|----------|--------|-------------------|-------|----------|------|--------|
| 11 | Complete Recall DPIA | R-011 (Medium) | DPO | 2025-11-15 | £10K | Open |
| 12 | Develop proactive user communication plan | R-002, R-010 | Change Mgr | 2025-10-31 | £5K | In Progress |
| 13 | Vendor compatibility outreach (top 20 vendors) | R-004 (High) | IT Ops | 2025-11-15 | £0 | Open |
| 14 | Renegotiate vendor contracts to fixed-price | R-003 (Critical) | Procurement | 2025-11-15 | £0 | Open |
| 15 | Present migration plan to cyber insurer | R-018 (Low) | CISO | 2025-11-30 | £0 | Open |

**Total Mitigation Budget**: £290K (ESU + Training £50K + Helpdesk £150K + Testing £40K + VDI £20K + DPIA £10K + Comms £5K + Training £15K)

**Funding Sources**:
- Contingency budget: £[X]K (10% current, requesting 15%)
- Operations budget reallocation: £50K
- CFO emergency approval: £[Y]K (for critical mitigations)

---

## Monitoring and Review Framework

### Risk Review Frequency

| Risk Severity | Review Frequency | Reporting | Escalation |
|---------------|------------------|-----------|------------|
| **Critical (20-25)** | **Weekly** | Steering Committee | CIO + CFO immediate |
| **High (13-19)** | **Bi-weekly** | Steering Committee | CIO within 48hrs |
| **Medium (6-12)** | **Monthly** | Risk Register Update | IT Ops Director |
| **Low (1-5)** | **Quarterly** | Risk Register Update | None (monitor) |

### Risk Metrics Dashboard (Weekly)

**Leading Indicators** (predict future risk):
- Hardware delivery lead times (R-001, R-006)
- Application testing completion % (R-004, R-005)
- Helpdesk training completion % (R-002)
- Budget burn rate vs plan (R-003)
- Pilot phase support ticket rate (R-002)

**Lagging Indicators** (confirm risk materialized):
- Migration timeline vs plan (R-001)
- Actual budget vs budget (R-003)
- Support ticket volume (R-002)
- User satisfaction NPS (R-010)
- Application compatibility failures (R-004)

### Escalation Criteria (Auto-Trigger)

**Immediate Escalation to CIO + CFO**:
- Any risk increases by 5+ points in single review period
- Any new Critical risk (score 20-25) identified
- Multiple High risks trending upward simultaneously
- Budget overrun >10% projected
- Timeline slippage >4 weeks projected

**Board Escalation**:
- Risk to Windows 10 EOL deadline (R-001) becomes "Almost Certain"
- Budget overrun >20% or ROI not achievable (R-003)
- Compliance violation imminent (R-011, R-018, R-019)
- Recommendation to pause/cancel migration

### Risk Register Governance

**Review Cadence**:
- **Weekly**: Critical/High risks (Steering Committee)
- **Monthly**: Full risk register review (all 20 risks)
- **Quarterly**: Risk register audit and validation
- **Post-Wave**: Lessons learned, risk register updates

**Risk Register Updates**:
- New risks identified → add within 48 hours
- Risk scores change → update and escalate per criteria
- Mitigations completed → update status and residual score
- Risks closed → document lessons learned

**Risk Register Owner**: IT Operations Director
**Risk Register Custodian**: Project Manager (daily updates)
**Risk Governance Authority**: Enterprise Architect + Steering Committee

**Next Review Date**: 2025-11-21 (monthly review)

---

## Integration with SOBC (Strategic Outline Business Case)

This risk register feeds into multiple SOBC sections:

### Strategic Case (SOBC Part A)
- **R-001** (EOL timeline) → Urgency justification ("Why Now?")
- **R-009** (Strategic changes) → Strategic alignment validation
- **R-015** (Copilot+ ROI) → Strategic benefits validation

### Economic Case (SOBC Part B)
- **R-003** (Budget overruns) → Cost estimates and contingency
- **R-016, R-017** (Savings not realized) → Benefits realization risks
- **Optimism Bias**: Use risk-adjusted costs (Inherent score 282/500 = 56% suggests High optimism bias, apply 15-20% uplift)

### Commercial Case (SOBC Part C)
- **R-006** (Supply chain) → Procurement strategy and vendor SLAs
- **R-007** (InTune skills) → Professional services scope
- **R-012** (Vendor dependency) → Contract terms and SLAs

### Financial Case (SOBC Part D)
- **R-003** (Budget overruns) → Affordability assessment
- **Full risk register** → Risk-adjusted financial model
- **Contingency**: 15% recommended based on residual risk score 162/500

### Management Case Part E (SOBC Part E)
- **Full risk register** → Risk management section (verbatim)
- **Action Plan** → Project plan dependencies
- **Governance Framework** → Risk escalation and review

**SOBC Recommendation**: High residual risk score (162/500 = 32%) suggests project is VIABLE but requires robust risk management and contingency funding. Recommend proceed with 15% contingency budget and monthly Steering Committee oversight.

---

## Lessons Learned from Previous Projects

### Windows 7 to Windows 10 Migration (2019) - FAILED

**What Went Wrong**:
- Inadequate helpdesk training → 400 tickets/week for 6 months (R-002)
- Application compatibility testing insufficient → 15% app failures (R-004)
- Rushed timeline → 25% rollback rate (R-001)
- User communication poor → 40% user satisfaction (R-010)

**Mitigations Applied to Windows 11 Migration**:
- ✅ Comprehensive helpdesk training (18hr → 40hr after R-002 mitigation)
- ✅ Expanded app testing (top 20 → top 50 apps representing 90% usage)
- ✅ Realistic 18-month timeline with 6-week buffer
- ✅ Multi-channel user communication (T-30 to T+1 cadence)
- ✅ Phased rollout (500-1000 users/wave vs "big bang")

### ConfigMgr to InTune Pilot (2024) - PARTIAL SUCCESS

**What Worked**:
- Pilot phase identified 80% of issues before production
- Vendor professional services accelerated learning curve
- Cloud-native management reduced on-prem dependencies

**What Didn't Work**:
- InTune learning curve steeper than expected (R-007)
- Application packaging more complex than ConfigMgr (R-004)
- Conditional Access lockouts frustrated users (R-002)

**Mitigations Applied**:
- ✅ Extended pilot phase (50-100 devices vs 20)
- ✅ Additional InTune training and certifications (MD-102)
- ✅ Conditional Access troubleshooting runbooks
- ✅ Helpdesk training on cloud-specific scenarios

---

## Appendices

### Appendix A: Risk Scoring Matrix

**Likelihood Scale (1-5)**:
| Score | Likelihood | Probability | Description |
|-------|------------|-------------|-------------|
| 1 | Rare | <5% | Has never happened, highly unlikely |
| 2 | Unlikely | 5-25% | Could happen but probably won't |
| 3 | Possible | 25-50% | Reasonable chance, has happened before |
| 4 | Likely | 50-75% | More likely to happen than not |
| 5 | Almost Certain | >75% | Expected to occur, historical precedent |

**Impact Scale (1-5)**:
| Score | Impact | Variance | Description | Examples |
|-------|--------|----------|-------------|----------|
| 1 | Negligible | <5% | Minimal impact, easily absorbed | Minor UI issue |
| 2 | Minor | 5-10% | Manageable within reserves, no escalation | 1-week delay |
| 3 | Moderate | 10-20% | Requires management effort, some disruption | 4-week delay, 10% budget increase |
| 4 | Major | 20-40% | Threatens objectives, executive escalation | 8-week delay, 20% budget increase |
| 5 | Catastrophic | >40% | Existential threat, project failure | Mission failure, compliance breach |

**Risk Score = Likelihood × Impact**

**Risk Heat Map**:
- **Critical** (20-25): Red - Immediate action required
- **High** (13-19): Orange - Escalate and mitigate
- **Medium** (6-12): Yellow - Monitor and control
- **Low** (1-5): Green - Accept and monitor

---

### Appendix B: Stakeholder-Risk Traceability

| Risk ID | Affected Stakeholders | Stakeholder Driver | Goal Threatened | Outcome Threatened |
|---------|----------------------|-------------------|-----------------|-------------------|
| R-001 | CISO, CIO, IT Ops | SD-1, SD-3, SD-5 | G-1 | O-1 |
| R-002 | Helpdesk Mgr, IT Ops, Users | SD-3, SD-4, SD-6 | G-4, G-6 | O-3 |
| R-003 | CFO, CIO | SD-2, SD-5 | G-2 | O-2 |
| R-004 | IT Ops, Users | SD-3, SD-4 | G-1, G-6 | O-3 |
| R-005 | CIO, IT Ops | SD-5, SD-3 | G-10 | O-4 |
| R-006 | IT Ops, Procurement | SD-3 | G-1 | O-1 |
| R-007 | IT Ops Director | SD-3 | G-1, G-7 | O-4 |
| R-008 | CIO, CFO | SD-2, SD-5 | G-2, G-1 | O-2, O-3 |
| R-009 | CIO, IT Ops | SD-5 | All goals | All outcomes |
| R-010 | Users, Change Mgr | SD-4 | G-6 | O-3 |
| R-011 | CISO, DPO | SD-1 | G-3 | O-1 |
| R-012 | IT Ops | SD-3 | G-1 | O-3 |
| R-013 | IT Ops, CFO | SD-2, SD-3 | G-2, G-7 | O-2 |
| R-014 | IT Ops, All Depts | SD-3 | G-1 | O-3 |
| R-015 | CIO, CFO, EA | SD-5, SD-2 | G-10 | O-4 |
| R-016 | CFO, CIO | SD-2, SD-5 | G-10 | O-4 |
| R-017 | CFO, IT Ops | SD-2 | G-2, G-7 | O-2 |
| R-018 | CISO, CFO | SD-1 | G-1, G-3 | O-1 |
| R-019 | CISO, Compliance | SD-1 | G-3 | O-1 |
| R-020 | CIO, Exec Team | SD-5 | G-6 | O-3 |

**Traceability Notes**:
- All 20 risks traced to stakeholder drivers from `stakeholder-drivers.md`
- All risks linked to specific goals (G-1 through G-14)
- All risks impact at least one outcome (O-1 through O-4)
- Risk ownership aligned to stakeholder RACI matrix

---

### Appendix C: Architecture Principles Compliance Risks

| Principle | Non-Compliance Risk | Risk ID |
|-----------|-------------------|---------|
| 1. Cloud-First Endpoint Management | ConfigMgr not decommissioned on time | R-013 |
| 2. Zero Trust Security Model | Security baseline not enforced, compliance failure | R-011, R-019 |
| 3. Hardware Readiness | Incompatible devices not replaced, EOL risk | R-001, R-006 |
| 3A. Copilot+ PC Hardware | ARM64 compatibility issues, ROI not delivered | R-005, R-015, R-016 |
| 4. User-Centric Migration | Poor user experience, resistance | R-010 |
| 5. Application Compatibility | Apps not tested, productivity blocked | R-004 |
| 6. Phased Rollout Strategy | Wave coordination failures | R-014 |
| 7. Automated Deployment | Autopilot failures, manual intervention required | R-007 |
| 13. Helpdesk and User Support | Helpdesk unprepared, support collapse | R-002 |
| 14. Change Management | Poor communication, user resistance | R-010 |
| 15. Incident Response | No rollback plan, failed migrations | R-001, R-004 |

**Principle Compliance Rate**: 18/18 principles have associated risk mitigations = 100% coverage

---

### Appendix D: Risk Register Change Log

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-10-21 | Enterprise Architect | Initial risk register creation following Orange Book framework |
| | | | 20 risks identified across 6 categories |
| | | | Integrated with stakeholder-drivers.md and architecture-principles.md |
| | | | Action plan created for 15 priority mitigations |

---

**Document Control**:
- **Classification**: INTERNAL - CONFIDENTIAL
- **Distribution**: Steering Committee, Risk Owners, Project Team
- **Review Cycle**: Monthly (Critical/High risks weekly)
- **Next Review**: 2025-11-21
- **Archive**: Previous versions in `.arckit/archive/risk-register/`

---

**Approvals**

| Role | Name | Review Date | Status |
|------|------|-------------|--------|
| CIO (Executive Sponsor) | [NAME] | | PENDING |
| CFO (Budget Owner) | [NAME] | | PENDING |
| CISO (Security Executive) | [NAME] | | PENDING |
| IT Operations Director (Risk Owner) | [NAME] | | PENDING |
| Enterprise Architect (Governance) | [NAME] | | PENDING |

---

**END OF RISK REGISTER**
