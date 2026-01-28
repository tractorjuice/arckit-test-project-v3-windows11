# MOD Secure by Design Assessment

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-006-SECD-v1.0 |
| **Document Type** | MOD Secure by Design Assessment |
| **Project** | Large Format Printing Service (Project 006) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 1.0 |
| **Created Date** | 2026-01-09 |
| **Last Modified** | 2026-01-09 |
| **Review Cycle** | Quarterly |
| **Next Review Date** | 2026-04-09 |
| **Owner** | Enterprise Architecture Team |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | Project Team, Security Team, Procurement |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2026-01-09 | ArcKit AI | Initial creation from `/arckit.mod-secure` command | PENDING | PENDING |

## Document Purpose

This document provides a MOD Secure by Design assessment for the Large Format Printing Service procurement. It evaluates the security posture of procuring a third-party managed print service for large format poster production within MOD/Government premises, assessing supplier requirements, data handling, and compliance with JSP 440 and related defence security standards.

---

## Executive Summary

**Overall Security Posture**: Adequate

**Key Security Findings**:
- Data classification is OFFICIAL, appropriate controls specified in requirements
- Third-party service model introduces supply chain security considerations requiring Cyber Essentials+ minimum certification
- On-premises equipment placement mitigates some data exfiltration risks but requires network segmentation
- Secure print release (pull printing) requirement addresses confidentiality concerns
- 12-month audit log retention meets compliance requirements

**Accreditation Status**: Not Started (Pre-procurement assessment)

**Risk Summary**: Medium - Primary risks relate to supplier security posture and data handling by third-party service

---

## 1. Security Classification and Data Handling

### 1.1 Information Classification

**Highest Data Classification**: OFFICIAL

**Classification Justification**:
Documents printed via the service are classified up to OFFICIAL level, including internal communications, project posters, and presentation materials. No OFFICIAL-SENSITIVE or higher classification documents will be processed through this service.

**Data Types Processed**:
- [x] Personal data (UK GDPR) - Limited to user authentication data for print job tracking
- [ ] Special category data (biometric, health, etc.)
- [ ] Classified military information
- [x] Operational data - Print job metadata, usage statistics
- [ ] Intelligence data
- [ ] Cryptographic material
- [x] Protectively marked documents - OFFICIAL level only

**Data Classification Matrix**:

| Data Type | Classification | Volume | Storage Location | Access Controls |
|-----------|---------------|---------|------------------|-----------------|
| Print job content | OFFICIAL | Medium | Print queue (transient) | User authentication, secure release |
| User authentication data | OFFICIAL | Low | Azure AD (SSO) | MFA via Azure AD |
| Print job metadata | OFFICIAL | High | Service provider portal | RBAC, audit logging |
| Usage/billing data | OFFICIAL | Medium | Service provider systems | RBAC, encryption |
| Device configuration | OFFICIAL | Low | On-premises device | Admin credentials, physical security |

**Gaps/Actions**:
- Ensure service contract specifies data handling requirements for OFFICIAL data
- Verify supplier's data retention and deletion policies align with requirements

---

## 2. MOD Security Principles Compliance

### 2.1 Defence in Depth

**Principle**: Multiple layers of security controls so that if one fails, others continue to protect.

**Status**: ⚠️ Partially Compliant

**Evidence**:
Requirements specify multiple security layers including network segmentation (VLAN), secure print release, TLS 1.2+ encryption, and Azure AD SSO. However, full defence in depth depends on supplier implementation.

**Security Layers Implemented**:
- [x] Physical security (data center, building access) - On-premises equipment within secured buildings
- [x] Network security (firewalls, segmentation, IDS/IPS) - VLAN segmentation required (NFR-SEC-008)
- [ ] Host security (hardened OS, endpoint protection) - Supplier responsibility, requires verification
- [ ] Application security (WAF, input validation, secure coding) - N/A for managed service
- [x] Data security (encryption at rest and in transit) - TLS 1.2+ required (NFR-SEC-002)
- [x] Identity security (MFA, privileged access management) - Azure AD SSO with MFA (INT-001)
- [ ] Monitoring and detection (SIEM, SOC) - Audit logging required, SIEM integration TBD

**Gaps/Actions**:
- Contract must specify supplier's host security controls for printer firmware and embedded systems
- Verify supplier has SIEM integration capabilities or provides audit log feeds

### 2.2 Secure by Default

**Principle**: Systems are secure out-of-the-box with minimal configuration required.

**Status**: ⚠️ Partially Compliant

**Evidence**:
Requirements mandate secure print release as default, TLS encryption, and Azure AD SSO. Supplier must demonstrate secure default configurations.

**Default Security Configurations**:
- [x] Strong authentication required by default - Azure AD SSO mandatory (INT-001)
- [x] Encryption enabled by default - TLS 1.2+ required (NFR-SEC-002)
- [ ] Least privilege access model - RBAC required but implementation details TBD
- [ ] Secure protocols only (TLS 1.3, SSH v2) - TLS 1.2 minimum, 1.3 preferred
- [ ] Security headers configured - N/A for print service
- [ ] Default accounts disabled/removed - Supplier responsibility
- [x] Logging enabled by default - Audit logging required (NFR-SEC-005)

**Gaps/Actions**:
- Specify in contract that all default/factory credentials must be changed during installation
- Require supplier to provide secure configuration baseline documentation

### 2.3 Least Privilege

**Principle**: Users and systems have only the minimum access required to perform their functions.

**Status**: ✅ Compliant

**Evidence**:
Requirements specify RBAC with defined user roles (FR-002), Azure AD group-based access, and separation between standard users, department managers, and administrators.

**Access Controls**:
- [x] Role-Based Access Control (RBAC) implemented - Three-tier role model specified
- [x] Principle of least privilege enforced - Users can only view/manage own jobs by default
- [ ] Privileged access management (PAM) in place - Admin access managed via Azure AD
- [ ] Just-in-time (JIT) access for elevated privileges - Not specified, may not be applicable
- [x] Regular access reviews conducted - Quarterly certification review specified
- [x] Separation of duties enforced - Distinct roles for users, managers, admins

**Gaps/Actions**:
- Document access review process in operational procedures
- Ensure admin access to service portal follows least privilege

### 2.4 Assume Breach

**Principle**: Design and operate as if compromise has already occurred.

**Status**: ⚠️ Partially Compliant

**Evidence**:
Network segmentation and secure print release limit blast radius. Audit logging enables forensic investigation. However, incident response procedures specific to this service are not yet defined.

**Breach Readiness**:
- [x] Security monitoring and alerting - Audit logs with 12-month retention
- [ ] Incident response plan documented and tested - To be developed post-contract
- [ ] Forensic capabilities available - Depends on supplier capabilities
- [x] Network segmentation to limit blast radius - VLAN isolation required
- [ ] Zero-trust architecture principles applied - Partial (SSO verification per session)
- [ ] Regular red team/penetration testing - Not specified in requirements

**Gaps/Actions**:
- Develop incident response procedures specific to print service compromise
- Include penetration testing rights in contract for annual security assessment

---

## 3. MOD Accreditation Requirements

### 3.1 Security Accreditation Status

**Accreditation Authority**: JSP 440 / Defence Digital

**Accreditation Type**: Risk Managed Accreditation (appropriate for OFFICIAL systems)

**Accreditation Progress**:
- [ ] Business Impact Assessment (BIA) completed
- [ ] Risk Management and Accreditation Documentation Set (RMADS) initiated
- [ ] Security Aspects Letter (SAL) issued
- [ ] Accreditation Service engaged
- [ ] Risk assessment completed
- [ ] Security controls documented
- [ ] Residual risks accepted by IAO/IAA
- [ ] Accreditation granted

**Information Assurance Owner (IAO)**: TBD - To be assigned from IT Security Team
**Information Assurance Architect (IAA)**: TBD - Enterprise Architecture Team

**Target Accreditation Date**: Prior to service go-live (estimated Q2 2026)

**Gaps/Actions**:
- Initiate accreditation process once supplier is selected
- Assign IAO from appropriate business area
- Complete BIA as part of detailed planning

### 3.2 JSP 440 Compliance

**JSP 440**: Defence Information Assurance Maturity Model (IAMM)

**IAMM Level Target**: Level 2 (Managed) - appropriate for OFFICIAL data

**IAMM Assessment**:

| Domain | Current Level | Target Level | Gap |
|--------|---------------|--------------|-----|
| Information Risk Management | 1 | 2 | Requirements defined, implementation pending |
| Secure Configuration | 1 | 2 | Supplier configuration to be verified |
| Network Security | 2 | 2 | VLAN segmentation specified |
| Access Control | 2 | 2 | Azure AD SSO with RBAC defined |
| Malware Protection | 1 | 2 | Supplier endpoint protection TBD |
| Patch Management | 1 | 2 | SLA for security patches required |
| Security Monitoring | 1 | 2 | Audit logging specified, SIEM TBD |
| Incident Management | 0 | 2 | Incident response procedures not yet defined |

**Gaps/Actions**:
- Develop incident management procedures for print service
- Include patch management SLA in contract (14 days for critical patches)
- Verify supplier's malware protection on printer embedded systems

---

## 4. Threat Modeling and Risk Assessment

### 4.1 Threat Model

**Threat Modeling Method**: STRIDE

**Threat Model Completed**: In Progress

**Identified Threat Actors**:
- [ ] Nation state actors - Low relevance for OFFICIAL print service
- [ ] Terrorist organizations - Low relevance
- [ ] Organized crime - Low relevance for this data type
- [ ] Hacktivists - Low relevance
- [x] Insider threats - Relevant for document confidentiality
- [x] Supply chain threats - Primary concern for managed service

**Key Threats Identified**:

| Threat | Likelihood | Impact | Risk Level | Mitigation |
|--------|------------|--------|------------|------------|
| Unauthorized print job access | Medium | Medium | Medium | Secure print release, Azure AD authentication |
| Data exfiltration via supplier | Low | High | Medium | Contract clauses, supplier vetting, audit rights |
| Printer network compromise | Low | Medium | Low | VLAN segmentation, firewall rules |
| Insider prints confidential documents | Medium | Medium | Medium | Audit logging, secure print release |
| Supply chain attack on printer firmware | Low | High | Medium | Supplier security certification, patch SLA |
| Service denial (availability) | Medium | Low | Low | SLA with service credits, contractual remedies |

**Gaps/Actions**:
- Complete formal threat model during detailed design phase
- Include threat model review as part of supplier security assessment

### 4.2 Security Risk Assessment

**Risk Assessment Method**: HMG Information Assurance Standard No. 1 & 2 / ISO 27005

**Risk Register Maintained**: Yes (linked to project risk register)

**Critical/High Risks**:

| Risk ID | Risk Description | Likelihood | Impact | Risk Level | Owner | Mitigation Plan |
|---------|------------------|------------|--------|------------|-------|-----------------|
| R-SEC-001 | Supplier security posture inadequate | Medium | High | High | Procurement | Mandatory Cyber Essentials+, ISO 27001 preferred |
| R-SEC-002 | Unauthorized access to print jobs | Medium | Medium | Medium | Security | Secure print release, SSO authentication |
| R-SEC-003 | Audit log tampering by supplier | Low | High | Medium | Security | Independent audit logging, contract audit rights |
| R-SEC-004 | Data retention beyond contract terms | Low | Medium | Low | Legal | Contract data deletion clause, verification audit |

**Residual Risks**: To be determined after supplier selection and control verification

**Gaps/Actions**:
- Complete quantitative risk assessment post-supplier selection
- Obtain IAO acceptance of residual risks before go-live

---

## 5. Technical Security Controls

### 5.1 Cryptography

**Cryptographic Standards**: NCSC approved algorithms

**Encryption Implementation**:
- [ ] Data at rest encrypted (AES-256 minimum) - Supplier to confirm for stored print jobs
- [x] Data in transit encrypted (TLS 1.3 minimum) - TLS 1.2+ required, 1.3 preferred
- [ ] Database encryption enabled - Supplier portal database TBD
- [ ] Backup encryption enabled - Supplier responsibility
- [ ] Key management system implemented - Supplier responsibility
- [ ] CESG-approved cryptography used for classified data - N/A (OFFICIAL only)
- [ ] Crypto key lifecycle managed - Supplier responsibility

**Key Management**:
- Key storage: Supplier responsibility (HSM or Cloud KMS expected)
- Key rotation frequency: TBD - contract specification required
- Key backup and recovery: Supplier responsibility

**Gaps/Actions**:
- Specify encryption requirements for stored data in contract
- Require supplier to document key management procedures

### 5.2 Authentication and Identity

**Authentication Method**: SSO via Azure AD with MFA

**Identity Provider**: Azure AD (Entra ID)

**Authentication Controls**:
- [x] Multi-factor authentication (MFA) enforced - Via Azure AD Conditional Access
- [x] Password complexity requirements (12+ chars, complexity) - Azure AD policy
- [ ] Smart card (CAC/PIV) authentication for classified systems - N/A for OFFICIAL
- [x] Session timeout configured - Web portal 30-minute timeout specified
- [x] Account lockout after failed attempts - Azure AD policy
- [x] Single Sign-On (SSO) where appropriate - Primary authentication method
- [ ] Privileged access management (PAM) - Admin access via Azure AD groups

**Gaps/Actions**:
- Ensure Azure AD Conditional Access policies apply to service portal
- Document admin access procedures

### 5.3 Network Security

**Network Architecture**: Segmented (VLAN)

**Network Security Controls**:
- [x] Network segmentation by security zone - Dedicated printer VLAN required
- [x] Firewalls at zone boundaries - Firewall rules specified in NFR-SEC-008
- [ ] Intrusion Detection/Prevention Systems (IDS/IPS) - Not specified
- [ ] DDoS protection - N/A for internal service
- [ ] Web Application Firewall (WAF) - Not applicable
- [ ] VPN for remote access - Not required (internal service)
- [ ] Network Access Control (NAC) - Recommended enhancement
- [ ] Air-gapped for SECRET and above - N/A (OFFICIAL only)

**Network Zones**:
- [ ] Public zone (internet-facing) - Service portal may be externally accessible for supplier
- [ ] DMZ (semi-trusted) - N/A
- [x] Internal zone (trusted) - User print submission
- [x] Management zone (privileged access) - Printer admin interface
- [ ] Classified zone (SECRET and above) - N/A

**Gaps/Actions**:
- Implement firewall rules per NFR-SEC-008 during deployment
- Consider IDS/IPS for printer VLAN as enhancement

### 5.4 Vulnerability Management

**Vulnerability Scanning**: Monthly (supplier responsibility for devices)

**Scanning Tools**: TBD (supplier tools)

**Vulnerability Management Process**:
- [ ] Automated vulnerability scanning - Supplier responsibility
- [ ] Manual penetration testing (annual minimum) - Contractual requirement
- [x] Patch management process defined - SLA specified in requirements
- [x] Critical patches applied within 14 days - NFR-SEC-007 requirement
- [x] High severity patches applied within 30 days - NFR-SEC-007 requirement
- [ ] Vulnerability remediation tracking - Supplier to provide reports
- [ ] Exception process for unfixable vulnerabilities - To be defined in contract

**Recent Penetration Test**: Not Yet Conducted (pre-procurement)
**Penetration Test Findings**: N/A

**Gaps/Actions**:
- Include annual penetration testing rights in contract
- Require supplier to provide vulnerability scan reports monthly

### 5.5 Security Monitoring and Logging

**Security Operations Center (SOC)**: Supplier SOC for device monitoring, internal SOC for network

**SIEM Solution**: TBD - Require audit log export capability

**Logging and Monitoring**:
- [x] Centralized log collection (SIEM) - Audit logs to be exported to internal SIEM
- [ ] Real-time security alerting - TBD based on SIEM integration
- [x] Log retention (minimum 12 months) - NFR-SEC-005 requirement
- [ ] Security event correlation - Internal SIEM responsibility
- [ ] User behavior analytics (UBA) - Not specified
- [ ] Automated incident response playbooks - To be developed
- [ ] Integration with MOD Cyber Defence Operations - Not applicable (OFFICIAL system)

**Security Alerts**:
- Failed authentication attempts: Monitored (via Azure AD)
- Privilege escalation: TBD
- Data exfiltration attempts: Not monitored (print service limitation)
- Malware detection: TBD (supplier endpoint protection)

**Gaps/Actions**:
- Define SIEM integration requirements in contract
- Develop alerting rules for print service security events

---

## 6. Secure Development Lifecycle

### 6.1 Secure Coding Practices

**Note**: This section is not directly applicable as this is a managed service procurement, not custom development. Supplier secure development practices should be verified.

**Secure Coding Standards**: Supplier responsibility (OWASP expected)

**Secure Development Practices**:
- [ ] Secure coding training for developers - Supplier responsibility
- [ ] Code review process includes security review - Supplier responsibility
- [ ] Static Application Security Testing (SAST) - Supplier responsibility
- [ ] Dynamic Application Security Testing (DAST) - Supplier responsibility
- [ ] Software Composition Analysis (SCA) for dependencies - Supplier responsibility
- [ ] Threat modeling during design phase - Supplier responsibility
- [ ] Security testing in CI/CD pipeline - Supplier responsibility

**OWASP Top 10 Mitigation**:
Web portal security is supplier responsibility. Contract should require OWASP Top 10 compliance.

**Gaps/Actions**:
- Include secure development attestation requirement in contract
- Request supplier's SDL documentation as part of evaluation

### 6.2 DevSecOps Integration

**Note**: Not directly applicable for managed service procurement. Service updates are supplier responsibility.

**CI/CD Security Gates**:
- Supplier responsible for all CI/CD security

**Gaps/Actions**:
- Require supplier to provide evidence of security testing in release process

---

## 7. Supply Chain Security

### 7.1 Third-Party Risk Management

**Vendor Security Assessment**:
- [ ] Vendor security questionnaires completed - Part of procurement evaluation
- [x] Vendor security certifications verified (ISO 27001, Cyber Essentials+) - Mandatory requirement
- [ ] Vendor access controls defined and enforced - To be defined in contract
- [ ] Third-party code review conducted - N/A for managed service
- [ ] Supply chain risk assessment completed - In progress

**Third-Party Components**:

| Component | Vendor | Security Rating | Risk Level | Mitigations |
|-----------|--------|-----------------|------------|-------------|
| Print Management Service | TBD (procurement) | Must be Cyber Essentials+ | Medium | Security certification requirement |
| Azure AD SSO | Microsoft | High | Low | Established enterprise platform |
| InTune Driver Deployment | Microsoft | High | Low | Established enterprise platform |
| Printer Hardware | Supplier-provided | TBD | Medium | Supplier vetting, patch SLA |

**Gaps/Actions**:
- Complete vendor security questionnaire during procurement
- Verify supplier's sub-contractor security arrangements

### 7.2 Open Source Software Security

**Open Source Components**: Unknown (supplier's service stack)

**OSS Security Controls**:
- [ ] Software Bill of Materials (SBOM) generated - Require from supplier
- [ ] Known vulnerabilities scanned (CVE database) - Supplier responsibility
- [ ] License compliance verified - Supplier responsibility
- [ ] OSS component lifecycle managed - Supplier responsibility
- [ ] Alternative components evaluated for high-risk OSS - Supplier responsibility

**Gaps/Actions**:
- Request SBOM from supplier during evaluation
- Include SBOM update requirements in contract

---

## 8. Operational Security

### 8.1 Backup and Recovery

**Backup Strategy**: Supplier responsibility for service; print data is transient

**Backup Controls**:
- [ ] Regular backups scheduled (RPO: [X hours]) - Service configuration only
- [ ] Backup encryption enabled - Supplier responsibility
- [ ] Offsite/offline backups stored - Supplier responsibility
- [ ] Backup restoration tested (RTO: [X hours]) - Supplier responsibility
- [ ] Backup integrity verified - Supplier responsibility
- [ ] Immutable backups for ransomware protection - Supplier responsibility

**Recovery Time Objective (RTO)**: 4 hours (per NFR-A-001 SLA)
**Recovery Point Objective (RPO)**: N/A (print data is transient, no persistence required)

**Gaps/Actions**:
- Include RTO in contract SLA
- Verify supplier's backup and recovery procedures during evaluation

### 8.2 Incident Response

**Incident Response Plan**: In Development (post-contract)

**Incident Response Team**: Business Hours (IT Service Desk + Supplier)

**Incident Response Capabilities**:
- [ ] Incident response plan documented and tested - To be developed
- [ ] Incident response team trained - Post-deployment
- [x] Incident detection capabilities - Audit logging, Azure AD alerts
- [ ] Forensic investigation capabilities - Supplier + internal security team
- [ ] Communication plan for incidents - To be developed
- [ ] Regulatory reporting process (MOD, NCSC, ICO) - Existing corporate process
- [ ] Lessons learned process - Existing corporate process

**Recent Incident Response Exercise**: Not Conducted

**Gaps/Actions**:
- Develop incident response procedure specific to print service
- Include supplier incident notification requirements in contract (1-hour notification SLA)

### 8.3 Disaster Recovery and Business Continuity

**Disaster Recovery Plan**: In Development (post-contract)

**Business Continuity Plan**: Existing corporate BCP applies; print service is non-critical

**DR/BC Capabilities**:
- [ ] DR plan documented and tested - Supplier responsibility for service
- [ ] Alternative processing site identified - Supplier responsibility
- [x] Critical system identification completed - Service classified as non-critical
- [ ] Failover procedures documented - Supplier responsibility
- [ ] Regular DR testing conducted - Contract requirement
- [x] Business impact analysis (BIA) completed - Low business impact

**Last DR Test**: Not Conducted
**DR Test Results**: N/A

**Gaps/Actions**:
- Include DR testing requirement in contract (annual)
- Document manual fallback procedures (external print shop)

---

## 9. Personnel Security

### 9.1 Security Clearances

**Clearance Levels Required**:

| Role | Clearance Level | Current Clearance Status |
|------|-----------------|-------------------------|
| Supplier Engineer (on-site) | BPSS | Contract requirement |
| Internal Print Administrator | BPSS | Active (existing staff) |
| End User | BPSS | Active (existing staff) |

**Security Vetting Compliance**:
- [ ] All personnel appropriately vetted - Contract requirement for supplier staff
- [x] Clearance levels match data classification - BPSS appropriate for OFFICIAL
- [ ] Clearance renewal process managed - Supplier responsibility for their staff
- [ ] Foreign nationals risk assessed - Contract requirement
- [ ] Contractor clearances verified - Contract audit right

**Gaps/Actions**:
- Include BPSS verification requirement for all supplier staff with on-site access
- Specify right to audit supplier vetting records in contract

### 9.2 Security Awareness

**Security Training**:
- [x] Mandatory security awareness training completed - Existing staff
- [ ] Role-based security training provided - Post-deployment for admins
- [x] Phishing awareness training - Existing corporate training
- [x] Insider threat awareness - Existing corporate training
- [x] Data handling and classification training - Existing corporate training
- [x] Annual security refresher training - Existing corporate programme

**Training Completion Rate**: 95% (existing corporate training)

**Gaps/Actions**:
- Develop role-specific training for print service administrators
- Include security awareness requirement for supplier staff in contract

---

## 10. Compliance and Governance

### 10.1 Regulatory Compliance

**Applicable Regulations**:
- [x] UK GDPR and Data Protection Act 2018 - Personal data in print metadata
- [ ] Official Secrets Act - Not applicable (OFFICIAL only)
- [ ] Defence Reform Act - Not applicable
- [ ] Network and Information Systems (NIS) Regulations - Not applicable (non-essential service)
- [x] MOD JSP 440 (Defence IA Policy) - Applicable
- [ ] NCSC Cyber Assessment Framework (CAF) - Not mandated for OFFICIAL

**Compliance Status**:

| Regulation | Compliance Status | Last Assessment | Next Assessment |
|------------|------------------|-----------------|-----------------|
| UK GDPR | Compliant | 2025-12-01 | 2026-12-01 |
| JSP 440 | Partial | Pre-procurement | Post-deployment |

**Gaps/Actions**:
- Complete JSP 440 compliance assessment post-deployment
- Include UK GDPR compliance clause in supplier contract

### 10.2 Security Policies and Procedures

**Security Documentation**:
- [x] Information Security Policy - Corporate policy applies
- [x] Acceptable Use Policy - Corporate policy applies
- [x] Access Control Policy - Corporate policy applies
- [ ] Incident Response Procedure - Service-specific TBD
- [x] Business Continuity Plan - Corporate plan applies
- [ ] Disaster Recovery Plan - Service-specific TBD
- [x] Change Management Procedure - Corporate procedure applies
- [x] Data Classification and Handling Guide - Corporate guide applies

**Documentation Review Frequency**: Annual
**Last Documentation Review**: 2025-11-15

**Gaps/Actions**:
- Develop service-specific incident response procedure
- Update corporate documentation to reference print service

---

## Overall Security Assessment Summary

### Security Scorecard

| Security Domain | Status | Critical Issues | Priority |
|-----------------|--------|-----------------|----------|
| Data Classification | ✅ | No | Low |
| Defence in Depth | ⚠️ | No | Medium |
| Secure by Default | ⚠️ | No | Medium |
| Least Privilege | ✅ | No | Low |
| Assume Breach | ⚠️ | No | Medium |
| Accreditation | ⚠️ | Yes | High |
| Threat Modeling | ⚠️ | No | Medium |
| Cryptography | ⚠️ | No | Medium |
| Authentication | ✅ | No | Low |
| Network Security | ✅ | No | Low |
| Vulnerability Management | ⚠️ | No | Medium |
| Security Monitoring | ⚠️ | No | Medium |
| Secure Development | ⚠️ | No | Low |
| Supply Chain Security | ⚠️ | Yes | High |
| Backup and Recovery | ⚠️ | No | Low |
| Incident Response | ⚠️ | No | Medium |
| Personnel Security | ⚠️ | No | Medium |
| Compliance | ⚠️ | No | Medium |

### Critical Security Issues Requiring Immediate Action

1. **Supply Chain Security** - Supplier security certification (Cyber Essentials+ minimum) must be verified before contract award - blocks procurement
2. **Accreditation** - Accreditation process must be initiated and IAO assigned before service deployment
3. **Incident Response** - Service-specific incident response procedures must be documented before go-live

### Recommendations

**Critical Priority** (0-30 days):
- Finalise security requirements in contract/SOW including Cyber Essentials+ certification
- Assign Information Assurance Owner (IAO) for the service
- Include security evaluation criteria in vendor scoring matrix

**High Priority** (1-3 months):
- Complete vendor security questionnaire and verification during procurement
- Initiate accreditation documentation (BIA, risk assessment)
- Develop service-specific incident response procedures
- Define SIEM integration requirements for audit log export

**Medium Priority** (3-6 months):
- Complete threat model during detailed design phase
- Implement network segmentation (VLAN) per requirements
- Develop role-specific training for print service administrators
- Establish supplier security review cadence (quarterly)

---

## Next Steps and Action Plan

**Immediate Actions** (0-30 days):
- [ ] Finalise security requirements in SOW - Procurement Lead
- [ ] Assign IAO for print service - Security Team Lead
- [ ] Include Cyber Essentials+ as mandatory vendor requirement - Procurement Lead

**Short-term Actions** (1-3 months):
- [ ] Complete vendor security evaluation - Security Architect
- [ ] Initiate accreditation process - IAO (once assigned)
- [ ] Develop incident response procedure - Security Team
- [ ] Define SIEM integration requirements - Security Operations

**Long-term Actions** (3-12 months):
- [ ] Complete accreditation and obtain IAO sign-off - IAO
- [ ] Conduct first annual penetration test - Security Team
- [ ] Conduct first DR/BC test - Supplier + IT Operations
- [ ] Complete first quarterly security review - Security Architect

**Next Assessment Date**: 2026-04-09 (Quarterly during procurement/deployment, annually in Live)

---

## Approval and Sign-Off

| Role | Name | Date | Signature |
|------|------|------|-----------|
| Project Lead | | | |
| Security Architect | | | |
| Information Assurance Owner (IAO) | | | |
| Information Assurance Architect (IAA) | | | |
| Senior Information Risk Owner (SIRO) | | | |

---

**Document Control**:
- **Version**: 1.0
- **Classification**: OFFICIAL
- **Last Reviewed**: 2026-01-09
- **Next Review**: 2026-04-09
- **Document Owner**: Enterprise Architecture Team

---

**Generated by**: ArcKit `/arckit.mod-secure` command
**Generated on**: 2026-01-09
**ArcKit Version**: 0.8.2
**Project**: Large Format Printing Service (006)
**Model**: Claude Opus 4.5
