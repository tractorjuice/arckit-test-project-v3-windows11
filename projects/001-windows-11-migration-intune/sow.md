# Statement of Work (SOW): Windows 10 to Windows 11 Migration using Microsoft InTune

**Document Type**: Procurement - Statement of Work / Request for Proposal
**RFP ID**: RFP-WIN11-001
**Project ID**: 001
**Issue Date**: [DATE]
**Proposal Due Date**: [DATE + 6 weeks]
**Version**: 1.0
**Issuing Organization**: [ORGANIZATION_NAME]
**Point of Contact**: [NAME], [EMAIL], [PHONE]

---

## 1. Executive Summary

### 1.1 Purpose of This SOW

This Statement of Work (SOW) defines the requirements, deliverables, and evaluation criteria for migrating [NUMBER] Windows 10 devices to Windows 11 while transforming endpoint management from on-premises Configuration Manager to cloud-native Microsoft InTune. The issuing organization is seeking qualified vendors to provide professional services, consulting, and implementation support for this mission-critical transformation.

### 1.2 Background

[ORGANIZATION_NAME] currently operates a Windows 10 endpoint environment managed through a hybrid approach combining on-premises Configuration Manager (SCCM) and limited cloud services. With Microsoft ending extended support for Windows 10 on **October 14, 2025**, the organization faces significant security, compliance, and operational risks. This project represents a strategic transformation to modern cloud-native endpoint management while ensuring Zero Trust security posture, user productivity, and regulatory compliance.

The migration encompasses approximately [NUMBER] devices across [NUMBER] locations serving diverse user personas including executives, knowledge workers, developers, task workers, field personnel, and IT staff. Success requires not only technical excellence but also comprehensive change management, user training, and operational readiness.

### 1.3 Project Overview

**Objective**: Migrate 95% of eligible Windows 10 devices to Windows 11 with cloud-native InTune management within 24 months (completion target: September 2025, 6 weeks before Windows 10 EOL).

**Scope**: End-to-end migration services including hardware assessment, application compatibility testing, InTune configuration, Windows Autopilot deployment, security baseline implementation, user training, helpdesk enablement, pilot/production migration execution, and Configuration Manager decommissioning.

**Expected Outcomes**:
- 95% migration completion with 90% device compliance (TPM 2.0, BitLocker, Defender for Endpoint)
- 100% InTune cloud-native management with Configuration Manager decommissioned
- <2 hours user downtime per device with 100% data preservation
- >80% user satisfaction with migration experience
- Zero P1/P2 security incidents related to unsupported Windows 10 devices
- Cost savings of $[X]/year through Configuration Manager infrastructure elimination

**Budget Range**: $[MIN] - $[MAX] (Professional services, consulting, and implementation support; excludes hardware procurement and Microsoft licensing)

**Timeline**: 24-month implementation from Q4 2024 to Q2 2026

---

## 2. Scope of Work

### 2.1 In Scope - Vendor Responsibilities

The selected vendor will be responsible for:

#### **Phase 1: Assessment and Planning (Months 1-3)**
- Hardware compatibility assessment for all Windows 10 devices using InTune inventory and PC Health Check tools
- Device categorization (Compatible | Upgradeable with BIOS update | Requires Replacement)
- Hardware replacement recommendations and cost-benefit analysis
- Application inventory and compatibility assessment for top 100 business applications
- Application testing strategy and test lab setup (Azure Virtual Desktop or physical devices)
- InTune tenant architecture design aligned with 18 enterprise architecture principles
- Security baseline configuration (Microsoft Security Baseline for Windows 11)
- Zero Trust architecture design (Conditional Access, Defender for Endpoint, device compliance)
- Migration timeline and wave planning with risk mitigation strategies
- Copilot+ PC pilot strategy and procurement recommendations

#### **Phase 2: Design and Configuration (Months 4-6)**
- InTune policy design (device compliance, configuration profiles, security baseline, update rings)
- Windows Autopilot deployment profile configuration (User-Driven, Self-Deploying, White Glove)
- Azure AD join strategy (pure Azure AD vs. hybrid AD join for legacy app support)
- OneDrive Known Folder Move (KFM) policy deployment for data protection
- Microsoft Defender for Endpoint onboarding configuration
- Conditional Access policy design requiring compliant devices + MFA
- Application packaging for InTune Win32 app management
- Group Policy Object (GPO) to InTune policy migration using Group Policy Analytics
- Configuration Manager co-management setup with workload transition plan
- Windows Update for Business ring configuration (Ring 1: IT Staff, Ring 2: Early Adopters, Ring 3: Production, Ring 4: Critical Systems)

#### **Phase 3: Testing and Pilot (Months 7-9)**
- Application compatibility testing for top 100 business applications in Windows 11 test environment
- Document compatibility status (Compatible | Vendor Certified | Needs Update | Incompatible | Retire)
- Remediation planning for incompatible applications
- Copilot+ PC pilot deployment (50-100 devices to IT staff and early adopters)
- ARM64 (Snapdragon) application compatibility testing if Copilot+ PCs include ARM64 devices
- Pilot migration execution (50-100 IT staff devices)
- Issue identification, troubleshooting, and resolution
- Pilot success criteria validation (zero P1/P2 incidents, >80% user satisfaction)
- Helpdesk training on Windows 11, InTune troubleshooting, Autopilot, and common issues
- Runbook creation for device provisioning, migration, rollback, and incident response

#### **Phase 4: Production Migration Waves (Months 10-22)**
- Early adopter phase migration (10% of users, tech-savvy champions)
- Production wave planning (500-1000 users per wave, 20 waves total)
- Automated migration execution via InTune feature update policies
- Real-time monitoring of migration progress, success rates, and issue tracking
- Helpdesk support escalation and resolution
- User communication delivery per established timeline (T-30, T-14, T-7, T-1, T+1 days)
- Wave go/no-go decision support based on success criteria
- Pause and resume procedures for high-failure scenarios (>10% failure rate or P1 incidents)
- Rollback support for devices experiencing critical issues (within 10-day Windows.old retention window)
- Post-migration compliance verification (TPM 2.0, BitLocker, Defender, update status)

#### **Phase 5: Configuration Manager Decommissioning (Months 18-24)**
- Configuration Manager workload transition to InTune per phased plan
- Months 18-21: 100% workload cutover to InTune
- Month 22: Configuration Manager infrastructure decommission planning
- Months 23-24: Configuration Manager server shutdown and removal
- Documentation of decommissioned infrastructure for audit purposes

#### **Phase 6: Knowledge Transfer and Closure (Months 23-24)**
- Technical training for IT staff on InTune administration, policy management, troubleshooting
- Operations training for helpdesk on device provisioning, compliance remediation, user support
- Comprehensive documentation delivery (architecture, runbooks, troubleshooting guides)
- Migration metrics reporting (completion rate, compliance rate, user satisfaction, cost savings)
- Lessons learned and best practices documentation
- 90-day warranty support post-project closure

### 2.2 Out of Scope - Explicitly Excluded

The following are NOT part of this engagement:
- **Hardware procurement**: Client organization responsible for procuring replacement devices and Copilot+ PCs
- **Microsoft licensing**: Client has existing Microsoft 365 E3/E5 licenses (InTune, Azure AD Premium P1, Defender for Endpoint)
- **Server operating system upgrades**: Separate project outside this SOW
- **Virtual Desktop Infrastructure (VDI)**: Azure Virtual Desktop deployment deferred to future phase
- **macOS/Linux endpoint management**: Not in scope; Windows devices only
- **Mobile device management (MDM)**: iOS/Android already managed via existing InTune deployment
- **Application modernization or rewrite**: Vendor assists with compatibility testing and remediation only; application rewrites are client responsibility
- **Network infrastructure upgrades**: Client responsible unless identified as migration blocker during assessment
- **Custom software development**: Except for minor scripting/automation for migration tasks

### 2.3 Client Responsibilities

[ORGANIZATION_NAME] will provide:
- **Executive Sponsorship**: CIO/CTO sponsor with decision authority and budget approval
- **Project Owner**: IT Operations Director for day-to-day project management and resource allocation
- **Subject Matter Experts (SMEs)**: Application owners, security architects, helpdesk managers, change management leads
- **Azure AD Tenant Access**: Tenant admin access for vendor technical team (role-based access control)
- **InTune and Configuration Manager Access**: Admin access to InTune tenant and Configuration Manager infrastructure
- **Hardware Procurement**: Client procures replacement devices and Copilot+ PCs per vendor recommendations
- **User Communication Approval**: Client approves all user communication content before distribution
- **Helpdesk Resources**: Client helpdesk team handles Tier 1 support; vendor provides Tier 2/3 escalation support during migration
- **Change Advisory Board (CAB)**: Weekly CAB meetings for go/no-go decisions on migration waves
- **Test Lab Infrastructure**: Client provides Azure Virtual Desktop subscription or physical test devices for application testing
- **Network Bandwidth**: Client ensures adequate network bandwidth for Windows 11 downloads and OneDrive sync (50-100 Mbps)

---

## 3. Requirements

### 3.1 Requirements Summary

The selected vendor MUST deliver a solution that complies with **all** requirements documented in `projects/001-windows-11-migration-intune/requirements.md` including:

**Business Requirements (8 total)**:
- BR-001: Security Compliance and Risk Mitigation (MUST_HAVE)
- BR-002: Cloud-Native Endpoint Management (MUST_HAVE)
- BR-003: Cost Optimization and TCO Reduction (SHOULD_HAVE)
- BR-004: User Productivity and Experience (MUST_HAVE)
- BR-005: Hardware Modernization and Copilot+ PCs (SHOULD_HAVE)
- BR-006: Regulatory Compliance (GDPR, HIPAA, SOX, PCI-DSS) (MUST_HAVE)
- BR-007: Change Management and User Adoption (MUST_HAVE)
- BR-008: Phased Rollout and Risk Mitigation (MUST_HAVE)

**Functional Requirements (20+ total)**:
- FR-001: Hardware Compatibility Assessment (MUST_HAVE)
- FR-002: Autopilot Device Registration (MUST_HAVE)
- FR-003: OneDrive Known Folder Move Deployment (MUST_HAVE)
- FR-004: InTune Feature Update Policies (MUST_HAVE)
- FR-005: Device Compliance Policies (MUST_HAVE)
- _(Additional 15+ FRs documented in requirements.md)_

**Non-Functional Requirements**:
- **Performance**: Autopilot provisioning <30 min, Windows 11 upgrade <90 min
- **Security**: Zero Trust (MFA, Conditional Access, BitLocker AES-256, Defender for Endpoint)
- **Compliance**: GDPR/CCPA data privacy, audit logging (7-year retention), monthly compliance reports
- **Usability**: <2 hr user downtime, >80% user satisfaction, WCAG 2.1 accessibility

**Integration Requirements (5 total)**:
- INT-001: Azure Active Directory (authentication, Conditional Access)
- INT-002: Microsoft Defender for Endpoint (EDR, threat protection)
- INT-003: OneDrive for Business (data sync, Known Folder Move)
- INT-004: Configuration Manager (co-management during transition)
- INT-005: Helpdesk System (ServiceNow ticket integration)

### 3.2 Architecture Principles Compliance (MANDATORY)

The vendor's solution MUST comply with all **18 Enterprise Architecture Principles** documented in `.arckit/memory/architecture-principles.md`:

**Strategic Principles (5)**:
1. Cloud-First Endpoint Management
2. Zero Trust Security Model
3. Hardware Readiness and Compatibility
4. User-Centric Migration Experience
5. Application Compatibility and Testing

**Deployment Principles (5)**:
6. Phased Rollout Strategy
7. Automated Deployment with Windows Autopilot
8. Configuration Management via InTune Policies
9. Update Management and Patching
10. Monitoring, Reporting, and Compliance

**Data & Identity Principles (2)**:
11. Azure AD Integration and Identity Management
12. Data Protection and Backup

**Operational Principles (3)**:
13. Helpdesk and User Support
14. Change Management and Communication
15. Incident Response and Rollback

**Governance Principles (3)**:
16. Licensing and Cost Management
17. Audit Logging and Compliance Reporting
18. Copilot+ PC Hardware and AI-Ready Devices (Principle 3A)

**Validation**: Vendor proposals will be evaluated against architecture principle compliance. Non-compliance with MUST_HAVE principles is disqualifying.

### 3.3 Key Technical Constraints

**TC-1**: Solution MUST use Microsoft InTune (Endpoint Manager) as primary device management platform. Configuration Manager permitted only during transition phase (18 months max).

**TC-2**: Solution MUST implement Zero Trust security with: Azure AD authentication + MFA, Conditional Access requiring compliant devices, BitLocker encryption, Microsoft Defender for Endpoint, TPM 2.0 hardware attestation.

**TC-3**: Solution MUST achieve 95% migration completion by September 1, 2025 (6 weeks before Windows 10 EOL on October 14, 2025).

**TC-4**: Solution MUST preserve 100% of user data via OneDrive Known Folder Move with zero data loss tolerance.

**TC-5**: Solution MUST support Copilot+ PC deployment strategy with 30% adoption in Year 1, 70% in Year 2.

---

## 4. Deliverables

### 4.1 Phase 1 Deliverables (Assessment and Planning)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Hardware Assessment Report** | Comprehensive assessment of all devices with compatibility status (Compatible, Upgradeable, Requires Replacement) | Excel/CSV + PDF Report | Month 3 | All devices categorized with cost estimates and timeline recommendations |
| **Application Compatibility Report** | Inventory of top 100 apps with Windows 11 compatibility status, remediation plans for incompatible apps | Excel + PDF Report | Month 3 | All business-critical apps tested with documented status |
| **Migration Project Plan** | Detailed project plan with phases, milestones, wave schedule, resource allocation, risk register | MS Project or PDF | Month 3 | Approved by Project Owner and Enterprise Architect |
| **InTune Architecture Design (HLD)** | High-level architecture including InTune policies, Autopilot configuration, security baseline, Conditional Access | PDF + C4 Diagrams | Month 4 | Approved by Architecture Review Board |

### 4.2 Phase 2 Deliverables (Design and Configuration)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **InTune Configuration Documentation** | Detailed documentation of all InTune policies (compliance, configuration profiles, apps, update rings) | Markdown/PDF | Month 6 | All policies documented with screenshots and policy JSON exports |
| **Security Baseline Configuration** | Microsoft Security Baseline for Windows 11 applied with customizations documented | InTune Policy Export + PDF | Month 6 | Security baseline deployed and compliance monitored |
| **Autopilot Deployment Profiles** | Configured Autopilot profiles for User-Driven, Self-Deploying, White Glove scenarios | InTune Configuration | Month 6 | Profiles tested successfully with test devices |
| **GPO Migration Report** | GPO to InTune policy migration status using Group Policy Analytics | Excel + PDF Report | Month 6 | All critical GPOs converted or documented with alternatives |
| **Application Packaging** | Win32 app packages for InTune deployment (top 20 business-critical apps) | .intunewin files + documentation | Month 6 | Apps deploy successfully in test environment |

### 4.3 Phase 3 Deliverables (Testing and Pilot)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Application Test Results** | Test results for top 100 apps with pass/fail status, error logs, screenshots | Excel + PDF Report | Month 8 | All apps tested with documented compatibility status |
| **Copilot+ PC Pilot Report** | Pilot deployment results (50-100 devices), user feedback, ARM64 compatibility if applicable | PDF Report | Month 8 | Pilot success criteria met (>80% satisfaction, <5% app issues) |
| **Pilot Migration Report** | Results from IT staff pilot (50-100 devices), issues encountered, resolutions, lessons learned | PDF Report | Month 9 | Pilot success criteria met (zero P1/P2 incidents, >80% satisfaction) |
| **Helpdesk Training Materials** | Training decks, knowledge base articles, troubleshooting guides for helpdesk staff | PowerPoint + Markdown | Month 9 | Helpdesk trained and certified on Windows 11/InTune support |
| **User Communication Templates** | Email templates, FAQ, training materials ("What's New in Windows 11"), quick reference cards | HTML/PDF | Month 9 | Approved by Change Management Lead and Communications team |
| **Runbook Documentation** | Operational runbooks for device provisioning, migration, rollback, incident response | Markdown/PDF | Month 9 | Runbooks tested successfully during pilot phase |

### 4.4 Phase 4 Deliverables (Production Migration)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Weekly Migration Reports** | Weekly status reports with migration progress, success rates, issues, support tickets | PDF/Email | Ongoing (Months 10-22) | Delivered every Friday, reviewed by Project Owner |
| **Migration Dashboard** | Real-time Power BI dashboard showing migration progress, compliance status, ticket volume | Power BI Dashboard | Month 10 | Dashboard accessible to IT leadership, updated hourly |
| **Issue Resolution Logs** | Detailed logs of issues encountered during migration waves with resolutions | Excel/ServiceNow | Ongoing (Months 10-22) | All P1/P2 issues documented with RCA and resolution |
| **Post-Migration Compliance Report** | Device compliance verification (TPM 2.0, BitLocker, Defender, updates) after each wave | Excel + PDF Report | After each wave | 90% device compliance achieved within 7 days post-migration |

### 4.5 Phase 5 Deliverables (Configuration Manager Decommissioning)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Configuration Manager Decommission Plan** | Detailed plan for workload cutover and infrastructure shutdown | PDF + Project Plan | Month 22 | Approved by IT Operations Director and Enterprise Architect |
| **Workload Transition Report** | Status of all workloads transitioned from Configuration Manager to InTune | Excel + PDF Report | Month 22 | 100% workloads managed by InTune, Configuration Manager idle |
| **Infrastructure Decommission Report** | Documentation of Configuration Manager server shutdown and removal | PDF Report | Month 24 | Configuration Manager infrastructure decommissioned and cost savings documented |

### 4.6 Phase 6 Deliverables (Knowledge Transfer and Closure)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Technical Training** | Architecture, InTune administration, policy management for IT staff | Live sessions + recordings | Month 23 | IT staff certified and capable of independent InTune administration |
| **Operations Training** | Device provisioning, troubleshooting, compliance remediation for helpdesk | Live sessions + recordings | Month 23 | Helpdesk capable of Tier 1/2 support without vendor escalation |
| **Final Migration Report** | Comprehensive project summary with metrics, lessons learned, recommendations | PDF Report (30-50 pages) | Month 24 | Approved by Executive Sponsor (CIO/CTO) and Project Owner |
| **Architecture Documentation** | Complete InTune architecture documentation (policies, configurations, integrations) | Markdown/PDF | Month 24 | Documentation sufficient for future InTune administrators |
| **90-Day Warranty Support** | Post-project support for defect resolution and knowledge transfer | Ongoing support | Months 24-27 | Critical issues resolved within 4 hours, non-critical within 2 business days |

---

## 5. Project Timeline and Milestones

### 5.1 High-Level Timeline

**Total Duration**: 24 months from contract signing (Q4 2024 - Q2 2026)

| Phase | Duration | Timeframe | Key Milestones |
|-------|----------|-----------|----------------|
| **Phase 1: Assessment and Planning** | 3 months | Q4 2024 - Q1 2025 | Hardware assessment, app inventory, InTune architecture design |
| **Phase 2: Design and Configuration** | 3 months | Q1 2025 - Q2 2025 | InTune policies, Autopilot, security baseline, app packaging |
| **Phase 3: Testing and Pilot** | 3 months | Q2 2025 - Q3 2025 | App testing, Copilot+ PC pilot, IT staff pilot, helpdesk training |
| **Phase 4: Production Migration** | 13 months | Q3 2025 - Q1 2026 | Early adopters (10%), production waves (85%), stragglers (5%) |
| **Phase 5: Configuration Manager Decommission** | 6 months | Q4 2025 - Q2 2026 | Workload cutover, infrastructure shutdown |
| **Phase 6: Knowledge Transfer and Closure** | 2 months | Q2 2026 | Training, documentation, final report, warranty begins |

### 5.2 Key Milestones and Gates

| Milestone | Target Month | Deliverables Due | Exit Criteria | Approval Authority |
|-----------|--------------|------------------|---------------|-------------------|
| **M1: Project Kickoff** | Month 1 | Project plan, kickoff deck | Kickoff meeting held, teams introduced, access granted | Project Owner |
| **M2: Assessment Complete** | Month 3 | Hardware report, app report, migration plan | All devices and apps assessed, plan approved | Project Owner + Enterprise Architect |
| **M3: Design Approval** | Month 6 | InTune HLD, security baseline, Autopilot profiles | Architecture Review Board approval | Architecture Review Board |
| **M4: Pilot Success** | Month 9 | Pilot report, helpdesk training, runbooks | Pilot success criteria met (zero P1/P2, >80% satisfaction) | Change Advisory Board |
| **M5: Early Adopters Complete** | Month 12 | 10% of users migrated, early adopter report | Early adopter success (<5% ticket volume, >75% satisfaction) | Change Advisory Board |
| **M6: 50% Migration Complete** | Month 16 | Half of users migrated, compliance report | No P1/P2 incidents, 90% device compliance | Change Advisory Board |
| **M7: 95% Migration Complete** | Month 22 | Migration substantially complete | 95% completion, 90% compliance, >80% user satisfaction | Project Owner |
| **M8: Configuration Manager Decommissioned** | Month 24 | ConfigMgr infrastructure removed | 100% InTune management, ConfigMgr servers shut down | IT Operations Director |
| **M9: Project Closure** | Month 24 | Final report, lessons learned, training complete | Executive sign-off, warranty period begins | Executive Sponsor (CIO/CTO) |

### 5.3 Proposal Timeline

| Event | Date |
|-------|------|
| **RFP Issued** | [DATE] |
| **Vendor Q&A Session** | [DATE + 2 weeks] (optional virtual session) |
| **Vendor Questions Due** | [DATE + 3 weeks] (written questions via email) |
| **Answers Published** | [DATE + 4 weeks] (Q&A document shared with all vendors) |
| **Proposals Due** | [DATE + 6 weeks] **FIRM DEADLINE** |
| **Technical Evaluation** | [DATE + 7-8 weeks] (cost proposals remain sealed) |
| **Vendor Presentations** | [DATE + 9 weeks] (shortlisted vendors only, 2-hour sessions) |
| **Final Vendor Selection** | [DATE + 10 weeks] |
| **Contract Negotiation** | [DATE + 11-12 weeks] |
| **Expected Project Start** | [DATE + 13 weeks] (Q4 2024) |

---

## 6. Vendor Qualifications and Requirements

### 6.1 Mandatory Qualifications (Pass/Fail)

Vendors MUST meet ALL of the following minimum qualifications to be considered:

**MQ-1 - Microsoft Partnership**: Vendor must be a **Microsoft Gold or Solutions Partner** with competencies in Modern Work or Security.

**MQ-2 - InTune and Endpoint Management Experience**: Minimum **3 years** of hands-on experience with Microsoft InTune (Endpoint Manager) and Windows Autopilot in enterprise environments (1000+ devices).

**MQ-3 - Windows 11 Migration Experience**: Minimum **3 completed Windows 11 migration projects** in the past 2 years, each involving 1000+ devices.

**MQ-4 - Configuration Manager Experience**: Demonstrable experience with **Configuration Manager co-management** and workload migration to InTune.

**MQ-5 - Reference Projects**: At least **3 verifiable references** from Windows 11 migration projects (1000+ devices each) completed in the past 2 years. References must include client contact information (name, title, email, phone).

**MQ-6 - Team Certifications**: Proposed team must include individuals with the following **current certifications**:
- [ ] Microsoft Certified: Endpoint Administrator Associate (at least 2 team members)
- [ ] Microsoft Certified: Security, Compliance, and Identity Fundamentals (at least 1 team member)
- [ ] Microsoft Certified: Azure Administrator Associate (at least 1 team member)
- [ ] CISSP, CEH, or equivalent security certification (at least 1 team member)

**MQ-7 - Financial Stability**: Vendor must provide evidence of financial stability:
- Company in business for minimum **5 years**
- Audited financial statements or D&B rating demonstrating financial health
- Annual revenue of at least **$10M USD**

**MQ-8 - Insurance Coverage**: Vendor must carry appropriate insurance:
- Professional liability insurance: Minimum **$5M USD** coverage
- Cyber liability insurance: Minimum **$2M USD** coverage
- General liability insurance: Minimum **$2M USD** coverage

**MQ-9 - Security and Compliance**: Vendor company must hold **SOC 2 Type II** certification or equivalent (ISO 27001 accepted).

**MQ-10 - Background Checks**: Vendor staff with access to client systems must pass **background checks** (criminal history, identity verification). Client reserves right to reject specific individuals.

**Failure to meet ANY mandatory qualification will result in automatic disqualification.**

### 6.2 Preferred Qualifications (Scored)

Preference will be given to vendors with:

**PQ-1**: **Microsoft Advanced Specialization** in Modern Work, Windows and Surface, or Security (5 bonus points)

**PQ-2**: Experience with **Copilot+ PC deployments** including ARM64 (Snapdragon) application compatibility testing (5 bonus points)

**PQ-3**: Prior work with client organization or **demonstrable knowledge of client's industry** (e.g., healthcare, financial services, government) (5 bonus points)

**PQ-4**: Proven **change management and user training** capabilities with documented user satisfaction >80% (5 bonus points)

**PQ-5**: Strong **observability and monitoring** practices using Power BI, Log Analytics, or equivalent for migration dashboards (3 bonus points)

**PQ-6**: **On-site presence** in client's geographic region for in-person support during critical phases (3 bonus points)

### 6.3 Team Requirements

**Minimum Team Composition** (Vendor must propose adequate team size):
- **1 Solution Architect**: Senior (10+ years experience), Microsoft Certified Endpoint Administrator, leads technical design
- **1 Security Architect**: Experienced with Zero Trust, Conditional Access, Microsoft Defender for Endpoint
- **1 Technical Lead**: (8+ years experience), leads InTune configuration and Autopilot deployment
- **2-4 Senior InTune Engineers**: (5+ years experience), responsible for policy configuration, app packaging, testing
- **2-3 Migration Engineers**: (3+ years experience), execute migration waves, troubleshooting, user support
- **1 QA Lead**: Responsible for application compatibility testing, test lab management
- **1-2 QA Engineers**: Execute application testing, document results
- **1 Change Management Lead**: Develops communication plan, training materials, manages user adoption
- **1 Technical Writer**: Creates documentation, runbooks, knowledge base articles

**Key Personnel Requirements**:
- **Solution Architect and Technical Lead** must be dedicated **50% minimum** to this project
- **Resumes for all key personnel** (Solution Architect, Technical Lead, Security Architect, Change Management Lead) must be included in proposal
- **Key personnel cannot be changed** without client approval; substitutions require equivalent qualifications
- **On-site presence**: Solution Architect and Technical Lead required on-site during critical phases (Pilot, first 3 production waves, Go-Live)

**Onshore/Offshore Mix**:
- Minimum **70% onshore resources** (US-based for US client, EU-based for EU client)
- **Solution Architect, Technical Lead, Security Architect must be 100% onshore**
- Offshore resources acceptable for application testing, documentation, non-critical support tasks

---

## 7. Proposal Requirements

### 7.1 Proposal Structure and Format

Proposals must follow this structure (page limits enforced):

#### **Section 1: Executive Summary** (3 pages max)
- High-level understanding of migration challenge and client objectives
- Proposed approach and methodology (Agile, phased rollout, risk mitigation)
- Key differentiators and value proposition
- Summary of costs and timeline

#### **Section 2: Company Overview and Qualifications** (10 pages max)
- Company history, size, financial stability
- Microsoft partnership status and specializations
- Relevant certifications (SOC 2, ISO 27001, etc.)
- Evidence of mandatory qualifications (MQ-1 through MQ-10)
- Preferred qualifications (PQ-1 through PQ-6) with supporting evidence

#### **Section 3: Understanding of Requirements** (15 pages max)
- Demonstrate deep understanding of Windows 10 to Windows 11 migration challenges
- Demonstrate understanding of InTune cloud-native transformation and Configuration Manager decommissioning
- Identify key risks and proposed mitigation strategies
- Demonstrate understanding of client's 18 architecture principles and how solution aligns
- Address Copilot+ PC strategy and ARM64 application compatibility considerations
- Identify any ambiguities or gaps in requirements with recommended clarifications

#### **Section 4: Technical Solution and Approach** (40 pages max)
- **Migration Methodology**: Phased rollout approach (pilot, early adopters, production waves)
- **Hardware Assessment Strategy**: Approach to assessing 1000+ devices for Windows 11 compatibility
- **Application Compatibility Testing**: Test lab setup, testing methodology, remediation approach
- **InTune Architecture**: High-level design (HLD) with C4 Context and Container diagrams
- **Security and Zero Trust Design**: Conditional Access, Defender for Endpoint, BitLocker, device compliance
- **Windows Autopilot Configuration**: User-Driven, Self-Deploying, White Glove scenarios
- **Data Protection Strategy**: OneDrive Known Folder Move, backup verification, rollback capability
- **Configuration Manager Co-Management and Decommissioning**: Workload transition plan
- **Monitoring and Compliance**: Migration dashboard, real-time reporting, compliance enforcement
- **Change Management and User Training**: Communication plan, training materials, helpdesk enablement
- **Risk Management**: Top 10 risks with detailed mitigation plans
- **Quality Assurance**: Testing strategy, acceptance criteria validation

#### **Section 5: Project Management and Delivery** (15 pages max)
- **Project Methodology**: Agile, Waterfall, or Hybrid approach
- **Project Phases and Timeline**: Detailed timeline with milestones aligned to Section 5.2
- **Wave Planning**: Strategy for scheduling 500-1000 users per wave across 20 waves
- **Communication and Governance**: Weekly status reports, CAB meetings, escalation procedures
- **Issue and Risk Management**: Issue tracking, P1/P2 incident response, rollback procedures
- **Change Management Process**: How change requests will be handled (scope, cost, schedule)
- **Tools and Platforms**: Project management tools (Jira, MS Project, etc.), collaboration tools (Teams, SharePoint)

#### **Section 6: Team Structure and Resumes** (20 pages max)
- **Proposed Team Structure**: Org chart with roles, responsibilities, allocation %
- **Key Personnel Resumes**: Solution Architect, Technical Lead, Security Architect, Change Management Lead (1-2 pages each)
- **Team Member Certifications**: List all relevant Microsoft and security certifications with certification IDs
- **Onshore/Offshore Model**: Breakdown of onshore vs. offshore resources by role
- **Availability and Start Date**: When proposed team can begin work

#### **Section 7: Experience and References** (15 pages max)
- **Case Studies**: Minimum **3 detailed case studies** of Windows 11 migration projects (1000+ devices each) including:
  - Client name, industry, size (number of devices migrated)
  - Project scope and objectives
  - Challenges encountered and how they were overcome
  - Technologies used (InTune, Autopilot, Defender for Endpoint, etc.)
  - Results achieved (completion rate, user satisfaction, timelines)
  - Lessons learned and best practices
- **Client References**: Minimum **3 verifiable references** with:
  - Client contact name, title, company, email, phone
  - Project description (scope, size, timeline)
  - Relationship to vendor (client is willing to be contacted for reference check)
- **Industry Awards and Recognition**: Relevant awards, Microsoft partner awards, analyst recognition (Gartner, Forrester)

#### **Section 8: Cost Proposal** (SEPARATE DOCUMENT)
- See Section 7.2 for detailed cost proposal requirements

#### **Section 9: Assumptions, Dependencies, and Risks** (10 pages max)
- **Key Assumptions**: Assumptions made in developing proposal (e.g., client provides Azure AD admin access, hardware budget approved)
- **Dependencies on Client**: What client organization must provide (resources, access, decisions, approvals)
- **External Dependencies**: Dependencies on Microsoft, OEM vendors, third-party tools
- **Identified Risks**: Top 10 project risks with probability, impact, and mitigation strategies

### 7.2 Cost Proposal Format (SEPARATE DOCUMENT)

**Cost proposal must be provided in a SEPARATE sealed PDF** to allow for technical evaluation independent of cost.

Cost proposal must include:

**7.2.1 Fixed Price (Preferred)**
- **Total fixed price** for all deliverables and services outlined in Section 2.1 (Vendor Responsibilities)
- **Payment Milestones** tied to deliverables and milestones from Section 5.2:
  - Milestone M2 (Assessment Complete): [X]% of total price
  - Milestone M3 (Design Approval): [X]% of total price
  - Milestone M4 (Pilot Success): [X]% of total price
  - Milestone M5 (Early Adopters Complete): [X]% of total price
  - Milestone M6 (50% Migration Complete): [X]% of total price
  - Milestone M7 (95% Migration Complete): [X]% of total price
  - Milestone M8 (ConfigMgr Decommissioned): [X]% of total price
  - Milestone M9 (Project Closure): [X]% of total price
- **Retainage**: 10% held until 30 days after project closure to ensure warranty support

**7.2.2 Time and Materials (Alternative if Fixed Price not feasible)**
- **Hourly or daily rates by role** (Solution Architect, Technical Lead, Engineer, QA, Change Management, etc.)
- **Estimated hours or days per role** for each project phase
- **Total estimated cost** with confidence interval (e.g., +/- 15%)
- **Not-to-Exceed (NTE) cap**: Maximum total cost to protect client from overruns

**7.2.3 Cost Breakdown by Phase**
| Phase | Labor Cost | Travel Cost | Tools/Licenses | Total |
|-------|------------|-------------|----------------|-------|
| Phase 1: Assessment | $[X] | $[Y] | $[Z] | $[TOTAL] |
| Phase 2: Design | $[X] | $[Y] | $[Z] | $[TOTAL] |
| Phase 3: Testing/Pilot | $[X] | $[Y] | $[Z] | $[TOTAL] |
| Phase 4: Production Migration | $[X] | $[Y] | $[Z] | $[TOTAL] |
| Phase 5: ConfigMgr Decommission | $[X] | $[Y] | $[Z] | $[TOTAL] |
| Phase 6: Knowledge Transfer | $[X] | $[Y] | $[Z] | $[TOTAL] |
| **GRAND TOTAL** | **$[X]** | **$[Y]** | **$[Z]** | **$[TOTAL]** |

**7.2.4 Ongoing Support and Maintenance (Optional)**
- **90-Day Warranty Support** (included in base price): Defect resolution at no additional cost
- **Post-Warranty Support** (optional, priced separately):
  - Annual support and maintenance cost for InTune administration, policy updates, troubleshooting
  - SLA for support response times (Severity 1: 1 hour, Severity 2: 4 hours, etc.)
  - Included vs. out-of-scope activities (e.g., included: bug fixes, policy changes; out-of-scope: new feature development)

**7.2.5 Exclusions and Out-of-Scope Costs**
- **Hardware Procurement**: Client responsible for device purchases (estimated $[X] based on vendor recommendations)
- **Microsoft Licensing**: Client has existing Microsoft 365 E3/E5 licenses (estimated annual cost $[Y] for reference)
- **Test Lab Infrastructure**: Client provides Azure Virtual Desktop subscription or physical test devices
- **Network Upgrades**: Client responsible unless identified as migration blocker
- **Custom Application Development**: Out of scope except minor scripting/automation

**7.2.6 Travel and Expenses**
- Travel policy (e.g., coach class airfare, standard hotel rates, per diem for meals)
- Estimated travel costs per phase (Solution Architect and Technical Lead on-site visits)
- Pre-approval requirements for travel expenses

**7.2.7 Payment Terms and Invoicing**
- **Payment Terms**: Net 30 days from invoice date
- **Invoicing Schedule**: Upon milestone completion and client acceptance sign-off
- **Currency**: [USD | EUR | GBP]
- **Validity Period**: Pricing valid for 90 days from proposal submission date

**7.2.8 Assumptions Affecting Pricing**
- Client provides Azure AD admin access and InTune tenant access within 2 weeks of project start
- Client approves hardware procurement budget and orders devices per vendor recommendations
- Client provides weekly CAB meetings with decision authority for go/no-go decisions
- Client helpdesk handles Tier 1 support; vendor provides Tier 2/3 escalation only
- No more than 20% of applications require custom remediation (repackaging, scripting)
- Network bandwidth adequate for Windows 11 downloads and OneDrive sync (50-100 Mbps)

### 7.3 Submission Instructions

**Deadline**: Proposals must be received by **[DATE] at [TIME] [TIMEZONE]** - **NO EXCEPTIONS**

**Submission Method**:
- **Primary**: Upload to client vendor portal [URL] (registration required)
- **Backup**: Email to [procurement@organization.com] with subject line "RFP-WIN11-001 - [VENDOR_NAME] - Proposal"

**File Format**:
- **Technical Proposal**: Single PDF file named `[VENDOR_NAME]_RFP-WIN11-001_Technical.pdf` (max 150 MB)
- **Cost Proposal**: Single PDF file named `[VENDOR_NAME]_RFP-WIN11-001_Cost.pdf` (max 10 MB)
- **DO NOT** combine technical and cost proposals into single document

**Questions**:
- Submit questions by **[DATE + 3 weeks]** to [procurement@organization.com]
- Subject line: "RFP-WIN11-001 - [VENDOR_NAME] - Question"
- **No proprietary or confidential information** in questions (Q&A document will be shared with all vendors)
- Answers will be published by **[DATE + 4 weeks]** to all registered vendors

**Confidentiality**:
- Vendor must sign **Non-Disclosure Agreement (NDA)** before receiving detailed requirements or client data
- Proposals will be treated as confidential by client
- Client reserves right to share proposals with evaluation committee and advisors

**Late Proposals**: Will **NOT** be accepted under any circumstances. Vendor assumes risk for submission method reliability.

---

## 8. Evaluation Criteria

### 8.1 Evaluation Process

Proposals will be evaluated in **three phases**:

**Phase 1: Mandatory Qualifications Check (Pass/Fail)**
- Evaluation team verifies all mandatory qualifications (MQ-1 through MQ-10)
- **Vendors failing any mandatory qualification are disqualified** and will not be scored
- Cost proposals remain sealed during this phase

**Phase 2: Technical Evaluation (0-100 points)**
- Qualified vendors scored on technical merit (cost proposals remain sealed)
- Scoring based on Section 8.2 criteria (Technical Solution, Team, Experience, etc.)
- **Top 3-5 vendors** with highest technical scores shortlisted for Phase 3

**Phase 3: Cost Evaluation and Final Selection**
- Cost proposals opened only for shortlisted vendors
- Combined technical + cost scoring (70% technical, 30% cost)
- **Shortlisted vendors invited for 2-hour presentations** (1 hour presentation, 1 hour Q&A)
- **Final selection** based on best value (not necessarily lowest price)

### 8.2 Technical Evaluation Criteria (100 points total)

| Criteria | Weight | Max Points | Evaluation Focus |
|----------|--------|------------|------------------|
| **Technical Solution and Approach** | 35% | 35 | Migration methodology, InTune architecture quality, Zero Trust security design, Autopilot configuration, data protection strategy, monitoring/compliance approach, risk mitigation depth, innovation and best practices |
| **Project Management and Delivery** | 20% | 20 | Delivery methodology rigor, realistic timeline and milestones, wave planning strategy, CAB governance, issue/risk management, change management process, communication plan quality |
| **Team Qualifications and Experience** | 25% | 25 | Team expertise and certifications, key personnel qualifications (Solution Architect, Technical Lead), adequate team size and allocation, onshore/offshore balance, proven delivery capability |
| **Relevant Experience and References** | 15% | 15 | Windows 11 migration case studies (quality and relevance), client references (verifiable and positive), industry-specific experience, Microsoft partnership status, awards/recognition |
| **Understanding of Requirements** | 5% | 5 | Demonstrated understanding of client's challenges, architecture principles alignment, thoughtful questions and risk identification, clarity and completeness of proposal |
| **TOTAL** | **100%** | **100** | |

**Scoring Rubric** (per criterion):
- **Excellent (90-100% of points)**: Exceeds expectations, innovative solutions, proven track record
- **Good (75-89%)**: Meets expectations with some differentiation, solid approach
- **Satisfactory (60-74%)**: Meets minimum expectations, adequate but not differentiated
- **Poor (0-59%)**: Does not meet expectations, significant gaps or concerns

### 8.3 Cost Evaluation (Shortlisted Vendors Only)

Cost will be evaluated using **Best Value approach** (not lowest price wins):

**Final Score Calculation**:
- **Technical Score**: 70% weight (from Phase 2 evaluation, 0-100 points)
- **Cost Score**: 30% weight (calculated below, 0-100 points)
- **Final Score** = (Technical Score × 0.70) + (Cost Score × 0.30)

**Cost Scoring Method**:
- **Lowest cost proposal receives 100 points**
- **Other proposals scored proportionally**: Cost Score = (Lowest Price / Vendor Price) × 100
- **Example**:
  - Vendor A: $1,500,000 ’ Cost Score = (1,500,000 / 1,500,000) × 100 = 100 points
  - Vendor B: $1,800,000 ’ Cost Score = (1,500,000 / 1,800,000) × 100 = 83.3 points
  - Vendor C: $2,000,000 ’ Cost Score = (1,500,000 / 2,000,000) × 100 = 75 points

**Value Considerations**:
- Client seeks **best value** (technical quality + reasonable cost), not necessarily lowest price
- **Unrealistically low bids** may be rejected as non-credible or high-risk
- **Value-added services** (e.g., extended warranty, training, post-project support) may differentiate proposals

### 8.4 Vendor Presentations (Shortlisted Vendors Only)

**Format**:
- **Duration**: 2 hours total (1 hour presentation, 1 hour Q&A)
- **Audience**: Evaluation committee (Executive Sponsor, Project Owner, Enterprise Architect, Security Architect, IT Operations, Procurement)
- **Location**: [In-person at client site | Virtual via Teams]

**Required Attendees**:
- **Vendor side**: Solution Architect, Technical Lead, Account Executive (max 5 people)
- **Client side**: Evaluation committee (8-10 people)

**Presentation Content** (1 hour):
- **Company overview** (5 min): Capabilities, differentiators, why choose us
- **Team introductions** (10 min): Key personnel intros, qualifications, experience
- **Technical approach deep-dive** (30 min): Migration methodology, InTune architecture (live demo if possible), security design, risk mitigation
- **Project management approach** (10 min): Timeline, governance, communication
- **Q&A** (5 min): Clarifying questions from evaluation committee

**Q&A Session** (1 hour):
- Evaluation committee asks detailed technical and project management questions
- Scenario-based questions (e.g., "How would you handle a situation where 20% of devices fail migration in a wave?")
- Deep dive on cost proposal assumptions and pricing

**Scoring**: Presentation quality and Q&A responses contribute to final selection decision but are not separately scored.

### 8.5 Selection Decision and Notification

**Decision Authority**: [Procurement Committee | CTO/CIO | Executive Sponsor]

**Selection Criteria** (in priority order):
1. **Highest combined technical + cost score** (70% technical, 30% cost)
2. **Confidence in vendor's ability to deliver** based on case studies, references, and presentation
3. **Cultural fit and communication** quality during proposal and presentation
4. **Risk assessment**: Financial stability, team availability, realistic timeline

**Selection Timeline**:
- **Technical evaluation complete**: [DATE + 8 weeks]
- **Shortlist notification**: [DATE + 8 weeks]
- **Vendor presentations**: [DATE + 9 weeks]
- **Final selection decision**: [DATE + 10 weeks]

**Notification**:
- **Selected vendor**: Notified by phone/email within 24 hours of decision, contract negotiation begins immediately
- **Shortlisted but not selected**: Notified by email with brief feedback (optional)
- **Non-shortlisted vendors**: Notified by email (no detailed feedback provided)

**Debriefing** (optional):
- Non-selected vendors may request **debriefing session** to understand why they were not chosen (client discretion)

---

## 9. Contract Terms and Conditions

### 9.1 Contract Type

**Preferred**: **Fixed Price** contract with milestone-based payments tied to deliverable acceptance

**Alternative**: **Time and Materials with Not-to-Exceed (NTE) cap** if Fixed Price not feasible

### 9.2 Payment Terms

**Payment Schedule** (Fixed Price example):
| Milestone | Deliverable | Payment % | Estimated $ |
|-----------|-------------|-----------|-------------|
| M2: Assessment Complete | Hardware report, app report, migration plan | 10% | $[X] |
| M3: Design Approval | InTune HLD, security baseline, Autopilot profiles | 15% | $[X] |
| M4: Pilot Success | Pilot report, helpdesk training, runbooks | 10% | $[X] |
| M5: Early Adopters Complete | 10% of users migrated | 15% | $[X] |
| M6: 50% Migration Complete | Half of users migrated, compliance report | 20% | $[X] |
| M7: 95% Migration Complete | Migration substantially complete | 15% | $[X] |
| M8: ConfigMgr Decommissioned | ConfigMgr infrastructure removed | 5% | $[X] |
| M9: Project Closure | Final report, training, documentation | 10% | $[X] |
| **TOTAL** | | **100%** | **$[TOTAL]** |

**Retainage**: 10% of total contract value held for 30 days after project closure (Milestone M9) to ensure warranty support quality.

**Invoicing**:
- Vendor invoices upon milestone completion and deliverable submission
- Client has **5 business days** to review deliverables and either: Accept, Reject with feedback, or Request clarifications
- **Payment within 30 days** of invoice date (after deliverable acceptance)
- **Disputed invoices**: Client pays undisputed portion; disputed portion resolved within 15 days

### 9.3 Acceptance Criteria

Each deliverable must meet defined acceptance criteria (see Section 4 Deliverables table).

**Acceptance Process**:
1. **Vendor submits deliverable** with cover letter summarizing completion
2. **Client reviews within 5 business days**:
   - **Accept**: Formal acceptance sign-off, invoice payment authorized
   - **Conditional Accept**: Minor issues noted, vendor addresses within 3 business days, then accepted
   - **Reject**: Significant deficiencies, vendor must revise and resubmit within 10 business days
3. **Re-review**: If rejected, client re-reviews within 3 business days after resubmission
4. **Escalation**: If acceptance cannot be reached after 2 rejection cycles, escalate to Executive Sponsor and vendor leadership for resolution

**Acceptance Criteria Examples**:
- **Hardware Assessment Report**: All devices categorized with compatibility status, cost estimates provided, 95%+ accuracy validated by spot-checking sample devices
- **InTune Configuration Documentation**: All policies documented with screenshots, JSON exports provided, validation checklist 100% complete
- **Pilot Migration**: Success criteria met (zero P1/P2 incidents, >80% user satisfaction from survey, all business-critical apps functional)

### 9.4 Warranty and Support

**90-Day Warranty Period** (included in base price):
- Begins after **Milestone M9 (Project Closure)** sign-off
- **Defects identified during warranty will be fixed at no additional cost**
- **Defect** defined as: Deliverable does not meet documented acceptance criteria, InTune configuration error, documentation inaccuracy
- **Not covered**: New requirements, scope changes, issues caused by client modifications, Microsoft platform bugs

**Warranty Support SLA**:
| Severity | Definition | Response Time | Resolution Target |
|----------|-----------|---------------|-------------------|
| **Severity 1 (Critical)** | Multiple users unable to work, system down | 2 hours | 8 hours |
| **Severity 2 (High)** | Major feature broken, workaround exists | 4 hours | 24 hours |
| **Severity 3 (Medium)** | Minor issue, no productivity impact | 1 business day | 5 business days |
| **Severity 4 (Low)** | Documentation error, enhancement request | 3 business days | Best effort |

**Warranty Support Hours**:
- **Severity 1**: 24/7 on-call support
- **Severity 2-4**: Business hours (Mon-Fri, 8 AM - 6 PM local time)

**Post-Warranty Support** (optional, priced separately): See Section 7.2.4

### 9.5 Intellectual Property Rights

**Work Product Ownership**:
- **All custom-developed work product** (InTune configurations, scripts, documentation, runbooks, training materials) **becomes property of [ORGANIZATION_NAME]** upon final payment
- **Vendor retains ownership** of pre-existing IP, reusable frameworks, tools, and methodologies brought to the project
- **Vendor grants [ORGANIZATION_NAME] perpetual, irrevocable, royalty-free license** to use any vendor pre-existing IP embedded in deliverables

**Open Source Software**:
- Vendor must **disclose all open-source components** used in scripts, tools, or configurations
- Vendor must provide **open-source license compliance report** (identify GPL, MIT, Apache, etc. licenses)
- **GPL-licensed components** require explicit client approval before use

**Source Code Escrow** (if applicable):
- If vendor provides proprietary tools or software, client may require **source code escrow** agreement
- Escrow release triggers: Vendor bankruptcy, failure to provide support, breach of contract

### 9.6 Data and Security

**Data Ownership**:
- **Client retains ownership of ALL client data** (device inventory, user data, application data, configuration data)
- Vendor is **custodian only**; must not use client data for any purpose other than project delivery

**Data Security Requirements**:
- Vendor must comply with **client's security policies and architecture principles** (see `.arckit/memory/architecture-principles.md`)
- Vendor staff must **sign confidentiality agreements** before accessing client systems
- Vendor must use **Multi-Factor Authentication (MFA)** for all access to client Azure AD, InTune, Configuration Manager
- Vendor must **not store client data** on vendor systems except temporarily for project work; client data deleted within 30 days of project closure

**Data Handling**:
- **Data must be returned or destroyed** upon contract termination or project completion
- Vendor must provide **certificate of destruction** for any client data stored on vendor systems
- **Data Processing Agreement (DPA)** required if vendor processes personal data (GDPR, CCPA compliance)

**Background Checks**:
- Vendor staff with access to client systems must **pass background checks**: Criminal history (7 years), identity verification, employment verification
- **Client reserves right to reject specific individuals** based on background check results
- Vendor must provide **background check certificates** for all staff before granting access

**Incident Notification**:
- Vendor must notify client within **1 hour** of discovering security incident (data breach, unauthorized access, malware infection on vendor systems)
- Vendor must cooperate with client incident response team and forensic investigation

### 9.7 Confidentiality

**Mutual Non-Disclosure Agreement (NDA)**:
- Both parties agree to maintain confidentiality of proprietary information disclosed during engagement
- **NDA must be signed before vendor receives detailed requirements or client data**
- NDA remains in effect for **5 years** after contract termination

**Confidential Information** includes:
- Client architecture designs, security configurations, compliance documentation
- Vendor proprietary methodologies, pricing, team structure
- Any information marked "Confidential" or reasonably understood to be confidential

**Exclusions**: Information that is publicly available, independently developed, or required to be disclosed by law

### 9.8 Liability and Indemnification

**Liability Cap**:
- **Vendor's total liability** limited to **1x contract value** (e.g., if contract is $2M, liability capped at $2M)
- **Exceptions** (no cap): Willful misconduct, gross negligence, data breach due to vendor negligence, IP infringement

**Indemnification**:
Vendor **indemnifies and holds harmless** [ORGANIZATION_NAME] against:
- **IP infringement claims**: Third-party claims that deliverables infringe patents, copyrights, trademarks, or trade secrets
- **Data breaches due to vendor negligence**: Breaches caused by vendor failure to follow security policies, inadequate data protection
- **Violations of laws or regulations**: Vendor non-compliance with GDPR, CCPA, employment laws, etc.

**Indemnification Process**:
1. Client notifies vendor of claim within 15 days
2. Vendor assumes defense of claim and retains counsel
3. Client cooperates with defense
4. Vendor pays settlements, judgments, and legal fees

### 9.9 Termination

**Termination for Convenience**:
- **Client may terminate** with **60 days written notice**, paying for work completed to date plus reasonable wind-down costs
- **Vendor may not terminate for convenience** (committed to project completion)

**Termination for Cause**:
- Either party may terminate if other party **breaches material terms** and **fails to cure within 30 days** of written notice
- **Material breaches** include: Repeated missed milestones, failure to meet acceptance criteria after 3 attempts, security breach, failure to pay invoices

**Immediate Termination** (no cure period):
- Vendor bankruptcy, insolvency, or assignment for benefit of creditors
- Vendor loses required certifications (Microsoft partnership, SOC 2)
- Vendor engages in fraud, willful misconduct, or criminal activity

**Transition Assistance**:
- Vendor must provide **90 days transition assistance** to new vendor or client internal team
- Transition assistance includes: Knowledge transfer, documentation handover, access credential transfer, InTune configuration export
- **Transition assistance is paid** at standard T&M rates if termination is for convenience; **no cost** if termination is for cause (vendor breach)

### 9.10 Change Management

**Change Request Process**:
1. **Either party submits written change request** describing proposed change (scope, schedule, cost)
2. **Vendor provides impact analysis within 5 business days**: Cost estimate, schedule impact, risk assessment
3. **Client approves or rejects** within 5 business days
4. **Approved changes documented in formal change order** signed by both parties
5. **Contract amended** via change order (becomes part of contract)

**Approval Thresholds**:
- **Changes <$10,000 or <2 weeks schedule impact**: Technical Lead approval sufficient
- **Changes $10,000-$50,000 or 2-4 weeks schedule impact**: Project Owner approval required
- **Changes >$50,000 or >4 weeks schedule impact**: Executive Sponsor approval required

**Scope Creep Prevention**:
- **Requirements freeze** after Milestone M3 (Design Approval); changes after this point require formal change orders
- **No verbal change approvals**; all changes must be written and signed

---

## 10. Appendices

### Appendix A: Detailed Requirements

**Full Requirements Document**: See `projects/001-windows-11-migration-intune/requirements.md` for complete requirements specification (60+ requirements including Business, Functional, Non-Functional, Integration, and Data requirements).

**Requirement IDs Referenced in SOW**:
- BR-001 through BR-008: Business Requirements
- FR-001 through FR-020+: Functional Requirements
- NFR-P-001 through NFR-C-002: Non-Functional Requirements
- INT-001 through INT-005: Integration Requirements

### Appendix B: Enterprise Architecture Principles

**Architecture Principles Document**: See `.arckit/memory/architecture-principles.md` for complete 18-principle governance framework.

**Principles Summary**:
1. Cloud-First Endpoint Management
2. Zero Trust Security Model
3. Hardware Readiness and Compatibility
3A. Copilot+ PC Hardware and AI-Ready Devices
4. User-Centric Migration Experience
5. Application Compatibility and Testing
6. Phased Rollout Strategy
7. Automated Deployment with Windows Autopilot
8. Configuration Management via InTune Policies
9. Update Management and Patching
10. Monitoring, Reporting, and Compliance
11. Azure AD Integration and Identity Management
12. Data Protection and Backup
13. Helpdesk and User Support
14. Change Management and Communication
15. Incident Response and Rollback
16. Licensing and Cost Management
17. Audit Logging and Compliance Reporting

### Appendix C: Security and Compliance Standards

**Applicable Standards**:
- **CIS Benchmarks** for Windows 11
- **Microsoft Security Baselines** for Windows 11
- **NIST 800-171** (if handling Controlled Unclassified Information)
- **ISO 27001** endpoint security controls
- **GDPR** (EU General Data Protection Regulation) for EU users
- **CCPA** (California Consumer Privacy Act) for California users
- **HIPAA** (if healthcare data involved)
- **SOX** (Sarbanes-Oxley) for financial controls and audit logging
- **PCI-DSS** (if payment card data involved)

### Appendix D: Reference Architecture Diagrams

**Current State**:
- Hybrid management: On-premises Configuration Manager + limited cloud services
- Windows 10 devices (1000+) with Group Policy Objects (GPOs)
- On-premises Active Directory with Azure AD Connect sync
- VPN required for remote device management

**Target State**:
- 100% cloud-native management via Microsoft InTune
- Windows 11 devices with TPM 2.0, BitLocker, Defender for Endpoint
- Azure AD Join (pure cloud identity or hybrid for legacy apps)
- Zero-touch provisioning via Windows Autopilot
- OneDrive Known Folder Move for data protection
- Configuration Manager decommissioned

### Appendix E: Glossary

- **ARM64**: 64-bit ARM processor architecture (Qualcomm Snapdragon Copilot+ PCs)
- **Autopilot**: Windows Autopilot, zero-touch device provisioning service
- **Azure AD Join**: Device joined to Azure Active Directory for cloud-native management
- **BitLocker**: Full disk encryption (AES-256) for Windows
- **Co-Management**: Hybrid management (Configuration Manager + InTune) during transition
- **Copilot+ PC**: Windows 11 device with Neural Processing Unit (NPU) for AI acceleration (40+ TOPS)
- **InTune**: Microsoft Endpoint Manager, cloud-native MDM/MAM service
- **Known Folder Move (KFM)**: OneDrive feature syncing Desktop, Documents, Pictures to cloud
- **NPU**: Neural Processing Unit for AI acceleration in Copilot+ PCs
- **TPM**: Trusted Platform Module, hardware security chip (TPM 2.0 required for Windows 11)
- **Zero Trust**: Security model assuming breach, no implicit trust, continuous verification

### Appendix F: Questions and Contact Information

**Questions**:
All questions regarding this SOW/RFP must be submitted in writing to:

**Email**: [procurement@organization.com]
**Subject Line**: "RFP-WIN11-001 - [VENDOR_NAME] - Question"
**Deadline for Questions**: [DATE + 3 weeks]

**Question Format**:
- Section reference (e.g., "Section 6.1 - Mandatory Qualifications")
- Specific question
- Context or rationale for question

**Answers**: All questions and answers will be published to all registered vendors by [DATE + 4 weeks] to ensure fairness.

**Contact Information**:

**Primary Contact** (Procurement):
[Name]
[Title]
[Email]
[Phone]

**Project Owner** (Technical):
[IT Operations Director Name]
[Email]

**Enterprise Architect** (Architecture/Governance):
[Enterprise Architect Name]
[Email]

---

**Document Control**

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | [DATE - 4 weeks] | Enterprise Architecture Team | Initial draft |
| 0.2 | [DATE - 2 weeks] | Procurement & IT Operations | Stakeholder review feedback incorporated |
| 1.0 | [DATE] | Procurement Lead | Final version issued to vendors |

**Approvals**

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Executive Sponsor (CIO/CTO) | [NAME] | _________ | [DATE] |
| Procurement Lead | [NAME] | _________ | [DATE] |
| IT Operations Director | [NAME] | _________ | [DATE] |
| Enterprise Architect | [NAME] | _________ | [DATE] |
| Security Architect (CISO) | [NAME] | _________ | [DATE] |
| Legal Review | [NAME] | _________ | [DATE] |

---

**END OF STATEMENT OF WORK**
