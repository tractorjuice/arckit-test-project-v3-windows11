# MOD Secure by Design Assessment

**Project**: Windows 11 Migration with Microsoft InTune
**Project ID**: 001
**Assessment Date**: 2025-10-21
**Assessment Version**: 1.0
**Assessor**: Enterprise Security Architect
**Review Status**: DRAFT
**Next Review Date**: 2025-11-21

---

## Executive Summary

### Programme Context

**Programme Name**: Windows 10 to Windows 11 Migration with Cloud-Native Endpoint Management
**MOD Organization**: Defence Digital (assumed - assessment applies MOD SbD framework to civilian project)
**Data Classification**: **OFFICIAL-SENSITIVE** (personnel records, operational data, device inventory)
**Project Phase**: **Alpha** (design and planning complete, implementation pending)
**Deployment Environment**: Microsoft Azure Cloud (UK South region), MOD network integration via Conditional Access
**Scale**: ~6,000 Windows 10 devices across multiple locations, 24-month migration timeline

### SbD Compliance Status

**Overall SbD Posture**: ⚠️ **PARTIALLY COMPLIANT** - Significant gaps require remediation before Beta phase

**Secure by Design Maturity**: **Level 2 - Repeatable** (Target: Level 3 - Defined)

**Critical Findings**:
- ❌ **No Delivery Team Security Lead appointed** (JSP 440 Leaflet 5C requirement)
- ❌ **No Project Security Officer (PSyO) appointed** (required for OFFICIAL-SENSITIVE data)
- ❌ **No formal threat model documented** (NCSC/NIST CSF requirement)
- ❌ **Supply chain security incomplete** (no SBOM, limited third-party assessment)
- ⚠️ **Cloud accreditation status unclear** (Microsoft Azure UK Government unclear if MOD-assured)
- ⚠️ **Insider threat controls not documented** (critical MOD concern)
- ✅ **Strong GDPR compliance** (DPIA planned, data protection designed in)
- ✅ **Comprehensive risk register** (HM Treasury Orange Book compliant)

### Accreditation Readiness

**Current Status**: ❌ **NOT READY for Security Accreditation**

**Blockers for Accreditation**:
1. No Delivery Team Security Lead appointed (CRITICAL)
2. No PSyO appointed for OFFICIAL-SENSITIVE data handling (CRITICAL)
3. No formal threat model or attack surface analysis (HIGH)
4. No security testing completed (pen test, vulnerability scan) (HIGH)
5. No supplier security attestations obtained (ISN 2023/10) (HIGH)
6. No documented security architecture approved by IAA (HIGH)

**Estimated Time to Accreditation Readiness**: 3-6 months (assuming immediate action)

### Risk Summary

**Overall Security Risk**: **HIGH** (without mitigations)
**Residual Security Risk**: **MEDIUM** (after planned controls implemented)

**Critical Security Risks Identified**: 5 risks
**High Security Risks Identified**: 8 risks

**Top 3 Security Risks**:
1. **Cloud data sovereignty** - Microsoft Azure UK South stores data in UK, but unclear if MOD-assured cloud (MEDIUM impact, POSSIBLE likelihood)
2. **Supply chain compromise** - Third-party InTune apps and scripts lack security vetting (HIGH impact, POSSIBLE likelihood)
3. **Insider threat** - 6,000 devices with privileged access to OFFICIAL-SENSITIVE data, limited monitoring (HIGH impact, UNLIKELY likelihood)

### Compliance Summary

| Framework | Status | Score | Evidence |
|-----------|--------|-------|----------|
| JSP 440 Leaflet 5C (SbD Mandate) | ⚠️ Partially Compliant | 55% | Principles applied but governance gaps |
| JSP 453 (Digital Standards) | ✅ Compliant | 85% | Cloud-first, modern endpoint management |
| NIST Cybersecurity Framework | ⚠️ Partially Compliant | 62% | Strong Protect/Detect, weak Identify/Respond |
| NCSC Secure Design Principles | ⚠️ Partially Compliant | 68% | Good defence-in-depth, weak supply chain |
| GDPR / DPA 2018 | ✅ Compliant | 90% | DPIA planned, data retention defined |
| ISO 27001 | ⚠️ Partially Compliant | 70% | Risk register strong, ISMS integration unclear |

### Recommendations Summary

**Critical Actions (0-30 days) - Must complete before proceeding to Beta**:
1. Appoint Delivery Team Security Lead (CISO delegate) - Owner: CIO - Due: Week 1
2. Appoint Project Security Officer (PSyO) for OFFICIAL-SENSITIVE data - Owner: CISO - Due: Week 1
3. Engage MOD Accreditation Service / Information Assurance Authority - Owner: PSyO - Due: Week 2
4. Complete formal threat model (STRIDE/DREAD methodology) - Owner: Security Lead - Due: Month 1
5. Document security architecture and obtain IAA approval - Owner: Enterprise Architect - Due: Month 1

**High Priority (1-3 months) - Required for accreditation**:
1. Conduct penetration testing of InTune deployment - Owner: Security Lead - Due: Month 2
2. Obtain Microsoft Azure UK Government cloud assurance documentation - Owner: PSyO - Due: Month 2
3. Create Software Bill of Materials (SBOM) for all third-party components - Owner: IT Operations - Due: Month 2
4. Implement insider threat monitoring (Azure AD Identity Protection, Defender for Endpoint) - Owner: CISO - Due: Month 3
5. Obtain supplier security attestations (Microsoft, hardware vendors) per ISN 2023/10 - Owner: Procurement - Due: Month 3

**Medium Priority (3-6 months) - Continuous improvement**:
1. Establish Security Operations Centre (SOC) integration for InTune alerts - Owner: Security Lead - Due: Month 4
2. Conduct red team exercise simulating nation-state attack - Owner: CISO - Due: Month 6
3. Implement continuous security monitoring dashboard - Owner: IT Operations - Due: Month 4

---

## 1. Project Context Assessment

### 1.1 Programme Overview

**Programme/Project/Capability Name**: Windows 11 Migration with Microsoft InTune Cloud-Native Endpoint Management

**Business Context**:
The organization is migrating ~6,000 Windows 10 devices to Windows 11 before the October 14, 2025 End of Life (EOL) deadline. This migration simultaneously transforms endpoint management from on-premises Configuration Manager (SCCM) to cloud-native Microsoft InTune, enabling Zero Trust security architecture, remote workforce support, and modern AI-powered productivity (Copilot+ PCs).

**MOD Organization** (assumed for assessment purposes):
- Defence Digital (civilian IT infrastructure)
- Applicable to Army, Navy, RAF, or Strategic Command endpoint estates

**Operational Context**:
- Primary mission: Eliminate Windows 10 EOL security risk, achieve Zero Trust posture, enable cloud-first endpoint management
- Users: ~6,000 personnel (executives, knowledge workers, task workers, field personnel)
- Deployment: Office-based, remote workers, field operations (requires offline capability)
- Data sensitivity: OFFICIAL-SENSITIVE (personnel records, operational logs, device inventory)

### 1.2 Data Classification Assessment

**Data Classification Level**: **OFFICIAL-SENSITIVE**

**Rationale**:
- Personnel data (E-001 User entity: names, email, department, security clearance levels) - OFFICIAL-SENSITIVE
- Device inventory with location data (E-002 Device entity) - OFFICIAL
- OneDrive user files (E-005 OneDrive Data entity: may contain operational documents) - OFFICIAL-SENSITIVE
- Audit logs tracking user actions (E-015 Audit Log entity) - OFFICIAL-SENSITIVE
- Support tickets with user-reported issues (E-013 Support Ticket entity) - OFFICIAL

**No SECRET or TOP SECRET data** is processed by this system (out of scope per requirements.md line 57-58).

**Classification Justification**:
- Personnel security clearance data requires OFFICIAL-SENSITIVE classification (JSP 440 Annex F)
- Device location data combined with user identity requires OFFICIAL-SENSITIVE
- Aggregated audit logs of user behavior could reveal operational patterns (OFFICIAL-SENSITIVE)

### 1.3 Security Governance Structure

**Delivery Team Security Lead**: ❌ **NOT APPOINTED**
- **Required**: Yes (JSP 440 Leaflet 5C mandatory for all SbD projects)
- **Recommendation**: Appoint CISO delegate or Senior Security Architect as Security Lead (Week 1)

**Project Security Officer (PSyO)**: ❌ **NOT APPOINTED**
- **Required**: Yes (OFFICIAL-SENSITIVE data classification requires PSyO per JSP 440)
- **Recommendation**: Appoint dedicated PSyO reporting to CISO (Week 1)

**Information Assurance Owner (IAO)**: ⚠️ **UNCLEAR** (likely IT Operations Director, but not documented)
- **Required**: Yes (all MOD systems require IAO)
- **Recommendation**: Formally appoint IT Operations Director as IAO (Week 1)

**Information Assurance Architect (IAA)**: ❌ **NOT ENGAGED**
- **Required**: Yes (OFFICIAL-SENSITIVE systems require IAA approval)
- **Recommendation**: Engage MOD Accreditation Service to assign IAA (Week 2)

**Current Stakeholder Security Roles** (from stakeholder-drivers.md):
- ✅ CISO identified (Security Executive)
- ✅ Security Architect identified (Zero Trust design lead)
- ❌ No Delivery Team Security Lead
- ❌ No PSyO
- ❌ No IAO formally appointed
- ❌ No IAA engaged

### 1.4 Project Phase and Lifecycle

**Current Phase**: **Alpha** (Design and planning complete, implementation pending)

**Lifecycle Stage**: Pre-deployment (hardware procurement, InTune configuration, pilot planning)

**SbD Activities Completed**:
- ✅ Business requirements documented (requirements.md)
- ✅ Risk register created (HM Treasury Orange Book compliant - risk-register.md)
- ✅ Data model designed with GDPR compliance (data-model.md)
- ✅ Stakeholder analysis completed (stakeholder-drivers.md)
- ⚠️ Security architecture designed but not formally approved by IAA
- ❌ Threat model NOT documented
- ❌ Security testing NOT completed
- ❌ RMADS documentation NOT started

**Next Phase Requirements (Beta)**:
- Appoint Security Lead and PSyO (CRITICAL)
- Complete threat model (HIGH)
- Obtain interim or conditional accreditation (HIGH)
- Conduct security testing (pen test, vulnerability scan) (HIGH)
- Pilot deployment with security monitoring (MEDIUM)

**Expected Accreditation Timeline**:
- Month 0-1: Appoint security governance, engage IAA, document security architecture
- Month 1-2: Complete threat model, RMADS documentation, security testing
- Month 2-3: Submit for accreditation review, remediate findings
- Month 3-4: Obtain interim accreditation for pilot deployment
- Month 6-9: Full accreditation after successful pilot (conditional on pilot success)

### 1.5 Deployment Environment

**Primary Deployment Environment**: Microsoft Azure Cloud (UK South region)

**Network Connectivity**:
- ⚠️ Internet-based cloud services (Microsoft 365, InTune, Azure AD)
- ⚠️ Requires MOD network firewall rules for Azure endpoints
- ⚠️ Unclear if MOD-assured cloud connectivity (PSN, MOD networks)
- ✅ Conditional Access policies restrict access to MOD devices only

**Cloud Assurance Status**:
- ❌ **UNKNOWN** - No evidence of MOD-assured cloud status for Microsoft Azure UK South
- ⚠️ Microsoft Azure UK Government cloud exists but unclear if this project uses it
- **Recommendation**: Verify MOD-assured cloud status or implement compensating controls (Month 1)

**Physical Deployment**:
- ✅ Devices deployed to MOD facilities and remote workers (hybrid model)
- ✅ Hardware security (TPM 2.0, Secure Boot, BitLocker) enforced
- ⚠️ Remote worker home networks (uncontrolled environment) - requires risk assessment

---

## 2. Secure by Design Principles Assessment

### Principle 1: Understand and Define Context

**Status**: ⚠️ **PARTIALLY COMPLIANT**

**Evidence**:
- ✅ **Context documented**: Comprehensive requirements document defines mission (Windows 11 migration), users (6,000+ personnel), data flows (InTune to Azure AD to Defender)
- ✅ **Data classification determined**: OFFICIAL-SENSITIVE classification assigned (section 1.2)
- ⚠️ **Operational environment partially understood**: Cloud deployment documented, but MOD network integration unclear
- ⚠️ **Stakeholder security requirements captured**: CISO security requirements documented (stakeholder-drivers.md SD-1), but no formal Security Aspects Letter (SAL)

**Gaps Identified**:
1. No Security Aspects Letter (SAL) from MOD Accreditation Service
2. MOD network integration architecture not documented (firewall rules, PSN connectivity, assured cloud)
3. Operational context incomplete - no analysis of field operations offline scenarios
4. Threat actor analysis missing (nation-state, insider, criminal, hacktivist)

**Assessment Details**:

**Context Documentation**:
- ✅ requirements.md lines 14-20: Business context clearly defines Windows 10 EOL risk, 6,000 devices, Zero Trust objectives
- ✅ requirements.md lines 39-65: Scope clearly defines in-scope (Windows 11, InTune, Azure AD, Defender) and out-of-scope (servers, VDI, macOS)
- ✅ stakeholder-drivers.md: 8 key stakeholders with drivers, goals, and measurable outcomes

**Data Management Context**:
- ✅ data-model.md lines 28-32: Data classification completed (8 Internal entities, 6 Confidential entities, 1 Restricted entity)
- ✅ data-model.md lines 36-40: GDPR compliance assessed (DPIA required for OneDrive Known Folder Move)
- ✅ data-model.md lines 39-40: Cross-border data transfers documented (UK to EU adequacy, UK to US Standard Contractual Clauses)

**Operational Environment**:
- ⚠️ Cloud deployment to Microsoft Azure UK South documented (data-model.md), but MOD network integration unclear
- ⚠️ No documentation of PSN connectivity, MOD-assured cloud status, or network segmentation from MOD operational networks
- ❌ Field operations offline scenarios not analyzed (what happens when devices lose cloud connectivity in operational theatre?)

**Security Requirements Capture**:
- ✅ requirements.md lines 24-37: Security objectives defined (100% TPM 2.0, Secure Boot, BitLocker, Defender for Endpoint, Zero Trust)
- ⚠️ stakeholder-drivers.md SD-1: CISO security requirements documented but informal (not a formal Security Aspects Letter)
- ❌ No formal threat model or attack surface analysis

**Remediation Actions**:

| Action | Priority | Owner | Due Date | Effort |
|--------|----------|-------|----------|--------|
| Obtain Security Aspects Letter (SAL) from MOD Accreditation Service | CRITICAL | PSyO | Week 2 | 2 weeks |
| Document MOD network integration architecture (firewall rules, PSN, assured cloud) | HIGH | Security Architect | Month 1 | 3 weeks |
| Analyze field operations offline scenarios and document mitigations | MEDIUM | IT Operations | Month 2 | 2 weeks |
| Complete threat actor analysis (nation-state, insider, criminal, hacktivist) | HIGH | Security Lead | Month 1 | 1 week |

**Compliance Score**: 65% (good documentation, but formal MOD processes not followed)

---

### Principle 2: Apply Security from the Start

**Status**: ⚠️ **PARTIALLY COMPLIANT**

**Evidence**:
- ✅ **Security embedded in design**: Zero Trust architecture designed from inception (requirements.md lines 24-25)
- ✅ **Security requirements defined early**: BR-001 Security Compliance is MUST_HAVE (requirements.md line 101)
- ⚠️ **Security architecture designed**: Defender for Endpoint, Conditional Access, BitLocker designed, but not formally reviewed by IAA
- ❌ **Security expertise involved from start**: CISO and Security Architect identified, but no Delivery Team Security Lead appointed

**Gaps Identified**:
1. Security architecture designed but not formally approved by IAA
2. No threat model created in Discovery/Alpha phase (NCSC best practice)
3. Delivery Team Security Lead not appointed (should be involved from project inception)
4. No security requirements traceability matrix (linking security requirements to controls)

**Assessment Details**:

**Security from Inception**:
- ✅ requirements.md line 24: "Security & Compliance: Achieve Zero Trust security posture with TPM 2.0, Secure Boot, BitLocker encryption, and Microsoft Defender for Endpoint on 100% of devices"
- ✅ requirements.md lines 89-107: BR-001 Security Compliance is first business requirement (MUST_HAVE priority)
- ✅ stakeholder-drivers.md SD-1: CISO identified as "MANAGE CLOSELY" stakeholder (high power, high interest)
- ✅ Project phase is Alpha - security requirements defined before implementation

**Security Requirements Early Definition**:
- ✅ requirements.md lines 96-99: Success criteria include "100% of production devices migrated by Sep 2025, Zero security incidents, Zero compliance audit findings"
- ✅ requirements.md lines 24-28: Security objectives include 100% device encryption, 100% MFA enforcement, real-time threat detection
- ⚠️ Security requirements scattered across BR-001, BR-002, BR-006 - no consolidated security requirements section

**Security Architecture Design**:
- ✅ data-model.md includes security-relevant entities: E-006 Device Compliance (tracks BitLocker, Defender, MFA), E-015 Audit Log (7-year retention)
- ✅ servicenow-design.md includes security monitoring integration (Defender for Endpoint alerts to ServiceNow)
- ⚠️ Security architecture described but not formally documented as standalone security architecture document
- ❌ No security architecture review or approval from IAA (required before implementation)

**Security Expertise Involvement**:
- ✅ requirements.md line 77: Security Architect assigned (Zero Trust design, Defender for Endpoint)
- ✅ requirements.md line 73: CISO assigned (Security architecture, compliance approval)
- ❌ No Delivery Team Security Lead appointed (JSP 440 Leaflet 5C requirement)
- ❌ No PSyO appointed (OFFICIAL-SENSITIVE data requires PSyO)

**Threat Modeling**:
- ❌ No threat model documented
- ❌ No attack surface analysis
- ❌ No STRIDE/DREAD threat assessment
- ❌ No security control mapping to threats

**Remediation Actions**:

| Action | Priority | Owner | Due Date | Effort |
|--------|----------|-------|----------|--------|
| Appoint Delivery Team Security Lead (CISO delegate) | CRITICAL | CIO | Week 1 | 1 day |
| Document formal security architecture and submit for IAA review | CRITICAL | Security Architect | Month 1 | 3 weeks |
| Complete threat model using STRIDE/DREAD methodology | HIGH | Security Lead | Month 1 | 2 weeks |
| Create security requirements traceability matrix (req → control → test) | MEDIUM | Security Lead | Month 2 | 1 week |

**Compliance Score**: 60% (strong security design intent, but formal governance processes incomplete)

---

### Principle 3: Apply Defence in Depth

**Status**: ✅ **COMPLIANT**

**Evidence**:
- ✅ **Multiple layers of security controls**: Network (Conditional Access), Host (BitLocker, Defender), Application (InTune policies), Data (OneDrive encryption)
- ✅ **Fail-safe defaults**: InTune policies enforce secure-by-default configuration (requirements.md line 48)
- ✅ **Assume breach design**: Defender for Endpoint provides real-time threat detection and response (requirements.md line 49)

**Assessment Details**:

**Layered Security Controls**:

1. **Network Layer**:
   - ✅ Conditional Access policies restrict access to MOD devices only (requirements.md line 50)
   - ✅ Azure AD authentication with MFA (requirements.md line 34)
   - ⚠️ Cloud-based architecture may bypass MOD network perimeter controls

2. **Host Layer**:
   - ✅ TPM 2.0 mandatory on all Windows 11 devices (requirements.md line 24)
   - ✅ Secure Boot enabled (requirements.md line 24)
   - ✅ BitLocker full disk encryption (requirements.md line 24)
   - ✅ Windows Defender Antivirus enabled (requirements.md line 49)

3. **Application Layer**:
   - ✅ InTune application control policies (requirements.md line 48)
   - ✅ Application compatibility testing for top 100 business apps (requirements.md line 47)
   - ⚠️ No evidence of application whitelisting or exploit protection policies

4. **Data Layer**:
   - ✅ OneDrive Known Folder Move for data protection (requirements.md line 46)
   - ✅ OneDrive files encrypted at rest and in transit (data-model.md)
   - ✅ 7-year audit log retention (data-model.md line 39)
   - ⚠️ No evidence of Data Loss Prevention (DLP) policies

**Segmentation and Least Privilege**:
- ✅ Azure AD role-based access control (RBAC) assumed (standard InTune practice)
- ✅ Conditional Access policies enforce device compliance before data access (requirements.md line 50)
- ⚠️ No documentation of privileged access management (PAM) for IT administrators
- ⚠️ No evidence of network segmentation between device management and production data

**Monitoring and Detection at Each Layer**:
- ✅ Defender for Endpoint provides real-time threat detection (requirements.md line 49)
- ✅ InTune compliance policies with automated alerts (requirements.md line 48)
- ✅ Azure AD sign-in logs and audit logs (standard Azure AD feature)
- ⚠️ No documentation of Security Operations Centre (SOC) integration
- ⚠️ No evidence of SIEM correlation across layers

**Containment and Recovery**:
- ✅ InTune remote wipe capability (standard InTune feature)
- ✅ 10-day rollback capability documented (stakeholder-drivers.md line 102)
- ✅ OneDrive versioning for file recovery (standard OneDrive feature)
- ⚠️ No formal incident response plan documented
- ⚠️ No disaster recovery plan for InTune tenant failure

**Remediation Actions**:

| Action | Priority | Owner | Due Date | Effort |
|--------|----------|-------|----------|--------|
| Document privileged access management (PAM) for InTune administrators | HIGH | Security Architect | Month 1 | 1 week |
| Implement Data Loss Prevention (DLP) policies for OFFICIAL-SENSITIVE data | HIGH | CISO | Month 2 | 2 weeks |
| Establish SOC integration for InTune and Defender for Endpoint alerts | MEDIUM | Security Lead | Month 3 | 3 weeks |
| Document incident response plan for security incidents | HIGH | PSyO | Month 2 | 2 weeks |

**Compliance Score**: 80% (excellent layered controls, minor gaps in monitoring and incident response)

---

### Principle 4: Follow Secure Design Patterns

**Status**: ⚠️ **PARTIALLY COMPLIANT**

**Evidence**:
- ✅ **NCSC Secure Design Principles applied**: Zero Trust architecture aligns with NCSC Cloud Security Principles
- ⚠️ **NIST CSF controls mapped**: Partially mapped (see Section 3)
- ⚠️ **Common vulnerabilities mitigated**: Windows 11 security baselines applied, but no OWASP Top 10 analysis
- ❌ **Secure coding standards**: Not applicable (SaaS solution, no custom code documented)

**Assessment Details**:

**NCSC Secure Design Principles Compliance**:

| NCSC Principle | Compliance | Evidence |
|----------------|------------|----------|
| 1. Establish context | ⚠️ Partial | Data classification done (OFFICIAL-SENSITIVE), but threat model missing |
| 2. Secure by default | ✅ Compliant | InTune policies enforce secure-by-default (BitLocker, Defender, MFA) |
| 3. Defence in depth | ✅ Compliant | Layered controls (Conditional Access, BitLocker, Defender) - see Principle 3 |
| 4. Least privilege | ⚠️ Partial | Azure AD RBAC assumed, but PAM not documented |
| 5. Separation of responsibilities | ⚠️ Partial | InTune admin roles vs. users assumed, but not documented |
| 6. Validate inputs | ✅ Compliant | InTune policies validate device compliance before access |
| 7. Assume compromise | ✅ Compliant | Defender for Endpoint detects and responds to breaches |
| 8. Fail secure | ✅ Compliant | Conditional Access denies by default if device non-compliant |
| 9. Audit | ✅ Compliant | 7-year audit log retention (data-model.md) |
| 10. Use modern standards | ✅ Compliant | Windows 11, TPM 2.0, BitLocker AES-256, TLS 1.3 |

**NIST CSF Controls Mapping**:
- ⚠️ Partially mapped in Section 3 of this assessment (62% compliance)
- ⚠️ No formal NIST CSF control traceability matrix
- ✅ Strong Protect and Detect functions (BitLocker, Defender, Conditional Access)
- ⚠️ Weak Identify and Respond functions (asset inventory incomplete, incident response plan missing)

**Common Vulnerabilities Mitigation**:
- ✅ Windows 11 security baselines enforced via InTune (Microsoft best practices)
- ✅ TPM 2.0 mitigates boot-level attacks (Evil Maid, rootkits)
- ✅ Secure Boot mitigates bootkit and rootkit attacks
- ✅ BitLocker mitigates data theft from lost/stolen devices
- ⚠️ No OWASP Top 10 analysis (may not be applicable for SaaS endpoint management, but should assess third-party apps)
- ❌ No CVE vulnerability scanning for InTune-deployed applications

**Secure Architecture Patterns**:
- ✅ Zero Trust architecture (never trust, always verify) via Conditional Access
- ✅ Cloud-native architecture (InTune SaaS) reduces on-premises attack surface
- ✅ Identity-centric security (Azure AD as central authentication)
- ⚠️ No documented secret management for InTune scripts/automation
- ⚠️ No documented API security for InTune integrations (ServiceNow, Power BI)

**Remediation Actions**:

| Action | Priority | Owner | Due Date | Effort |
|--------|----------|-------|----------|--------|
| Create NIST CSF control traceability matrix (control → evidence → test) | MEDIUM | Security Lead | Month 2 | 2 weeks |
| Implement CVE vulnerability scanning for InTune-deployed applications | HIGH | IT Operations | Month 2 | 2 weeks |
| Document secret management for InTune scripts and automation | HIGH | Security Architect | Month 1 | 1 week |
| Assess API security for InTune integrations (ServiceNow, Power BI) | MEDIUM | Security Architect | Month 2 | 1 week |

**Compliance Score**: 70% (strong use of Microsoft security baselines, but formal control mapping incomplete)

---

### Principle 5: Continuously Manage Risk

**Status**: ✅ **COMPLIANT**

**Evidence**:
- ✅ **Risk assessment ongoing**: Risk register actively maintained with monthly review (risk-register.md line 9)
- ✅ **Risk register maintained through-life**: HM Treasury Orange Book framework with 20 risks documented (risk-register.md)
- ⚠️ **Security testing continuous**: Planned but not yet implemented (no pen testing completed)
- ✅ **Security incidents tracked**: Support ticket entity (E-013) tracks security-related incidents (data-model.md)

**Assessment Details**:

**Risk Register Quality**:
- ✅ risk-register.md: 20 risks identified across 6 Orange Book categories (STRATEGIC, OPERATIONAL, FINANCIAL, COMPLIANCE, REPUTATIONAL, TECHNOLOGY)
- ✅ risk-register.md lines 36-37: Inherent risk 282/500 (56% High) reduced to Residual risk 162/500 (32% Medium) after controls
- ✅ risk-register.md line 9: Next review date 2025-11-21 (monthly review cycle)
- ✅ risk-register.md lines 59-67: Orange Book 5 principles compliance confirmed
- ✅ Each risk has owner, inherent/residual scores, 4Ts response (Treat/Tolerate/Transfer/Terminate)

**Specific Security Risks Documented**:
- ✅ R-001 (STRATEGIC): Migration timeline slips past Windows 10 EOL (security risk of unsupported OS)
- ✅ R-011 (COMPLIANCE): GDPR non-compliance from Windows Recall feature
- ⚠️ No specific cyber security risk category (should add CYBER as 7th category alongside Orange Book 6)
- ⚠️ No nation-state attack risk documented (critical for MOD context)
- ⚠️ No insider threat risk documented (critical for MOD OFFICIAL-SENSITIVE data)

**Continuous Risk Management Process**:
- ✅ risk-register.md line 84: Monthly risk review with Steering Committee
- ✅ risk-register.md line 85: Quarterly risk register updates
- ✅ risk-register.md line 86: Lessons learned after each deployment wave
- ⚠️ No documentation of risk escalation process to MOD Accreditation Service
- ⚠️ No documentation of risk acceptance authority (who can accept HIGH/CRITICAL risks?)

**Security Testing**:
- ❌ No penetration testing completed (required before Beta phase)
- ❌ No vulnerability scanning implemented (should be continuous via Defender Vulnerability Management)
- ⚠️ Application compatibility testing planned (requirements.md line 47) but no security focus
- ❌ No red team exercises planned

**Security Incident Tracking**:
- ✅ data-model.md E-013 Support Ticket entity includes security incidents
- ✅ data-model.md E-015 Audit Log entity with 7-year retention (compliance requirement)
- ⚠️ No documentation of MOD CERT integration (MOD incidents must be reported to MOD CERT)
- ⚠️ No Service Level Agreements (SLAs) for security incident response times

**Lessons Learned Process**:
- ✅ risk-register.md line 86: Lessons learned after each deployment wave
- ⚠️ No formal lessons learned framework (should follow MOD project management standards)
- ⚠️ No documentation of how security lessons feed back into risk register

**Remediation Actions**:

| Action | Priority | Owner | Due Date | Effort |
|--------|----------|-------|----------|--------|
| Add CYBER risk category and document nation-state/insider threat risks | HIGH | Security Lead | Month 1 | 1 week |
| Conduct penetration testing of InTune deployment | HIGH | PSyO | Month 2 | 4 weeks |
| Implement continuous vulnerability scanning via Defender Vulnerability Management | MEDIUM | IT Operations | Month 2 | 2 weeks |
| Document MOD CERT integration and incident reporting process | HIGH | PSyO | Month 1 | 1 week |
| Define risk acceptance authority matrix (who can accept LOW/MEDIUM/HIGH/CRITICAL risks) | MEDIUM | PSyO | Month 1 | 1 week |

**Compliance Score**: 75% (excellent risk register, but security-specific risk management incomplete)

---

### Principle 6: Secure the Supply Chain

**Status**: ❌ **NON-COMPLIANT**

**Evidence**:
- ❌ **Third-party components assessed**: No evidence of third-party risk assessments
- ❌ **Vendor security requirements in contracts**: No evidence of security clauses in procurement
- ❌ **Software supply chain protected**: No Software Bill of Materials (SBOM), no open source vetting
- ❌ **Supplier security attestations**: ISN 2023/10 supplier attestations not obtained

**Gaps Identified** (CRITICAL):
1. No Software Bill of Materials (SBOM) for InTune-deployed applications
2. No third-party risk assessments for Microsoft, hardware vendors, or ISVs
3. No supplier security attestations per ISN 2023/10 requirements
4. No open source software (OSS) security vetting process
5. No supply chain attack threat model (SolarWinds-style compromise)

**Assessment Details**:

**Third-Party Component Assessment**:

**Primary Vendor**: Microsoft (InTune, Azure AD, Defender for Endpoint, OneDrive, Windows 11)
- ❌ No Microsoft security attestation obtained
- ⚠️ Microsoft is FedRAMP High certified (US Government), but MOD-specific assurance unclear
- ⚠️ Microsoft Trustworthy Computing documentation exists but not referenced in project docs
- ❌ No assessment of Microsoft Azure UK South data sovereignty compliance with MOD requirements

**Hardware Vendors**: Dell, HP, Lenovo (assumed - not specified in requirements.md)
- ❌ No hardware vendor security assessments
- ❌ No firmware security requirements (UEFI Secure Boot signature validation, TPM attestation)
- ⚠️ Copilot+ PC procurement (30% of devices) - no ARM64 supply chain security assessment
- ❌ No hardware supply chain provenance tracking (risk of counterfeit components)

**Third-Party Applications**: Top 100 business applications (requirements.md line 47)
- ⚠️ Application compatibility testing planned, but no security assessment
- ❌ No application vendor security questionnaires
- ❌ No CVE vulnerability scanning for third-party apps before deployment
- ❌ No Software Bill of Materials (SBOM) for each application

**Software Bill of Materials (SBOM)**:
- ❌ No SBOM created for InTune-deployed software
- ❌ No SBOM format specified (SPDX, CycloneDX, SWID)
- ❌ No SBOM maintenance process (how to update SBOM as software changes)
- **Impact**: Cannot identify vulnerable components during Log4Shell-style supply chain incidents

**Supplier Security Attestations (ISN 2023/10)**:
- ❌ No supplier attestations obtained from Microsoft or hardware vendors
- ❌ No contractual requirement for suppliers to attest systems are secure
- ⚠️ ISN 2023/10 requires suppliers to attest that systems meet SbD principles - not implemented
- **Impact**: Cannot demonstrate supply chain security compliance to MOD Accreditation Service

**Open Source Software (OSS) Security**:
- ❌ No OSS vetting process documented
- ❌ No OSS vulnerability scanning (Dependabot, Snyk, etc.)
- ⚠️ Windows 11 and InTune may include OSS components (unknown)
- ❌ No OSS license compliance review (GPL, LGPL, Apache, MIT)

**Supply Chain Attack Mitigations**:
- ⚠️ InTune application deployment uses Microsoft-signed packages (some protection)
- ⚠️ Windows Update uses Microsoft code signing (some protection)
- ❌ No supply chain attack threat model (SolarWinds, Kaseya, Log4Shell scenarios)
- ❌ No monitoring for supply chain compromise indicators (unexpected network connections, unauthorized code execution)

**Procurement Security Requirements**:
- ❌ sow.md (Statement of Work) does not include security requirements for vendors
- ❌ evaluation-criteria.md (Vendor Evaluation) does not include security scoring
- ❌ No security clauses in procurement contracts (security breach liability, incident notification, audit rights)

**Remediation Actions** (CRITICAL PRIORITY):

| Action | Priority | Owner | Due Date | Effort |
|--------|----------|-------|----------|--------|
| Obtain supplier security attestations from Microsoft per ISN 2023/10 | CRITICAL | Procurement | Month 1 | 2 weeks |
| Conduct third-party risk assessment for Microsoft (InTune, Azure, Defender) | CRITICAL | PSyO | Month 1 | 3 weeks |
| Create Software Bill of Materials (SBOM) for all InTune-deployed applications | HIGH | IT Operations | Month 2 | 4 weeks |
| Implement CVE vulnerability scanning for third-party applications | HIGH | IT Operations | Month 2 | 2 weeks |
| Add security requirements to vendor procurement contracts (security clauses, audit rights) | HIGH | Procurement | Month 2 | 2 weeks |
| Document supply chain attack threat model and mitigations | HIGH | Security Lead | Month 1 | 2 weeks |
| Obtain hardware vendor security assessments (firmware security, TPM provenance) | MEDIUM | Procurement | Month 3 | 3 weeks |

**Compliance Score**: 15% (CRITICAL gap - supply chain security almost entirely absent)

---

### Principle 7: Enable Through-Life Assurance

**Status**: ⚠️ **PARTIALLY COMPLIANT**

**Evidence**:
- ✅ **Security posture maintained post-deployment**: InTune continuous compliance monitoring (requirements.md line 48)
- ⚠️ **Regular security reviews**: Quarterly risk register updates planned (risk-register.md line 85), but no formal security review schedule
- ⚠️ **Capability to respond to new threats**: Defender for Endpoint threat intelligence, but no documented threat response process
- ⚠️ **Security monitoring operational**: InTune and Defender monitoring, but SOC integration unclear
- ❌ **Incident response capability**: No documented incident response plan
- ⚠️ **Patching and update process**: Windows Update via InTune documented (requirements.md line 48), but patch testing process unclear
- ⚠️ **Security governance continues through-life**: Risk register reviews planned, but no through-life security governance framework
- ❌ **Decommissioning process**: Configuration Manager decommissioning planned (requirements.md line 117), but no secure data deletion process documented

**Assessment Details**:

**Continuous Security Monitoring**:
- ✅ InTune compliance policies with automated alerting (requirements.md line 48)
- ✅ Defender for Endpoint real-time threat detection (requirements.md line 49)
- ✅ Azure AD Conditional Access continuous verification (requirements.md line 50)
- ⚠️ No documentation of Security Operations Centre (SOC) integration
- ⚠️ No 24/7 security monitoring capability documented
- ❌ No security monitoring dashboard for senior stakeholders (CISO, IAO)

**Incident Response Capability**:
- ⚠️ Defender for Endpoint automated response (isolate device, quarantine file) - built-in capability
- ⚠️ InTune remote wipe capability (standard feature)
- ❌ No documented incident response plan (detection → containment → eradication → recovery → lessons learned)
- ❌ No incident response team assigned (roles, responsibilities, contact details)
- ❌ No incident response playbooks (ransomware, data breach, insider threat, supply chain compromise)
- ❌ No integration with MOD CERT (MOD Computer Emergency Response Team)

**Patching and Update Process**:
- ✅ Windows Update managed via InTune update rings (data-model.md E-014 Update Ring entity)
- ✅ Update ring assignment (E-015) stages updates: Early Adopter → Business User → Critical Systems
- ⚠️ No patch testing process documented (how are patches validated before broad deployment?)
- ⚠️ No emergency patching process (how to deploy critical patches outside of update rings?)
- ⚠️ No patch compliance reporting (how to identify devices with missing patches?)

**Through-Life Security Governance**:
- ✅ risk-register.md line 84: Monthly risk review with Steering Committee
- ✅ risk-register.md line 85: Quarterly risk register updates
- ⚠️ No annual security review documented (IAMM re-assessment, security architecture review)
- ⚠️ No re-accreditation process documented (MOD systems require periodic re-accreditation)
- ❌ No security governance framework for Live phase (post-migration security management)

**Threat Intelligence and Response**:
- ✅ Defender for Endpoint includes Microsoft Threat Intelligence feeds
- ⚠️ No documentation of threat intelligence consumption process (who reviews alerts? how are threats prioritized?)
- ❌ No process for responding to new vulnerabilities (CVE) or threat campaigns (APT groups)
- ❌ No red team exercises planned for Live phase (continuous adversarial testing)

**Configuration Manager Decommissioning (Secure Data Deletion)**:
- ✅ requirements.md line 117: Configuration Manager decommissioning planned (Month 18)
- ❌ No secure data deletion process documented (how to securely wipe Configuration Manager database with device inventory, user data?)
- ❌ No data retention analysis (what data must be retained for audit purposes before decommissioning?)
- ⚠️ No plan for archiving Configuration Manager historical data before decommissioning

**Device Decommissioning (End of Life)**:
- ⚠️ InTune device wipe capability (standard feature) - assumes secure data deletion
- ❌ No documented process for device decommissioning (retire → wipe → verify → dispose)
- ❌ No certificate revocation process (device certificates, user certificates)
- ❌ No physical disposal process (CESG-approved data destruction for OFFICIAL-SENSITIVE devices)

**Remediation Actions**:

| Action | Priority | Owner | Due Date | Effort |
|--------|----------|-------|----------|--------|
| Document incident response plan with playbooks (ransomware, breach, insider, supply chain) | CRITICAL | PSyO | Month 2 | 3 weeks |
| Establish SOC integration for InTune and Defender for Endpoint alerts | HIGH | Security Lead | Month 3 | 3 weeks |
| Document patch testing and emergency patching process | HIGH | IT Operations | Month 2 | 2 weeks |
| Define through-life security governance framework (reviews, re-accreditation, audits) | MEDIUM | PSyO | Month 3 | 2 weeks |
| Document Configuration Manager secure decommissioning process (data deletion, archiving) | MEDIUM | IT Operations | Month 4 | 2 weeks |
| Create device decommissioning process (wipe, verify, CESG-approved disposal) | MEDIUM | IT Operations | Month 3 | 1 week |

**Compliance Score**: 55% (good monitoring capabilities, but formal through-life governance incomplete)

---

## 3. NIST Cybersecurity Framework Assessment

### NIST CSF Summary Score: ⚠️ 62% Compliant (Target: 80%+)

| Function | Score | Status | Key Gaps |
|----------|-------|--------|----------|
| **Identify** | 55% | ⚠️ Partial | Asset inventory incomplete, no threat intelligence process |
| **Protect** | 85% | ✅ Good | Strong access control, encryption, but PAM missing |
| **Detect** | 70% | ⚠️ Partial | Defender for Endpoint strong, but SOC integration missing |
| **Respond** | 45% | ❌ Weak | No incident response plan, no MOD CERT integration |
| **Recover** | 55% | ⚠️ Partial | Backup via OneDrive, but no disaster recovery plan |

---

### Function 1: IDENTIFY (55% - Partially Compliant)

**Purpose**: Develop understanding of cyber security risks to systems, assets, data, and capabilities.

#### ID.AM - Asset Management

**Status**: ⚠️ **PARTIALLY COMPLIANT (60%)**

**Evidence**:
- ✅ ID.AM-1: Device inventory maintained in InTune (data-model.md E-002 Device entity with hardware details)
- ✅ ID.AM-2: Software inventory via InTune application catalog (data-model.md E-003 Application entity)
- ⚠️ ID.AM-3: No documented organizational communication flows (network diagrams missing)
- ❌ ID.AM-4: No external information systems inventory (third-party SaaS tools not documented)
- ✅ ID.AM-5: Resources prioritized by criticality (data-model.md data classification: Public/Internal/Confidential/Restricted)
- ⚠️ ID.AM-6: Cybersecurity roles partially defined (CISO, Security Architect), but no RACI matrix for security responsibilities

**Gaps**:
- No network architecture diagram showing data flows between InTune, Azure AD, Defender, OneDrive, ServiceNow
- No third-party SaaS inventory (productivity tools, collaboration platforms beyond Microsoft 365)
- No cybersecurity RACI matrix (who is Responsible/Accountable/Consulted/Informed for each security control?)

#### ID.BE - Business Environment

**Status**: ✅ **COMPLIANT (80%)**

**Evidence**:
- ✅ ID.BE-1: Organizational role in critical infrastructure documented (stakeholder-drivers.md defines mission-critical device management)
- ✅ ID.BE-2: Critical services documented (requirements.md lines 22-28 define security, compliance, user productivity objectives)
- ✅ ID.BE-3: Priorities for organizational mission documented (stakeholder-drivers.md: CISO priority = security, CFO priority = cost)
- ✅ ID.BE-4: Dependencies on critical services documented (dependency on Microsoft cloud: InTune, Azure AD, Defender)
- ⚠️ ID.BE-5: Resilience requirements partially documented (10-day rollback capability, but no RTO/RPO defined)

**Gaps**:
- No formal Recovery Time Objective (RTO) or Recovery Point Objective (RPO) for InTune tenant failure

#### ID.GV - Governance

**Status**: ⚠️ **PARTIALLY COMPLIANT (50%)**

**Evidence**:
- ⚠️ ID.GV-1: Organizational cybersecurity policy partially established (CISO requirements documented, but no formal security policy document)
- ⚠️ ID.GV-2: Cybersecurity roles partially defined (CISO, Security Architect), but no Delivery Team Security Lead or PSyO appointed
- ❌ ID.GV-3: Legal and regulatory requirements incomplete (GDPR compliant, but MOD JSP 440/453 compliance gaps)
- ⚠️ ID.GV-4: Governance oversight partially established (risk register reviews planned, but no Information Security Management System)

**Gaps**:
- No formal Information Security Policy document
- No Delivery Team Security Lead or PSyO appointed (CRITICAL)
- No ISMS (Information Security Management System) documented

#### ID.RA - Risk Assessment

**Status**: ✅ **COMPLIANT (75%)**

**Evidence**:
- ✅ ID.RA-1: Asset vulnerabilities identified in risk register (risk-register.md R-004: Application compatibility failures)
- ⚠️ ID.RA-2: Cyber threat intelligence partially received (Defender for Endpoint threat feeds, but no threat intelligence process)
- ❌ ID.RA-3: No formal threat model documented (STRIDE/DREAD assessment missing)
- ✅ ID.RA-4: Potential business impacts identified (risk-register.md: security breach = £500K-£2M penalties)
- ✅ ID.RA-5: Threats/vulnerabilities/likelihoods/impacts used to determine risk (risk-register.md Orange Book methodology)
- ✅ ID.RA-6: Risk responses documented (risk-register.md 4Ts: Treat/Tolerate/Transfer/Terminate)

**Gaps**:
- No formal threat model (CRITICAL)
- No threat intelligence consumption process

#### ID.RM - Risk Management Strategy

**Status**: ✅ **COMPLIANT (85%)**

**Evidence**:
- ✅ ID.RM-1: Risk management process established (risk-register.md HM Treasury Orange Book framework)
- ✅ ID.RM-2: Risk tolerance determined (risk-register.md: Residual risk target 32% Medium, down from 56% High)
- ✅ ID.RM-3: Risk tolerance communicated (risk-register.md escalation to CIO + Steering Committee)

---

### Function 2: PROTECT (85% - Compliant)

**Purpose**: Implement safeguards to ensure delivery of critical services.

#### PR.AC - Access Control

**Status**: ✅ **COMPLIANT (90%)**

**Evidence**:
- ✅ PR.AC-1: Identities managed via Azure AD (requirements.md line 45: Azure AD join for all devices)
- ✅ PR.AC-2: Physical access managed (TPM 2.0 hardware-based authentication, BitLocker encryption)
- ✅ PR.AC-3: Remote access managed via Conditional Access (requirements.md line 50)
- ✅ PR.AC-4: Least privilege via Azure AD RBAC (assumed - standard InTune practice)
- ✅ PR.AC-5: Network integrity protected via Conditional Access (non-compliant devices blocked)
- ⚠️ PR.AC-6: Identities authenticated with MFA (requirements.md line 34: 100% MFA enforcement), but no PIV/CAC smart card
- ✅ PR.AC-7: Users/devices authenticated before data access (Conditional Access policy)

**Gaps**:
- No MOD smart card (CAC/MOD Form 90) authentication documented (required for OFFICIAL-SENSITIVE)
- No Privileged Access Management (PAM) for IT administrators documented

#### PR.AT - Awareness and Training

**Status**: ⚠️ **PARTIALLY COMPLIANT (60%)**

**Evidence**:
- ✅ PR.AT-1: Users informed of cybersecurity roles (requirements.md line 53: Helpdesk training)
- ⚠️ PR.AT-2: Privileged users understand roles (assumed for IT Operations, but no documented security training)
- ⚠️ PR.AT-3: Third-party stakeholders understand roles (vendor management not documented)
- ⚠️ PR.AT-4: Senior executives understand roles (CIO/CISO assigned, but no documented security awareness training)
- ❌ PR.AT-5: No physical and cybersecurity personnel training documented

**Gaps**:
- No security awareness training program documented
- No role-based security training (users, IT admins, executives)

#### PR.DS - Data Security

**Status**: ✅ **COMPLIANT (90%)**

**Evidence**:
- ✅ PR.DS-1: Data at rest protected via BitLocker AES-256 (requirements.md line 24)
- ✅ PR.DS-2: Data in transit protected via TLS 1.3 (standard Microsoft cloud encryption)
- ✅ PR.DS-3: Assets formally managed throughout lifecycle (data-model.md entities cover creation → migration → decommissioning)
- ✅ PR.DS-4: Adequate capacity maintained (cloud-based InTune auto-scales)
- ✅ PR.DS-5: Protections against data leaks via OneDrive Known Folder Move (requirements.md line 46)
- ⚠️ PR.DS-6: Integrity checking mechanisms partially implemented (TPM attestation), but no file integrity monitoring (FIM)
- ✅ PR.DS-7: Development environment separated from production (InTune test tenant assumed - standard practice)
- ✅ PR.DS-8: Integrity mechanisms verified (TPM 2.0, Secure Boot signature validation)

**Gaps**:
- No Data Loss Prevention (DLP) policies documented
- No File Integrity Monitoring (FIM) for critical system files

#### PR.IP - Information Protection Processes and Procedures

**Status**: ⚠️ **PARTIALLY COMPLIANT (70%)**

**Evidence**:
- ✅ PR.IP-1: Baseline configuration created (InTune configuration profiles with Windows 11 security baselines)
- ⚠️ PR.IP-2: System development lifecycle managed (Alpha phase complete, but no formal SDLC for custom InTune scripts)
- ⚠️ PR.IP-3: Configuration change control partially managed (InTune versioning, but no formal change advisory board)
- ✅ PR.IP-4: Backups maintained via OneDrive versioning (standard 30-day version history)
- ⚠️ PR.IP-5: Physical environment security partially addressed (TPM/BitLocker for device theft, but no physical access control to devices)
- ❌ PR.IP-6: No data destruction policy documented (CESG-approved wiping for decommissioned devices)
- ⚠️ PR.IP-7: Protection processes improved (risk register lessons learned, but no continuous improvement framework)
- ⚠️ PR.IP-8: Effectiveness of protection technologies shared (monthly Steering Committee reviews, but no industry sharing)
- ✅ PR.IP-9: Response and recovery plans tested via pilot deployment (stakeholder-drivers.md: 10-day rollback capability)
- ❌ PR.IP-10: No response/recovery plans updated (no documented IR plan to update)
- ⚠️ PR.IP-11: Cybersecurity partially included in HR practices (security clearances assumed for MOD personnel, but no documentation)
- ⚠️ PR.IP-12: Vulnerability management plan partially implemented (Defender Vulnerability Management available, but not documented)

**Gaps**:
- No formal change advisory board (CAB) for InTune configuration changes
- No CESG-approved data destruction policy
- No incident response plan (CRITICAL)
- No vulnerability management process documented

#### PR.MA - Maintenance

**Status**: ⚠️ **PARTIALLY COMPLIANT (60%)**

**Evidence**:
- ✅ PR.MA-1: Maintenance performed per specifications (Windows Update via InTune update rings)
- ⚠️ PR.MA-2: Remote maintenance approved and logged (InTune remote actions logged, but no approval workflow documented)

**Gaps**:
- No documented approval workflow for remote maintenance (InTune remote wipe, device reset)

#### PR.PT - Protective Technology

**Status**: ✅ **COMPLIANT (95%)**

**Evidence**:
- ✅ PR.PT-1: Audit logs maintained (data-model.md E-015: 7-year audit log retention)
- ✅ PR.PT-2: Removable media protected (BitLocker to-go, assumed Windows 11 default)
- ✅ PR.PT-3: Least privilege via Conditional Access and Azure AD RBAC
- ✅ PR.PT-4: Communications protected via TLS 1.3 and Conditional Access (device authentication)
- ✅ PR.PT-5: Mechanisms implemented to achieve resilience (OneDrive versioning, 10-day rollback)

---

### Function 3: DETECT (70% - Partially Compliant)

**Purpose**: Identify occurrence of a cybersecurity event.

#### DE.AE - Anomalies and Events

**Status**: ✅ **COMPLIANT (80%)**

**Evidence**:
- ✅ DE.AE-1: Baseline network operations established (Defender for Endpoint behavioral analytics)
- ✅ DE.AE-2: Detected events analyzed (Defender for Endpoint alert investigation)
- ✅ DE.AE-3: Event data aggregated (Azure AD logs, InTune logs, Defender logs in Microsoft 365 Defender portal)
- ⚠️ DE.AE-4: Impact of events determined (Defender severity ratings), but no business impact analysis
- ⚠️ DE.AE-5: Incident alert thresholds partially established (Defender default thresholds), but no custom MOD-specific thresholds

**Gaps**:
- No custom alert thresholds for MOD threat scenarios (nation-state APT, insider threat)

#### DE.CM - Continuous Monitoring

**Status**: ⚠️ **PARTIALLY COMPLIANT (65%)**

**Evidence**:
- ✅ DE.CM-1: Network monitored for cyber events (Defender for Endpoint network protection)
- ✅ DE.CM-2: Physical environment monitored (TPM attestation, BitLocker status)
- ✅ DE.CM-3: Personnel activity monitored (Azure AD sign-in logs, Conditional Access logs)
- ⚠️ DE.CM-4: Malicious code detected (Defender Antivirus, Defender for Endpoint), but no custom threat hunting
- ✅ DE.CM-5: Unauthorized mobile code detected (Defender Application Guard for untrusted apps)
- ⚠️ DE.CM-6: External service provider activity monitored (Microsoft audit logs available), but no active monitoring
- ⚠️ DE.CM-7: Unauthorized personnel/devices/software monitored (Conditional Access blocks unknowns), but no anomaly detection
- ✅ DE.CM-8: Vulnerability scans performed (Defender Vulnerability Management available)

**Gaps**:
- No Security Operations Centre (SOC) integration for 24/7 monitoring
- No threat hunting capability (proactive search for nation-state APT indicators)
- No external service provider monitoring (Microsoft cloud operations visibility)

#### DE.DP - Detection Processes

**Status**: ⚠️ **PARTIALLY COMPLIANT (60%)**

**Evidence**:
- ⚠️ DE.DP-1: Roles partially defined (Security Architect assigned), but no Security Operations team
- ⚠️ DE.DP-2: Detection activities partially comply with requirements (Defender for Endpoint enabled), but no MOD-specific detection rules
- ❌ DE.DP-3: No detection processes tested (no purple team exercises, no detection validation)
- ⚠️ DE.DP-4: Event detection information partially communicated (Defender alerts), but no SOC escalation process
- ⚠️ DE.DP-5: Detection processes partially improved (Microsoft threat intelligence updates), but no lessons learned from incidents

**Gaps**:
- No Security Operations team assigned (CRITICAL)
- No detection processes tested (purple team, red team)
- No MOD-specific detection rules (nation-state TTPs, insider threat indicators)

---

### Function 4: RESPOND (45% - Non-Compliant)

**Purpose**: Take action regarding a detected cybersecurity incident.

#### RS.RP - Response Planning

**Status**: ❌ **NON-COMPLIANT (20%)**

**Evidence**:
- ❌ RS.RP-1: No incident response plan documented (CRITICAL gap)
- ⚠️ RS.RP-2: Response plan partially executed during incident (Defender automated response), but no documented playbooks
- ❌ RS.RP-3: No response plan testing (tabletop exercises, simulations)
- ❌ RS.RP-4: No response plan updates (no plan exists to update)
- ❌ RS.RP-5: No coordination with stakeholders (no MOD CERT integration documented)

**Gaps** (CRITICAL):
- No incident response plan (detection → containment → eradication → recovery → lessons learned)
- No incident response playbooks (ransomware, data breach, insider threat, supply chain compromise)
- No incident response team assigned (roles, responsibilities, contact details)
- No MOD CERT integration (MOD incidents must be reported to MOD CERT)

#### RS.CO - Communications

**Status**: ❌ **NON-COMPLIANT (30%)**

**Evidence**:
- ⚠️ RS.CO-1: Personnel know roles during incidents (assumed Helpdesk escalates to IT Operations), but not documented
- ❌ RS.CO-2: No incident reporting criteria (when to report to MOD CERT, IAO, CISO, Accreditation Service)
- ❌ RS.CO-3: No information sharing with stakeholders during incidents
- ⚠️ RS.CO-4: Coordination with external stakeholders partially addressed (Microsoft support available), but no MOD CERT/NCSC coordination
- ❌ RS.CO-5: No coordination with law enforcement (no process for reporting serious incidents to NCSC, NCA, or MOD Police)

**Gaps**:
- No incident escalation matrix (when to notify MOD CERT, NCSC, senior leadership)
- No coordination with MOD CERT or NCSC (National Cyber Security Centre)

#### RS.AN - Analysis

**Status**: ⚠️ **PARTIALLY COMPLIANT (60%)**

**Evidence**:
- ⚠️ RS.AN-1: Notifications investigated (Defender for Endpoint alert investigation), but no documented triage process
- ⚠️ RS.AN-2: Impact partially understood (Defender severity ratings), but no business impact analysis
- ⚠️ RS.AN-3: Forensics partially performed (Defender Live Response available), but no documented forensics process
- ⚠️ RS.AN-4: Incidents categorized (Defender alert types), but no MOD-specific incident taxonomy
- ❌ RS.AN-5: No incident response process improvements (no lessons learned process)

**Gaps**:
- No documented incident triage and analysis process
- No forensics capability assigned (who performs digital forensics? where is forensic evidence stored?)

#### RS.MI - Mitigation

**Status**: ⚠️ **PARTIALLY COMPLIANT (50%)**

**Evidence**:
- ✅ RS.MI-1: Incidents contained (Defender for Endpoint automated isolation)
- ⚠️ RS.MI-2: Incidents mitigated (Defender automated remediation), but no documented mitigation strategies
- ❌ RS.MI-3: No newly identified vulnerabilities mitigated (no vulnerability management process)

**Gaps**:
- No documented incident mitigation strategies (when to isolate device, wipe device, revoke user access)

#### RS.IM - Improvements

**Status**: ❌ **NON-COMPLIANT (20%)**

**Evidence**:
- ⚠️ RS.IM-1: Response plans partially incorporate lessons learned (risk register lessons learned process), but no incident-specific lessons learned
- ❌ RS.IM-2: No response strategies updated (no documented response strategies to update)

**Gaps**:
- No post-incident review process
- No lessons learned integration into security controls

---

### Function 5: RECOVER (55% - Partially Compliant)

**Purpose**: Maintain resilience and restore capabilities impaired by a cybersecurity incident.

#### RC.RP - Recovery Planning

**Status**: ⚠️ **PARTIALLY COMPLIANT (60%)**

**Evidence**:
- ⚠️ RC.RP-1: Recovery plan partially executed (10-day rollback capability, OneDrive versioning), but no formal disaster recovery plan
- ❌ RC.RP-2: No recovery plan testing (no DR exercises)
- ❌ RC.RP-3: No recovery plan updates
- ⚠️ RC.RP-4: Coordination with external parties partially addressed (Microsoft support), but no coordination with MOD Accreditation Service during incidents

**Gaps**:
- No formal disaster recovery plan for InTune tenant failure
- No Business Continuity Plan (BCP) for endpoint management loss
- No Recovery Time Objective (RTO) or Recovery Point Objective (RPO) defined

#### RC.IM - Improvements

**Status**: ⚠️ **PARTIALLY COMPLIANT (50%)**

**Evidence**:
- ⚠️ RC.IM-1: Recovery plans partially incorporate lessons learned (risk register lessons learned), but no incident-specific recovery lessons
- ❌ RC.IM-2: No recovery strategies updated (no documented recovery strategies to update)

**Gaps**:
- No post-incident recovery review
- No continuous improvement of recovery capabilities

#### RC.CO - Communications

**Status**: ⚠️ **PARTIALLY COMPLIANT (60%)**

**Evidence**:
- ⚠️ RC.CO-1: Public relations partially managed (Change Manager assigned for user communications), but no crisis communications plan
- ⚠️ RC.CO-2: Reputation repaired (Change Manager manages user communications), but no MOD-specific reputation management
- ⚠️ RC.CO-3: Recovery activities communicated (assumed via Change Manager), but not documented

**Gaps**:
- No crisis communications plan for major incidents (data breach, ransomware)

---

### NIST CSF Remediation Summary

**Critical NIST Gaps Requiring Immediate Action**:

| Gap | NIST Category | Priority | Owner | Due Date |
|-----|---------------|----------|-------|----------|
| No incident response plan | RS.RP-1 | CRITICAL | PSyO | Month 2 |
| No Delivery Team Security Lead appointed | ID.GV-2 | CRITICAL | CIO | Week 1 |
| No threat model documented | ID.RA-3 | CRITICAL | Security Lead | Month 1 |
| No MOD CERT integration | RS.CO-4 | HIGH | PSyO | Month 1 |
| No SOC integration | DE.CM (all) | HIGH | Security Lead | Month 3 |
| No disaster recovery plan | RC.RP-1 | MEDIUM | IT Operations | Month 3 |

---

## 4. Three Lines of Defence Assessment

### Overall Status: ⚠️ PARTIALLY COMPLIANT (60%)

| Line of Defence | Status | Score | Key Gaps |
|-----------------|--------|-------|----------|
| **First Line** (Delivery Team) | ⚠️ Partial | 50% | No Security Lead appointed, security ownership unclear |
| **Second Line** (Assurance) | ⚠️ Partial | 65% | No PSyO, no IAA engagement, no formal assurance reviews |
| **Third Line** (Independent Audit) | ❌ Weak | 40% | No security testing, no independent audit planned |

---

### First Line of Defence: Delivery Team Owns Security

**Status**: ⚠️ **PARTIALLY COMPLIANT (50%)**

**Purpose**: Delivery team owns day-to-day security management and is accountable for implementing security controls.

**Evidence**:
- ❌ **Delivery Team Security Lead NOT appointed** (JSP 440 Leaflet 5C requirement)
- ⚠️ **Security requirements owned by capability owner** (IT Operations Director is IAO candidate, but not formally appointed)
- ⚠️ **Day-to-day security management** (Security Architect assigned for design, but operational security ownership unclear)

**First Line Roles**:

| Role | Assigned | Status | Responsibilities |
|------|----------|--------|------------------|
| Delivery Team Security Lead | ❌ NOT APPOINTED | NON-COMPLIANT | Lead security design, threat modeling, security testing, liaise with IAA |
| Capability Owner (IAO) | ⚠️ IT Operations Director (informal) | PARTIAL | Accountable for system security, risk acceptance, accreditation |
| Technical Lead | ✅ Endpoint Manager (requirements.md line 76) | COMPLIANT | InTune configuration, security policy deployment |
| Security Architect | ✅ Assigned (requirements.md line 77) | COMPLIANT | Zero Trust design, Defender for Endpoint architecture |

**Day-to-Day Security Management**:
- ✅ InTune Administrator manages compliance policies (requirements.md line 48)
- ✅ Security Architect designs Zero Trust architecture (requirements.md line 77)
- ⚠️ Unclear who monitors security alerts daily (Defender for Endpoint, Conditional Access)
- ⚠️ Unclear who triages security incidents (no incident response team assigned)
- ❌ No security champion network (users trained to identify and report security issues)

**Security Requirements Ownership**:
- ✅ BR-001 Security Compliance owned by CISO (requirements.md line 103)
- ✅ BR-006 Regulatory Compliance owned by CISO (requirements.md line 192)
- ⚠️ Security requirements scattered across business requirements - no consolidated security requirements document

**Gaps**:
1. No Delivery Team Security Lead appointed (CRITICAL)
2. No formal IAO appointment (IT Operations Director should be formally appointed)
3. No security operations team assigned (who monitors alerts 24/7?)
4. No security champion network (users as first line of defence for phishing, social engineering)

**Remediation Actions**:

| Action | Priority | Owner | Due Date |
|--------|----------|-------|----------|
| Appoint Delivery Team Security Lead (CISO delegate or Senior Security Architect) | CRITICAL | CIO | Week 1 |
| Formally appoint IT Operations Director as IAO with documented responsibilities | CRITICAL | CISO | Week 1 |
| Assign security operations team or SOC integration for 24/7 monitoring | HIGH | Security Lead | Month 2 |
| Establish security champion network (1 champion per 50 users) | MEDIUM | Change Manager | Month 3 |

---

### Second Line of Defence: Assurance and Oversight

**Status**: ⚠️ **PARTIALLY COMPLIANT (65%)**

**Purpose**: Independent assurance, oversight, and policy definition. Second line provides challenge to first line.

**Evidence**:
- ⚠️ **Technical Coherence Assurance**: Enterprise Architect assigned (requirements.md line 75), but no formal assurance reviews scheduled
- ❌ **Security policies and standards**: No formal Information Security Policy or security standards document
- ❌ **Independent security reviews**: No PSyO appointed, no IAA engaged, no security architecture review completed

**Second Line Roles**:

| Role | Assigned | Status | Responsibilities |
|------|----------|--------|------------------|
| Project Security Officer (PSyO) | ❌ NOT APPOINTED | NON-COMPLIANT | Security oversight, RMADS preparation, liaise with Accreditation Service |
| Information Assurance Architect (IAA) | ❌ NOT ENGAGED | NON-COMPLIANT | Independent security architecture review and approval |
| Enterprise Architect | ✅ Assigned (requirements.md line 75) | COMPLIANT | Architecture governance, principle enforcement |
| CISO | ✅ Assigned (requirements.md line 73) | COMPLIANT | Security policy, compliance approval |
| Data Protection Officer | ✅ CISO/DPO (data-model.md line 49) | COMPLIANT | GDPR compliance, DPIA oversight |

**Technical Coherence Assurance**:
- ✅ Enterprise Architect assigned for architecture governance (requirements.md line 75)
- ⚠️ No formal architecture review board documented (who approves architecture decisions?)
- ⚠️ No schedule of architecture reviews (Discovery review, Alpha review, Beta review, Live review)
- ⚠️ traceability-matrix.md tracks requirements to design, but no security requirements traceability

**Security Policies and Standards**:
- ❌ No Information Security Policy document
- ❌ No security standards (password policy, access control standard, encryption standard, incident response standard)
- ⚠️ Microsoft security baselines applied via InTune, but not formally documented as organizational security standards
- ✅ GDPR compliance policies defined (data-model.md DPIA, data retention, cross-border transfers)

**Independent Security Reviews**:
- ❌ No PSyO appointed (OFFICIAL-SENSITIVE data requires PSyO per JSP 440)
- ❌ No IAA engaged (OFFICIAL-SENSITIVE systems require IAA approval before deployment)
- ❌ No security architecture review completed (Security Architect designed architecture, but no independent review)
- ⚠️ Risk register reviewed monthly by Steering Committee (risk-register.md line 84), but no security-specific oversight

**MOD Accreditation Service Engagement**:
- ❌ No engagement with MOD Accreditation Service documented
- ❌ No Security Aspects Letter (SAL) obtained
- ❌ No RMADS (Risk Management and Accreditation Documentation Set) preparation started
- ❌ No accreditation timeline planned

**Gaps**:
1. No PSyO appointed (CRITICAL - required for OFFICIAL-SENSITIVE)
2. No IAA engaged (CRITICAL - required before deployment)
3. No Information Security Policy or security standards (HIGH)
4. No formal architecture review board or review schedule (MEDIUM)

**Remediation Actions**:

| Action | Priority | Owner | Due Date |
|--------|----------|-------|----------|
| Appoint PSyO (dedicated role reporting to CISO) | CRITICAL | CISO | Week 1 |
| Engage MOD Accreditation Service to assign IAA | CRITICAL | PSyO | Week 2 |
| Create Information Security Policy and security standards | HIGH | CISO | Month 2 |
| Establish architecture review board with monthly reviews | MEDIUM | Enterprise Architect | Month 2 |

---

### Third Line of Defence: Independent Audit

**Status**: ❌ **NON-COMPLIANT (40%)**

**Purpose**: Independent audit and assurance. Third line provides challenge to first and second lines.

**Evidence**:
- ❌ **Internal audit of security controls**: No internal audit planned
- ❌ **Penetration testing**: No penetration testing completed (required before Beta phase)
- ❌ **External audit**: No external audit planned (NAO, GIAA, or commercial audit)

**Third Line Activities**:

| Activity | Status | Evidence | Gap |
|----------|--------|----------|-----|
| Penetration Testing | ❌ NOT COMPLETED | None | Required before Beta phase (JSP 440) |
| Vulnerability Scanning | ⚠️ PARTIAL | Defender Vulnerability Management available but not documented | No documented vulnerability management process |
| Internal Audit (ISMS) | ❌ NOT PLANNED | None | ISO 27001 requires annual ISMS audit |
| External Audit (Accreditation) | ❌ NOT PLANNED | None | MOD systems require accreditation audit by IAA |
| Red Team Exercise | ❌ NOT PLANNED | None | Best practice for HIGH/SECRET systems |

**Penetration Testing**:
- ❌ No penetration testing completed (CRITICAL gap for accreditation)
- ❌ No penetration testing vendor selected
- ❌ No penetration testing scope defined (InTune configuration, Conditional Access, Defender for Endpoint)
- ❌ No penetration testing schedule (should complete before Beta phase pilot deployment)
- **Recommendation**: CREST-certified or CHECK-approved penetration testing vendor for MOD systems

**Vulnerability Scanning**:
- ⚠️ Defender Vulnerability Management available (built-in to Defender for Endpoint)
- ❌ No documented vulnerability scanning schedule (weekly/monthly)
- ❌ No vulnerability remediation SLAs (Critical = 7 days, High = 30 days, Medium = 90 days)
- ❌ No vulnerability reporting to PSyO or IAO

**Internal Audit (ISMS)**:
- ❌ No Information Security Management System (ISMS) documented
- ❌ No annual ISMS audit planned (ISO 27001 requirement if organization is certified)
- ⚠️ Risk register provides some audit trail, but not full ISMS

**External Audit (Accreditation)**:
- ❌ No MOD Accreditation Service audit scheduled
- ❌ No RMADS documentation submitted for review
- ❌ No interim or conditional accreditation obtained
- **Recommendation**: Engage MOD Accreditation Service immediately to start accreditation process (3-6 month lead time)

**External Audit (NAO, GIAA)**:
- ❌ No National Audit Office (NAO) audit planned (applies to major MOD programmes)
- ❌ No Government Internal Audit Agency (GIAA) audit planned (applies to Defence Digital)
- **Recommendation**: Coordinate with MOD Internal Audit team if required for this programme

**Red Team Exercise**:
- ❌ No red team exercise planned (simulated nation-state attack)
- **Recommendation**: Plan red team exercise for Live phase (Month 12+) after security baseline established
- **Recommendation**: Use MOD red team (NCSC/GCHQ) or CREST-certified red team for OFFICIAL-SENSITIVE systems

**Gaps**:
1. No penetration testing completed (CRITICAL - blocker for accreditation)
2. No vulnerability scanning process documented (HIGH)
3. No MOD Accreditation Service audit scheduled (CRITICAL)
4. No internal or external audit planned (MEDIUM)

**Remediation Actions**:

| Action | Priority | Owner | Due Date |
|--------|----------|-------|----------|
| Procure CREST/CHECK-approved penetration testing vendor | CRITICAL | PSyO | Month 1 |
| Conduct penetration testing of InTune deployment | CRITICAL | PSyO | Month 2 |
| Document vulnerability scanning process with remediation SLAs | HIGH | IT Operations | Month 2 |
| Schedule MOD Accreditation Service audit (submit RMADS) | CRITICAL | PSyO | Month 3 |
| Plan internal ISMS audit (if ISO 27001 certified) | MEDIUM | CISO | Month 6 |

---

## 5. Overall Security Posture and Compliance Scoring

### 5.1 SbD Principle Compliance Summary

| Principle | Score | Status | Key Strengths | Key Gaps |
|-----------|-------|--------|---------------|----------|
| 1. Understand Context | 65% | ⚠️ Partial | Good documentation, data classification | No SAL, MOD network integration unclear |
| 2. Security from Start | 60% | ⚠️ Partial | Zero Trust design, security in requirements | No Security Lead, no threat model, no IAA approval |
| 3. Defence in Depth | 80% | ✅ Good | Excellent layered controls (CA, BitLocker, Defender) | No PAM, no DLP, no SOC integration |
| 4. Secure Design Patterns | 70% | ⚠️ Partial | NCSC principles applied, modern standards | No NIST CSF mapping, no secret management |
| 5. Continuously Manage Risk | 75% | ⚠️ Partial | Excellent risk register (Orange Book) | No cyber risk category, no pen testing |
| 6. Secure Supply Chain | 15% | ❌ Critical | None | No SBOM, no supplier attestations, no third-party assessments |
| 7. Through-Life Assurance | 55% | ⚠️ Partial | Good monitoring (InTune, Defender) | No IR plan, no SOC, no decommissioning process |

**Average SbD Compliance**: **60%** (Target: 80%+)

---

### 5.2 Framework Compliance Scoring

| Framework | Score | Status | Evidence | Accreditation Impact |
|-----------|-------|--------|----------|----------------------|
| **JSP 440 Leaflet 5C (SbD Mandate)** | 55% | ⚠️ Partial | Principles applied but governance gaps | BLOCKER - Security Lead/PSyO required |
| **JSP 453 (Digital Standards)** | 85% | ✅ Good | Cloud-first, modern endpoint mgmt | ACCEPTABLE - compliant with digital strategy |
| **NIST Cybersecurity Framework** | 62% | ⚠️ Partial | Strong Protect/Detect, weak Respond | CONCERN - incident response critical gap |
| **NCSC Secure Design Principles** | 68% | ⚠️ Partial | Good defence-in-depth, weak supply chain | CONCERN - supply chain high risk |
| **GDPR / DPA 2018** | 90% | ✅ Good | DPIA planned, data retention defined | ACCEPTABLE - privacy compliant |
| **ISO 27001** | 70% | ⚠️ Partial | Risk register strong, ISMS integration unclear | CONCERN - no ISMS documented |
| **Orange Book (Risk Management)** | 85% | ✅ Good | Comprehensive risk register | ACCEPTABLE - risk management mature |

**Average Framework Compliance**: **74%** (Target: 85%+)

---

### 5.3 Overall Security Risk Level

**Inherent Security Risk** (without controls): **HIGH**
- OFFICIAL-SENSITIVE data in cloud
- 6,000 devices with remote access
- No security governance established
- No security testing completed
- Supply chain security absent

**Residual Security Risk** (after planned controls): **MEDIUM**
- Strong technical controls (BitLocker, Defender, Conditional Access)
- Comprehensive risk register with mitigations
- GDPR compliance designed in
- BUT: Critical governance gaps (no Security Lead, no PSyO, no IAA)

**Risk Mitigation Effectiveness**: **60%**
- Technical controls highly effective (85%)
- Governance and process controls weak (35%)
- **Overall**: Residual risk MEDIUM-HIGH (not acceptable for accreditation without remediation)

---

### 5.4 Accreditation Readiness Assessment

**Current Accreditation Status**: ❌ **NOT READY**

**Accreditation Blockers** (must resolve before accreditation):

| # | Blocker | Category | Severity | Estimated Effort | Owner |
|---|---------|----------|----------|------------------|-------|
| 1 | No Delivery Team Security Lead appointed | Governance | CRITICAL | 1 day | CIO |
| 2 | No Project Security Officer (PSyO) appointed | Governance | CRITICAL | 1 day | CISO |
| 3 | No IAA engaged (MOD Accreditation Service) | Governance | CRITICAL | 2 weeks | PSyO |
| 4 | No formal threat model documented | Technical | HIGH | 2 weeks | Security Lead |
| 5 | No security testing completed (pen test) | Technical | HIGH | 4 weeks | PSyO |
| 6 | No supplier security attestations (ISN 2023/10) | Supply Chain | HIGH | 3 weeks | Procurement |
| 7 | No security architecture approval from IAA | Governance | HIGH | 4 weeks | Enterprise Architect |
| 8 | No incident response plan documented | Process | HIGH | 3 weeks | PSyO |
| 9 | No RMADS documentation started | Governance | HIGH | 6 weeks | PSyO |

**Estimated Time to Accreditation Readiness**: **3-6 months**

**Recommended Accreditation Pathway**:

1. **Month 0-1: Establish Security Governance**
   - Appoint Security Lead and PSyO (Week 1)
   - Engage MOD Accreditation Service, assign IAA (Week 2)
   - Formally appoint IAO (IT Operations Director)
   - Create security governance framework (RACI, reporting, escalation)

2. **Month 1-2: Complete Security Documentation**
   - Complete threat model (STRIDE/DREAD)
   - Document security architecture and submit for IAA review
   - Start RMADS documentation (Business Impact Assessment, Risk Assessment, Security Operating Procedures)
   - Obtain supplier security attestations (Microsoft, hardware vendors)
   - Create incident response plan

3. **Month 2-3: Security Testing and Assurance**
   - Conduct penetration testing (CREST/CHECK vendor)
   - Remediate pen test findings
   - Implement continuous vulnerability scanning
   - Complete RMADS documentation
   - Submit RMADS to IAA for review

4. **Month 3-4: Accreditation Review and Remediation**
   - IAA reviews RMADS and security architecture
   - Remediate IAA findings
   - Obtain Security Aspects Letter (SAL)
   - Obtain interim or conditional accreditation for pilot deployment

5. **Month 4-6: Pilot Deployment Under Interim Accreditation**
   - Deploy pilot wave (50-100 devices) with enhanced security monitoring
   - Demonstrate security controls operational
   - No security incidents during pilot
   - Obtain full accreditation after successful pilot

6. **Month 6+: Full Deployment Under Accreditation**
   - Phased deployment waves with security monitoring
   - Quarterly re-assessment of security posture
   - Annual re-accreditation (or as required by SAL)

---

### 5.5 Information Assurance Maturity Model (IAMM) Score

**Current IAMM Level**: **Level 2 - Repeatable** (Target: Level 3 - Defined)

| Domain | Current Level | Target Level | Gap | Evidence |
|--------|---------------|--------------|-----|----------|
| 1. Security Governance | Level 2 | Level 3 | -1 | Security roles identified but not formally appointed |
| 2. Risk Management | Level 3 | Level 3 | 0 | Comprehensive risk register with Orange Book framework |
| 3. Security Architecture | Level 2 | Level 3 | -1 | Architecture designed but not approved by IAA |
| 4. Asset Management | Level 2 | Level 3 | -1 | Device inventory in InTune, but no CMDB integration |
| 5. Identity & Access Management | Level 3 | Level 3 | 0 | Azure AD + Conditional Access + MFA |
| 6. Vulnerability Management | Level 1 | Level 3 | -2 | Defender Vulnerability Mgmt available but not operationalized |
| 7. Incident Management | Level 1 | Level 3 | -2 | No incident response plan or team |
| 8. Security Monitoring | Level 2 | Level 3 | -1 | Defender for Endpoint enabled, but no SOC integration |

**IAMM Scoring**:
- **Level 0 (Non-existent)**: 0 domains (GOOD)
- **Level 1 (Initial/Ad hoc)**: 2 domains (Vulnerability, Incident Management) - CONCERN
- **Level 2 (Repeatable)**: 4 domains (Governance, Architecture, Asset, Monitoring) - ACCEPTABLE
- **Level 3 (Defined)**: 2 domains (Risk, IAM) - GOOD
- **Level 4 (Managed)**: 0 domains - ASPIRATIONAL
- **Level 5 (Optimized)**: 0 domains - ASPIRATIONAL

**Average IAMM Level**: **2.0** (Target: 3.0 for operational systems)

**IAMM Remediation Priorities**:
1. Improve Incident Management from Level 1 to Level 3 (CRITICAL)
2. Improve Vulnerability Management from Level 1 to Level 3 (HIGH)
3. Improve Security Governance from Level 2 to Level 3 (HIGH)
4. Improve Security Architecture from Level 2 to Level 3 (MEDIUM)

---

## 6. Actionable Recommendations

### 6.1 Critical Priority (0-30 days) - MUST COMPLETE BEFORE BETA

**These are accreditation blockers. Project CANNOT proceed to Beta phase without resolving these.**

| # | Recommendation | Owner | Due Date | Effort | Success Criteria |
|---|----------------|-------|----------|--------|------------------|
| C-1 | **Appoint Delivery Team Security Lead** (CISO delegate or Senior Security Architect) - JSP 440 Leaflet 5C mandatory requirement | CIO | Week 1 | 1 day | Security Lead formally appointed with documented role, responsibilities, and RACI |
| C-2 | **Appoint Project Security Officer (PSyO)** for OFFICIAL-SENSITIVE data handling - JSP 440 requirement | CISO | Week 1 | 1 day | PSyO formally appointed, reporting to CISO, with RMADS preparation responsibility |
| C-3 | **Formally appoint IAO** (IT Operations Director as Information Assurance Owner) | CISO | Week 1 | 1 day | IAO formally appointed with documented accountability for system security and risk acceptance |
| C-4 | **Engage MOD Accreditation Service** to assign IAA (Information Assurance Architect) | PSyO | Week 2 | 2 weeks | IAA assigned, initial meeting held, accreditation pathway agreed |
| C-5 | **Complete formal threat model** using STRIDE/DREAD methodology (nation-state, insider, criminal, supply chain threats) | Security Lead | Month 1 | 2 weeks | Threat model documented, attack vectors identified, mitigations mapped to threats |
| C-6 | **Document security architecture** and submit for IAA review and approval | Security Architect | Month 1 | 3 weeks | Security architecture document approved by IAA, security control mapping complete |
| C-7 | **Obtain supplier security attestations** from Microsoft per ISN 2023/10 (InTune, Azure, Defender) | Procurement | Month 1 | 2 weeks | Microsoft security attestation obtained, compliance with SbD principles confirmed |
| C-8 | **Verify MOD-assured cloud status** for Microsoft Azure UK South or implement compensating controls | PSyO | Month 1 | 3 weeks | Azure UK South MOD assurance confirmed OR compensating controls documented and approved by IAA |
| C-9 | **Document MOD network integration** (firewall rules, PSN connectivity, network segmentation from operational networks) | Security Architect | Month 1 | 3 weeks | Network architecture diagram, firewall rules, MOD network integration approved by IAA |
| C-10 | **Start RMADS documentation** (Business Impact Assessment, Risk Assessment, Security Operating Procedures) | PSyO | Month 1 | 4 weeks | RMADS outline complete, BIA draft complete, template sections populated |

**Critical Priority Success Metrics**:
- ✅ All 10 critical actions completed by Month 1
- ✅ Security governance established (Security Lead, PSyO, IAO, IAA assigned)
- ✅ Threat model and security architecture documented
- ✅ MOD Accreditation Service engaged and accreditation pathway agreed
- ✅ RMADS documentation in progress

---

### 6.2 High Priority (1-3 months) - REQUIRED FOR ACCREDITATION

**These are required for accreditation approval. Must complete before pilot deployment.**

| # | Recommendation | Owner | Due Date | Effort | Success Criteria |
|---|----------------|-------|----------|--------|------------------|
| H-1 | **Conduct penetration testing** of InTune deployment (use CREST or CHECK-approved vendor for MOD systems) | PSyO | Month 2 | 4 weeks | Pen test completed, report received, CRITICAL/HIGH findings remediated |
| H-2 | **Create Software Bill of Materials (SBOM)** for all InTune-deployed applications (use SPDX or CycloneDX format) | IT Operations | Month 2 | 4 weeks | SBOM created, vulnerability scan completed, update process documented |
| H-3 | **Implement CVE vulnerability scanning** for third-party applications before InTune deployment | IT Operations | Month 2 | 2 weeks | Vulnerability scanning integrated into app deployment pipeline, SLAs defined |
| H-4 | **Document incident response plan** with playbooks (ransomware, data breach, insider threat, supply chain compromise) | PSyO | Month 2 | 3 weeks | IR plan approved by CISO, playbooks documented, IR team assigned, MOD CERT integration documented |
| H-5 | **Establish SOC integration** for InTune and Defender for Endpoint alerts (24/7 security monitoring) | Security Lead | Month 3 | 3 weeks | SOC integration live, alert routing configured, escalation to MOD CERT documented |
| H-6 | **Document privileged access management (PAM)** for InTune administrators (just-in-time access, MFA, approval workflow) | Security Architect | Month 1 | 1 week | PAM process documented, InTune admin roles reviewed, least privilege enforced |
| H-7 | **Implement Data Loss Prevention (DLP)** policies for OFFICIAL-SENSITIVE data (OneDrive, email, endpoints) | CISO | Month 2 | 2 weeks | DLP policies deployed via InTune, testing completed, alerts integrated with SOC |
| H-8 | **Create security requirements traceability matrix** (requirement → control → test → evidence) | Security Lead | Month 2 | 1 week | Traceability matrix links security requirements to NIST CSF controls and test plans |
| H-9 | **Obtain hardware vendor security assessments** (firmware security, TPM provenance, supply chain) | Procurement | Month 3 | 3 weeks | Vendor security questionnaires completed for Dell/HP/Lenovo, firmware security confirmed |
| H-10 | **Document patch testing and emergency patching process** for Windows Update via InTune update rings | IT Operations | Month 2 | 2 weeks | Patch testing workflow documented, emergency patch SLA defined (24hr for CRITICAL CVEs) |
| H-11 | **Add CYBER risk category** to risk register with nation-state and insider threat risks | Security Lead | Month 1 | 1 week | Risk register updated with 5+ cyber risks (nation-state APT, insider threat, ransomware, supply chain, DDoS) |
| H-12 | **Document MOD CERT integration** and security incident reporting process | PSyO | Month 1 | 1 week | MOD CERT contact details, incident escalation matrix, reporting SLAs documented |
| H-13 | **Complete RMADS documentation** (all sections) and submit to IAA for review | PSyO | Month 3 | 6 weeks total | RMADS submitted to IAA, review meeting scheduled, interim accreditation pathway agreed |
| H-14 | **Create Information Security Policy** and security standards (password, access control, encryption, incident response) | CISO | Month 2 | 3 weeks | Information Security Policy approved by CIO, security standards published to staff |
| H-15 | **Define risk acceptance authority matrix** (who can accept LOW/MEDIUM/HIGH/CRITICAL risks) | PSyO | Month 1 | 1 week | Risk acceptance authority documented (e.g., CISO accepts HIGH, CIO accepts CRITICAL) |

**High Priority Success Metrics**:
- ✅ All 15 high-priority actions completed by Month 3
- ✅ Security testing completed (penetration test passed)
- ✅ Incident response capability operational (IR plan, SOC, MOD CERT)
- ✅ Supply chain security improved (SBOM, supplier attestations, hardware assessments)
- ✅ RMADS submitted to IAA for accreditation review

---

### 6.3 Medium Priority (3-6 months) - CONTINUOUS IMPROVEMENT

**These improve security posture but are not accreditation blockers. Complete during pilot and early deployment.**

| # | Recommendation | Owner | Due Date | Effort | Success Criteria |
|---|----------------|-------|----------|--------|------------------|
| M-1 | **Implement continuous vulnerability scanning** via Defender Vulnerability Management with remediation SLAs | IT Operations | Month 2 | 2 weeks | Vulnerability scan weekly, SLAs: CRITICAL 7d, HIGH 30d, MEDIUM 90d |
| M-2 | **Document supply chain attack threat model** and mitigations (SolarWinds, Kaseya, Log4Shell scenarios) | Security Lead | Month 1 | 2 weeks | Supply chain threat model documented, monitoring for supply chain IoCs implemented |
| M-3 | **Assess API security** for InTune integrations (ServiceNow, Power BI, custom scripts) | Security Architect | Month 2 | 1 week | API authentication/authorization reviewed, secrets management documented |
| M-4 | **Create NIST CSF control traceability matrix** (control → evidence → test → status) | Security Lead | Month 2 | 2 weeks | NIST CSF compliance dashboard, control evidence documented, gaps tracked |
| M-5 | **Define through-life security governance framework** (monthly reviews, annual re-accreditation, continuous improvement) | PSyO | Month 3 | 2 weeks | Security governance calendar published, roles assigned, review templates created |
| M-6 | **Document Configuration Manager secure decommissioning process** (data deletion, archiving, CESG-approved wiping) | IT Operations | Month 4 | 2 weeks | ConfigMgr decommissioning plan approved, data retention analysis complete |
| M-7 | **Create device decommissioning process** (retire → wipe → verify → CESG-approved disposal) | IT Operations | Month 3 | 1 week | Device decommissioning workflow documented, InTune autopilot reset configured |
| M-8 | **Establish security champion network** (1 security champion per 50 users trained to identify phishing, social engineering) | Change Manager | Month 3 | 4 weeks | 120 security champions trained (6,000 users / 50), monthly security champion meetings |
| M-9 | **Create security monitoring dashboard** for senior stakeholders (CISO, IAO) with KPIs | Security Lead | Month 4 | 2 weeks | Power BI dashboard: device compliance %, threat detections, vulnerabilities, incidents |
| M-10 | **Conduct red team exercise** simulating nation-state attack (post-Live phase, Month 12+) | CISO | Month 12 | 6 weeks | Red team exercise completed, findings remediated, lessons learned integrated |
| M-11 | **Implement File Integrity Monitoring (FIM)** for critical system files (Windows system files, InTune scripts) | IT Operations | Month 3 | 2 weeks | FIM enabled via Defender for Endpoint, baseline created, alerts configured |
| M-12 | **Define Recovery Time Objective (RTO) and Recovery Point Objective (RPO)** for InTune tenant failure | IT Operations | Month 3 | 1 week | RTO/RPO defined (e.g., RTO 24hr, RPO 4hr), disaster recovery plan documented |
| M-13 | **Establish architecture review board** with monthly security architecture reviews | Enterprise Architect | Month 2 | 1 week | Architecture review board charter, monthly review meetings scheduled |
| M-14 | **Add security requirements to vendor procurement contracts** (security breach liability, incident notification, audit rights) | Procurement | Month 2 | 2 weeks | Vendor contract template updated with security clauses, legal review completed |
| M-15 | **Implement smart card (CAC/MOD Form 90) authentication** for OFFICIAL-SENSITIVE systems (if MOD deployment) | Security Architect | Month 6 | 6 weeks | Smart card authentication pilot, integration with Azure AD, rollout plan |

**Medium Priority Success Metrics**:
- ✅ Continuous improvement established (vulnerability scanning, threat intelligence, red team)
- ✅ Through-life security governance operational (reviews, re-accreditation, decommissioning)
- ✅ Security culture established (security champions, training, awareness)
- ✅ Advanced security controls implemented (FIM, API security, smart card auth)

---

### 6.4 Quick Wins (1-2 weeks) - DEMONSTRATE PROGRESS

**These are low-effort actions that demonstrate immediate progress on SbD compliance.**

| # | Quick Win | Owner | Effort | Impact |
|---|-----------|-------|--------|--------|
| QW-1 | **Formally assign security roles** (email announcements for Security Lead, PSyO, IAO) | CIO | 1 day | HIGH - Demonstrates governance commitment |
| QW-2 | **Create security governance RACI matrix** (who is Responsible/Accountable/Consulted/Informed for each security control) | Security Lead | 2 days | MEDIUM - Clarifies security ownership |
| QW-3 | **Document MOD CERT contact details** and add to incident response contact list | PSyO | 1 day | MEDIUM - Enables incident reporting |
| QW-4 | **Enable Defender Vulnerability Management** and run initial vulnerability scan | IT Operations | 1 day | HIGH - Identifies vulnerabilities immediately |
| QW-5 | **Create security architecture diagram** (Visio or Mermaid) showing Conditional Access, BitLocker, Defender flows | Security Architect | 3 days | HIGH - Visual security architecture for IAA review |
| QW-6 | **Add CYBER risk category** to risk register with 5 initial cyber risks | Security Lead | 2 days | MEDIUM - Demonstrates cyber risk awareness |
| QW-7 | **Create security incident escalation matrix** (when to notify CISO, IAO, MOD CERT, Accreditation Service) | PSyO | 1 day | MEDIUM - Enables rapid incident response |
| QW-8 | **Document InTune administrator privileged roles** and review least privilege | Security Architect | 2 days | MEDIUM - Reduces insider threat risk |
| QW-9 | **Create security requirements section** in requirements.md (consolidate BR-001, BR-006, security objectives) | Security Lead | 2 days | MEDIUM - Improves traceability |
| QW-10 | **Request Microsoft security attestation** (email Microsoft account team for SbD compliance documentation) | Procurement | 1 day | HIGH - Starts supply chain security process |

---

## 7. Conclusion and Next Steps

### 7.1 Summary of Findings

This MOD Secure by Design assessment has evaluated the **Windows 11 Migration with Microsoft InTune** project against JSP 440 Leaflet 5C Secure by Design principles, NIST Cybersecurity Framework, NCSC Secure Design Principles, and MOD security governance requirements.

**Key Strengths**:
- ✅ **Excellent technical security design**: Zero Trust architecture with Conditional Access, BitLocker, TPM 2.0, Defender for Endpoint provides strong defence-in-depth
- ✅ **Comprehensive risk management**: HM Treasury Orange Book compliant risk register with 20 risks, 4Ts responses, monthly reviews
- ✅ **GDPR compliance**: Data Protection Impact Assessment planned, data classification completed, 7-year audit log retention
- ✅ **Strong stakeholder engagement**: CISO, Security Architect, Enterprise Architect assigned with clear security requirements

**Critical Gaps**:
- ❌ **No security governance established**: No Delivery Team Security Lead, no PSyO, no IAO formally appointed, no IAA engaged
- ❌ **No security testing completed**: No threat model, no penetration testing, no vulnerability scanning process
- ❌ **Supply chain security absent**: No SBOM, no supplier attestations per ISN 2023/10, no third-party risk assessments
- ❌ **No incident response capability**: No incident response plan, no SOC integration, no MOD CERT integration

**Overall Assessment**:
- **SbD Compliance**: 60% (Target: 80%+) - PARTIALLY COMPLIANT
- **Accreditation Readiness**: NOT READY - 9 critical blockers identified
- **Security Risk**: MEDIUM-HIGH (after controls) - Technical controls strong, but governance weak
- **IAMM Level**: Level 2 - Repeatable (Target: Level 3 - Defined)

**Accreditation Impact**:
This project **CANNOT proceed to Beta phase pilot deployment** without resolving critical security governance gaps (Security Lead, PSyO, IAA engagement) and completing threat modeling and security architecture approval. Estimated **3-6 months** to accreditation readiness if immediate action is taken.

---

### 7.2 Immediate Next Steps (Week 1)

**CRITICAL ACTIONS** (must complete this week):

1. **CIO**: Appoint Delivery Team Security Lead (CISO delegate or Senior Security Architect) - 1 day
2. **CISO**: Appoint Project Security Officer (PSyO) for OFFICIAL-SENSITIVE data - 1 day
3. **CISO**: Formally appoint IT Operations Director as Information Assurance Owner (IAO) - 1 day
4. **PSyO**: Contact MOD Accreditation Service to request IAA assignment and schedule initial meeting - 3 days
5. **Security Lead**: Create security governance RACI matrix (roles, responsibilities) - 2 days
6. **PSyO**: Document MOD CERT contact details and incident escalation matrix - 1 day
7. **CIO**: Brief Steering Committee on SbD compliance gaps and accreditation timeline - 1 day

**SUCCESS CRITERIA**:
- ✅ Security governance roles assigned by Friday
- ✅ MOD Accreditation Service contacted by Wednesday
- ✅ Steering Committee briefed on accreditation pathway by Friday

---

### 7.3 Short-Term Roadmap (Months 1-3)

**Month 1 (Establish Security Foundation)**:
- Complete threat model (STRIDE/DREAD)
- Document security architecture for IAA review
- Obtain Microsoft supplier security attestations
- Verify Azure UK South MOD-assured cloud status
- Start RMADS documentation
- Add CYBER risks to risk register
- Create Information Security Policy

**Month 2 (Security Testing and Documentation)**:
- Conduct penetration testing (CREST/CHECK vendor)
- Create Software Bill of Materials (SBOM)
- Document incident response plan with playbooks
- Implement DLP policies for OFFICIAL-SENSITIVE data
- Document patch testing and emergency patching
- Complete RMADS documentation

**Month 3 (Accreditation Submission)**:
- Remediate penetration test findings
- Establish SOC integration (24/7 monitoring)
- Submit RMADS to IAA for review
- Obtain hardware vendor security assessments
- Implement continuous vulnerability scanning
- Obtain interim/conditional accreditation for pilot

**SUCCESS CRITERIA**:
- ✅ Interim accreditation obtained by Month 3
- ✅ Pilot deployment authorized with security monitoring
- ✅ All CRITICAL and HIGH recommendations completed

---

### 7.4 Accreditation Pathway

**Recommended Accreditation Approach**: **Interim Accreditation for Pilot → Full Accreditation After Pilot**

**Rationale**:
- Pilot deployment (50-100 devices) allows security controls to be proven in operational environment
- Interim accreditation de-risks full deployment (can pause if security issues emerge)
- Demonstrates continuous assurance approach (aligned with SbD principle 7)

**Accreditation Milestones**:
- **Month 1**: IAA assigned, security architecture reviewed
- **Month 2**: Penetration testing completed, RMADS drafted
- **Month 3**: RMADS submitted, interim accreditation obtained
- **Month 4-6**: Pilot deployment under interim accreditation with enhanced monitoring
- **Month 6**: Full accreditation obtained after successful pilot (no security incidents, all controls operational)
- **Ongoing**: Annual re-accreditation or as required by Security Aspects Letter

---

### 7.5 Success Metrics for SbD Compliance

**Governance Metrics** (Target: 100% by Month 1):
- ✅ Security Lead appointed
- ✅ PSyO appointed
- ✅ IAO appointed
- ✅ IAA engaged
- ✅ Security governance RACI matrix published

**Documentation Metrics** (Target: 100% by Month 3):
- ✅ Threat model documented
- ✅ Security architecture approved by IAA
- ✅ Incident response plan approved
- ✅ RMADS submitted to IAA
- ✅ Information Security Policy published

**Testing Metrics** (Target: 100% by Month 3):
- ✅ Penetration testing completed (0 CRITICAL findings remaining)
- ✅ Vulnerability scanning operational (weekly scans)
- ✅ Security controls tested (Conditional Access, BitLocker, Defender)

**Supply Chain Metrics** (Target: 100% by Month 3):
- ✅ SBOM created for all applications
- ✅ Supplier attestations obtained (Microsoft, hardware vendors)
- ✅ Third-party risk assessments completed

**Operational Metrics** (Target: 100% by Month 6):
- ✅ SOC integration operational (24/7 monitoring)
- ✅ Incident response capability proven (tabletop exercise passed)
- ✅ Security monitoring dashboard live (CISO/IAO visibility)
- ✅ Pilot deployment successful (0 security incidents)

---

### 7.6 Final Recommendation

**RECOMMENDATION**: **PROCEED WITH CAUTION - CRITICAL SECURITY GOVERNANCE GAPS MUST BE RESOLVED BEFORE BETA PHASE**

This project has **strong technical security foundations** (Zero Trust architecture, layered controls, comprehensive risk management), but **CRITICAL security governance gaps** prevent accreditation readiness:

1. **No security governance** (Security Lead, PSyO, IAA)
2. **No security testing** (threat model, penetration test)
3. **No supply chain security** (SBOM, supplier attestations)

**IF** the 10 Critical Priority recommendations (Section 6.1) are completed within **Month 1**, this project can achieve **interim accreditation by Month 3** and proceed to pilot deployment.

**IF NOT**, this project faces:
- ❌ Accreditation delays (6-12 months)
- ❌ Inability to deploy before Windows 10 EOL (October 2025)
- ❌ Unsupported Windows 10 devices creating security/compliance violations
- ❌ Cyber insurance voidance, ISO 27001 recertification failure

**IMMEDIATE ACTION REQUIRED**: CIO and CISO must prioritize security governance appointments (Security Lead, PSyO) **this week** to avoid project delays and accreditation failure.

---

## Appendices

### Appendix A: Acronyms and Definitions

| Acronym | Definition |
|---------|------------|
| APT | Advanced Persistent Threat (nation-state cyber threat actors) |
| BIA | Business Impact Assessment |
| CAC | Common Access Card (MOD smart card authentication) |
| CESG | Communications-Electronics Security Group (now part of NCSC) |
| CHECK | NCSC penetration testing certification scheme |
| CISO | Chief Information Security Officer |
| CMDB | Configuration Management Database |
| CREST | Council of Registered Ethical Security Testers (pen testing certification) |
| CSF | Cybersecurity Framework (NIST) |
| CVE | Common Vulnerabilities and Exposures |
| DLP | Data Loss Prevention |
| DPIA | Data Protection Impact Assessment |
| DPO | Data Protection Officer |
| DREAD | Damage, Reproducibility, Exploitability, Affected Users, Discoverability (threat rating) |
| DV | Developed Vetting (highest security clearance) |
| EOL | End of Life (software support termination) |
| FIM | File Integrity Monitoring |
| GIAA | Government Internal Audit Agency |
| HSM | Hardware Security Module |
| IAA | Information Assurance Architect (independent security architecture reviewer) |
| IAO | Information Assurance Owner (accountable for system security) |
| IAMM | Information Assurance Maturity Model (0-5 scale) |
| IDS | Intrusion Detection System |
| IPS | Intrusion Prevention System |
| IR | Incident Response |
| ISN | Industry Security Notice (MOD security bulletins) |
| ISMS | Information Security Management System (ISO 27001) |
| JSP | Joint Service Publication (MOD policy documents) |
| MFA | Multi-Factor Authentication |
| MOD CERT | MOD Computer Emergency Response Team |
| NAO | National Audit Office |
| NCSC | National Cyber Security Centre (UK) |
| NIST | National Institute of Standards and Technology (US) |
| OPSEC | Operational Security |
| PAM | Privileged Access Management |
| PSN | Public Services Network (UK government network) |
| PSyO | Project Security Officer (security oversight role) |
| RACI | Responsible, Accountable, Consulted, Informed (responsibility matrix) |
| RMADS | Risk Management and Accreditation Documentation Set |
| RPO | Recovery Point Objective (maximum acceptable data loss) |
| RTO | Recovery Time Objective (maximum acceptable downtime) |
| SAL | Security Aspects Letter (accreditation approval document) |
| SBOM | Software Bill of Materials |
| SbD | Secure by Design |
| SC | Security Check (security clearance level) |
| SIEM | Security Information and Event Management |
| SLA | Service Level Agreement |
| SOC | Security Operations Centre |
| STRIDE | Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, Elevation of Privilege (threat modeling) |
| TCoP | Technology Code of Practice (UK Government digital standards) |
| TPM | Trusted Platform Module (hardware security chip) |

### Appendix B: MOD Security References

| Reference | Title | Relevance |
|-----------|-------|-----------|
| JSP 440 | Defence Manual of Security | Primary MOD security policy framework |
| JSP 440 Leaflet 5C | Secure by Design | SbD mandate (effective August 2023) |
| JSP 453 | Digital Policies and Standards for Defence | Cloud-first, modern endpoint management |
| ISN 2023/09 | Secure by Design Requirements | Industry guidance on SbD principles |
| ISN 2023/10 | Supplier Attestation and Legacy Accreditation Withdrawal | Supplier security attestation requirements |
| NCSC Cloud Security Principles | Cloud security guidance | Azure cloud security assessment |
| NCSC Secure Design Principles | 10 secure design principles | Architecture design guidance |
| NIST Cybersecurity Framework | CSF v1.1 | Identify, Protect, Detect, Respond, Recover |
| HM Treasury Orange Book | Risk Management Principles | Risk register framework (used in this project) |
| CESG Cryptographic Mechanisms | Approved cryptography | AES-256, SHA-256, RSA-2048+ requirements |

### Appendix C: Document Control

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-10-21 | Enterprise Security Architect | Initial SbD assessment - DRAFT |

**Document Classification**: OFFICIAL-SENSITIVE (contains security architecture details)

**Distribution List**:
- CIO (Executive Sponsor)
- CISO (Security Executive)
- IT Operations Director (IAO candidate)
- Enterprise Architect
- Security Architect
- Delivery Team Security Lead (TBD)
- Project Security Officer (TBD)
- MOD Accreditation Service / IAA (when engaged)

**Review Schedule**:
- Next review: 2025-11-21 (monthly until accreditation obtained)
- Annual review post-accreditation

**Approval Required From**:
- CISO (security approval)
- IAA (accreditation approval) - pending engagement

---

**END OF DOCUMENT**
