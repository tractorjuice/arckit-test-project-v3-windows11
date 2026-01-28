# Project Requirements: Hybrid Public Key Infrastructure (PKI)

> **Template Status**: Live | **Version**: 0.11.2 | **Command**: `/arckit.requirements`

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-005-REQ-v4.0 |
| **Document Type** | Business and Technical Requirements |
| **Project** | Hybrid Public Key Infrastructure (PKI) (Project 005) |
| **Classification** | OFFICIAL-SENSITIVE |
| **Status** | DRAFT |
| **Version** | 4.0 |
| **Created Date** | 2025-11-07 |
| **Last Modified** | 2026-01-26 |
| **Review Cycle** | Quarterly |
| **Next Review Date** | 2026-04-26 |
| **Owner** | Enterprise Security Architect |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | Project Team, Architecture Team, Security Team, Infrastructure Team, Executive Sponsors |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2025-11-07 | ArcKit AI | Initial creation from `/arckit.requirements` command | PENDING | PENDING |
| 2.0 | 2025-11-07 | ArcKit AI | Updated to hybrid PKI approach combining cloud and on-premises infrastructure | PENDING | PENDING |
| 3.0 | 2026-01-24 | ArcKit AI | Updated to latest template format | PENDING | PENDING |
| 4.0 | 2026-01-26 | ArcKit AI | Updated to ArcKit 0.11.2 template format. Added template status line. No content changes to requirements. | PENDING | PENDING |

## Document Purpose

This document defines comprehensive business and technical requirements for implementing a **hybrid Public Key Infrastructure (PKI)** that combines cloud-native PKI services with on-premises Certificate Authority (CA) infrastructure. The hybrid approach provides flexibility to leverage cloud automation and scalability while maintaining on-premises control for sensitive certificate types and air-gapped environments. The requirements will guide vendor selection, solution design, and implementation for a modern, scalable, and highly available PKI service supporting digital certificates for authentication, encryption, code signing, and secure communications across the enterprise.

---

## Executive Summary

### Business Context

The organization currently operates an aging on-premises Microsoft Certificate Authority (CA) infrastructure running on Windows Server 2012 R2 (end-of-life October 2023) that has become increasingly difficult to maintain, scale, and secure. The existing PKI infrastructure lacks modern security features, automated certificate lifecycle management, and cloud-native integration capabilities required to support the organization's digital transformation initiatives.

As the organization adopts a **hybrid cloud strategy** with workloads distributed across on-premises datacenters, Azure cloud services (Azure AD, Microsoft 365), and third-party SaaS applications, there is a need for a **hybrid PKI architecture** that combines:

1. **Cloud PKI services** for high-volume, automated certificate issuance (device certificates, user authentication, Wi-Fi 802.1X, VPN) with cloud-native integrations (Azure AD, Microsoft InTune, cert-manager for Kubernetes)
2. **On-premises PKI infrastructure** for security-sensitive certificates requiring organizational control (production server certificates, code signing for critical infrastructure, certificates for air-gapped environments, legacy application compatibility)

The current on-premises CA infrastructure presents significant risks including: lack of geographic redundancy, limited scalability, manual certificate management processes leading to expired certificates causing outages (12 incidents in past year), and insufficient logging/monitoring for security compliance. However, a **complete cloud migration** introduces new concerns from stakeholders:

- **Infrastructure Manager**: Loss of operational control and visibility into certificate issuance for production servers
- **Security Architect**: Data residency concerns for highly sensitive certificate private keys and concerns about cloud provider access
- **Compliance Officer**: Regulatory requirements for certain certificate types to remain within organizational infrastructure perimeter
- **Application Teams**: Legacy applications incompatible with cloud PKI protocols (requiring manual CSR submission and Windows PKP format)

A **hybrid PKI strategy** addresses these concerns by:
- **Cloud PKI** handling 80-90% of certificates (high-volume, automated, low-sensitivity): device authentication, user certificates, Wi-Fi 802.1X, VPN, development/test environments
- **On-premises PKI** handling 10-20% of certificates (low-volume, manual/semi-automated, high-sensitivity): production server SSL/TLS, code signing, legacy applications, air-gapped networks
- **Unified management plane** providing single pane of glass for certificate inventory, policy enforcement, and compliance reporting across both cloud and on-premises infrastructure

This strategic investment aligns with enterprise architecture principles of cloud-first infrastructure, Zero Trust security, operational automation, and pragmatic hybrid cloud adoption.

### Objectives

- **Implement Hybrid PKI Architecture**: Deploy cloud-native PKI service for high-volume automated certificates while maintaining modernized on-premises CA for sensitive use cases, with unified management and policy enforcement
- **Automate Certificate Lifecycle Management**: Implement automated certificate issuance, renewal, and revocation processes for cloud PKI (90% automation target) with improved manual workflows for on-premises PKI
- **Enable Zero Trust Security**: Provide certificate-based authentication for devices, users, and applications to support Zero Trust architecture using primarily cloud-issued certificates
- **Maintain Control for Sensitive Certificates**: Retain organizational control over production server certificates, code signing keys, and air-gapped environment certificates using on-premises infrastructure
- **Ensure Compliance and Auditability**: Implement comprehensive audit logging, certificate transparency, and compliance reporting across hybrid infrastructure for regulatory requirements (SOC 2, ISO 27001)
- **Reduce Operational Costs**: Lower total cost of ownership through cloud automation for high-volume certificates while avoiding cloud costs for low-volume sensitive certificates

### Expected Outcomes

- **99.9% PKI Service Availability (Cloud)**: Achieve three-nines uptime for cloud certificate issuance and validation services through multi-region redundancy
- **99.5% PKI Service Availability (On-Premises)**: Maintain on-premises CA availability for critical certificate issuance with documented failover procedures
- **90% Reduction in Certificate-Related Outages**: Eliminate expired certificate incidents through automated renewal workflows for cloud-issued certificates (current baseline: 12 incidents/year, target: ≤1/year)
- **70% Reduction in Certificate Management Effort**: Reduce manual certificate management tasks from 40 hours/month to 12 hours/month (cloud automation handles 80% of certificates, on-premises handles 20%)
- **100% Certificate Visibility**: Achieve complete inventory of all certificates across hybrid infrastructure within 6 months of implementation (current state: ~60% visibility)
- **Certificate Issuance SLA**:
  - Cloud PKI: <5 minutes for automated issuance (SCEP, ACME, API)
  - On-premises PKI: <4 hours for manual approval workflows (production servers, code signing)
- **Cost Optimization**: Achieve 25% total cost of ownership (TCO) reduction over 3 years compared to full cloud PKI or full on-premises refresh (hybrid approach optimizes costs by using cloud for high-volume, on-premises for low-volume)

### Project Scope

**In Scope**:

**Cloud PKI Services**:
- Cloud-native PKI service deployment for automated, high-volume certificate use cases
- Automated certificate lifecycle management (issuance, renewal, revocation) for cloud-issued certificates
- Integration with Azure AD, Microsoft InTune, Kubernetes cert-manager, and cloud identity providers
- Certificate-based authentication for VPN, Wi-Fi (802.1X), device enrollment, user authentication (smartcards)
- Development and test environment certificates (code signing for non-production, test servers)
- Certificate inventory, monitoring, alerting for cloud-issued certificates
- Certificate revocation infrastructure (OCSP and CRL) for cloud certificates
- Support for Windows, macOS, Linux, iOS, and Android certificate enrollment via SCEP/ACME protocols

**On-Premises PKI Infrastructure**:
- Modernization of on-premises Microsoft Certificate Authority (Windows Server 2022, TPM/HSM-backed root CA)
- Production server SSL/TLS certificates for internal applications and APIs requiring organizational control
- Code signing certificates for production software releases and critical infrastructure automation
- Legacy application certificates requiring Windows PKP format and manual CSR submission
- Air-gapped network certificates for security-isolated environments (OT/ICS networks, secure enclaves)
- Certificates for compliance-regulated workloads requiring on-premises key storage (PCI-DSS, HIPAA)
- Manual and semi-automated certificate approval workflows with security review gates

**Unified Management**:
- Centralized certificate inventory dashboard covering both cloud and on-premises certificates
- Unified certificate policy management and enforcement across hybrid infrastructure
- Single compliance reporting framework for SOC 2, ISO 27001 audits
- Certificate lifecycle alerting (expiration, revocation) for all certificates regardless of source
- Cross-CA trust configuration (cloud CA trusted by on-premises systems and vice versa)

**Migration**:
- Phased migration of certificate use cases from legacy on-premises CA to hybrid architecture
- Certificate type classification (cloud-suitable vs. on-premises-required) with decision matrix
- Zero-downtime migration approach with rollback capability

**Out of Scope**:
- Public SSL/TLS certificates for external websites (use commercial CA like DigiCert, Let's Encrypt)
- Hardware Security Module (HSM) procurement for on-premises root CA (use Windows TPM initially, HSM in Phase 2)
- Document signing certificates (future requirement)
- Timestamping Authority (TSA) services (future requirement)
- Third-party certificate management (vendor-provided certificates outside organizational control)
- Custom cryptographic algorithm implementation (rely on standards-based algorithms)
- Certificate issuance for external partners/suppliers (B2B use cases - future phase)

---

## Stakeholders

| Stakeholder | Role | Organization | Involvement Level |
|-------------|------|--------------|-------------------|
| CISO | Executive Sponsor | Information Security | Decision maker, budget approval |
| Security Architect | Technical Lead | Enterprise Architecture | Requirements definition, hybrid architecture design |
| Infrastructure Manager | Implementation Lead | IT Operations | Implementation, operations handover, on-premises CA management |
| Identity & Access Manager | Product Owner | IAM Team | Certificate policy definition, cloud integration |
| Compliance Officer | Compliance Lead | GRC Team | Regulatory compliance review, data residency requirements |
| Application Security Lead | Integration Lead | AppSec Team | Code signing, application integration |
| Network Security Engineer | Technical SME | Network Security | VPN/Wi-Fi certificate integration |
| DevOps Lead | Developer Representative | Engineering | CI/CD integration for code signing |
| Endpoint Manager | Deployment Lead | Endpoint Team | Device certificate enrollment (InTune) |
| Procurement Manager | Vendor Relations | Finance | Vendor selection, contract negotiation |

---

## Business Requirements

### BR-001: Hybrid PKI Architecture (Cloud + On-Premises)

**Description**: The organization requires a hybrid PKI architecture combining cloud-native PKI services for automated high-volume certificates with modernized on-premises Certificate Authority for sensitive low-volume certificates, providing flexibility, control, and cost optimization.

**Rationale**: A pure cloud PKI approach raises concerns about data residency, loss of operational control for production servers, and incompatibility with legacy applications. A pure on-premises approach lacks cloud automation capabilities and requires significant capital expenditure. A hybrid architecture provides best-of-both-worlds: cloud automation for 80% of certificates (devices, users, Wi-Fi) and on-premises control for 20% of certificates (production servers, code signing, air-gapped environments).

**Success Criteria**:
- Cloud PKI service deployed handling 80-90% of certificate volume (device auth, user auth, Wi-Fi, VPN, dev/test)
- On-premises CA modernized (Windows Server 2022, TPM-backed) handling 10-20% of certificate volume (production servers, code signing, legacy apps)
- Unified certificate inventory dashboard providing visibility across both cloud and on-premises certificates
- Certificate type classification matrix documented defining which certificates use cloud vs. on-premises based on sensitivity, volume, automation capability
- Cross-CA trust established (on-premises systems trust cloud CA, cloud systems trust on-premises CA)

**Priority**: MUST_HAVE

**Stakeholder**: CISO (Executive Sponsor), Security Architect, Infrastructure Manager

**Stakeholder Goals Addressed**:
- **SD-1 (CISO)**: Eliminates security risk from aging CA while retaining control over sensitive certificates
- **SD-2 (Infrastructure Manager)**: Reduces operational burden through cloud automation while maintaining on-premises visibility and control for critical systems
- **SD-4 (Security Architect)**: Enables Zero Trust (cloud certificates) while maintaining security posture for sensitive workloads (on-premises control)

**Alignment**: Balances Cloud-First principle with pragmatic on-premises retention for compliance and operational control

---

### BR-002: Automated Certificate Lifecycle Management (Cloud PKI)

**Description**: The business requires complete automation of certificate lifecycle processes (issuance, renewal, revocation, expiration monitoring) for cloud-issued certificates to eliminate manual processes that have caused production outages due to expired certificates.

**Rationale**: Manual certificate management has led to 12 certificate-related outages in the past year, primarily for device certificates, user certificates, and Wi-Fi authentication. Cloud PKI automation eliminates human error for high-volume certificate types, while on-premises CA retains manual approval workflows for security-sensitive certificates requiring human review.

**Success Criteria**:
- 90% reduction in certificate expiration incidents (from 12/year to ≤1/year)
- 80-90% of total certificates enrolled via automated cloud PKI workflows (API, SCEP, ACME protocols)
- Certificate renewal automated for cloud-issued certificates with 30-day advance notification and auto-renewal at 14 days before expiry
- Zero touch certificate deployment for end-user devices (Windows, macOS, iOS, Android) via InTune SCEP integration
- On-premises CA certificates managed with improved manual workflows and enhanced alerting (but not fully automated due to approval requirements)

**Priority**: MUST_HAVE

**Stakeholder**: Infrastructure Manager, Application Security Lead

**Stakeholder Goals Addressed**:
- **SD-2 (Infrastructure Manager)**: Reduces operational burden from 40 hours/month to 12 hours/month (G-2) through cloud automation
- **SD-1 (CISO)**: Eliminates certificate outages (G-1) through automated renewal for majority of certificates

**Alignment**: Aligns with operational automation principles and reduces operational risk

---

### BR-003: Zero Trust Security Enablement (Cloud-Issued Certificates)

**Description**: The hybrid PKI solution must support Zero Trust security architecture by providing certificate-based authentication for devices, users, and applications using primarily cloud-issued certificates integrated with Azure AD Conditional Access.

**Rationale**: Zero Trust architecture requires strong identity verification for every access request. Certificate-based authentication provides cryptographic assurance of device and user identity. Cloud-issued certificates integrate seamlessly with cloud identity providers (Azure AD) and support automated enrollment, while on-premises certificates serve specialized legacy scenarios.

**Success Criteria**:
- Certificate-based authentication implemented for VPN access using cloud-issued device certificates (replace username/password)
- Device certificates deployed to 100% of managed endpoints for network access control (802.1X Wi-Fi) using cloud PKI via InTune
- Cloud-issued certificates integrated with Azure AD Conditional Access policies for risk-based access decisions
- Mutual TLS (mTLS) implemented for internal API authentication (50+ critical APIs) with mix of cloud-issued (dev/test) and on-premises-issued (production) certificates based on environment sensitivity

**Priority**: MUST_HAVE

**Stakeholder**: CISO, Security Architect, Identity & Access Manager

**Stakeholder Goals Addressed**:
- **SD-4 (Security Architect)**: Enables Zero Trust architecture (G-4) with certificate-based authentication for 100% users/devices
- **SD-8 (Network Security Engineer)**: Certificate-based network authentication for VPN and Wi-Fi

**Alignment**: Aligns with Enterprise Architecture Principle 2 (Zero Trust Security Model) - certificate-based authentication strengthens device and user identity verification

---

### BR-004: Organizational Control for Sensitive Certificates (On-Premises PKI)

**Description**: The organization requires on-premises PKI infrastructure for security-sensitive certificates where organizational control, data residency, and manual approval workflows are essential for risk management and compliance.

**Rationale**: Production server certificates, code signing keys for critical infrastructure, and certificates for air-gapped environments present higher security risk if compromised. Stakeholders (Infrastructure Manager, Security Architect, Compliance Officer) require organizational control over private key generation, storage, and issuance approval workflows for these certificate types. On-premises PKI ensures keys never leave organizational infrastructure perimeter and enables security review gates before issuance.

**Success Criteria**:
- On-premises CA deployed on Windows Server 2022 with TPM-backed offline root CA and online issuing CA
- Certificate classification matrix documented defining which certificate types require on-premises issuance:
  - **On-Premises Required**: Production server SSL/TLS, production code signing, air-gapped network certificates, legacy application certificates (Windows PKP format), compliance-regulated workloads (PCI-DSS)
  - **Cloud Suitable**: Device authentication, user authentication, Wi-Fi 802.1X, VPN, development/test certificates, non-production code signing
- Manual approval workflows implemented for on-premises certificate issuance with security review gates (requestor identity verification, business justification, certificate policy compliance check)
- Certificate private keys for on-premises-issued certificates generated and stored within organizational infrastructure perimeter (never exported to cloud)
- On-premises CA audit logging with SIEM integration for compliance and security monitoring

**Priority**: MUST_HAVE

**Stakeholder**: Infrastructure Manager, Security Architect, Compliance Officer

**Stakeholder Goals Addressed**:
- **SD-2 (Infrastructure Manager)**: Maintains operational control and visibility for production server certificates
- **SD-4 (Security Architect)**: Retains security controls and approval workflows for high-risk certificate types
- **SD-5 (Compliance Officer)**: Meets data residency and organizational control requirements for regulated workloads

**Alignment**: Balances cloud automation with pragmatic on-premises control for risk management

---

### BR-005: Regulatory Compliance and Audit Requirements (Hybrid Infrastructure)

**Description**: The hybrid PKI solution must meet regulatory compliance requirements for audit logging, certificate transparency, and compliance reporting across both cloud and on-premises infrastructure to support SOC 2, ISO 27001, and PCI-DSS certifications.

**Rationale**: Regulatory frameworks require demonstrable controls over cryptographic key management, certificate issuance/revocation, and audit trails. Hybrid infrastructure increases compliance complexity requiring unified audit logging and compliance reporting across both cloud and on-premises certificate authorities.

**Success Criteria**:
- Comprehensive audit logging of all certificate lifecycle events (issuance, renewal, revocation) across both cloud and on-premises infrastructure retained for 7 years
- Unified compliance dashboard aggregating certificate compliance metrics from both cloud and on-premises sources
- Quarterly compliance reports generated for SOC 2 audits demonstrating certificate policy enforcement and access controls across hybrid infrastructure
- On-premises CA audit logs integrated with SIEM (Security Information and Event Management) system for security monitoring
- Certificate policy documentation defining governance model, approval workflows, and separation of duties for hybrid PKI architecture

**Priority**: MUST_HAVE

**Stakeholder**: Compliance Officer, CISO

**Stakeholder Goals Addressed**:
- **SD-5 (Compliance Officer)**: Achieves SOC 2/ISO 27001 compliance with zero audit findings (G-5, O-4)

**Alignment**: Aligns with compliance and governance principles requiring audit trails and regulatory adherence

---

### BR-006: Cost Optimization through Hybrid Approach

**Description**: The hybrid PKI solution must deliver total cost of ownership (TCO) reduction of at least 25% over 3 years compared to either full cloud PKI or full on-premises refresh, leveraging cloud for high-volume low-cost certificates and on-premises for low-volume certificates where cloud costs would be higher.

**Rationale**: Cloud PKI charges per-certificate fees suitable for high-volume automated issuance but expensive for low-volume manual certificates. On-premises PKI has high fixed costs (servers, licenses, staff) but low marginal cost per certificate. Hybrid approach optimizes costs: cloud for 5,000+ device/user certificates (cloud economies of scale), on-premises for ~500 server/code signing certificates (avoiding cloud per-certificate fees).

**Success Criteria**:
- TCO analysis demonstrates 25% cost savings over 3 years compared to full cloud ($1.2M) or full on-premises refresh ($1.5M) baseline, with hybrid approach target TCO of $1.05M
- Cost allocation model documented showing:
  - Cloud PKI costs: $120K/year subscription + $8/certificate × 5,000 certificates = $160K/year
  - On-premises costs: $60K one-time (Windows Server 2022, TPM hardware) + $30K/year (Windows licenses, maintenance) = $150K over 3 years
  - Staff costs: 1 FTE PKI engineer ($120K/year) for hybrid management vs. 2 FTEs for pure on-premises ($240K/year) = $360K savings over 3 years
- Elimination of Windows Server CAL costs for on-premises CA (transition to cloud authentication where possible)
- Cloud cost optimization through right-sizing (start with single-region deployment Year 1, multi-region Year 2 after ROI validation)

**Priority**: SHOULD_HAVE

**Stakeholder**: CFO, Procurement Manager, Infrastructure Manager

**Stakeholder Goals Addressed**:
- **SD-3 (CFO)**: Achieves TCO reduction and OpEx shift (G-3, O-2) while managing cloud cost risk through hybrid approach
- **SD-2 (Infrastructure Manager)**: Reduces staffing requirements through automation while retaining on-premises expertise

**Alignment**: Aligns with cost optimization and financial stewardship principles

---

### BR-007: Business Continuity and High Availability

**Description**: The hybrid PKI solution must provide high availability and business continuity for certificate issuance and validation services, with cloud PKI providing multi-region redundancy and on-premises PKI providing documented failover procedures.

**Rationale**: Certificate validation failures disrupt business operations (users cannot authenticate, applications cannot establish TLS connections, VPN access denied). Cloud PKI provides geographic redundancy automatically, while on-premises PKI requires explicit failover design and procedures.

**Success Criteria**:
- **Cloud PKI Availability**: 99.9% uptime SLA (Year 1 single-region), 99.99% uptime SLA (Year 2 multi-region deployment)
- **On-Premises PKI Availability**: 99.5% uptime target with documented backup and restore procedures (RTO: 4 hours, RPO: 24 hours)
- Certificate validation services (OCSP, CRL) available during primary CA outage through:
  - Cloud PKI: Automatic multi-region failover (Year 2)
  - On-premises PKI: Standby OCSP responder with replicated CRL distribution
- Disaster recovery plan documented with recovery procedures for both cloud account compromise and on-premises datacenter failure scenarios
- Zero certificate issuance downtime during migration from legacy CA to hybrid PKI architecture

**Priority**: MUST_HAVE

**Stakeholder**: CISO, Infrastructure Manager

**Stakeholder Goals Addressed**:
- **SD-1 (CISO)**: Eliminates certificate-related outages (G-1, O-1) through high availability design

**Alignment**: Aligns with business continuity and operational resilience principles

---

### BR-008: Phased Migration with Zero Downtime

**Description**: The migration from legacy on-premises CA to hybrid PKI architecture must follow a phased approach with zero downtime for certificate issuance and validation, with rollback capability at each phase gate.

**Rationale**: Certificate infrastructure is critical to business operations. A "big bang" migration risks widespread authentication failures and application downtime. Phased migration allows validation of each certificate type migration with fallback to legacy CA if issues arise.

**Success Criteria**:
- Migration roadmap with 4 phases over 12 months:
  - **Pilot (Month 1-2)**: IT test devices (50 devices) with cloud PKI device certificates and InTune SCEP integration
  - **Wave 1 (Month 3-6)**: Production device certificates (2,000 devices), Wi-Fi 802.1X, VPN certificates via cloud PKI
  - **Wave 2 (Month 7-9)**: User authentication certificates, development/test environment certificates via cloud PKI
  - **Wave 3 (Month 10-12)**: On-premises CA modernization (Windows Server 2022), production server certificate migration to modernized on-premises CA, legacy CA decommission
- Legacy CA remains operational as fallback during migration with ability to re-issue certificates if cloud or modernized on-premises CA issues arise
- Certificate validation continues uninterrupted (both legacy and new CAs trusted by all systems during transition)
- Each phase requires sign-off from Infrastructure Manager and Security Architect before proceeding to next phase

**Priority**: MUST_HAVE

**Stakeholder**: Infrastructure Manager, CISO

**Stakeholder Goals Addressed**:
- **SD-2 (Infrastructure Manager)**: Zero-downtime migration reduces risk and maintains operational stability
- **Conflict Resolution (C-3)**: Phased 12-month schedule balances CFO speed preference with Infrastructure Manager thoroughness requirements

**Alignment**: Aligns with risk management and change control principles

---

## Functional Requirements

### FR-001: Cloud PKI Service Deployment (Multi-Region in Year 2)

**Description**: Deploy cloud-native PKI service with single-region deployment in Year 1 (cost optimization) and multi-region deployment in Year 2 (high availability) providing automated certificate issuance, renewal, and revocation.

**Acceptance Criteria**:
- Cloud PKI service account provisioned with vendor (Azure Key Vault Managed HSM, DigiCert ONE, Sectigo Certificate Manager, or AWS Private CA)
- Certificate Authority hierarchy configured: Root CA (offline, HSM-backed) → Issuing CA (online, automated)
- Certificate templates created for cloud-issued certificate types: device authentication, user authentication, Wi-Fi 802.1X, VPN client auth, server authentication (dev/test), code signing (dev/test)
- Year 1: Single-region deployment (US East or EU West based on data residency requirements)
- Year 2: Multi-region deployment with automatic cross-region replication and failover

**Priority**: MUST_HAVE

**Dependencies**: Cloud service account, network connectivity, Azure AD tenant

**Testing**: Certificate issuance test across 5 certificate types with validation of certificate chain trust

**Stakeholder**: Security Architect, Infrastructure Manager

---

### FR-002: On-Premises PKI Infrastructure Modernization

**Description**: Modernize on-premises Microsoft Certificate Authority infrastructure to Windows Server 2022 with TPM-backed offline root CA and online issuing CA for security-sensitive certificate use cases.

**Acceptance Criteria**:
- Windows Server 2022 Standard Edition deployed on virtual machine (4 vCPU, 8 GB RAM, 100 GB storage)
- Two-tier CA hierarchy:
  - **Root CA (Offline)**: Windows Server 2022, TPM-backed private key storage, powered off except for CRL signing and subordinate CA renewal (powered on quarterly)
  - **Issuing CA (Online)**: Windows Server 2022, HSM or TPM-backed private key, online for certificate issuance with HTTPS enrollment and CEP/CES web services
- Certificate templates configured for on-premises-issued certificate types: server authentication (production), code signing (production), legacy application authentication
- Certificate Enrollment Web Services (CES) and Certificate Enrollment Policy (CEP) deployed for HTTPS-based certificate enrollment
- Active Directory integration for certificate template permissions and approval workflows
- CRL and OCSP responder configured with high availability (replicated to secondary server)

**Priority**: MUST_HAVE

**Dependencies**: Windows Server 2022 licenses, virtual infrastructure, Active Directory domain

**Testing**: End-to-end certificate request, approval, issuance workflow for production server certificate

**Stakeholder**: Infrastructure Manager, Security Architect

---

### FR-003: Certificate Issuance via SCEP Protocol (Cloud PKI - InTune Integration)

**Description**: Support Simple Certificate Enrollment Protocol (SCEP) RFC 8894 for automated device certificate enrollment via Microsoft InTune for Windows, macOS, iOS, and Android devices.

**Acceptance Criteria**:
- SCEP server endpoint configured in cloud PKI service (HTTPS URL: `https://pki.example.com/scep`)
- InTune SCEP certificate profile created with:
  - Subject name format: CN={{DeviceName}}, O=Example Corp
  - Subject Alternative Name (SAN): DNS={{DeviceName}}.corp.example.com, UPN={{UserPrincipalName}}
  - Key usage: Digital Signature, Key Encipherment
  - Extended key usage: Client Authentication (1.3.6.1.5.5.7.3.2)
  - Validity period: 1 year with auto-renewal at 30 days before expiry
- InTune device enrollment triggers automatic SCEP certificate provisioning with zero user interaction
- Certificate stored in device Trusted Platform Module (TPM) or Secure Enclave with private key marked non-exportable
- Support for certificate renewal via SCEP without user intervention or device re-enrollment

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), Microsoft InTune tenant, Azure AD device registration

**Testing**: Zero-touch certificate provisioning validated on 5 device types (Windows 11, macOS, iOS, Android, Linux)

**Stakeholder**: Endpoint Manager, Identity & Access Manager

---

### FR-004: Certificate Issuance via ACME Protocol (Cloud PKI - Kubernetes Integration)

**Description**: Support Automated Certificate Management Environment (ACME) protocol RFC 8555 for automated certificate issuance for Kubernetes workloads using cert-manager and other ACME clients.

**Acceptance Criteria**:
- ACME server endpoint configured in cloud PKI service (HTTPS URL: `https://pki.example.com/acme/directory`)
- ACME directory resource returned with endpoints for newNonce, newAccount, newOrder, revokeCert
- cert-manager ClusterIssuer configured for internal ACME CA:
  ```yaml
  apiVersion: cert-manager.io/v1
  kind: ClusterIssuer
  metadata:
    name: internal-ca
  spec:
    acme:
      server: https://pki.example.com/acme/directory
      privateKeySecretRef:
        name: acme-account-key
  ```
- Certificate lifecycle automation: cert-manager requests certificate via ACME challenge (HTTP-01 or DNS-01), cloud PKI validates challenge, issues certificate, cert-manager installs certificate as Kubernetes Secret
- Automatic renewal 30 days before expiry initiated by cert-manager

**Priority**: SHOULD_HAVE

**Dependencies**: FR-001 (Cloud PKI), Kubernetes cluster, cert-manager deployment

**Testing**: ACME certificate issuance for test ingress controller with automatic renewal validation

**Stakeholder**: DevOps Lead, Security Architect

---

### FR-005: REST API for Programmatic Certificate Management (Cloud PKI)

**Description**: Provide RESTful API for programmatic certificate issuance, renewal, revocation, and inventory queries enabling integration with automation workflows and custom applications.

**Acceptance Criteria**:
- API authentication via API key or OAuth 2.0 client credentials with role-based access control (RBAC)
- API endpoints implemented:
  - `POST /certificates` - Request new certificate (CSR submission)
  - `GET /certificates/{id}` - Retrieve certificate details
  - `POST /certificates/{id}/renew` - Renew existing certificate
  - `POST /certificates/{id}/revoke` - Revoke certificate with reason code
  - `GET /certificates` - List all certificates with filtering (status, expiry date, subject name)
- API rate limiting: 100 requests/minute per API key
- API documentation (OpenAPI/Swagger) published with code examples for Python, PowerShell, curl
- Audit logging of all API calls with caller identity, timestamp, action, certificate subject

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI)

**Testing**: API integration test covering certificate request, renewal, revocation workflows with validation of audit logs

**Stakeholder**: DevOps Lead, Application Security Lead

---

### FR-006: Azure Active Directory Integration (Cloud PKI)

**Description**: Integrate cloud PKI with Azure Active Directory for user and device identity verification, certificate subject name population from Azure AD attributes, and Conditional Access policy enforcement based on certificate presence.

**Acceptance Criteria**:
- Azure AD application registration for cloud PKI service with Microsoft Graph API permissions (User.Read.All, Device.Read.All)
- Certificate subject name auto-populated from Azure AD user/device attributes:
  - User certificates: CN={{DisplayName}}, E={{Mail}}, UPN SAN={{UserPrincipalName}}
  - Device certificates: CN={{DeviceName}}, Device ID SAN={{AzureADDeviceId}}
- Azure AD Conditional Access policy configured requiring certificate-based authentication for VPN and high-risk sign-ins:
  - Grant control: Require multi-factor authentication OR require compliant device with certificate
- Certificate-based authentication (CBA) enabled in Azure AD with X.509 certificate validation against cloud-issued CA

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), Azure AD Premium P1, Certificate-Based Authentication license

**Testing**: End-to-end authentication flow with cloud-issued user certificate satisfying Conditional Access policy

**Stakeholder**: Identity & Access Manager, Security Architect

---

### FR-007: Microsoft InTune Integration (Cloud PKI)

**Description**: Integrate cloud PKI with Microsoft InTune for automated device certificate provisioning via SCEP and enforcement of certificate-based device compliance policies.

**Acceptance Criteria**:
- InTune SCEP certificate connector configured pointing to cloud PKI SCEP endpoint (FR-003)
- InTune device compliance policy requiring valid certificate for device compliance status:
  - Certificate present and not expired
  - Certificate issued by trusted CA (cloud PKI or on-premises PKI)
  - Certificate private key stored in TPM/Secure Enclave
- InTune Conditional Access integration: Non-compliant devices (missing certificate or expired certificate) blocked from accessing corporate resources
- Certificate deployment validated across device platforms: Windows 11 (TPM), macOS (Keychain), iOS (Secure Enclave), Android (KeyStore)

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-003 (SCEP), Microsoft InTune license

**Testing**: Device compliance validation with certificate expiry simulation (revoke certificate, verify device marked non-compliant)

**Stakeholder**: Endpoint Manager, Identity & Access Manager

---

### FR-008: Certificate Templates and Policies (Cloud and On-Premises)

**Description**: Define certificate templates and certificate policies for each certificate use case specifying key usage, extended key usage, validity period, subject name format, and approval workflows (cloud: automated, on-premises: manual approval for sensitive types).

**Acceptance Criteria**:
- Certificate templates created for cloud PKI (automated issuance):
  - **Device Authentication**: 1-year validity, auto-renewal, Client Authentication EKU, TPM-backed
  - **User Authentication**: 1-year validity, auto-renewal, Client Authentication + Smart Card Logon EKU
  - **Wi-Fi 802.1X**: 1-year validity, auto-renewal, Client Authentication EKU
  - **VPN Client**: 1-year validity, auto-renewal, Client Authentication EKU
  - **Server Auth (Dev/Test)**: 90-day validity, auto-renewal, Server Authentication EKU
  - **Code Signing (Dev/Test)**: 1-year validity, auto-renewal, Code Signing EKU
- Certificate templates created for on-premises PKI (manual approval):
  - **Server Auth (Production)**: 2-year validity, manual renewal reminder at 60 days, Server Authentication EKU, approval required
  - **Code Signing (Production)**: 3-year validity, manual renewal, Code Signing EKU, security review required
  - **Legacy App Auth**: 1-year validity, manual issuance via Windows PKP format
- Certificate Policy OIDs defined and published in templates identifying cloud-issued vs. on-premises-issued certificates for policy-based trust decisions
- Approval workflow configured for on-premises certificate templates with Active Directory security group approval (PKI Approvers group)

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-002 (On-Premises PKI)

**Testing**: Template validation by requesting certificate of each type and verifying properties (EKU, validity, approval workflow)

**Stakeholder**: Security Architect, Identity & Access Manager

---

### FR-009: Automated Certificate Renewal (Cloud PKI)

**Description**: Implement automated certificate renewal for cloud-issued certificates with configurable renewal threshold (default: 30 days before expiry) and notification escalation if renewal fails.

**Acceptance Criteria**:
- Certificate renewal monitoring service running with daily scan of all cloud-issued certificates
- Renewal workflow triggered automatically at 30 days before expiry:
  - Device certificates: InTune SCEP profile triggers device to request new certificate via SCEP renewal
  - Server certificates: API call to cloud PKI to renew certificate with same subject name and key usage
  - User certificates: Email notification to user with self-service renewal portal link
- Renewal failure alerting: If certificate not renewed at 14 days before expiry, email alert sent to:
  - Certificate owner (if identifiable from subject name or metadata)
  - Infrastructure team distribution list
  - Security team for code signing certificates
- Renewal success rate KPI tracked: Target 95% of certificates auto-renewed without manual intervention

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-003 (SCEP), FR-005 (API)

**Testing**: Renewal workflow validation by creating test certificate with 35-day validity and verifying auto-renewal triggered at 30 days

**Stakeholder**: Infrastructure Manager, Application Security Lead

---

### FR-010: Certificate Inventory and Discovery (Hybrid - Cloud and On-Premises)

**Description**: Implement centralized certificate inventory system providing unified visibility of all certificates across hybrid infrastructure (cloud-issued, on-premises-issued, and third-party certificates) with automated discovery scanning.

**Acceptance Criteria**:
- Certificate inventory database storing metadata for all certificates:
  - Certificate source: Cloud PKI, On-Premises PKI, Third-Party CA
  - Subject name, serial number, issuer, validity period, thumbprint
  - Certificate location: Device, server, application, key vault
  - Certificate owner, business justification, certificate template/type
- Automated certificate discovery agents:
  - **Windows/Linux servers**: PowerShell/Python script scanning certificate stores (local machine, service accounts) with daily execution
  - **Cloud key vaults**: Azure Key Vault, AWS Secrets Manager API integration for certificate discovery
  - **Load balancers/firewalls**: Automated scanning of F5, Palo Alto, Cisco ASA certificate stores via API or SSH
  - **Kubernetes**: cert-manager Certificate resources queried via kubectl for certificate inventory
- Certificate inventory dashboard displaying:
  - Total certificate count by source (cloud, on-premises, third-party)
  - Certificates expiring in next 30/60/90 days with prioritization by criticality
  - Certificates already expired (remediation required)
  - Certificate type distribution (device auth, server auth, code signing)
  - Shadow IT certificates (discovered certificates not issued by organizational PKI)
- CSV export capability for audit and compliance reporting

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-002 (On-Premises PKI)

**Testing**: Discovery validation by deploying test certificates on 5 systems and verifying inventory database updated within 24 hours

**Stakeholder**: Infrastructure Manager, Compliance Officer

---

### FR-011: Certificate Revocation (CRL and OCSP) - Hybrid Infrastructure

**Description**: Implement certificate revocation infrastructure using Certificate Revocation Lists (CRL) and Online Certificate Status Protocol (OCSP) for both cloud-issued and on-premises-issued certificates, with high availability and performance requirements.

**Acceptance Criteria**:
- **Cloud PKI Revocation**:
  - CRL published at `http://crl.pki.example.com/cloudca.crl` with 24-hour update interval and 48-hour next update
  - OCSP responder available at `http://ocsp.pki.example.com` with <500ms response time (99th percentile)
  - OCSP response caching (4-hour validity period) to reduce load
- **On-Premises PKI Revocation**:
  - CRL published via HTTP and LDAP: `http://crl.corp.example.com/corpca.crl` and `ldap:///CN=Corp CA,CN=CDP,CN=Public Key Services,CN=Services,CN=Configuration,DC=corp,DC=example,DC=com`
  - OCSP responder deployed with redundancy (primary + standby) for high availability
  - CRL updated every 1 hour for on-premises CA (shorter interval than cloud due to production server certificate criticality)
- Certificate revocation workflow:
  - Self-service revocation portal for certificate owners (authentication required)
  - API-based revocation via REST API (FR-005) with audit logging
  - Emergency revocation procedure for security incidents (CISO approval required)
- Revocation reason codes supported: Key Compromise (1), CA Compromise (2), Affiliation Changed (3), Superseded (4), Cessation of Operation (5)
- Revocation propagation time: CRL updated within 1 hour of revocation request, OCSP responder reflects revocation immediately (for cloud) or within 5 minutes (for on-premises)

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-002 (On-Premises PKI)

**Testing**: End-to-end revocation test with validation of CRL update and OCSP response reflecting revoked status

**Stakeholder**: Security Architect, Infrastructure Manager

---

### FR-012: Notification and Alerting System (Hybrid Infrastructure)

**Description**: Implement comprehensive notification and alerting system for certificate lifecycle events (expiration, renewal failures, revocation) and operational issues (CA unavailability, OCSP response time degradation) across hybrid infrastructure.

**Acceptance Criteria**:
- Email notifications configured for certificate lifecycle events:
  - **Expiration warnings**: Emails sent at 60, 30, 14, 7 days before expiry to certificate owner and Infrastructure team
  - **Renewal failures**: Immediate email alert if automated renewal fails with certificate details and remediation steps
  - **Revocation notifications**: Email sent to certificate owner and Security team when certificate revoked
- Operational alerting integrated with monitoring system (Nagios, Prometheus, Azure Monitor):
  - **CA availability**: Alert if cloud PKI API returns 5xx errors or on-premises CA web enrollment unavailable
  - **OCSP performance**: Alert if OCSP response time exceeds 1 second (p99)
  - **CRL staleness**: Alert if CRL not updated within expected interval (24 hours for cloud, 1 hour for on-premises)
  - **Certificate inventory discovery failures**: Alert if discovery agent fails to execute or returns errors
- Alert severity levels with escalation:
  - **P1 (Critical)**: CA unavailable, OCSP complete failure, code signing certificate revoked - page on-call engineer
  - **P2 (High)**: Certificate expired (production server), renewal failure for high-value certificate - email Infrastructure Manager immediately
  - **P3 (Medium)**: Certificate expiring in <7 days with no renewal in progress - daily email digest
  - **P4 (Low)**: Certificate expiring in 30-60 days - weekly email report
- Alert suppression and snooze capability to prevent alert fatigue

**Priority**: MUST_HAVE

**Dependencies**: FR-009 (Renewal), FR-010 (Inventory), FR-011 (Revocation)

**Testing**: Alert validation by simulating failure scenarios (expire test certificate, stop OCSP responder, fail renewal) and verifying alert delivery

**Stakeholder**: Infrastructure Manager, Security Architect

---

### FR-013: Certificate Management Dashboard (Unified View - Hybrid)

**Description**: Provide web-based certificate management dashboard with unified view of certificate inventory, compliance status, lifecycle events, and operational health across both cloud and on-premises PKI infrastructure.

**Acceptance Criteria**:
- Dashboard accessible via HTTPS with Azure AD single sign-on authentication
- Dashboard widgets and visualizations:
  - **Certificate inventory summary**: Total certificates by source (cloud/on-premises/third-party), by type (device/user/server/code signing), by status (valid/expiring/expired/revoked)
  - **Expiration timeline**: Chart showing certificate expirations by week for next 90 days with drill-down capability
  - **Renewal success rate**: KPI showing percentage of certificates successfully auto-renewed vs. requiring manual intervention
  - **PKI health status**: Green/yellow/red indicators for CA availability, OCSP response time, CRL freshness
  - **Top 10 certificate owners**: Table showing users/teams with most certificates for accountability tracking
  - **Compliance status**: Percentage of certificates complying with organizational certificate policy (valid templates, approved key sizes, not expired)
- Role-based access control (RBAC):
  - **PKI Administrators**: Full access to all certificates and configuration
  - **Certificate Owners**: View only their own certificates with self-service renewal/revocation
  - **Auditors**: Read-only access to all certificates and audit logs for compliance reviews
- Data refresh frequency: Real-time for operational health metrics, 1-hour cache for certificate inventory (performance optimization)
- Dashboard export capabilities: PDF report generation for executive summaries, CSV export for detailed analysis

**Priority**: MUST_HAVE

**Dependencies**: FR-010 (Inventory), FR-011 (Revocation), FR-012 (Alerting)

**Testing**: Dashboard functionality validation with 3 user roles verifying appropriate access controls and data visibility

**Stakeholder**: Infrastructure Manager, CISO, Compliance Officer

---

### FR-014: Code Signing Integration with CI/CD (Hybrid Approach)

**Description**: Integrate certificate-based code signing into CI/CD pipelines using cloud-issued certificates for development/test environments and on-premises-issued certificates for production releases, eliminating SmartScreen warnings and malware false positives.

**Acceptance Criteria**:
- **Development/Test Code Signing (Cloud PKI)**:
  - Code signing certificate issued via cloud PKI API (FR-005) with automated provisioning
  - CI/CD pipeline (Azure DevOps, GitHub Actions, Jenkins) configured with code signing step using cloud-issued certificate
  - Certificate stored in CI/CD secrets vault (Azure Key Vault, GitHub Secrets, Jenkins Credentials) with access control
  - Signing tools integrated: SignTool.exe (Windows binaries), jarsigner (Java), codesign (macOS)
  - Build artifacts signed automatically on each build with certificate thumbprint logged to build metadata
- **Production Code Signing (On-Premises PKI)**:
  - Code signing certificate issued via on-premises PKI with manual security review approval workflow
  - Certificate stored in hardware security module (HSM) or Azure Key Vault Managed HSM with access logging
  - Production signing performed on dedicated signing server (not CI/CD agents) with restricted network access
  - Dual approval required for production code signing: Developer requests signature, Security Architect approves, signing server executes with audit log
- Timestamping service configured: RFC 3161 timestamp from public TSA (DigiCert, Sectigo) to ensure signature validity after certificate expiration
- Certificate subject name includes organization legal name and Code Signing EKU (1.3.6.1.5.5.7.3.3)

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-002 (On-Premises PKI), FR-005 (API), FR-008 (Templates)

**Testing**: End-to-end signing workflow validation with verification of signature validity via signtool verify and Windows SmartScreen compatibility

**Stakeholder**: Application Security Lead, DevOps Lead

---

### FR-015: VPN Certificate-Based Authentication (Cloud-Issued Certificates)

**Description**: Implement certificate-based authentication for VPN access using cloud-issued device certificates deployed via InTune, replacing username/password authentication and enabling Zero Trust VPN access controls.

**Acceptance Criteria**:
- Cloud PKI device certificates deployed to all managed devices via InTune SCEP (FR-003) with VPN Client Authentication EKU
- VPN infrastructure (Cisco AnyConnect, Palo Alto GlobalProtect, Fortinet FortiClient) configured to require client certificate authentication:
  - Certificate trust anchor: Cloud PKI root CA certificate imported to VPN gateway trusted CAs
  - Certificate validation: OCSP or CRL check enabled to validate certificate not revoked
  - Subject name validation: Certificate subject CN matches device hostname registered in Azure AD
- VPN Conditional Access policy enforced:
  - Device must be Azure AD joined and InTune compliant (certificate present)
  - Certificate must be issued by organizational PKI (cloud or on-premises)
  - MFA required on initial certificate enrollment but not on subsequent VPN connections (certificate acts as second factor)
- Username/password VPN authentication disabled after certificate-based auth migration complete (dual-mode transition for 30-day pilot)
- VPN access logs enriched with certificate subject name and serial number for audit and troubleshooting

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-003 (SCEP), FR-007 (InTune), Network infrastructure

**Testing**: VPN connection test from 3 device types (Windows, macOS, iOS) with validation of certificate-based authentication and Conditional Access enforcement

**Stakeholder**: Network Security Engineer, Identity & Access Manager

---

### FR-016: Wi-Fi 802.1X Certificate Authentication (Cloud-Issued Certificates)

**Description**: Implement Wi-Fi 802.1X (WPA2/WPA3-Enterprise) certificate-based authentication using cloud-issued device certificates deployed via InTune, replacing pre-shared key (PSK) and improving wireless network security.

**Acceptance Criteria**:
- Cloud PKI device certificates deployed to all managed devices via InTune SCEP (FR-003) with Client Authentication EKU
- RADIUS server (Microsoft NPS, Cisco ISE, Aruba ClearPass) configured for EAP-TLS authentication:
  - Certificate trust anchor: Cloud PKI root CA certificate imported to RADIUS server trusted CAs
  - Certificate validation: Certificate subject CN matched against computer account in Active Directory or Azure AD device ID
  - OCSP or CRL validation enabled to check certificate revocation status
- Wi-Fi access point configuration:
  - SSID: CorpWiFi-Enterprise (WPA3-Enterprise or WPA2-Enterprise with AES encryption)
  - Authentication method: 802.1X with EAP-TLS (certificate-based, no username/password)
  - VLAN assignment based on device compliance status (compliant devices → corporate VLAN, non-compliant → quarantine VLAN)
- InTune Wi-Fi profile deployed with certificate selection rule:
  - Select certificate issued by cloud PKI with Client Authentication EKU
  - Certificate subject name type: Common Name matching device hostname
- Pre-shared key (PSK) Wi-Fi SSIDs phased out after certificate-based Wi-Fi migration complete (retain guest Wi-Fi with captive portal for unmanaged devices)

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-003 (SCEP), FR-007 (InTune), RADIUS infrastructure

**Testing**: Wi-Fi 802.1X authentication test from 3 device types (Windows, macOS, mobile) with validation of EAP-TLS handshake and VLAN assignment

**Stakeholder**: Network Security Engineer, Endpoint Manager

---

### FR-017: Certificate Export and Backup (On-Premises Only)

**Description**: Provide secure certificate export capability for on-premises-issued certificates with private keys (when required for legacy application compatibility or disaster recovery) with audit logging and access controls.

**Acceptance Criteria**:
- Certificate export workflow implemented for on-premises PKI with security controls:
  - Export request submitted via web portal or API with business justification required
  - Approval workflow: Security Architect or Infrastructure Manager approval required before export allowed
  - Export format: PKCS#12 (.pfx/.p12) with strong password encryption (minimum 16 characters, complexity requirements)
  - Private key export audit logging: Certificate subject, requestor identity, approver identity, export timestamp, IP address logged to SIEM
- Private key export restricted to specific certificate types where technically necessary:
  - **Allowed**: Legacy application certificates (Windows PKP format), server certificates for manual installation on appliances without CSR capability
  - **Prohibited**: User authentication certificates (private key must remain in TPM/Secure Enclave), device authentication certificates, code signing certificates (HSM-backed, non-exportable)
- Certificate backup for disaster recovery:
  - Automated backup of on-premises CA database and configuration to encrypted Azure Blob Storage with 7-year retention
  - Backup encryption using customer-managed key in Azure Key Vault
  - Disaster recovery procedure documented with RPO: 24 hours, RTO: 4 hours
- **Cloud PKI certificates NOT exportable**: Cloud-issued certificates have private keys stored in device TPM/Secure Enclave or cloud HSM and are non-exportable by design (security requirement)

**Priority**: SHOULD_HAVE

**Dependencies**: FR-002 (On-Premises PKI)

**Testing**: Export workflow validation with approval simulation and verification of audit log entries

**Stakeholder**: Infrastructure Manager, Security Architect

---

### FR-018: Certificate Migration from Legacy CA (Hybrid Architecture)

**Description**: Migrate existing certificates from legacy on-premises Microsoft CA (Windows Server 2012 R2) to hybrid PKI architecture (cloud PKI or modernized on-premises PKI based on certificate classification) with zero downtime and rollback capability.

**Acceptance Criteria**:
- Certificate migration assessment completed:
  - Legacy CA certificate inventory exported (1,000+ certificates) with classification by type (device, user, server, code signing)
  - Certificate type classification matrix applied to determine target CA:
    - **Migrate to Cloud PKI**: Device auth, user auth, Wi-Fi 802.1X, VPN, dev/test servers (80% of certificates)
    - **Migrate to On-Premises PKI**: Production servers, code signing, legacy apps, air-gapped (20% of certificates)
- Migration phases (FR-BR-008):
  - **Pilot**: IT test devices (50 certificates migrated to cloud PKI with validation of compatibility)
  - **Wave 1**: Production device certificates, Wi-Fi, VPN (2,000 certificates migrated to cloud PKI)
  - **Wave 2**: User certificates, dev/test environments (1,500 certificates migrated to cloud PKI)
  - **Wave 3**: Production servers, code signing (500 certificates migrated to modernized on-premises PKI)
- Dual CA trust during migration:
  - Legacy CA root certificate remains trusted in all systems during transition
  - New CA root certificates (cloud PKI and modernized on-premises PKI) added to trusted root stores before migration begins
  - Certificate validation accepts certificates from any of the three CAs (legacy, cloud, on-premises modernized) enabling gradual migration
- Certificate re-issuance with same or similar properties:
  - Subject name maintained where possible (CN, O, OU preserved)
  - Validity period adjusted to new CA policy (1-year for device/user, 2-year for servers)
  - Private key re-generated (not migrated) for security best practice
- Migration completion criteria:
  - 100% of certificates migrated from legacy CA to hybrid PKI
  - Legacy CA root certificate removed from trusted roots 90 days after last certificate expires
  - Legacy CA infrastructure decommissioned (servers powered off, AD objects removed)

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-002 (On-Premises PKI), FR-003 (SCEP), FR-008 (Templates)

**Testing**: Migration pilot validation with 50 test certificates across 5 certificate types with verification of application compatibility

**Stakeholder**: Infrastructure Manager, Security Architect

---

### FR-019: Multi-Platform Device Support (Cloud PKI SCEP)

**Description**: Support certificate enrollment and management for multiple device platforms (Windows, macOS, Linux, iOS, Android) using cloud PKI SCEP integration with Microsoft InTune or other MDM platforms.

**Acceptance Criteria**:
- **Windows 11**: SCEP enrollment via InTune with certificate stored in TPM 2.0, private key marked non-exportable, certificate auto-renewal support
- **macOS**: SCEP enrollment via InTune with certificate stored in macOS Keychain (preferably Secure Enclave on Apple Silicon), certificate auto-renewal support
- **iOS/iPadOS**: SCEP enrollment via InTune or Apple Profile Manager with certificate stored in Secure Enclave, private key non-exportable
- **Android**: SCEP enrollment via InTune with certificate stored in Android KeyStore, private key hardware-backed on devices with StrongBox/TEE support
- **Linux**: SCEP enrollment via Python/Bash script using cloud PKI API (FR-005) or SCEP client (sscep) with certificate stored in `/etc/ssl/certs` or user certificate store
- Device certificate properties consistent across platforms:
  - Subject name format: CN={{DeviceName}}, O=Example Corp
  - Key size: RSA 2048-bit minimum (RSA 4096-bit for code signing, ECC P-256 supported)
  - Validity period: 1 year with auto-renewal
  - EKU: Client Authentication (1.3.6.1.5.5.7.3.2)
- Certificate enrollment tested and validated on minimum 3 devices per platform (total 15+ devices)

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-003 (SCEP), FR-007 (InTune)

**Testing**: Multi-platform enrollment validation with end-to-end certificate provisioning and authentication test (VPN or Wi-Fi 802.1X)

**Stakeholder**: Endpoint Manager, Infrastructure Manager

---

### FR-020: Role-Based Access Control (RBAC) - Hybrid Infrastructure

**Description**: Implement role-based access control (RBAC) for hybrid PKI management with least privilege principle, segregation of duties, and audit logging of privileged operations.

**Acceptance Criteria**:
- RBAC roles defined for hybrid PKI management:
  - **PKI Administrator (Cloud)**: Full access to cloud PKI service configuration, CA hierarchy management, certificate template creation, API key management, audit log access
  - **PKI Administrator (On-Premises)**: Full access to on-premises CA configuration, certificate template creation, CRL/OCSP configuration, backup/restore operations
  - **Certificate Approver**: Approve/deny certificate issuance requests for on-premises PKI manual workflows (production servers, code signing)
  - **Certificate Auditor**: Read-only access to certificate inventory, audit logs, compliance reports across hybrid infrastructure (no issuance or revocation permissions)
  - **Certificate Owner**: View own certificates, self-service renewal, self-service revocation with justification (limited to certificates where owner is subject or metadata owner field)
  - **Helpdesk**: View certificate inventory for troubleshooting, no issuance or revocation permissions (read-only)
- Azure AD security groups mapped to RBAC roles with Privileged Identity Management (PIM) for just-in-time access elevation
- On-premises PKI permissions enforced via Active Directory security groups with certificate template ACLs
- Privileged operations requiring dual approval:
  - Root CA private key access (offline root CA)
  - Certificate Policy OID creation/modification
  - CA hierarchy changes (subordinate CA issuance or revocation)
- Audit logging of privileged operations with SIEM integration (Sentinel, Splunk) for security monitoring and compliance

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-002 (On-Premises PKI), Azure AD

**Testing**: RBAC validation by testing each role's permissions (positive: allowed operations succeed, negative: unauthorized operations denied with audit log entry)

**Stakeholder**: Security Architect, Compliance Officer

---

### FR-021: Certificate Transparency and Compliance Reporting (Hybrid Infrastructure)

**Description**: Implement certificate transparency logging and automated compliance reporting across hybrid PKI infrastructure demonstrating adherence to organizational certificate policies and regulatory requirements for SOC 2, ISO 27001 audits.

**Acceptance Criteria**:
- Certificate transparency logs published for all issued certificates (cloud and on-premises) with minimum retention 7 years:
  - Log fields: Certificate serial number, subject name, issuer, validity period, issuance timestamp, certificate type/template, requestor identity
  - Log storage: Azure Log Analytics or equivalent with tamper-evident append-only logging
  - Log export capability: CSV, JSON for audit and forensic analysis
- Automated compliance reports generated monthly:
  - **Certificate Policy Compliance**: Percentage of certificates complying with organizational policy (approved templates, approved key sizes 2048-bit minimum, validity periods within policy limits)
  - **Expiration Risk Report**: Certificates expiring in next 30/60/90 days with owner identification and renewal status
  - **Revocation Report**: Certificates revoked in past month with revocation reason codes and requestor identity
  - **Certificate Issuance Volume**: Total certificates issued per month by type (device, user, server, code signing) and by source (cloud, on-premises)
  - **Approval Workflow Compliance**: On-premises certificate issuance showing approval/denial rates and average approval time
  - **RBAC Audit**: List of users with PKI administrative access and access review status
- SOC 2 control evidence package generated quarterly with pre-populated audit work papers:
  - CC6.1 (Logical Access): Certificate-based authentication implementation evidence
  - CC6.6 (Encryption): Certificate inventory showing encryption certificates (server auth, client auth) coverage
  - CC7.2 (Monitoring): Certificate expiration monitoring and alerting evidence
- Compliance dashboard displaying real-time compliance status with green/yellow/red indicators for each control area

**Priority**: MUST_HAVE

**Dependencies**: FR-010 (Inventory), FR-013 (Dashboard), FR-020 (RBAC)

**Testing**: Compliance report validation by comparing generated report against manually audited certificate inventory sample

**Stakeholder**: Compliance Officer, CISO

---

## Non-Functional Requirements

### NFR-P-001: Certificate Issuance Performance (Cloud PKI)

**Description**: Cloud PKI service must provide low-latency certificate issuance to support high-volume automated workflows without impacting user experience or deployment timelines.

**Acceptance Criteria**:
- SCEP certificate issuance (device enrollment via InTune): <60 seconds from device SCEP request to certificate installation (99th percentile)
- ACME certificate issuance (Kubernetes cert-manager): <30 seconds from ACME order to certificate issuance (99th percentile)
- API certificate issuance (REST API with CSR submission): <10 seconds from API request to certificate returned (99th percentile)
- OCSP response time: <500ms (99th percentile) to avoid authentication delays for certificate validation
- CRL download size optimized: <5 MB for cloud CA CRL with delta CRL support if total CRL exceeds 5 MB
- Performance SLA documented in vendor contract with penalties for non-compliance

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-011 (Revocation)

**Testing**: Performance load testing with 1,000 concurrent SCEP requests simulating device enrollment surge

**Stakeholder**: Endpoint Manager, DevOps Lead

---

### NFR-P-002: Certificate Issuance Performance (On-Premises PKI)

**Description**: On-premises PKI service must provide reasonable certificate issuance performance for manual approval workflows while prioritizing security review over speed.

**Acceptance Criteria**:
- Certificate request submission: <5 minutes from CSR submission to request appearing in approval queue
- Certificate approval workflow: Target <4 hours from submission to approval decision during business hours (manual approval by Certificate Approver role)
- Certificate issuance after approval: <5 minutes from approval to certificate issued and available for download
- Web enrollment portal response time: <2 seconds page load time for certificate request form submission
- On-premises CA availability during business hours: 99.5% uptime (scheduled maintenance windows excluded)

**Priority**: SHOULD_HAVE

**Dependencies**: FR-002 (On-Premises PKI), FR-008 (Certificate Templates with approval)

**Testing**: End-to-end workflow timing measurement from CSR submission to certificate download for production server certificate

**Stakeholder**: Infrastructure Manager, Application Security Lead

---

### NFR-S-001: Cryptographic Key Protection (Cloud PKI)

**Description**: Cloud PKI cryptographic keys must be protected using FIPS 140-2 Level 2 or higher Hardware Security Modules (HSMs) with organizational control over key management policies.

**Acceptance Criteria**:
- Cloud PKI service uses FIPS 140-2 Level 2 certified HSMs or higher (Level 3 preferred) for CA private key storage
- Root CA private key generated in HSM with key export prohibited (non-extractable)
- Issuing CA private keys generated in HSM with M-of-N key recovery (e.g., 3-of-5 key custodians required for key recovery)
- Certificate private keys for end-entity certificates generated in device TPM/Secure Enclave (client certificates) or cloud HSM (server certificates) and marked non-exportable
- HSM audit logging enabled with logs forwarded to organizational SIEM for security monitoring
- Vendor SOC 2 Type II report validated confirming HSM key management controls and access logging

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI)

**Testing**: Vendor SOC 2 report review and HSM certificate validation confirming FIPS 140-2 compliance

**Stakeholder**: Security Architect, CISO, Compliance Officer

---

### NFR-S-002: Cryptographic Key Protection (On-Premises PKI)

**Description**: On-premises PKI cryptographic keys must be protected using Trusted Platform Module (TPM) 2.0 for issuing CA with offline root CA air-gapped from network, with Hardware Security Module (HSM) as future upgrade path.

**Acceptance Criteria**:
- Root CA private key generated on air-gapped server with TPM 2.0, server powered off except for CRL signing (quarterly) and subordinate CA certificate issuance/renewal
- Issuing CA private key generated in TPM 2.0 with private key marked non-exportable
- Root CA server physical security: Locked server room with badge access logging, root CA server rack locked with dual-key access (two key custodians required)
- Certificate private keys for end-entity certificates generated on requesting system (server, workstation) with CSR submitted to CA (private key never transmitted)
- TPM attestation validation for Windows systems: Verify certificate private key generated in TPM via device health attestation
- Hardware Security Module (HSM) integration planned for Phase 2 (Year 2) with budget allocated for HSM procurement (Thales Luna, Entrust nShield)

**Priority**: MUST_HAVE

**Dependencies**: FR-002 (On-Premises PKI), Windows Server 2022 with TPM 2.0 support

**Testing**: TPM key generation validation by verifying certificate private key properties (non-exportable, TPM-backed) via certutil or PowerShell

**Stakeholder**: Security Architect, Infrastructure Manager

---

### NFR-S-003: Encryption in Transit and at Rest

**Description**: All certificate management communications and data storage must use encryption to protect confidentiality and integrity of certificates and private keys.

**Acceptance Criteria**:
- **Encryption in Transit**:
  - All cloud PKI API communications via HTTPS with TLS 1.2 minimum (TLS 1.3 preferred)
  - SCEP enrollment via HTTPS (cloud PKI) or IPsec/TLS (on-premises PKI)
  - Certificate enrollment web portal via HTTPS with HSTS enabled
  - CRL and OCSP distribution via HTTP acceptable (CRLs and OCSP responses are signed, confidentiality not required)
- **Encryption at Rest**:
  - Cloud PKI CA database encrypted using customer-managed key (CMK) in Azure Key Vault or AWS KMS with organization controlling key rotation policy
  - On-premises CA database encrypted using Windows EFS or BitLocker with TPM-backed encryption key
  - Certificate backups encrypted using AES-256 encryption with password or key-based protection
  - Private keys stored in TPM/HSM/Secure Enclave in encrypted form (hardware-backed encryption)

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), FR-002 (On-Premises PKI)

**Testing**: TLS configuration validation using SSL Labs or testssl.sh, encryption-at-rest validation by confirming BitLocker/EFS status on on-premises CA

**Stakeholder**: Security Architect, Compliance Officer

---

### NFR-S-004: Authentication and Authorization (Zero Trust)

**Description**: All access to PKI management interfaces (cloud portal, on-premises web enrollment, APIs) must require strong authentication with multi-factor authentication (MFA) and enforce least privilege access controls.

**Acceptance Criteria**:
- Cloud PKI management portal: Azure AD single sign-on with MFA required for all administrators (no MFA bypass)
- On-premises CA web enrollment: Windows Integrated Authentication (Kerberos) with MFA step-up for certificate issuance (Azure AD Conditional Access policy)
- API authentication: OAuth 2.0 client credentials flow or API key with Azure AD service principal (no shared API keys across teams)
- Certificate approval workflow: Approvers must authenticate with MFA before approving high-risk certificate requests (code signing, production servers)
- Session timeouts: 15-minute idle timeout for administrative sessions, 60-minute maximum session duration for PKI administrators
- Privileged access managed via Azure AD Privileged Identity Management (PIM) with just-in-time elevation and approval workflow

**Priority**: MUST_HAVE

**Dependencies**: FR-020 (RBAC), Azure AD Premium P2 for PIM

**Testing**: Authentication testing with MFA requirement validation and session timeout verification

**Stakeholder**: Security Architect, Identity & Access Manager

---

### NFR-S-005: Audit Logging and Security Monitoring (Hybrid Infrastructure)

**Description**: Comprehensive audit logging of all PKI operations across hybrid infrastructure with SIEM integration for security monitoring, threat detection, and compliance evidence.

**Acceptance Criteria**:
- Audit logs captured for all PKI operations:
  - Certificate lifecycle events: Issuance (who, what, when), renewal, revocation (reason code), expiration
  - Administrative operations: Template creation/modification, CA configuration changes, RBAC changes, approval workflow modifications
  - Authentication events: Administrator login/logout, failed authentication attempts, MFA bypass attempts
  - API operations: API key usage, certificate requests via API, rate limit violations
- Audit log fields (minimum): Timestamp (ISO 8601 with timezone), Actor (user/service principal identity), Action (verb describing operation), Resource (certificate subject or configuration object), Result (success/failure), Source IP address, User agent
- Audit log retention: 7 years for compliance requirements (SOC 2, ISO 27001, PCI-DSS)
- SIEM integration: Audit logs forwarded in real-time to organizational SIEM (Microsoft Sentinel, Splunk, QRadar) via syslog or API
- Security alerting: SIEM correlation rules configured for suspicious activity:
  - Multiple failed authentication attempts (potential brute force)
  - Certificate issuance outside business hours (potential unauthorized issuance)
  - Mass certificate revocation (potential security incident or ransomware)
  - Privileged operation without PIM approval (potential privilege abuse)
- Audit log integrity: Logs stored in append-only storage (Azure Log Analytics, CloudTrail) with tamper detection

**Priority**: MUST_HAVE

**Dependencies**: FR-020 (RBAC), FR-021 (Transparency), SIEM system

**Testing**: Audit log validation by performing test operations (certificate issuance, revocation, RBAC change) and verifying log entries in SIEM with all required fields

**Stakeholder**: Security Architect, Compliance Officer

---

### NFR-A-001: Service Availability (Cloud PKI)

**Description**: Cloud PKI service must provide high availability to ensure certificate issuance and validation services are available for business operations with minimal downtime.

**Acceptance Criteria**:
- **Year 1 (Single-Region)**: 99.9% uptime SLA (8.76 hours downtime per year allowable)
- **Year 2+ (Multi-Region)**: 99.99% uptime SLA (52.56 minutes downtime per year allowable)
- Multi-region deployment (Year 2): Primary region (US East or EU West based on data residency), secondary region (geographic redundancy), automatic failover within 5 minutes of primary region failure
- Certificate validation services (OCSP, CRL distribution) remain available during CA maintenance windows through caching and redundancy
- Scheduled maintenance windows: Maximum 4 hours per month during off-peak hours (Saturday 2-6 AM local time) with 7-day advance notification
- Vendor SLA documented in contract with financial penalties for SLA violations (service credits)

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI with multi-region Year 2), vendor SLA commitment

**Testing**: Availability testing by monitoring uptime during pilot phase and validating vendor SLA reporting

**Stakeholder**: CISO, Infrastructure Manager

**Stakeholder Goals Addressed**:
- **Conflict Resolution (C-1)**: Single-region Year 1 (CFO cost optimization), multi-region Year 2 (CISO high availability) - phased approach satisfies both stakeholders after ROI validation

---

### NFR-A-002: Service Availability (On-Premises PKI)

**Description**: On-premises PKI service must provide reasonable availability for certificate issuance with documented backup and disaster recovery procedures.

**Acceptance Criteria**:
- **Issuing CA Availability**: 99.5% uptime target (43.8 hours downtime per year allowable) with availability during business hours prioritized
- Scheduled maintenance windows: Maximum 4 hours per quarter for Windows Server patching and CA configuration changes with 14-day advance notification
- High availability considerations (Year 2 optional enhancement):
  - Standby issuing CA server for failover (Windows Server Failover Clustering or manual failover procedure)
  - Load-balanced OCSP responders (2 servers) for certificate validation redundancy
- Disaster recovery procedures documented:
  - CA database backup: Daily automated backup to Azure Blob Storage with 7-year retention
  - CA configuration backup: Automated backup of CA registry settings and certificate templates weekly
  - Recovery time objective (RTO): 4 hours from disaster declaration to CA operational
  - Recovery point objective (RPO): 24 hours (daily backup, up to 24 hours of certificate issuance logs may be lost in catastrophic failure)
- Root CA availability not critical (powered off except quarterly CRL signing, acceptable to be offline for months)

**Priority**: MUST_HAVE

**Dependencies**: FR-002 (On-Premises PKI), Azure Blob Storage for backups

**Testing**: Disaster recovery test annually with CA restore from backup and validation of certificate issuance capability

**Stakeholder**: Infrastructure Manager, CISO

---

### NFR-SC-001: Scalability (Cloud PKI)

**Description**: Cloud PKI service must scale automatically to handle increasing certificate issuance volume as organization grows and adopts Zero Trust authentication, supporting projected 3x growth over 3 years.

**Acceptance Criteria**:
- Current certificate volume (baseline): 1,000 active certificates (devices, users, servers)
- Year 1 projected volume: 5,000 certificates (Windows 11 migration, InTune enrollment, Wi-Fi 802.1X rollout)
- Year 3 projected volume: 15,000 certificates (organization growth, contractor devices, IoT device certificates)
- Cloud PKI auto-scaling: No manual intervention required for capacity planning, vendor infrastructure scales automatically
- Certificate issuance performance maintained during scale: <60 seconds SCEP issuance regardless of total certificate population (NFR-P-001 maintained at 15,000 certificates)
- Pricing model scales linearly: Per-certificate pricing with volume discounts (>5,000 certificates: 10% discount, >10,000 certificates: 20% discount)

**Priority**: MUST_HAVE

**Dependencies**: FR-001 (Cloud PKI), vendor auto-scaling capability

**Testing**: Scalability testing not feasible during implementation; rely on vendor SOC 2 report confirming auto-scaling capability and performance testing results

**Stakeholder**: Infrastructure Manager, CFO (cost scaling)

---

### NFR-SC-002: Scalability (On-Premises PKI)

**Description**: On-premises PKI infrastructure must provide sufficient capacity for projected low-volume manual certificate issuance over 3-year horizon without requiring hardware upgrades.

**Acceptance Criteria**:
- Current certificate volume (on-premises): 100 production server certificates + 50 code signing certificates = 150 certificates
- Year 3 projected volume (on-premises): 500 production server certificates + 100 code signing certificates = 600 certificates (4x growth)
- On-premises CA server capacity: 4 vCPU, 8 GB RAM, 100 GB storage sufficient for 1,000+ certificates (2x headroom beyond projection)
- CA database growth projection: ~10 KB per certificate × 1,000 certificates = 10 MB (negligible storage impact)
- Manual approval workflow capacity: Certificate Approver role can handle up to 20 certificate requests per week (current: ~5 per week, projected: ~12 per week)
- Capacity monitoring: Monthly review of CA server resource utilization (CPU, memory, disk) with alerts if utilization exceeds 70%

**Priority**: SHOULD_HAVE

**Dependencies**: FR-002 (On-Premises PKI), virtual infrastructure capacity

**Testing**: Load testing not required for on-premises PKI; capacity validation based on vendor documentation (Microsoft CA scalability guidance)

**Stakeholder**: Infrastructure Manager

---

### NFR-C-001: Regulatory Compliance (SOC 2, ISO 27001, PCI-DSS)

**Description**: Hybrid PKI solution must meet regulatory compliance requirements for cryptographic key management and access controls supporting organizational certifications (SOC 2 Type II, ISO 27001, PCI-DSS where applicable).

**Acceptance Criteria**:
- **SOC 2 Type II Compliance**:
  - CC6.1 (Logical Access): Certificate-based authentication implemented for VPN and Wi-Fi reducing reliance on passwords
  - CC6.6 (Encryption): Certificate inventory demonstrates encryption certificate coverage for data in transit (server auth certificates, client auth certificates)
  - CC6.7 (Encryption Keys): CA private keys protected in FIPS 140-2 HSM (cloud) or TPM 2.0 (on-premises) with access logging
  - CC7.2 (Monitoring): Certificate expiration monitoring and alerting implemented with evidence of operational effectiveness
  - Vendor SOC 2 Type II report obtained for cloud PKI vendor with clean opinion (no exceptions or qualifications)
- **ISO 27001 Compliance**:
  - A.9.4.3 (Password Management System): Certificate-based authentication reduces password usage for privileged access
  - A.10.1.1 (Cryptographic Controls): Certificate policy documented defining approved algorithms (RSA 2048-bit minimum, ECC P-256, SHA-256 hashing)
  - A.10.1.2 (Key Management): CA key lifecycle documented (generation in HSM, storage, backup, rotation, destruction)
  - A.12.3.1 (Information Backup): CA database backup procedures documented and tested (NFR-A-002)
- **PCI-DSS Compliance (if applicable)**:
  - Requirement 4.1: Strong cryptography for cardholder data transmission - server auth certificates for payment gateway TLS
  - Requirement 8.3: Multi-factor authentication for remote access - certificate-based VPN auth as second factor
- Compliance evidence package: Quarterly reports (FR-021) generated for auditors demonstrating control effectiveness

**Priority**: MUST_HAVE

**Dependencies**: FR-021 (Compliance Reporting), NFR-S-001/NFR-S-002 (Cryptographic Key Protection)

**Testing**: Compliance validation by engaging external auditor for pre-audit assessment (mock audit)

**Stakeholder**: Compliance Officer, CISO

---

### NFR-C-002: Data Residency and Sovereignty

**Description**: Hybrid PKI solution must comply with data residency requirements ensuring certificate data and cryptographic keys for sensitive workloads remain within organizational jurisdiction.

**Acceptance Criteria**:
- **Cloud PKI Data Residency**:
  - Cloud PKI service deployed in geographic region aligned with organizational data residency policy (US or EU region selection)
  - Certificate data storage location documented and validated via vendor data processing agreement (DPA)
  - Certificate private keys for cloud-issued certificates generated and stored within selected region (no cross-region key replication)
  - Vendor data processing agreement (DPA) confirms no subprocessors access certificate data outside designated region
- **On-Premises PKI Data Sovereignty**:
  - On-premises CA infrastructure hosted in organizational datacenter ensuring full data sovereignty
  - Certificate private keys for production servers and code signing never transmitted outside organizational infrastructure perimeter
  - On-premises CA satisfies regulatory requirements for government/defense workloads requiring on-premises key storage (ITAR, CUI, OFFICIAL-SENSITIVE)
- Data residency compliance documented for audit purposes with vendor attestations and architectural diagrams

**Priority**: SHOULD_HAVE (MUST_HAVE for organizations with strict data residency requirements)

**Dependencies**: FR-001 (Cloud PKI with region selection), FR-002 (On-Premises PKI)

**Testing**: Data residency validation through vendor DPA review and architectural confirmation during solution design

**Stakeholder**: Compliance Officer, Security Architect

---

### NFR-M-001: Manageability and Operations

**Description**: Hybrid PKI solution must provide operational manageability with unified visibility, alerting, and reporting across cloud and on-premises infrastructure reducing operational burden.

**Acceptance Criteria**:
- Unified certificate management dashboard (FR-013) providing single pane of glass for certificate inventory, expiration tracking, compliance status across both cloud and on-premises certificates
- Operational runbooks documented for common tasks:
  - Certificate issuance troubleshooting (SCEP failures, approval workflow delays)
  - Certificate revocation procedures (emergency revocation for security incidents)
  - CA disaster recovery (restore from backup, failover procedures)
  - OCSP responder troubleshooting (performance degradation, outage response)
- Operational metrics tracked and reported monthly:
  - Certificate issuance volume (total, by type, by source)
  - Certificate renewal success rate (automated vs. manual)
  - OCSP/CRL availability and performance
  - Helpdesk ticket volume related to certificate issues
- Integration with IT Service Management (ITSM) system: Certificate expiration alerts create ServiceNow tickets for Infrastructure team with priority based on certificate criticality
- Administrator training provided: 2-day training for PKI Administrators and Certificate Approvers covering cloud and on-premises PKI management

**Priority**: MUST_HAVE

**Dependencies**: FR-013 (Dashboard), FR-012 (Alerting), ServiceNow or equivalent ITSM system

**Testing**: Operational validation by Infrastructure team during pilot phase with feedback on manageability and usability

**Stakeholder**: Infrastructure Manager, Helpdesk Manager

---

### NFR-M-002: Monitoring and Observability

**Description**: Hybrid PKI solution must provide comprehensive monitoring and observability enabling proactive issue detection and rapid troubleshooting.

**Acceptance Criteria**:
- PKI service health monitoring with alerts for operational issues:
  - **Cloud PKI**: API availability monitoring (synthetic transactions every 5 minutes), OCSP response time monitoring, certificate issuance success rate
  - **On-Premises PKI**: CA service running status (Windows Service monitoring), web enrollment portal availability (HTTP health check), CRL publication freshness
- Certificate lifecycle monitoring:
  - Expiration tracking with alerts at 60/30/14/7 days before expiry (FR-012)
  - Renewal success rate tracking with alerts for renewal failures
  - Certificate inventory drift detection (shadow IT certificates discovered via scanning)
- Performance monitoring:
  - OCSP response time percentiles (p50, p95, p99) with alert if p99 > 1 second
  - Certificate issuance latency tracking (SCEP, ACME, API) with trend analysis
- Integration with monitoring platform: Prometheus/Grafana dashboards for PKI metrics, Azure Monitor integration for cloud PKI, Nagios/PRTG monitoring for on-premises PKI
- Incident response: Automated PagerDuty or Opsgenie incident creation for P1 alerts (CA unavailable, OCSP complete failure)

**Priority**: MUST_HAVE

**Dependencies**: FR-012 (Alerting), Monitoring platform (Prometheus, Azure Monitor, Nagios)

**Testing**: Monitoring validation by simulating failure scenarios (stop CA service, delay CRL publication) and verifying alert delivery

**Stakeholder**: Infrastructure Manager, Security Architect

---

## Data Requirements

### DR-001: Certificate Entity

**Description**: Certificate data structure representing issued X.509 digital certificates across hybrid PKI infrastructure.

**Attributes**:
- **Certificate ID** (Primary Key): UUID uniquely identifying certificate in inventory system
- **Serial Number**: Certificate serial number (hex string, unique within issuing CA)
- **Subject Distinguished Name (DN)**: X.500 DN (CN, O, OU, L, ST, C fields)
- **Subject Alternative Names (SANs)**: DNS names, email addresses, UPNs, IP addresses
- **Issuer Distinguished Name**: DN of issuing CA (cloud PKI CA or on-premises CA)
- **Validity Period**: Not Before and Not After timestamps (ISO 8601 UTC)
- **Certificate Source**: ENUM (Cloud_PKI, OnPremises_PKI, ThirdParty_CA)
- **Certificate Type**: ENUM (Device_Auth, User_Auth, Server_Auth, Code_Signing, WiFi_8021X, VPN_Client)
- **Certificate Template**: Template name used for issuance (e.g., "DeviceAuth-Cloud", "ServerAuth-OnPrem")
- **Key Usage**: Bit flags (Digital Signature, Key Encipherment, etc.)
- **Extended Key Usage (EKU)**: OID list (1.3.6.1.5.5.7.3.2 Client Auth, 1.3.6.1.5.5.7.3.1 Server Auth, etc.)
- **Public Key Algorithm**: ENUM (RSA_2048, RSA_4096, ECC_P256, ECC_P384)
- **Certificate Status**: ENUM (Valid, Expired, Revoked, Pending_Issuance)
- **Revocation Timestamp**: Timestamp of revocation (if revoked)
- **Revocation Reason**: ENUM (Key_Compromise, CA_Compromise, Affiliation_Changed, Superseded, Cessation_Of_Operation)
- **Certificate Owner**: User or service account identity (Azure AD Object ID or Active Directory SID)
- **Certificate Location**: ENUM (Device_TPM, Server_CertStore, KeyVault, HSM, User_Keychain)
- **Device/Server Name**: Hostname or device name where certificate installed
- **Discovery Timestamp**: Timestamp when certificate discovered/added to inventory
- **Last Seen Timestamp**: Timestamp of most recent discovery scan observing certificate
- **Metadata**: JSON field for extensibility (custom attributes, business justification, approval details)

**Relationships**:
- Certificate → Certificate Template (Many-to-One)
- Certificate → Certificate Owner (User/Service Account) (Many-to-One)
- Certificate → Issuing CA (Many-to-One)

**Data Retention**: 7 years after certificate expiration for audit and compliance

**Privacy/Security**: Certificate subject names may contain PII (user names, email addresses) - GDPR Article 6(1)(f) legitimate interest applies (security operations)

**Data Volume**: Current: 1,000 certificates, Year 1: 5,000 certificates, Year 3: 15,000 certificates

---

### DR-002: Certificate Template Entity

**Description**: Certificate template definitions specifying certificate properties, issuance policies, and approval workflows for standardized certificate types.

**Attributes**:
- **Template ID** (Primary Key): UUID uniquely identifying template
- **Template Name**: Human-readable name (e.g., "Device Authentication - Cloud PKI")
- **Template Description**: Detailed description of template purpose and use cases
- **Certificate Type**: ENUM (Device_Auth, User_Auth, Server_Auth, Code_Signing, WiFi_8021X, VPN_Client)
- **Issuing CA**: ENUM (Cloud_PKI, OnPremises_PKI) - which CA issues certificates from this template
- **Subject Name Format**: Template string (e.g., "CN={{DeviceName}}, O=Example Corp")
- **SAN Format**: Template string for Subject Alternative Names
- **Key Usage**: Bit flags defining allowed key usage
- **Extended Key Usage (EKU)**: OID list defining certificate purpose
- **Key Size Minimum**: Integer (2048 or 4096 for RSA)
- **Validity Period Days**: Integer (365 for 1 year, 730 for 2 years)
- **Auto-Renewal Enabled**: Boolean (true for cloud-issued, false for on-premises manual)
- **Approval Required**: Boolean (false for cloud automated, true for on-premises manual)
- **Approver Group**: Active Directory or Azure AD security group authorized to approve (if approval required)
- **Certificate Policy OID**: OID identifying certificate policy (e.g., 1.2.3.4.5.6.7 for organizational policy)
- **Created Date**: Timestamp of template creation
- **Modified Date**: Timestamp of last template modification
- **Status**: ENUM (Active, Deprecated, Retired)

**Relationships**:
- Certificate Template → Certificates (One-to-Many)
- Certificate Template → Approver Group (Many-to-One)

**Data Retention**: Indefinite (archived when retired)

**Data Volume**: ~20 templates (10 cloud, 10 on-premises)

---

### DR-003: Audit Log Entity

**Description**: Immutable audit log records tracking all PKI operations for security monitoring, compliance evidence, and forensic investigation.

**Attributes**:
- **Log ID** (Primary Key): UUID uniquely identifying log entry
- **Timestamp**: ISO 8601 UTC timestamp with millisecond precision
- **Event Type**: ENUM (Certificate_Issued, Certificate_Renewed, Certificate_Revoked, Certificate_Approved, Certificate_Denied, Template_Created, Template_Modified, RBAC_Changed, Authentication_Success, Authentication_Failure, API_Request)
- **Actor**: Identity performing operation (Azure AD User Object ID, Service Principal, API Key ID)
- **Actor Display Name**: Human-readable name (for readability)
- **Resource Type**: ENUM (Certificate, Template, CA_Configuration, API_Key, User_Role)
- **Resource ID**: UUID of affected resource (Certificate ID, Template ID, etc.)
- **Resource Name**: Human-readable resource identifier (certificate subject name, template name)
- **Action Result**: ENUM (Success, Failure, Partial_Success)
- **Failure Reason**: Text description of failure (if result = Failure)
- **Source IP Address**: IPv4 or IPv6 address of request origin
- **User Agent**: HTTP User-Agent header (for API/web requests)
- **Session ID**: Session identifier for correlation of related operations
- **Additional Details**: JSON field containing operation-specific details (e.g., revocation reason code, approval justification)

**Relationships**:
- Audit Log → Certificate (Many-to-One, optional if operation not certificate-specific)
- Audit Log → Certificate Template (Many-to-One, optional)
- Audit Log → Actor (User/Service Principal) (Many-to-One)

**Data Retention**: 7 years for compliance (SOC 2, ISO 27001, PCI-DSS)

**Data Volume**: Projected 50,000 log entries per month (Year 1), 150,000 log entries per month (Year 3) based on certificate issuance volume and administrative operations

**Privacy/Security**: Audit logs contain PII (actor names, IP addresses) - GDPR Article 6(1)(f) legitimate interest applies (security operations and audit requirements)

---

### DR-004: Certificate Revocation List (CRL) Entity

**Description**: Certificate Revocation List data structure tracking revoked certificates published by cloud and on-premises PKI.

**Attributes**:
- **CRL ID** (Primary Key): UUID uniquely identifying CRL
- **Issuing CA**: Distinguished Name of CA issuing CRL
- **CRL Number**: Integer sequence number incremented with each CRL publication
- **This Update**: Timestamp of current CRL publication (ISO 8601 UTC)
- **Next Update**: Timestamp of next scheduled CRL publication
- **CRL Distribution Point (CDP) URL**: HTTP URL where CRL is published
- **CRL Size Bytes**: Integer size of CRL file in bytes
- **Revoked Certificates Count**: Integer count of revoked certificates in this CRL
- **Revoked Certificate Entries**: Array of {Serial_Number, Revocation_Timestamp, Revocation_Reason}
- **CRL Signature Algorithm**: ENUM (SHA256withRSA, SHA384withRSA)
- **CRL Version**: Integer (typically 2 for X.509v2 CRLs)

**Relationships**:
- CRL → Issuing CA (Many-to-One)
- CRL → Revoked Certificates (One-to-Many)

**Data Retention**: Current CRL + previous 2 CRLs retained online (72 hours for cloud, 3 hours for on-premises), historical CRLs archived for 7 years

**Data Volume**: Cloud PKI CRL: ~5 MB (5,000 certificates × 0.1% revocation rate = 5 revoked certificates, but CRL includes expired certificates for 7 days), On-Premises PKI CRL: <1 MB

---

## Integration Requirements

### INT-001: Azure Active Directory (Azure AD) Integration

**Description**: Integrate hybrid PKI with Azure Active Directory for user and device identity verification, certificate subject name population, and Conditional Access enforcement.

**Integration Type**: Cloud-to-Cloud (Azure AD ↔ Cloud PKI), On-Premises-to-Cloud (On-Premises PKI ↔ Azure AD)

**Protocols/APIs**: Microsoft Graph API (RESTful, OAuth 2.0 authentication)

**Data Exchange**:
- Cloud PKI → Azure AD: Query user attributes (DisplayName, Mail, UserPrincipalName) for certificate subject name population
- Cloud PKI → Azure AD: Query device attributes (DeviceName, AzureADDeviceId) for device certificate issuance
- Azure AD → Cloud PKI: Certificate-based authentication events (CBA login validation)

**Authentication Method**: OAuth 2.0 client credentials flow with Azure AD application registration and Microsoft Graph API permissions (User.Read.All, Device.Read.All)

**Frequency**: Real-time API calls during certificate issuance (on-demand)

**SLA/Performance**: Azure AD Graph API calls <500ms response time

**Error Handling**: Certificate issuance fails gracefully if Azure AD unavailable with alerting to Infrastructure team

**Security**: TLS 1.2+ encryption, Azure AD application client secret stored in Azure Key Vault, least privilege API permissions

**Dependencies**: Azure AD Premium P1, Microsoft Graph API availability, Cloud PKI vendor supports Azure AD integration

**Testing**: Integration testing with certificate issuance for 10 test users/devices validating subject name populated from Azure AD attributes

**Stakeholder**: Identity & Access Manager, Security Architect

---

### INT-002: Microsoft InTune (Endpoint Manager) Integration

**Description**: Integrate cloud PKI SCEP endpoint with Microsoft InTune for automated device certificate provisioning during device enrollment and lifecycle management.

**Integration Type**: Cloud-to-Cloud (InTune ↔ Cloud PKI SCEP endpoint)

**Protocols/APIs**: SCEP (RFC 8894) over HTTPS

**Data Exchange**:
- InTune → Cloud PKI: SCEP GetCACert request (retrieve CA certificate chain)
- InTune → Cloud PKI: SCEP PKIOperation request (submit CSR, retrieve issued certificate)
- Cloud PKI → InTune: SCEP challenge validation response, issued certificate

**Authentication Method**: SCEP challenge-response (InTune provides challenge password, Cloud PKI validates challenge)

**Frequency**: Real-time during device enrollment and certificate renewal (on-demand)

**SLA/Performance**: SCEP certificate issuance <60 seconds (NFR-P-001)

**Error Handling**: InTune retries SCEP enrollment on failure (exponential backoff), InTune logs SCEP failures for troubleshooting

**Security**: SCEP over HTTPS (TLS 1.2+), challenge password one-time use, certificate private key generated on device (never transmitted)

**Dependencies**: Microsoft InTune license, Cloud PKI SCEP endpoint (FR-003), InTune SCEP certificate profile configured

**Testing**: End-to-end device enrollment testing with automated certificate provisioning on Windows, macOS, iOS, Android devices

**Stakeholder**: Endpoint Manager, Identity & Access Manager

---

### INT-003: Kubernetes cert-manager Integration (ACME)

**Description**: Integrate cloud PKI ACME endpoint with Kubernetes cert-manager for automated certificate issuance and renewal for Kubernetes ingress controllers and internal services.

**Integration Type**: Cloud-to-Cloud (Kubernetes cert-manager ↔ Cloud PKI ACME endpoint)

**Protocols/APIs**: ACME (RFC 8555) over HTTPS

**Data Exchange**:
- cert-manager → Cloud PKI: ACME directory discovery (retrieve ACME endpoints)
- cert-manager → Cloud PKI: ACME account registration, certificate order, challenge validation, certificate retrieval
- Cloud PKI → cert-manager: ACME challenge, issued certificate

**Authentication Method**: ACME account private key (JWS signature), HTTP-01 or DNS-01 challenge validation

**Frequency**: Real-time during certificate request and renewal (on-demand), renewal triggered 30 days before expiry

**SLA/Performance**: ACME certificate issuance <30 seconds (NFR-P-001)

**Error Handling**: cert-manager retries ACME operations on failure (exponential backoff), cert-manager logs ACME errors to Kubernetes events

**Security**: ACME over HTTPS (TLS 1.2+), challenge validation ensures requester controls DNS/HTTP resource

**Dependencies**: Kubernetes cluster, cert-manager deployment, Cloud PKI ACME endpoint (FR-004)

**Testing**: ACME certificate issuance for test ingress controller with automatic renewal validation after 35 days (create certificate with short validity for testing)

**Stakeholder**: DevOps Lead, Security Architect

---

### INT-004: VPN Gateway Integration (Certificate-Based Authentication)

**Description**: Integrate cloud-issued device certificates with VPN gateway infrastructure (Cisco AnyConnect, Palo Alto GlobalProtect, Fortinet FortiClient) for certificate-based authentication replacing username/password.

**Integration Type**: Hybrid (Cloud PKI-issued certificates → On-Premises VPN Gateway)

**Protocols/APIs**: IKEv2/IPsec with certificate-based authentication, TLS with client certificate authentication

**Data Exchange**:
- VPN Gateway → Cloud PKI: Certificate validation via OCSP or CRL (verify certificate not revoked)
- VPN Gateway ← User Device: Client certificate presented during IKEv2/TLS handshake

**Authentication Method**: X.509 client certificate authentication, OCSP or CRL validation

**Frequency**: Real-time during VPN connection establishment (on-demand)

**SLA/Performance**: OCSP response <500ms to avoid VPN connection delays (NFR-P-001)

**Error Handling**: VPN connection denied if certificate invalid/revoked/expired with error message to user

**Security**: IKEv2/IPsec or TLS 1.2+ encryption, certificate private key stored in device TPM (non-exportable), OCSP responder high availability

**Dependencies**: VPN gateway infrastructure, Cloud PKI-issued device certificates (FR-003), OCSP responder (FR-011), VPN gateway supports client certificate authentication

**Testing**: VPN connection testing from 3 device types (Windows, macOS, iOS) with validation of certificate-based authentication and Conditional Access enforcement

**Stakeholder**: Network Security Engineer, Identity & Access Manager

---

### INT-005: Wi-Fi RADIUS Server Integration (802.1X Certificate Authentication)

**Description**: Integrate cloud-issued device certificates with RADIUS server (Microsoft NPS, Cisco ISE, Aruba ClearPass) for Wi-Fi 802.1X EAP-TLS authentication.

**Integration Type**: Hybrid (Cloud PKI-issued certificates → On-Premises RADIUS Server)

**Protocols/APIs**: RADIUS (RFC 2865), EAP-TLS (RFC 5216)

**Data Exchange**:
- RADIUS Server → Cloud PKI: Certificate validation via OCSP or CRL (verify certificate not revoked)
- RADIUS Server ← User Device: Client certificate presented during EAP-TLS handshake
- RADIUS Server → Active Directory: Certificate subject CN lookup for user/device identity verification

**Authentication Method**: EAP-TLS with X.509 client certificate, RADIUS server validates certificate chain and revocation status

**Frequency**: Real-time during Wi-Fi connection (on-demand), re-authentication every 8 hours (typical 802.1X re-auth interval)

**SLA/Performance**: RADIUS authentication <2 seconds total (EAP-TLS handshake + OCSP validation + AD lookup)

**Error Handling**: Wi-Fi connection denied if certificate invalid/revoked/expired, device placed in quarantine VLAN if certificate validation fails

**Security**: EAP-TLS provides mutual authentication (client and server), WPA3-Enterprise or WPA2-Enterprise with AES encryption, certificate private key in device TPM

**Dependencies**: RADIUS server infrastructure, Cloud PKI-issued device certificates (FR-003), OCSP responder (FR-011), Wi-Fi infrastructure supports 802.1X

**Testing**: Wi-Fi 802.1X authentication testing from 3 device types (Windows, macOS, mobile) with validation of EAP-TLS handshake and VLAN assignment

**Stakeholder**: Network Security Engineer, Endpoint Manager

---

### INT-006: Security Information and Event Management (SIEM) Integration

**Description**: Integrate hybrid PKI audit logs with organizational SIEM system (Microsoft Sentinel, Splunk, QRadar) for security monitoring, threat detection, and compliance reporting.

**Integration Type**: Hybrid (Cloud PKI + On-Premises PKI → SIEM)

**Protocols/APIs**:
- Cloud PKI: Azure Log Analytics API, Webhook, or Azure Event Hub
- On-Premises PKI: Syslog (RFC 5424) or Windows Event Forwarding (WEF)

**Data Exchange**:
- Cloud PKI → SIEM: Audit logs (certificate lifecycle events, administrative operations, authentication events) forwarded in real-time
- On-Premises PKI → SIEM: Windows Event Log entries for CA operations forwarded via syslog or WEF

**Authentication Method**:
- Cloud PKI: Azure AD service principal with Log Analytics Reader role
- On-Premises PKI: Syslog over TLS with certificate-based authentication

**Frequency**: Real-time log forwarding (streaming), maximum 5-minute delay from event to SIEM ingestion

**SLA/Performance**: Log ingestion throughput: 1,000 events per minute minimum

**Error Handling**: Log buffering on source system if SIEM unavailable (24-hour buffer), alert if log forwarding fails for >15 minutes

**Security**: TLS 1.2+ encryption for log transport, log integrity protection (signed logs or tamper-evident storage), SIEM RBAC for audit log access

**Dependencies**: SIEM system (Sentinel, Splunk, QRadar), Cloud PKI audit logging (FR-021, NFR-S-005), On-Premises CA audit logging

**Testing**: SIEM integration testing by performing test PKI operations and validating log entries appear in SIEM within 5 minutes with correct field mapping

**Stakeholder**: Security Architect, Compliance Officer

---

### INT-007: Certificate Inventory Discovery Agent Integration

**Description**: Integrate automated certificate discovery agents with certificate inventory database (FR-010) for scanning servers, workstations, cloud key vaults, and network appliances to discover certificates.

**Integration Type**: Hybrid (Discovery Agents → Certificate Inventory Database)

**Protocols/APIs**:
- Windows/Linux servers: PowerShell Remoting (WinRM), SSH, Local certificate store APIs
- Cloud key vaults: Azure Key Vault REST API, AWS Secrets Manager API
- Network appliances: SSH, vendor-specific APIs (F5 iControl API, Palo Alto REST API)

**Data Exchange**:
- Discovery Agent → Target System: Query certificate stores, retrieve certificate details (subject, issuer, serial number, expiry, thumbprint)
- Discovery Agent → Certificate Inventory Database: Insert/update certificate records with discovered certificates

**Authentication Method**:
- Windows: Active Directory service account with read-only access to certificate stores
- Linux: SSH key-based authentication with read-only access
- Cloud: Azure Managed Identity or AWS IAM role with read-only key vault permissions
- Network appliances: API keys or SSH keys with read-only access

**Frequency**: Daily scheduled scan (overnight during off-peak hours), on-demand scan capability

**SLA/Performance**: Complete discovery scan of 1,000 endpoints within 2 hours

**Error Handling**: Discovery failures logged with alert if >10% of endpoints fail to scan (potential credential issue or network connectivity problem)

**Security**: Discovery agent credentials stored in secrets vault (Azure Key Vault, CyberArk), least privilege access (read-only), TLS/SSH encryption for communication

**Dependencies**: Certificate Inventory Database (FR-010), target systems allow remote certificate store queries, discovery agent infrastructure (servers or Azure Functions)

**Testing**: Discovery agent testing by deploying test certificates on 10 systems (Windows, Linux, Azure Key Vault, F5) and verifying inventory database updated within 24 hours

**Stakeholder**: Infrastructure Manager, Security Architect

---

## Requirement Conflicts & Resolutions

### Conflict C-1: Cost Optimization (CFO) vs. High Availability (CISO)

**Conflicting Requirements**:
- **BR-005 (Cost Optimization)**: CFO wants single-region deployment Year 1 ($120K/year) to minimize cloud subscription costs and demonstrate ROI before committing to higher spend
- **BR-007 (Business Continuity)**: CISO wants multi-region deployment Year 1 ($180K/year) for 99.99% availability SLA and eliminate single point of failure
- **Cost Delta**: $60K/year difference between single-region and multi-region cloud PKI

**Stakeholders Involved**:
- **CFO (Budget Authority)**: Cost pressure from board to reduce IT spending, skeptical of cloud OpEx model, wants proof of ROI before incremental investment
- **CISO (Executive Sponsor)**: Risk averse due to past certificate outages impacting business, accountable to board for operational resilience, reputation on the line

**Trade-off Analysis**:

| Option | Cost Year 1 | Availability Year 1 | CFO Satisfaction | CISO Satisfaction | Risk |
|--------|-------------|---------------------|------------------|-------------------|------|
| **Option A: Single-region Year 1** | $120K | 99.9% (8.76 hrs downtime/year) | HIGH ✓ | LOW ✗ | MEDIUM (cloud region outage = PKI unavailable) |
| **Option B: Multi-region Year 1** | $180K | 99.99% (52 min downtime/year) | LOW ✗ | HIGH ✓ | LOW (automatic failover) |
| **Option C: COMPROMISE - Phased** | $120K Y1, $180K Y2+ | 99.9% Y1 → 99.99% Y2+ | MEDIUM ✓ | MEDIUM ✓ | MEDIUM Y1, LOW Y2+ |

**Resolution Strategy**: **COMPROMISE with PHASED APPROACH** (Option C selected)

**Decision**:
1. **Year 1 (Months 1-12)**: Single-region cloud PKI deployment ($120K/year subscription)
   - Satisfies CFO cost optimization and ROI validation requirement
   - Acceptable to CISO given legacy on-premises CA available as backup during Year 1
   - 99.9% availability acceptable during migration period (lower risk than steady-state operations)
2. **Year 2+ (Month 13 onwards)**: Multi-region cloud PKI deployment ($180K/year subscription)
   - Upgrades to 99.99% availability after ROI proven and budget validated
   - CISO requirement satisfied after demonstrating certificate automation value in Year 1
   - Budget increase justified by TCO savings realized ($720K over 3 years offsets incremental $60K/year)

**Modified Requirements**:
- **BR-001 (Hybrid PKI Architecture)**: Updated acceptance criteria to reflect single-region Year 1, multi-region Year 2
- **BR-007 (Business Continuity)**: Updated to phased availability SLA (99.9% Year 1, 99.99% Year 2+)
- **NFR-A-001 (Service Availability - Cloud)**: Updated SLA targets reflecting phased approach

**Contingency Plan**:
- If cloud region outage occurs in Year 1 causing business disruption >4 hours, accelerate multi-region deployment (emergency budget approval process)
- Legacy on-premises CA retained as backup for critical certificate types during Year 1 (fallback capability)

**Stakeholder Management**:
- **CFO**: Wins Year 1 cost savings ($60K), quarterly ROI reports demonstrate value, cost increase Year 2 justified by proven savings
- **CISO**: Loses immediate 99.99% availability but gains incremental improvement Year 2, mitigated by legacy CA backup Year 1

**Decision Authority**: Executive Steering Committee (CISO, CFO, CIO) - decision documented in project charter

---

### Conflict C-2: Automation (Infrastructure Manager) vs. Security Controls (Security Architect)

**Conflicting Requirements**:
- **BR-002 (Automated Lifecycle)**: Infrastructure Manager wants 100% automated certificate issuance (zero manual approvals) to achieve 80% operational effort reduction (G-2: 40 hours/month → 8 hours/month)
- **BR-004 (Organizational Control)**: Security Architect wants manual security review and approval for high-risk certificates (production servers, code signing) to prevent unauthorized issuance and maintain security posture
- **Tension**: Automation vs. Security Controls

**Stakeholders Involved**:
- **Infrastructure Manager**: Operationally burned out by manual certificate management (40 hours/month), wants to eliminate toil and focus on strategic work, skeptical of "unnecessary" security bureaucracy
- **Security Architect**: Accountable for security posture, concerned about automated issuance of code signing certificates enabling malware distribution, wants approval gates for high-risk certificate types

**Trade-off Analysis**:

| Option | Automation Level | Security Approval | Infrastructure Effort | Security Risk | Infrastructure Satisfaction | Security Satisfaction |
|--------|------------------|-------------------|----------------------|---------------|----------------------------|----------------------|
| **Option A: 100% Automated** | All certificates automated | No approvals | 8 hrs/month ✓ | HIGH (unauthorized code signing) ✗ | HIGH ✓ | LOW ✗ |
| **Option B: Manual Approvals for All** | No automation | Approve every cert | 40 hrs/month ✗ | LOW ✓ | LOW ✗ | HIGH ✓ |
| **Option C: COMPROMISE - Risk-Based** | 90% automated, 10% manual | High-risk only | 12 hrs/month ✓ | MEDIUM ✓ | MEDIUM ✓ | MEDIUM ✓ |

**Resolution Strategy**: **COMPROMISE with RISK-BASED AUTOMATION** (Option C selected)

**Decision**:
1. **Cloud PKI - Fully Automated (90% of certificates)**:
   - **Automated (No Approval Required)**: Device authentication, user authentication, Wi-Fi 802.1X, VPN client auth, development/test environment certificates, code signing for non-production
   - Rationale: Low security risk, high volume, immediate issuance required for zero-touch device enrollment, security controls enforced via certificate templates (EKU restrictions, validity periods, TPM-backed keys)
2. **On-Premises PKI - Manual Approval Required (10% of certificates)**:
   - **Approval Required**: Production server SSL/TLS, production code signing (release builds), legacy application certificates, wildcard certificates, certificates with extended validity (>2 years)
   - Approval workflow: Certificate Approver validates requestor identity, business justification, certificate template compliance before approving issuance
   - Approval SLA: <4 hours during business hours (NFR-P-002)
3. **Anomaly Detection (Compensating Control)**:
   - Implement automated anomaly detection monitoring for unusual certificate issuance patterns:
     - Alert if single user requests >10 certificates in 1 hour (potential compromised account)
     - Alert if certificate issued outside business hours for production certificate types
     - Alert if certificate issued for new/unknown server name (potential rogue server)
   - Anomaly alerts trigger security review (may result in certificate revocation if unauthorized)

**Modified Requirements**:
- **BR-002 (Automated Lifecycle)**: Updated to "90% of certificates automated" (instead of implied 100%)
- **FR-008 (Certificate Templates)**: Updated to include "approval_required" flag distinguishing automated vs. manual templates
- **FR-021 (Compliance Reporting)**: Added anomaly detection requirement as compensating control

**Trade-off Impact**:
- **Infrastructure Manager**: Achieves 70% operational effort reduction (12 hrs/month vs. 8 hrs/month target) - still significant improvement from 40 hrs/month baseline
- **Security Architect**: Retains approval control over highest-risk certificate types (code signing, production servers) - acceptable compromise

**Contingency Plan**:
- After 6 months operational experience, review approval workflow metrics:
  - If approval workflow causing delays (>90% of requests approved within 4 hours), consider further automation
  - If anomaly detection flagging unauthorized issuance attempts, maintain manual approvals
- Potential Phase 2 enhancement: Risk-based automated approval using machine learning (auto-approve if pattern matches historical legitimate requests, flag anomalies for manual review)

**Stakeholder Management**:
- **Infrastructure Manager**: Wins 70% effort reduction (acceptable compromise), understands security rationale for high-risk certificate approvals, commits to 4-hour approval SLA to minimize delays
- **Security Architect**: Wins approval gates for highest-risk certificates, accepts automated issuance for lower-risk device/user certificates with compensating controls (anomaly detection)

**Decision Authority**: Architecture Review Board (Security Architect, Infrastructure Manager, CISO) - decision documented in certificate policy

---

### Conflict C-3: Speed of Migration (CFO) vs. Thoroughness of Testing (Infrastructure Manager)

**Conflicting Requirements**:
- **BR-008 (Phased Migration)**: CFO wants aggressive 6-month migration schedule to realize TCO savings quickly ($60K/month operational cost savings start when legacy CA decommissioned)
- **BR-008 (Zero Downtime)**: Infrastructure Manager wants conservative 12-month migration schedule with extensive pilot and testing to avoid production outages (concerns based on past failed migrations)
- **Tension**: Speed vs. Risk Mitigation

**Stakeholders Involved**:
- **CFO**: Financial pressure to reduce operational costs, board visibility on TCO savings realization timeline, impatient with lengthy IT projects
- **Infrastructure Manager**: Risk averse due to past certificate outages damaging reputation, accountable for uptime SLA, prefers slow methodical migration with extensive rollback testing

**Trade-off Analysis**:

| Option | Migration Duration | TCO Savings Realization | Outage Risk | CFO Satisfaction | Infrastructure Satisfaction |
|--------|-------------------|------------------------|-------------|------------------|---------------------------|
| **Option A: Aggressive (6 months)** | 6 months | Savings start Month 7 ✓ | HIGH (insufficient testing) ✗ | HIGH ✓ | LOW ✗ |
| **Option B: Conservative (18 months)** | 18 months | Savings delayed to Month 19 ✗ | LOW ✓ | LOW ✗ | HIGH ✓ |
| **Option C: COMPROMISE (12 months)** | 12 months | Savings start Month 13 ✓ | MEDIUM ✓ | MEDIUM ✓ | MEDIUM ✓ |

**Resolution Strategy**: **COMPROMISE with PHASED 12-MONTH SCHEDULE** (Option C selected)

**Decision**:
- **12-month phased migration** with 4 phases and mandatory gate reviews:
  - **Pilot (Months 1-2)**: 50 IT test devices, cloud PKI device certificates, InTune SCEP integration validation
  - **Wave 1 (Months 3-6)**: 2,000 production devices, Wi-Fi 802.1X, VPN certificates via cloud PKI
  - **Wave 2 (Months 7-9)**: User authentication certificates, development/test environment certificates via cloud PKI
  - **Wave 3 (Months 10-12)**: On-premises CA modernization, production server certificate migration to modernized on-premises PKI, legacy CA decommission
- **Gate review criteria**: Each phase requires sign-off from Infrastructure Manager and Security Architect before proceeding to next phase based on:
  - Zero P1/P2 incidents during phase (no production outages, no certificate authentication failures)
  - >95% certificate enrollment success rate for automated workflows
  - User/application compatibility validated (no reports of certificate-related application failures)
- **Rollback capability**: Legacy CA remains trusted and operational through Month 12 enabling re-issuance if migration issues discovered

**Modified Requirements**:
- **BR-008 (Phased Migration)**: Updated migration roadmap to 12-month schedule with 4 phases (from implied 6-month or 18-month ambiguity)

**Trade-off Impact**:
- **CFO**: TCO savings realization delayed 6 months vs. aggressive schedule, but acceptable given $720K total savings (6-month delay = $30K opportunity cost, acceptable risk mitigation)
- **Infrastructure Manager**: Compressed timeline vs. conservative 18-month preference, but 12-month schedule allows thorough testing with pilot phase and gate reviews, rollback capability reduces risk

**Contingency Plan**:
- If Pilot or Wave 1 discovers critical issues (application incompatibility, certificate authentication failures), extend timeline by 3 months for remediation before proceeding
- If migration proceeding smoothly with zero incidents, consider accelerating Wave 3 to Month 11 (1-month early completion) to realize TCO savings earlier

**Stakeholder Management**:
- **CFO**: Wins faster TCO savings realization than conservative approach, quarterly financial reports show incremental savings as each wave completes (partial savings start Month 7 as cloud automation reduces operational effort)
- **Infrastructure Manager**: Wins adequate testing time and risk mitigation (pilot phase, gate reviews, rollback capability), commits to 12-month timeline with understanding that gate reviews may extend timeline if issues discovered

**Decision Authority**: Executive Steering Committee (CISO, CFO, Infrastructure Manager) - decision documented in project plan with formal gate review process

---

## Budget and Cost Analysis

### Total Cost of Ownership (TCO) - 3 Year Comparison

**Hybrid PKI Approach** (Selected):
- **Year 1**: $465K (Cloud PKI $160K + On-Premises Modernization $165K + Staff $140K)
- **Year 2**: $410K (Cloud PKI $180K multi-region + On-Premises $30K + Staff $120K + HSM $80K)
- **Year 3**: $345K (Cloud PKI $180K + On-Premises $30K + Staff $105K + Support $30K)
- **3-Year Total**: $1,220K

**Full Cloud PKI Approach** (Rejected due to stakeholder concerns):
- **Year 1**: $520K (Cloud PKI $200K all certificates + Migration $200K + Staff $120K)
- **Year 2**: $420K (Cloud PKI $240K + Staff $100K + Support $80K)
- **Year 3**: $380K (Cloud PKI $240K + Staff $100K + Support $40K)
- **3-Year Total**: $1,320K (+$100K vs. Hybrid)

**Full On-Premises Refresh** (Rejected due to lack of automation):
- **Year 1**: $580K (Hardware $200K + Windows licenses $60K + HSM $120K + Migration $100K + Staff $100K)
- **Year 2**: $520K (Maintenance $20K + Staff $200K + Support $300K)
- **Year 3**: $480K (Maintenance $20K + Staff $200K + Support $260K)
- **3-Year Total**: $1,580K (+$360K vs. Hybrid)

**Cost Savings**: Hybrid PKI saves $360K vs. on-premises refresh (30% TCO reduction - exceeds BR-005 target of 25%)

### Budget Breakdown - Hybrid PKI (Year 1)

**Cloud PKI Subscription** ($160K):
- Base subscription: $120K/year (single-region, 5,000 certificates)
- ACME/SCEP endpoints: $20K/year (protocol add-ons)
- API rate limits: $10K/year (100 requests/min tier)
- Compliance reporting: $10K/year (SOC 2 evidence package)

**On-Premises PKI Modernization** ($165K):
- Windows Server 2022 licenses (2 servers): $6K
- Virtual infrastructure (8 vCPU, 16 GB RAM): $10K/year
- TPM hardware modules (2 servers): $2K
- Professional services (migration, configuration): $120K (vendor implementation services)
- Training (PKI Administrator certification): $7K (2 administrators × $3.5K)
- Backup infrastructure (Azure Blob Storage): $20K/year

**Staffing** ($140K):
- PKI Engineer (1 FTE, Year 1 only): $120K/year (dedicated migration support, transitions to 0.5 FTE Year 2)
- Helpdesk training and ramp-up: $20K (overtime, knowledge base creation)

**Total Year 1**: $465K

---

## Validation & Sign-off

### Stakeholder Review

| Reviewer | Role | Review Status | Review Date | Comments |
|----------|------|---------------|-------------|----------|
| [Name] | CISO (Executive Sponsor) | PENDING | | |
| [Name] | CFO (Budget Owner) | PENDING | | |
| [Name] | Enterprise Security Architect (Document Owner) | PENDING | | |
| [Name] | Infrastructure Manager | PENDING | | |
| [Name] | Compliance Officer | PENDING | | |
| [Name] | IT Operations Director | PENDING | | |

### Document Approval

| Approver | Role | Approval Status | Approval Date | Signature |
|----------|------|-----------------|---------------|-----------|
| [Name] | CISO (Executive Sponsor) | PENDING | | |
| [Name] | CFO (Budget Owner) | PENDING | | |
| [Name] | Enterprise Security Architect | PENDING | | |

By signing above, approvers confirm that requirements are complete, understood, and approved to proceed to vendor evaluation and solution design phase.

---

## Next Steps

### Immediate Actions
1. **Review Requirements**: Stakeholder review of `requirements.md` with focus on hybrid architecture approach and conflict resolutions
2. **Decision on Hybrid Approach**: Executive Steering Committee approval of hybrid PKI architecture (vs. full cloud or full on-premises)
3. **Budget Approval**: CFO approval of Year 1 budget ($465K) with commitment to multi-region Year 2 ($410K) conditional on ROI validation

### Recommended Follow-up Commands
1. **Run `/arckit.research`** - Research Cloud PKI vendors (DigiCert ONE, Sectigo Certificate Manager, Azure Key Vault Managed HSM, AWS Private CA, EJBCA Enterprise) and on-premises PKI modernization options (Windows Server 2022 CA, OpenSSL-based CA, third-party CA appliances)
2. **Run `/arckit.evaluate`** - Create vendor evaluation framework with scoring criteria for cloud PKI vendor selection (cost, features, Azure AD integration, SCEP/ACME support, compliance certifications)
3. **Run `/arckit.hld`** - Create High-Level Design after vendor selection documenting hybrid PKI architecture, CA hierarchy, certificate templates, integration architecture, network diagrams

---

**Generated by**: ArcKit `/arckit.requirements` command
**Generated on**: 2026-01-26
**ArcKit Version**: 0.11.2
**Project**: Hybrid Public Key Infrastructure (PKI) (Project 005)
**Model**: Claude Opus 4.5
**Generation Context**: Updated to ArcKit 0.11.2 template format. Original document established hybrid PKI approach combining cloud-native PKI services (80-90% of certificates) with modernized on-premises Certificate Authority (10-20% of certificates). Stakeholder analysis available in stakeholder-drivers.md.
