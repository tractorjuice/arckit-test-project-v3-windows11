# MOD Secure by Design Assessment - CORRECTED

**Project**: Windows 11 Migration with Microsoft InTune
**Project ID**: 001
**Assessment Date**: 2025-10-28
**Assessment Version**: 3.0 - CRITICAL CORRECTION
**Assessor**: Enterprise Security Architect
**Review Status**: CORRECTED
**Next Review Date**: 2025-11-28

---

## ⚠️ CRITICAL CORRECTION NOTICE - ASSESSMENT SUPERSEDED

**This document has been CORRECTED to reflect that MOD Secure by Design (SbD) CAAT registration is NOT REQUIRED for this project.**

**Previous Assessment (v2.0 - 2025-10-21)**: INCORRECT - Assumed CAAT registration and MOD SbD framework applied to this Windows 11 migration project.

**Corrected Assessment (v3.0 - 2025-10-28)**: This project is delivering **changes to an EXISTING accredited in-service system** (Windows 10 enterprise environment), NOT a NEW operational capability. Therefore:

- ❌ **CAAT registration NOT REQUIRED** - CAAT applies ONLY to new operational capabilities
- ❌ **DTSL (Delivery Team Security Lead) appointment NOT REQUIRED** - Not a MOD SbD programme
- ❌ **PSyO (Project Security Officer) appointment NOT REQUIRED** - Not a MOD programme (unless organization uses this role)
- ❌ **BIA (Business Impact Assessment) for CAAT NOT REQUIRED** - CAAT not applicable
- ❌ **JSP 440 Leaflet 5C compliance NOT REQUIRED** - Not a MOD programme
- ❌ **ISN 2023/10 supplier attestation NOT REQUIRED** - Not a MOD programme

**Correct Approach**: Use existing organizational security governance processes:
- Security Impact Assessment (using existing organizational template)
- Change Advisory Board (CAB) approval
- Existing organizational security review processes
- Project Security Lead (organizational role, not DTSL)
- Existing system accreditation updated via change control

**Reference**: See `requirements.md` v5.0 (2025-10-28) for corrected security governance requirements (NFR-SEC-004, NFR-SEC-005).

---

## Executive Summary

### Programme Context

**Programme Name**: Windows 10 to Windows 11 Migration with Cloud-Native Endpoint Management
**Organization Type**: **CIVILIAN/NON-MOD** (This assessment was incorrectly framed as MOD programme in v2.0)
**Data Classification**: **INTERNAL/CONFIDENTIAL** (equivalent to OFFICIAL-SENSITIVE for assessment purposes)
**Project Phase**: **Alpha** (design and planning complete, implementation pending)
**Deployment Environment**: Microsoft Azure Cloud (UK South region), organizational network integration
**Scale**: ~6,000 Windows 10 devices across multiple locations, 18-month migration timeline (corrected from 24 months)

### Security Governance Status - CORRECTED

**Approach**: **EXISTING SYSTEM CHANGE CONTROL** (NOT MOD SbD / NOT CAAT)

**Rationale**: This project is an **OS upgrade** (Windows 10 → Windows 11) and **management platform migration** (Configuration Manager → InTune) within an EXISTING accredited enterprise IT environment. The existing Windows 10 environment already has:
- Security accreditation and authority to operate
- Established risk management processes
- Operational security governance (Change Advisory Board)
- Existing Three Lines of Defence security structure

This is **change management to an existing system**, not a new programme requiring MOD Secure by Design CAAT registration.

### Corrected Security Governance Requirements

**Security Governance Process** (via existing organizational processes):
- ✅ **Security Impact Assessment** (Week 2) - using existing organizational template
- ✅ **Change Advisory Board (CAB) approval** (Month 2) - standard change control
- ✅ **Project Security Lead appointed** (Week 1) - organizational security role
- ✅ **Threat model documented** (Month 1) - STRIDE methodology
- ✅ **Security Architecture Review** (Month 2) - organizational security team review
- ✅ **Existing system accreditation updated** (Month 3) - via change control documentation
- ✅ **Penetration testing** (Month 4) - coordinate with organizational pen testing schedule
- ✅ **Ongoing security governance** - Monthly status reports, quarterly security reviews

**NOT REQUIRED** (MOD SbD specific):
- ❌ CAAT registration
- ❌ CAAT self-assessment (7 SbD Principles question sets)
- ❌ DTSL appointment (use Project Security Lead instead)
- ❌ PSyO appointment (unless organizational policy requires)
- ❌ BIA for CAAT
- ❌ JSP 440 Leaflet 5C compliance checks
- ❌ ISN 2023/10 supplier attestations (use standard vendor security questionnaires)
- ❌ MOD CERT integration (use organizational SOC/incident response)

### Overall Security Posture - CORRECTED ASSESSMENT

**Security Posture**: ⚠️ **ADEQUATE with identified gaps** (previously incorrectly assessed as "PARTIALLY COMPLIANT" against MOD SbD)

**Security Maturity**: **Level 3 - Defined** (organizational security processes mature and documented)

**Critical Gaps Identified** (using organizational security standards, NOT MOD SbD):
- ⚠️ **Threat model not yet documented** (required before Beta) - HIGH PRIORITY
- ⚠️ **Penetration testing not scheduled** (required before deployment) - HIGH PRIORITY
- ⚠️ **Security Architecture Review not completed** (required for CAB approval) - HIGH PRIORITY
- ⚠️ **Insider threat controls not fully documented** - MEDIUM PRIORITY
- ⚠️ **Supply chain security assessment incomplete** (third-party apps not vetted) - MEDIUM PRIORITY
- ✅ **Strong GDPR compliance** (DPIA planned, data protection designed in)
- ✅ **Comprehensive risk register** (organizational risk management compliant)
- ✅ **Zero Trust architecture designed** (Conditional Access, MFA, encryption)

### Risk Summary

**Overall Security Risk**: **MEDIUM** (appropriate for OS upgrade within existing accredited environment)
**Residual Security Risk**: **LOW** (after planned controls implemented)

**Critical Security Risks Identified**: 0 (no deployment blockers)
**High Security Risks Identified**: 3 (manageable via existing processes)

**Top 3 Security Risks**:
1. **Supply chain compromise** - Third-party InTune apps and scripts lack security vetting (MEDIUM impact, POSSIBLE likelihood) - Mitigate via organizational vendor security review
2. **Insider threat** - 6,000 devices with access to sensitive data, monitoring via Defender for Endpoint (MEDIUM impact, UNLIKELY likelihood) - Mitigate via existing organizational insider threat programme
3. **Data exfiltration during migration** - OneDrive Known Folder Move transfers data to cloud (LOW impact, UNLIKELY likelihood) - Mitigate via BitLocker encryption and DLP policies

### Compliance Summary - CORRECTED

| Framework | Status | Score | Evidence |
|-----------|--------|-------|----------|
| **Organizational Security Policy** | ⚠️ Partially Compliant | 75% | Gaps in threat modeling and pen testing |
| **ISO 27001** | ⚠️ Partially Compliant | 78% | Risk register strong, security testing gaps |
| **NIST Cybersecurity Framework** | ⚠️ Partially Compliant | 72% | Strong Protect/Detect, weak Identify/Respond |
| **NCSC Secure Design Principles** | ✅ Compliant | 82% | Good defence-in-depth, Zero Trust architecture |
| **GDPR / DPA 2018** | ✅ Compliant | 90% | DPIA planned, data retention defined |
| **Cyber Essentials Plus** | ✅ Expected Compliant | 85% | Modern security controls (MFA, encryption, patching) |

**NOT ASSESSED** (MOD-specific, not applicable):
- ❌ JSP 440 Leaflet 5C (SbD Mandate) - Not a MOD programme
- ❌ JSP 453 (Digital Standards) - Not a MOD programme
- ❌ MOD CAAT Maturity Assessment - CAAT not required

### Recommendations Summary - CORRECTED

**Critical Actions (0-30 days) - Required before Beta deployment**:
1. **Appoint Project Security Lead and SRO** - Owner: CIO - Due: Week 1
2. **Complete Security Impact Assessment** using organizational template - Owner: Project Security Lead - Due: Week 2
3. **Submit Change Request to CAB** with security impact assessment - Owner: Change Owner - Due: Week 3
4. **Complete formal threat model** (STRIDE/DREAD methodology) - Owner: Project Security Lead - Due: Month 1
5. **Document security architecture** for organizational security team review - Owner: Enterprise Architect - Due: Month 1

**High Priority (1-3 months) - Required for deployment**:
1. **Security Architecture Review** by organizational security team - Owner: Enterprise Architect - Due: Month 2
2. **Obtain CAB approval** for Windows 11 migration - Owner: Change Owner - Due: Month 2
3. **Update existing system security documentation** (risk register, security controls) - Owner: Project Security Lead - Due: Month 3
4. **Schedule penetration testing** (coordinate with organizational pen testing schedule) - Owner: Project Security Lead - Due: Month 4
5. **Implement insider threat monitoring** (Azure AD Identity Protection, Defender for Endpoint) - Owner: CISO - Due: Month 3
6. **Conduct third-party app security review** (top 100 business applications) - Owner: IT Operations - Due: Month 3

**Medium Priority (3-6 months) - Continuous improvement**:
1. **Establish continuous vulnerability scanning** (Defender Vulnerability Management) - Owner: IT Operations - Due: Month 4
2. **Quarterly security review meetings** with organizational security team - Owner: Project Security Lead - Due: Ongoing
3. **Annual penetration testing** post-deployment - Owner: CISO - Due: Annually
4. **Security incident response tabletop exercise** - Owner: Project Security Lead - Due: Month 6

---

## 1. Assessment Scope and Methodology - CORRECTED

### 1.1 Assessment Purpose

This assessment evaluates the security posture of the Windows 11 migration project using:
- **Organizational security policies and standards**
- **ISO 27001** information security management principles
- **NIST Cybersecurity Framework** (Identify, Protect, Detect, Respond, Recover)
- **NCSC Secure Design Principles** (defence-in-depth, Zero Trust)
- **GDPR/DPA 2018** data protection requirements

**NOT ASSESSED AGAINST** (Previous v2.0 assessment incorrectly used these frameworks):
- MOD Secure by Design (SbD) 7 Principles - Not applicable (not a MOD programme)
- JSP 440 Leaflet 5C - Not applicable (not a MOD programme)
- CAAT maturity assessment - Not applicable (CAAT only for new MOD operational capabilities)

### 1.2 Key Assessment Changes from v2.0

**v2.0 Assessment (INCORRECT)**:
- Assumed MOD SbD framework applied
- Assessed against CAAT registration requirements
- Required DTSL/PSyO appointments
- Required JSP 440 compliance
- Identified CAAT registration as "CRITICAL" blocker

**v3.0 Assessment (CORRECTED)**:
- Uses organizational security governance framework
- Assesses against existing CAB and security review processes
- Uses Project Security Lead (organizational role)
- Uses organizational security policies (ISO 27001, NIST CSF)
- Identifies CAB approval as standard gate (not CAAT)

### 1.3 Project Context

**Project Type**: **CHANGE TO EXISTING ACCREDITED SYSTEM**

**Existing System**:
- Windows 10 enterprise environment
- On-premises Configuration Manager (SCCM) management
- Existing security accreditation and authority to operate
- Established operational security governance (CAB, security reviews)
- Existing risk management and audit processes

**Changes Being Delivered**:
- OS upgrade: Windows 10 → Windows 11
- Management platform migration: Configuration Manager → Microsoft InTune
- Architecture shift: On-premises → Cloud-native
- Security enhancement: Traditional → Zero Trust

**Security Governance Approach**:
- Changes managed via existing Change Advisory Board (CAB)
- Security impact assessed via existing organizational security review process
- Existing system accreditation updated (not new accreditation)
- Continuous security governance via existing organizational processes

---

## 2. Security Assessment Framework - CORRECTED

### 2.1 NIST Cybersecurity Framework Assessment

#### 2.1.1 Identify

**Asset Management**:
- ✅ **Compliant** - Device inventory tracked in InTune (E-002 Device entity)
- ✅ **Compliant** - User inventory tracked in Azure AD (E-001 User entity)
- ✅ **Compliant** - Application inventory tracked (E-003 Application entity, 100 business apps)
- ⚠️ **Partially Compliant** - Third-party component inventory incomplete (SBOM not yet created)

**Business Environment**:
- ✅ **Compliant** - Business criticality assessed (migration critical to avoid Windows 10 EOL Oct 2025)
- ✅ **Compliant** - Stakeholder requirements documented (`stakeholder-drivers.md`)
- ✅ **Compliant** - Dependencies identified (Project 002 app packaging dependency)

**Governance**:
- ✅ **Compliant** - Security policies documented (Zero Trust, MFA, encryption requirements)
- ✅ **Compliant** - Roles and responsibilities defined (RACI matrix in requirements)
- ⚠️ **Partially Compliant** - Security architecture review not yet completed

**Risk Assessment**:
- ✅ **Compliant** - Comprehensive risk register (`risk-register.md`, HM Treasury Orange Book)
- ⚠️ **Partially Compliant** - Formal threat model not yet documented (Month 1 target)
- ✅ **Compliant** - DPIA (Data Protection Impact Assessment) planned

**Risk Management Strategy**:
- ✅ **Compliant** - Risk appetite defined (CRITICAL risks unacceptable, MEDIUM acceptable with mitigation)
- ✅ **Compliant** - Risk acceptance authority defined (CISO for MEDIUM, CIO for LOW)

**Score**: 85% Compliant

#### 2.1.2 Protect

**Identity Management and Access Control**:
- ✅ **Compliant** - Azure AD authentication (single sign-on)
- ✅ **Compliant** - Multi-factor authentication (MFA) via Windows Hello for Business (passwordless biometric)
- ✅ **Compliant** - Conditional Access policies (device compliance, location, risk-based)
- ✅ **Compliant** - Privileged Access Management (PAM) via Azure AD Privileged Identity Management
- ✅ **Compliant** - Least privilege principle (standard users non-admin, IT admins use JIT)

**Data Security**:
- ✅ **Compliant** - BitLocker encryption at rest (AES-256)
- ✅ **Compliant** - TLS 1.3 encryption in transit (Azure services)
- ✅ **Compliant** - Data Loss Prevention (DLP) via Microsoft Purview
- ✅ **Compliant** - Known Folder Move (OneDrive) for data protection during migration
- ✅ **Compliant** - Data retention policies defined (7 years audit logs, 90 days support tickets)

**Protective Technology**:
- ✅ **Compliant** - Microsoft Defender for Endpoint (EDR, antivirus, behavioral analysis)
- ✅ **Compliant** - Firewalls (Windows Defender Firewall, Azure Network Security Groups)
- ✅ **Compliant** - Application Control (AppLocker / Windows Defender Application Control)
- ✅ **Compliant** - Secure Boot and TPM 2.0 (hardware-based security)

**Awareness and Training**:
- ✅ **Compliant** - User training planned (2-hour e-learning, communication plan)
- ✅ **Compliant** - Helpdesk training planned (2-day technical training)

**Score**: 95% Compliant

#### 2.1.3 Detect

**Anomalies and Events**:
- ✅ **Compliant** - Microsoft Defender for Endpoint behavioral analytics
- ✅ **Compliant** - Azure AD Identity Protection (risk-based detection)
- ✅ **Compliant** - Audit logging (Windows event logs, Azure AD audit logs)
- ⚠️ **Partially Compliant** - SIEM integration not documented (organizational SOC integration unclear)

**Security Continuous Monitoring**:
- ✅ **Compliant** - InTune compliance monitoring (device health, policy compliance)
- ✅ **Compliant** - Defender for Endpoint threat detection (real-time)
- ⚠️ **Partially Compliant** - Vulnerability scanning not yet enabled (Month 4 target)

**Detection Processes**:
- ⚠️ **Partially Compliant** - Security incident detection documented, escalation process not finalized
- ✅ **Compliant** - ServiceNow integration for incident tracking

**Score**: 75% Compliant

#### 2.1.4 Respond

**Response Planning**:
- ⚠️ **Partially Compliant** - Incident response plan documented in requirements (NFR-SEC-008), not yet tested
- ⚠️ **Partially Compliant** - Escalation matrix not finalized (when to notify CISO, CIO, organizational SOC)
- ✅ **Compliant** - Rollback capability designed (FR-014)

**Communications**:
- ⚠️ **Partially Compliant** - Internal incident communication process not documented
- ❌ **Non-Compliant** - External incident communication (regulatory reporting, user notification) not documented

**Analysis**:
- ⚠️ **Partially Compliant** - Forensic capability via Defender for Endpoint, but investigation process not documented
- ❌ **Non-Compliant** - Lessons learned process not documented

**Mitigation**:
- ✅ **Compliant** - Automated threat mitigation via Defender for Endpoint
- ⚠️ **Partially Compliant** - Manual mitigation processes not documented

**Improvements**:
- ❌ **Non-Compliant** - Post-incident review process not documented

**Score**: 55% Compliant (WEAKEST DOMAIN)

#### 2.1.5 Recover

**Recovery Planning**:
- ✅ **Compliant** - Backup strategy via OneDrive Known Folder Move (user data)
- ✅ **Compliant** - Device recovery via Windows Autopilot (re-provision from cloud)
- ⚠️ **Partially Compliant** - Disaster recovery (DR) plan not documented (NFR-A-002 requirement exists but plan TBD)

**Improvements**:
- ⚠️ **Partially Compliant** - Continuous improvement from lessons learned not documented

**Communications**:
- ⚠️ **Partially Compliant** - User communication during recovery not documented

**Score**: 70% Compliant

### 2.2 NCSC Secure Design Principles Assessment

#### Defence in Depth
**Status**: ✅ **Compliant**
- Layered security: Network (Conditional Access, NSGs) → Device (BitLocker, Defender) → Application (AppLocker) → Data (DLP)
- Multiple authentication factors (Windows Hello biometric, PIN, FIDO2 keys)
- Comprehensive logging and monitoring

#### Make Compromise Detection Unavoidable
**Status**: ✅ **Compliant**
- Defender for Endpoint EDR (behavioral analytics)
- Azure AD anomaly detection
- Comprehensive audit logging

#### Establish the Context Before Designing
**Status**: ✅ **Compliant**
- Data classification defined (INTERNAL/CONFIDENTIAL equivalent to OFFICIAL-SENSITIVE)
- User personas documented (4 personas)
- Threat landscape analyzed (in risk register)

#### Reduce the Attack Surface
**Status**: ✅ **Compliant**
- Cloud-native (reduced on-premises attack surface)
- Least privilege (non-admin users)
- Application Control (AppLocker)

#### Make Compromise Difficult
**Status**: ✅ **Compliant**
- Zero Trust architecture (never trust, always verify)
- Passwordless authentication (Windows Hello eliminates password attacks)
- MFA enforcement

#### Make Disruption Difficult
**Status**: ⚠️ **Partially Compliant**
- Backup via OneDrive (user data)
- Autopilot re-provisioning (device recovery)
- ⚠️ Gap: Disaster recovery plan not documented

#### Secure by Default
**Status**: ✅ **Compliant**
- Security baselines applied via InTune
- Encryption enabled by default (BitLocker)
- Defender for Endpoint enabled by default

#### Don't Depend on User Knowledge
**Status**: ✅ **Compliant**
- Passwordless Windows Hello (users don't manage passwords)
- Conditional Access (automatic risk-based controls)
- Automated updates (no user action required)

#### Supply Chain Security
**Status**: ⚠️ **Partially Compliant**
- Microsoft components trusted (enterprise SaaS provider)
- ⚠️ Gap: Third-party app security review incomplete (top 100 business apps)
- ⚠️ Gap: SBOM not yet created

**Overall NCSC Score**: 82% Compliant

### 2.3 ISO 27001 Assessment (Relevant Controls)

**A.5 Information Security Policies**: ✅ Compliant (Zero Trust policy documented)
**A.6 Organization of Information Security**: ✅ Compliant (RACI matrix, security roles)
**A.8 Asset Management**: ✅ Compliant (InTune inventory)
**A.9 Access Control**: ✅ Compliant (Azure AD, MFA, Conditional Access)
**A.10 Cryptography**: ✅ Compliant (BitLocker AES-256, TLS 1.3)
**A.12 Operations Security**: ⚠️ Partially Compliant (malware protection ✅, vulnerability management ⚠️)
**A.13 Communications Security**: ✅ Compliant (network segmentation, encryption)
**A.14 System Acquisition, Development and Maintenance**: ⚠️ Partially Compliant (security testing gaps)
**A.16 Information Security Incident Management**: ⚠️ Partially Compliant (plan exists, testing incomplete)
**A.17 Business Continuity Management**: ⚠️ Partially Compliant (backup ✅, DR plan ⚠️)
**A.18 Compliance**: ✅ Compliant (GDPR DPIA, data retention)

**Overall ISO 27001 Score**: 78% Compliant

---

## 3. Security Gaps and Remediation

### 3.1 Critical Gaps (Deployment Blockers) - CORRECTED

**Previous v2.0 Assessment (INCORRECT)**: Identified 7 "CRITICAL" gaps related to CAAT registration, DTSL appointment, BIA completion.

**Corrected v3.0 Assessment**: **NO CRITICAL DEPLOYMENT BLOCKERS IDENTIFIED**

Rationale: This project uses existing organizational security governance (CAB approval, security reviews). No MOD SbD-specific compliance required. Standard organizational security gates apply (Security Impact Assessment, CAB approval, threat model, pen testing).

### 3.2 High Priority Gaps (Required Before Beta Deployment)

#### Gap H-1: Threat Model Not Yet Documented
**Status**: ❌ **Not Completed**
**Impact**: HIGH - Cannot assess threat landscape or validate security controls without formal threat model
**Evidence**: Requirements NFR-SEC-005 specifies threat model required by Month 1, not yet completed
**Remediation**:
- **Action**: Complete formal threat model using STRIDE methodology
- **Owner**: Project Security Lead
- **Due Date**: Month 1 (Week 4)
- **Acceptance Criteria**:
  - Threat model documented with 20+ identified threats
  - Threats rated using DREAD (Damage, Reproducibility, Exploitability, Affected Users, Discoverability)
  - Threat mitigations mapped to security controls
  - Threat model reviewed by organizational security team

#### Gap H-2: Security Architecture Review Not Completed
**Status**: ❌ **Not Completed**
**Impact**: HIGH - Required for CAB approval, validates security design before deployment
**Evidence**: Requirements NFR-SEC-005 specifies Security Architecture Review by Month 2, not yet scheduled
**Remediation**:
- **Action**: Submit security architecture document to organizational security team for review
- **Owner**: Enterprise Architect
- **Due Date**: Month 2 (Week 8)
- **Acceptance Criteria**:
  - Security architecture document includes Zero Trust diagrams, data flows, security control mapping
  - Organizational security team review completed with 0 CRITICAL findings
  - Review findings addressed and security architecture updated

#### Gap H-3: Penetration Testing Not Scheduled
**Status**: ❌ **Not Scheduled**
**Impact**: HIGH - Required before production deployment to validate security controls
**Evidence**: Requirements NFR-SEC-006 specifies penetration testing by Month 2, not yet procured
**Remediation**:
- **Action**: Procure and schedule penetration testing (coordinate with organizational pen testing schedule or external vendor)
- **Owner**: Project Security Lead
- **Due Date**: Month 2 (Week 8)
- **Acceptance Criteria**:
  - Penetration test executed covering InTune, Azure AD, Defender, OneDrive integration
  - 100% of CRITICAL findings remediated and re-tested
  - Penetration test report delivered to CISO and SRO

#### Gap H-4: CAB Approval Not Yet Obtained
**Status**: ❌ **Not Submitted**
**Impact**: HIGH - Required for deployment authorization per organizational change control policy
**Evidence**: Change Request to CAB required by Week 3 (NFR-SEC-004), not yet submitted
**Remediation**:
- **Action**: Complete Security Impact Assessment and submit Change Request to CAB
- **Owner**: Change Owner (IT Operations Director)
- **Due Date**: Week 3 (Security Impact Assessment Week 2, CAB submission Week 3)
- **Acceptance Criteria**:
  - Security Impact Assessment completed using organizational template
  - Change Request submitted to CAB with security impact assessment, risk assessment, rollback plan
  - CAB approval obtained (target Month 2)

### 3.3 Medium Priority Gaps (Continuous Improvement)

#### Gap M-1: Insider Threat Controls Not Fully Documented
**Status**: ⚠️ **Partially Documented**
**Impact**: MEDIUM - Insider threat risk exists but mitigated by existing organizational insider threat programme
**Evidence**: Requirements NFR-SEC-009 specifies insider threat monitoring, partially documented
**Remediation**:
- **Action**: Document insider threat controls and monitoring (Azure AD Identity Protection, Defender for Endpoint behavioral analytics)
- **Owner**: CISO
- **Due Date**: Month 3
- **Acceptance Criteria**: Insider threat monitoring operational, quarterly reporting to CISO

#### Gap M-2: Third-Party Application Security Review Incomplete
**Status**: ⚠️ **In Progress**
**Impact**: MEDIUM - Supply chain risk from unvetted third-party applications
**Evidence**: Requirements NFR-SEC-007 specifies third-party risk assessments, only 20/100 apps reviewed
**Remediation**:
- **Action**: Complete security questionnaires for top 100 business applications
- **Owner**: IT Operations Lead
- **Due Date**: Month 3
- **Acceptance Criteria**: 100% of top 100 apps have security questionnaires completed and risk ratings assigned

#### Gap M-3: Vulnerability Scanning Not Yet Enabled
**Status**: ❌ **Not Enabled**
**Impact**: MEDIUM - Delayed detection of vulnerabilities in deployed devices
**Evidence**: Requirements NFR-SEC-006 specifies continuous vulnerability scanning, not yet enabled
**Remediation**:
- **Action**: Enable Defender Vulnerability Management for continuous scanning
- **Owner**: IT Operations Lead
- **Due Date**: Month 4
- **Acceptance Criteria**: Weekly vulnerability scans operational, reports delivered to Project Security Lead

#### Gap M-4: Incident Response Plan Not Tested
**Status**: ⚠️ **Documented but Not Tested**
**Impact**: MEDIUM - Incident response capability unproven
**Evidence**: Requirements NFR-SEC-008 specifies incident response plan and tabletop exercise, plan documented but not tested
**Remediation**:
- **Action**: Conduct incident response tabletop exercise
- **Owner**: Project Security Lead
- **Due Date**: Month 6
- **Acceptance Criteria**: Tabletop exercise conducted, lessons learned documented, incident response plan updated

### 3.4 Low Priority Gaps (Nice to Have)

#### Gap L-1: Disaster Recovery Plan Not Fully Documented
**Status**: ⚠️ **Partially Documented**
**Impact**: LOW - User data protected via OneDrive, devices recoverable via Autopilot, but formal DR plan not documented
**Remediation**: Document formal DR plan including RTO/RPO targets (Month 6)

#### Gap L-2: SBOM (Software Bill of Materials) Not Created
**Status**: ❌ **Not Created**
**Impact**: LOW - Supply chain visibility limited, but Microsoft components trusted
**Remediation**: Create SBOM for third-party components (Month 6)

---

## 4. Risk Assessment Summary

### 4.1 Overall Risk Level

**Current Risk Level** (without additional mitigations): **MEDIUM**
**Residual Risk Level** (after planned mitigations): **LOW**

**Justification**:
- This is an OS upgrade within an existing accredited environment (not new system deployment)
- Existing organizational security controls remain in place during migration
- Threat model, security architecture review, and penetration testing will validate security posture before Beta
- No SECRET or TOP SECRET data involved (INTERNAL/CONFIDENTIAL data only)

### 4.2 Top Security Risks

#### Risk 1: Supply Chain Compromise (Third-Party InTune Apps)
**Risk Rating**: MEDIUM Impact, POSSIBLE Likelihood = **MEDIUM Risk**
**Description**: Third-party applications deployed via InTune may contain malicious code or vulnerabilities
**Mitigation**:
- Complete security questionnaires for top 100 business apps (Month 3)
- Implement application vetting process (security review before deployment)
- Use Microsoft Defender Application Control (AppLocker) to restrict unapproved applications
- Monitor for unexpected network connections (Defender for Endpoint network monitoring)
**Residual Risk**: LOW

#### Risk 2: Insider Threat (Privileged User Abuse)
**Risk Rating**: MEDIUM Impact, UNLIKELY Likelihood = **MEDIUM Risk**
**Description**: 6,000 devices with access to INTERNAL/CONFIDENTIAL data, potential for insider data exfiltration
**Mitigation**:
- Azure AD Identity Protection (anomalous behavior detection)
- Defender for Endpoint behavioral analytics (unusual file access, mass file downloads)
- Data Loss Prevention (DLP) policies (block exfiltration of sensitive data)
- Privileged Access Management (PAM) for admin accounts (just-in-time access)
- Integration with existing organizational insider threat programme
**Residual Risk**: LOW

#### Risk 3: Data Exfiltration During Migration (OneDrive Known Folder Move)
**Risk Rating**: LOW Impact, UNLIKELY Likelihood = **LOW Risk**
**Description**: OneDrive Known Folder Move transfers user data to cloud, potential interception during migration
**Mitigation**:
- BitLocker encryption on devices (data encrypted at rest before upload)
- TLS 1.3 encryption in transit (Azure services)
- DLP policies prevent upload of highly sensitive data types
- User training on data classification (don't store highly confidential data on devices)
**Residual Risk**: VERY LOW

---

## 5. Recommendations

### 5.1 Critical Actions (0-30 days) - Required Before Beta

| # | Recommendation | Owner | Due Date | Status |
|---|----------------|-------|----------|--------|
| 1 | Appoint Project Security Lead and SRO | CIO | Week 1 | ❌ Not Started |
| 2 | Complete Security Impact Assessment | Project Security Lead | Week 2 | ❌ Not Started |
| 3 | Submit Change Request to CAB | Change Owner | Week 3 | ❌ Not Started |
| 4 | Complete formal threat model (STRIDE) | Project Security Lead | Month 1 | ❌ Not Started |
| 5 | Document security architecture | Enterprise Architect | Month 1 | ⚠️ In Progress |

### 5.2 High Priority Actions (1-3 months) - Required for Deployment

| # | Recommendation | Owner | Due Date | Status |
|---|----------------|-------|----------|--------|
| 6 | Security Architecture Review by organizational security team | Enterprise Architect | Month 2 | ❌ Not Started |
| 7 | Obtain CAB approval | Change Owner | Month 2 | ❌ Not Started |
| 8 | Schedule and execute penetration testing | Project Security Lead | Month 2 | ❌ Not Started |
| 9 | Update existing system security documentation | Project Security Lead | Month 3 | ❌ Not Started |
| 10 | Complete third-party app security reviews (top 100) | IT Operations Lead | Month 3 | ⚠️ In Progress |
| 11 | Implement insider threat monitoring | CISO | Month 3 | ⚠️ In Progress |

### 5.3 Medium Priority Actions (3-6 months) - Continuous Improvement

| # | Recommendation | Owner | Due Date | Status |
|---|----------------|-------|----------|--------|
| 12 | Enable continuous vulnerability scanning | IT Operations Lead | Month 4 | ❌ Not Started |
| 13 | Conduct incident response tabletop exercise | Project Security Lead | Month 6 | ❌ Not Started |
| 14 | Establish quarterly security review meetings | Project Security Lead | Ongoing | ❌ Not Started |
| 15 | Document disaster recovery plan | IT Operations Lead | Month 6 | ❌ Not Started |
| 16 | Create SBOM for third-party components | IT Operations Lead | Month 6 | ❌ Not Started |

---

## 6. Conclusion

### 6.1 Overall Assessment - CORRECTED

**Security Posture**: ⚠️ **ADEQUATE with identified gaps**

This Windows 11 migration project demonstrates **adequate security design** appropriate for an OS upgrade within an existing accredited enterprise IT environment. The Zero Trust architecture (Conditional Access, MFA, encryption) provides strong foundational security.

**Key Corrections from v2.0 Assessment**:
- ✅ **CAAT registration NOT REQUIRED** - This is change to existing accredited system, not new operational capability
- ✅ **Organizational security governance processes apply** - CAB approval, Security Impact Assessment, security review
- ✅ **No deployment blockers identified** - Standard organizational security gates are appropriate
- ✅ **Security maturity is adequate** - Level 3 (Defined) organizational security processes

**Remaining Gaps**:
- Threat model must be completed before Beta (Month 1)
- Security Architecture Review required for CAB approval (Month 2)
- Penetration testing required before deployment (Month 2)
- CAB approval required for deployment authorization (Month 2)

### 6.2 Deployment Readiness

**Ready for Beta Deployment?**: ❌ **NOT YET** - 4 high-priority gaps must be addressed

**Estimated Time to Beta Readiness**: **2 months** (assuming immediate action on recommendations)

**Deployment Milestones**:
- Week 1: Project Security Lead appointed, security preparation begins
- Week 2: Security Impact Assessment completed
- Week 3: Change Request submitted to CAB
- Month 1: Threat model completed
- Month 2: Security Architecture Review and CAB approval obtained, penetration testing completed
- Month 3: Beta deployment authorized (if all security gates passed)

### 6.3 Key Success Factors

1. **Engage organizational security team early** - Security Architecture Review by Month 2
2. **Obtain CAB approval before deployment** - Standard organizational change control
3. **Complete threat modeling and penetration testing** - Validate security controls
4. **Maintain security governance through-life** - Quarterly security reviews, annual pen testing
5. **Leverage existing organizational security processes** - No need for MOD SbD/CAAT compliance

---

## Appendix A: Assessment Changes from v2.0

| Assessment Area | v2.0 (INCORRECT) | v3.0 (CORRECTED) |
|-----------------|------------------|------------------|
| **Scope** | MOD Secure by Design assessment | Organizational security assessment |
| **Framework** | JSP 440 Leaflet 5C, CAAT | ISO 27001, NIST CSF, NCSC |
| **CAAT Registration** | ❌ CRITICAL blocker | ❌ NOT REQUIRED (not applicable) |
| **DTSL Appointment** | ❌ CRITICAL blocker | ❌ NOT REQUIRED (use Project Security Lead) |
| **PSyO Appointment** | ❌ CRITICAL blocker | ❌ NOT REQUIRED (unless org policy) |
| **BIA for CAAT** | ❌ CRITICAL blocker | ❌ NOT REQUIRED (use Security Impact Assessment) |
| **Security Governance** | MOD SbD continuous assurance | Organizational CAB and security review |
| **Critical Gaps** | 7 (CAAT-related) | 0 (no deployment blockers) |
| **High Priority Gaps** | 7 (MOD SbD-related) | 4 (organizational security gates) |
| **Security Maturity** | Level 2 (Repeatable) | Level 3 (Defined) |
| **Overall Risk** | HIGH | MEDIUM |
| **Deployment Readiness** | 2-3 months | 2 months |

---

## Appendix B: Reference Documents

**Project Documentation**:
- **Architecture Principles**: `.arckit/memory/architecture-principles.md`
- **Requirements v5.0 (CORRECTED)**: `projects/001-windows-11-migration-intune/requirements.md` (NFR-SEC-004 and NFR-SEC-005 corrected for organizational security governance)
- **Stakeholder Drivers**: `projects/001-windows-11-migration-intune/stakeholder-drivers.md`
- **Risk Register**: `projects/001-windows-11-migration-intune/risk-register.md`
- **High-Level Design**: `projects/001-windows-11-migration-intune/hld.md`

**Security Standards and Best Practices** (applicable to this assessment):
- **ISO 27001**: Information Security Management System standard
- **NIST Cybersecurity Framework**: https://www.nist.gov/cyberframework
- **NCSC Secure Design Principles**: https://www.ncsc.gov.uk/collection/cyber-security-design-principles
- **NIST SP 800-53**: Security and Privacy Controls
- **Organizational Security Policies**: (Internal security policies, standards, baselines)

**NOT APPLICABLE** (MOD-specific, previous v2.0 assessment incorrectly used these):
- ❌ JSP 440 Leaflet 5C (Secure by Design mandate)
- ❌ JSP 453 (Digital Policies and Standards for Defence)
- ❌ ISN 2023/09 (Secure by Design Requirements)
- ❌ ISN 2023/10 (Supplier Attestation)
- ❌ MOD CAAT (Cyber Activity and Assurance Tracker)
- ❌ MOD Secure by Design Portal

---

## Document History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-10-20 | Enterprise Security Architect | Initial MOD SbD assessment |
| 2.0 | 2025-10-21 | Enterprise Security Architect | Added CAAT continuous assurance framework, Three Lines of Defence, ISN 2023/10 supplier attestation |
| 3.0 | 2025-10-28 | Enterprise Security Architect | **CRITICAL CORRECTION**: Removed MOD SbD/CAAT requirements. Clarified this is change to existing accredited system, NOT new operational capability. Updated to organizational security governance framework (CAB, Security Impact Assessment). Corrected critical gaps (7 → 0), overall risk (HIGH → MEDIUM), security maturity (Level 2 → Level 3). Replaced DTSL/PSyO with Project Security Lead. See requirements.md v5.0 for corrected security governance (NFR-SEC-004, NFR-SEC-005). |

---

**Assessment Completed By**: Enterprise Security Architect
**Date**: 2025-10-28
**Next Review**: 2025-11-28 (or upon significant project changes)
