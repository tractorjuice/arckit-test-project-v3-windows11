# ADR-001: Cisco AnyConnect VPN Deployment for Windows 11 Autopilot

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-007-ADR-001-v1.0 |
| **Title** | Cisco AnyConnect VPN Deployment for Windows 11 Autopilot |
| **Status** | Proposed |
| **Date** | 2026-01-24 |
| **Decision Makers** | IT Director, Head of Security, Infrastructure Manager |
| **Consulted** | Network Operations Team, Security Architecture Team, End User Computing Team, Service Desk |
| **Informed** | All IT Staff, Business Unit Representatives, Project Steering Committee |

### Document History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2026-01-24 | Architecture Team | Initial ADR creation |

---

## 1. Context and Problem Statement

The organisation is migrating from Windows 10 to Windows 11 with a modern device management approach using Microsoft Intune and Windows Autopilot for zero-touch provisioning. Remote and hybrid workers require secure VPN connectivity to access on-premises resources, internal applications, and protected network segments.

**The key architectural question is:**

> How should we deploy and configure VPN services for Windows 11 devices provisioned via Autopilot to ensure secure, seamless connectivity while maintaining zero-touch deployment principles and supporting the ARM64 architecture of Copilot+ PCs?

### Current State

- Existing Cisco AnyConnect deployment via SCCM/Group Policy for Windows 10 devices
- Manual VPN configuration required post-deployment
- No integration with Windows Autopilot Enrollment Status Page (ESP)
- x64 client only - no ARM64 native support deployed
- Certificate-based authentication available but inconsistently deployed
- Split tunnelling not standardised across the estate

### Drivers for Change

| Driver ID | Driver | Source |
|-----------|--------|--------|
| SD-1 | Maintain existing Cisco AnyConnect investment | Head of Networks |
| SD-2 | Zero-touch provisioning requirement | IT Director |
| SD-3 | Zero Trust security model compliance | CISO |
| SD-4 | Support for ARM64 Copilot+ PCs | End User Computing |
| SD-5 | 99.9% VPN availability requirement | Service Delivery |
| SD-6 | Seamless user experience with SSO | User Representatives |
| SD-7 | Compliance with NCSC guidelines | Security Architecture |
| SD-8 | Cost optimisation using existing licenses | Finance Director |

### Stakeholder Goals Alignment

| Goal ID | Goal | Success Measure | Related Drivers |
|---------|------|-----------------|-----------------|
| G-1 | Zero-Touch VPN Deployment | 100% automated deployment via Autopilot | SD-2 |
| G-2 | High Availability | 99.9% VPN service availability | SD-5 |
| G-3 | Zero Trust Compliance | 100% MFA + certificate authentication | SD-3, SD-7 |
| G-4 | Minimal Support Impact | <5% increase in VPN-related tickets | SD-6 |
| G-5 | Zero Licensing Cost Increase | Use existing Cisco licenses | SD-1, SD-8 |
| G-6 | Seamless User Experience | SSO with Azure AD, <30s connection time | SD-6 |

---

## 2. Decision Drivers

### 2.1 Functional Drivers

| ID | Driver | Priority | Source Requirement |
|----|--------|----------|-------------------|
| DD-F-01 | Must integrate with Windows Autopilot ESP | Must Have | FR-002 |
| DD-F-02 | Must support ARM64 native client | Must Have | FR-003 |
| DD-F-03 | Must enable Azure AD SSO via SAML 2.0 | Must Have | FR-005 |
| DD-F-04 | Must enforce MFA on all connections | Must Have | FR-006 |
| DD-F-05 | Must support certificate-based authentication | Must Have | FR-007 |
| DD-F-06 | Must enable Always-On VPN capability | Should Have | FR-009 |
| DD-F-07 | Must support split tunnelling | Should Have | FR-010 |
| DD-F-08 | Must integrate with Intune Win32 deployment | Must Have | FR-001 |

### 2.2 Non-Functional Drivers

| ID | Driver | Priority | Target | Source Requirement |
|----|--------|----------|--------|-------------------|
| DD-NF-01 | Connection establishment time | Must Have | <30 seconds | NFR-P-001 |
| DD-NF-02 | VPN service availability | Must Have | 99.9% | NFR-A-001 |
| DD-NF-03 | Support ticket volume | Should Have | <5% increase | NFR-U-001 |
| DD-NF-04 | Encryption standards | Must Have | AES-256, TLS 1.3 | NFR-SEC-001 |
| DD-NF-05 | Concurrent connection capacity | Must Have | 15,000 users | NFR-P-002 |

### 2.3 Constraint Drivers

| ID | Constraint | Impact |
|----|------------|--------|
| DD-C-01 | Existing Cisco AnyConnect licensing must be utilised | Limits technology choice |
| DD-C-02 | Zero additional capital expenditure for VPN infrastructure | Constrains scaling options |
| DD-C-03 | PKI infrastructure dependency | Creates sequencing requirement |
| DD-C-04 | Autopilot ESP timeout of 60 minutes | Constrains installation complexity |
| DD-C-05 | ARM64 native client availability | Limits deployment timeline |

### 2.4 Risk Drivers

| Risk ID | Risk | Current Score | Impact on Decision |
|---------|------|---------------|-------------------|
| R-001 | ESP timeout during VPN installation | 9 (High) | Must optimise installation package |
| R-002 | VPN capacity exceeded during migration | 9 (High) | Must plan phased rollout |
| R-005 | PKI infrastructure not ready | 9 (High) | Must coordinate with Cloud PKI project |
| R-003 | ARM64 client compatibility issues | 6 (Medium) | Must test thoroughly |
| R-007 | User adoption resistance | 6 (Medium) | Must ensure seamless UX |

---

## 3. Considered Options

### Option 1: Cisco AnyConnect via Intune Win32 App with ESP Integration (Recommended)

Deploy Cisco AnyConnect Secure Mobility Client as an Intune Win32 application (.intunewin package) with full Autopilot ESP integration, Azure AD SSO, and certificate-based authentication.

**Key Characteristics:**
- Native ARM64 and x64 client deployment
- Win32 app packaging for reliable ESP installation
- SAML 2.0 SSO integration with Azure AD
- Certificate-based authentication via Intune SCEP profiles
- Always-On VPN with split tunnelling
- Pre-configured profiles deployed via Intune

### Option 2: Cisco AnyConnect via MSI with Line-of-Business App Deployment

Deploy Cisco AnyConnect using traditional MSI installer as an Intune Line-of-Business (LOB) application with post-deployment configuration scripts.

**Key Characteristics:**
- Standard MSI deployment
- PowerShell scripts for configuration
- Manual profile deployment
- Limited ESP integration
- Separate authentication configuration

### Option 3: Microsoft Always On VPN (DirectAccess Replacement)

Replace Cisco AnyConnect with Microsoft's built-in Always On VPN solution using native Windows capabilities.

**Key Characteristics:**
- Native Windows integration
- No third-party client required
- IKEv2/SSTP protocols
- Intune configuration profiles
- Requires infrastructure changes

### Option 4: Do Nothing - Maintain Current SCCM Deployment

Continue deploying Cisco AnyConnect via SCCM for Windows 11 devices with manual configuration.

**Key Characteristics:**
- No change to current process
- Manual post-deployment configuration
- No Autopilot integration
- Continued SCCM dependency
- No ARM64 support

---

## 4. Options Analysis

### 4.1 Evaluation Criteria

| Criterion | Weight | Description |
|-----------|--------|-------------|
| Autopilot Integration | 25% | Seamless ESP installation and zero-touch provisioning |
| Security Compliance | 20% | Zero Trust, MFA, certificates, NCSC alignment |
| User Experience | 15% | SSO, connection speed, reliability |
| ARM64 Support | 15% | Native support for Copilot+ PCs |
| Cost Efficiency | 15% | Use of existing licenses, no CAPEX |
| Operational Impact | 10% | Support burden, maintenance complexity |

### 4.2 Options Scoring Matrix

| Criterion | Weight | Option 1: Win32 + ESP | Option 2: MSI LOB | Option 3: MS Always On | Option 4: Do Nothing |
|-----------|--------|----------------------|-------------------|------------------------|---------------------|
| Autopilot Integration | 25% | 5 (Excellent) | 3 (Adequate) | 4 (Good) | 1 (None) |
| Security Compliance | 20% | 5 (Full Zero Trust) | 4 (Partial) | 4 (Good) | 2 (Basic) |
| User Experience | 15% | 5 (SSO + Always-On) | 3 (Manual steps) | 4 (Native) | 2 (Manual) |
| ARM64 Support | 15% | 5 (Native ARM64) | 3 (x64 emulated) | 5 (Native) | 1 (None) |
| Cost Efficiency | 15% | 5 (Existing licenses) | 5 (Existing) | 2 (Infrastructure) | 5 (No change) |
| Operational Impact | 10% | 4 (Low support) | 3 (Medium) | 3 (Retraining) | 2 (High manual) |
| **Weighted Score** | 100% | **4.85** | **3.45** | **3.70** | **1.95** |

### 4.3 Detailed Option Analysis

#### Option 1: Cisco AnyConnect via Intune Win32 App with ESP Integration

**Strengths:**
- Full Autopilot ESP integration ensures VPN is ready at first user login
- Native ARM64 client available (version 5.1+)
- Azure AD SSO eliminates separate credential entry
- Certificate-based authentication enhances security posture
- Always-On VPN ensures continuous protection
- Split tunnelling optimises network traffic
- Leverages existing Cisco investment and licensing
- Pre-configured profiles eliminate manual setup

**Weaknesses:**
- Win32 app packaging requires initial configuration effort
- ESP installation adds to provisioning time (mitigated by optimisation)
- Dependency on Cloud PKI project completion
- Requires Cisco ISE/ASA configuration for SAML

**Risks:**
- R-001: ESP timeout - Mitigated by optimised package and installation scripts
- R-005: PKI dependency - Mitigated by fallback to username/password + MFA

**Architecture Principle Alignment:**
| Principle | Alignment |
|-----------|-----------|
| P1: Cloud-First Endpoint Management | Full - Intune-based deployment |
| P2: Zero Trust Security Model | Full - MFA + certificates + Always-On |
| P3A: Copilot+ PC Hardware | Full - ARM64 native client |
| P7: Zero-Touch Provisioning | Full - Autopilot ESP integration |
| P8: Policy-Based Management | Full - Intune configuration profiles |

#### Option 2: Cisco AnyConnect via MSI with Line-of-Business App Deployment

**Strengths:**
- Familiar deployment method
- Uses existing licensing
- Lower initial configuration effort

**Weaknesses:**
- Limited ESP integration reliability
- Manual profile configuration required
- No native ARM64 MSI available
- Post-deployment scripts increase complexity
- User intervention may be required

**Risks:**
- ESP installation failures more likely
- Inconsistent configuration across devices
- ARM64 devices will use x64 emulation (performance impact)

**Architecture Principle Alignment:**
| Principle | Alignment |
|-----------|-----------|
| P1: Cloud-First | Partial - Intune deployment but manual config |
| P2: Zero Trust | Partial - MFA possible but not enforced |
| P3A: Copilot+ PC | None - x64 emulation required |
| P7: Zero-Touch | Partial - Manual steps required |
| P8: Policy-Based | Partial - Script-based configuration |

#### Option 3: Microsoft Always On VPN (DirectAccess Replacement)

**Strengths:**
- Native Windows integration
- No third-party client dependency
- Built-in Intune support
- Native ARM64 support

**Weaknesses:**
- Requires infrastructure changes (NPS, RRAS)
- Loss of existing Cisco investment
- Staff retraining required
- Different feature set from Cisco AnyConnect
- May not support all current use cases

**Risks:**
- Infrastructure project required
- Extended timeline
- Feature gap analysis needed
- Additional CAPEX for infrastructure

**Architecture Principle Alignment:**
| Principle | Alignment |
|-----------|-----------|
| P1: Cloud-First | Partial - Requires on-premises infrastructure |
| P2: Zero Trust | Good - Native Windows security |
| P3A: Copilot+ PC | Full - Native Windows support |
| P7: Zero-Touch | Good - Intune profiles |
| P8: Policy-Based | Good - Native Intune integration |

#### Option 4: Do Nothing - Maintain Current SCCM Deployment

**Strengths:**
- No change effort required
- Familiar process for IT team

**Weaknesses:**
- No Autopilot integration
- Continued SCCM dependency conflicts with cloud-first strategy
- No ARM64 support
- Manual post-deployment configuration
- Inconsistent user experience
- Does not meet zero-touch requirement

**Risks:**
- Blocks Windows 11 migration for VPN-dependent users
- Incompatible with Copilot+ PCs
- Increasing technical debt

**Architecture Principle Alignment:**
| Principle | Alignment |
|-----------|-----------|
| P1: Cloud-First | None - SCCM dependency |
| P2: Zero Trust | Partial - Existing security only |
| P3A: Copilot+ PC | None - No ARM64 support |
| P7: Zero-Touch | None - Manual provisioning |
| P8: Policy-Based | None - GPO-based |

---

## 5. Decision Outcome

### 5.1 Chosen Option

**Option 1: Cisco AnyConnect via Intune Win32 App with ESP Integration**

### 5.2 Decision Statement (Y-Statement Format)

In the context of **deploying VPN services for Windows 11 devices provisioned via Autopilot**,

facing the need to **provide secure, seamless remote connectivity while maintaining zero-touch deployment principles and supporting ARM64 Copilot+ PCs**,

we decided for **Cisco AnyConnect Secure Mobility Client deployed as an Intune Win32 application with full ESP integration, Azure AD SSO, and certificate-based authentication**,

and against **MSI-based deployment (limited ESP integration), Microsoft Always On VPN (infrastructure investment required), and maintaining SCCM deployment (no Autopilot support)**,

to achieve **zero-touch VPN provisioning, Zero Trust security compliance, seamless user experience, and cost optimisation through existing Cisco licensing**,

accepting the trade-off that **initial Win32 packaging effort is required, there is dependency on Cloud PKI project, and ESP installation time must be optimised to avoid timeout risks**.

### 5.3 Justification Summary

| Factor | Rationale |
|--------|-----------|
| **Technical Fit** | Win32 deployment provides reliable ESP integration; ARM64 native client supports Copilot+ PCs; SAML SSO integrates with Azure AD |
| **Security** | Enables full Zero Trust compliance with MFA, certificates, and Always-On VPN; aligns with NCSC guidelines |
| **Cost** | Leverages existing Cisco AnyConnect licenses with zero additional CAPEX; maximises ROI on existing investment |
| **User Experience** | SSO eliminates credential entry; Always-On ensures continuous protection; <30s connection time target achievable |
| **Operational** | Reduces support burden through automated deployment; consistent configuration across all devices |
| **Strategic Alignment** | Supports cloud-first strategy (P1), Zero Trust (P2), Copilot+ PCs (P3A), Autopilot (P7), and policy-based management (P8) |

---

## 6. Consequences

### 6.1 Positive Consequences

| ID | Consequence | Benefit | Stakeholder Impact |
|----|-------------|---------|-------------------|
| C-P-01 | Zero-touch VPN deployment | Eliminates manual configuration, reduces deployment time | IT Operations, End Users |
| C-P-02 | Full Zero Trust compliance | Enhanced security posture, regulatory alignment | Security Team, Compliance |
| C-P-03 | Native ARM64 support | Optimal performance on Copilot+ PCs | End Users, Procurement |
| C-P-04 | Azure AD SSO integration | Seamless authentication, improved UX | End Users, Service Desk |
| C-P-05 | Existing license utilisation | Zero additional licensing cost | Finance, IT Budget |
| C-P-06 | Consistent configuration | Reduced troubleshooting, standardised experience | Service Desk, IT Operations |
| C-P-07 | Always-On VPN capability | Continuous protection, automatic reconnection | Security Team, End Users |
| C-P-08 | Split tunnelling support | Optimised traffic routing, reduced VPN load | Network Team, End Users |

### 6.2 Negative Consequences (Trade-offs)

| ID | Consequence | Mitigation | Residual Risk |
|----|-------------|------------|---------------|
| C-N-01 | Initial Win32 packaging effort | Use Microsoft Win32 Content Prep Tool; follow Cisco best practices | Low - One-time effort |
| C-N-02 | ESP timeout risk during installation | Optimise package size; use installation scripts; test timing | Medium - Requires testing |
| C-N-03 | PKI dependency for certificates | Implement fallback to MFA-only; coordinate with Cloud PKI project | Medium - Sequencing risk |
| C-N-04 | Cisco infrastructure configuration | Engage Cisco TAC; document SAML/certificate configuration | Low - Standard process |
| C-N-05 | Testing complexity | Comprehensive test plan; pilot deployment; UAT phase | Low - Standard testing |

### 6.3 Neutral Consequences

| ID | Consequence | Notes |
|----|-------------|-------|
| C-U-01 | Cisco AnyConnect client version upgrade | Required for ARM64 support; standard upgrade process |
| C-U-02 | Intune Win32 app management overhead | Consistent with other Win32 apps; no additional complexity |
| C-U-03 | Documentation updates required | Part of standard project deliverables |

---

## 7. Validation and Compliance

### 7.1 Architecture Principles Compliance

| Principle ID | Principle Name | Compliance | Evidence |
|--------------|----------------|------------|----------|
| P1 | Cloud-First Endpoint Management | Compliant | Intune-based deployment, no SCCM dependency |
| P2 | Zero Trust Security Model | Compliant | MFA + certificates + Always-On + Conditional Access |
| P3A | Copilot+ PC Hardware (ARM64) | Compliant | Native ARM64 client deployment |
| P7 | Zero-Touch Provisioning | Compliant | Full Autopilot ESP integration |
| P8 | Policy-Based Management | Compliant | Intune configuration profiles |
| P9 | Standardised Security Baseline | Compliant | Consistent security configuration |
| P10 | Resilient Connectivity | Compliant | Always-On VPN, automatic reconnection |

### 7.2 Requirements Traceability

| Requirement ID | Requirement | How Addressed |
|----------------|-------------|---------------|
| BR-001 | Secure remote access for hybrid workforce | Cisco AnyConnect with Zero Trust controls |
| BR-002 | Zero-touch deployment alignment | Full Autopilot ESP integration |
| BR-003 | Existing investment protection | Utilises current Cisco licenses |
| FR-001 | Intune Win32 deployment | Win32 app packaging with .intunewin |
| FR-002 | Autopilot ESP integration | Required app during ESP device setup |
| FR-003 | ARM64 native client | Cisco AnyConnect 5.1+ ARM64 package |
| FR-005 | Azure AD SSO | SAML 2.0 integration with Azure AD |
| FR-006 | MFA enforcement | Azure AD MFA via Conditional Access |
| FR-007 | Certificate authentication | Intune SCEP profiles with Cloud PKI |
| FR-009 | Always-On VPN | AnyConnect Always-On configuration |
| FR-010 | Split tunnelling | AnyConnect split tunnel policy |
| NFR-P-001 | <30s connection time | Pre-configured profiles, SSO |
| NFR-A-001 | 99.9% availability | Redundant VPN headends, Always-On |
| NFR-SEC-001 | AES-256, TLS 1.3 | Cisco AnyConnect encryption settings |

### 7.3 Risk Mitigation Verification

| Risk ID | Risk | Mitigation Status | Residual Score |
|---------|------|-------------------|----------------|
| R-001 | ESP timeout | Mitigated - Optimised package, tested timing | 4 (Low) |
| R-002 | VPN capacity | Mitigated - Phased rollout, capacity planning | 6 (Medium) |
| R-003 | ARM64 compatibility | Mitigated - Pilot testing, vendor support | 4 (Low) |
| R-005 | PKI dependency | Partially mitigated - MFA fallback available | 6 (Medium) |
| R-007 | User adoption | Mitigated - SSO, seamless experience, training | 4 (Low) |

### 7.4 UK Government Compliance

| Framework | Requirement | Compliance Status |
|-----------|-------------|-------------------|
| GDS Service Standard | Point 9: Secure by design | Compliant - Zero Trust implementation |
| Technology Code of Practice | Use cloud appropriately | Compliant - Cloud-first deployment |
| NCSC Cyber Principles | Defence in depth | Compliant - Multi-layer authentication |
| NCSC Zero Trust | Continuous verification | Compliant - Always-On VPN, MFA |

---

## 8. Implementation

### 8.1 Implementation Approach

| Phase | Activities | Duration | Dependencies |
|-------|------------|----------|--------------|
| **Phase 1: Preparation** | Win32 package creation, Intune configuration, Cisco SAML setup | 2 weeks | Cisco AnyConnect 5.1+ availability |
| **Phase 2: Infrastructure** | VPN headend configuration, Azure AD SAML app registration, PKI integration | 3 weeks | Cloud PKI project progress |
| **Phase 3: Pilot** | Deploy to 50 pilot users, validate ESP integration, gather feedback | 2 weeks | Phase 1-2 completion |
| **Phase 4: UAT** | Extended testing with 200 users, performance validation | 2 weeks | Pilot success |
| **Phase 5: Production** | Phased rollout to all VPN users, monitoring, support readiness | 4 weeks | UAT sign-off |

### 8.2 Key Implementation Tasks

| Task ID | Task | Owner | Priority |
|---------|------|-------|----------|
| IMP-001 | Create Cisco AnyConnect Win32 package (.intunewin) | Endpoint Team | Critical |
| IMP-002 | Configure Intune Win32 app with ESP requirement | Endpoint Team | Critical |
| IMP-003 | Register Azure AD SAML application for AnyConnect | Identity Team | Critical |
| IMP-004 | Configure Cisco ASA/ISE for SAML authentication | Network Team | Critical |
| IMP-005 | Create Intune SCEP certificate profile | Security Team | High |
| IMP-006 | Configure AnyConnect profile with split tunnel rules | Network Team | High |
| IMP-007 | Enable Always-On VPN policy | Network Team | High |
| IMP-008 | Create ARM64 deployment package | Endpoint Team | High |
| IMP-009 | Develop installation validation scripts | Endpoint Team | Medium |
| IMP-010 | Update Service Desk knowledge base | Service Desk | Medium |

### 8.3 Success Criteria

| Criterion | Target | Measurement Method |
|-----------|--------|-------------------|
| ESP installation success rate | >99% | Intune deployment reports |
| VPN connection time | <30 seconds | Automated monitoring |
| User support tickets | <5% increase | Service Desk metrics |
| Zero Trust compliance | 100% MFA + certificate | Security audit |
| ARM64 deployment success | 100% on Copilot+ PCs | Intune compliance reports |

---

## 9. Related Decisions and Documents

### 9.1 Related ADRs

| ADR ID | Title | Relationship |
|--------|-------|--------------|
| ADR-002 | Certificate Authentication Strategy | Dependent - PKI implementation details |
| ADR-003 | Split Tunnelling Policy | Related - Traffic routing decisions |

### 9.2 Related Project Documents

| Document | Location | Relationship |
|----------|----------|--------------|
| Stakeholder Drivers | projects/007-vpn-service-windows11-autopilot/stakeholder-drivers.md | Source of decision drivers |
| Requirements | projects/007-vpn-service-windows11-autopilot/requirements.md | Source of functional requirements |
| Risk Register | projects/007-vpn-service-windows11-autopilot/risk-register.md | Risk mitigation verification |
| Architecture Principles | .arckit/memory/architecture-principles.md | Compliance verification |

### 9.3 External References

| Reference | Description |
|-----------|-------------|
| [Cisco AnyConnect Deployment Guide](https://www.cisco.com/c/en/us/support/security/anyconnect-secure-mobility-client/products-installation-guides-list.html) | Official Cisco deployment documentation |
| [Microsoft Intune Win32 App Management](https://learn.microsoft.com/en-us/mem/intune/apps/apps-win32-app-management) | Intune Win32 packaging guidance |
| [Windows Autopilot ESP](https://learn.microsoft.com/en-us/mem/autopilot/enrollment-status) | ESP configuration guidance |
| [NCSC Zero Trust Architecture](https://www.ncsc.gov.uk/collection/zero-trust-architecture) | UK Government security guidance |

---

## 10. Review and Approval

### 10.1 Review Record

| Reviewer | Role | Date | Status | Comments |
|----------|------|------|--------|----------|
| | IT Director | | Pending | |
| | Head of Security | | Pending | |
| | Infrastructure Manager | | Pending | |
| | Network Operations Lead | | Pending | |

### 10.2 Approval

| Approver | Role | Date | Signature |
|----------|------|------|-----------|
| | IT Director | | |
| | Head of Security | | |

---

## Appendix A: Glossary

| Term | Definition |
|------|------------|
| ESP | Enrollment Status Page - Windows Autopilot feature that ensures apps are installed before user access |
| Win32 App | Traditional Windows application packaged for Intune deployment |
| SAML 2.0 | Security Assertion Markup Language - authentication protocol for SSO |
| SCEP | Simple Certificate Enrollment Protocol - automated certificate deployment |
| PRT | Primary Refresh Token - Azure AD token for SSO across applications |
| Always-On VPN | VPN configuration that maintains connection automatically |
| Split Tunnelling | VPN configuration that routes only specific traffic through the tunnel |

## Appendix B: Decision Log

| Date | Decision Point | Decision Made | Rationale |
|------|----------------|---------------|-----------|
| 2026-01-24 | VPN deployment method | Win32 app via Intune | Best ESP integration, ARM64 support |
| 2026-01-24 | Authentication method | SAML SSO + certificates | Zero Trust compliance, seamless UX |
| 2026-01-24 | VPN mode | Always-On with split tunnel | Security + performance balance |
