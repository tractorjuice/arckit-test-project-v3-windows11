# Requirements Specification: Windows 11 Deployment with Microsoft InTune

> **Template Status**: Live | **Version**: 0.11.2 | **Command**: `/arckit.requirements`

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-001-REQ-v7.0 |
| **Document Type** | Requirements Specification |
| **Project** | Windows 11 Deployment with Microsoft InTune (Project 001) |
| **Classification** | OFFICIAL-SENSITIVE |
| **Status** | APPROVED |
| **Version** | 7.0 |
| **Created Date** | 2025-10-14 |
| **Last Modified** | 2026-01-26 |
| **Review Cycle** | Quarterly |
| **Next Review Date** | 2026-04-26 |
| **Owner** | Enterprise Architecture Team |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | Project Team, IT Operations, Security Team, Steering Committee |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2025-10-14 | Enterprise Architecture Team | Initial requirements with 8 BR, 5 FR, 7 NFR, 3 INT aligned with 18 architecture principles | PENDING | PENDING |
| 2.0 | 2025-10-15 | Enterprise Architecture Team | Added 15 missing functional requirements (FR-006 to FR-020: Co-Management, GPO Migration, App Packaging, Security Baseline, Conditional Access, Defender Onboarding, Update Rings, App Testing Lab, User Communication, Helpdesk Training, Migration Dashboard, Rollback, ConfigMgr Decommission, Copilot+ Pilot, ARM64 Compatibility) and 5 missing non-functional requirements (NFR-A-001/002: Availability/DR, NFR-S-001/002: Scalability, NFR-M-001/002/003: Maintainability). Total: 8 BR, 20 FR, 12 NFR, 3 INT = 43 requirements | PENDING | PENDING |
| 3.0 | 2025-10-21 | Enterprise Architecture Team | **MAJOR UPDATE**: Added 7 critical MOD Secure by Design (SbD) security requirements based on mod-secure-by-design.md assessment findings. New requirements: NFR-SEC-004 (Security Governance & JSP 440 Compliance - CRITICAL), NFR-SEC-005 (Threat Modeling & Security Architecture Approval - CRITICAL), NFR-SEC-006 (Security Testing & Penetration Testing - CRITICAL), NFR-SEC-007 (Supply Chain Security & SBOM - HIGH), NFR-SEC-008 (Incident Response & MOD CERT Integration - CRITICAL), NFR-SEC-009 (Privileged Access Management & Insider Threat - HIGH), NFR-SEC-010 (Data Loss Prevention for OFFICIAL-SENSITIVE - HIGH). These address 9 accreditation blockers identified in SbD assessment. Total: 8 BR, 20 FR, 19 NFR (10 security), 3 INT = 50 requirements. **Action Required**: Appoint Security Lead, PSyO, IAO by Week 1 to avoid project delays. | PENDING | PENDING |
| 4.0 | 2025-10-21 | Enterprise Architecture Team | Added comprehensive Requirement Conflicts & Resolutions section documenting 4 major conflicts and resolution strategies. Updated NFR-SEC-004/005 with post-August 2023 MOD SbD changes (CAAT continuous assurance replacing RMADS). | PENDING | PENDING |
| 5.0 | 2025-10-28 | Enterprise Architecture Team | **CRITICAL CORRECTION**: Removed CAAT (Cyber Activity and Assurance Tracker) registration requirement from NFR-SEC-004 and NFR-SEC-005. Clarified that Windows 11 migration is delivering changes to an EXISTING accredited in-service system, NOT a new operational capability. MOD SbD CAAT registration applies ONLY to NEW operational capabilities. Updated security governance to use existing organizational CAB (Change Advisory Board) and security review processes instead of MOD CAAT framework. Reduced security preparation timeline from 3 months to 2 months (CAAT not required). Updated conflict resolutions, reference documentation, and all CAAT references throughout document. **Action Required**: Appoint Project Security Lead and SRO by Week 1, complete Security Impact Assessment by Week 2, obtain CAB approval by Month 2. | PENDING | PENDING |
| 6.0 | 2026-01-24 | ArcKit AI | Updated document to latest template format with enhanced Document Control section, standardised revision history, and improved metadata structure. No content changes to requirements. | PENDING | PENDING |
| 7.0 | 2026-01-26 | ArcKit AI | Updated to ArcKit 0.11.2 template format. Added template status line. No content changes to requirements. | PENDING | PENDING |

---

## Executive Summary

### Purpose
This document specifies the business, functional, non-functional, data, and integration requirements for the Windows 11 Deployment with Microsoft InTune project. It provides a comprehensive specification that can be used for vendor procurement (SOW/RFP), solution design, and acceptance testing.

### Scope
- Migration of ~6,000 Windows 10 devices to Windows 11 23H2+ over 18-24 months
- Transition from Configuration Manager (ConfigMgr) to Microsoft InTune for cloud-native endpoint management
- Implementation of Zero Trust security model with Azure AD, Conditional Access, BitLocker, and Defender for Endpoint
- Deployment of Copilot+ PC hardware (30% of refreshed devices) for AI productivity features

### Requirements Summary

| Category | Count | MUST | SHOULD | COULD | WON'T |
|----------|-------|------|--------|-------|-------|
| Business Requirements (BR) | 8 | 7 | 1 | 0 | 0 |
| Functional Requirements (FR) | 20 | 17 | 3 | 0 | 0 |
| Non-Functional Requirements (NFR) | 19 | 15 | 4 | 0 | 0 |
| Data Requirements (DR) | 8 | 7 | 1 | 0 | 0 |
| Integration Requirements (INT) | 3 | 3 | 0 | 0 | 0 |
| **Total** | **58** | **49** | **9** | **0** | **0** |

### Key Stakeholders

| Stakeholder | Role | Primary Interest |
|-------------|------|------------------|
| CIO | Executive Sponsor | Strategic modernization, AI enablement |
| CISO | Security Executive | Zero Trust compliance, threat protection |
| CFO | Budget Owner | Cost savings, ROI validation |
| IT Operations Director | Project Owner | Successful migration, operational stability |
| Enterprise Architect | Solution Architect | Principles compliance, technical governance |
| End Users | Beneficiaries | Minimal disruption, improved experience |

---

## Requirements Prioritisation Framework

### MoSCoW Prioritisation

| Priority | Definition | Target |
|----------|------------|--------|
| **MUST_HAVE** | Critical requirement, project fails without it | 100% delivered |
| **SHOULD_HAVE** | Important but not critical, workaround exists | 80% delivered |
| **COULD_HAVE** | Desirable, enhances solution | 40% delivered |
| **WONT_HAVE** | Out of scope for this phase | 0% delivered |

### Requirement ID Conventions

| Prefix | Category | Example |
|--------|----------|---------|
| BR-xxx | Business Requirement | BR-001 |
| FR-xxx | Functional Requirement | FR-001 |
| NFR-P-xxx | Performance Requirement | NFR-P-001 |
| NFR-SEC-xxx | Security Requirement | NFR-SEC-001 |
| NFR-A-xxx | Availability Requirement | NFR-A-001 |
| NFR-S-xxx | Scalability Requirement | NFR-S-001 |
| NFR-M-xxx | Maintainability Requirement | NFR-M-001 |
| NFR-C-xxx | Compliance Requirement | NFR-C-001 |
| DR-xxx | Data Requirement | DR-001 |
| INT-xxx | Integration Requirement | INT-001 |

---

## User Personas

### Persona 1: Executive User (C-Suite)
- **Description**: Senior executives (CIO, CFO, CISO) requiring seamless, high-performance computing with AI features
- **Device Type**: Copilot+ PC (NPU-enabled) laptop or Surface Pro
- **Usage Pattern**: Frequent travel, video conferencing, document creation, email
- **Key Requirements**: White Glove Autopilot (pre-provisioned), Windows Studio Effects for video calls, Copilot AI assistant
- **Pain Points**: Any downtime is unacceptable, expects VIP support

### Persona 2: Knowledge Worker
- **Description**: Office-based professionals (finance, HR, marketing, legal) requiring productivity tools
- **Device Type**: Standard Windows 11 laptop or desktop, or Copilot+ PC for power users
- **Usage Pattern**: Microsoft 365 apps, line-of-business applications, collaboration tools
- **Key Requirements**: OneDrive Known Folder Move (data protection), fast Autopilot provisioning, MFA
- **Pain Points**: Concerned about application compatibility, learning new UI

### Persona 3: Developer / Power User
- **Description**: Software developers, data analysts, engineers requiring high-performance computing
- **Device Type**: High-spec Windows 11 workstation or Copilot+ PC with ARM64 (Snapdragon)
- **Usage Pattern**: Development tools (Visual Studio, VS Code), virtualization, large data processing
- **Key Requirements**: Local admin access (controlled), ARM64 app compatibility (for Copilot+ PCs), fast update rings
- **Pain Points**: Application compatibility for development tools, performance concerns

### Persona 4: Frontline Worker / Task Worker
- **Description**: Warehouse staff, retail associates, field service workers with limited computing needs
- **Device Type**: Shared kiosk device or purpose-built rugged device
- **Usage Pattern**: Single application or web-based portal access
- **Key Requirements**: Self-Deploying Autopilot (no user authentication at setup), kiosk mode, restricted access
- **Pain Points**: Device must "just work" with minimal training

### Persona 5: Remote / Hybrid Worker
- **Description**: Employees working from home or hybrid office/home split
- **Device Type**: Standard Windows 11 laptop with VPN capability
- **Usage Pattern**: VPN access to corporate resources, video conferencing, Microsoft 365
- **Key Requirements**: Conditional Access (compliant device required), Always-On VPN, OneDrive sync
- **Pain Points**: Slow VPN performance, inconsistent experience vs. office

### Persona 6: IT Administrator
- **Description**: IT staff managing InTune, Azure AD, Defender, Autopilot
- **Device Type**: Windows 11 laptop with Privileged Access Workstation (PAW) security
- **Usage Pattern**: InTune admin portal, PowerShell/Graph API scripting, monitoring dashboards
- **Key Requirements**: Just-In-Time admin access (PIM), MFA for all admin operations, comprehensive audit logging
- **Pain Points**: Managing policy conflicts, troubleshooting enrollment failures, user support escalations

---

## Business Requirements

### BR-001: Windows 11 Migration

**Description**: Organisation must migrate [NUMBER] Windows 10 devices to Windows 11 to ensure continued security support, as Windows 10 End of Life is October 2025.

**Stakeholder**: CIO (Executive Sponsor), IT Operations Director

**Priority**: MUST_HAVE

**Acceptance Criteria**:
- [ ] 95% of eligible devices migrated to Windows 11 by September 2025 (12 months before EoL)
- [ ] 100% of eligible devices migrated by October 2025 (Windows 10 EoL date)
- [ ] Devices not compatible with Windows 11 are identified and replacement plan documented
- [ ] Migration success rate >95% (rollback rate <5%)

**Aligns with Architecture Principles**: Principle 4 (User-Centric Migration Experience), Principle 6 (Phased Rollout Strategy)

---

### BR-002: Cloud-Native Endpoint Management

**Description**: Transition device management from on-premises Configuration Manager to Microsoft InTune cloud-native management for simplified operations, reduced infrastructure, and modern management capabilities.

**Stakeholder**: CIO, IT Operations Director

**Priority**: MUST_HAVE

**Acceptance Criteria**:
- [ ] 100% of Windows 11 devices managed by InTune within 18 months
- [ ] Configuration Manager decommissioned by Month 18 (cost savings realized)
- [ ] Co-management workloads transitioned in phases: Compliance (Month 3), Device Configuration (Month 6), Resource Access (Month 9), Windows Update (Month 12), Endpoint Protection (Month 15), Client Apps (Month 18)
- [ ] Zero dependency on on-premises management infrastructure after Month 18

**Aligns with Architecture Principles**: Principle 1 (Cloud-First Endpoint Management)

---

### BR-003: Cost Optimization

**Description**: Reduce endpoint management operational costs by eliminating Configuration Manager infrastructure and leveraging cloud-native InTune management.

**Stakeholder**: CFO, IT Operations Director

**Priority**: MUST_HAVE

**Acceptance Criteria**:
- [ ] Configuration Manager infrastructure decommissioned (servers, SQL database, distribution points)
- [ ] Annual infrastructure cost savings of £[X] achieved by Month 24
- [ ] Reduced IT staff effort for patch management (automated via InTune)
- [ ] License consolidation: Microsoft 365 E3/E5 includes InTune (no additional license cost)

**Aligns with Architecture Principles**: Principle 16 (Licensing and Cost Management)

---

### BR-004: Hardware Modernization for AI Readiness

**Description**: Deploy Copilot+ PC hardware (Windows 11 devices with Neural Processing Units) to 30% of refreshed devices to enable AI productivity features and future-proof the endpoint estate.

**Stakeholder**: CIO, CFO

**Priority**: SHOULD_HAVE

**Acceptance Criteria**:
- [ ] 30% of hardware refreshes in Year 1 are Copilot+ PCs with NPU ≥40 TOPS
- [ ] Copilot+ PCs meet Windows 11 24H2+ requirements (NPU, 16GB+ RAM, 256GB+ SSD)
- [ ] AI features enabled: Windows Studio Effects, Live Captions, Copilot in Windows
- [ ] Pilot of 50-100 Copilot+ PCs completed before broad procurement decision
- [ ] ROI validated: user productivity improvements measured via user satisfaction surveys

**Aligns with Architecture Principles**: Principle 3A (Copilot+ PC Hardware and AI-Ready Devices)

---

### BR-005: Hardware Compatibility Assurance

**Description**: Ensure all devices targeted for Windows 11 migration meet hardware requirements (TPM 2.0, Secure Boot, supported CPU, 4GB+ RAM, 64GB+ storage).

**Stakeholder**: IT Operations Director, Enterprise Architect

**Priority**: MUST_HAVE

**Acceptance Criteria**:
- [ ] Hardware compatibility assessment completed for 100% of Windows 10 devices
- [ ] Devices not meeting Windows 11 requirements identified with replacement/retirement plan
- [ ] Hardware refresh budget allocated for ~30% of devices (estimated 3-5 years old)
- [ ] Zero migration failures due to hardware incompatibility

**Aligns with Architecture Principles**: Principle 3 (Device Hardware Standardization), Principle 3A (Copilot+ PC Hardware)

---

### BR-006: Governance and Architecture Compliance

**Description**: All Windows 11 deployment decisions must comply with enterprise architecture principles defined in `.arckit/memory/architecture-principles.md`.

**Stakeholder**: Enterprise Architect, CIO

**Priority**: MUST_HAVE

**Acceptance Criteria**:
- [ ] All technical designs reviewed against 18 architecture principles
- [ ] Architecture Decision Records (ADRs) documented for significant decisions
- [ ] Exception process defined for deviations from principles (approved by Architecture Review Board)
- [ ] Zero unaddressed principle violations in production deployment

**Aligns with Architecture Principles**: All 18 principles

---

### BR-007: Change Management and User Adoption

**Description**: Implement comprehensive change management programme to ensure user adoption of Windows 11 and minimize productivity disruption.

**Stakeholder**: HR/Training, IT Operations Director

**Priority**: MUST_HAVE

**Acceptance Criteria**:
- [ ] User communication plan executed (email, intranet, town halls)
- [ ] Training materials created (quick reference guides, video tutorials, FAQ)
- [ ] Departmental champions identified and trained (at least 1 per 50 users)
- [ ] User satisfaction score >80% post-migration (measured via survey)
- [ ] Support ticket rate <2% of migrated devices per week

**Aligns with Architecture Principles**: Principle 14 (Change Management and Communication)

---

### BR-008: Phased Rollout with Risk Controls

**Description**: Execute Windows 11 migration in controlled phases with defined pause criteria to minimize risk.

**Stakeholder**: IT Operations Director, CISO

**Priority**: MUST_HAVE

**Acceptance Criteria**:
- [ ] Pilot phase: IT staff only (50-100 devices) before broader rollout
- [ ] Early adopters phase: 10% of users across departments
- [ ] Production waves: 500-1000 devices per wave with success criteria validation
- [ ] Pause criteria defined: >10% failure rate or P1 security incident triggers wave pause
- [ ] Rollback capability: 10-day window to revert to Windows 10 if critical issues detected

**Aligns with Architecture Principles**: Principle 6 (Phased Rollout Strategy)

---

## Functional Requirements

### FR-001: Device Compliance Policy Enforcement

**Description**: System must enforce device compliance policies via InTune, including BitLocker encryption, Windows Update compliance, antivirus status, and Secure Boot verification.

**Relates To**: BR-001 (Windows 11 Migration), BR-006 (Governance)

**Acceptance Criteria**:
- [ ] Given a Windows 11 device enrolled in InTune, when compliance policies are assigned, then device reports compliance status within 24 hours
- [ ] Given a non-compliant device, when Conditional Access is enforced, then device is blocked from corporate resources until compliant
- [ ] Given BitLocker not enabled, when device checks in, then device marked as non-compliant with remediation guidance displayed

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: InTune enrollment, Conditional Access policies, BitLocker policy deployment
**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

---

### FR-002: Windows Autopilot Device Provisioning

**Description**: System must provision new and reset devices using Windows Autopilot for zero-touch deployment with user-driven or self-deploying profiles.

**Relates To**: BR-001 (Windows 11 Migration), BR-002 (Cloud-Native Management)

**Acceptance Criteria**:
- [ ] Given a new Windows 11 device (OEM pre-registered or IT-registered), when user powers on and connects to network, then Autopilot provisions device within 30 minutes (excluding large app downloads)
- [ ] Given Autopilot deployment profile, when configured, then supports User-Driven (standard users), Self-Deploying (kiosk/shared devices), and White Glove (pre-provisioning) modes
- [ ] Given Enrollment Status Page, when deployment runs, then user sees real-time progress and cannot use device until critical apps installed
- [ ] Given Autopilot failure, when error occurs, then diagnostics logged to InTune for troubleshooting

**Priority**: MUST_HAVE
**Complexity**: HIGH
**Dependencies**: Azure AD device registration, InTune enrollment, OEM vendor registration process
**Aligns with Architecture Principles**: Principle 7 (Automated Deployment with Windows Autopilot)

---

### FR-003: OneDrive Known Folder Move Deployment

**Description**: System must configure OneDrive Known Folder Move (KFM) to silently redirect Desktop, Documents, and Pictures folders to OneDrive for Business, ensuring user data is cloud-protected before migration.

**Relates To**: BR-001 (Windows 11 Migration), Architecture Principle 12 (Data Protection)

**Acceptance Criteria**:
- [ ] Given InTune policy deployment, when OneDrive client installed, then KFM silently enabled for Desktop, Documents, Pictures
- [ ] Given KFM enabled, when user saves file to Desktop, then file synced to OneDrive within 5 minutes
- [ ] Given migration scenario, when Windows 10 device wiped/upgraded, then user data restored automatically via OneDrive sync on Windows 11 device
- [ ] Given OneDrive sync health, when monitored, then 100% of devices report "Healthy" sync status before migration wave

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: OneDrive for Business license (included in M365), InTune OneDrive configuration profile
**Aligns with Architecture Principles**: Principle 12 (Data Protection and Backup)

---

### FR-004: Azure AD Join and Hybrid Join Support

**Description**: System must support both Azure AD Join (cloud-native) for new devices and Hybrid Azure AD Join for devices requiring on-premises AD integration during transition.

**Relates To**: BR-002 (Cloud-Native Management)

**Acceptance Criteria**:
- [ ] Given new Windows 11 device, when provisioned via Autopilot, then Azure AD Joined by default (no on-premises AD dependency)
- [ ] Given existing Windows 10 device, when upgraded to Windows 11, then maintains Hybrid Azure AD Join if required by line-of-business applications
- [ ] Given migration timeline, when Month 12 reached, then 100% of new devices are Azure AD Join only (no new Hybrid Join)
- [ ] Given device identity, when queried, then device visible in both Azure AD portal and InTune console

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: Azure AD Connect (for Hybrid Join), Azure AD Premium P1 license
**Aligns with Architecture Principles**: Principle 11 (Azure AD Integration and Identity Management)

---

### FR-005: Windows Feature Update Deployment

**Description**: System must deploy Windows 11 feature updates (e.g., 23H2, 24H2) via InTune feature update policies with targeted ring-based deployment.

**Relates To**: BR-001 (Windows 11 Migration), Architecture Principle 9 (Update Management)

**Acceptance Criteria**:
- [ ] Given feature update policy, when configured in InTune, then specify target Windows 11 version (e.g., 23H2)
- [ ] Given update rings, when deployed, then support: Preview ring (IT staff, 1 week), Pilot ring (early adopters, 2 weeks), Production ring (all users, 4 weeks)
- [ ] Given Windows 10 device, when targeted for Windows 11 upgrade, then in-place upgrade executed during maintenance window
- [ ] Given upgrade failure, when error occurs, then device remains on Windows 10 (no data loss) with error logged for investigation

**Priority**: MUST_HAVE
**Complexity**: HIGH
**Dependencies**: InTune Windows Update for Business policies, network bandwidth for large downloads
**Aligns with Architecture Principles**: Principle 9 (Update Management and Patching)

---

### FR-006: Co-Management Workload Transition

**Description**: System must transition device management workloads from Configuration Manager to InTune in phases per Principle 1, maintaining continuity during transition.

**Relates To**: BR-002 (Cloud-Native Management), Architecture Principle 1 (Cloud-First)

**Acceptance Criteria**:
- [ ] Given co-management enabled, when workload slider configured, then specific workload managed by InTune OR ConfigMgr (not both)
- [ ] Given workload transition schedule, when followed, then: Month 3 (Compliance Policies), Month 6 (Device Configuration), Month 9 (Resource Access Policies), Month 12 (Windows Update Policies), Month 15 (Endpoint Protection), Month 18 (Client Apps)
- [ ] Given workload transition, when completed for a workload, then ConfigMgr agent ignores policies for that workload
- [ ] Given 100% workload transition (Month 18), when verified, then ConfigMgr client can be uninstalled

**Priority**: MUST_HAVE
**Complexity**: HIGH
**Dependencies**: Configuration Manager co-management enabled, Azure AD Hybrid Join (during transition)
**Aligns with Architecture Principles**: Principle 1 (Cloud-First Endpoint Management)

---

### FR-007: Group Policy to InTune Policy Migration

**Description**: System must migrate applicable Group Policy Objects (GPOs) to InTune configuration profiles to maintain consistent device settings post-migration.

**Relates To**: BR-002 (Cloud-Native Management), Architecture Principle 8 (Configuration Management)

**Acceptance Criteria**:
- [ ] Given existing GPO settings, when analyzed using Group Policy Analytics in InTune, then compatibility report generated showing: Supported (direct migration), Partially Supported (requires workaround), Not Supported (alternative approach needed)
- [ ] Given supported GPO settings, when migrated, then equivalent InTune configuration profile created and tested
- [ ] Given unsupported GPO settings, when identified, then ADR (Architecture Decision Record) documents alternative approach or exception
- [ ] Given InTune policies deployed, when device complies, then identical settings achieved as previous GPO (validated via compliance check)

**Priority**: MUST_HAVE
**Complexity**: HIGH
**Dependencies**: Group Policy Analytics in InTune, AD-joined devices for GPO comparison
**Aligns with Architecture Principles**: Principle 8 (Configuration Management via InTune Policies)

---

### FR-008: Application Packaging and Deployment via InTune

**Description**: System must package and deploy top 100 business-critical applications via InTune using Win32 app packaging (.intunewin format) or Microsoft Store for Business.

**Relates To**: BR-002 (Cloud-Native Management), Architecture Principle 5 (Application Compatibility)

**Acceptance Criteria**:
- [ ] Given application catalog, when reviewed, then top 100 business-critical apps identified by user count and business impact
- [ ] Given legacy Win32 application, when repackaged, then .intunewin package created with detection rules, install commands, and uninstall commands
- [ ] Given InTune app deployment, when targeted to device group, then app installed within 24 hours of device check-in
- [ ] Given application installation, when monitored, then success/failure status reported in InTune admin center
- [ ] Given Microsoft Store app, when deployed, then uses Microsoft Store for Business integration (or winget for public apps)

**Priority**: MUST_HAVE
**Complexity**: HIGH
**Dependencies**: InTune Win32 app packaging tool, application source files, detection scripts
**Aligns with Architecture Principles**: Principle 5 (Application Compatibility and Testing)

---

### FR-009: Windows Security Baseline Deployment

**Description**: System must deploy Microsoft Security Baselines via InTune to enforce consistent security configurations across all Windows 11 devices.

**Relates To**: BR-006 (Governance), Architecture Principle 2 (Zero Trust)

**Acceptance Criteria**:
- [ ] Given Microsoft Security Baseline for Windows 11, when imported to InTune, then baseline profile available for assignment
- [ ] Given security baseline profile, when deployed, then enforces: BitLocker encryption, Windows Firewall enabled, Windows Defender Antivirus enabled, Attack Surface Reduction (ASR) rules, Credential Guard enabled (where supported)
- [ ] Given baseline compliance, when monitored, then non-compliant devices reported with specific settings that deviate
- [ ] Given baseline update (new Windows version), when Microsoft publishes, then new baseline evaluated and deployed within 30 days

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: InTune Security Baselines feature, Defender for Endpoint integration
**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

---

### FR-010: Conditional Access Policy Enforcement

**Description**: System must enforce Azure AD Conditional Access policies to require device compliance, MFA, and approved apps for access to Microsoft 365 and corporate resources.

**Relates To**: BR-006 (Governance), Architecture Principle 2 (Zero Trust), Principle 11 (Azure AD Integration)

**Acceptance Criteria**:
- [ ] Given Conditional Access policy, when configured, then require: Device compliance (InTune-managed + compliant), MFA for all users (no exceptions), Approved client app (Microsoft Edge, Outlook, Teams), Compliant device for admin portals (Azure, M365 Admin, InTune)
- [ ] Given non-compliant device, when user attempts access, then blocked with message directing to compliance remediation
- [ ] Given legacy authentication protocols (POP, IMAP, SMTP), when detected, then blocked by Conditional Access
- [ ] Given Conditional Access sign-in logs, when reviewed, then all access attempts logged with success/failure reason

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: Azure AD Premium P1/P2, InTune device compliance policies
**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model), Principle 11 (Azure AD Integration)

---

### FR-011: Microsoft Defender for Endpoint Onboarding

**Description**: System must onboard all Windows 11 devices to Microsoft Defender for Endpoint for advanced threat protection, EDR, and security posture management.

**Relates To**: BR-006 (Governance), Architecture Principle 2 (Zero Trust)

**Acceptance Criteria**:
- [ ] Given InTune device enrollment, when Defender for Endpoint policy assigned, then device automatically onboarded to Defender within 24 hours
- [ ] Given Defender onboarding, when successful, then device visible in Microsoft 365 Defender portal with health status
- [ ] Given threat detection, when Defender identifies malware/threat, then alert generated and visible in Security Operations dashboard
- [ ] Given device risk score, when Defender calculates, then risk level (Low/Medium/High) shared with InTune for Conditional Access risk-based policies

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: Microsoft Defender for Endpoint license (included in M365 E5 or standalone), InTune Defender integration
**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

---

### FR-012: Windows Update for Business Configuration

**Description**: System must configure Windows Update for Business via InTune to manage quality updates (monthly patches) and feature updates (annual releases) with defined deferral periods.

**Relates To**: BR-008 (Phased Rollout), Architecture Principle 9 (Update Management)

**Acceptance Criteria**:
- [ ] Given update rings, when configured, then define deferral periods: Quality updates (security patches): Preview ring (0 days), Pilot (3 days), Production (7 days); Feature updates (Windows versions): Preview ring (0 days), Pilot (14 days), Production (60 days)
- [ ] Given update deadline, when set, then force install after grace period (e.g., 7 days for quality updates) with user notification
- [ ] Given update installation, when scheduled, then configured for off-hours (e.g., 2am-5am local time) to minimize user disruption
- [ ] Given update compliance, when monitored, then devices report compliance within 7 days of patch release (SLA target: >95% within 7 days for quality updates)

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: InTune Windows Update policies, network bandwidth for update downloads
**Aligns with Architecture Principles**: Principle 9 (Update Management and Patching)

---

### FR-013: Application Compatibility Testing Lab

**Description**: System must provide application compatibility testing environment (Azure Virtual Desktop or physical Windows 11 devices) to validate top 100 applications before production migration.

**Relates To**: BR-005 (Hardware Compatibility), Architecture Principle 5 (Application Compatibility)

**Acceptance Criteria**:
- [ ] Given testing lab, when provisioned, then includes: Azure Virtual Desktop (AVD) with Windows 11 23H2+ OR physical Windows 11 test devices, InTune-enrolled test devices mirroring production configuration, Top 100 business-critical apps installed for testing
- [ ] Given application test, when executed, then document: Application name/version, Test date, Tester name, Test result (Pass/Fail/Workaround Required), Issues found, Remediation plan (if needed)
- [ ] Given application test results, when 100% of top 100 apps tested, then compatibility matrix published before Pilot phase
- [ ] Given application failure, when detected, then escalate to vendor for patch OR document workaround OR mark for replacement

**Priority**: MUST_HAVE
**Complexity**: HIGH
**Dependencies**: Azure Virtual Desktop (AVD) subscription OR physical Windows 11 test devices, InTune tenant, test user accounts
**Aligns with Architecture Principles**: Principle 5 (Application Compatibility and Testing)

---

### FR-014: User Communication and Training Material Delivery

**Description**: System must deliver user communication campaign and training materials to prepare users for Windows 11 migration and minimize resistance to change.

**Relates To**: BR-007 (Change Management and User Adoption), Architecture Principle 14 (Change Management and Communication)

**Acceptance Criteria**:
- [ ] Given migration timeline, when communication campaign launched, then communication delivered per schedule: T-90 days (executive sponsorship message from CIO), T-60 days (migration FAQ published on intranet), T-30 days (user webinars scheduled and recorded), T-14 days (personalized migration schedule email to each user), T-7 days (reminder email with pre-migration checklist), T-1 day (final reminder with helpdesk contact info), T+1 day (post-migration survey link sent)
- [ ] Given training materials, when created, then include: "What's New in Windows 11" PDF guide (10-15 pages), Video training (5-10 minutes) covering Start menu, taskbar, Settings app, Snap layouts, Quick reference card (1-page laminated card) with common tasks
- [ ] Given user webinar, when delivered, then includes: Windows 11 UI walkthrough, Q&A session, Helpdesk contact information, Migration schedule overview
- [ ] Given training material, when published, then available via: SharePoint intranet site, Microsoft Viva Learning module, Email attachment (PDF/video link)
- [ ] Given departmental champions, when trained, then act as peer support resources for their departments

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: Change management team, training content creation, communication platform (email, SharePoint, Viva Learning)
**Aligns with Architecture Principles**: Principle 14 (Change Management and Communication)

---

### FR-015: Helpdesk Training and Enablement

**Description**: System must train helpdesk staff on Windows 11 and InTune troubleshooting before pilot phase to ensure support readiness for user migrations.

**Relates To**: BR-007 (Change Management), Architecture Principle 13 (Helpdesk and User Support)

**Acceptance Criteria**:
- [ ] Given helpdesk staff (~20-30 staff), when training delivered, then 100% of staff attend training sessions before pilot phase begins
- [ ] Given training curriculum, when developed, then includes: Windows 11 features and UI changes (4 hours), InTune device management basics (4 hours), Troubleshooting device compliance issues (2 hours), Troubleshooting Autopilot enrollment failures (2 hours), Troubleshooting Conditional Access blocks (2 hours), Using InTune Remote Help for remote support (1 hour), Common application compatibility issues (2 hours), Rollback procedures (1 hour)
- [ ] Given helpdesk tools, when deployed, then include: InTune Remote Help (remote control with user consent), InTune admin center access (read-only for tier-1, full access for tier-2), Endpoint Analytics dashboard for proactive insights, Knowledge base articles for common issues (SharePoint or ServiceNow)
- [ ] Given helpdesk support tiers, when defined, then: Tier 1 (basic troubleshooting, password resets, device compliance checks), Tier 2 (application issues, policy conflicts, InTune remediation), Tier 3 (InTune platform issues, Azure AD problems, escalation to Microsoft)
- [ ] Given support ticket categories, when updated in ServiceNow, then new categories added: Windows 11 UI issue, InTune enrollment failure, Conditional Access blocked, Application compatibility issue, Autopilot provisioning failure

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: Helpdesk staff availability, training materials, InTune Remote Help licenses, ServiceNow configuration
**Aligns with Architecture Principles**: Principle 13 (Helpdesk and User Support)

---

### FR-016: Migration Dashboard and Reporting

**Description**: System must provide real-time migration dashboard (Power BI or InTune dashboard) to track migration progress, device compliance, issue trends, and success metrics.

**Relates To**: BR-008 (Phased Rollout), Architecture Principle 10 (Monitoring, Reporting, and Compliance)

**Acceptance Criteria**:
- [ ] Given migration dashboard, when viewed, then displays key metrics: Total devices migrated to Windows 11 (count and %), Devices remaining on Windows 10 (count and %), Migration success rate (%), Devices in each migration wave, Devices compliant vs non-compliant, Top 10 compliance issues, Top 10 application compatibility issues, Support ticket volume per wave, User satisfaction score (NPS)
- [ ] Given Power BI dashboard, when configured, then connects to InTune API and Azure AD reporting to pull device inventory, OS versions, compliance status, enrollment status
- [ ] Given dashboard refresh, when scheduled, then updates hourly during active migration waves, daily outside migration waves
- [ ] Given dashboard access, when controlled, then viewable by: IT Operations leadership (full access), Project managers (full access), Helpdesk (view-only), Executives (executive summary view)
- [ ] Given migration wave, when paused due to >10% failure rate or P1 incident, then dashboard displays "PAUSED" status with pause reason
- [ ] Given weekly project status meeting, when held, then dashboard used as primary reporting artifact

**Data Requirements**:
- **Inputs**: InTune device inventory, Azure AD device data, ServiceNow ticket data, user survey responses
- **Outputs**: Power BI dashboard, weekly status reports (PDF export)
- **Validations**: Data accuracy verified weekly against InTune and Azure AD source data

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: Power BI Pro licenses, InTune reporting API, Azure AD reporting, ServiceNow API (for ticket data)
**Aligns with Architecture Principles**: Principle 10 (Monitoring, Reporting, and Compliance)

---

### FR-017: Rollback Capability Implementation

**Description**: System must provide rollback capability to revert devices from Windows 11 to Windows 10 within 10-day window if critical issues detected during pilot or production phases.

**Relates To**: BR-008 (Phased Rollout), Architecture Principle 15 (Incident Response and Rollback)

**Acceptance Criteria**:
- [ ] Given Windows 11 device <10 days post-upgrade, when rollback initiated, then user can use "Go Back" feature via Settings > System > Recovery to revert to Windows 10
- [ ] Given Windows.old folder, when preserved, then folder retained for 10 days post-upgrade (default Windows behavior) to enable rollback
- [ ] Given bulk rollback scenario (e.g., critical application incompatibility affecting 100+ users), when IT initiates rollback, then InTune script deployed to automate rollback across affected device group
- [ ] Given device >10 days post-upgrade, when rollback required, then device must be wiped and re-imaged with Windows 10 Autopilot profile as Windows.old folder auto-deleted
- [ ] Given rollback executed, when user reboots, then device reverts to Windows 10 with: User data preserved (via OneDrive KFM), Applications reinstalled from ConfigMgr or InTune, User settings preserved via Enterprise State Roaming
- [ ] Given rollback metrics, when tracked, then rollback rate monitored per wave with target <5% rollback rate
- [ ] Given P1 incident requiring rollback, when triggered, then rollback procedure tested and available for all devices in affected wave

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: Windows.old folder preservation, InTune scripting capability, OneDrive KFM (FR-003), Autopilot profiles
**Aligns with Architecture Principles**: Principle 15 (Incident Response and Rollback)

---

### FR-018: Configuration Manager Decommissioning Process

**Description**: System must execute Configuration Manager decommissioning process after 100% of Windows 11 devices transitioned to InTune-exclusive management (18-month timeline).

**Relates To**: BR-002 (Cloud-Native Endpoint Management), BR-003 (Cost Optimization)

**Acceptance Criteria**:
- [ ] Given co-management workload transition (FR-006), when Month 18 reached, then 100% of workloads managed by InTune and 0% by Configuration Manager
- [ ] Given Configuration Manager decommissioning plan, when executed, then includes phases: Phase 1 (Month 16-17): Verify 100% workload transition, document any remaining dependencies, obtain stakeholder sign-off for decommission; Phase 2 (Month 17): Disable client deployments, disable software updates, set ConfigMgr to read-only mode; Phase 3 (Month 18): Backup Configuration Manager database for archival, Uninstall ConfigMgr client from remaining devices, Decommission site servers and database, Reclaim server licenses and hardware
- [ ] Given Configuration Manager infrastructure, when decommissioned, then includes: Primary site server(s) decommissioned, SQL Server database backed up and archived for 7 years, Distribution points decommissioned, Software Update Point decommissioned, Reporting Services decommissioned
- [ ] Given cost savings, when Configuration Manager decommissioned, then annual savings realized: Server hardware/VM licenses, SQL Server licenses, ConfigMgr CALs, Datacenter rack space and power, IT staff time (estimated 1-2 FTEs reallocated)
- [ ] Given archived ConfigMgr data, when retained, then database backup stored for audit/compliance purposes (7 years) with documented restore procedure if needed

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: Co-management workload transition complete (FR-006), 100% InTune management achieved
**Aligns with Architecture Principles**: Principle 1 (Cloud-First Endpoint Management), Principle 16 (Licensing and Cost Management)

---

### FR-019: Copilot+ PC Pilot Deployment

**Description**: System must execute Copilot+ PC pilot deployment (50-100 devices) to IT staff and early adopters to validate AI features, ARM64 compatibility, and user satisfaction before broad procurement.

**Relates To**: BR-005 (Hardware Modernization), Architecture Principle 3A (Copilot+ PC Hardware)

**Acceptance Criteria**:
- [ ] Given pilot user selection, when identified, then pilot includes: 50-100 IT staff and early adopters, Mix of user personas (executives, knowledge workers, developers), Geographically distributed (if applicable), Willing to provide feedback and tolerate minor issues
- [ ] Given Copilot+ PC hardware, when procured for pilot, then mix of: x64 Copilot+ PCs (Intel Core Ultra or AMD Ryzen AI) - 60% of pilot, ARM64 Copilot+ PCs (Qualcomm Snapdragon X Elite) - 40% of pilot
- [ ] Given ARM64 devices in pilot, when application compatibility tested, then top 20 business apps validated for: Native ARM64 app availability OR x64 emulation compatibility with acceptable performance, VPN client ARM64 compatibility, Security software ARM64 compatibility
- [ ] Given pilot devices, when deployed, then AI features enabled for testing: Windows Studio Effects (background blur, eye contact, auto-framing), Live Captions with translation (40+ languages), Copilot in Windows, Paint Cocreator, Recall (opt-in only, privacy controls configured per NFR-C-001)
- [ ] Given pilot user, when device delivered, then White Glove Autopilot pre-provisioning used for executive/VIP users to minimize setup time
- [ ] Given pilot completion (90 days), when evaluated, then success criteria: >80% user satisfaction with AI features, <5% application compatibility issues (ARM64 devices), Measurable productivity improvements (survey-based), Recommendation for broad procurement (Yes/No)
- [ ] Given pilot feedback, when collected, then inform: Copilot+ PC procurement strategy (% of new device budget), ARM64 vs x64 procurement mix, AI feature enablement policy for production rollout

**Data Requirements**:
- **Inputs**: Pilot user nominations, device procurement, application compatibility test results (FR-013)
- **Outputs**: Pilot evaluation report, user satisfaction surveys, AI feature usage analytics, procurement recommendations
- **Validations**: Pilot success criteria met before scaling Copilot+ PC procurement

**Priority**: SHOULD_HAVE
**Complexity**: MEDIUM
**Dependencies**: Copilot+ PC hardware procurement, application compatibility testing (FR-013), InTune Autopilot (FR-002), privacy controls (NFR-C-001)
**Aligns with Architecture Principles**: Principle 3A (Copilot+ PC Hardware and AI-Ready Devices), Principle 5 (Application Compatibility)

---

### FR-020: ARM64 Application Compatibility Testing

**Description**: System must validate ARM64 application compatibility for Copilot+ PCs with Qualcomm Snapdragon processors to ensure business-critical applications run natively or via x64 emulation.

**Relates To**: BR-005 (Hardware Modernization), FR-019 (Copilot+ PC Pilot), Architecture Principle 3A (Copilot+ PC Hardware)

**Acceptance Criteria**:
- [ ] Given top 20 business-critical applications, when tested on ARM64 Copilot+ PC, then validate: Native ARM64 version available (best performance), x64 version runs via Prism emulator with acceptable performance (<20% performance degradation vs native x64 device), x86 (32-bit) version runs via emulator if no x64 available (acceptable for non-performance-critical apps)
- [ ] Given kernel-mode drivers (VPN client, security software, device drivers), when tested, then ARM64-native driver required (emulation not supported for kernel drivers)
- [ ] Given VPN client, when tested on ARM64, then validate vendor provides ARM64-native client OR alternative VPN solution identified
- [ ] Given Microsoft Defender for Endpoint, when deployed on ARM64, then native ARM64 support validated (Microsoft provides ARM64 agent)
- [ ] Given line-of-business application, when vendor contacted, then vendor ARM64 roadmap documented (native ARM64 version available, planned, or no plans)
- [ ] Given application compatibility matrix, when complete, then documents: Application name, Native ARM64 available (Yes/No), x64 emulation tested (Pass/Fail/Not Tested), Performance acceptable (Yes/No/N/A), Recommendation (Deploy on ARM64 / Deploy on x64 Copilot+ PC only / Block ARM64 deployment)
- [ ] Given ARM64 incompatibility identified, when blocking, then x64 Copilot+ PCs (Intel/AMD) procured for affected users instead of ARM64 devices

**Data Requirements**:
- **Inputs**: Application inventory (top 20 business apps), vendor compatibility statements, ARM64 test devices
- **Outputs**: ARM64 compatibility matrix, vendor escalation list for incompatible apps, procurement guidance (ARM64 vs x64 Copilot+ PC mix)
- **Validations**: Each app tested on physical ARM64 Copilot+ PC (Qualcomm Snapdragon) before pilot deployment

**Priority**: SHOULD_HAVE
**Complexity**: MEDIUM
**Dependencies**: ARM64 Copilot+ PC hardware (Qualcomm Snapdragon), application compatibility test lab (FR-013), vendor engagement
**Aligns with Architecture Principles**: Principle 3A (Copilot+ PC Hardware), Principle 5 (Application Compatibility and Testing)

---

## Non-Functional Requirements (NFRs)

### Performance Requirements

#### NFR-P-001: Autopilot Provisioning Time

**Requirement**: Autopilot provisioning must complete within 30 minutes from device power-on to user-ready desktop (excluding large app downloads).

**Measurement Method**: Time from Autopilot OOBE start to Enrollment Status Page completion, measured via Endpoint Analytics.

**Load Conditions**:
- Peak load: 500 devices provisioning simultaneously during wave deployment
- Average load: 50 devices provisioning per day (new hires, replacements)
- Network bandwidth: 100 Mbps minimum per device for app downloads

**Priority**: HIGH

**Aligns with Architecture Principles**: Principle 7 (Automated Deployment with Windows Autopilot)

---

#### NFR-P-002: Windows 11 Upgrade Duration

**Requirement**: In-place upgrade from Windows 10 to Windows 11 must complete within 90 minutes (device unusable during upgrade).

**Measurement Method**: Time from upgrade start to Windows 11 desktop login, measured via InTune update compliance reporting.

**Load Conditions**:
- Peak load: 1,000 devices upgrading simultaneously in production wave
- Device specifications: Minimum 8GB RAM, SSD storage
- Network bandwidth: 50 Mbps minimum for Windows 11 download

**Priority**: HIGH

**Aligns with Architecture Principles**: Principle 7 (Automated Deployment), Principle 4 (User-Centric Migration)

---

### Security Requirements

#### NFR-SEC-001: Authentication and MFA

**Requirement**: All users must authenticate via Azure AD with Multi-Factor Authentication (MFA) enforced for all sign-ins.

**MFA Methods**:
- Primary: Microsoft Authenticator app (push notification)
- Secondary: SMS to registered mobile number
- Tertiary: Phone call to registered number

**Session Management**:
- Session timeout: 90 days (Azure AD refresh token lifetime)
- Re-authentication required for: Device enrollment, BitLocker recovery, admin operations

**Priority**: CRITICAL

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model), Principle 11 (Azure AD Integration)

---

#### NFR-SEC-002: Data Encryption

**Requirement**:
- Data in transit: TLS 1.2+ for all InTune communications (cloud to device)
- Data at rest: BitLocker AES-256 encryption for all fixed drives
- Key management: BitLocker recovery keys escrowed to Azure AD, retrievable via InTune portal

**Encryption Scope**:
- [ ] All fixed drives encrypted (C:, D:, etc.)
- [ ] Removable drives encrypted via BitLocker To Go (policy-enforced)
- [ ] OneDrive data encrypted in transit (TLS 1.2+) and at rest (Microsoft 365 encryption)

**Priority**: CRITICAL

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model), Principle 12 (Data Protection)

---

#### NFR-SEC-003: Endpoint Threat Protection

**Requirement**: All Windows 11 devices must have Microsoft Defender for Endpoint deployed with real-time protection, EDR, and Attack Surface Reduction (ASR) rules enabled.

**Threat Detection**:
- Real-time antivirus scanning (on-access, on-write, on-execute)
- Cloud-delivered protection for zero-day threats
- Behavioral analysis for ransomware detection
- Memory integrity (HVCI) enabled for kernel-mode exploit prevention

**Threat Response**:
- Automatic remediation for known threats (quarantine, delete)
- Alert to SOC for unknown/suspicious threats
- Device isolation capability (network cutoff) for compromised devices

**Priority**: CRITICAL

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

---

#### NFR-SEC-004: Security Governance for Existing Accredited In-Service System

**Requirement**: Project must establish security governance structure using existing organizational security processes and Three Lines of Defence model before Beta phase. This project delivers changes to an EXISTING accredited in-service system and does NOT require CAAT (Cyber Activity and Assurance Tracker) registration.

**Source**: Organizational security governance policy, ISO 27001, NIST Cybersecurity Framework

**CRITICAL CLARIFICATION - CAAT NOT APPLICABLE**: This Windows 11 migration is delivering changes to an **EXISTING accredited in-service system** (Windows 10 enterprise environment with existing security accreditation). MOD Secure by Design (SbD) CAAT registration is intended ONLY for programmes delivering **NEW operational capabilities** into service, NOT for upgrades/changes to existing accredited systems.

**CAAT Registration Status**: ❌ **NOT REQUIRED - NOT APPLICABLE**

**Rationale for CAAT Exemption**:
- This project is an **OS upgrade** (Windows 10 → Windows 11) and **management platform migration** (Configuration Manager → InTune) within the EXISTING accredited enterprise IT environment
- The existing Windows 10 environment already has:
  - Security accreditation and authority to operate
  - Established risk management processes
  - Operational security governance and change control
  - Existing Three Lines of Defence security governance structure
- This is **change management to an existing system**, not a new programme requiring CAAT registration
- Changes will be managed through existing Change Advisory Board (CAB) and security change control processes
- Security impact assessment will be conducted via existing organizational security review processes (NOT via CAAT)
- Existing system accreditation will be updated through standard organizational change control documentation

**Three Lines of Defence - Security Governance Roles** (using existing organizational structure):

**First Line of Defence: Delivery Team Owns Security** (appoint within Week 1):
- [ ] **Project Security Lead**: Senior Security Architect or CISO delegate appointed to:
  - Own security for project delivery team
  - Manage day-to-day security
  - Lead threat modeling and security testing
  - Coordinate with existing organizational security team
  - Update existing system security documentation
  - **Note**: Role integrates with existing organizational security governance, NOT a new DTSL role for CAAT
- [ ] **Project Sponsor / Senior Responsible Owner (SRO)**: Formally document (likely CIO)
  - **Accountability**: Project sponsor accountable for security posture of changes
  - **Responsibility**: Ensure changes maintain or improve existing accredited system security posture
- [ ] **Change Owner**: Designated individual responsible for change request through CAB
  - Submit security impact assessment to CAB
  - Coordinate with existing system security owners

**Second Line of Defence: Assurance and Oversight** (establish by Month 2):
- [ ] **Security Architecture Review**: Submit to existing organizational security architecture team
  - **Role**: Review Windows 11 security architecture changes
  - **Owner**: Organizational Security Architect / Enterprise Architect
  - **Process**: Use existing organizational security review process (NOT CAAT self-assessment)
- [ ] **Change Advisory Board (CAB) Approval**: Security impact assessment reviewed and approved by CAB
  - **Role**: Assess risk of changes to existing accredited system
  - **Owner**: CAB Chair
  - **Process**: Standard CAB change request with security impact assessment
- [ ] **Security Policies Compliance Review**: Validate alignment with existing organizational security policies
  - **Role**: Ensure Windows 11 migration maintains compliance with existing policies
  - **Owner**: Organizational Security Team

**Third Line of Defence: Independent Audit** (existing organizational audit schedule):
- [ ] **Internal Audit**: Coordinate with existing organizational internal audit schedule
  - **Role**: Audit security controls as part of routine internal audit (NOT special CAAT audit)
  - **Owner**: Internal Audit Department
  - **Process**: Include Windows 11 migration security controls in next scheduled IT audit
- [ ] **Penetration Testing**: Procure external pen testing for Windows 11 environment
  - **Role**: Penetration testing, vulnerability assessment
  - **Owner**: Project Security Lead
  - **Process**: Coordinate with existing organizational pen testing schedule/contracts

**Security Governance Process for Existing System Changes**:
- [ ] **Week 1**: Appoint Project Security Lead and SRO
- [ ] **Week 2**: Complete Security Impact Assessment using existing organizational template
- [ ] **Week 3**: Submit Change Request to CAB with security impact assessment
- [ ] **Month 1**: Complete threat model using STRIDE methodology
- [ ] **Month 2**: Security Architecture Review by organizational security team (NOT CAAT)
- [ ] **Month 2**: Obtain CAB approval for Windows 11 migration
- [ ] **Month 3**: Update existing system security documentation (risk register, security controls)
- [ ] **Month 4**: Penetration testing (coordinate with organizational pen testing schedule)
- [ ] **Ongoing**: Monthly security status reporting to SRO and CISO
- [ ] **Quarterly**: Security review meetings with organizational security team
- [ ] **Post-Deployment**: Update existing system accreditation documentation via standard change control

**Acceptance Criteria**:
- [ ] Given security governance requirement, when Week 1 complete, then Project Security Lead and SRO appointed with documented responsibilities
- [ ] Given Security Impact Assessment, when Week 2 complete, then assessment completed using existing organizational template
- [ ] Given CAB submission, when Week 3 complete, then Change Request submitted to CAB with security impact assessment
- [ ] Given threat model, when Month 1 complete, then formal threat model documented with 20+ identified threats
- [ ] Given Security Architecture Review, when Month 2 complete, then organizational security team review conducted with 0 CRITICAL blockers
- [ ] Given CAB approval, when Month 2 complete, then CAB approves Windows 11 migration change request
- [ ] Given documentation updates, when Month 3 complete, then existing system security documentation updated
- [ ] Given ongoing governance, when assessed, then monthly security status reports provided and quarterly security reviews held

**Priority**: CRITICAL (deployment blocker for Beta)

**Related Risks**: R-001 (Migration timeline slips), R-011 (GDPR non-compliance)

**Related Stakeholder Drivers**: SD-1 (CISO security compliance), SD-7 (Enterprise Architect governance)

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

**Organizational Security Compliance**:
- Existing organizational security policy compliance
- ISO 27001 change management processes
- NIST Cybersecurity Framework (Identify, Protect, Detect, Respond, Recover)
- Existing system accreditation maintenance

---

#### NFR-SEC-005: Threat Modeling and Security Architecture Review

**Requirement**: Formal threat model must be documented using STRIDE/DREAD methodology and security architecture must be reviewed by organizational security team (Second Line) before Beta phase.

**Source**: Security best practices (NIST Cybersecurity Framework, NCSC Secure Design Principles, ISO 27001)

**Security Governance Process**: Security architecture must undergo review by existing organizational security architecture team as part of standard change control process (NOT external accreditation authority or MOD CAAT process).

**Threat Modeling Requirements**:
- [ ] **Threat model documented by Month 1** using STRIDE methodology:
  - **Spoofing**: Azure AD authentication bypass, device impersonation
  - **Tampering**: InTune policy manipulation, BitLocker key theft
  - **Repudiation**: Audit log deletion, non-attributable actions
  - **Information Disclosure**: OFFICIAL-SENSITIVE data exfiltration, OneDrive data breach
  - **Denial of Service**: InTune service disruption, device enrollment blocking
  - **Elevation of Privilege**: Local admin compromise, Azure AD privilege escalation
- [ ] **Threat actors analyzed**: Nation-state APT (Advanced Persistent Threat), insider threat (malicious employee/contractor), criminal ransomware gangs, hacktivist groups
- [ ] **Attack vectors identified**: Supply chain compromise (SolarWinds-style), phishing/social engineering, unpatched vulnerabilities (CVEs), misconfigured Conditional Access policies
- [ ] **Attack surface analysis**: InTune API endpoints, Azure AD authentication flows, OneDrive data storage, ServiceNow integration, third-party applications
- [ ] **Threat ratings** calculated using DREAD:
  - **Damage**: Impact if exploited (LOW/MEDIUM/HIGH/CRITICAL)
  - **Reproducibility**: How easy to reproduce attack
  - **Exploitability**: Skill/resources required
  - **Affected Users**: Scope of impact
  - **Discoverability**: How easy to discover vulnerability

**Security Architecture Documentation**:
- [ ] **Security architecture document** created including:
  - Zero Trust architecture diagram (Conditional Access, BitLocker, Defender for Endpoint flows)
  - Network architecture diagram (InTune, Azure AD, Defender, OneDrive, ServiceNow integration)
  - Data flow diagram showing sensitive data flows
  - Security control mapping (threat → control → test evidence)
  - Network integration architecture (firewall rules, cloud connectivity)
  - Alignment with security best practices (Defence in Depth, Secure Design Patterns, Secure Supply Chain)
- [ ] **Security architecture submitted to organizational security team for review** by Month 1
- [ ] **Security Architecture Review completed** before proceeding to Beta phase (Month 2)
- [ ] **Security architecture updates** require security team re-review for significant changes
- [ ] **Quarterly security review meetings** with organizational security team during deployment

**Acceptance Criteria**:
- [ ] Given threat model requirement, when Month 1 complete, then formal threat model documented with 20+ identified threats rated by DREAD
- [ ] Given security architecture, when submitted for review, then architecture document includes diagrams, data flows, security controls, and threat mitigations
- [ ] Given Security Architecture Review, when Month 2 complete, then organizational security team review conducted with 0 CRITICAL findings remaining
- [ ] Given threat model updates, when new threats identified, then threat model updated quarterly and reviewed with Project Security Lead and security team
- [ ] Given architecture changes, when security architecture changes, then security team re-review conducted before implementation

**Priority**: CRITICAL (deployment blocker for Beta)

**Dependencies**: NFR-SEC-004 (Security governance must be established first - Project Security Lead appointed, CAB process initiated)

**Related Stakeholder Drivers**: SD-1 (CISO security), SD-7 (Enterprise Architect governance)

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

**SbD Compliance**:
- JSP 440 Leaflet 5C Principles 1-2 (Understand Context, Security from Start)
- NCSC Secure Design Principles
- NIST CSF Identify function

---

#### NFR-SEC-006: Security Testing and Penetration Testing

**Requirement**: Comprehensive security testing including penetration testing must be completed before Beta phase using CREST or CHECK-approved vendors.

**Source**: MOD Secure by Design Assessment (mod-secure-by-design.md) - Critical Finding #5, High Priority Action #1

**Penetration Testing Requirements**:
- [ ] **Penetration testing vendor**: Procure CREST-certified or CHECK-approved penetration testing vendor by Month 1 (required for MOD systems handling OFFICIAL-SENSITIVE data)
- [ ] **Penetration testing scope**:
  - InTune configuration and policy enforcement (can policies be bypassed?)
  - Conditional Access policies (can authentication be bypassed?)
  - Azure AD authentication flows (MFA bypass attempts)
  - Defender for Endpoint detection/response (can it be disabled?)
  - BitLocker encryption (can keys be stolen?)
  - OneDrive Known Folder Move (can data be exfiltrated?)
  - ServiceNow integration (API authentication security)
  - Third-party application security (top 10 business apps)
- [ ] **Penetration testing execution**: Complete by Month 2 with full report delivered
- [ ] **Penetration testing remediation**: ALL CRITICAL findings remediated before Beta phase, HIGH findings remediated before production deployment
- [ ] **Re-test after remediation**: Validate CRITICAL findings fixed before proceeding

**Vulnerability Scanning Requirements**:
- [ ] **Defender Vulnerability Management** enabled on all Windows 11 devices
- [ ] **Vulnerability scanning schedule**: Weekly scans during Beta/production deployment, daily scans post-Live
- [ ] **Vulnerability remediation SLAs**:
  - **CRITICAL CVEs**: 7 days (e.g., actively exploited zero-days)
  - **HIGH CVEs**: 30 days (e.g., remote code execution vulnerabilities)
  - **MEDIUM CVEs**: 90 days (e.g., privilege escalation)
  - **LOW CVEs**: Best effort (tracked but not SLA-bound)
- [ ] **Vulnerability reporting**: Weekly vulnerability report to Project Security Lead showing open CVEs by severity
- [ ] **CVE exception process**: Documented process for accepting risk on un-remediatable vulnerabilities (requires CISO or designated security authority approval)

**Security Testing Documentation**:
- [ ] Penetration test report with executive summary, findings, remediation recommendations
- [ ] Vulnerability scan reports (weekly) showing open CVEs and remediation status
- [ ] Security testing remediation tracker (CRITICAL/HIGH findings → remediation actions → validation)

**Acceptance Criteria**:
- [ ] Given penetration testing requirement, when Month 2 complete, then penetration test executed with full report delivered
- [ ] Given penetration test findings, when CRITICAL findings identified, then 100% CRITICAL findings remediated and re-tested before Beta
- [ ] Given vulnerability scanning, when enabled, then weekly scans operational with vulnerability reports delivered to Project Security Lead
- [ ] Given CVE remediation, when CRITICAL CVE identified, then remediation completed within 7 days or CISO risk acceptance obtained

**Priority**: CRITICAL (deployment blocker for Beta)

**Dependencies**: NFR-SEC-004 (Project Security Lead appointed), NFR-SEC-005 (Security architecture documented)

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

**SbD Compliance**: JSP 440 Leaflet 5C Principle 5 (Continuously Manage Risk), NIST CSF Detect function

---

#### NFR-SEC-007: Supply Chain Security and Software Bill of Materials (SBOM)

**Requirement**: Comprehensive supply chain security program must be established including Software Bill of Materials (SBOM), supplier security attestations per ISN 2023/10, and third-party risk assessments.

**Source**: MOD Secure by Design Assessment (mod-secure-by-design.md) - Principle 6 (Secure Supply Chain) 15% compliance, Critical Finding

**Software Bill of Materials (SBOM)**:
- [ ] **SBOM created by Month 2** for ALL InTune-deployed applications using SPDX or CycloneDX format
- [ ] **SBOM contents**: Application name/version, vendor, open source components, dependencies, known CVEs, license information
- [ ] **SBOM maintenance**: SBOM updated whenever applications added/updated in InTune catalog
- [ ] **SBOM vulnerability correlation**: Automated scanning of SBOM against NVD (National Vulnerability Database) for new CVEs
- [ ] **SBOM storage**: SBOM repository maintained in version control (Git) with change tracking

**Supplier Security Attestations (ISN 2023/10 - Continuous Attestation)**:

**CRITICAL CHANGE (August 2023)**: ISN 2023/10 mandates that **suppliers must attest that systems are secure**. This is a fundamental shift from MOD-led accreditation to supplier-owned continuous assurance. Attestation must be **continuous** (not one-time) - suppliers re-attest as systems evolve.

**ISN 2023/10 Requirements**:
1. Suppliers must attest that delivered systems meet MOD Secure by Design principles
2. Supplier attestation replaces legacy MOD-led accreditation for supplier-delivered systems
3. Attestation must be **continuous** (not one-time) - suppliers re-attest as systems evolve
4. Attestation must cover: security architecture, threat model, security testing, vulnerability management
5. Suppliers must demonstrate ongoing security posture maintenance

- [ ] **Microsoft security attestation** obtained by Month 2 (not Month 1 due to continuous attestation requirement) confirming:
  - InTune, Azure AD, Defender for Endpoint, OneDrive, Windows 11 OS meet MOD Secure by Design principles
  - Microsoft Azure UK Government cloud assurance status (MOD-assured cloud or compensating controls)
  - Microsoft supplier security practices meet MOD requirements (ISN 2023/10)
  - **Continuous attestation commitment**: Microsoft re-attests quarterly as services evolve
  - Supplier-owned continuous assurance process documented (not MOD-led accreditation)
- [ ] **Hardware vendor security attestations** obtained by Month 2 from Dell/HP/Lenovo confirming:
  - Firmware security (UEFI Secure Boot signature validation, no backdoors)
  - TPM 2.0 provenance (genuine TPM chips, not counterfeit)
  - Supply chain security (components sourced from trusted suppliers, country-of-origin verification)
  - Hardware decommissioning support (CESG-approved data destruction guidance)
  - **Continuous attestation commitment**: Hardware vendors re-attest annually for firmware/BIOS updates
- [ ] **Third-party ISV security attestations** obtained by Month 3 for top 100 business applications deployed via InTune:
  - Application meets Secure by Design principles
  - Security testing completed (pen testing, vulnerability scanning)
  - Incident response capability documented
  - **Continuous attestation**: ISVs re-attest with each major application version update
- [ ] **Continuous attestation tracking**: Supplier attestation register maintained showing:
  - Supplier name, product/service, attestation date, next re-attestation due date
  - Attestation status (current, expiring soon, expired)
  - Escalation process for expired attestations (block deployment until re-attestation obtained)

**Third-Party Risk Assessments**:
- [ ] **Microsoft third-party risk assessment** completed by Month 1:
  - FedRAMP High certification status reviewed (US Government equivalent of MOD assurance)
  - ISO 27001, ISO 27017, ISO 27018 certifications verified
  - Microsoft Trustworthy Computing security documentation reviewed
  - Microsoft cloud data residency confirmed (UK South region for OFFICIAL-SENSITIVE)
- [ ] **Application vendor security questionnaires** completed for top 100 business applications:
  - Vendor security practices (SDLC, pen testing, vulnerability management)
  - Data handling and privacy compliance (GDPR, DPA 2018)
  - Incident response capabilities
  - Vendor security certifications (ISO 27001, SOC 2, Cyber Essentials Plus)

**Supply Chain Attack Mitigations**:
- [ ] **Supply chain attack threat model** documented (SolarWinds, Kaseya, Log4Shell scenarios)
- [ ] **Supply chain monitoring**: Automated alerts for unexpected network connections from InTune-deployed apps
- [ ] **Code signing verification**: All InTune-deployed applications verified with valid code signatures
- [ ] **Open Source Software (OSS) vetting**: OSS components scanned for known vulnerabilities before deployment

**Acceptance Criteria**:
- [ ] Given SBOM requirement, when Month 2 complete, then SBOM created for 100% of InTune applications in SPDX format
- [ ] Given supplier attestations, when Month 1 complete, then Microsoft security attestation obtained confirming SbD compliance
- [ ] Given third-party risk assessments, when Month 3 complete, then security questionnaires completed for 100% of top 100 business applications
- [ ] Given supply chain monitoring, when operational, then automated alerts configured for unexpected network connections from applications

**Priority**: HIGH

**Dependencies**: NFR-SEC-004 (Project Security Lead appointed to manage supplier security documentation)

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

**Security Compliance**: Supply chain security best practices (NIST SP 800-161, NCSC Supply Chain Security guidance)

---

#### NFR-SEC-008: Incident Response and MOD CERT Integration

**Requirement**: Comprehensive incident response capability must be established with documented incident response plan, playbooks, and integration with MOD CERT (Computer Emergency Response Team).

**Source**: MOD Secure by Design Assessment (mod-secure-by-design.md) - NIST CSF Respond function 45% compliance, Critical Gap

**Incident Response Plan**:
- [ ] **Incident response plan documented by Month 2** including:
  - Incident response team (roles, responsibilities, contact details)
  - Incident severity classification (P1-Critical, P2-High, P3-Medium, P4-Low)
  - Incident response phases: Detection → Containment → Eradication → Recovery → Lessons Learned
  - Escalation criteria (when to notify CISO, IAO, MOD CERT, Accreditation Service, senior leadership)
  - Communication protocols (internal notifications, user communications, regulatory reporting)
- [ ] **Incident response playbooks** created for common scenarios:
  - **Ransomware**: Device isolation, BitLocker key validation, OneDrive versioning recovery, user communication
  - **Data breach**: Scope determination, OFFICIAL-SENSITIVE data exposure assessment, ICO notification (72 hours), user notification
  - **Insider threat**: User access revocation, device wipe, forensic evidence preservation, HR/legal notification
  - **Supply chain compromise**: Affected application identification via SBOM, incident correlation across devices, vendor notification
  - **Phishing campaign**: User credential reset, MFA re-enrollment, security awareness training
- [ ] **Incident response testing**: Tabletop exercise completed by Month 3 simulating ransomware incident

**MOD CERT Integration**:
- [ ] **MOD CERT contact details** documented (email, phone, secure reporting portal)
- [ ] **MOD CERT reporting criteria** defined:
  - P1/P2 security incidents involving OFFICIAL-SENSITIVE data → Report within 1 hour
  - Data breach affecting >100 users → Report within 1 hour
  - Nation-state APT indicators detected → Report immediately
  - Supply chain compromise (e.g., InTune application backdoor) → Report immediately
- [ ] **MOD CERT reporting process** documented:
  - Initial notification (within SLA)
  - Incident details (who, what, when, where, scope, impact)
  - Containment actions taken
  - Ongoing updates (every 4 hours for P1 incidents)
  - Final incident report (within 5 business days)

**Security Operations Centre (SOC) Integration**:
- [ ] **SOC integration completed by Month 3**:
  - InTune alerts forwarded to SOC (device compliance violations, policy failures)
  - Defender for Endpoint alerts forwarded to SOC (malware detections, suspicious behavior)
  - Azure AD Conditional Access alerts forwarded to SOC (authentication failures, impossible travel)
  - ServiceNow security incidents integrated with SOC ticketing
- [ ] **24/7 security monitoring**: SOC monitors alerts with defined SLAs:
  - P1 (CRITICAL): 15-minute response time
  - P2 (HIGH): 1-hour response time
  - P3 (MEDIUM): 4-hour response time
  - P4 (LOW): Next business day

**Incident Response Metrics**:
- [ ] Mean Time to Detect (MTTD): Target <1 hour for P1 incidents
- [ ] Mean Time to Contain (MTTC): Target <4 hours for P1 incidents
- [ ] Mean Time to Recover (MTTR): Target <24 hours for P1 incidents
- [ ] Incident response plan testing: Tabletop exercise every 6 months, full simulation annually

**Acceptance Criteria**:
- [ ] Given incident response requirement, when Month 2 complete, then incident response plan documented with 5 playbooks created
- [ ] Given MOD CERT integration, when Month 1 complete, then MOD CERT contact details documented and reporting criteria defined
- [ ] Given SOC integration, when Month 3 complete, then InTune and Defender alerts forwarded to SOC with 24/7 monitoring operational
- [ ] Given incident response testing, when tabletop exercise complete, then all team members know their roles and response times meet targets

**Priority**: CRITICAL

**Dependencies**: NFR-SEC-004 (Project Security Lead responsible for incident response plan), NFR-SEC-003 (Defender for Endpoint for detection)

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model), Principle 15 (Incident Response and Rollback)

**Security Compliance**: NIST CSF Respond function, ISO 27001 A.16 (Incident Management)

---

#### NFR-SEC-009: Privileged Access Management (PAM) and Insider Threat Controls

**Requirement**: Privileged Access Management (PAM) must be implemented for InTune administrators with just-in-time access, MFA, and insider threat monitoring via Azure AD Identity Protection.

**Source**: MOD Secure by Design Assessment (mod-secure-by-design.md) - Defence in Depth gaps, Insider threat risk identified

**Privileged Access Management (PAM)**:
- [ ] **InTune administrator roles reviewed** and least privilege enforced:
  - **Global Administrator**: Limit to 2-3 emergency break-glass accounts (stored in secure vault)
  - **Intune Administrator**: Device management, policy deployment (10-15 users)
  - **Helpdesk Administrator**: Read-only device info, remote help (20-30 users)
  - **Security Administrator**: Conditional Access, Defender for Endpoint (5-10 users)
  - **Custom roles**: Principle of least privilege (application deployment only, compliance only, etc.)
- [ ] **Just-In-Time (JIT) access**: Privileged roles elevated only when needed via Azure AD Privileged Identity Management (PIM):
  - Request approval required for Global Administrator elevation
  - Time-limited elevation (4 hours maximum)
  - MFA required for privilege activation
  - Audit log of all privilege escalations
- [ ] **Privileged workstations**: InTune administrators use dedicated Privileged Access Workstations (PAWs) or Azure AD Conditional Access requires compliant devices for admin roles
- [ ] **Admin account separation**: Administrators use separate accounts for admin tasks (admin-john.doe@) vs regular work (john.doe@)

**Insider Threat Monitoring**:
- [ ] **Azure AD Identity Protection** enabled to detect risky user behavior:
  - Impossible travel (user in London, then New York 1 hour later)
  - Atypical travel (user normally in UK, suddenly signs in from Russia)
  - Anonymous IP addresses (Tor, VPN, proxy usage)
  - Leaked credentials (user password found in breach database)
  - Unfamiliar sign-in properties (new device, new location, new browser)
- [ ] **Defender for Endpoint behavioral analytics** detects:
  - Mass file deletion (potential ransomware or data destruction)
  - Unusual data exfiltration (large OneDrive uploads, USB transfers)
  - Lateral movement (accessing devices/data outside normal scope)
  - Privilege escalation attempts (local admin exploitation)
- [ ] **User and Entity Behavior Analytics (UEBA)**: Azure Sentinel or Microsoft 365 Defender correlates user behavior across InTune, Azure AD, OneDrive, Defender to detect insider threats

**Insider Threat Response**:
- [ ] **Automated response** for high-risk users:
  - User account disabled automatically if Identity Protection risk = HIGH
  - Device isolated from network if Defender detects mass file deletion
  - Alert to SOC and CISO for manual investigation
- [ ] **Forensic evidence preservation**: Defender for Endpoint Live Response captures memory dump, running processes, network connections for investigation

**Acceptance Criteria**:
- [ ] Given PAM requirement, when Month 1 complete, then InTune admin roles reviewed with least privilege enforced and PIM configured for JIT access
- [ ] Given insider threat monitoring, when Month 2 complete, then Azure AD Identity Protection and Defender behavioral analytics enabled with alerts forwarded to SOC
- [ ] Given high-risk user detection, when Identity Protection detects impossible travel, then user account disabled automatically and SOC alerted for investigation
- [ ] Given admin access audit, when monthly audit conducted, then 100% of privilege escalations logged with business justification

**Priority**: HIGH (defence-in-depth control)

**Dependencies**: NFR-SEC-003 (Defender for Endpoint), NFR-SEC-008 (SOC integration for alerts)

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

**SbD Compliance**: JSP 440 Leaflet 5C Principle 3 (Defence in Depth), NCSC Secure Design Principle 4 (Least Privilege)

---

#### NFR-SEC-010: Data Loss Prevention (DLP) for OFFICIAL-SENSITIVE Data

**Requirement**: Data Loss Prevention (DLP) policies must be deployed to prevent unauthorized exfiltration of OFFICIAL-SENSITIVE data from OneDrive, email, and endpoints.

**Source**: MOD Secure by Design Assessment (mod-secure-by-design.md) - Defence in Depth gap, Data Security control

**DLP Policy Scope**:
- [ ] **OneDrive DLP**: Prevent sharing of OFFICIAL-SENSITIVE documents externally
  - Detect sensitive information types: UK National Insurance numbers, personnel records, security clearance data
  - Block external sharing (share with anyone links)
  - Require authentication for internal sharing
  - Audit all sharing activities
- [ ] **Email DLP (Exchange Online)**: Prevent sending OFFICIAL-SENSITIVE data to external email addresses
  - Detect OFFICIAL-SENSITIVE keywords and patterns in email body/attachments
  - Block or encrypt emails containing OFFICIAL-SENSITIVE data to external recipients
  - Require manager approval for exceptions
  - Audit all DLP policy violations
- [ ] **Endpoint DLP (Defender for Endpoint)**: Prevent copying OFFICIAL-SENSITIVE data to USB drives, personal cloud storage, printers
  - Detect OFFICIAL-SENSITIVE file transfers to removable media
  - Block USB transfers (or require BitLocker To Go encryption)
  - Block uploads to personal cloud storage (Dropbox, Google Drive, personal OneDrive)
  - Audit all endpoint data transfers

**DLP Sensitive Information Types**:
- [ ] **UK-specific patterns**:
  - UK National Insurance numbers (AB123456C format)
  - UK passport numbers
  - UK driver's license numbers
  - Personnel security clearance levels (SC, DV keywords)
- [ ] **Custom patterns**:
  - "OFFICIAL-SENSITIVE" document classification markings
  - Project codenames or classified project names
  - Personnel records (employee ID + salary/performance data combinations)

**DLP Policy Enforcement**:
- [ ] **Policy tips**: Users warned before violating DLP policy (e.g., "You're sharing a document marked OFFICIAL-SENSITIVE externally")
- [ ] **User education**: Users required to provide business justification for override requests
- [ ] **Manager approval workflow**: Sensitive data sharing requires manager approval for legitimate business needs
- [ ] **False positive feedback**: Users can report false positives to improve DLP accuracy

**DLP Monitoring and Reporting**:
- [ ] Weekly DLP report to CISO: Number of policy violations, top violators, data types at risk
- [ ] Monthly DLP policy review: Tune policies based on false positives, add new sensitive information types
- [ ] Integration with SOC: DLP alerts forwarded to SOC for investigation (potential data breach or insider threat)

**Acceptance Criteria**:
- [ ] Given DLP requirement, when Month 2 complete, then DLP policies deployed for OneDrive, Email, and Endpoints covering OFFICIAL-SENSITIVE data
- [ ] Given OneDrive DLP, when user attempts external sharing of OFFICIAL-SENSITIVE document, then sharing blocked with policy tip displayed
- [ ] Given Email DLP, when user sends email with UK National Insurance number to external recipient, then email blocked or encrypted
- [ ] Given Endpoint DLP, when user copies OFFICIAL-SENSITIVE file to USB drive, then transfer blocked and alert sent to SOC
- [ ] Given DLP monitoring, when policy violations occur, then weekly DLP report generated showing violations by user/data type

**Priority**: HIGH (data protection control for OFFICIAL-SENSITIVE data)

**Dependencies**: NFR-SEC-003 (Defender for Endpoint for endpoint DLP), NFR-SEC-008 (SOC for DLP alert monitoring)

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model), Principle 12 (Data Protection)

**SbD Compliance**: JSP 440 Leaflet 5C Principle 3 (Defence in Depth), GDPR/DPA 2018 data protection

---

### Compliance and Regulatory Requirements

#### NFR-C-001: Data Privacy Compliance (GDPR, CCPA)

**Applicable Regulations**: GDPR (EU), CCPA (California), UK GDPR

**Compliance Requirements**:
- [ ] Data subject rights: Users can request data export, deletion via privacy portal
- [ ] Consent management: Copilot+ PC Recall feature requires explicit user opt-in
- [ ] Privacy by design: OneDrive KFM stores data in user's OneDrive (user-controlled)
- [ ] Data breach notification: Security Operations notified within 1 hour, regulators within 72 hours
- [ ] Data protection impact assessment (DPIA): Completed for Copilot+ PC AI features (Recall, Windows Studio Effects)

**Data Residency**:
- EU users: Data stored in EU datacenters (OneDrive, Azure AD, InTune)
- US users: Data stored in US datacenters

**Data Retention**:
- Device management data: 90 days (InTune reporting)
- Audit logs: 7 years (exported to Log Analytics)
- User data: User-controlled (OneDrive retention policies)

**Priority**: CRITICAL

**Aligns with Architecture Principles**: Principle 17 (Audit Logging and Compliance Reporting)

---

#### NFR-C-002: Audit Logging

**Requirement**: Comprehensive audit trail for all privileged operations, device management actions, and compliance events.

**Audit Log Contents** (for sensitive operations):
- **Who**: User principal name (UPN) or service principal
- **What**: Action performed (device wipe, policy change, enrollment, BitLocker key retrieval)
- **When**: Timestamp (UTC, millisecond precision)
- **Where**: InTune service, device ID
- **Why**: Request ID, ticket number (if applicable)
- **Result**: Success/failure with error details

**Log Retention**:
- Azure AD audit logs: 30 days (default), 1 year (with Azure AD Premium P2 + Log Analytics export)
- InTune audit logs: 30 days (default), 7 years (exported to Log Analytics for compliance)

**Log Integrity**: Audit logs exported to immutable storage (Azure Log Analytics with retention lock)

**Priority**: CRITICAL

**Aligns with Architecture Principles**: Principle 17 (Audit Logging and Compliance Reporting)

---

### Availability and Disaster Recovery Requirements

#### NFR-A-001: InTune Service Availability

**Requirement**: Microsoft InTune cloud service must maintain 99.9% uptime per Microsoft SLA. Organization must have documented contingency procedures for InTune service disruptions.

**Service Level Objectives**:
- **Target Availability**: 99.9% per Microsoft Azure SLA (43.2 minutes downtime per month maximum)
- **Recovery Time Objective (RTO)**: <15 minutes for InTune service restoration by Microsoft
- **Recovery Point Objective (RPO)**: N/A (cloud service, no data loss)

**Contingency Procedures**:
- **During InTune outage**: Devices continue to operate with last-applied policies (no immediate impact), Users can access corporate resources via cached credentials (90-day refresh token), No new device enrollments or policy changes until service restored, Helpdesk monitors Microsoft Service Health Dashboard for status updates
- **Extended outage (>4 hours)**: Executive communication issued via email/Teams, Delay non-critical migrations until service restored, Critical device issues escalated to Microsoft Premier Support
- **Fallback capability**: Configuration Manager remains available during 18-month co-management period as fallback (Month 0-18 only), After ConfigMgr decommissioning (Month 18+), no on-premises fallback available (cloud-only dependency accepted)

**Monitoring**:
- Subscribe to Microsoft Service Health Dashboard notifications
- Monitor InTune service status via Azure portal
- Alert IT Operations if InTune API calls fail for >15 minutes

**Priority**: HIGH

**Aligns with Architecture Principles**: Principle 1 (Cloud-First Endpoint Management), Principle 10 (Monitoring and Reporting)

---

#### NFR-A-002: Business Continuity During Migration

**Requirement**: Business operations must continue uninterrupted during Windows 11 migration with <2 hours downtime per device and no data loss.

**Continuity Measures**:
- **Data Protection**: OneDrive KFM ensures 100% user data preserved during migration (FR-003)
- **Application Availability**: Applications reinstall automatically via InTune during migration (<30 minutes via Autopilot)
- **User Downtime**: <2 hours per device (1 hour for upgrade, 30 minutes for app installation, 30 minutes for user validation)
- **Rollback Capability**: 10-day rollback window available if critical issues detected (FR-017)
- **Wave Pause Criteria**: Pause migration if >10% failure rate or P1 incident affects business operations (BR-008)

**Impact Mitigation**:
- Schedule migrations during off-hours or low-usage periods where possible
- Prioritize non-critical users first (task workers, field workers) before mission-critical users (executives, revenue-generating roles)
- Maintain support staff availability during migration windows (extended hours)

**Priority**: CRITICAL

**Aligns with Architecture Principles**: Principle 4 (User-Centric Migration Experience), Principle 6 (Phased Rollout Strategy)

---

### Scalability Requirements

#### NFR-S-001: Concurrent Device Provisioning Capacity

**Requirement**: InTune infrastructure must support concurrent provisioning of 500 devices simultaneously during peak migration waves without performance degradation.

**Scalability Targets**:
- **Peak Load**: 500 devices provisioning simultaneously (Wave deployment scenario)
- **Average Load**: 50 devices per day (new hires, replacements)
- **Burst Capacity**: 1,000 devices upgrading simultaneously during production wave (Windows 11 feature update deployment)
- **Network Bandwidth**: 100 Mbps per device minimum for Autopilot app downloads, aggregate bandwidth: 50 Gbps (500 devices × 100 Mbps)

**Performance Validation**:
- Test concurrent provisioning with 500 pilot devices before production waves
- Monitor Autopilot provisioning time via Endpoint Analytics (target <30 minutes per NFR-P-001)
- Monitor InTune API throttling limits (Microsoft imposes rate limits per tenant)

**Scalability Constraints**:
- **Microsoft InTune**: Cloud service scales automatically, no tenant-side capacity planning required
- **Network Bandwidth**: Primary constraint - ensure corporate internet bandwidth supports 50 Gbps aggregate during peak waves
- **Application Hosting**: InTune-hosted apps have size limits (8 GB per Win32 app), large apps require Azure Blob Storage or CDN

**Priority**: HIGH

**Aligns with Architecture Principles**: Principle 7 (Automated Deployment with Windows Autopilot)

---

#### NFR-S-002: Long-Term Device Growth

**Requirement**: InTune tenant must scale to support [NUMBER] devices initially and accommodate 10% annual growth for 5 years.

**Growth Projections**:
- **Year 0**: [NUMBER] devices (current Windows 10 estate)
- **Year 1**: [NUMBER] × 1.10 devices (+10% growth from new hires, acquisitions)
- **Year 5**: [NUMBER] × 1.61 devices (+61% cumulative growth over 5 years)

**Scalability Considerations**:
- **InTune Licensing**: Ensure sufficient Microsoft 365 E3/E5 or InTune standalone licenses procured with annual true-up
- **Azure AD Objects**: Each device creates Azure AD device object (no practical limit for InTune tenants)
- **Policy Assignments**: Use dynamic Azure AD groups for policy assignments to automatically include new devices
- **Reporting**: Power BI dashboards must scale to accommodate growing device counts without performance degradation

**Priority**: MEDIUM

**Aligns with Architecture Principles**: Principle 16 (Licensing and Cost Management)

---

### Maintainability and Supportability Requirements

#### NFR-M-001: Configuration Documentation

**Requirement**: All InTune policies, Autopilot profiles, and configuration settings must be documented and version-controlled to enable audit, troubleshooting, and disaster recovery.

**Documentation Requirements**:
- **InTune Policies**: Export all policies as JSON monthly and commit to Git repository with change log
- **Autopilot Profiles**: Document deployment profiles (User-Driven, Self-Deploying, White Glove) with assigned device groups
- **Conditional Access Policies**: Document all CA policies with business justification and affected user groups
- **Application Packages**: Maintain application catalog with package versions, detection rules, install commands
- **Group Membership**: Document Azure AD group membership criteria (static vs dynamic) and group owners

**Version Control**:
- **Git Repository**: Store InTune policy exports in Git repository (Azure DevOps, GitHub Enterprise, or GitLab)
- **Change Management**: Require pull request + peer review for production policy changes
- **Rollback Capability**: Ability to restore previous policy version from Git history if change causes issues

**Disaster Recovery**:
- **InTune Tenant Backup**: No native InTune tenant backup; rely on Git repository for policy restore
- **Tenant Rebuild Scenario**: If InTune tenant corrupted, restore policies from Git repository (estimated 40 hours to fully restore)

**Priority**: MEDIUM

**Aligns with Architecture Principles**: Principle 8 (Configuration Management via InTune Policies)

---

#### NFR-M-002: Knowledge Transfer and Documentation

**Requirement**: Comprehensive knowledge transfer documentation must be created to enable IT staff to independently manage InTune environment post-migration without vendor dependency.

**Documentation Deliverables**:
- **Architecture Documentation**: HLD and DLD (vendor-provided per SOW)
- **Operational Runbooks**: Step-by-step procedures for: New device enrollment, Policy changes and testing, Application packaging and deployment, Troubleshooting common issues, Disaster recovery procedures
- **Training Materials**: Helpdesk training materials (FR-015), User training materials (FR-014), IT administrator training (InTune management, Azure AD, Conditional Access)
- **Knowledge Base Articles**: SharePoint or ServiceNow knowledge base with 50+ articles for common support scenarios

**Knowledge Transfer Process**:
- **Phase 1 (Pilot)**: Shadow vendor during pilot phase, document lessons learned
- **Phase 2 (Production)**: IT staff lead production waves with vendor oversight
- **Phase 3 (Handoff)**: Vendor provides final knowledge transfer session, IT staff independently manage environment

**Success Criteria**:
- IT staff can independently perform 90% of operational tasks without vendor assistance
- Helpdesk can resolve 70% of tier-1 issues without escalation
- Documentation complete with zero critical gaps

**Priority**: HIGH

**Aligns with Architecture Principles**: Principle 13 (Helpdesk and User Support)

---

#### NFR-M-003: Ongoing Maintenance and Updates

**Requirement**: InTune environment must be maintained with quarterly policy reviews, monthly security baseline updates, and continuous optimization.

**Maintenance Cadence**:
- **Weekly**: Monitor device compliance reports, review InTune service health
- **Monthly**: Apply Microsoft Security Baseline updates, review and patch application packages, analyze Endpoint Analytics recommendations
- **Quarterly**: Review and update InTune policies based on business changes, audit Conditional Access policies, review Azure AD group memberships, license true-up and optimization
- **Annually**: Architecture review and principle updates, disaster recovery plan testing, vendor roadmap alignment (Microsoft InTune/Windows 11 feature updates)

**Maintenance Effort**:
- **Steady State**: 0.5-1 FTE for InTune administration post-migration
- **Peak Periods**: 2-3 FTEs during Windows 11 feature update deployments (annual)

**Priority**: MEDIUM

**Aligns with Architecture Principles**: Principle 8 (Configuration Management via InTune Policies), Principle 9 (Update Management and Patching)

---

## Data Requirements

### Overview

This section defines data collection, storage, and processing requirements to support device migration tracking, compliance monitoring, and operational support. All data requirements align with the data model documented in `data-model.md` and comply with GDPR/UK GDPR principles.

**Data Governance**:
- **Data Owner**: IT Operations Director (per stakeholder RACI)
- **Data Steward**: Enterprise Architect
- **Technical Custodian**: InTune/Azure AD administrators
- **GDPR Basis**: Legitimate interest (Article 6(1)(f)) for IT asset management and support

---

### DR-001: Device Inventory Data Collection

**Description**: System SHALL collect and store comprehensive device inventory data including hardware specifications, operating system version, installed applications, and security compliance status for all 6,000 Windows endpoints.

**Stakeholder Goal**:
- G-1 (CISO/IT Ops): 95% migration by Sep 2025 (requires migration tracking)
- G-3 (CISO): 100% device compliance (requires compliance monitoring)

**Data Entities**:
- E-001: Device (device_id, hostname, device_type, os_version, enrollment_date, last_checkin)
- E-002: Hardware (hardware_id, device_id, cpu_model, ram_gb, storage_gb, tpm_version, secure_boot_enabled)
- E-003: Software (software_id, device_id, application_name, version, install_date)

**Data Volume**: ~6,000 devices × 3 entities = ~18,000 records baseline, growing with application inventory

**PII**: None (device identifiers only, no personal data)

**GDPR Legal Basis**: Legitimate interest (Article 6(1)(f)) - IT asset management

**Retention Period**: 3 years post-device decommission (audit trail for hardware lifecycle)

**Data Quality**:
- Accuracy: Inventory collected daily via InTune agent (24-hour freshness)
- Completeness: 100% of enrolled devices (enforcement via compliance policies)
- Consistency: Normalized hardware model names (standardized taxonomy)

**Priority**: MUST_HAVE (Critical)

**Acceptance Criteria**:
- Device inventory collected automatically via InTune MDM agent within 24 hours of enrollment
- Hardware attributes match data model E-002 specification (12 required fields)
- Compliance status updated within 24 hours of policy changes
- Inventory data queryable via PowerShell/Graph API for reporting
- Historical snapshots retained for 3 years (weekly snapshots)

**Measurement**: InTune device inventory dashboard shows 100% of enrolled devices with complete hardware data

**Maps to Architecture Principle**: Principle 10 (Monitoring, Reporting, and Compliance)

**Traceability**:
- Supports Benefit B-001 (infrastructure cost reduction via ConfigMgr elimination - requires InTune inventory)
- Supports Benefit B-003 (risk reduction via compliance monitoring)

---

### DR-002: Migration Tracking and State Management Data

**Description**: System SHALL track migration status, success/failure events, and rollback incidents for all device migrations to enable real-time progress monitoring and issue resolution.

**Stakeholder Goal**:
- G-1 (IT Ops): 95% migration by Sep 2025 (requires progress tracking)
- G-8 (IT Ops): <5% rollback rate (requires rollback event capture)

**Data Entities**:
- E-004: MigrationEvent (event_id, device_id, event_type, event_timestamp, user_initiated, outcome, error_code)
- E-005: MigrationStatus (device_id, current_state, migration_wave, scheduled_date, completed_date, rollback_flag)

**Data Volume**: ~6,000 devices × 5-10 events per device = ~30,000-60,000 migration events over 18 months

**PII**: None (device identifiers only)

**GDPR Legal Basis**: Legitimate interest (Article 6(1)(f)) - Project delivery tracking

**Retention Period**: 5 years (project audit trail, lessons learned for future migrations)

**Data Quality**:
- Timeliness: Events logged in real-time (<5 minutes latency)
- Accuracy: Event timestamps from device clock (NTP-synchronized)
- Completeness: 100% of migration events captured (no silent failures)

**Priority**: MUST_HAVE (Critical)

**Acceptance Criteria**:
- Migration events logged in real-time via InTune feature update policy reports
- Migration state machine implemented (Scheduled → In Progress → Complete/Failed → Rolled Back)
- Weekly migration dashboard generated automatically (PowerBI/Excel)
- Rollback events captured with failure root cause classification
- SRO receives weekly migration status report (devices migrated, success rate, blockers)
- Pause criteria enforced: >10% failure rate in wave triggers automatic pause

**Measurement**:
- Weekly Steering Committee dashboard shows migration progress vs 95% target
- Rollback rate <5% measured cumulatively

**Maps to Architecture Principle**: Principle 6 (Phased Rollout Strategy)

**Traceability**:
- Directly supports SOBC Critical Success Factor 1 (95% migration by Sep 2025)
- Supports SOBC Management Case governance (weekly tracking)

---

### DR-003: User Profile and Support Assignment Data (PII)

**Description**: System SHALL collect user profile data (name, email, department, manager, device assignment) to enable migration scheduling, user communications, and helpdesk support ticket routing.

**Stakeholder Goal**:
- G-4 (Helpdesk): <2% support ticket rate (requires user-device mapping for ticket routing)
- G-6 (Users): >80% user satisfaction (requires personalized communication scheduling)

**Data Entities**:
- E-006: User (user_id, employee_id, email, full_name, department, manager_email, hire_date)
- E-007: UserDeviceAssignment (assignment_id, user_id, device_id, assigned_date, primary_device_flag)

**Data Volume**: ~6,000 users + ~6,000 device assignments = ~12,000 records

**PII Categories**:
- **Direct PII**: Full name, email address, employee ID
- **Indirect PII**: Department, manager relationship (organizational structure)

**GDPR Legal Basis**:
- Article 6(1)(b): Processing necessary for employment contract (IT equipment provision)
- Article 6(1)(f): Legitimate interest (IT support, migration scheduling)

**Data Subject Rights**:
- Right of access: User can request their profile data via HR/IT
- Right to rectification: User can update via HR system (synced to Azure AD)
- Right to erasure: Automatic deletion 1 year after employment termination

**Retention Period**: Duration of employment + 1 year (offboarding grace period)

**Data Quality**:
- Accuracy: Synced hourly from Azure AD (authoritative source: HR system)
- Completeness: 100% of active employees (enforced via Azure AD sync)
- Consistency: Email addresses normalized to lowercase

**Privacy Measures**:
- PII encrypted at rest (BitLocker on InTune SQL database)
- PII encrypted in transit (TLS 1.3 for Azure AD sync)
- Access controls: RBAC (only IT Operations and Helpdesk can view user-device mapping)
- Audit logging: All PII access logged to Azure AD audit log (7-year retention)

**Priority**: MUST_HAVE (Critical)

**Acceptance Criteria**:
- User profile data synced automatically from Azure AD hourly
- PII encrypted at rest (BitLocker) and in transit (TLS 1.3) per NFR-S-003
- DPIA completed before collecting sensitive user data (scheduled Month 2)
- User consent obtained via employment IT acceptable use policy
- Helpdesk can search user by name/email to view assigned devices (<2 second response)
- Migration communications personalized with user name and scheduled date

**Measurement**:
- DPIA approval obtained (Month 2 milestone)
- Helpdesk user lookup success rate 100% (no missing user-device mappings)

**Maps to Architecture Principle**: Principle 12 (Data Protection and Backup)

**GDPR Compliance**:
- Article 5(1)(a): Lawfulness - employment contract basis
- Article 5(1)(b): Purpose limitation - only for migration and support
- Article 5(1)(c): Data minimization - only essential fields collected
- Article 5(1)(e): Storage limitation - deleted 1 year post-termination
- Article 5(1)(f): Integrity and confidentiality - encrypted, access-controlled

**Traceability**:
- Supports Benefit B-002 (productivity gains via helpdesk efficiency)
- Supports Outcome O-3 (high user productivity maintained)

---

### DR-004: Application Compatibility Test Results

**Description**: System SHALL store application compatibility test results for the top 100 business-critical applications to inform migration readiness and user communication.

**Stakeholder Goal**:
- G-1 (IT Ops): 95% migration success (requires app compatibility validation before user migration)
- G-6 (Users): >80% user satisfaction (requires working applications post-migration)

**Data Entities**:
- E-008: Application (app_id, app_name, vendor, version, business_criticality_score, user_count)
- E-009: CompatibilityTestResult (test_id, app_id, os_version, test_date, result_status, issues_found, remediation_plan)

**Data Volume**: ~100 applications × 3-5 test iterations = ~300-500 test result records

**PII**: None

**GDPR Legal Basis**: N/A (no personal data)

**Retention Period**: 3 years post-migration (lessons learned for Windows 12 migration)

**Data Quality**:
- Accuracy: Test results validated by UAT with business users
- Completeness: 100% of top 100 apps tested before Pilot phase (Month 6)
- Consistency: Result status taxonomy (Compatible / Update Required / Replace / Retire)

**Priority**: MUST_HAVE (Critical)

**Acceptance Criteria**:
- Application inventory identifies top 100 apps by user count and business impact score
- 100% of top 100 apps tested on Windows 11 (VDI or physical test devices) before Pilot
- Compatibility test results documented with standard taxonomy (4 result statuses)
- Issues linked to remediation plans (vendor update, repackage, alternative app)
- Application catalog queryable by IT and business users (self-service compatibility lookup)
- No user migrated if their required apps are marked "Update Required" or "Replace" without resolution

**Measurement**:
- 100/100 apps tested before Pilot phase (Month 6 gate criteria)
- <1% app compatibility issues reported in production (Month 7-18)

**Maps to Architecture Principle**: Principle 5 (Application Compatibility and Testing)

**Traceability**:
- Directly supports SOBC Critical Success Factor 2 (user productivity maintained)
- Supports Outcome O-3 (no application disruption)

---

### DR-005: Helpdesk Support Ticket Data

**Description**: System SHALL store support ticket data for migration-related issues to track helpdesk workload, identify common problems, and measure support ticket rate KPI.

**Stakeholder Goal**:
- G-4 (Helpdesk): <2% support ticket rate (requires ticket volume tracking)
- G-6 (Users): >80% user satisfaction (requires issue resolution tracking)

**Data Entities**:
- E-010: SupportTicket (ticket_id, device_id, user_id, issue_category, severity, created_date, closed_date, resolution_time_hours)
- E-011: TicketResolution (resolution_id, ticket_id, resolution_description, knowledge_base_article_id, resolved_by)

**Data Volume**: ~6,000 devices × 2% ticket rate × 18 months = ~2,160 tickets (assuming target rate achieved)

**PII**: Indirect (user_id links to user name/email in E-006)

**GDPR Legal Basis**: Legitimate interest (Article 6(1)(f)) - IT support

**Retention Period**: 2 years (trending analysis, knowledge base improvement)

**Data Quality**:
- Timeliness: Tickets created in real-time via ServiceNow integration
- Accuracy: Issue categorization via controlled taxonomy (10 categories)
- Completeness: 100% of helpdesk tickets tagged with "Windows 11 Migration" category

**Priority**: MUST_HAVE (Critical)

**Acceptance Criteria**:
- ServiceNow integration captures all Windows 11 migration tickets automatically
- Ticket data includes device_id and user_id for correlation with migration events
- Weekly support ticket rate calculated: (tickets created / devices migrated that week) × 100%
- Pause criteria enforced: >10% weekly ticket rate triggers wave pause
- Common issues identified weekly (top 5 ticket categories) for proactive mitigation
- Knowledge base articles linked to ticket resolutions for self-service

**Measurement**:
- Weekly support ticket rate <2% measured via ServiceNow query
- First contact resolution rate >70% (measure of helpdesk effectiveness)

**Maps to Architecture Principle**: Principle 13 (Helpdesk and User Support)

**Traceability**:
- Directly supports SOBC Critical Success Factor 2 (user productivity maintained)
- Supports Benefit B-002 (productivity gains via reduced helpdesk burden)

---

### DR-006: Compliance and Audit Logging Data

**Description**: System SHALL log all device management actions, policy changes, and compliance violations to provide audit trail for ISO 27001, cyber insurance, and regulatory compliance.

**Stakeholder Goal**:
- G-3 (CISO): 100% device compliance (requires compliance violation tracking)
- Outcome O-1: Zero compliance violations (requires audit trail for ISO 27001 recertification)

**Data Entities**:
- E-012: AuditLog (log_id, event_timestamp, event_type, actor_identity, device_id, action_description, result_status)
- E-013: ComplianceViolation (violation_id, device_id, policy_id, violation_date, violation_type, severity, remediation_status)

**Data Volume**: ~6,000 devices × 100 events/device/year × 3 years = ~1.8M audit log entries

**PII**: Indirect (actor_identity may be admin user email)

**GDPR Legal Basis**: Legal obligation (Article 6(1)(c)) - Audit requirements for ISO 27001

**Retention Period**: 7 years (ISO 27001 audit trail requirement, UK GDPR Article 5(1)(e) exemption for archiving in the public interest/scientific or historical research)

**Data Quality**:
- Integrity: Audit logs immutable and tamper-evident (append-only Log Analytics)
- Timeliness: Logs written in real-time (<5 minutes latency)
- Completeness: 100% of management actions logged (InTune audit log enabled)

**Privacy Measures**:
- Admin user emails pseudonymized after 1 year (replaced with role identifier)
- Audit logs encrypted at rest (Azure storage encryption)
- Access restricted to CISO and compliance team only (RBAC)

**Priority**: MUST_HAVE (Critical)

**Acceptance Criteria**:
- Azure AD audit logging enabled for all InTune device management actions
- Audit logs immutable and tamper-evident (append-only storage)
- Compliance violations logged within 1 hour of detection
- Logs exported to Azure Log Analytics for 7-year retention
- Monthly compliance report generated automatically (% devices compliant, top violations)
- ISO 27001 auditor can access audit logs on demand (read-only access)

**Measurement**:
- Audit log completeness: 100% of InTune actions logged (verified by sampling)
- Compliance violation response time: 100% violations remediated within 72 hours

**Maps to Architecture Principle**: Principle 17 (Audit Logging and Compliance Reporting)

**Traceability**:
- Directly supports Outcome O-1 (zero compliance violations, ISO 27001 maintained)
- Supports Benefit B-003 (risk reduction via compliance assurance)

---

### DR-007: Hardware and Software Inventory for Asset Management

**Description**: System SHALL maintain accurate hardware and software inventory for financial asset tracking, license management, and ConfigMgr decommissioning verification.

**Stakeholder Goal**:
- G-2 (CFO): £2M+ cost savings (requires ConfigMgr decommissioning verification)
- G-7 (IT Ops): ConfigMgr decommissioned Month 18 (requires inventory migration from ConfigMgr to InTune)

**Data Entities**:
- E-002: Hardware (extended with asset_tag, purchase_date, warranty_expiry, disposal_date)
- E-003: Software (extended with license_key, license_expiry, license_cost)

**Data Volume**: ~6,000 devices × 50 software titles/device = ~300,000 software inventory records

**PII**: None (software license keys are organizational, not personal)

**GDPR Legal Basis**: N/A (no personal data)

**Retention Period**: 7 years (financial audit trail for asset depreciation)

**Data Quality**:
- Accuracy: Software inventory collected daily via InTune agent
- Completeness: 100% of installed software detected (InTune Win32 app inventory)
- Consistency: Software names normalized (e.g., "Microsoft Office" vs "Office 365")

**Priority**: MUST_HAVE (Critical)

**Acceptance Criteria**:
- Hardware asset tags synced from finance system to InTune custom attributes
- Software inventory matches ConfigMgr inventory (validation before ConfigMgr decommission)
- InTune inventory dashboard shows 100% parity with ConfigMgr (pre-decommission gate)
- ConfigMgr decommissioning verified: Zero devices reporting to ConfigMgr (Month 18)
- Software license compliance tracked: 100% of paid software has valid license

**Measurement**:
- ConfigMgr decommissioned (Month 18): Zero devices in ConfigMgr console, 100% in InTune
- Asset inventory accuracy: 100% of hardware assets match finance system

**Maps to Architecture Principle**: Principle 1 (Cloud-First Endpoint Management - ConfigMgr elimination)

**Traceability**:
- Directly supports Benefit B-001 (£4.5M infrastructure cost reduction via ConfigMgr decommission)
- Supports SOBC Critical Success Factor 5 (cloud transformation demonstrated)

---

### DR-008: Copilot+ PC Hardware Validation Data

**Description**: System SHALL collect Copilot+ PC hardware specifications (NPU model, TOPS capability, RAM, processor) to validate compliance with Principle 3A and track 30% adoption target.

**Stakeholder Goal**:
- G-10 (CIO): 30% Copilot+ PC adoption Year 1 (requires Copilot+ PC identification and tracking)
- Benefit B-004: Strategic value from AI enablement (requires Copilot+ PC deployment monitoring)

**Data Entities**:
- E-002: Hardware (extended with npu_model, npu_tops, copilot_plus_flag, ai_features_enabled)

**Data Volume**: ~1,800 Copilot+ PCs (30% of 6,000 devices) × extended hardware attributes

**PII**: None

**GDPR Legal Basis**: N/A (no personal data)

**Retention Period**: 3 years (Copilot+ PC ROI tracking)

**Data Quality**:
- Accuracy: NPU detection via InTune hardware inventory script
- Completeness: 100% of Copilot+ PCs flagged in inventory
- Consistency: NPU TOPS values verified against vendor specifications

**Priority**: SHOULD_HAVE (High)

**Acceptance Criteria**:
- InTune custom inventory script detects NPU presence and TOPS capability
- Copilot+ PC flag set automatically for devices with NPU ≥40 TOPS
- Monthly Copilot+ PC dashboard tracks adoption vs 30% target (1,800/6,000)
- Pilot success validated: 100 Copilot+ PCs deployed (Month 6)
- ARM64 architecture detected for Snapdragon Copilot+ PCs (app compatibility tracking)

**Measurement**:
- Copilot+ PC adoption: 30% (1,800 devices) by Month 12
- Pilot success: 100 Copilot+ PCs, user satisfaction >75%

**Maps to Architecture Principle**: Principle 3A (Copilot+ PC Hardware and AI-Ready Devices)

**Traceability**:
- Supports Benefit B-004 (£0.9M strategic value from AI enablement)
- Supports SOBC Economic Case Option 2 (30% Copilot+ target in recommended option)

---

### Data Requirements Summary

| DR ID | Description | PII? | GDPR Basis | Retention | Priority | Entities | Stakeholder Goal |
|-------|-------------|------|------------|-----------|----------|----------|------------------|
| DR-001 | Device inventory | No | Legitimate interest | 3 years | MUST | E-001, E-002, E-003 | G-1, G-3 |
| DR-002 | Migration tracking | No | Legitimate interest | 5 years | MUST | E-004, E-005 | G-1, G-8 |
| DR-003 | User profiles (PII) | Yes | Employment contract | Employment + 1yr | MUST | E-006, E-007 | G-4, G-6 |
| DR-004 | App compatibility | No | N/A | 3 years | MUST | E-008, E-009 | G-1, G-6 |
| DR-005 | Support tickets | Indirect | Legitimate interest | 2 years | MUST | E-010, E-011 | G-4, G-6 |
| DR-006 | Audit logs | Indirect | Legal obligation | 7 years | MUST | E-012, E-013 | G-3, O-1 |
| DR-007 | Asset inventory | No | N/A | 7 years | MUST | E-002, E-003 (extended) | G-2, G-7 |
| DR-008 | Copilot+ PC tracking | No | N/A | 3 years | SHOULD | E-002 (extended) | G-10, B-004 |

**Total Data Requirements**: 8 (7 MUST_HAVE, 1 SHOULD_HAVE)

**GDPR Compliance Summary**:
- **PII Requirements**: 1 (DR-003: User profiles)
- **DPIA Required**: Yes (scheduled Month 2 per MOD SbD assessment)
- **Legal Basis**: Documented for all PII processing
- **Data Subject Rights**: Documented (access, rectification, erasure)
- **Retention Policies**: Defined for all data types (2-7 years)

**Data Model Coverage**: 100% (all 13 entities in data-model.md now justified by DR-001 to DR-008)

**Next Steps**:
1. Review and approve data requirements section (Steering Committee)
2. Complete DPIA for DR-003 (User profiles) - Month 2 milestone
3. Update traceability matrix to link DR-xxx → data model entities
4. Include DR-xxx in SOW/vendor evaluation for data architecture proposals

---

## Integration Requirements

### INT-001: Integration with Azure Active Directory

**Purpose**: Authenticate users, enforce Conditional Access, manage device identities.

**Integration Type**: Real-time API (Azure AD Graph API / Microsoft Graph API)

**Data Exchanged**:
- **From InTune to Azure AD**: Device enrollment status, compliance status, device identity
- **From Azure AD to InTune**: User identity, group membership, Conditional Access policies

**Integration Pattern**: OAuth 2.0 authentication, REST API calls

**Authentication**: Managed identity (service principal) for InTune-to-Azure AD communication

**Error Handling**: Retry with exponential backoff for transient failures, alert on persistent failures

**SLA**: 99.9% availability (per Microsoft Azure AD SLA)

**Owner**: Microsoft (Azure AD service)

**Priority**: CRITICAL

**Aligns with Architecture Principles**: Principle 11 (Azure AD Integration and Identity Management)

---

### INT-002: Integration with Microsoft Defender for Endpoint

**Purpose**: Onboard devices to Defender for Endpoint for threat protection and EDR.

**Integration Type**: Real-time API (Microsoft Graph Security API)

**Data Exchanged**:
- **From InTune to Defender**: Device onboarding, device health status
- **From Defender to InTune**: Security alerts, threat detections, device risk level

**Integration Pattern**: Automated onboarding via InTune policy, bi-directional telemetry

**Authentication**: Managed identity (service principal) for InTune-to-Defender communication

**Error Handling**: Retry onboarding for failed devices, alert Security Operations on persistent failures

**SLA**: 99.9% availability (per Microsoft Defender SLA)

**Owner**: Microsoft (Defender for Endpoint service)

**Priority**: CRITICAL

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

---

### INT-003: Integration with OneDrive for Business

**Purpose**: Sync user data (Desktop, Documents, Pictures) to OneDrive for data protection.

**Integration Type**: Real-time sync (OneDrive sync client)

**Data Exchanged**:
- **From Device to OneDrive**: User files (Desktop, Documents, Pictures folders)
- **From OneDrive to Device**: Synced files, version history, sharing permissions

**Integration Pattern**: OneDrive sync client installed on device, Known Folder Move policy deployed via InTune

**Authentication**: Azure AD authentication (user credentials)

**Error Handling**: Retry sync for transient failures, alert IT if sync stalled >24 hours

**SLA**: 99.9% availability (per Microsoft OneDrive SLA)

**Owner**: Microsoft (OneDrive for Business service)

**Priority**: CRITICAL

**Aligns with Architecture Principles**: Principle 12 (Data Protection and Backup)

---

## Success Criteria and KPIs

### Business Success Metrics

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| Migration completion rate | 0% (Windows 10) | 95% (Windows 11) | 24 months | InTune device inventory |
| Device compliance rate | 70% | 90% | 24 months | InTune compliance reporting |
| User satisfaction | 65% | 80% | Post-migration | User surveys (NPS) |
| Support ticket volume | 100 tickets/week | <120 tickets/week | During migration | ServiceNow reporting |
| Security incident reduction | Baseline TBD | 50% reduction | 12 months post-migration | Microsoft Defender alerts |
| Cost savings (OpEx) | $[X]/year (ConfigMgr) | Save $[Y]/year | 18 months (post-decommission) | Finance tracking |

---

### Technical Success Metrics

| Metric | Target | Measurement Method |
|--------|--------|-------------------|
| Autopilot provisioning time | <30 minutes | Endpoint Analytics |
| In-place upgrade success rate | >95% | InTune update compliance |
| Rollback rate | <5% | Migration event logs |
| OneDrive sync health | 100% "Healthy" before migration | InTune OneDrive reporting |
| BitLocker encryption rate | 100% | InTune compliance reporting |
| Defender for Endpoint onboarding | 100% | Microsoft Defender portal |
| Update installation (7-day SLA) | >95% compliant | InTune update compliance |

---

## Timeline and Milestones

### High-Level Milestones

| Milestone | Description | Target Date | Dependencies |
|-----------|-------------|-------------|--------------|
| Project Kickoff | Executive sponsorship, team formation, requirements approval | Q4 2024 | This document approval |
| Hardware Assessment Complete | All devices assessed for Windows 11 compatibility | Q1 2025 | InTune enrollment complete |
| Application Testing Complete | Top 100 apps tested, compatibility status documented | Q2 2025 | Test lab setup |
| Pilot Phase Complete (50-100 devices) | IT staff migrated, feedback collected, issues resolved | Q2 2025 | Hardware assessment, app testing |
| Early Adopter Phase Complete (10% users) | Early adopters migrated, success criteria validated | Q3 2025 | Pilot phase success |
| Production Waves 1-10 (50% users) | Half of organization migrated | Q4 2025 | Early adopter success |
| Production Waves 11-20 (95% users) | Migration substantially complete | Q1 2026 | No blocking issues |
| Configuration Manager Decommissioned | All workloads shifted to InTune, ConfigMgr turned off | Q2 2026 | 100% InTune management |
| Project Closure | Final metrics, lessons learned, retrospective | Q2 2026 | Migration complete |

---

## Budget

### Cost Estimate

| Category | Estimated Cost | Notes |
|----------|----------------|-------|
| **Hardware Refreshes** | $[X] | 30% of devices require replacement (~1,800 devices × $[unit cost]) |
| **Copilot+ PC Procurement** | $[Y] | 30% of refreshes as Copilot+ PCs (~540 devices × $[unit cost]) |
| **Microsoft 365 Licensing** | $0 (existing) | Existing E3/E5 licenses include InTune, Azure AD Premium P1, OneDrive |
| **Microsoft Defender for Endpoint** | $0 (existing) | Included in Microsoft 365 E5 or purchased separately |
| **Professional Services / Consulting** | $[Z] | External consulting for InTune configuration, app packaging, migration execution |
| **Training & Change Management** | $[W] | User training materials, helpdesk training, communication campaigns |
| **Testing Lab Infrastructure** | $[V] | Azure Virtual Desktop or physical test devices for app testing |
| **Project Management / PMO** | $[U] | Internal project management time allocation |
| **Contingency (10%)** | $[CONTINGENCY] | Risk buffer for unforeseen costs |
| **Total** | **$[TOTAL]** | |

---

## Requirement Conflicts & Resolutions

This section documents conflicting requirements arising from competing stakeholder drivers and shows how conflicts were resolved.

**Source**: Stakeholder Drivers Analysis (`stakeholder-drivers.md`) - Conflict Analysis & Resolution sections

### Summary of Key Conflicts

| Conflict | Competing Requirements | Stakeholders | Resolution Strategy | Winner |
|----------|----------------------|--------------|-------------------|--------|
| **Speed vs. Security Rigor** | BR-003 (12-month timeline) vs NFR-SEC-004 (2-month security prep) | CFO vs CISO | COMPROMISE: 18-month timeline with mandatory 2-month security gates upfront | CISO wins on security gates, CFO wins on faster deployment after gates |
| **Innovation vs. Stability** | BR-004 (Copilot+ PCs) vs NFR-P-003 (App compatibility) | CIO vs IT Ops | INNOVATE: x64 Copilot+ PCs (not ARM64) for 30% users, pilot validates ROI | CIO wins 30% adoption, IT Ops wins x64 risk mitigation |
| **Security vs. User Experience** | NFR-SEC-001 (MFA all users) vs FR-004 (Seamless UX) | CISO vs End Users | INNOVATE: Windows Hello passwordless (biometric + PIN) | Win-Win-Win: Security + UX + Helpdesk |
| **Governance vs. Agility** | BR-006 (Zero exceptions) vs FR-007 (Deployment flexibility) | Enterprise Architect vs IT Ops | COMPROMISE: Documented exception process with approval authority by risk level | Both win: Governance with pragmatic escape valve |

---

### Conflict 1: Speed vs. Security Rigor (Timeline Tension)

**Conflicting Requirements**:
- **BR-003**: CFO wants 12-month timeline for rapid cost savings
- **NFR-SEC-004**: CISO requires 2-month security preparation (Security Impact Assessment, CAB approval, threat model, Security Architecture Review) before Beta
- **FR-007**: IT Ops needs 24-month phased rollout for risk mitigation

**Resolution**: **COMPROMISE** - 18-month timeline with mandatory security gates
- **Month 0-2**: Security preparation (Security Impact Assessment, CAB approval, threat model, Security Architecture Review) - NO deployment
- **Month 3-18**: Aggressive phased deployment (500-1000 devices/week) after security gates passed

**Decision Authority**: CIO (Executive Sponsor)

**Rationale**: Organizational security governance and CAB approval are mandatory and cannot be rushed. However, deployment can be accelerated once security gates passed. Failed migration costs £[Y]M >> savings from speed. Note: Timeline reduced from 3 months to 2 months after clarification that CAAT registration is not required (this is change to existing accredited system, not new operational capability).

**Which Stakeholder "Won"**:
- ✅ **CISO wins**: 2-month security preparation non-negotiable
- ⚠️ **CFO partially wins**: 18 months vs IT Ops' 24-month preference
- ⚠️ **IT Ops partially loses**: Accepts 18 months with pause criteria (>10% failure rate triggers deployment freeze)

---

### Conflict 2: Innovation vs. Stability (Copilot+ PC Adoption)

**Conflicting Requirements**:
- **BR-004**: CIO wants 30% Copilot+ PC adoption for AI productivity and strategic modernization
- **NFR-P-003**: IT Ops requires 100% app compatibility testing
- **BR-003**: CFO resists £100-300/device premium pricing

**Resolution**: **INNOVATE + RISK REDUCTION** - 30% Copilot+ PCs, prioritize x64 (Intel/AMD) over ARM64 (Qualcomm)
- **Pilot (Month 1-3)**: 50-100 Copilot+ PCs (both x64 and ARM64) to validate app compatibility and productivity gains
- **Targeted Rollout**: Copilot+ for executives/knowledge workers (30%), Standard Windows 11 for task workers (70%)
- **Risk Mitigation**: x64 Copilot+ PCs (full app compatibility) prioritized over ARM64 (requires testing)

**Decision Authority**: CFO (Budget Owner) + CIO (Strategic Owner) - Joint decision

**Which Stakeholder "Won"**:
- ✅ **CIO wins**: 30% Copilot+ adoption achieves strategic goal
- ✅ **IT Ops wins**: x64 prioritization reduces ARM64 compatibility risk
- ⚠️ **CFO partially wins**: 30% vs 100% saves £[Y], but still premium cost vs standard devices

---

### Conflict 3: Security vs. User Experience (MFA and Access Controls)

**Conflicting Requirements**:
- **NFR-SEC-001**: CISO requires MFA for ALL sign-ins (Zero Trust mandate)
- **FR-004**: End Users want seamless experience, minimal authentication friction
- **NFR-P-001**: <2 hours downtime, zero productivity loss

**Resolution**: **INNOVATE** - Windows Hello for Business (passwordless authentication)
- **Primary**: PIN + biometric (face/fingerprint) on device with TPM 2.0
- **Fallback**: PIN-only on devices without biometric hardware
- **User Experience**: Single PIN entry at startup, then SSO to all Azure AD apps (seamless)
- **Security**: PIN protected by TPM 2.0, biometric local-only, satisfies Zero Trust

**Decision Authority**: CISO (Security Executive) - Accountable for MFA enforcement

**Which Stakeholder "Won"**:
- ✅ **CISO wins**: MFA enforced for 100%, Zero Trust achieved
- ✅ **End Users win**: Passwordless faster/simpler than legacy password + MFA
- ✅ **Helpdesk wins**: Fewer lockouts (no forgotten passwords), self-service PIN reset

**Outcome**: Win-Win-Win solution - security AND user experience both improve

---

### Conflict Resolution Principles

1. **Security is non-negotiable**: CAAT, continuous assurance, and JSP 440 Leaflet 5C compliance cannot be compromised
2. **Seek innovative solutions**: Windows Hello, x64 Copilot+ PCs solve conflicts rather than forcing trade-offs
3. **Phase when possible**: Pilot before scaling, validate ROI before full investment
4. **Document exceptions rigorously**: Exceptions allowed only with documented approval, time limits, and remediation plans
5. **Stakeholder transparency**: Explicitly communicate who "won" and who "lost" in conflicts, manage expectations

---

## Appendices

### Appendix A: Glossary

- **ARM64**: 64-bit ARM processor architecture used in Qualcomm Snapdragon Copilot+ PCs (requires app compatibility testing)
- **Autopilot**: Windows Autopilot, zero-touch device provisioning service for Windows 10/11
- **Azure AD Join**: Device joined to Azure Active Directory for cloud-native management (no on-premises AD dependency)
- **BitLocker**: Full disk encryption for Windows (AES-256)
- **Co-Management**: Hybrid management where device is managed by both Configuration Manager and InTune during transition
- **Copilot+ PC**: Windows 11 device with Neural Processing Unit (NPU) for AI acceleration (40+ TOPS)
- **InTune**: Microsoft Endpoint Manager / Microsoft InTune, cloud-native MDM/MAM service
- **Known Folder Move (KFM)**: OneDrive feature redirecting Desktop, Documents, Pictures to cloud sync
- **NPU**: Neural Processing Unit, dedicated AI acceleration hardware in Copilot+ PCs
- **TPM**: Trusted Platform Module, hardware security chip for encryption key storage (TPM 2.0 required for Windows 11)
- **Zero Trust**: Security model assuming breach, no implicit trust, continuous verification

### Appendix B: Reference Documents

**Project Documentation**:
- **Architecture Principles**: `.arckit/memory/architecture-principles.md` (18 principles governing this project)
- **Stakeholder Drivers & Conflict Analysis**: `projects/001-windows-11-migration-intune/stakeholder-drivers.md` (Stakeholder goals, competing drivers, conflict resolutions - SOURCE for Requirement Conflicts section)
- **Risk Register**: `projects/001-windows-11-migration-intune/risk-register.md` (HM Treasury Orange Book risk management)
- **Security Governance Policy**: (Organizational security governance documentation - existing CAB and security review processes)

**Security Standards and Best Practices**:
- **ISO 27001**: Information Security Management System standard
- **NCSC Secure Design Principles**: https://www.ncsc.gov.uk/collection/cyber-security-design-principles
- **NIST Cybersecurity Framework**: https://www.nist.gov/cyberframework (CSF v1.1: Identify, Protect, Detect, Respond, Recover)
- **NIST SP 800-53**: Security and Privacy Controls for Information Systems
- **Organizational Security Policies**: (Internal security policies, standards, and baselines)

**Microsoft Documentation**:
- **Microsoft Windows 11 Requirements**: https://learn.microsoft.com/windows/whats-new/windows-11-requirements
- **Microsoft InTune Documentation**: https://learn.microsoft.com/mem/intune/
- **Windows Autopilot Documentation**: https://learn.microsoft.com/autopilot/
- **Copilot+ PC Requirements**: https://www.microsoft.com/windows/copilot-plus-pcs
- **Microsoft Security Baselines**: https://learn.microsoft.com/windows/security/operating-system-security/device-management/windows-security-configuration-framework/windows-security-baselines
- **Microsoft Defender for Endpoint**: https://learn.microsoft.com/microsoft-365/security/defender-endpoint/
- **Azure AD Conditional Access**: https://learn.microsoft.com/entra/identity/conditional-access/

---

## Validation & Sign-off

### Stakeholder Review

| Stakeholder | Review Date | Comments | Status |
|-------------|-------------|----------|--------|
| [CIO Name] | [DATE] | | PENDING |
| [CISO Name] | [DATE] | | PENDING |
| [IT Ops Director] | [DATE] | | PENDING |
| [Enterprise Architect] | [DATE] | | PENDING |
| [CFO Name] | [DATE] | | PENDING |

### Document Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Executive Sponsor | [CIO Name] | | |
| Security Executive | [CISO Name] | | |
| Project Owner | [IT Ops Director] | | |
| Solution Architect | [Enterprise Architect] | | |
| Budget Owner | [CFO Name] | | |

---

**Generated by**: ArcKit `/arckit.requirements` command
**Generated on**: 2026-01-26
**ArcKit Version**: 0.11.2
**Project**: Windows 11 Deployment with Microsoft InTune (Project 001)
**Model**: Claude Opus 4.5
