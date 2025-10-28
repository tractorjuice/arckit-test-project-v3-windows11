# Statement of Work (SOW): Windows 10 to Windows 11 Migration using Microsoft InTune

**Document Type**: Procurement - Statement of Work / Request for Proposal
**RFP ID**: RFP-WIN11-001
**Project ID**: 001
**Issue Date**: [DATE]
**Proposal Due Date**: [DATE + 6 weeks]
**Version**: 4.0
**Issuing Organization**: [ORGANIZATION_NAME]
**Point of Contact**: [NAME], [EMAIL], [PHONE]
**Last Updated**: 2025-10-28 (CRITICAL CORRECTION: Removed MOD CAAT requirements - project is change to EXISTING accredited system, not NEW operational capability)

## ⚠️ CRITICAL CORRECTION NOTICE - SOW SUPERSEDED

**This Statement of Work has been CORRECTED to reflect that MOD Secure by Design (SbD) CAAT registration is NOT REQUIRED for this project.**

**Previous Version (v3.0 - 2025-10-21)**: INCORRECT - Assumed MOD CAAT registration and MOD SbD continuous assurance framework applied to this Windows 11 migration project.

**Corrected Version (v4.0 - 2025-10-28)**: This project is delivering **changes to an EXISTING accredited in-service system** (Windows 10 enterprise environment), NOT a NEW operational capability. Therefore:

**REQUIREMENTS REMOVED (NOT APPLICABLE):**
- ❌ **CAAT registration and self-assessment** - CAAT only for NEW operational capabilities
- ❌ **DTSL (Delivery Team Security Lead) appointment** - MOD role not required (use organizational Project Security Lead)
- ❌ **BIA for CAAT** - Use organizational Security Impact Assessment instead
- ❌ **ISN 2023/10 supplier attestation** - MOD requirement not applicable
- ❌ **Three Lines of Defence governance (First/Second/Third)** - Use organizational CAB and security review processes
- ❌ **PSyO/IAO/IAA MOD roles** - Use organizational security roles

**CORRECT APPROACH:**
- ✅ **Organizational CAB (Change Advisory Board) approval** - Standard change control process
- ✅ **Security Impact Assessment** - Using organizational template (not CAAT BIA)
- ✅ **Project Security Lead** - Organizational role (not MOD DTSL)
- ✅ **Threat modeling and Security Architecture Review** - Organizational security governance
- ✅ **Security preparation timeline: 2 months** (reduced from 3 months in v3.0)
- ✅ **Security costs: £20K** (reduced from £50K MOD overhead in v3.0)

**Result**: Vendor requirements significantly simplified. Focus on organizational security governance (ISO 27001, NIST CSF, NCSC Secure Design) rather than MOD-specific frameworks.

## Document Change History

| Version | Date | Author | Changes Summary | Impact on Vendor Proposals |
|---------|------|--------|-----------------|---------------------------|
| 1.0 | 2025-10-15 | [AUTHOR] | Initial SOW creation | N/A - Initial baseline |
| 2.0 | 2025-10-21 | Claude/ArcKit | Added MOD Secure by Design security requirements (NFR-SEC-004 through NFR-SEC-010) based on MOD SbD assessment findings. | MAJOR IMPACT: Vendors must account for MOD accreditation activities including RMADS, penetration testing, SBOM creation, etc. |
| 3.0 | 2025-10-21 | Claude/ArcKit | **INCORRECT**: Replaced RMADS with CAAT continuous assurance framework | **INCORRECT VENDOR REQUIREMENTS**: Required CAAT, DTSL, BIA, ISN 2023/10 attestations - NOT APPLICABLE to changes to existing accredited systems |
| **4.0** | **2025-10-28** | **Claude/ArcKit** | **CRITICAL CORRECTION**: Removed MOD CAAT/DTSL/BIA/ISN 2023/10 requirements. This is change to EXISTING accredited Windows 10 system, NOT new operational capability requiring MOD SbD. Updated to organizational security governance: CAB approval, Security Impact Assessment (not CAAT BIA), Project Security Lead (not DTSL), organizational security review (not IAA). Timeline reduced from 3 months → 2 months. Security costs reduced from £50K → £20K. Aligned with Requirements v5.0, MOD SbD Assessment v3.0, Risk Register v3.0. | **MAJOR SIMPLIFICATION**: Vendors NO LONGER need MOD CAAT expertise or MOD security accreditation experience. Focus on organizational security governance (ISO 27001, NIST CSF, NCSC, CAB processes, Security Impact Assessments). MQ-11 (Mandatory Qualification) completely rewritten. PQ-7/8/9 (Preferred Qualifications) updated. Deliverables simplified (no CAAT/DTSL/BIA/ISN deliverables). Cost impact: £30K reduction (MOD overhead removed). |

### Summary of Version 4.0 Changes (CRITICAL CORRECTION)

**CRITICAL CHANGE**: Version 3.0 incorrectly assumed this project required MOD Secure by Design CAAT registration. **CAAT is ONLY required for programmes delivering NEW operational capabilities into service.** This Windows 11 migration is a change to an **EXISTING accredited in-service system** (Windows 10 enterprise environment with existing security accreditation). Therefore, MOD CAAT/DTSL/BIA requirements are **NOT APPLICABLE**.

**Section 2 (Scope of Work) - Replaced MOD CAAT Activities with Organizational Security Governance**:
- **Phase 1 (Month 0-1) - CORRECTED**:
  - ~~CAAT registration (Week 1)~~ → **Appoint Project Security Lead and SRO** (organizational roles)
  - ~~DTSL appointment (Week 1)~~ → NOT REQUIRED (use Project Security Lead)
  - ~~BIA for CAAT (Week 2)~~ → **Security Impact Assessment** (organizational template)
  - Threat modeling (Month 1) - UNCHANGED
  - ~~Security architecture for Security Governance Review~~ → **Security Architecture Review** (organizational security team)
  - ~~CAAT self-assessment (7 SbD Principles)~~ → NOT REQUIRED
  - ~~ISN 2023/10 supplier attestations~~ → NOT REQUIRED
  - Penetration testing vendor procurement (Month 1) - UNCHANGED
- **Phase 2 (Month 2-3) - CORRECTED**:
  - SBOM creation (Month 2) - UNCHANGED (organizational best practice)
  - Penetration testing execution and remediation (Month 2) - UNCHANGED
  - Incident response planning (Month 2) - UNCHANGED
  - PAM/DLP configuration (Month 2) - UNCHANGED
  - Vulnerability scanning (Month 2) - UNCHANGED
  - ~~Update CAAT with implemented controls~~ → NOT REQUIRED
  - ~~Establish Second Line Technical Coherence review~~ → NOT REQUIRED
- **Phase 3 (Month 3-4) - CORRECTED**:
  - ~~Security Governance Review (Second Line)~~ → **CAB Approval** (organizational change control)
  - ~~Third Line internal audit~~ → NOT REQUIRED (optional organizational audit)
  - SOC integration (Month 3) - UNCHANGED
  - IR tabletop exercise (Month 3) - UNCHANGED
  - ~~Continuous CAAT updates throughout deployment~~ → NOT REQUIRED

**Section 3 (Requirements) - Updated Security Requirements to v5.0 (Organizational Security Governance)**:
- **NFR-SEC-004 (UPDATED)**: Security Governance for Existing Accredited System (CRITICAL) - NOW requires CAB approval, Security Impact Assessment (organizational template), Project Security Lead appointment, Security Architecture Review (organizational security team) - REPLACES CAAT, DTSL, BIA, Second Line reviews
- **NFR-SEC-005 (UPDATED)**: Threat Modeling & Security Architecture Review (CRITICAL) - NOW requires organizational Security Architecture Review (not MOD IAA approval)
- **NFR-SEC-006**: Security Testing & Penetration Testing (CRITICAL) - UNCHANGED (organizational security requirement)
- **NFR-SEC-007 (UPDATED)**: Supply Chain Security & SBOM (HIGH) - SBOM creation remains (organizational best practice), ISN 2023/10 attestation REMOVED (not required)
- **NFR-SEC-008**: Incident Response & SOC Integration (CRITICAL) - UNCHANGED (organizational security requirement)
- **NFR-SEC-009**: Privileged Access Management & Insider Threat (HIGH) - UNCHANGED
- **NFR-SEC-010**: Data Loss Prevention for OFFICIAL-SENSITIVE (HIGH) - UNCHANGED (organizational data classification)

**Section 4 (Deliverables) - Updated to Organizational Security Governance Deliverables**:
- **Phase 1**: Security Governance Framework (organizational CAB processes), Threat Model, Security Architecture Document (for organizational Security Architecture Review), **Security Impact Assessment** (REPLACES CAAT BIA), ~~CAAT Registration~~ (REMOVED), ~~Microsoft/Hardware Vendor ISN 2023/10 Attestation~~ (REMOVED), Penetration Testing Procurement (5 deliverables - REDUCED from 7)
- **Phase 2**: SBOM (organizational best practice), Penetration Test Report, ~~CAAT Self-Assessment~~ (REMOVED), Incident Response Plan, PAM Configuration, DLP Configuration, Vulnerability Scanning Configuration, ~~Second Line Technical Coherence Process~~ (REMOVED) (6 deliverables - REDUCED from 8)
- **Phase 3**: **CAB Approval Documentation** (REPLACES Security Governance Review), ~~Third Line Internal Audit~~ (REMOVED, optional organizational audit), SOC Integration Documentation, IR Tabletop Exercise Report, ~~MOD CERT Integration~~ (CHANGED to organizational security incident reporting), ~~Continuous CAAT Update Schedule~~ (REMOVED) (4 deliverables - REDUCED from 6)

**Section 6 (Vendor Qualifications) - Updated to v4.0 (Organizational Security Governance Experience)**:
- **UPDATED MQ-11 (Mandatory)**: Organizational security governance expertise including 2+ projects with organizational CAB approval processes, Security Impact Assessments, organizational security reviews (ISO 27001, NIST CSF, NCSC Secure Design) - **REPLACES MOD CAAT/DTSL/RMADS/ISN requirements**
- **UPDATED PQ-7-9 (Preferred)**: Organizational security governance experience (10 pts - REPLACES "MOD CAAT experience"), UK cybersecurity frameworks expertise (NCSC, Cyber Essentials Plus, ISO 27001) (5 pts - REPLACES "UK Government MOD frameworks"), SOC integration experience (5 pts - REPLACES "MOD CERT integration")
- **UPDATED Team Requirements**: Added **Project Security Lead** (REPLACES DTSL - organizational security role), enhanced Security Architect requirements for organizational security governance (ISO 27001, NIST CSF, NCSC - REPLACES MOD CAAT expertise), ~~Supply Chain Security Specialist for ISN 2023/10~~ (REMOVED - standard SBOM creation only)
- **UPDATED Personnel Constraints**: UK-based resources for key security roles (organizational policy for sensitive data handling) - SC clearance requirements REMOVED (not MOD project)

**Impact Assessment (v4.0 vs v3.0)**:
- **Cost Impact**: Estimated £100K-£170K (**REDUCED** from £150K-£200K in v3.0 - MOD CAAT overhead £30K removed)
- **Timeline Impact**: 2-month security preparation (**REDUCED** from 3 months in v3.0) - Security Impact Assessment Week 2, CAB submission Week 3, Security Architecture Review Month 2, CAB approval Month 2
- **Vendor Qualification Impact**: Vendors NO LONGER need MOD CAAT/DTSL/RMADS/ISN expertise. **Simplified to organizational security governance** (ISO 27001, NIST CSF, NCSC, CAB processes). Vendors with UK Government/enterprise security experience (non-MOD) now qualified.

**Rationale for Version 4.0 Update**:
- Version 3.0 incorrectly applied MOD CAAT continuous assurance framework to this Windows 11 migration project
- **CAAT is ONLY required for NEW operational capabilities into service, NOT for changes to existing accredited systems**
- Requirements document updated to v5.0 (2025-10-28) with organizational security governance - SOW v4.0 aligns
- Correct approach: Use existing organizational CAB and security review processes for changes to existing accredited Windows 10 system
- Updated SOW ensures vendors understand **organizational security governance requirements** (not MOD-specific frameworks)

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

**Technical Assessment**:
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

**Organizational Security Governance Activities (NFR-SEC-004 through NFR-SEC-010) - CRITICAL**:
- **Security Governance Establishment (Week 1)**:
  - Assist client in appointing Project Security Lead (organizational security role responsible for security coordination)
  - Assist client in obtaining SRO (Senior Responsible Owner) approval for change to existing accredited system
  - Create security governance RACI matrix (Responsible/Accountable/Consulted/Informed for each security control)
  - Document security incident escalation matrix (when to notify CISO, organizational security team, SOC, senior leadership)
  - Define security risk acceptance authority (who can accept LOW/MEDIUM/HIGH/CRITICAL risks)
- **Threat Modeling (Month 1)**:
  - Document formal threat model using STRIDE methodology (Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, Elevation of Privilege)
  - Analyze threat actors: Nation-state APT (Advanced Persistent Threat), insider threat (malicious employee/contractor), criminal ransomware gangs, hacktivist groups
  - Identify attack vectors: Supply chain compromise (SolarWinds-style), phishing/social engineering, unpatched vulnerabilities (CVEs), misconfigured Conditional Access policies
  - Conduct attack surface analysis: InTune API endpoints, Azure AD authentication flows, OneDrive data storage, ServiceNow integration, third-party applications
  - Rate threats using DREAD methodology (Damage, Reproducibility, Exploitability, Affected Users, Discoverability)
  - Map threats to security controls and test evidence
- **Security Architecture Documentation (Month 1)**:
  - Create security architecture document including:
    - Zero Trust architecture diagram (Conditional Access, BitLocker, Defender for Endpoint flows)
    - Network architecture diagram (InTune, Azure AD, Defender, OneDrive, ServiceNow integration)
    - Data flow diagram showing organizational sensitive data flows (OFFICIAL-SENSITIVE equivalent)
    - Security control mapping (threat → control → test evidence)
    - Network integration architecture (firewall rules, organizational network connectivity)
  - Submit security architecture to organizational security team for Security Architecture Review
  - Remediate security team findings and obtain approval before Beta phase
- **Security Impact Assessment (Week 2)**:
  - Complete Security Impact Assessment using organizational template
  - Document threat landscape, security controls, data flows, compliance requirements for change to existing accredited system
  - Obtain CISO approval and submit to CAB with Security Architecture Review results
- **Penetration Testing Vendor Procurement (Month 1)**:
  - Procure reputable penetration testing vendor (CREST-certified preferred for organizational security standards)
  - Define penetration testing scope (InTune configuration, Conditional Access, Azure AD, Defender, BitLocker, OneDrive, ServiceNow, top 10 business apps)

#### **Phase 2: Design and Configuration (Months 4-6)**

**InTune Configuration**:
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

**Organizational Security Activities (Continued) - CRITICAL**:
- **Supply Chain Security & SBOM (Month 2)**:
  - Create Software Bill of Materials (SBOM) for ALL InTune-deployed applications using SPDX or CycloneDX format
  - SBOM contents: Application name/version, vendor, open source components, dependencies, known CVEs, license information
  - Establish SBOM maintenance process (update whenever applications added/updated in InTune catalog)
  - Implement automated SBOM vulnerability correlation against NVD (National Vulnerability Database) for new CVEs
  - Complete third-party risk assessments for top 100 business applications (vendor security questionnaires, ISO 27001/SOC 2 certifications)
  - Document supply chain attack threat model (SolarWinds, Kaseya, Log4Shell scenarios) and mitigations
- **Penetration Testing Execution (Month 2)**:
  - Execute penetration testing of InTune deployment with reputable vendor (CREST-certified preferred)
  - Penetration testing scope: InTune configuration bypass attempts, Conditional Access bypass, Azure AD authentication bypass (MFA), Defender for Endpoint detection evasion, BitLocker key theft, OneDrive data exfiltration, ServiceNow API security, top 10 application security
  - Deliver penetration test report with executive summary, findings, CVSS scores, remediation recommendations
  - Remediate ALL CRITICAL penetration test findings before Beta phase
  - Remediate HIGH penetration test findings before production deployment
  - Re-test CRITICAL findings to validate remediation effectiveness
- **Incident Response Planning (Month 2)**:
  - Document comprehensive incident response plan including:
    - Incident response team (roles, responsibilities, contact details)
    - Incident severity classification (P1-Critical, P2-High, P3-Medium, P4-Low)
    - Incident response phases: Detection → Containment → Eradication → Recovery → Lessons Learned
    - Escalation criteria (when to notify CISO, Project Security Lead, SOC, organizational security team, senior leadership)
    - Communication protocols (internal notifications, user communications, regulatory reporting)
  - Create incident response playbooks for common scenarios:
    - **Ransomware**: Device isolation, BitLocker key validation, OneDrive versioning recovery, user communication
    - **Data breach**: Scope determination, organizational sensitive data exposure assessment, regulatory notification, user notification
    - **Insider threat**: User access revocation, device wipe, forensic evidence preservation, HR/legal notification
    - **Supply chain compromise**: Affected application identification via SBOM, incident correlation across devices, vendor notification
    - **Phishing campaign**: User credential reset, MFA re-enrollment, security awareness training
  - Document organizational security incident reporting process (contact details, reporting criteria, reporting process)
- **Privileged Access Management (Month 2)**:
  - Review InTune administrator roles and enforce least privilege (Global Administrator, Intune Administrator, Helpdesk Administrator, Security Administrator)
  - Configure Just-In-Time (JIT) access via Azure AD Privileged Identity Management (PIM) for admin role elevation
  - Implement approval workflow for Global Administrator elevation with time-limited access (4 hours maximum)
  - Enable Azure AD Identity Protection to detect risky user behavior (impossible travel, atypical travel, anonymous IP, leaked credentials)
  - Configure Defender for Endpoint behavioral analytics for insider threat detection (mass file deletion, unusual data exfiltration, lateral movement)
- **Data Loss Prevention (DLP) Deployment (Month 2)**:
  - Deploy DLP policies for OneDrive (block external sharing of organizationally sensitive documents)
  - Deploy DLP policies for Exchange Online (block/encrypt emails with sensitive data to external recipients)
  - Deploy DLP policies for Endpoints via Defender (block USB transfers, block uploads to personal cloud storage)
  - Configure DLP sensitive information types (organizational sensitive data patterns, security clearance keywords if applicable, classification markings)
  - Implement DLP policy tips to warn users before violations
  - Establish weekly DLP reporting to CISO (policy violations, top violators, data types at risk)
- **Continuous Vulnerability Scanning (Month 2)**:
  - Enable Defender Vulnerability Management on all Windows 11 devices
  - Configure weekly vulnerability scans during Beta/production deployment, daily scans post-Live
  - Establish vulnerability remediation SLAs: CRITICAL CVEs 7 days, HIGH CVEs 30 days, MEDIUM CVEs 90 days
  - Implement weekly vulnerability reporting to Project Security Lead showing open CVEs by severity
  - Document CVE exception process for accepting risk on un-remediatable vulnerabilities (requires CISO approval)

#### **Phase 3: Testing and Pilot (Months 7-9)**

**Application and Device Testing**:
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

**Organizational Security Activities (Continued) - CRITICAL**:
- **CAB Approval Documentation (Month 2-3)**:
  - Complete Security Impact Assessment for CAB submission
  - Prepare comprehensive CAB submission package including:
    - Security Impact Assessment (threat landscape, security controls, data flows, compliance)
    - Threat Model (STRIDE methodology)
    - Security Architecture Review results (organizational security team approval)
    - Penetration testing results with CRITICAL/HIGH findings remediated
    - Risk Assessment with residual risks documented
  - Submit to CAB by Week 3 (Month 1)
  - Address CAB questions and obtain formal CAB approval before pilot deployment (Month 2-3)
- **SOC Integration (Month 3)**:
  - Integrate InTune alerts with Security Operations Centre (SOC) or establish 24/7 security monitoring capability
  - Forward InTune alerts to SOC: device compliance violations, policy failures, enrollment failures
  - Forward Defender for Endpoint alerts to SOC: malware detections, suspicious behavior, attack surface reduction (ASR) rule violations
  - Forward Azure AD Conditional Access alerts to SOC: authentication failures, impossible travel, sign-in risk detections
  - Integrate ServiceNow security incidents with SOC ticketing system
  - Configure SOC monitoring SLAs: P1 (CRITICAL) 15-minute response, P2 (HIGH) 1-hour response, P3 (MEDIUM) 4-hour response
  - Test SOC escalation workflows and incident response playbooks
- **Incident Response Tabletop Exercise (Month 3)**:
  - Conduct tabletop exercise simulating ransomware incident affecting Windows 11 devices
  - Validate incident response team roles and responsibilities
  - Test escalation procedures (CISO, Project Security Lead, SOC, organizational security team notification)
  - Validate incident response playbook effectiveness (device isolation, BitLocker recovery, OneDrive versioning)
  - Measure incident response metrics: Mean Time to Detect (MTTD) target <1 hour, Mean Time to Contain (MTTC) target <4 hours
  - Document lessons learned and update incident response plan based on exercise findings

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
- **MOD CAAT registration/accreditation**: NOT REQUIRED - This is change to existing accredited system, not new operational capability

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
- **Change Advisory Board (CAB)**: CAB meetings for change approval and go/no-go decisions on migration waves
- **Test Lab Infrastructure**: Client provides Azure Virtual Desktop subscription or physical test devices for application testing
- **Network Bandwidth**: Client ensures adequate network bandwidth for Windows 11 downloads and OneDrive sync (50-100 Mbps)
- **Organizational Security Team Access**: Access to organizational security team for Security Architecture Review and CAB approval

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

**Non-Functional Requirements - Performance (2 total)**:
- NFR-P-001: Autopilot Provisioning Time <30 minutes (MUST_HAVE)
- NFR-P-002: Windows 11 Upgrade Duration <90 minutes (MUST_HAVE)

**Non-Functional Requirements - Security (10 total - CRITICAL)**:
- NFR-SEC-001: Authentication and MFA (100% MFA enforcement) (CRITICAL)
- NFR-SEC-002: Data Encryption (BitLocker AES-256, TLS 1.2+) (CRITICAL)
- NFR-SEC-003: Endpoint Threat Protection (Defender for Endpoint EDR) (CRITICAL)
- **NFR-SEC-004: Security Governance for Existing Accredited System** (CRITICAL - CAB APPROVAL BLOCKER)
  - Appoint Project Security Lead and obtain SRO approval by Week 1
  - Establish security governance framework (RACI, escalation, risk acceptance)
  - Complete Security Impact Assessment using organizational template by Week 2
  - Obtain CAB approval before pilot deployment (Month 2-3)
- **NFR-SEC-005: Threat Modeling & Security Architecture Review** (CRITICAL - CAB APPROVAL BLOCKER)
  - Document formal threat model using STRIDE/DREAD by Month 1
  - Analyze threat actors: Nation-state APT, insider threat, ransomware, hacktivists
  - Create security architecture document with Zero Trust diagrams
  - Obtain organizational Security Architecture Review approval before Beta phase
- **NFR-SEC-006: Security Testing & Penetration Testing** (CRITICAL - CAB APPROVAL BLOCKER)
  - Procure reputable penetration testing vendor (CREST-certified preferred) by Month 1
  - Complete penetration testing by Month 2, remediate ALL CRITICAL findings
  - Implement continuous vulnerability scanning with CVE remediation SLAs
- **NFR-SEC-007: Supply Chain Security & SBOM** (HIGH - ORGANIZATIONAL BEST PRACTICE)
  - Create Software Bill of Materials (SBOM) for all InTune applications by Month 2
  - Complete third-party risk assessments for top 100 applications by Month 3
- **NFR-SEC-008: Incident Response & SOC Integration** (CRITICAL - ORGANIZATIONAL REQUIREMENT)
  - Document incident response plan with 5 playbooks by Month 2
  - Establish SOC integration with 24/7 monitoring by Month 3
  - Integrate with organizational security incident reporting process
- **NFR-SEC-009: Privileged Access Management & Insider Threat** (HIGH)
  - Implement JIT access via Azure AD PIM for InTune administrators
  - Enable Azure AD Identity Protection for insider threat detection
  - Enforce least privilege with dedicated admin accounts
- **NFR-SEC-010: Data Loss Prevention for Organizationally Sensitive Data** (HIGH)
  - Deploy DLP policies for OneDrive, Email, Endpoints by Month 2
  - Detect organizationally sensitive data patterns
  - Block external sharing of sensitive documents

**Non-Functional Requirements - Compliance (2 total)**:
- NFR-C-001: Data Privacy Compliance (GDPR/CCPA) (CRITICAL)
- NFR-C-002: Audit Logging (7-year retention) (CRITICAL)

**Non-Functional Requirements - Availability (2 total)**:
- NFR-A-001: InTune Service Availability (99.9% SLA) (HIGH)
- NFR-A-002: Business Continuity During Migration (<2 hr downtime) (CRITICAL)

**Non-Functional Requirements - Usability (1 total)**:
- NFR-U-001: User Satisfaction (>80%) and Accessibility (WCAG 2.1) (MUST_HAVE)

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

**TC-6**: Solution MUST obtain organizational CAB approval before pilot deployment (2-month security preparation timeline).

---

## 4. Deliverables

### 4.1 Phase 1 Deliverables (Assessment and Planning)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Hardware Assessment Report** | Comprehensive assessment of all devices with compatibility status (Compatible, Upgradeable, Requires Replacement) | Excel/CSV + PDF Report | Month 3 | All devices categorized with cost estimates and timeline recommendations |
| **Application Compatibility Report** | Inventory of top 100 apps with Windows 11 compatibility status, remediation plans for incompatible apps | Excel + PDF Report | Month 3 | All business-critical apps tested with documented status |
| **Migration Project Plan** | Detailed project plan with phases, milestones, wave schedule, resource allocation, risk register | MS Project or PDF | Month 3 | Approved by Project Owner and Enterprise Architect |
| **InTune Architecture Design (HLD)** | High-level architecture including InTune policies, Autopilot configuration, security baseline, Conditional Access | PDF + C4 Diagrams | Month 4 | Approved by Architecture Review Board |

### 4.1.1 Phase 1 Organizational Security Deliverables (CRITICAL - CAB APPROVAL BLOCKERS)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Security Governance Framework** | Security governance RACI matrix, incident escalation matrix, risk acceptance authority matrix | PDF Document | Week 1 | Project Security Lead appointed, SRO approval obtained, governance framework documented |
| **Security Impact Assessment** | Security Impact Assessment using organizational template with threat landscape, security controls, data flows, compliance requirements, risk mitigation | PDF Document | Week 2 | Completed per organizational template, CISO approved, ready for CAB submission |
| **Threat Model Document** | Formal threat model using STRIDE/DREAD methodology with threat actors, attack vectors, attack surface analysis, threat ratings | PDF Document + Threat Modeling Tool Export | Month 1 | 20+ threats identified and rated, mitigations mapped to security controls, approved by Project Security Lead |
| **Security Architecture Document** | Security architecture with Zero Trust diagrams, network architecture, data flow diagrams, security control mapping | PDF Document + Visio/Draw.io Diagrams | Month 1 | Submitted to organizational security team for Security Architecture Review, includes all diagrams and control mappings |
| **Security Architecture Review Approval** | Formal approval from organizational security team for security architecture | PDF Document or Email Confirmation | Month 2 | Security Architecture Review approval obtained with 0 CRITICAL findings remaining, approval to proceed to Beta |
| **Penetration Testing Procurement** | Procurement of reputable penetration testing vendor (CREST-certified preferred) with defined scope | Contract + SOW | Month 1 | Pen testing vendor contracted, scope agreed (InTune, Conditional Access, Azure AD, Defender, BitLocker, OneDrive, ServiceNow, top 10 apps) |

### 4.2 Phase 2 Deliverables (Design and Configuration)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **InTune Configuration Documentation** | Detailed documentation of all InTune policies (compliance, configuration profiles, apps, update rings) | Markdown/PDF | Month 6 | All policies documented with screenshots and policy JSON exports |
| **Security Baseline Configuration** | Microsoft Security Baseline for Windows 11 applied with customizations documented | InTune Policy Export + PDF | Month 6 | Security baseline deployed and compliance monitored |
| **Autopilot Deployment Profiles** | Configured Autopilot profiles for User-Driven, Self-Deploying, White Glove scenarios | InTune Configuration | Month 6 | Profiles tested successfully with test devices |
| **GPO Migration Report** | GPO to InTune policy migration status using Group Policy Analytics | Excel + PDF Report | Month 6 | All critical GPOs converted or documented with alternatives |
| **Application Packaging** | Win32 app packages for InTune deployment (top 20 business-critical apps) | .intunewin files + documentation | Month 6 | Apps deploy successfully in test environment |

### 4.2.1 Phase 2 Organizational Security Deliverables (CRITICAL - CAB APPROVAL BLOCKERS)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Software Bill of Materials (SBOM)** | SBOM for ALL InTune-deployed applications in SPDX or CycloneDX format with vulnerability correlation | SPDX/CycloneDX JSON + PDF Report | Month 2 | SBOM created for 100% of InTune applications, automated CVE scanning configured |
| **Third-Party Risk Assessment Report** | Security questionnaires and risk assessments for top 100 business applications | Excel + PDF Report | Month 3 | 100% of top 100 apps assessed, ISO 27001/SOC 2 certifications verified, high-risk apps identified |
| **Penetration Test Report** | Comprehensive penetration test report from reputable vendor with findings, CVSS scores, remediation recommendations | PDF Report from Pen Testing Vendor | Month 2 | Penetration test completed, ALL CRITICAL findings remediated and re-tested, HIGH findings remediation plan approved |
| **Penetration Test Remediation Evidence** | Evidence of CRITICAL finding remediation with re-test validation | PDF Document + Screenshots | Month 2 | 100% of CRITICAL findings remediated, re-test confirms fixes effective, approval to proceed to Beta |
| **Incident Response Plan** | Comprehensive incident response plan with 5 playbooks (ransomware, data breach, insider threat, supply chain, phishing) | PDF Document | Month 2 | IR plan approved by CISO, playbooks documented, IR team assigned, organizational security incident reporting documented |
| **Privileged Access Management (PAM) Configuration** | Azure AD PIM configuration for InTune administrators with JIT access, Identity Protection enabled | InTune/Azure AD Configuration + PDF Documentation | Month 2 | PIM configured for all privileged roles, JIT access tested, Identity Protection alerts forwarded to SOC |
| **Data Loss Prevention (DLP) Configuration** | DLP policies deployed for OneDrive, Email, Endpoints detecting organizationally sensitive data | InTune/Microsoft 365 Policy Export + PDF Documentation | Month 2 | DLP policies deployed and tested, external sharing blocked, weekly DLP reports configured to CISO |
| **Continuous Vulnerability Scanning Configuration** | Defender Vulnerability Management configured with CVE remediation SLAs (CRITICAL 7d, HIGH 30d, MEDIUM 90d) | Defender for Endpoint Configuration + PDF Documentation | Month 2 | Weekly vulnerability scans operational, CVE remediation SLAs configured, weekly reporting to Project Security Lead |

### 4.3 Phase 3 Deliverables (Testing and Pilot)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Application Test Results** | Test results for top 100 apps with pass/fail status, error logs, screenshots | Excel + PDF Report | Month 8 | All apps tested with documented compatibility status |
| **Copilot+ PC Pilot Report** | Pilot deployment results (50-100 devices), user feedback, ARM64 compatibility if applicable | PDF Report | Month 8 | Pilot success criteria met (>80% satisfaction, <5% app issues) |
| **Pilot Migration Report** | Results from IT staff pilot (50-100 devices), issues encountered, resolutions, lessons learned | PDF Report | Month 9 | Pilot success criteria met (zero P1/P2 incidents, >80% satisfaction) |
| **Helpdesk Training Materials** | Training decks, knowledge base articles, troubleshooting guides for helpdesk staff | PowerPoint + Markdown | Month 9 | Helpdesk trained and certified on Windows 11/InTune support |
| **User Communication Templates** | Email templates, FAQ, training materials ("What's New in Windows 11"), quick reference cards | HTML/PDF | Month 9 | Approved by Change Management Lead and Communications team |
| **Runbook Documentation** | Operational runbooks for device provisioning, migration, rollback, incident response | Markdown/PDF | Month 9 | Runbooks tested successfully during pilot phase |

### 4.3.1 Phase 3 Organizational Security Deliverables (CRITICAL - CAB APPROVAL REQUIREMENT)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **CAB Submission Package** | Complete CAB submission package including Security Impact Assessment, Threat Model, Security Architecture Review approval, Penetration Test results, Risk Assessment | PDF Document Package | Week 3 (Month 1) | CAB submission package complete, all required sections included, submitted to CAB for review |
| **CAB Approval Documentation** | Formal CAB approval for Windows 11 migration to proceed to pilot deployment | PDF Document or Meeting Minutes | Month 2-3 | CAB approval obtained, conditions documented (if any), approval to proceed to pilot |
| **SOC Integration Documentation** | SOC integration configuration with alert forwarding from InTune, Defender, Azure AD, ServiceNow to SOC with monitoring SLAs | PDF Documentation + Network Diagrams | Month 3 | SOC integration operational, 24/7 monitoring confirmed, SOC SLAs agreed (P1 15min, P2 1hr, P3 4hr) |
| **Incident Response Tabletop Exercise Report** | Results from ransomware tabletop exercise with team performance, lessons learned, IR plan updates | PDF Report | Month 3 | Tabletop exercise completed, all IR team members participated, MTTD/MTTC targets met, IR plan updated based on findings |

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
| **Phase 1: Assessment and Planning** | 3 months | Q4 2024 - Q1 2025 | Hardware assessment, app inventory, InTune architecture design, Security Impact Assessment, CAB submission |
| **Phase 2: Design and Configuration** | 3 months | Q1 2025 - Q2 2025 | InTune policies, Autopilot, security baseline, app packaging, CAB approval |
| **Phase 3: Testing and Pilot** | 3 months | Q2 2025 - Q3 2025 | App testing, Copilot+ PC pilot, IT staff pilot, helpdesk training |
| **Phase 4: Production Migration** | 13 months | Q3 2025 - Q1 2026 | Early adopters (10%), production waves (85%), stragglers (5%) |
| **Phase 5: Configuration Manager Decommission** | 6 months | Q4 2025 - Q2 2026 | Workload cutover, infrastructure shutdown |
| **Phase 6: Knowledge Transfer and Closure** | 2 months | Q2 2026 | Training, documentation, final report, warranty begins |

### 5.2 Key Milestones and Gates

| Milestone | Target Month | Deliverables Due | Exit Criteria | Approval Authority |
|-----------|--------------|------------------|---------------|-------------------|
| **M1: Project Kickoff** | Month 1 | Project plan, kickoff deck | Kickoff meeting held, teams introduced, access granted | Project Owner |
| **M1A: Security Governance Established** | Week 1 | Security Governance Framework, Project Security Lead appointed, SRO approval | Security governance documented, Project Security Lead appointed, SRO approval obtained | Project Owner + CISO |
| **M1B: CAB Submission** | Week 3 | Security Impact Assessment, Threat Model, Security Architecture Document, Penetration Test Procurement | CAB submission package complete, submitted to CAB for review | Project Owner + CISO |
| **M2: Assessment Complete** | Month 3 | Hardware report, app report, migration plan | All devices and apps assessed, plan approved | Project Owner + Enterprise Architect |
| **M2A: CAB Approval** | Month 2-3 | CAB Approval Documentation, Security Architecture Review approval, Penetration Test results | CAB approval obtained, approval to proceed to pilot | Change Advisory Board |
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

**MQ-11 - Organizational Security Governance Experience (CRITICAL - CORRECTED v4.0)**: Vendor must demonstrate organizational security governance experience (NOT MOD-specific):
- [ ] Minimum **2 completed enterprise projects** with organizational CAB approval processes for changes to existing accredited systems (past 3 years)
- [ ] Experience with **organizational Security Impact Assessments** and security review processes (ISO 27001, NIST CSF, NCSC Secure Design equivalent frameworks)
- [ ] Demonstrable experience with **reputable penetration testing vendor procurement and coordination** (CREST-certified or equivalent preferred)
- [ ] Experience with **Supply Chain Security** including SBOM creation (SPDX or CycloneDX format) for organizational security best practices
- [ ] At least **1 Security Architect with ISO 27001 / NIST CSF / NCSC experience** or demonstrable experience supporting organizational security governance and CAB approval processes

**v4.0 CLARIFICATION:** MQ-11 NO LONGER requires MOD CAAT/DTSL/RMADS/ISN 2023/10 experience. Focus is on **organizational security governance** (CAB processes, Security Impact Assessments, organizational security reviews). Vendors with UK Government/enterprise security experience (non-MOD) now qualified.

**Failure to meet MQ-11 is grounds for automatic disqualification as the project requires organizational CAB approval and security governance.**

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

**PQ-7 (UPDATED v4.0)**: **Organizational Security Governance Advanced Expertise** - Vendor has successfully delivered enterprise projects with **CAB approval and organizational security reviews** (ISO 27001, NIST CSF, NCSC frameworks) with documented Security Impact Assessments and Security Architecture Reviews (10 bonus points - HIGHLY VALUED)

**PQ-8 (UPDATED v4.0)**: **UK Cybersecurity Frameworks Expertise** - Demonstrable experience with UK cybersecurity frameworks such as NCSC Cyber Assessment Framework, Cyber Essentials Plus, ISO 27001, or equivalent organizational security standards (5 bonus points)

**PQ-9 (UPDATED v4.0)**: **Incident Response and SOC Integration Experience** - Prior experience integrating Microsoft 365/Azure/InTune with enterprise SOCs or organizational security monitoring (5 bonus points)

**v4.0 CLARIFICATION:** PQ-7/8/9 NO LONGER require MOD-specific experience (CAAT, MOD CERT, JSP 440). Focus is on **organizational security governance** and UK cybersecurity frameworks (NCSC, Cyber Essentials Plus, ISO 27001).

### 6.3 Team Requirements

**Minimum Team Composition** (Vendor must propose adequate team size):
- **1 Solution Architect**: Senior (10+ years experience), Microsoft Certified Endpoint Administrator, leads technical design
- **1 Security Architect**: Experienced with Zero Trust, Conditional Access, Microsoft Defender for Endpoint, **organizational security governance frameworks** (ISO 27001, NIST CSF, NCSC), CAB processes, Security Impact Assessments, threat modeling (STRIDE/DREAD) (CRITICAL ROLE - UPDATED v4.0)
- **1 Project Security Lead**: Security professional responsible for security coordination, liaison with CISO/organizational security team, Security Impact Assessment preparation, CAB coordination, penetration testing coordination (CRITICAL ROLE - UPDATED v4.0 - REPLACES DTSL)
- **1 Technical Lead**: (8+ years experience), leads InTune configuration and Autopilot deployment
- **2-4 Senior InTune Engineers**: (5+ years experience), responsible for policy configuration, app packaging, testing
- **2-3 Migration Engineers**: (3+ years experience), execute migration waves, troubleshooting, user support
- **1 QA Lead**: Responsible for application compatibility testing, test lab management
- **1-2 QA Engineers**: Execute application testing, document results
- **1 Change Management Lead**: Develops communication plan, training materials, manages user adoption
- **1 Technical Writer**: Creates documentation, runbooks, knowledge base articles
- **1 Supply Chain Security Specialist (OPTIONAL - v4.0)**: Responsible for SBOM creation, third-party risk assessments (organizational best practice, not mandatory)

**v4.0 CLARIFICATION:** Team requirements simplified. NO LONGER requires MOD-specific roles (DTSL, Supply Chain Security Specialist for ISN 2023/10). **Project Security Lead** replaces DTSL with focus on organizational security governance coordination.

**Key Personnel Requirements**:
- **Solution Architect and Technical Lead** must be dedicated **50% minimum** to this project
- **Security Architect and Project Security Lead** must be dedicated **40% minimum** to this project (CRITICAL for CAB approval)
- **Resumes for all key personnel** (Solution Architect, Technical Lead, Security Architect, Project Security Lead, Change Management Lead) must be included in proposal
- **Key personnel cannot be changed** without client approval; substitutions require equivalent qualifications
- **On-site presence**: Solution Architect, Technical Lead, Security Architect, and Project Security Lead required on-site during critical phases (Pilot, first 3 production waves, Go-Live, Security Architecture Reviews, CAB meetings, penetration testing)

**Onshore/Offshore Mix**:
- Minimum **70% onshore resources** (organizational policy for sensitive data handling)
- **Solution Architect, Technical Lead, Security Architect, Project Security Lead must be UK-based** (CRITICAL for organizational security governance and in-person attendance at CAB meetings/Security Architecture Reviews)
- **v4.0 CLARIFICATION:** SC clearance NO LONGER required (not MOD project). UK-based resources required for security governance coordination only.

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
- Evidence of mandatory qualifications (MQ-1 through MQ-11)
- Preferred qualifications (PQ-1 through PQ-9) with supporting evidence

#### **Section 3: Understanding of Requirements** (15 pages max)
- Demonstrate deep understanding of Windows 10 to Windows 11 migration challenges
- Demonstrate understanding of InTune cloud-native transformation and Configuration Manager decommissioning
- Identify key risks and proposed mitigation strategies
- Demonstrate understanding of client's 18 architecture principles and how solution aligns
- **v4.0 UPDATE:** Demonstrate understanding of organizational security governance requirements (CAB approval, Security Impact Assessment, Security Architecture Review) rather than MOD CAAT
- Address Copilot+ PC strategy and ARM64 application compatibility considerations
- Identify any ambiguities or gaps in requirements with recommended clarifications

#### **Section 4: Technical Solution and Approach** (40 pages max)
- **Migration Methodology**: Phased rollout approach (pilot, early adopters, production waves)
- **Hardware Assessment Strategy**: Approach to assessing 1000+ devices for Windows 11 compatibility
- **Application Compatibility Testing**: Test lab setup, testing methodology, remediation approach
- **InTune Architecture**: High-level design (HLD) with C4 Context and Container diagrams
- **Security and Zero Trust Design**: Conditional Access, Defender for Endpoint, BitLocker, device compliance
- **Organizational Security Governance Approach (v4.0 UPDATE)**: CAB approval strategy, Security Impact Assessment preparation, Security Architecture Review coordination, penetration testing approach
- **Windows Autopilot Configuration**: User-Driven, Self-Deploying, White Glove scenarios
- **Data Protection Strategy**: OneDrive Known Folder Move, backup verification, rollback capability
- **Configuration Manager Co-Management and Decommissioning**: Workload transition plan
- **Monitoring and Compliance**: Migration dashboard, real-time reporting, compliance enforcement
- **Change Management and User Training**: Communication plan, training materials, helpdesk enablement
- **Risk Management**: Top 10 risks with detailed mitigation plans
- **Quality Assurance**: Testing strategy, acceptance criteria validation

#### **Section 5: Project Management and Delivery** (15 pages max)
- **Project Methodology**: Agile, Waterfall, or Hybrid approach
- **Project Phases and Timeline**: Detailed timeline with milestones aligned to Section 5.2 (including 2-month security preparation for CAB approval)
- **Wave Planning**: Strategy for scheduling 500-1000 users per wave across 20 waves
- **Communication and Governance**: Status reporting, CAB meetings, escalation procedures
- **Issue and Risk Management**: Issue tracking, P1/P2 incident response, rollback procedures
- **Change Management Process**: How change requests will be handled (scope, cost, schedule)
- **Tools and Platforms**: Project management tools (Jira, MS Project, etc.), collaboration tools (Teams, SharePoint)

#### **Section 6: Team Structure and Resumes** (20 pages max)
- **Proposed Team Structure**: Org chart with roles, responsibilities, allocation %
- **Key Personnel Resumes**: Solution Architect, Technical Lead, Security Architect, Project Security Lead (v4.0 - REPLACES DTSL), Change Management Lead (1-2 pages each)
- **Team Member Certifications**: List all relevant Microsoft and security certifications with certification IDs
- **Onshore/Offshore Model**: Breakdown of onshore vs. offshore resources by role
- **Availability and Start Date**: When proposed team can begin work

#### **Section 7: Experience and References** (15 pages max)
- **Case Studies**: Minimum **3 detailed case studies** of Windows 11 migration projects (1000+ devices each) including:
  - Client name, industry, size (number of devices migrated)
  - Project scope and objectives
  - Challenges encountered and how they were overcome
  - Technologies used (InTune, Autopilot, Defender for Endpoint, etc.)
  - **v4.0 UPDATE:** Security governance approach used (CAB approval, Security Impact Assessments, Security Architecture Reviews preferred - NOT MOD CAAT/DTSL)
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
- **Key Assumptions**: Assumptions made in developing proposal (e.g., client provides Azure AD admin access, hardware budget approved, organizational CAB process documented)
- **Dependencies on Client**: What client organization must provide (resources, access, decisions, approvals, CAB meeting schedule)
- **External Dependencies**: Dependencies on Microsoft, OEM vendors, third-party tools
- **Identified Risks**: Top 10 project risks with probability, impact, and mitigation strategies

### 7.2 Cost Proposal Format (SEPARATE DOCUMENT)

**Cost proposal must be provided in a SEPARATE sealed PDF** to allow for technical evaluation independent of cost.

Cost proposal must include:

**7.2.1 Fixed Price (Preferred)**
- **Total fixed price** for all deliverables and services outlined in Section 2.1 (Vendor Responsibilities)
- **Payment Milestones** tied to deliverables and milestones from Section 5.2
- **Retainage**: 10% held until 30 days after project closure to ensure warranty support

**7.2.2 Time and Materials (Alternative if Fixed Price not feasible)**
- **Hourly or daily rates by role**
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

**v4.0 NOTE:** Security costs should be **£20K-£30K lower** than v3.0 estimates due to removal of MOD CAAT overhead (no CAAT registration fees, no DTSL training, no ISN 2023/10 continuous attestation management).

**7.2.4 Ongoing Support and Maintenance (Optional)**
- **90-Day Warranty Support** (included in base price): Defect resolution at no additional cost
- **Post-Warranty Support** (optional, priced separately): Annual support and maintenance cost for InTune administration

**7.2.5 Exclusions and Out-of-Scope Costs**
- **Hardware Procurement**: Client responsible
- **Microsoft Licensing**: Client has existing licenses
- **Test Lab Infrastructure**: Client provides
- **Network Upgrades**: Client responsible unless identified as migration blocker
- **MOD CAAT/DTSL costs**: NOT APPLICABLE (v4.0 - removed)

**7.2.6 Travel and Expenses**
- Travel policy (e.g., coach class airfare, standard hotel rates, per diem)
- Estimated travel costs per phase

**7.2.7 Payment Terms and Invoicing**
- **Payment Terms**: Net 30 days from invoice date
- **Invoicing Schedule**: Upon milestone completion and client acceptance sign-off
- **Currency**: [USD | EUR | GBP]
- **Validity Period**: Pricing valid for 90 days from proposal submission date

**7.2.8 Assumptions Affecting Pricing**
- Client provides Azure AD admin access and InTune tenant access within 2 weeks of project start
- Client approves hardware procurement budget
- Client provides CAB meetings with decision authority for go/no-go decisions
- Client helpdesk handles Tier 1 support; vendor provides Tier 2/3 escalation only
- No more than 20% of applications require custom remediation
- Network bandwidth adequate (50-100 Mbps)
- **v4.0 UPDATE:** Organizational CAB process documented and accessible (2-month approval timeline achievable)

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

**Late Proposals**: Will **NOT** be accepted under any circumstances.

---

## 8. Evaluation Criteria

### 8.1 Evaluation Process

Proposals will be evaluated in **three phases**:

**Phase 1: Mandatory Qualifications Check (Pass/Fail)**
- Evaluation team verifies all mandatory qualifications (MQ-1 through MQ-11)
- **Vendors failing any mandatory qualification are disqualified**
- **v4.0 UPDATE:** MQ-11 focuses on organizational security governance experience (CAB, Security Impact Assessments), NOT MOD CAAT/DTSL

**Phase 2: Technical Evaluation (0-100 points)**
- Qualified vendors scored on technical merit (cost proposals remain sealed)
- Scoring based on Section 8.2 criteria
- **Top 3-5 vendors** shortlisted for Phase 3

**Phase 3: Cost Evaluation and Final Selection**
- Cost proposals opened only for shortlisted vendors
- Combined technical + cost scoring (70% technical, 30% cost)
- **Shortlisted vendors invited for 2-hour presentations**
- **Final selection** based on best value (not necessarily lowest price)

### 8.2 Technical Evaluation Criteria (100 points total)

| Criteria | Weight | Max Points | Evaluation Focus |
|----------|--------|------------|------------------|
| **Technical Solution and Approach** | 35% | 35 | Migration methodology, InTune architecture quality, Zero Trust security design, **organizational security governance approach (v4.0)**, Autopilot configuration, data protection strategy, monitoring/compliance approach, risk mitigation depth, innovation and best practices |
| **Project Management and Delivery** | 20% | 20 | Delivery methodology rigor, realistic timeline (including 2-month CAB approval), wave planning strategy, CAB governance coordination, issue/risk management, change management process, communication plan quality |
| **Team Qualifications and Experience** | 25% | 25 | Team expertise and certifications, key personnel qualifications (Solution Architect, Technical Lead, Security Architect, **Project Security Lead - v4.0**), adequate team size and allocation, onshore/offshore balance, proven delivery capability |
| **Relevant Experience and References** | 15% | 15 | Windows 11 migration case studies (quality and relevance), **organizational security governance experience (CAB, Security Impact Assessments preferred - v4.0)**, client references (verifiable and positive), industry-specific experience, Microsoft partnership status, awards/recognition |
| **Understanding of Requirements** | 5% | 5 | Demonstrated understanding of client's challenges, architecture principles alignment, **organizational security governance requirements understanding (v4.0)**, thoughtful questions and risk identification, clarity and completeness of proposal |
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

**Value Considerations**:
- Client seeks **best value** (technical quality + reasonable cost), not necessarily lowest price
- **Unrealistically low bids** may be rejected as non-credible or high-risk
- **v4.0 UPDATE:** Vendor cost proposals should be **£20K-£30K lower** than v3.0 SOW due to removal of MOD CAAT overhead

### 8.4 Vendor Presentations (Shortlisted Vendors Only)

**Format**:
- **Duration**: 2 hours total (1 hour presentation, 1 hour Q&A)
- **Audience**: Evaluation committee (Executive Sponsor, Project Owner, Enterprise Architect, Security Architect, IT Operations, Procurement, CISO)

**Required Attendees**:
- **Vendor side**: Solution Architect, Technical Lead, Security Architect, Project Security Lead (v4.0 - REPLACES DTSL) (max 5 people)

**Presentation Content** (1 hour):
- **Company overview** (5 min)
- **Team introductions** (10 min): Key personnel, qualifications, organizational security governance experience
- **Technical approach deep-dive** (30 min): Migration methodology, InTune architecture (live demo if possible), security design, **CAB approval strategy (v4.0)**, risk mitigation
- **Project management approach** (10 min): Timeline (including 2-month security prep), governance, communication
- **Q&A** (5 min)

**Q&A Session** (1 hour):
- Evaluation committee asks detailed technical and project management questions
- Scenario-based questions
- Deep dive on cost proposal assumptions and pricing

### 8.5 Selection Decision and Notification

**Decision Authority**: [Procurement Committee | CTO/CIO | Executive Sponsor]

**Selection Criteria** (in priority order):
1. **Highest combined technical + cost score** (70% technical, 30% cost)
2. **Confidence in vendor's ability to deliver** based on case studies, references, and presentation
3. **Cultural fit and communication** quality
4. **Risk assessment**: Financial stability, team availability, realistic timeline

**Selection Timeline**:
- **Technical evaluation complete**: [DATE + 8 weeks]
- **Shortlist notification**: [DATE + 8 weeks]
- **Vendor presentations**: [DATE + 9 weeks]
- **Final selection decision**: [DATE + 10 weeks]

**Notification**:
- **Selected vendor**: Notified by phone/email within 24 hours
- **Non-selected vendors**: Notified by email

---

## 9. Contract Terms and Conditions

### 9.1 Contract Type

**Preferred**: **Fixed Price** contract with milestone-based payments tied to deliverable acceptance

**Alternative**: **Time and Materials with Not-to-Exceed (NTE) cap** if Fixed Price not feasible

### 9.2 Payment Terms

**Payment Schedule** (Fixed Price example):
| Milestone | Deliverable | Payment % |
|-----------|-------------|-----------|
| M1A: Security Governance Established | Security Governance Framework, Project Security Lead appointed | 5% |
| M2: Assessment Complete | Hardware report, app report, migration plan | 10% |
| M2A: CAB Approval | CAB Approval Documentation | 5% |
| M3: Design Approval | InTune HLD, security baseline, Autopilot profiles | 15% |
| M4: Pilot Success | Pilot report, helpdesk training, runbooks | 10% |
| M5: Early Adopters Complete | 10% of users migrated | 15% |
| M6: 50% Migration Complete | Half of users migrated, compliance report | 20% |
| M7: 95% Migration Complete | Migration substantially complete | 10% |
| M8: ConfigMgr Decommissioned | ConfigMgr infrastructure removed | 5% |
| M9: Project Closure | Final report, training, documentation | 5% |
| **TOTAL** | | **100%** |

**Retainage**: 10% of total contract value held for 30 days after project closure to ensure warranty support quality.

**Invoicing**:
- Vendor invoices upon milestone completion and deliverable submission
- Client has **5 business days** to review deliverables
- **Payment within 30 days** of invoice date (after deliverable acceptance)

### 9.3 Acceptance Criteria

Each deliverable must meet defined acceptance criteria (see Section 4 Deliverables table).

**Acceptance Process**:
1. **Vendor submits deliverable**
2. **Client reviews within 5 business days**: Accept | Conditional Accept | Reject
3. **Re-review**: If rejected, vendor revises and resubmits within 10 business days
4. **Escalation**: If acceptance cannot be reached after 2 rejection cycles, escalate to Executive Sponsor

**Acceptance Criteria Examples**:
- **Security Impact Assessment**: Completed per organizational template, CISO approved, ready for CAB submission
- **CAB Approval Documentation**: Formal CAB approval obtained, conditions documented
- **Pilot Migration**: Success criteria met (zero P1/P2 incidents, >80% user satisfaction, all business-critical apps functional)

### 9.4 Warranty and Support

**90-Day Warranty Period** (included in base price):
- Begins after **Milestone M9 (Project Closure)** sign-off
- **Defects identified during warranty will be fixed at no additional cost**
- **Defect** defined as: Deliverable does not meet acceptance criteria, InTune configuration error, documentation inaccuracy
- **Not covered**: New requirements, scope changes, issues caused by client modifications, Microsoft platform bugs

**Warranty Support SLA**:
| Severity | Definition | Response Time | Resolution Target |
|----------|-----------|---------------|-------------------|
| **Severity 1 (Critical)** | Multiple users unable to work, system down | 2 hours | 8 hours |
| **Severity 2 (High)** | Major feature broken, workaround exists | 4 hours | 24 hours |
| **Severity 3 (Medium)** | Minor issue, no productivity impact | 1 business day | 5 business days |
| **Severity 4 (Low)** | Documentation error, enhancement request | 3 business days | Best effort |

### 9.5 Intellectual Property Rights

**Work Product Ownership**:
- **All custom-developed work product** becomes property of [ORGANIZATION_NAME] upon final payment
- **Vendor retains ownership** of pre-existing IP, reusable frameworks, tools, and methodologies
- **Vendor grants [ORGANIZATION_NAME] perpetual, irrevocable, royalty-free license** to use any vendor pre-existing IP embedded in deliverables

**Open Source Software**:
- Vendor must **disclose all open-source components** used in scripts, tools, or configurations
- Vendor must provide **open-source license compliance report**
- **GPL-licensed components** require explicit client approval before use

### 9.6 Data and Security

**Data Ownership**:
- **Client retains ownership of ALL client data**
- Vendor is **custodian only**; must not use client data for any purpose other than project delivery

**Data Security Requirements**:
- Vendor must comply with **client's security policies and architecture principles**
- Vendor staff must **sign confidentiality agreements** before accessing client systems
- Vendor must use **Multi-Factor Authentication (MFA)** for all access to client systems
- Vendor must **not store client data** on vendor systems except temporarily for project work; client data deleted within 30 days of project closure

**Background Checks**:
- Vendor staff must **pass background checks**: Criminal history, identity verification, employment verification
- **Client reserves right to reject specific individuals** based on background check results
- **v4.0 CLARIFICATION:** SC clearance NOT required (not MOD project). Standard background checks sufficient.

**Incident Notification**:
- Vendor must notify client within **1 hour** of discovering security incident
- Vendor must cooperate with client incident response team

### 9.7 Confidentiality

**Mutual Non-Disclosure Agreement (NDA)**:
- Both parties agree to maintain confidentiality
- **NDA must be signed before vendor receives detailed requirements or client data**
- NDA remains in effect for **5 years** after contract termination

### 9.8 Liability and Indemnification

**Liability Cap**:
- **Vendor's total liability** limited to **1x contract value**
- **Exceptions** (no cap): Willful misconduct, gross negligence, data breach due to vendor negligence, IP infringement

**Indemnification**:
Vendor **indemnifies and holds harmless** [ORGANIZATION_NAME] against:
- **IP infringement claims**
- **Data breaches due to vendor negligence**
- **Violations of laws or regulations**

### 9.9 Termination

**Termination for Convenience**:
- **Client may terminate** with **60 days written notice**, paying for work completed to date plus reasonable wind-down costs

**Termination for Cause**:
- Either party may terminate if other party **breaches material terms** and **fails to cure within 30 days**

**Immediate Termination** (no cure period):
- Vendor bankruptcy, insolvency, or assignment for benefit of creditors
- Vendor loses required certifications (Microsoft partnership, SOC 2)
- Vendor engages in fraud, willful misconduct, or criminal activity

**Transition Assistance**:
- Vendor must provide **90 days transition assistance** to new vendor or client internal team

### 9.10 Change Management

**Change Request Process**:
1. **Either party submits written change request**
2. **Vendor provides impact analysis within 5 business days**: Cost estimate, schedule impact, risk assessment
3. **Client approves or rejects** within 5 business days
4. **Approved changes documented in formal change order** signed by both parties

**Approval Thresholds**:
- **Changes <$10,000 or <2 weeks schedule impact**: Technical Lead approval sufficient
- **Changes $10,000-$50,000 or 2-4 weeks schedule impact**: Project Owner approval required
- **Changes >$50,000 or >4 weeks schedule impact**: Executive Sponsor approval required

---

## 10. Appendices

### Appendix A: Detailed Requirements

**Full Requirements Document**: See `projects/001-windows-11-migration-intune/requirements.md` (v5.0 - 2025-10-28) for complete requirements specification.

**v4.0 IMPORTANT:** Requirements v5.0 reflects organizational security governance (NOT MOD CAAT). Ensure proposals align with correct requirements version.

### Appendix B: Enterprise Architecture Principles

**Architecture Principles Document**: See `.arckit/memory/architecture-principles.md` for complete 18-principle governance framework.

### Appendix C: Security and Compliance Standards

**Applicable Standards**:
- **CIS Benchmarks** for Windows 11
- **Microsoft Security Baselines** for Windows 11
- **ISO 27001** endpoint security controls
- **NIST CSF** (Cybersecurity Framework)
- **NCSC Secure Design Principles** (UK)
- **GDPR** (EU General Data Protection Regulation)
- **CCPA** (California Consumer Privacy Act)
- **HIPAA** (if healthcare data involved)
- **SOX** (Sarbanes-Oxley) for financial controls
- **PCI-DSS** (if payment card data involved)

**v4.0 NOTE:** MOD-specific standards (JSP 440, ISN 2023/09-10, MOD CAAT) NOT APPLICABLE.

### Appendix D: Reference Architecture Diagrams

**Current State**:
- Hybrid management: On-premises Configuration Manager + limited cloud services
- Windows 10 devices (1000+) with Group Policy Objects (GPOs)
- On-premises Active Directory with Azure AD Connect sync

**Target State**:
- 100% cloud-native management via Microsoft InTune
- Windows 11 devices with TPM 2.0, BitLocker, Defender for Endpoint
- Azure AD Join (pure cloud identity or hybrid for legacy apps)
- Zero-touch provisioning via Windows Autopilot
- OneDrive Known Folder Move for data protection
- Configuration Manager decommissioned

### Appendix E: Glossary (v4.0 CORRECTED)

- **ARM64**: 64-bit ARM processor architecture (Qualcomm Snapdragon Copilot+ PCs)
- **Autopilot**: Windows Autopilot, zero-touch device provisioning service
- **Azure AD Join**: Device joined to Azure Active Directory for cloud-native management
- **BitLocker**: Full disk encryption (AES-256) for Windows
- **CAB (Change Advisory Board)**: Organizational change control governance board
- **CAAT (Cyber Activity and Assurance Tracker)**: ~~MOD self-assessment tool - NOT APPLICABLE (v4.0 correction)~~
- **Co-Management**: Hybrid management (Configuration Manager + InTune) during transition
- **Copilot+ PC**: Windows 11 device with Neural Processing Unit (NPU) for AI acceleration (40+ TOPS)
- **DTSL (Delivery Team Security Lead)**: ~~MOD role - NOT REQUIRED (v4.0 correction)~~ - Use **Project Security Lead** instead
- **IAA (Information Assurance Architect)**: ~~DEPRECATED MOD role - NOT APPLICABLE (v4.0)~~
- **IAO (Information Assurance Owner)**: ~~DEPRECATED MOD role - NOT APPLICABLE (v4.0)~~
- **InTune**: Microsoft Endpoint Manager, cloud-native MDM/MAM service
- **ISN (Industry Security Notice)**: ~~MOD supplier security requirements - NOT APPLICABLE (v4.0)~~
- **Known Folder Move (KFM)**: OneDrive feature syncing Desktop, Documents, Pictures to cloud
- **NPU**: Neural Processing Unit for AI acceleration in Copilot+ PCs
- **Project Security Lead**: Organizational security role responsible for security coordination (REPLACES DTSL in v4.0)
- **PSyO (Project Security Officer)**: ~~MOD role - NOT REQUIRED (v4.0)~~ unless organization uses this role
- **RMADS (Risk Management and Accreditation Documentation Set)**: ~~DEPRECATED MOD process - NOT APPLICABLE (v4.0)~~
- **Security Impact Assessment**: Organizational template for assessing security changes (REPLACES CAAT BIA in v4.0)
- **SRO (Senior Responsible Owner)**: Accountable executive for security posture
- **Three Lines of Defence**: ~~MOD governance model - NOT APPLICABLE (v4.0)~~ - Use organizational CAB and security review processes
- **TPM**: Trusted Platform Module, hardware security chip (TPM 2.0 required for Windows 11)
- **Zero Trust**: Security model assuming breach, no implicit trust, continuous verification

**v4.0 CORRECTION:** Glossary updated to remove/correct MOD-specific terms (CAAT, DTSL, PSyO, IAA, IAO, RMADS, Three Lines of Defence, ISN). Focus on organizational security governance terminology.

### Appendix F: Questions and Contact Information

**Questions**:
All questions regarding this SOW/RFP must be submitted in writing to:

**Email**: [procurement@organization.com]
**Subject Line**: "RFP-WIN11-001 - [VENDOR_NAME] - Question"
**Deadline for Questions**: [DATE + 3 weeks]

**Answers**: All questions and answers will be published to all registered vendors by [DATE + 4 weeks].

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
| 0.2 | [DATE - 2 weeks] | Procurement & IT Operations | Stakeholder review feedback |
| 1.0 | [DATE] | Procurement Lead | Final version issued to vendors |
| 4.0 | 2025-10-28 | Enterprise Architecture Team | **CRITICAL CORRECTION**: Removed MOD CAAT requirements (NOT APPLICABLE) |

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

**END OF STATEMENT OF WORK v4.0**
