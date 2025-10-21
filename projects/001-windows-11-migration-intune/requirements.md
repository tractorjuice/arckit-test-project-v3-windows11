# Project Requirements: Windows 10 to Windows 11 Migration using Microsoft InTune

**Document Type**: Business and Technical Requirements
**Project ID**: 001
**Version**: 4.0
**Date**: 2025-10-21
**Status**: DRAFT
**Owner**: IT Operations & Enterprise Architecture
**Stakeholders**: CIO, CISO, IT Operations, End Users, Finance, HR, Enterprise Architect
**Last Updated**: 2025-10-21 (Updated NFR-SEC-004/005/007 based on MOD SbD Assessment v2.0 - replaced RMADS with CAAT continuous assurance, added Three Lines of Defence governance, enhanced ISN 2023/10 supplier attestation requirements, added Requirement Conflicts & Resolutions section)

---

## Executive Summary

### Business Context

The organization currently operates a Windows 10 endpoint environment managed through a hybrid approach combining on-premises Configuration Manager (SCCM) and limited cloud services. With Microsoft ending extended support for Windows 10 on October 14, 2025, the organization faces significant security, compliance, and operational risks if it continues on the current platform.

This project will migrate all eligible Windows 10 devices to Windows 11 while simultaneously transforming endpoint management from on-premises Configuration Manager to cloud-native Microsoft InTune. This dual transformation enables modern management capabilities, supports remote workforce requirements, enhances security posture through Zero Trust architecture, and positions the organization for AI-powered productivity through Copilot+ PC adoption.

The migration encompasses approximately [NUMBER] Windows 10 devices across [NUMBER] locations, serving [NUMBER] users in various roles from executives and knowledge workers to task workers and field personnel. This initiative is mission-critical to maintain security patch support, regulatory compliance, and competitive advantage through modern endpoint capabilities.

### Objectives

- **Security & Compliance**: Achieve Zero Trust security posture with TPM 2.0, Secure Boot, BitLocker encryption, and Microsoft Defender for Endpoint on 100% of devices
- **Cloud Transformation**: Transition from on-premises Configuration Manager to cloud-native InTune management for 100% of Windows 11 devices within 18 months
- **User Productivity**: Minimize user disruption with <2 hours downtime per device, 100% data preservation, and seamless application continuity
- **Hardware Modernization**: Replace or upgrade non-compliant devices while introducing Copilot+ PCs for 30% of users by end of Year 1
- **Operational Excellence**: Establish automated deployment, monitoring, and compliance reporting through InTune and Endpoint Analytics

### Expected Outcomes

- **95% migration completion** within 24 months with 90% of devices compliant with security policies
- **Cost reduction of $[X]** annually through Configuration Manager decommissioning, reduced datacenter footprint, and operational efficiencies
- **Security posture improvement**: 100% device encryption, 100% MFA enforcement, real-time threat detection via Defender for Endpoint
- **User satisfaction >80%** measured through post-migration surveys with <2% support ticket volume per deployed user
- **Productivity gains of 10-15%** for Copilot+ PC users through AI-powered features (Windows Studio Effects, Live Captions, Copilot)
- **Zero P1/P2 security incidents** related to unsupported Windows 10 devices post-EOL date

### Project Scope

**In Scope**:
- Migration of all Windows 10 Pro/Enterprise devices to Windows 11 (desktops, laptops, tablets)
- Transition from Configuration Manager to Microsoft InTune for device management
- Windows Autopilot deployment for all new devices
- Azure AD join for all Windows 11 devices (hybrid join for legacy application support during transition)
- OneDrive Known Folder Move (KFM) for data protection
- Application compatibility testing and remediation for top 100 business applications
- InTune policy configuration (compliance, configuration profiles, update management)
- Microsoft Defender for Endpoint deployment
- Conditional Access policies for Zero Trust enforcement
- Hardware assessment and replacement planning for non-compliant devices
- Copilot+ PC pilot and procurement strategy
- Helpdesk training and user communication
- Configuration Manager decommissioning plan

**Out of Scope**:
- Server operating system upgrades (separate project)
- Virtual Desktop Infrastructure (VDI) migration (separate project)
- Azure Virtual Desktop (AVD) deployment (future phase)
- macOS or Linux endpoint management
- Mobile device management (MDM) for iOS/Android (existing InTune deployment)
- Application modernization or rewrite (except for compatibility fixes)
- Network infrastructure upgrades (unless blocking migration)
- Microsoft 365 license procurement (assumed existing E3/E5 licenses)

---

## Stakeholders

| Stakeholder | Role | Organization | Involvement Level |
|-------------|------|--------------|-------------------|
| [CIO Name] | Executive Sponsor | IT | Decision maker, budget approval |
| [CISO Name] | Security Executive | Security | Security architecture, compliance approval |
| [IT Ops Director] | Project Owner | IT Operations | Day-to-day project management, resource allocation |
| [Enterprise Architect] | Solution Architect | Enterprise Architecture | Architecture governance, principle enforcement |
| [Endpoint Manager] | Technical Lead | IT Operations | InTune configuration, deployment execution |
| [Security Architect] | Security Lead | Security | Zero Trust design, Defender for Endpoint |
| [Application Owner] | App Compatibility Lead | IT Operations | Application testing and remediation |
| [Helpdesk Manager] | Support Lead | IT Support | Helpdesk training, user support |
| [Change Manager] | Change Management Lead | PMO | Communication, training, change management |
| [Finance Director] | Budget Owner | Finance | Budget approval, cost tracking |
| [HR Representative] | User Advocate | Human Resources | User communication, feedback |
| [Department Champions] | User Representatives | Business Units | Pilot testing, user feedback |

---

## Business Requirements

### BR-001: Security Compliance and Risk Mitigation

**Description**: Eliminate security and compliance risks associated with unsupported Windows 10 devices by migrating to Windows 11 before October 14, 2025 (Windows 10 end of support).

**Rationale**: Unsupported operating systems pose critical security vulnerabilities, regulatory compliance violations, and potential breach exposure. The organization cannot maintain cyber insurance coverage or pass compliance audits with unsupported operating systems.

**Success Criteria**:
- 100% of production devices migrated from Windows 10 to Windows 11 by September 1, 2025 (6 weeks before EOL)
- Zero security incidents attributed to Windows 10 vulnerabilities post-migration
- Compliance audit findings related to unsupported OS reduced to zero
- Cyber insurance policy renewed without exceptions for endpoint security

**Priority**: MUST_HAVE (Critical)

**Stakeholder**: CISO, Compliance Officer

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

---

### BR-002: Cloud-Native Endpoint Management

**Description**: Transition from on-premises Configuration Manager to cloud-native Microsoft InTune to enable modern management, reduce datacenter dependencies, and support remote workforce.

**Rationale**: On-premises Configuration Manager requires VPN connectivity for remote users, complex infrastructure maintenance, and lacks modern cloud management capabilities. InTune enables zero-touch deployment, remote management, and aligns with cloud-first strategy.

**Success Criteria**:
- 100% of Windows 11 devices managed exclusively by InTune within 18 months
- Configuration Manager decommissioned and infrastructure costs eliminated
- Remote device management achievable without VPN connectivity
- IT staff reduced time spent on endpoint management by 40%

**Priority**: MUST_HAVE (Critical)

**Stakeholder**: IT Operations Director, CIO

**Aligns with Architecture Principles**: Principle 1 (Cloud-First Endpoint Management)

---

### BR-003: Cost Optimization and TCO Reduction

**Description**: Reduce total cost of ownership (TCO) for endpoint management through Configuration Manager decommissioning, operational automation, and extended device lifecycles.

**Rationale**: On-premises Configuration Manager infrastructure costs $[X]/year in servers, storage, maintenance, and labor. Cloud-native InTune management reduces these costs while improving service quality.

**Success Criteria**:
- Annual cost savings of $[X] through Configuration Manager decommissioning (infrastructure, licensing, labor)
- Deployment time reduced from [X] hours per device to <30 minutes per device via Autopilot
- Support ticket volume reduced by 30% through proactive monitoring and self-service tools
- Device lifecycle extended from 3-4 years to 4-5 years through better hardware utilization

**Priority**: SHOULD_HAVE (High)

**Stakeholder**: CFO, IT Operations Director

**Aligns with Architecture Principles**: Principle 16 (Licensing and Cost Management)

---

### BR-004: User Productivity and Experience

**Description**: Maintain or improve user productivity during and after migration with minimal disruption, seamless data preservation, and enhanced AI-powered features for eligible users.

**Rationale**: Migration disruption can cost $[X] per hour in lost productivity across [NUMBER] users. User satisfaction is critical for change adoption and business operations continuity.

**Success Criteria**:
- User downtime <2 hours per device during migration
- 100% user data preservation (zero data loss)
- User satisfaction >80% measured through post-migration surveys
- Support ticket volume <2% of deployed users per week
- Copilot+ PC users report 10-15% productivity improvement in AI feature usage surveys

**Priority**: MUST_HAVE (Critical)

**Stakeholder**: CIO, HR, Business Unit Leaders

**Aligns with Architecture Principles**: Principle 4 (User-Centric Migration Experience)

---

### BR-005: Hardware Modernization and Future-Readiness

**Description**: Replace or upgrade non-compliant devices while strategically introducing Copilot+ PC hardware to enable AI-powered productivity and future-proof investments.

**Rationale**: Windows 11 hardware requirements (TPM 2.0, UEFI, Secure Boot) necessitate hardware refreshes. Copilot+ PCs with NPU provide competitive advantage through AI productivity features and position organization for future Microsoft 365 Copilot capabilities.

**Success Criteria**:
- 100% of devices meet Windows 11 minimum hardware requirements post-migration
- 30% of new device procurements are Copilot+ PCs by end of Year 1
- 70% of new device procurements are Copilot+ PCs by end of Year 2
- Hardware refresh budget optimized through phased approach targeting worst-performing devices first
- Copilot+ PC pilot (50-100 devices) achieves >80% user satisfaction with AI features

**Priority**: SHOULD_HAVE (High)

**Stakeholder**: CFO, IT Operations Director, CIO

**Aligns with Architecture Principles**: Principle 3 (Hardware Readiness), Principle 3A (Copilot+ PC Hardware)

---

### BR-006: Regulatory Compliance and Audit Readiness

**Description**: Maintain continuous compliance with regulatory requirements (GDPR, HIPAA, SOX, PCI-DSS, etc.) throughout migration and establish audit-ready logging and reporting.

**Rationale**: The organization operates in regulated industries requiring demonstrated compliance with data protection, privacy, and security standards. Non-compliance results in fines, legal liability, and reputational damage.

**Success Criteria**:
- Zero compliance violations during migration period
- Monthly compliance reports generated automatically via InTune
- Audit logs retained for 7 years with tamper-evident storage
- Successful compliance audits (SOX, PCI-DSS, etc.) during and post-migration
- Data residency requirements maintained (GDPR EU data sovereignty)

**Priority**: MUST_HAVE (Critical)

**Stakeholder**: CISO, Compliance Officer, Legal

**Aligns with Architecture Principles**: Principle 17 (Audit Logging and Compliance Reporting)

---

### BR-007: Change Management and User Adoption

**Description**: Execute comprehensive change management program to prepare users, helpdesk, and IT staff for Windows 11 and minimize resistance to change.

**Rationale**: Technology changes fail due to people issues, not technical issues. Proactive communication, training, and support are critical for successful adoption and user satisfaction.

**Success Criteria**:
- 100% of users receive migration communication and training materials 30 days before their scheduled migration
- 100% of helpdesk staff trained on Windows 11 and InTune troubleshooting before pilot phase
- User satisfaction >80% with communication and support quality
- Change Advisory Board (CAB) reviews and approves each deployment wave
- Executive sponsorship message delivered by CIO at project kickoff

**Priority**: MUST_HAVE (Critical)

**Stakeholder**: Change Management Lead, HR, CIO

**Aligns with Architecture Principles**: Principle 14 (Change Management and Communication)

---

### BR-008: Phased Rollout and Risk Mitigation

**Description**: Execute phased migration approach with pilot groups, early adopters, and production waves to identify and resolve issues before widespread deployment.

**Rationale**: Big-bang migrations create catastrophic risk. Phased approach enables learning, course correction, and controlled risk exposure with manageable blast radius.

**Success Criteria**:
- Pilot phase (50-100 IT staff devices) completes with zero P1/P2 incidents
- Early adopter phase (10% of users) completes with <5% support ticket volume
- Production waves pause if >10% failure rate or P1 incident occurs
- 95% migration success rate across all phases
- Rollback capability tested and available for all devices <10 days post-migration

**Priority**: MUST_HAVE (Critical)

**Stakeholder**: IT Operations Director, Enterprise Architect, PMO

**Aligns with Architecture Principles**: Principle 6 (Phased Rollout Strategy), Principle 15 (Incident Response and Rollback)

---

## Functional Requirements

### User Personas

#### Persona 1: Executive/Mobile Worker
- **Role**: C-level executives, senior management, frequent travelers
- **Device**: High-end laptop, Copilot+ PC preferred
- **Goals**: Seamless productivity during travel, secure access to corporate resources, best-in-class user experience
- **Pain Points**: Cannot afford downtime, requires 24/7 IT support, impatient with technology friction
- **Technical Proficiency**: Low to Medium
- **Migration Priority**: Phase 2 (Early Adopters) or deferred until proven stable
- **Special Requirements**: White Glove Autopilot pre-provisioning, concierge support, minimal disruption

#### Persona 2: Knowledge Worker
- **Role**: Office workers, analysts, project managers, sales representatives
- **Device**: Standard laptop, desktop, or Copilot+ PC
- **Goals**: Daily productivity with Microsoft 365, collaboration tools, line-of-business applications
- **Pain Points**: Cannot lose work in progress, needs reliable video conferencing, moderate tolerance for disruption
- **Technical Proficiency**: Medium
- **Migration Priority**: Phase 2 (Production waves 1-5)
- **Special Requirements**: OneDrive KFM for data protection, clear communication on migration schedule

#### Persona 3: Developer/Power User
- **Role**: Software developers, data scientists, designers, engineers
- **Device**: High-performance laptop or workstation, Copilot+ PC with 32GB RAM
- **Goals**: Development tools, virtual machines, resource-intensive applications
- **Pain Points**: Requires administrative privileges for development tools, long setup times after reimaging
- **Technical Proficiency**: High
- **Migration Priority**: Phase 1 (Early Adopters) - can provide technical feedback
- **Special Requirements**: Copilot+ PC for AI-assisted development, local admin rights via exception process

#### Persona 4: Task Worker
- **Role**: Call center staff, retail associates, warehouse workers, factory floor
- **Device**: Desktop, shared workstation, kiosk
- **Goals**: Single application focus (CRM, ERP, POS), minimal complexity, high reliability
- **Pain Points**: Low tolerance for changes, requires simple interface, minimal training capacity
- **Technical Proficiency**: Low
- **Migration Priority**: Phase 2 (Production waves 6-10) - migrate after stabilization
- **Special Requirements**: Standard Windows 11 devices (not Copilot+ PC), extensive training materials

#### Persona 5: Field Worker
- **Role**: Technicians, sales representatives, healthcare workers, remote sites
- **Device**: Rugged laptop, tablet
- **Goals**: Offline capability, long battery life, durable hardware
- **Pain Points**: Intermittent connectivity, cannot return to office for IT support
- **Technical Proficiency**: Low to Medium
- **Migration Priority**: Phase 2 (Final waves) - requires special logistics
- **Special Requirements**: Autopilot deployment with pre-provisioning, offline OneDrive sync, extended battery life

#### Persona 6: IT Staff/Helpdesk
- **Role**: IT administrators, helpdesk technicians, support engineers
- **Device**: High-performance laptop with administrative tools
- **Goals**: Troubleshoot user issues, manage endpoints remotely, proactive monitoring
- **Pain Points**: Overwhelmed during migrations, needs efficient troubleshooting tools
- **Technical Proficiency**: High
- **Migration Priority**: Phase 0 (Pilot) - first to migrate, provides feedback
- **Special Requirements**: InTune Remote Help, administrative tools, extensive training

---

## Functional Requirements Detail

_(Continuing with 20+ detailed functional requirements - FR-001 through FR-020 covering all aspects of the migration)_

### FR-001: Windows 11 Hardware Compatibility Assessment

**Description**: System must automatically assess all Windows 10 devices for Windows 11 hardware compatibility and generate device replacement/upgrade recommendations.

**Relates To**: BR-005 (Hardware Modernization)

**Acceptance Criteria**:
- [ ] Given all Windows 10 devices in InTune inventory, when compatibility assessment runs, then each device categorized as: Compatible | Upgradeable (BIOS update required) | Requires Replacement
- [ ] Given device hardware inventory, when TPM version <2.0, then device flagged "Requires Replacement"
- [ ] Given device CPU model, when CPU not on Microsoft compatibility list (Intel <8th gen, AMD <Zen 2), then device flagged "Requires Replacement"
- [ ] Given device with BIOS mode Legacy, when UEFI capable, then device flagged "Upgradeable - BIOS Update Required"
- [ ] Given compatibility assessment results, when export report requested, then CSV exported with device name, user, status, recommended action

**Data Requirements**:
- **Inputs**: InTune device inventory (hardware model, CPU, RAM, storage, TPM version, BIOS mode)
- **Outputs**: Compatibility status per device, replacement cost estimate, timeline recommendation
- **Validations**: Device records must have complete hardware inventory (no null values for critical fields)

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: InTune enrollment, hardware inventory collection enabled
**Aligns with Architecture Principles**: Principle 3 (Hardware Readiness and Compatibility)

---

### FR-002: Windows Autopilot Device Registration

**Description**: System must support bulk registration of device hardware hashes to Windows Autopilot for zero-touch provisioning.

**Relates To**: BR-002 (Cloud-Native Endpoint Management)

**Acceptance Criteria**:
- [ ] Given CSV file with device hardware hashes, when imported to InTune Autopilot, then devices registered and available for Autopilot deployment
- [ ] Given device ordered from OEM vendor, when vendor has Autopilot integration, then hardware hash auto-registered without manual IT action
- [ ] Given existing Windows 10 device, when hardware hash extraction script runs, then hash uploaded to Autopilot for future re-provisioning
- [ ] Given Autopilot device, when deployment profile assigned, then device provisions per profile settings on first boot
- [ ] Given Autopilot device, when White Glove pre-provisioning requested, then IT can pre-provision device before shipping to user

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Aligns with Architecture Principles**: Principle 7 (Automated Deployment with Windows Autopilot)

---

### FR-003: OneDrive Known Folder Move Deployment

**Description**: System must automatically deploy OneDrive Known Folder Move (KFM) to redirect Desktop, Documents, Pictures to OneDrive cloud sync.

**Relates To**: BR-004 (User Productivity)

**Acceptance Criteria**:
- [ ] Given OneDrive KFM policy deployed via InTune, when policy applies to device, then Desktop, Documents, Pictures silently redirect to OneDrive
- [ ] Given folders redirected, when files added/modified, then OneDrive syncs changes to cloud automatically
- [ ] Given OneDrive sync, when initial sync exceeds 24 hours, then alert generated for IT investigation
- [ ] Given OneDrive sync status, when InTune checks before migration, then migration blocked if sync status not "Healthy"
- [ ] Given user with >1TB data, when KFM attempts to sync, then alert generated for storage quota increase

**Priority**: MUST_HAVE
**Complexity**: LOW
**Aligns with Architecture Principles**: Principle 12 (Data Protection and Backup)

---

### FR-004: InTune Feature Update Policies

**Description**: System must support creation and assignment of Windows 11 feature update policies to trigger in-place upgrades from Windows 10.

**Relates To**: BR-001 (Security Compliance)

**Acceptance Criteria**:
- [ ] Given Windows 11 feature update policy, when created in InTune, then policy specifies target version (e.g., Windows 11 22H2)
- [ ] Given feature update policy assigned to device group, when device checks in, then Windows 11 upgrade offered to user
- [ ] Given user notification, when upgrade deferred, then deferral count tracked and deadline enforced after 14 days
- [ ] Given upgrade in progress, when failure detected, then automatic rollback to Windows 10 triggered
- [ ] Given upgrade complete, when device reports to InTune, then InTune dashboard updates device OS version to Windows 11

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Aligns with Architecture Principles**: Principle 9 (Update Management and Patching)

---

### FR-005: Device Compliance Policies Configuration

**Description**: System must enforce device compliance policies for TPM 2.0, BitLocker encryption, Defender Antivirus, OS version, and password requirements.

**Relates To**: BR-001 (Security Compliance)

**Acceptance Criteria**:
- [ ] Given compliance policy, when configured, then requires: TPM 2.0, Secure Boot enabled, BitLocker encrypted, Defender real-time protection on, Windows 11 22H2+
- [ ] Given device non-compliant, when evaluated by InTune, then device marked "Non-Compliant" in Azure AD
- [ ] Given non-compliant device, when Conditional Access evaluates, then access to corporate resources blocked
- [ ] Given grace period (24 hours), when non-compliance persists, then user access revoked and helpdesk notified
- [ ] Given compliance issue, when user opens Company Portal, then specific issues displayed with remediation steps

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model), Principle 10 (Monitoring, Reporting, and Compliance)

---

### FR-006: Configuration Manager Co-Management Setup

**Description**: System must enable Configuration Manager co-management to allow hybrid management of devices during the 18-month transition from on-premises Configuration Manager to cloud-native InTune.

**Relates To**: BR-002 (Cloud-Native Endpoint Management)

**Acceptance Criteria**:
- [ ] Given Configuration Manager site server, when co-management enabled, then devices can be managed by both ConfigMgr and InTune simultaneously
- [ ] Given co-management configuration, when workload slider set, then specific workloads (Compliance policies, Device configuration, Endpoint Protection, Resource access, Client apps, Office Click-to-Run, Windows Update policies) can be shifted to InTune incrementally
- [ ] Given device in co-management, when workload assigned to InTune, then Configuration Manager no longer manages that workload on the device
- [ ] Given co-management dashboard, when viewed in InTune admin center, then shows percentage of workloads managed by InTune vs Configuration Manager per device
- [ ] Given 18-month decommissioning timeline, when Month 6 reached, then 50% of workloads shifted to InTune; when Month 12 reached, then 80% of workloads shifted to InTune; when Month 18 reached, then 100% of workloads shifted to InTune

**Priority**: MUST_HAVE
**Complexity**: HIGH
**Dependencies**: Existing Configuration Manager infrastructure, InTune tenant, Hybrid Azure AD join or Azure AD join
**Aligns with Architecture Principles**: Principle 1 (Cloud-First Endpoint Management)

---

### FR-007: Group Policy to InTune Migration

**Description**: System must migrate existing Group Policy Objects (GPOs) to InTune configuration policies using Group Policy Analytics to maintain policy parity during cloud transition.

**Relates To**: BR-002 (Cloud-Native Endpoint Management)

**Acceptance Criteria**:
- [ ] Given existing GPOs in on-premises Active Directory, when Group Policy Analytics tool run in InTune, then all GPOs analyzed and categorized as: Supported | Partially Supported | Not Supported | Deprecated
- [ ] Given Group Policy Analytics report, when reviewed, then InTune policy recommendations provided for each supported GPO setting
- [ ] Given 100+ GPOs identified in analysis, when migration planned, then critical GPOs prioritized for migration first (security, compliance, user experience)
- [ ] Given supported GPO setting, when migrated to InTune, then implemented as InTune Configuration Profile (Administrative Template, Settings Catalog, or Device Configuration policy)
- [ ] Given unsupported GPO, when identified, then alternative approach documented (custom script, registry setting, or business process change)
- [ ] Given InTune policy equivalent, when deployed, then policy applies to Azure AD joined devices and hybrid Azure AD joined devices
- [ ] Given migration complete, when validated, then no policy gaps between old GPO settings and new InTune policies

**Data Requirements**:
- **Inputs**: Exported GPO settings from Group Policy Management Console, Group Policy Analytics report
- **Outputs**: InTune Configuration Profiles, Settings Catalog policies, migration documentation with unsupported GPO workarounds
- **Validations**: Policy settings tested in pilot group before production deployment

**Priority**: MUST_HAVE
**Complexity**: HIGH
**Dependencies**: Group Policy Analytics tool, InTune tenant, pilot device group
**Aligns with Architecture Principles**: Principle 8 (Configuration Management via InTune Policies)

---

### FR-008: Application Packaging for InTune

**Description**: System must package and deploy business applications via InTune Win32 app management for automated installation during Autopilot provisioning and on-demand deployment.

**Relates To**: BR-004 (User Productivity), Architecture Principle 5 (Application Compatibility)

**Acceptance Criteria**:
- [ ] Given top 20 business applications, when packaged for InTune, then applications wrapped as .intunewin files with detection rules, install commands, and uninstall commands
- [ ] Given Win32 app package, when uploaded to InTune, then includes: App information (name, publisher, version), installation requirements (OS version, disk space, RAM), detection rules (file version, registry key, MSI product code), install command, uninstall command, return codes
- [ ] Given packaged app, when assigned to device group, then app deploys automatically via InTune during Autopilot provisioning or as available in Company Portal
- [ ] Given app installation, when monitored via InTune, then installation status tracked (Pending, Installing, Installed, Failed) and failures generate alerts
- [ ] Given legacy .MSI installer, when packaged, then wrapped as .intunewin with silent install parameters
- [ ] Given modern MSIX app, when deployed, then deployed directly to InTune without repackaging
- [ ] Given detection rule, when app already installed, then InTune skips reinstallation

**Data Requirements**:
- **Inputs**: Application installers (.exe, .msi, .msix), silent install parameters, detection logic
- **Outputs**: .intunewin packages, deployment policies, installation success/failure reports
- **Validations**: Each app tested on pilot devices before production deployment

**Priority**: MUST_HAVE
**Complexity**: HIGH
**Dependencies**: Microsoft Win32 Content Prep Tool, application compatibility testing (FR-013)
**Aligns with Architecture Principles**: Principle 5 (Application Compatibility and Testing), Principle 7 (Automated Deployment)

---

### FR-009: Security Baseline Deployment

**Description**: System must deploy Microsoft Security Baseline for Windows 11 via InTune to enforce hardened security settings across all devices.

**Relates To**: BR-001 (Security Compliance), NFR-SEC-001/002/003

**Acceptance Criteria**:
- [ ] Given Microsoft Security Baseline for Windows 11, when imported to InTune, then baseline profile includes 100+ security settings (BitLocker, Windows Defender, Firewall, User Account Control, Credential Guard, Attack Surface Reduction rules)
- [ ] Given security baseline, when customized for organization, then documented exceptions/deviations from Microsoft baseline with risk acceptance sign-off
- [ ] Given security baseline policy, when assigned to device group, then policy deploys to all Windows 11 devices
- [ ] Given device with security baseline applied, when InTune checks compliance, then non-compliant settings flagged and reported
- [ ] Given security baseline updates from Microsoft, when new baseline released, then organization reviews and applies updated baseline within 30 days
- [ ] Given pilot devices, when security baseline applied, then tested for application compatibility issues before production rollout

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: InTune tenant, Windows 11 devices, security team review
**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

---

### FR-010: Conditional Access Policy Configuration

**Description**: System must configure Conditional Access policies in Azure AD to enforce Zero Trust access controls based on device compliance, user risk, location, and application sensitivity.

**Relates To**: BR-001 (Security Compliance), NFR-SEC-001

**Acceptance Criteria**:
- [ ] Given Azure AD Premium P1/P2 licenses, when Conditional Access policies created, then policies enforce: Require compliant device OR Hybrid Azure AD joined device, Require MFA for all users, Block legacy authentication, Require approved client app for mobile devices
- [ ] Given device marked non-compliant by InTune, when user attempts to access corporate resources, then Conditional Access blocks access and displays remediation instructions
- [ ] Given user sign-in from unusual location, when Azure AD Identity Protection detects risk, then Conditional Access requires step-up authentication or blocks access
- [ ] Given sensitive application (HR system, finance system), when user accesses, then Conditional Access requires MFA + compliant device + corporate network or approved location
- [ ] Given emergency access (break-glass) accounts, when configured, then excluded from Conditional Access policies to prevent lockout
- [ ] Given Conditional Access policy changes, when deployed, then staged rollout to pilot group first, then production after validation

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: Azure AD Premium P1/P2, InTune device compliance policies (FR-005), Azure AD Identity Protection (optional for risk-based policies)
**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model), Principle 11 (Azure AD Integration)

---

### FR-011: Microsoft Defender for Endpoint Onboarding

**Description**: System must automatically onboard Windows 11 devices to Microsoft Defender for Endpoint via InTune for endpoint threat protection, EDR, and security analytics.

**Relates To**: BR-001 (Security Compliance), NFR-SEC-003, INT-002

**Acceptance Criteria**:
- [ ] Given Microsoft Defender for Endpoint tenant, when onboarding policy created in InTune, then policy includes Defender for Endpoint configuration package
- [ ] Given Windows 11 device enrolled in InTune, when onboarding policy assigned, then device auto-onboards to Defender for Endpoint without user intervention
- [ ] Given onboarded device, when reporting to Defender portal, then device visible in Defender portal with health status (Active, Inactive, Misconfigured)
- [ ] Given Defender for Endpoint, when threat detected, then alert generated in Defender portal and optionally forwarded to SIEM/SOC
- [ ] Given device risk level (Low, Medium, High, Severe), when Defender assesses, then risk level exposed to Conditional Access for access control decisions
- [ ] Given Attack Surface Reduction (ASR) rules, when enabled, then specific rules configured per device group (pilot: audit mode, production: block mode)

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: Microsoft Defender for Endpoint license (M365 E5 or standalone), InTune tenant, SOC/SIEM integration (optional)
**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

---

### FR-012: Update Ring Configuration

**Description**: System must configure Windows Update for Business policies in InTune with 4 update rings to staged-deploy quality updates and feature updates before production rollout.

**Relates To**: BR-001 (Security Compliance), Architecture Principle 9 (Update Management and Patching)

**Acceptance Criteria**:
- [ ] Given InTune tenant, when update rings configured, then 4 rings created: Ring 1 (Preview - IT Staff), Ring 2 (Broad - Early Adopters), Ring 3 (Production), Ring 4 (Critical Systems)
- [ ] Given Ring 1 (Preview), when configured, then quality update deferral: 0 days, feature update deferral: 0 days, assigned to: IT staff device group (~100 devices)
- [ ] Given Ring 2 (Broad), when configured, then quality update deferral: 3 days, feature update deferral: 7 days, assigned to: Early adopter device group (~10% of users)
- [ ] Given Ring 3 (Production), when configured, then quality update deferral: 7 days, feature update deferral: 14 days, assigned to: General user population (~80% of users)
- [ ] Given Ring 4 (Critical Systems), when configured, then quality update deferral: 14 days, feature update deferral: 30 days, assigned to: Executive devices, kiosks, critical workstations (~10% of users)
- [ ] Given update ring, when quality update deadline reached (7 days after installation available), then device forced to restart to complete update installation
- [ ] Given active hours, when configured for organization (8 AM - 6 PM), then devices avoid automatic restarts during active hours
- [ ] Given problematic update detected, when Ring 1 devices experience issues, then IT can pause update rollout for Ring 2/3/4 before widespread impact

**Priority**: MUST_HAVE
**Complexity**: MEDIUM
**Dependencies**: InTune tenant, Azure AD device groups, Windows Update for Business policies
**Aligns with Architecture Principles**: Principle 9 (Update Management and Patching)

---

### FR-013: Application Compatibility Testing Lab Setup

**Description**: System must provide application compatibility testing lab environment (Azure Virtual Desktop or physical devices) to test top 100 business applications on Windows 11 before user migration.

**Relates To**: BR-004 (User Productivity), Architecture Principle 5 (Application Compatibility and Testing)

**Acceptance Criteria**:
- [ ] Given top 100 business applications identified, when test lab setup, then lab includes: Windows 11 22H2/23H2 VMs or physical devices, InTune enrolled devices with production policies applied, Access to production data (sanitized/anonymized), Test user accounts for each persona
- [ ] Given application under test, when test executed, then test validates: Application installs successfully, Application launches without errors, Core functionality works (create, read, update, delete operations), Application performance acceptable (<5s launch time), No crashes or hangs during 1-hour usage test
- [ ] Given test results, when documented, then application categorized as: Compatible (no issues), Compatible with minor issues (cosmetic issues, workarounds available), Requires update (vendor update available for Windows 11), Incompatible (no Windows 11 version, requires replacement)
- [ ] Given incompatible application, when identified, then alternative application researched or vendor escalation initiated
- [ ] Given Copilot+ PC with ARM64 processor (Qualcomm Snapdragon), when ARM64 compatibility tested, then validate: Native ARM64 app available OR x64 emulation works with acceptable performance, VPN client, security software, and LOB apps function correctly
- [ ] Given application compatibility test results, when complete, then test report published with Pass/Fail status for each application

**Data Requirements**:
- **Inputs**: Application inventory (top 100 apps), vendor compatibility statements, test scripts
- **Outputs**: Application compatibility matrix, test reports, remediation plan for incompatible apps
- **Validations**: Each app tested by app owner or business user representative

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

#### NFR-SEC-004: Security Governance and MOD Secure by Design Continuous Assurance

**Requirement**: Project must establish security governance structure aligned with JSP 440 Leaflet 5C Secure by Design (SbD) mandate using continuous assurance framework via CAAT (Cyber Activity and Assurance Tracker) and Three Lines of Defence model before Beta phase.

**Source**: MOD Secure by Design Assessment v2.0 (mod-secure-by-design.md) - Critical Finding #1-3, Post-August 2023 Changes

**CRITICAL CHANGE (August 2023)**: MOD has replaced point-in-time RMADS accreditation with **continuous assurance** through Secure by Design. This project must:
- Register on CAAT (not submit RMADS)
- Appoint Delivery Team Security Lead (DTSL) as First Line of Defence
- Conduct continuous risk management (not one-time accreditation)
- Obtain supplier attestation that systems are secure (ISN 2023/10)
- Undergo regular Security Governance Reviews (not single accreditation approval)

**CAAT (Cyber Activity and Assurance Tracker) Registration**:
- [ ] **CAAT Registration** completed by Week 1 (mandatory for all MOD programmes from Discovery/Alpha)
- [ ] **Business Impact Assessment (BIA)** completed by Week 2 (required for CAAT)
- [ ] **CAAT Self-Assessment** (7 SbD Principles question sets) completed by Month 1
- [ ] **CAAT Continuous Updates** as security controls implemented throughout lifecycle (not one-time submission)
- [ ] Access to CAAT via MOD Secure by Design portal (requires DefenceGateway account for suppliers)

**Three Lines of Defence - Security Governance Roles**:

**First Line of Defence: Delivery Team Owns Security** (must appoint within Week 1):
- [ ] **Delivery Team Security Lead (DTSL)**: CISO delegate or Senior Security Architect appointed to:
  - Own security for delivery team
  - Complete CAAT self-assessments
  - Manage day-to-day security
  - Lead threat modeling and security testing
  - **Accountability**: Delivery team and capability owner are accountable for security posture (not delegated to accreditation authority)
  - **Note**: JSP 440 Leaflet 5C mandatory requirement - First Line of Defence
- [ ] **Project Security Officer (PSyO)**: Dedicated role reporting to CISO (may be combined with DTSL role for OFFICIAL-SENSITIVE systems) to:
  - Provide security oversight
  - Complete CAAT self-assessment support
  - Liaise with Security Governance (Second Line)
  - **Note**: Required for OFFICIAL-SENSITIVE data per JSP 440; for SECRET+ must be separate role
- [ ] **Senior Responsible Owner (SRO) / Capability Owner**: Formally document (likely CIO)
  - **Accountability**: SROs and capability owners are accountable for security posture under SbD
  - **Responsibility**: Cannot delegate or trade out cyber security - it is a "licence to operate"

**Second Line of Defence: Assurance and Oversight** (establish by Month 3):
- [ ] **Technical Coherence Assurance**: Establish independent security review process
  - **Role**: Security Governance Reviews, policy compliance, architecture governance
  - **Owner**: Enterprise Architect
- [ ] **Security Policies and Standards**: Document project-specific security standards and baselines
- [ ] **Security Governance Review Schedule**: Quarterly during Development, Annually in Live

**Third Line of Defence: Independent Audit** (establish by Month 4):
- [ ] **Internal Audit**: Schedule internal audit for Month 4 (before Beta deployment)
  - **Role**: Audit security controls, validate CAAT self-assessments, provide assurance to SRO
  - **Owner**: Internal Audit
- [ ] **External Audit / Penetration Testing**: Procure external pen testing
  - **Role**: Penetration testing, vulnerability assessment, red team exercises
  - **Owner**: DTSL

**Legacy Roles (Deprecated Post-August 2023)**:
- **Information Assurance Owner (IAO)**: ROLE DEPRECATED - replaced by SRO and capability owner accountability
- **Information Assurance Architect (IAA)**: ROLE DEPRECATED - replaced by Security Governance Reviews (Second Line assurance)
- **Accreditation Authority**: ROLE DEPRECATED - point-in-time accreditation replaced by continuous assurance and supplier attestation

**Security Governance Framework**:
- [ ] Security governance RACI matrix published (Three Lines of Defence roles)
- [ ] Security incident escalation matrix documented (when to notify CISO, SRO, MOD CERT, Second Line)
- [ ] Security risk acceptance authority defined (who can accept LOW/MEDIUM/HIGH/CRITICAL risks)
- [ ] Quarterly Security Governance Review meetings scheduled (not one-time accreditation)

**Continuous Assurance Requirements** (Replaces Point-in-Time Accreditation):
- [ ] **Week 1**: DTSL, PSyO, SRO appointed
- [ ] **Week 1**: Register programme on CAAT
- [ ] **Week 2**: Complete Business Impact Assessment (BIA) for CAAT
- [ ] **Month 1**: Complete CAAT self-assessment (7 SbD Principles question sets)
- [ ] **Month 2**: Obtain supplier security attestations (Microsoft, hardware vendors) per ISN 2023/10
- [ ] **Month 3**: Security Governance Review (Second Line assurance)
- [ ] **Month 4**: Internal audit (Third Line - validate CAAT self-assessment)
- [ ] **Ongoing**: Update CAAT continuously as deployment progresses
- [ ] **Quarterly**: Security Governance Reviews during Development
- [ ] **Annually**: Security Governance Reviews in Live phase
- [ ] **Through-Life**: Supplier continuous attestation (not one-time)

**Acceptance Criteria**:
- [ ] Given security governance requirement, when Week 1 complete, then DTSL, PSyO, SRO appointed with documented responsibilities (Three Lines of Defence)
- [ ] Given CAAT registration, when Week 1 complete, then programme registered on CAAT and DefenceGateway access established
- [ ] Given BIA completion, when Week 2 complete, then Business Impact Assessment submitted to CAAT
- [ ] Given CAAT self-assessment, when Month 1 complete, then 7 SbD Principles question sets completed in CAAT
- [ ] Given Security Governance Review, when Month 3 complete, then Second Line review conducted with 0 CRITICAL blockers
- [ ] Given Third Line audit, when Month 4 complete, then internal audit validates CAAT self-assessment accuracy
- [ ] Given continuous assurance, when assessed, then CAAT updated monthly and Security Governance Reviews held quarterly

**Priority**: CRITICAL (deployment blocker for Beta)

**Related Risks**: R-001 (Migration timeline slips), R-011 (GDPR non-compliance)

**Related Stakeholder Drivers**: SD-1 (CISO security compliance), SD-7 (Enterprise Architect governance)

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

**SbD Compliance**:
- JSP 440 Leaflet 5C Principles 1-2 (Understand Context, Security from Start)
- ISN 2023/09 (Secure by Design Requirements)
- ISN 2023/10 (Supplier Attestation and Legacy Accreditation Withdrawal)

---

#### NFR-SEC-005: Threat Modeling and Security Architecture Review

**Requirement**: Formal threat model must be documented using STRIDE/DREAD methodology and security architecture must be reviewed by Second Line (Technical Coherence) before Beta phase.

**Source**: MOD Secure by Design Assessment v2.0 (mod-secure-by-design.md) - Critical Finding #4, #7

**CRITICAL CHANGE (August 2023)**: IAA approval replaced by Security Governance Reviews (Second Line assurance). Security architecture no longer requires external accreditation authority approval, but must undergo Technical Coherence review by Enterprise Architect (Second Line of Defence).

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
  - Data flow diagram showing OFFICIAL-SENSITIVE data flows
  - Security control mapping (threat → control → test evidence)
  - MOD network integration architecture (firewall rules, cloud connectivity assurance)
  - Alignment with 7 SbD Principles (Understand Context, Security from Start, Defence in Depth, Secure Design Patterns, Continuous Risk, Secure Supply Chain, Through-Life Assurance)
- [ ] **Security architecture submitted for Security Governance Review (Second Line)** by Month 1
- [ ] **Security Governance Review completed** before proceeding to Beta phase (Month 3)
- [ ] **Security architecture updates** require Second Line re-review for significant changes (continuous assurance)
- [ ] **Quarterly Security Governance Reviews** during Development to validate architecture evolution

**Acceptance Criteria**:
- [ ] Given threat model requirement, when Month 1 complete, then formal threat model documented with 20+ identified threats rated by DREAD
- [ ] Given security architecture, when submitted for Security Governance Review, then architecture document includes diagrams, data flows, security controls, threat mitigations, and SbD alignment
- [ ] Given Security Governance Review, when Month 3 complete, then Second Line review conducted with 0 CRITICAL findings remaining
- [ ] Given threat model updates, when new threats identified, then threat model updated quarterly and reviewed with DTSL and Second Line
- [ ] Given continuous assurance, when security architecture changes, then Second Line re-review conducted before implementation

**Priority**: CRITICAL (deployment blocker for Beta)

**Dependencies**: NFR-SEC-004 (Security governance must be established first - DTSL appointed, Second Line established)

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
- [ ] **Vulnerability reporting**: Weekly vulnerability report to PSyO/IAO showing open CVEs by severity
- [ ] **CVE exception process**: Documented process for accepting risk on un-remediatable vulnerabilities (requires IAO approval)

**Security Testing Documentation**:
- [ ] Penetration test report with executive summary, findings, remediation recommendations
- [ ] Vulnerability scan reports (weekly) showing open CVEs and remediation status
- [ ] Security testing remediation tracker (CRITICAL/HIGH findings → remediation actions → validation)

**Acceptance Criteria**:
- [ ] Given penetration testing requirement, when Month 2 complete, then penetration test executed with full report delivered
- [ ] Given penetration test findings, when CRITICAL findings identified, then 100% CRITICAL findings remediated and re-tested before Beta
- [ ] Given vulnerability scanning, when enabled, then weekly scans operational with vulnerability reports delivered to PSyO
- [ ] Given CVE remediation, when CRITICAL CVE identified, then remediation completed within 7 days or IAO risk acceptance obtained

**Priority**: CRITICAL (accreditation blocker)

**Dependencies**: NFR-SEC-004 (PSyO appointed), NFR-SEC-005 (Security architecture documented)

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

**Priority**: HIGH (accreditation requirement)

**Dependencies**: NFR-SEC-004 (PSyO appointed to manage supplier attestations)

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model)

**SbD Compliance**: JSP 440 Leaflet 5C Principle 6 (Secure Supply Chain), ISN 2023/10 supplier attestation requirements

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

**Priority**: CRITICAL (accreditation requirement)

**Dependencies**: NFR-SEC-004 (PSyO responsible for incident response plan), NFR-SEC-003 (Defender for Endpoint for detection)

**Aligns with Architecture Principles**: Principle 2 (Zero Trust Security Model), Principle 15 (Incident Response and Rollback)

**SbD Compliance**: JSP 440 Leaflet 5C Principle 7 (Through-Life Assurance), NIST CSF Respond function

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
| **Hardware Refreshes** | $[X] | 30% of devices require replacement (~1,800 devices � $[unit cost]) |
| **Copilot+ PC Procurement** | $[Y] | 30% of refreshes as Copilot+ PCs (~540 devices � $[unit cost]) |
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
| **Speed vs. Security Rigor** | BR-003 (12-month timeline) vs NFR-SEC-004 (3-month security prep) | CFO vs CISO | COMPROMISE: 18-month timeline with mandatory 3-month security gates upfront | CISO wins on security gates, CFO wins on faster deployment after gates |
| **Innovation vs. Stability** | BR-004 (Copilot+ PCs) vs NFR-P-003 (App compatibility) | CIO vs IT Ops | INNOVATE: x64 Copilot+ PCs (not ARM64) for 30% users, pilot validates ROI | CIO wins 30% adoption, IT Ops wins x64 risk mitigation |
| **Security vs. User Experience** | NFR-SEC-001 (MFA all users) vs FR-004 (Seamless UX) | CISO vs End Users | INNOVATE: Windows Hello passwordless (biometric + PIN) | Win-Win-Win: Security + UX + Helpdesk |
| **Governance vs. Agility** | BR-006 (Zero exceptions) vs FR-007 (Deployment flexibility) | Enterprise Architect vs IT Ops | COMPROMISE: Documented exception process with approval authority by risk level | Both win: Governance with pragmatic escape valve |

---

### Conflict 1: Speed vs. Security Rigor (Timeline Tension)

**Conflicting Requirements**:
- **BR-003**: CFO wants 12-month timeline for rapid cost savings
- **NFR-SEC-004**: CISO requires 3-month security preparation (CAAT, DTSL, BIA, threat model, Security Governance Review) before Beta
- **FR-007**: IT Ops needs 24-month phased rollout for risk mitigation

**Resolution**: **COMPROMISE** - 18-month timeline with mandatory security gates
- **Month 0-3**: Security preparation (CAAT registration, DTSL appointment, BIA, threat model, Security Governance Review) - NO deployment
- **Month 4-18**: Aggressive phased deployment (500-1000 devices/week) after security gates passed

**Decision Authority**: CIO (Executive Sponsor)

**Rationale**: CAAT and JSP 440 Leaflet 5C security governance are mandatory and cannot be rushed. However, deployment can be accelerated once security gates passed. Failed migration costs £[Y]M >> savings from speed.

**Which Stakeholder "Won"**:
- ✅ **CISO wins**: 3-month security preparation non-negotiable
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
- **MOD Secure by Design Assessment v2.0**: `projects/001-windows-11-migration-intune/mod-secure-by-design.md` (Security assessment with CAAT continuous assurance framework, Three Lines of Defence governance, ISN 2023/10 supplier attestation - SOURCE for NFR-SEC-004 through NFR-SEC-010)
- **Stakeholder Drivers & Conflict Analysis**: `projects/001-windows-11-migration-intune/stakeholder-drivers.md` (Stakeholder goals, competing drivers, conflict resolutions - SOURCE for Requirement Conflicts section)
- **Risk Register**: `projects/001-windows-11-migration-intune/risk-register.md` (HM Treasury Orange Book risk management)

**MOD Security Standards**:
- **JSP 440**: Defence Manual of Security (primary MOD security policy framework)
- **JSP 440 Leaflet 5C**: Secure by Design mandate (effective August 2023)
- **JSP 453**: Digital Policies and Standards for Defence (cloud-first, modern endpoint management)
- **ISN 2023/09**: Secure by Design Requirements (industry guidance)
- **ISN 2023/10**: Supplier Attestation and Legacy Accreditation Withdrawal
- **NCSC Secure Design Principles**: https://www.ncsc.gov.uk/collection/cyber-security-design-principles
- **NIST Cybersecurity Framework**: https://www.nist.gov/cyberframework (CSF v1.1: Identify, Protect, Detect, Respond, Recover)

**Microsoft Documentation**:
- **Microsoft Windows 11 Requirements**: https://learn.microsoft.com/windows/whats-new/windows-11-requirements
- **Microsoft InTune Documentation**: https://learn.microsoft.com/mem/intune/
- **Windows Autopilot Documentation**: https://learn.microsoft.com/autopilot/
- **Copilot+ PC Requirements**: https://www.microsoft.com/windows/copilot-plus-pcs
- **Microsoft Security Baselines**: https://learn.microsoft.com/windows/security/operating-system-security/device-management/windows-security-configuration-framework/windows-security-baselines
- **Microsoft Defender for Endpoint**: https://learn.microsoft.com/microsoft-365/security/defender-endpoint/
- **Azure AD Conditional Access**: https://learn.microsoft.com/entra/identity/conditional-access/

---

**Document History**

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-10-14 | Enterprise Architecture Team | Initial requirements with 8 BR, 5 FR, 7 NFR, 3 INT aligned with 18 architecture principles |
| 2.0 | 2025-10-15 | Enterprise Architecture Team | Added 15 missing functional requirements (FR-006 to FR-020: Co-Management, GPO Migration, App Packaging, Security Baseline, Conditional Access, Defender Onboarding, Update Rings, App Testing Lab, User Communication, Helpdesk Training, Migration Dashboard, Rollback, ConfigMgr Decommission, Copilot+ Pilot, ARM64 Compatibility) and 5 missing non-functional requirements (NFR-A-001/002: Availability/DR, NFR-S-001/002: Scalability, NFR-M-001/002/003: Maintainability). Total: 8 BR, 20 FR, 12 NFR, 3 INT = 43 requirements |
| 3.0 | 2025-10-21 | Enterprise Architecture Team | **MAJOR UPDATE**: Added 7 critical MOD Secure by Design (SbD) security requirements based on mod-secure-by-design.md assessment findings. New requirements: NFR-SEC-004 (Security Governance & JSP 440 Compliance - CRITICAL), NFR-SEC-005 (Threat Modeling & Security Architecture Approval - CRITICAL), NFR-SEC-006 (Security Testing & Penetration Testing - CRITICAL), NFR-SEC-007 (Supply Chain Security & SBOM - HIGH), NFR-SEC-008 (Incident Response & MOD CERT Integration - CRITICAL), NFR-SEC-009 (Privileged Access Management & Insider Threat - HIGH), NFR-SEC-010 (Data Loss Prevention for OFFICIAL-SENSITIVE - HIGH). These address 9 accreditation blockers identified in SbD assessment. Total: 8 BR, 20 FR, 19 NFR (10 security), 3 INT = 50 requirements. **Action Required**: Appoint Security Lead, PSyO, IAO by Week 1 to avoid project delays. |

---

**Approval Section**

| Reviewer | Role | Status | Date | Comments |
|----------|------|--------|------|----------|
| [CIO Name] | Executive Sponsor | [ ] Approved | [DATE] | |
| [CISO Name] | Security Executive | [ ] Approved | [DATE] | |
| [IT Ops Director] | Project Owner | [ ] Approved | [DATE] | |
| [Enterprise Architect] | Solution Architect | [ ] Approved | [DATE] | |
| [CFO Name] | Budget Owner | [ ] Approved | [DATE] | |
