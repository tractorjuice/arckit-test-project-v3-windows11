# Stakeholder Drivers & Goals Analysis: Application Packaging and Rationalisation

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-002-STKE-v1.0 |
| **Document Type** | Stakeholder Drivers & Goals Analysis |
| **Project** | Application Packaging and Rationalisation (Project 002) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 1.0 |
| **Created Date** | 2026-01-24 |
| **Last Modified** | 2026-01-24 |
| **Review Cycle** | Quarterly |
| **Next Review Date** | 2026-04-24 |
| **Owner** | IT Operations & Enterprise Architecture |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | IT Leadership, Application Owners, Security Team, Procurement |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2026-01-24 | ArcKit AI | Initial creation from `/arckit.stakeholders` command | PENDING | PENDING |

---

## Executive Summary

### Purpose
This document identifies key stakeholders for Project 002 (Application Packaging and Rationalisation), their underlying drivers (motivations, concerns, needs), how these drivers manifest into goals, and the measurable outcomes that will satisfy those goals. This project is a critical dependency for Project 001 (Windows 11 Migration) success.

### Key Findings
- **Primary conflict**: CFO aggressive rationalization (30-40% portfolio reduction for £200K savings) vs. End Users/Application Owners wanting retention of familiar tools
- **Critical dependency**: This project is on the critical path for Project 001 - application readiness must complete before Windows 11 pilot phase (Month 2)
- **Major synergy**: Application rationalization reduces both migration scope (IT Ops benefit) AND licensing costs (CFO benefit) - aligned incentives

### Critical Success Factors
- 100% Tier 1 application Windows 11 compatibility certification by Month 2 (before pilot)
- 30-40% application portfolio reduction (350 → <220) achieving £200K+ annual licensing savings
- Zero application-related blockers delaying Windows 11 migration timeline
- <5% of migration support tickets related to application issues

### Stakeholder Alignment Score
**Overall Alignment**: MEDIUM-HIGH

Strong alignment between IT Operations (execution), Enterprise Architect (governance), and CISO (security) on cloud-native application deployment. Main tension between CFO (aggressive rationalization for savings) and Application Owners/End Users (retention of familiar tools). Procurement aligned on license optimization. Helpdesk needs training lead time.

---

## Stakeholder Identification

### Internal Stakeholders

| Stakeholder | Role/Department | Influence | Interest | Engagement Strategy |
|-------------|----------------|-----------|----------|---------------------|
| CIO | Executive Sponsor / IT Leadership | HIGH | HIGH | Strategic alignment, decision authority, monthly Steering Committee |
| IT Operations Director | Project Owner / IT Operations | HIGH | HIGH | Day-to-day management, delivery accountability |
| CFO | Budget Owner / Finance | HIGH | HIGH | ROI validation, cost savings tracking, quarterly reviews |
| Enterprise Architect | Technical Oversight / EA | MEDIUM | HIGH | Architecture governance, standards enforcement, traceability |
| CISO | Security Executive / InfoSec | MEDIUM | HIGH | Security assessment, vulnerability management approval |
| Application Owners (15+) | Application SMEs / Business Units | MEDIUM | HIGH | Compatibility testing UAT, retirement decisions |
| Helpdesk Manager | Support Lead / IT Support | MEDIUM | MEDIUM | Training on app changes, knowledge transfer |
| Procurement Manager | License Management / Finance | MEDIUM | HIGH | License optimization, vendor negotiations |
| Security Architect | Security Lead / InfoSec | LOW | HIGH | Application security assessment, Defender integration |
| End Users (6000+) | Various / Business Units | LOW | HIGH | Application continuity, minimal disruption |
| Change Manager | Communication Lead / IT Ops | LOW | HIGH | Retirement communication, training coordination |
| IT Packagers (3-5 FTEs) | Technical Execution / IT Ops | LOW | HIGH | Packaging execution, compatibility testing |

### External Stakeholders

| Stakeholder | Organization | Relationship | Influence | Interest |
|-------------|--------------|--------------|-----------|----------|
| Software Vendors (~80) | Various ISVs | Supplier | MEDIUM | MEDIUM |
| Microsoft App Assure | Microsoft | Support Partner | LOW | HIGH |
| Repackaging Tool Vendors | AdminStudio, Advanced Installer | Supplier | LOW | MEDIUM |
| License Audit Firms | BSA, FAST | Compliance Oversight | MEDIUM | LOW |
| System Integrators | Professional Services | Migration Support | LOW | MEDIUM |

### Stakeholder Power-Interest Grid

```
HIGH POWER
    │  MANAGE CLOSELY              │  KEEP SATISFIED
    │  • CIO (Exec Sponsor)        │  • CFO (Budget Owner)
    │  • IT Ops Director           │  • CISO (Security)
    │  • Enterprise Architect      │  • Procurement Manager
────┼──────────────────────────────┼─────────────────────
    │  KEEP INFORMED               │  MONITOR
    │  • End Users (6000+)         │  • Change Manager
    │  • Application Owners (15+)  │  • Software Vendors
    │  • Helpdesk Manager          │  • License Auditors
LOW POWER                                    HIGH INTEREST
```

---

## Stakeholder Drivers Analysis

### SD-1: IT Operations Director - "Enable Windows 11 Migration Success"

**Stakeholder**: IT Operations Director

**Driver Category**: OPERATIONAL + RISK

**Driver Statement**: "Application compatibility is the #1 risk to Windows 11 migration success. I cannot allow untested or incompatible applications to derail the migration and repeat the Windows 7→10 disaster."

**Context & Background**:
Project 002 is a critical path dependency for Project 001 (Windows 11 Migration). Previous Windows 7 to 10 migration failed due to inadequate application compatibility testing, resulting in 6-month recovery period. IT Operations Director's reputation depends on flawless execution.

**Driver Intensity**: CRITICAL

**Enablers**:
- Windows 11 VDI test environment for rapid compatibility validation
- Microsoft App Assure for vendor compatibility statements
- Temporary contractor capacity (2 FTEs) for parallel testing
- Clear application tiering (Tier 1/2/3) for prioritization
- Application Owner engagement for UAT

**Blockers**:
- Unresponsive Application Owners delaying UAT sign-off
- Vendor non-response on Windows 11 compatibility statements
- ARM64 compatibility unknowns for Copilot+ PCs
- Silent install parameter discovery failures
- Timeline pressure from Windows 10 EOL (October 2025)

**Related Stakeholders**:
- CISO (aligned - security through tested applications)
- Enterprise Architect (aligned - governance and traceability)
- CFO (partially conflicting - wants aggressive timeline for savings)

---

### SD-2: CFO - "Achieve Licensing Cost Reduction"

**Stakeholder**: Chief Financial Officer (CFO)

**Driver Category**: FINANCIAL

**Driver Statement**: "Cut application licensing costs by £200K+ annually through aggressive portfolio rationalization. This is low-hanging fruit - we're paying for 350 applications when we use fewer than 200 actively."

**Context & Background**:
Board mandate for 15% IT cost reduction. Application licensing audit reveals significant waste: multiple tools serving same function (3 PDF editors), obsolete applications retained "just in case", <5% adoption applications consuming licensing budget. Windows 11 migration is catalyst for long-overdue rationalization.

**Driver Intensity**: HIGH

**Enablers**:
- Application usage analytics (InTune inventory) proving low adoption
- Redundancy detection (consolidate 3 PDF editors → 1)
- Vendor contract renegotiations based on reduced scope
- Clear business case for each retirement with savings quantification
- Executive sponsorship for unpopular retirement decisions

**Blockers**:
- Application Owner resistance to retirement ("we might need it someday")
- User complaints about losing familiar tools
- Hidden dependencies (app A requires app B)
- Enterprise license agreements with minimum commitment
- Change management overhead for user retraining

**Related Stakeholders**:
- IT Operations Director (aligned - reduced migration scope)
- Procurement Manager (aligned - license optimization)
- Application Owners (conflicting - want to retain tools)
- End Users (conflicting - change resistance)

---

### SD-3: Enterprise Architect - "Establish Application Governance"

**Stakeholder**: Enterprise Architect

**Driver Category**: COMPLIANCE + STRATEGIC

**Driver Statement**: "The current application estate is ungoverned chaos - no catalog, no ownership, no lifecycle tracking. This project is the opportunity to establish application governance excellence."

**Context & Background**:
EA practice newly established (12 months). Previous projects lacked application governance rigor. No centralized application catalog - applications appear in InTune/ConfigMgr but without ownership, lifecycle stage, or compatibility status tracking. Enterprise Architect driver (SD-7) from Project 001 requires governance precedent.

**Driver Intensity**: HIGH

**Enablers**:
- Centralized application catalog (ServiceNow CMDB or SharePoint)
- 100% application ownership assignment
- Lifecycle stage tracking (Active → Deprecated → Sunset → Retired)
- Quarterly application governance reviews
- Integration with InTune for automated compliance checking
- Requirements traceability from Project 001

**Blockers**:
- IT culture of "just ship it" bypassing governance
- Application Owners reluctant to take formal ownership
- No ServiceNow CMDB integration budget (SHOULD_HAVE)
- Timeline pressure prioritizing speed over governance rigor

**Related Stakeholders**:
- IT Operations Director (partially aligned - governance adds overhead)
- CISO (aligned - governance enables security tracking)
- CIO (aligned - demonstrates IT maturity)

---

### SD-4: Application Owners - "Protect Business Continuity"

**Stakeholder**: Application Owners (15+ individuals across business units)

**Driver Category**: OPERATIONAL + PERSONAL

**Driver Statement**: "I am accountable for this application's availability. If Windows 11 migration breaks it, my users can't do their jobs and it's my problem. Don't change what works."

**Context & Background**:
Application Owners are business unit representatives accountable for line-of-business applications (ERP, CRM, custom apps). They are measured on application availability, not IT efficiency. Previous migration experiences created skepticism. Fear of being blamed for post-migration issues.

**Driver Intensity**: HIGH

**Enablers**:
- Thorough compatibility testing with Application Owner UAT
- Clear test evidence (screenshots, logs) proving compatibility
- 10-day rollback capability if issues discovered post-migration
- Responsive IT support during migration period
- Alternative solutions for any retired applications

**Blockers**:
- Aggressive timeline limiting testing thoroughness
- Being voluntold to participate in UAT without allocated time
- Fear of being blamed for untested scenarios
- Loss of familiar applications to rationalization
- ARM64 compatibility unknowns

**Related Stakeholders**:
- IT Operations Director (aligned - wants successful testing)
- End Users (aligned - both want working applications)
- CFO (conflicting - rationalization threatens apps)

---

### SD-5: CISO - "Eliminate Application Security Risks"

**Stakeholder**: Chief Information Security Officer (CISO)

**Driver Category**: COMPLIANCE + SECURITY

**Driver Statement**: "Unsupported applications with unpatched vulnerabilities are unacceptable. This rationalization must retire insecure applications and ensure all retained apps meet Zero Trust security requirements."

**Context & Background**:
Windows 11 Zero Trust benefits (TPM 2.0, Defender, BitLocker) undermined by insecure applications. Vulnerability scanning reveals applications with unpatched CVEs. Some applications predate security requirements. Application rationalization is opportunity for security hygiene.

**Driver Intensity**: HIGH

**Enablers**:
- Vulnerability scanning integrated into packaging workflow
- Zero critical CVEs in production policy (blocks insecure deployments)
- Security assessment for Tier 1 applications
- Defender Application Control compatibility validation
- Automated security gate in deployment pipeline

**Blockers**:
- Vendors slow to patch vulnerabilities
- Business pressure to deploy apps with known vulnerabilities
- Legacy applications without vendor security support
- Timeline pressure vs. security review thoroughness

**Related Stakeholders**:
- IT Operations Director (partially conflicting - security blocks deployment)
- Enterprise Architect (aligned - security principles)
- Security Architect (aligned - execution partner)

---

### SD-6: End Users - "Don't Take Away My Tools"

**Stakeholder**: End Users (6000+ employees)

**Driver Category**: OPERATIONAL + PERSONAL

**Driver Statement**: "I've been using [application] for 5 years. It works. I know how to use it. Don't take it away or replace it with something I have to relearn."

**Context & Background**:
Users are productivity-focused and change-averse. Previous IT changes (email migration, VPN change) caused frustration and lost productivity. Rationalization directly threatens familiar tools. Users don't care about licensing costs - they care about doing their jobs.

**Driver Intensity**: HIGH

**Enablers**:
- Equivalent or better alternative solutions for retired apps
- Training and documentation for alternatives
- 30+ day advance notice per Architecture Principle 14
- User exemption process for justified retention requests
- Responsive helpdesk support during transition

**Blockers**:
- Aggressive rationalization removing favored tools
- Inadequate training on alternatives
- Poor communication about changes
- Helpdesk unable to answer application questions
- Alternatives perceived as inferior

**Related Stakeholders**:
- CFO (conflicting - rationalization driver)
- Helpdesk Manager (aligned - support for users)
- Application Owners (aligned - represent user interests)

---

### SD-7: Helpdesk Manager - "Don't Overwhelm My Team"

**Stakeholder**: Helpdesk Manager

**Driver Category**: OPERATIONAL + RISK

**Driver Statement**: "My 30-person team is already handling Windows 11 migration support. Application changes on top of that will generate ticket spikes. We need training lead time and clear knowledge articles."

**Context & Background**:
Helpdesk team already at capacity with Project 001 Windows 11 migration support. Application changes (retirements, replacements, version upgrades) generate user confusion and tickets. Previous major changes overwhelmed team for months.

**Driver Intensity**: MEDIUM-HIGH

**Enablers**:
- 30-day advance notice for application changes
- Knowledge base articles for each retirement (alternatives, training)
- Training sessions for helpdesk staff on major application changes
- Application catalog with ownership info (escalation path)
- Self-service resources reducing ticket volume

**Blockers**:
- Rapid application changes without training lead time
- Insufficient documentation on alternatives
- No escalation path to Application Owners
- Complex new applications replacing simple familiar tools

**Related Stakeholders**:
- IT Operations Director (aligned - minimize ticket volume)
- Change Manager (aligned - communication reduces tickets)
- End Users (aligned - well-supported users = fewer tickets)

---

### SD-8: Procurement Manager - "Optimize Vendor Relationships"

**Stakeholder**: Procurement Manager

**Driver Category**: FINANCIAL + OPERATIONAL

**Driver Statement**: "We have 80+ software vendors. Rationalization is the opportunity to consolidate, renegotiate enterprise agreements, and reclaim unused licenses before renewal."

**Context & Background**:
Vendor sprawl creates complexity - 80+ vendors, overlapping contracts, licenses purchased based on estimates not usage. True-up audits reveal over-licensing in some areas, compliance risk in others. Application rationalization provides usage data for informed negotiations.

**Driver Intensity**: MEDIUM-HIGH

**Enablers**:
- Accurate usage data from InTune/application inventory
- Rationalization decisions 90+ days before contract renewals
- Vendor consolidation opportunities (single source for similar tools)
- License reclamation automation
- Procurement involvement in retirement decisions

**Blockers**:
- Enterprise agreements with minimum commitments
- Long-term contracts limiting flexibility
- Usage data quality/completeness
- Application Owners requesting exceptions
- Hidden costs in switching vendors

**Related Stakeholders**:
- CFO (aligned - cost savings)
- IT Operations Director (aligned - reduced vendor complexity)
- Application Owners (partially conflicting - vendor preference)

---

### SD-9: IT Packagers - "Clear Requirements and Adequate Time"

**Stakeholder**: IT Packagers (3-5 FTEs)

**Driver Category**: OPERATIONAL + PERSONAL

**Driver Statement**: "We can package 220 applications for InTune if we have clear requirements, adequate time, and test environments. Don't expect miracles with unrealistic timelines."

**Context & Background**:
IT Packagers are the technical execution team responsible for application discovery, compatibility testing, InTune packaging, and deployment validation. They have limited capacity (3 FTEs baseline, 5 with contractors). Quality depends on adequate time and clear standards.

**Driver Intensity**: MEDIUM

**Enablers**:
- Windows 11 VDI test environment (rapid provisioning)
- Copilot+ PC physical devices for ARM64 testing
- Packaging tools (AdminStudio, Advanced Installer)
- Clear packaging standards and templates
- Vendor documentation (silent install parameters)
- Temporary contractor augmentation for peak periods

**Blockers**:
- Unrealistic timelines from management
- Poor vendor documentation
- Unresponsive vendors for compatibility queries
- Complex legacy applications
- ARM64 kernel-mode driver incompatibility
- Scope creep (additional applications added mid-project)

**Related Stakeholders**:
- IT Operations Director (accountable for their delivery)
- Enterprise Architect (standards and quality expectations)
- Security Architect (vulnerability scanning integration)

---

## Driver-to-Goal Mapping

### Goal G-1: Complete Tier 1 Compatibility Testing Before Pilot

**Derived From Drivers**: SD-1 (IT Ops execution), SD-4 (App Owner continuity), SD-5 (CISO security)

**Goal Owner**: IT Operations Director

**Goal Statement**: "Achieve 100% Windows 11 compatibility certification for all Tier 1 (business-critical) applications by Month 2, before Project 001 pilot phase begins"

**Why This Matters**:
- **IT Ops**: Critical path dependency - pilot cannot proceed with untested critical apps
- **App Owners**: Confidence that their applications will work post-migration
- **CISO**: Security assessment completed for high-risk applications

**Success Metrics**:
- **Primary Metric**: % Tier 1 applications certified (target 100%)
- **Secondary Metrics**:
  - Application Owner UAT sign-off obtained (100%)
  - Zero P1 incidents from Tier 1 app issues during pilot

**Baseline**: 0% certified

**Target**: 100% certified by Month 2

**Measurement Method**: Application catalog compatibility_status field, UAT sign-off records

**Dependencies**:
- Windows 11 VDI test environment ready (Month 0, Week 2)
- Application Owner availability for UAT
- Vendor compatibility statements received

**Risks to Achievement**:
- Vendor non-response on compatibility (R-001)
- Application Owners unresponsive for UAT (R-002)
- Testing discovers critical incompatibility requiring remediation

---

### Goal G-2: Achieve Application Portfolio Reduction Target

**Derived From Drivers**: SD-2 (CFO cost), SD-1 (IT Ops scope reduction)

**Goal Owner**: CFO / IT Operations Director

**Goal Statement**: "Reduce application portfolio from ~350 to <220 applications (30-40% reduction) through retirement of redundant, obsolete, and low-usage applications"

**Why This Matters**:
- **CFO**: £200K+ annual licensing cost savings
- **IT Ops**: Reduced migration scope, fewer applications to test and package

**Success Metrics**:
- **Primary Metric**: Application count (target <220)
- **Secondary Metrics**:
  - Redundancy eliminated (target: single tool per category)
  - Low-usage apps retired (target: <5% adoption apps reviewed)

**Baseline**: ~350 applications

**Target**: <220 applications (37% reduction)

**Measurement Method**: Application catalog count, monthly tracking

**Dependencies**:
- Application usage analytics available
- Application Owner decisions on retirements
- Change management for user-impacting retirements

**Risks to Achievement**:
- Application Owner resistance (R-004)
- User complaints escalating to executives
- Hidden dependencies discovered late

---

### Goal G-3: Achieve Licensing Cost Savings

**Derived From Drivers**: SD-2 (CFO cost), SD-8 (Procurement optimization)

**Goal Owner**: CFO / Procurement Manager

**Goal Statement**: "Achieve £200K+ annual licensing cost savings through application retirements, vendor consolidation, and license reclamation by Month 6"

**Why This Matters**:
- **CFO**: Delivers cost reduction targets to Board
- **Procurement**: Demonstrates vendor management value

**Success Metrics**:
- **Primary Metric**: Annual licensing cost savings (target £200K+)
- **Secondary Metrics**:
  - Vendor count reduction (80 → <60)
  - License reclamation actions completed

**Baseline**: £0 savings

**Target**: £200K annual savings by Month 6

**Measurement Method**: Finance cost tracking, license inventory

**Dependencies**:
- Application rationalization decisions (G-2)
- Vendor contract renewal timing
- License reclamation process implementation

**Risks to Achievement**:
- Enterprise agreement minimum commitments
- Savings calculations prove optimistic (R-004)
- Contract timing misalignment

---

### Goal G-4: Complete InTune Packaging for All Retained Applications

**Derived From Drivers**: SD-1 (IT Ops execution), SD-3 (EA cloud-native)

**Goal Owner**: IT Operations Director

**Goal Statement**: "Package 100% of retained applications (~220) for Microsoft InTune deployment by Month 4, eliminating Configuration Manager dependencies"

**Why This Matters**:
- **IT Ops**: Enables ConfigMgr decommissioning (Project 001 Goal G-7)
- **EA**: Cloud-native application deployment per Architecture Principle 1

**Success Metrics**:
- **Primary Metric**: % applications packaged for InTune (target 100%)
- **Secondary Metrics**:
  - Deployment success rate in pilot testing (target >95%)
  - Zero ConfigMgr-only applications remaining

**Baseline**: 0% InTune-ready (100% ConfigMgr)

**Target**: 100% InTune-ready by Month 4

**Measurement Method**: Application catalog deployment_method field

**Dependencies**:
- Compatibility testing complete (G-1, G-5)
- IT Packager capacity available
- Silent install parameters discovered

**Risks to Achievement**:
- Silent install discovery failures (R-005)
- Package size limits (>8GB) (R-006)
- Timeline extends beyond Month 4 (R-007)

---

### Goal G-5: Complete Tier 2 Compatibility Testing

**Derived From Drivers**: SD-1 (IT Ops execution), SD-4 (App Owner continuity)

**Goal Owner**: IT Operations Director

**Goal Statement**: "Achieve 95% Windows 11 compatibility certification for Tier 2 (standard) applications by Month 3, before Project 001 early adopter phase"

**Why This Matters**:
- **IT Ops**: Early adopter phase requires broader application readiness
- **App Owners**: Tier 2 apps support daily productivity

**Success Metrics**:
- **Primary Metric**: % Tier 2 applications certified (target 95%)
- **Secondary Metrics**:
  - 5% incompatible apps have remediation plans
  - Zero P1 incidents from Tier 2 apps during early adopter phase

**Baseline**: 0% certified

**Target**: 95% certified by Month 3

**Measurement Method**: Application catalog compatibility_status field

---

### Goal G-6: Establish Application Governance Framework

**Derived From Drivers**: SD-3 (EA governance), SD-5 (CISO security tracking)

**Goal Owner**: Enterprise Architect

**Goal Statement**: "Establish centralized application catalog with 100% ownership assignment, lifecycle tracking, and quarterly governance reviews"

**Why This Matters**:
- **EA**: Governance precedent for future projects
- **CISO**: Security tracking and compliance visibility

**Success Metrics**:
- **Primary Metric**: % applications with assigned owner (target 100%)
- **Secondary Metrics**:
  - Lifecycle stage tracked for all applications
  - Quarterly reviews scheduled

**Baseline**: 0% ownership, no lifecycle tracking

**Target**: 100% ownership, lifecycle tracking by Month 4

**Measurement Method**: Application catalog completeness

---

### Goal G-7: Zero Application-Related P1 Incidents

**Derived From Drivers**: SD-1 (IT Ops execution), SD-4 (App Owner continuity), SD-5 (CISO security)

**Goal Owner**: IT Operations Director

**Goal Statement**: "Achieve zero P1 (critical) incidents caused by application compatibility issues during Windows 11 pilot and early adopter phases"

**Why This Matters**:
- **IT Ops**: Execution quality validation
- **App Owners**: Business continuity maintained
- **CISO**: Security incidents avoided

**Success Metrics**:
- **Primary Metric**: P1 incidents from app issues (target: 0)

**Baseline**: N/A

**Target**: Zero P1 incidents

**Measurement Method**: Incident tracking, root cause analysis

---

### Goal G-8: Maintain Low Application-Related Support Tickets

**Derived From Drivers**: SD-6 (User continuity), SD-7 (Helpdesk capacity)

**Goal Owner**: Helpdesk Manager / Change Manager

**Goal Statement**: "Maintain application-related support tickets at <5% of total migration tickets through proactive communication and training"

**Why This Matters**:
- **Helpdesk**: Manageable workload
- **Users**: Well-supported through changes

**Success Metrics**:
- **Primary Metric**: % migration tickets from app issues (target <5%)
- **Secondary Metrics**:
  - User satisfaction with communication (target >80%)
  - Knowledge base article views (engagement metric)

**Baseline**: Industry baseline 15-25% for unprepared migrations

**Target**: <5% app-related tickets

**Measurement Method**: ServiceNow ticket categorization

---

### Goal G-9: Complete ARM64 Compatibility Testing

**Derived From Drivers**: SD-1 (IT Ops execution), SD-9 (Packager requirements)

**Goal Owner**: IT Operations Director

**Goal Statement**: "Complete ARM64 compatibility testing for 80% of Tier 1 applications by Month 3 to support Copilot+ PC deployment per Architecture Principle 3A"

**Why This Matters**:
- **IT Ops**: Copilot+ PC readiness (30% Year 1 adoption target)
- **CIO**: AI-ready platform positioning

**Success Metrics**:
- **Primary Metric**: % Tier 1 apps ARM64 tested (target 80%)
- **Secondary Metrics**:
  - Native ARM64 versions identified
  - Emulation performance validated (<20% degradation)

**Baseline**: 0% ARM64 tested

**Target**: 80% Tier 1 tested by Month 3

**Measurement Method**: Application catalog arm64_compatibility field

---

### Goal G-10: Achieve Security Vulnerability Compliance

**Derived From Drivers**: SD-5 (CISO security)

**Goal Owner**: CISO / Security Architect

**Goal Statement**: "Deploy zero applications with unpatched critical CVEs to production, with High vulnerabilities requiring CISO risk acceptance"

**Why This Matters**:
- **CISO**: Zero Trust security posture maintained
- **Compliance Officer**: Audit-ready security controls

**Success Metrics**:
- **Primary Metric**: Critical CVEs in production (target: 0)
- **Secondary Metrics**:
  - Vulnerability scan coverage (100% of packaged apps)
  - High vulnerability risk acceptances documented

**Baseline**: Unknown (no systematic scanning)

**Target**: Zero critical CVEs in production

**Measurement Method**: Vulnerability scanning reports, risk acceptance register

---

## Goal-to-Outcome Mapping

### Outcome O-1: Windows 11 Migration Unblocked

**Supported Goals**: G-1 (Tier 1 testing), G-5 (Tier 2 testing), G-4 (InTune packaging), G-7 (Zero P1 incidents)

**Outcome Statement**: "Enable Project 001 Windows 11 Migration to proceed without application compatibility blockers, achieving 95% migration success rate with <5% application-related support tickets"

**Measurement Details**:
- **KPIs**: Migration success rate (target >95%), App-related ticket % (target <5%), P1 app incidents (target 0)
- **Current Value**: N/A (migration not started)
- **Target Value**: >95% success, <5% app tickets, 0 P1 incidents
- **Measurement Frequency**: Weekly during migration
- **Data Source**: InTune, ServiceNow, incident tracking
- **Report Owner**: IT Operations Director

**Business Value**:
- **Financial Impact**: Avoid £500K-£1M in migration failures, rollbacks, productivity loss
- **Strategic Impact**: Windows 11 migration success enables cloud transformation (Project 001)
- **Operational Impact**: IT Operations reputation maintained, no 6-month recovery period
- **Customer Impact**: Users experience seamless migration with working applications

**Timeline**:
- **Phase 1 (Months 0-2)**: Tier 1 testing complete, pilot-ready
- **Phase 2 (Months 2-3)**: Tier 2 testing complete, early adopter-ready
- **Phase 3 (Months 3-4)**: InTune packaging complete, production-ready
- **Sustainment (Month 4+)**: Migration proceeds, application issues minimal

**Stakeholder Benefits**:
- **IT Operations Director**: Successful execution, reputation protected
- **Application Owners**: Business continuity maintained
- **End Users**: Working applications post-migration
- **CISO**: Security posture maintained through tested applications

**Leading Indicators**:
- Tier 1 testing progress (weekly)
- InTune packaging progress (weekly)
- Vendor compatibility responses received

**Lagging Indicators**:
- Migration success rate (during rollout)
- Application-related ticket volume (during rollout)
- P1 incident count (during rollout)

---

### Outcome O-2: £200K+ Annual Licensing Savings

**Supported Goals**: G-2 (Portfolio reduction), G-3 (Cost savings)

**Outcome Statement**: "Achieve £200K+ annual application licensing cost savings through portfolio rationalization from ~350 to <220 applications by Month 6"

**Measurement Details**:
- **KPIs**: Annual licensing savings (target £200K+), Application count (target <220), Vendor count (target <60)
- **Current Value**: £0 savings, 350 apps, 80 vendors
- **Target Value**: £200K savings, <220 apps, <60 vendors
- **Measurement Frequency**: Monthly tracking, quarterly finance validation
- **Data Source**: Finance systems, license inventory, application catalog
- **Report Owner**: CFO / Procurement Manager

**Business Value**:
- **Financial Impact**: £200K+ annual OpEx reduction (recurring)
- **Strategic Impact**: Demonstrates IT cost optimization to Board
- **Operational Impact**: Simplified vendor management, reduced complexity
- **Customer Impact**: None (internal efficiency)

**Timeline**:
- **Phase 1 (Month 1-2)**: 80 apps retired (23%), £80K savings identified
- **Phase 2 (Month 4-6)**: Additional 50 apps retired (14%), cumulative £200K savings
- **Sustainment (Year 2+)**: Ongoing governance prevents portfolio bloat

**Stakeholder Benefits**:
- **CFO**: Cost reduction targets met, Board credibility
- **Procurement Manager**: Vendor consolidation, better negotiations
- **IT Operations Director**: Reduced migration scope and complexity

**Leading Indicators**:
- Retirement decisions made (weekly count)
- Low-usage apps identified (analytics)
- Redundancy analysis complete

**Lagging Indicators**:
- Actual license cost savings (quarterly finance)
- Vendor count reduction (monthly)
- Annual true-up savings (annual)

---

### Outcome O-3: Cloud-Native Application Deployment Established

**Supported Goals**: G-4 (InTune packaging), G-6 (Governance framework)

**Outcome Statement**: "Achieve 100% cloud-native application deployment via Microsoft InTune, eliminating Configuration Manager dependencies and enabling ConfigMgr decommissioning by Month 18"

**Measurement Details**:
- **KPIs**: % apps InTune-deployed (target 100%), ConfigMgr app dependencies (target 0)
- **Current Value**: 0% InTune, 100% ConfigMgr
- **Target Value**: 100% InTune, 0% ConfigMgr
- **Measurement Frequency**: Weekly tracking
- **Data Source**: InTune dashboard, ConfigMgr reports
- **Report Owner**: IT Operations Director

**Business Value**:
- **Financial Impact**: Enables ConfigMgr decommissioning cost savings (Project 001)
- **Strategic Impact**: Cloud-first IT per Architecture Principle 1
- **Operational Impact**: Modern deployment, zero-touch provisioning, remote management
- **Customer Impact**: Faster application availability via Company Portal

**Timeline**:
- **Phase 1 (Months 0-4)**: All retained apps packaged for InTune
- **Phase 2 (Months 4-12)**: Co-management transition, ConfigMgr apps moved to InTune
- **Phase 3 (Month 18)**: ConfigMgr decommissioned

**Stakeholder Benefits**:
- **IT Operations Director**: Modern management platform
- **Enterprise Architect**: Cloud-native architecture achieved
- **CIO**: Strategic modernization complete

---

### Outcome O-4: Application Governance Excellence Demonstrated

**Supported Goals**: G-6 (Governance framework), G-10 (Security compliance)

**Outcome Statement**: "Establish governance precedent with 100% application ownership, lifecycle tracking, quarterly reviews, and zero critical vulnerabilities in production"

**Measurement Details**:
- **KPIs**: App ownership (target 100%), Critical CVEs (target 0), Quarterly reviews (target 4/year)
- **Current Value**: 0% ownership, unknown CVEs, 0 reviews
- **Target Value**: 100% ownership, 0 critical CVEs, 4 reviews/year
- **Measurement Frequency**: Monthly tracking, quarterly reviews
- **Data Source**: Application catalog, vulnerability scanner
- **Report Owner**: Enterprise Architect / CISO

**Business Value**:
- **Financial Impact**: Reduced rework from governance gaps
- **Strategic Impact**: EA practice credibility, governance precedent
- **Operational Impact**: Audit-ready, consistent decision-making
- **Customer Impact**: Better quality, more secure applications

**Stakeholder Benefits**:
- **Enterprise Architect**: Practice credibility, governance proven
- **CISO**: Security visibility, Zero Trust enforcement
- **CIO**: IT maturity demonstrated

---

### Outcome O-5: User Productivity Maintained

**Supported Goals**: G-8 (Low support tickets), G-7 (Zero P1 incidents)

**Outcome Statement**: "Maintain user productivity through application changes with <5% app-related support tickets, >80% user satisfaction with communication, and zero unplanned disruptions"

**Measurement Details**:
- **KPIs**: App-related tickets (target <5%), User satisfaction (target >80%), Unplanned disruptions (target 0)
- **Current Value**: N/A (baseline)
- **Target Value**: <5% tickets, >80% satisfaction, 0 disruptions
- **Measurement Frequency**: Weekly tickets, post-change surveys
- **Data Source**: ServiceNow, survey platform
- **Report Owner**: Change Manager / Helpdesk Manager

**Business Value**:
- **Financial Impact**: Zero productivity loss from application changes
- **Strategic Impact**: Change management capability proven
- **Operational Impact**: Helpdesk capacity maintained
- **Customer Impact**: Users supported through transitions

**Stakeholder Benefits**:
- **End Users**: Minimal disruption, clear alternatives, good support
- **Helpdesk Manager**: Manageable ticket volume
- **Application Owners**: Users successfully transitioned

---

## Complete Traceability Matrix

### Stakeholder → Driver → Goal → Outcome

| Stakeholder | Driver ID | Driver Summary | Goal ID | Goal Summary | Outcome ID | Outcome Summary |
|-------------|-----------|----------------|---------|--------------|------------|-----------------|
| IT Ops Director | SD-1 | Enable W11 migration success | G-1 | Tier 1 testing complete | O-1 | Migration unblocked |
| IT Ops Director | SD-1 | Enable W11 migration success | G-4 | InTune packaging complete | O-3 | Cloud-native deployment |
| IT Ops Director | SD-1 | Enable W11 migration success | G-7 | Zero P1 incidents | O-1 | Migration unblocked |
| CFO | SD-2 | Licensing cost reduction | G-2 | Portfolio reduction | O-2 | £200K savings |
| CFO | SD-2 | Licensing cost reduction | G-3 | Cost savings target | O-2 | £200K savings |
| Enterprise Architect | SD-3 | Application governance | G-6 | Governance framework | O-4 | Governance excellence |
| Application Owners | SD-4 | Business continuity | G-1 | Tier 1 testing | O-1 | Migration unblocked |
| Application Owners | SD-4 | Business continuity | G-7 | Zero P1 incidents | O-1 | Migration unblocked |
| CISO | SD-5 | Security risk elimination | G-10 | Vulnerability compliance | O-4 | Governance excellence |
| CISO | SD-5 | Security risk elimination | G-7 | Zero P1 incidents | O-1 | Migration unblocked |
| End Users | SD-6 | Don't take my tools | G-8 | Low app tickets | O-5 | Productivity maintained |
| Helpdesk Manager | SD-7 | Don't overwhelm team | G-8 | Low app tickets | O-5 | Productivity maintained |
| Procurement Manager | SD-8 | Vendor optimization | G-3 | Cost savings | O-2 | £200K savings |
| IT Packagers | SD-9 | Clear requirements | G-4 | InTune packaging | O-3 | Cloud-native deployment |
| IT Packagers | SD-9 | Clear requirements | G-9 | ARM64 testing | O-1 | Migration unblocked |

### Conflict Analysis

**Competing Drivers**:

**Conflict C-1: Aggressive Rationalization vs. User Retention**
- **CFO (SD-2)** wants 30-40% portfolio reduction (350 → <220) for £200K savings
- **End Users (SD-6)** want retention of familiar tools, resist change
- **Application Owners (SD-4)** want to protect their applications from retirement
- **Resolution Strategy**:
  - **Phased approach**: Phase 1 (Month 1-2) retires 80 non-controversial apps (obsolete, <2% adoption, clear duplicates) - £80K savings
  - **Phase 2 (Month 4-6)** retires 50 user-impacting apps with 30-day change management, training, alternatives - £120K additional
  - **User exemption process**: Justified retention requests routed to Application Owner
  - **Executive sponsorship**: CFO messaging on cost necessity, CIO backing unpopular decisions

**Conflict C-2: Testing Thoroughness vs. Timeline**
- **IT Operations (SD-1)** needs thorough testing to avoid migration failures
- **CFO (SD-2)** wants speed - faster completion means earlier cost savings
- **IT Packagers (SD-9)** want adequate time for quality work
- **Resolution Strategy**:
  - **Contractor augmentation**: Hire 2 temporary IT Packagers (£30K) to increase capacity
  - **Tiered testing**: Tier 1 full UAT, Tier 2 smoke testing with pilot-phase UAT
  - **Parallel execution**: Test while packaging, don't serialize
  - **Clear timeline**: Month 2 for Tier 1, Month 3 for Tier 2, Month 4 for packaging

**Conflict C-3: Security Rigor vs. Deployment Velocity**
- **CISO (SD-5)** wants zero critical CVEs, High CVEs require risk acceptance
- **IT Operations (SD-1)** wants velocity to meet migration timeline
- **Resolution Strategy**:
  - **Automated scanning pipeline**: 4-hour scan turnaround, not days
  - **Risk-based tiering**: Critical blocks deployment, High requires CISO approval, Medium/Low auto-approved with remediation backlog
  - **Clear SLAs**: Security doesn't block unless critical

### Synergies

**Synergy 1: Rationalization Benefits Multiple Stakeholders**
- **CFO (SD-2)**: £200K cost savings
- **IT Ops (SD-1)**: Reduced migration scope (fewer apps to test/package)
- **Helpdesk (SD-7)**: Fewer applications to support
- **Security (SD-5)**: Fewer applications to secure
- **Value**: Single rationalization effort delivers financial, operational, support, and security benefits

**Synergy 2: Governance Enables Security and Audit**
- **EA (SD-3)**: Application catalog with ownership
- **CISO (SD-5)**: Security visibility per application
- **Compliance**: Audit-ready documentation
- **Value**: Centralized catalog serves governance, security, and compliance simultaneously

**Synergy 3: InTune Packaging Enables Cloud Strategy**
- **IT Ops (SD-1)**: Application deployment ready for W11
- **EA (SD-3)**: Cloud-native per Architecture Principle 1
- **CIO**: ConfigMgr decommissioning enabled (Project 001 Goal G-7)
- **Value**: Packaging work serves immediate migration AND long-term cloud transformation

---

## Communication & Engagement Plan

### Stakeholder-Specific Messaging

#### CFO

**Primary Message**: "Application rationalization delivers £200K+ annual savings through portfolio reduction from 350 to <220 applications. Phase 1 (Month 2) achieves £80K, Phase 2 (Month 6) achieves cumulative £200K."

**Key Talking Points**:
- 30-40% portfolio reduction eliminates licensing waste
- Usage data proves low adoption - we're paying for unused software
- Vendor consolidation enables better contract negotiations
- Phased approach balances savings with user change management

**Communication Frequency**: Monthly progress reports, quarterly finance validation

**Preferred Channel**: Financial dashboard, executive reports

**Success Story**: "Reduced 130 applications, eliminated 20 vendors, achieved £200K annual savings"

---

#### IT Operations Director

**Primary Message**: "Application readiness is on the critical path for Windows 11 migration. We're on track for 100% Tier 1 certification by Month 2, enabling pilot to proceed on schedule."

**Key Talking Points**:
- Tier 1 testing complete before pilot (Month 2)
- Tier 2 testing complete before early adopters (Month 3)
- InTune packaging complete by Month 4
- Zero application blockers to migration timeline

**Communication Frequency**: Weekly status meetings, daily during critical phases

**Preferred Channel**: Project dashboard, team standups

**Success Story**: "100% Tier 1 apps certified, zero P1 incidents during pilot"

---

#### Application Owners

**Primary Message**: "We need your participation in Windows 11 compatibility testing to ensure your applications work. Your UAT sign-off protects your business and your users."

**Key Talking Points**:
- Your applications will be tested before migration affects your users
- We need 2-4 hours of your time for UAT during Month 2-3
- You will receive test evidence (screenshots, logs) for sign-off
- Rollback available for 10 days if issues discovered post-migration

**Communication Frequency**: Email at project kickoff, follow-up for UAT scheduling, weekly during testing

**Preferred Channel**: Email, Teams meetings for UAT

**Success Story**: "All Tier 1 applications tested with Application Owner sign-off"

---

#### End Users

**Primary Message**: "Some applications are changing as part of Windows 11 migration. You'll receive 30 days notice for any changes affecting you, with alternatives and training provided."

**Key Talking Points**:
- You'll be notified 30 days before any application retirement
- Alternative solutions will be provided with training
- Helpdesk is available to assist with transitions
- Your feedback matters - exemption requests considered

**Communication Frequency**: T-30, T-14, T-7, T-1 for retirements

**Preferred Channel**: Email, intranet articles, department meetings

**Success Story**: "Transitioned to [alternative] smoothly with minimal retraining"

---

#### Helpdesk Manager

**Primary Message**: "We're providing 30-day advance notice on all application changes with knowledge base articles and training. Ticket volume from app changes is targeted at <5% of migration tickets."

**Key Talking Points**:
- Knowledge base articles published for each retirement
- Training sessions for major application changes
- Application catalog with ownership info for escalation
- Phased retirements limit concurrent change load

**Communication Frequency**: Weekly planning during project, daily during retirement waves

**Preferred Channel**: Team meetings, knowledge base updates

**Success Story**: "Team handled application changes with SLAs maintained"

---

#### Enterprise Architect

**Primary Message**: "This project establishes application governance precedent - 100% ownership, lifecycle tracking, quarterly reviews. EA value demonstrated for practice growth."

**Key Talking Points**:
- Centralized application catalog created
- 100% application ownership assigned
- Lifecycle stages tracked (Active → Retired)
- Quarterly governance reviews scheduled
- Integration with Project 001 traceability

**Communication Frequency**: Weekly governance updates, monthly ARB presentations

**Preferred Channel**: Architecture documentation, governance reviews

**Success Story**: "Application governance framework established, EA practice value proven"

---

## Change Impact Assessment

### Impact on Stakeholders

| Stakeholder | Current State | Future State | Change Magnitude | Resistance Risk | Mitigation Strategy |
|-------------|---------------|--------------|------------------|-----------------|---------------------|
| **Application Owners** | Informal accountability | Formal ownership, UAT required | HIGH (new responsibilities) | MEDIUM-HIGH | Clear expectations, executive mandate, minimal time commitment |
| **End Users** | 350 apps available | <220 apps, some retired | MEDIUM (losing tools) | HIGH | 30-day notice, alternatives, training, exemption process |
| **IT Packagers** | ConfigMgr packaging | InTune packaging | MEDIUM (new skills) | LOW | Training, clear standards, tools provided |
| **Helpdesk** | Support 350 apps | Support <220 apps + changes | MEDIUM (ticket spike risk) | MEDIUM | Knowledge base, training, escalation paths |
| **Procurement** | Reactive license management | Proactive optimization | LOW (enables their work) | LOW | Usage data provided, savings quantified |
| **Enterprise Architect** | No application catalog | Centralized catalog | LOW (enables governance) | LOW | Champion - enlist for governance reviews |

### Change Readiness

**Champions** (Enthusiastic supporters):
- **Enterprise Architect** - Governance framework fulfills EA mandate
- **Procurement Manager** - License optimization enables cost savings
- **CISO** - Security visibility through catalog and scanning

**Fence-sitters** (Neutral, need convincing):
- **IT Operations Director** - Supportive but concerned about timeline risk
- **Helpdesk Manager** - Needs training lead time and capacity assurance
- **IT Packagers** - Need clear requirements and adequate time

**Resisters** (Opposed or skeptical):
- **Application Owners** - Fear formal accountability, UAT time commitment
- **End Users** - Losing familiar applications to rationalization
- **Conservative Business Units** - "We've always used [application]"
- **Mitigation**: Executive sponsorship, phased approach, exemption process, training

---

## Risk Register (Stakeholder-Related)

### Risk R-1: Vendor Windows 11 Compatibility Statements Unavailable

**Related Stakeholders**: IT Operations Director, Application Owners, IT Packagers

**Risk Description**: 20-30% of software vendors fail to provide Windows 11 compatibility statements, blocking certification and migration

**Impact on Goals**: G-1 (Tier 1 testing), G-5 (Tier 2 testing), O-1 (Migration unblocked)

**Probability**: HIGH

**Impact**: HIGH

**Mitigation Strategy**:
- Engage vendors early (T-90 days)
- Prioritize high-usage applications
- Use Microsoft App Assure for validation support
- Internal testing fallback for unresponsive vendors

**Contingency Plan**: If vendor unresponsive after 30 days, proceed with internal testing and document "Tested without vendor statement - internal validation only"

---

### Risk R-2: Application Owners Unresponsive for UAT

**Related Stakeholders**: IT Operations Director, Application Owners

**Risk Description**: Application Owners fail to participate in UAT due to business priorities or lack of engagement, blocking sign-off

**Impact on Goals**: G-1 (Tier 1 testing), O-1 (Migration unblocked)

**Probability**: MEDIUM

**Impact**: HIGH

**Mitigation Strategy**:
- Executive escalation to business unit directors
- Minimal time commitment (2-4 hours)
- Flexible scheduling (multiple timeslots)
- IT Packager smoke testing fallback for Tier 2

**Contingency Plan**: If Application Owner unresponsive after 2 escalations, IT Operations Director signs off with documented risk acceptance

---

### Risk R-3: ARM64 Compatibility 30-40% Degraded/Incompatible

**Related Stakeholders**: IT Operations Director, IT Packagers, CIO

**Risk Description**: Significant percentage of applications perform poorly or are incompatible under ARM64 emulation on Copilot+ PCs

**Impact on Goals**: G-9 (ARM64 testing), O-1 (Migration unblocked for Copilot+ users)

**Probability**: MEDIUM

**Impact**: MEDIUM

**Mitigation Strategy**:
- Prioritize x64 Copilot+ PCs (Intel/AMD) over ARM64 initially
- Engage vendors for native ARM64 versions
- Identify Copilot+ PC-compatible app list early
- User assignment based on app compatibility

**Contingency Plan**: If critical apps incompatible, exclude affected users from Copilot+ PC deployment, use standard x64 Windows 11 devices

---

### Risk R-4: Rationalization Savings <£200K Due to User Resistance

**Related Stakeholders**: CFO, End Users, Application Owners

**Risk Description**: User complaints and Application Owner resistance reduce retirement count, achieving less than £200K savings target

**Impact on Goals**: G-2 (Portfolio reduction), G-3 (Cost savings), O-2 (£200K savings)

**Probability**: MEDIUM

**Impact**: MEDIUM

**Mitigation Strategy**:
- Executive sponsorship messaging from CFO/CIO
- 30-day change management per retirement
- Alternatives and training provided
- Exemption process for justified retention

**Contingency Plan**: If Phase 1 resistance high, extend Phase 2 timeline, prioritize non-controversial retirements, accept lower savings target with documented business reasons

---

### Risk R-5: Silent Install Parameter Discovery Fails

**Related Stakeholders**: IT Packagers, IT Operations Director

**Risk Description**: 10-15% of applications lack silent install documentation, blocking InTune packaging

**Impact on Goals**: G-4 (InTune packaging), O-3 (Cloud-native deployment)

**Probability**: MEDIUM

**Impact**: MEDIUM

**Mitigation Strategy**:
- Use repackaging tools (AdminStudio, Advanced Installer)
- Engage vendors for documentation
- Test common silent switches (/S, /silent, /quiet)
- User-context installation fallback

**Contingency Plan**: For stubborn applications, use App-V virtualization or user-context installation with Company Portal

---

### Risk R-6: Critical Application Incompatible with No Vendor Remediation

**Related Stakeholders**: IT Operations Director, Application Owners, CIO, CISO

**Risk Description**: Business-critical (Tier 1) application incompatible with Windows 11 with no vendor remediation path

**Impact on Goals**: G-1 (Tier 1 testing), G-7 (Zero P1 incidents), O-1 (Migration unblocked)

**Probability**: LOW

**Impact**: CRITICAL

**Mitigation Strategy**:
- Identify early via vendor lookup (Month 0)
- Explore alternative applications
- Request vendor custom support
- Microsoft App Assure remediation assistance

**Contingency Plan**: If no remediation possible, retain affected users on Windows 10 with ESU (Extended Security Updates) at £[X] per device, or use VDI for application access

---

### Risk R-7: Testing Extends Beyond Month 3, Delays Migration Pilot

**Related Stakeholders**: IT Operations Director, IT Packagers, CIO

**Risk Description**: Compatibility testing complexity extends timeline beyond Month 3, delaying Windows 11 pilot and jeopardizing October 2025 EOL deadline

**Impact on Goals**: G-1 (Tier 1 testing), G-5 (Tier 2 testing), O-1 (Migration unblocked)

**Probability**: MEDIUM

**Impact**: CRITICAL

**Mitigation Strategy**:
- Contractor augmentation (2 FTEs)
- Parallelize testing (multiple IT Packagers)
- Prioritize Tier 1 strictly
- Microsoft App Assure fast-track for blockers

**Contingency Plan**: If behind schedule at Month 2, reduce Tier 2 coverage target from 95% to 85%, defer Tier 3 to pilot-phase testing

---

## Governance & Decision Rights (RACI)

### Decision Authority Matrix

| Decision Type | Responsible | Accountable | Consulted | Informed |
|---------------|-------------|-------------|-----------|----------|
| **Application retirement** | IT Ops Director | CFO | Application Owner, End User Rep | All stakeholders |
| **Compatibility testing sign-off** | IT Packager | IT Ops Director | Application Owner | Enterprise Architect |
| **Application tier classification** | Enterprise Architect | IT Ops Director | Application Owner, CISO | CIO |
| **InTune packaging standards** | IT Packager Lead | IT Ops Director | Enterprise Architect | All IT staff |
| **Security vulnerability risk acceptance** | CISO | CIO | IT Ops Director, Application Owner | Security Architect |
| **ARM64 compatibility decision** | IT Packager | IT Ops Director | Application Owner | CIO |
| **Vendor engagement escalation** | IT Ops Director | CIO | Procurement Manager | Application Owner |
| **User exemption approval** | Application Owner | IT Ops Director | CFO | Change Manager |
| **Budget approval (contractors)** | IT Ops Director | CIO/CFO | Procurement Manager | All |

### Escalation Path

1. **Level 1**: IT Packager / Project Coordinator (day-to-day issues, <£5K decisions)
2. **Level 2**: IT Operations Director (scope/timeline variances, Application Owner escalations, £5-50K decisions)
3. **Level 3**: CIO + CFO (strategic pivots, critical blockers, >£50K decisions, application incompatibility requiring business process change)

---

## Validation & Sign-off

### Stakeholder Review

| Stakeholder | Review Date | Comments | Status |
|-------------|-------------|----------|--------|
| CIO | | | PENDING |
| CFO | | | PENDING |
| IT Operations Director | | | PENDING |
| CISO | | | PENDING |
| Enterprise Architect | | | PENDING |
| Procurement Manager | | | PENDING |

### Document Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Project Sponsor (CIO) | | | |
| Project Owner (IT Ops Director) | | | |
| Enterprise Architect | | | |

---

## Success Metrics Summary

| Metric | Baseline | Target | Timeline | Owner | Status Tracking |
|--------|----------|--------|----------|-------|----------------|
| **Tier 1 compatibility** | 0% | 100% | Month 2 | IT Ops | Weekly catalog updates |
| **Tier 2 compatibility** | 0% | 95% | Month 3 | IT Ops | Weekly catalog updates |
| **Application count** | 350 | <220 | Month 4 | CFO | Monthly tracking |
| **Licensing savings** | £0 | £200K+ | Month 6 | CFO | Quarterly finance |
| **InTune packaging** | 0% | 100% | Month 4 | IT Ops | Weekly catalog updates |
| **App ownership** | 0% | 100% | Month 2 | EA | Monthly catalog audit |
| **ARM64 testing (Tier 1)** | 0% | 80% | Month 3 | IT Ops | Weekly tracking |
| **Critical CVEs in prod** | Unknown | 0 | Ongoing | CISO | Continuous scanning |
| **App-related tickets** | N/A | <5% | Migration period | Helpdesk | Weekly ServiceNow |
| **User satisfaction** | N/A | >80% | Post-change | Change Mgr | Surveys |

---

## Appendices

### Appendix A: Stakeholder Interview Summaries

#### Interview with IT Operations Director - 2026-01-15

**Key Points**:
- Previous W7-W10 migration application failures were traumatic - determined to avoid repeat
- Needs contractor augmentation for testing capacity
- Application Owners historically unresponsive - needs executive mandate

**Quotes**:
- "Application compatibility is my #1 migration risk. If apps don't work, users revolt."
- "Get me 2 contractors and clear Application Owner engagement, and we'll hit Month 2 for Tier 1."

**Follow-up Actions**:
- Contractor hiring approved (£30K budget)
- CIO email mandating Application Owner participation

---

#### Interview with CFO - 2026-01-16

**Key Points**:
- Board mandate for cost reduction - application licensing is low-hanging fruit
- Skeptical that £200K savings achievable due to user resistance
- Wants phased approach with early wins

**Quotes**:
- "We're paying for 350 applications and using 200. That's waste."
- "Give me Phase 1 quick wins first - retire the obvious bloat."

**Follow-up Actions**:
- Phase 1 (non-controversial) by Month 2 for early savings visibility
- Monthly savings tracking report to CFO

---

#### Interview with Application Owners (sample of 3) - 2026-01-17

**Key Points**:
- Fear formal accountability for applications
- Concerned about time commitment for UAT
- Want assurance rollback available if issues

**Quotes**:
- "I barely have time for my day job. Don't add testing to my plate."
- "If something breaks after migration, will I be blamed?"

**Follow-up Actions**:
- UAT time commitment minimized to 2-4 hours
- Clear rollback capability communicated (10-day window)
- Executive messaging on shared responsibility

---

#### Interview with End User Representatives - 2026-01-18

**Key Points**:
- Users attached to familiar applications
- Previous IT changes (email, VPN) were disruptive
- Want advance notice and training for any changes

**Quotes**:
- "Don't take away [PDF editor] - I've used it for years."
- "Last time IT changed something, it took weeks to figure out the new tool."

**Follow-up Actions**:
- 30-day advance notice policy confirmed
- Training and alternatives for every retirement
- User exemption request process

---

### Appendix B: Related Project 001 Dependencies

This project (002) has critical dependencies TO and FROM Project 001 (Windows 11 Migration):

**Project 002 → Project 001 Dependencies**:
- Tier 1 app testing complete before pilot (Month 2)
- Tier 2 app testing complete before early adopters (Month 3)
- InTune packaging complete before production waves (Month 4)
- Zero application blockers to migration timeline

**Project 001 → Project 002 Dependencies**:
- Windows 11 VDI test environment available (Month 0, Week 2)
- Copilot+ PC test devices available (Month 1)
- InTune tenant configuration complete (Month 0)
- User deployment schedule for retirement timing

**Shared Stakeholders**:
- CIO (Executive Sponsor for both)
- IT Operations Director (Project Owner for both)
- CISO (Security oversight for both)
- Enterprise Architect (Governance for both)
- End Users (Affected by both)

---

### Appendix C: References

- [Project 001 Requirements](/workspaces/arckit-test-project-v3-windows11/projects/001-windows-11-migration-intune/requirements.md)
- [Project 001 Stakeholder Analysis](/workspaces/arckit-test-project-v3-windows11/projects/001-windows-11-migration-intune/stakeholder-drivers.md)
- [Project 002 Requirements](/workspaces/arckit-test-project-v3-windows11/projects/002-application-packaging-rationalisation/requirements.md)
- [Architecture Principles](/workspaces/arckit-test-project-v3-windows11/.arckit/memory/architecture-principles.md)
- [Microsoft InTune Win32 App Management](https://learn.microsoft.com/mem/intune/apps/apps-win32-app-management)
- [Microsoft App Assure Service](https://learn.microsoft.com/fasttrack/windows-11-app-assure)

---

**Generated by**: ArcKit `/arckit.stakeholders` command
**Generated on**: 2026-01-24
**ArcKit Version**: 0.11.0
**Project**: Application Packaging and Rationalisation (Project 002)
**AI Model**: Claude Opus 4.5
