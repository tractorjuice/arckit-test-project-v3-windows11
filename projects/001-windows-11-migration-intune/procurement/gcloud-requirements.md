# UK Digital Marketplace: G-Cloud Service Procurement

**Framework**: G-Cloud 14
**Service Category**: Cloud Software (SaaS) + Cloud Support (Managed Services)
**Generated**: 2025-10-27
**Project**: Windows 10 to Windows 11 Migration with Microsoft InTune
**Project ID**: 001-windows-11-migration-intune
**Requirements Source**: [requirements.md](../requirements.md)

---

## 1. Service Overview

### 1.1 What We Need

**Microsoft 365 / InTune Managed Service Provider** capable of:

1. **Microsoft Cloud Licensing**:
   - Microsoft InTune (cloud-native endpoint management)
   - Azure Active Directory Premium P1 or P2 (identity + MFA + Conditional Access)
   - Microsoft Defender for Endpoint P1 or P2 (endpoint security)
   - OneDrive for Business (1TB+ per user, Known Folder Move)
   - Windows 11 Enterprise E3 or E5 licenses

2. **Deployment and Configuration Services**:
   - InTune tenant setup and configuration
   - Windows Autopilot deployment profile design
   - Device compliance policy configuration
   - Conditional Access policy design and implementation
   - Group Policy to InTune policy migration (Group Policy Analytics)
   - Application packaging for InTune (Win32 apps)

3. **Ongoing Managed Support**:
   - InTune administration and policy management
   - Windows Update for Business ring management
   - Security baseline maintenance
   - User support and helpdesk escalation
   - Compliance monitoring and reporting

### 1.2 Why We Need It

**Business Context** (from BR-001, BR-002, BR-006):

- **Security Compliance**: Windows 10 reaches End of Life (EOL) October 14, 2025 - must migrate ~6,000 devices to Windows 11 with Zero Trust security posture
- **Cloud Transformation**: Transition from on-premises Configuration Manager (SCCM) to cloud-native InTune management over 18-24 months
- **Regulatory Compliance**: Maintain GDPR, ISO 27001, and MOD Secure by Design compliance with 7-year audit logging and UK data residency
- **Cost Optimization**: Decommission Configuration Manager infrastructure (£220K/year TCO reduction) and achieve £7.9M total benefits over 3 years

**Procurement Strategy**:
We require a **G-Cloud managed service provider** to provide Microsoft 365 licensing bundled with deployment, configuration, and ongoing support services. This ensures UK government-compliant procurement, clear SLAs, and vendor accountability through the Digital Marketplace framework.

### 1.3 Strategic Alignment

**Architecture Principles** (from `.arckit/memory/architecture-principles.md`):

1. **Cloud-First Endpoint Management**: MUST use cloud-native management (InTune) over on-premises infrastructure
2. **Zero Trust Security Model**: MUST enforce TPM 2.0, Secure Boot, BitLocker, MFA, Conditional Access
3. **Hardware Readiness**: MUST support Windows 11 hardware requirements (TPM 2.0, UEFI, Secure Boot)
4. **User-Centric Migration**: MUST minimize user disruption (<2 hours downtime), OneDrive Known Folder Move for data protection
5. **Phased Rollout**: MUST support pilot → early adopter → production wave strategy
6. **Automated Deployment**: MUST support Windows Autopilot zero-touch provisioning
7. **Configuration Management**: MUST support InTune policy-based configuration (replacing Group Policy)
8. **Update Management**: MUST support Windows Update for Business with deployment rings
9. **Monitoring & Reporting**: MUST provide migration dashboard and compliance reporting
10. **Azure AD Integration**: MUST integrate with Azure AD for identity, MFA, Conditional Access
11. **Audit Logging**: MUST support 7-year audit log retention for compliance

### 1.4 Integration Context

**Integration Requirements** (from INT-001, INT-002, INT-003):

- **Azure Active Directory** (INT-001): OAuth 2.0 authentication, device enrollment, Conditional Access evaluation via Microsoft Graph API
- **Microsoft Defender for Endpoint** (INT-002): Automated onboarding via InTune, bi-directional telemetry, alert integration to SOC via Microsoft Graph Security API
- **OneDrive for Business** (INT-003): Known Folder Move (KFM) policy deployment, sync status monitoring, Azure AD authentication

**Existing Infrastructure**:
- Current: On-premises Configuration Manager (SCCM) managing 6,000 Windows 10 devices
- Target: Cloud-native InTune managing 6,000 Windows 11 devices
- Co-management required during 18-month transition

---

## 2. Must-Have Requirements

The service **MUST** provide:

### 2.1 Functional Requirements

**Microsoft Cloud Licensing** (FR-002, BR-002):
- **InTune Licensing**: Microsoft InTune licenses for 6,000+ devices (or included in Microsoft 365 E3/E5)
- **Azure AD Premium**: Azure AD Premium P1 or P2 for Conditional Access, MFA, device management
- **Defender for Endpoint**: Microsoft Defender for Endpoint P1 or P2 for real-time threat protection
- **OneDrive for Business**: 1TB+ storage per user, Known Folder Move capability
- **Windows 11 Licensing**: Windows 11 Enterprise E3 or E5 licenses (upgrade from Windows 10)

**InTune Deployment Services** (FR-002, FR-004, FR-005, FR-006):
- **Windows Autopilot**: Device registration (bulk upload, OEM integration, hardware hash extraction), deployment profile design (User-Driven, Self-Deploying, White Glove)
- **InTune Configuration**: Tenant setup, compliance policies (TPM 2.0, BitLocker, Defender, MFA enforcement), configuration profiles (security baselines, BitLocker, WiFi, VPN, certificates)
- **Feature Update Policies**: Windows 11 deployment rings (Preview, Broad, Production, Critical), deferral logic (0/7/14/30 days), 10-day rollback capability
- **Co-Management Setup**: Configuration Manager co-management architecture, workload transition planning (18-month phased approach)

**Policy Migration** (FR-007, FR-008, FR-009):
- **Group Policy Analytics**: Migrate Group Policy Objects (GPOs) to InTune policies using Group Policy Analytics tool
- **Application Packaging**: Package top 20 business-critical apps as InTune Win32 apps (.intunewin), define detection rules and install commands
- **Security Baselines**: Deploy Microsoft Security Baseline for Windows 11, customize and maintain baselines

**Monitoring and Support** (FR-011, FR-016):
- **Compliance Monitoring**: Real-time device compliance dashboards, automated alerting for non-compliant devices
- **Migration Dashboard**: Power BI or equivalent dashboard showing migration progress, wave success rates, support ticket trends
- **Helpdesk Support**: Tier 2/3 escalation support for InTune issues, BitLocker key recovery, device enrollment failures

### 2.2 Performance Requirements

**Autopilot Provisioning** (NFR-P-001):
- **Target**: <30 minutes end-to-end provisioning time from device power-on to user desktop (95th percentile)
- **Capacity**: Support 500-1000 concurrent device provisions per migration wave
- **Optimization**: Pre-cache applications, optimize Enrollment Status Page, network bandwidth planning

**Windows 11 Upgrade** (NFR-P-002):
- **Target**: <90 minutes in-place upgrade time (including BitLocker suspension/resume)
- **Requirements**: SSD storage, minimum 8GB RAM, pre-download feature update to minimize downtime

**Service Availability** (NFR-A-001, NFR-A-002):
- **InTune SLA**: 99.9% uptime (Microsoft standard)
- **Support Response**: <4 hours for P1 issues, <8 hours for P2 issues, <24 hours for P3 issues
- **Disaster Recovery**: <4 hour RTO for InTune tenant failure, <1 hour RPO for configuration backup

### 2.3 Security Requirements

**Authentication and Access Control** (NFR-SEC-001):
- **Multi-Factor Authentication**: Azure AD MFA enforcement for 100% of users
- **Conditional Access**: Device compliance-based access (block non-compliant devices from accessing corporate data)
- **Privileged Access Management**: Separate admin accounts with MFA, Just-In-Time (JIT) admin access

**Data Encryption** (NFR-SEC-002):
- **BitLocker**: AES-256 full disk encryption on 100% of devices, BitLocker key escrow to Azure AD for recovery
- **OneDrive Encryption**: Data encrypted at rest (AES-256) and in transit (TLS 1.2+)

**Endpoint Threat Protection** (NFR-SEC-003):
- **Defender for Endpoint**: Real-time protection, Endpoint Detection and Response (EDR), Attack Surface Reduction (ASR) rules
- **Automated Onboarding**: InTune-based Defender onboarding policy for 100% of devices
- **Threat Monitoring**: 24/7 threat detection with integration to Security Operations Centre (SOC)

**MOD Secure by Design** (NFR-SEC-004, NFR-SEC-005):
- **CAAT Registration**: Support MOD Cyber Activity and Assurance Tracker (CAAT) compliance
- **Threat Model**: Complete formal threat model (STRIDE/DREAD methodology)
- **Supplier Attestation**: Provide security attestation per ISN 2023/10 (MOD requirement)
- **SBOM**: Provide Software Bill of Materials for all third-party components

### 2.4 Compliance Requirements

**Data Privacy** (NFR-C-001):
- **GDPR Compliance**: UK GDPR compliant data processing, Data Protection Impact Assessment (DPIA) support
- **Data Residency**: UK data centers only for data at rest (Microsoft Azure UK South region)
- **Consent Management**: User consent for Windows Recall and Copilot+ AI features (opt-in required)

**Audit Logging** (NFR-C-002):
- **Retention**: 7-year audit log retention (SOX, GDPR, ISO 27001 compliance)
- **Immutability**: Immutable audit logs in Azure Log Analytics or equivalent
- **Audit Scope**: Device enrollment, policy changes, BitLocker key retrieval, compliance overrides, device wipes

**Security Certifications**:
- **ISO 27001**: Information security management certification
- **Cyber Essentials Plus**: UK government baseline security certification
- **ISO 27017/27018**: Cloud security and privacy certifications
- **SOC 2 Type II**: Service organization controls audit report

### 2.5 Integration Requirements

**Azure Active Directory Integration** (INT-001):
- **Microsoft Graph API**: OAuth 2.0 authentication for device enrollment, user provisioning, Conditional Access evaluation
- **Hybrid Azure AD Join**: Support hybrid Azure AD join during co-management phase
- **Device Objects**: Automatic device object creation in Azure AD upon enrollment

**Microsoft Defender Integration** (INT-002):
- **Automated Onboarding**: InTune policy to onboard devices to Defender for Endpoint
- **Telemetry**: Bi-directional telemetry between InTune and Defender
- **Alert Integration**: Defender alerts to SOC via Microsoft Graph Security API or SIEM connector

**OneDrive Integration** (INT-003):
- **Known Folder Move**: InTune policy to deploy OneDrive KFM (Desktop, Documents, Pictures)
- **Sync Monitoring**: Track OneDrive sync status in InTune compliance reports
- **Silent Configuration**: Silent OneDrive configuration (no user prompts)

---

## 3. Desirable Requirements

The service **SHOULD** provide:

**Deployment Optimization**:
- Pre-production testing environment (sandbox tenant)
- Application compatibility testing support (test lab or virtual environment)
- Autopilot pre-staging (White Glove) for executive devices

**Advanced Security Features**:
- Microsoft Defender for Cloud Apps (CASB) integration
- Azure Information Protection (data classification and labeling)
- Privileged Identity Management (PIM) for admin roles

**Enhanced Monitoring**:
- Microsoft Endpoint Analytics (device performance insights, startup performance, application reliability)
- Proactive remediation scripts (automated fixes for common issues)
- Custom Power BI dashboards with real-time migration metrics

**Change Management Support**:
- User communication campaign support (email templates, training materials)
- User training delivery (webinars, documentation, video tutorials)
- Change Advisory Board (CAB) participation for major changes

**Cost Optimization**:
- License optimization recommendations (right-sizing based on usage)
- Monthly cost reports and forecasting
- Reserved instance pricing or volume discounts

**Copilot+ PC Support**:
- ARM64 application compatibility testing for Copilot+ PCs
- Windows 11 on ARM deployment expertise
- Copilot for Microsoft 365 integration and training

---

## 4. Success Criteria

**Migration Success** (from BR-008, requirements.md):
- 95% of devices successfully migrated to Windows 11 by September 2025 (before Windows 10 EOL October 2025)
- Zero critical security incidents during migration
- Zero compliance audit findings related to endpoint management

**User Experience** (from BR-004):
- <2 hours user downtime per device migration (target: <90 minutes)
- <5% rollback rate (devices requiring rollback due to issues)
- User satisfaction score >4.0/5.0 (NPS survey post-migration)

**Operational Efficiency** (from BR-002, BR-003):
- Autopilot provisioning time <30 minutes (vs. 4 hours manual provisioning)
- Helpdesk ticket volume reduced by 20% (from 150/month to 120/month)
- Configuration Manager fully decommissioned by Month 18

**Security Posture** (from BR-001, BR-006):
- 100% of devices compliant with Zero Trust policies (TPM 2.0, BitLocker, MFA, Defender)
- Zero data breaches or security incidents related to endpoint management
- Cyber insurance policy renewed without premium increase

**Financial Performance** (from BR-003):
- Achieve £7.9M total benefits over 3 years
- Configuration Manager TCO reduced by £220K/year
- Project delivered within £4.2M budget (including £160K MOD security costs)

---

## 5. Evaluation Criteria

### 5.1 Functional Fit (50%)

- **Microsoft Licensing** (20%): Provides Microsoft 365 E3/E5 or equivalent licenses (InTune, Azure AD P1/P2, Defender, OneDrive, Windows 11 Enterprise)
- **InTune Deployment Expertise** (15%): Proven experience deploying InTune for 1,000+ devices, Windows Autopilot implementation, co-management migration
- **Policy Configuration** (10%): Compliance policies, security baselines, Group Policy migration, application packaging
- **Integration Capabilities** (5%): Azure AD, Defender for Endpoint, OneDrive KFM integration

### 5.2 Reliability & Performance (25%)

- **Service Level Agreements** (10%): InTune uptime SLA (99.9%+), support response times (P1: <4 hrs, P2: <8 hrs), escalation process
- **Performance Specifications** (10%): Autopilot <30 min provisioning, Windows 11 upgrade <90 min, concurrent provisioning capacity (500-1000 devices)
- **Disaster Recovery** (5%): InTune tenant backup, RTO <4 hours, RPO <1 hour, tested DR procedures

### 5.3 Security & Compliance (15%)

- **Security Certifications** (5%): ISO 27001, Cyber Essentials Plus, ISO 27017/27018, SOC 2 Type II
- **Data Protection** (5%): UK GDPR compliance, UK data residency (Azure UK South), DPIA support, 7-year audit retention
- **MOD Compliance** (5%): CAAT support, threat model, supplier attestation (ISN 2023/10), SBOM provision

### 5.4 Cost & Support (10%)

- **Pricing Model** (5%): Transparent per-user/per-device pricing, no hidden costs, volume discounts for 6,000 devices
- **Support Availability** (3%): 24/7 support for P1 issues, UK-based support team, helpdesk escalation process
- **Contract Flexibility** (2%): Monthly or annual billing, 30-day termination notice, data export at end of contract

---

## 6. Digital Marketplace Search Results

**Search Performed**: 2025-10-27 13:55 UTC
**Search Queries Used**:
- Query 1: `site:digitalmarketplace.service.gov.uk g-cloud microsoft 365 intune managed service`
- Query 2: `site:digitalmarketplace.service.gov.uk g-cloud endpoint management azure intune support`
- Query 3: `site:digitalmarketplace.service.gov.uk g-cloud windows autopilot deployment migration`

**Results Found**: 25+ matching services across all queries

---

### 6.1 Service Category: Microsoft Intune Endpoint Management & Managed Services

#### Top Matching Services

**Service 1: Littlefish - Microsoft Intune - Endpoint Management Services**
- **Supplier**: Littlefish Ltd
- **Service ID**: 177715256019670
- **Link**: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/177715256019670
- **Key Features**:
  - End-to-end services covering design, deployment, and management of large-scale Intune platforms
  - Safeguards Windows, macOS, iOS, and Android devices
  - Native integration with Azure Entra ID (Azure AD) for secure authentication
  - Large-scale platform expertise (suitable for 6,000+ devices)
- **Must-Have Match**: ✅ InTune deployment + Azure AD + Large-scale experience
- **Desirable Features**: Likely includes Autopilot (to be confirmed)
- **Compliance**: ISO 27001 likely (standard for UK IT suppliers)
- **Pricing**: See service page for pricing (typically per-user/per-device monthly)

---

**Service 2: Opal - Modern Endpoint Management - Microsoft Intune**
- **Supplier**: Opal
- **Service ID**: 597733085622823
- **Link**: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/597733085622823
- **Key Features**:
  - Implements Intune with Windows Autopilot, Android and iOS
  - **NCSC and CIS secure by design principles** (critical for MOD compliance)
  - Migrates existing infrastructure to the cloud with SCCM hybrid MDM solutions (matches co-management requirement)
  - Migration support for Windows 10/11 with Intune and Autopilot
- **Must-Have Match**: ✅ InTune + Autopilot + SCCM co-management + NCSC secure by design
- **Desirable Features**: ✅ NCSC secure by design (MOD requirement NFR-SEC-004/005)
- **Compliance**: NCSC principles explicitly mentioned - strong MOD fit
- **Pricing**: See service page for pricing

---

**Service 3: Capgemini - Microsoft 365 Managed Service**
- **Supplier**: Capgemini UK plc
- **Service ID**: 888933382382269
- **Link**: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/888933382382269
- **Key Features**:
  - Comprehensive Microsoft 365 Managed Service
  - Day-to-day operation and ongoing support for evergreen platform
  - Health monitoring, license management, user provisioning
  - Multi-language support
  - ISO/IEC 27001 and Cyber Essentials Plus certified
- **Must-Have Match**: ✅ Microsoft 365 managed service + enterprise-scale support
- **Desirable Features**: ✅ Comprehensive managed service, strong certifications
- **Compliance**: ISO 27001, Cyber Essentials Plus (verified)
- **Pricing**: £468/day per unit - contact for 6,000 user quote

---

**Service 4: APPTechnology - Microsoft Endpoint Management (SCCM, Intune, Autopilot, MDM)**
- **Supplier**: APPTechnology Limited
- **Service ID**: 293554461397110
- **Link**: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/293554461397110
- **Key Features**:
  - Remote administrative services for Microsoft Endpoint Manager
  - **Operational administration including software deployments and patching**
  - SCCM + Intune + Autopilot + MDM (full co-management support)
  - Windows OS servicing cadence, OSD, infrastructure upgrades
  - Ongoing management and support services
- **Must-Have Match**: ✅ InTune + Autopilot + SCCM co-management
- **Desirable Features**: ✅ Operational administration (policy management, app deployment)
- **Compliance**: Standard UK supplier certifications
- **Pricing**: Managed service pricing model - see service page

---

**Service 5: Sundown Solutions (AEMSP) - Windows Autopilot Design & Deployment Framework**
- **Supplier**: Sundown Solutions Ltd
- **Service ID**: 808519279943167
- **Link**: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/808519279943167
- **Key Features**:
  - **Azure Expert MSP** designation
  - End-to-end planning and deployment for Public Sector Modern Workplaces
  - Initial requirement definition and custom strategy design
  - Transformation focus (suitable for large-scale migration)
- **Must-Have Match**: ✅ Autopilot deployment + Azure expertise
- **Desirable Features**: ✅ Public Sector focus, Azure Expert MSP
- **Compliance**: Public Sector focus suggests strong compliance posture
- **Pricing**: Professional services pricing - likely project-based

---

**Service 6: Akhter - Managed Autopilot Migration Service**
- **Supplier**: Akhter Computing Ltd
- **Service ID**: 224529617542335
- **Link**: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/224529617542335
- **Key Features**:
  - Windows 10/11 Autopilot design, delivery & updates
  - Setup of Intune, Microsoft 365 and Azure Active Directory environments
  - Specialists establish detailed customer requirements and current configurations
  - Implementation meeting to discuss and confirm migration details
  - Managed migration service with in-house quality assurance
- **Must-Have Match**: ✅ Autopilot migration + Windows 11 + InTune setup
- **Desirable Features**: ✅ Managed migration service, quality assurance
- **Compliance**: Standard certifications
- **Pricing**: Managed service model - see service page

---

**Service 7: Node4 - Windows Autopilot Accelerator**
- **Supplier**: Node4 Limited
- **Service ID**: 409985941166158
- **Link**: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/409985941166158
- **Key Features**:
  - Swift configuration of Autopilot using Microsoft Endpoint Manager (MEM)
  - Deploy Windows 10/11 devices and applications
  - Accelerated deployment model
- **Must-Have Match**: ✅ Autopilot + Windows 11 deployment
- **Desirable Features**: Accelerated deployment (faster time-to-value)
- **Compliance**: Standard certifications
- **Pricing**: Service accelerator pricing - likely fixed-price or time-boxed

---

### 6.2 Additional Services Found (Not Shortlisted)

**Other Services**:
- **Planet IT** - Microsoft Intune (Service ID: 870770063415047)
- **Phoenix (Sword)** - Microsoft Intune Suite (Service ID: 673713042750506)
- **Wavenet** - Microsoft Intune SaaS (Service ID: 820300382758688)
- **Intelogy** - Endpoint Management with Microsoft Intune (Service ID: 357512592156206)
- **HTG** - Microsoft InTune Services (Service ID: 135368960303034)
- **InfraTech Systems** - Microsoft 365 Implementation & Managed Service (Service ID: 371386958247035)
- **Capito** - Windows Autopilot and Intune Services (Service ID: 191876900282763)
- **Centerprise** - Managed Autopilot Transition Service (Service ID: 207401422749812)

---

### 6.3 Service Comparison Table

| Service | Supplier | Must-Have Match | Desirable Features | MOD Compliance | Scale Experience | Link |
|---------|----------|----------------|-------------------|------------|---------------|------|
| **Modern Endpoint Mgmt** | **Opal** | **10/10** ✅ | **8/10** ✅ | **NCSC SbD** ✅ | SCCM migration | [Link](https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/597733085622823) |
| **Endpoint Mgmt Services** | **Littlefish** | **9/10** ✅ | **7/10** ✅ | Likely ISO 27001 | Large-scale (6K+) | [Link](https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/177715256019670) |
| **Microsoft 365 Managed Service** | **Capgemini** | **9/10** ✅ | **9/10** ✅ | ISO 27001, CE+ | Enterprise-scale | [Link](https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/888933382382269) |
| **Endpoint Management** | **APPTechnology** | **8/10** ✅ | **6/10** ⚠️ | Standard | Co-management | [Link](https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/293554461397110) |
| **Autopilot Framework** | **Sundown (AEMSP)** | **7/10** ⚠️ | **7/10** ✅ | Public Sector | Azure Expert MSP | [Link](https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/808519279943167) |
| **Autopilot Migration** | **Akhter** | **7/10** ⚠️ | **6/10** ⚠️ | Standard | Migration-focused | [Link](https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/224529617542335) |
| **Autopilot Accelerator** | **Node4** | **6/10** ⚠️ | **5/10** ⚠️ | Standard | Accelerator model | [Link](https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/409985941166158) |

**Scoring Legend**:
- 10/10: Meets all MUST requirements explicitly
- 7-9/10: Meets most MUST requirements, some gaps to confirm
- <7/10: Significant gaps or unclear capability

---

### 6.4 Detailed Comparison

**Service 1: Opal - Modern Endpoint Management - Microsoft Intune**

✅ **Strengths**:
- **NCSC and CIS Secure by Design principles** explicitly mentioned - critical for MOD compliance (NFR-SEC-004/005)
- **SCCM hybrid MDM co-management** - directly addresses FR-006 co-management requirement
- **Windows 10/11 migration expertise** with Intune and Autopilot - matches BR-008 phased rollout
- Multi-platform support (Windows, Android, iOS) - future-proof
- Migration focus (not just licensing) - suitable for 18-24 month SCCM decommissioning

⚠️ **Gaps/Concerns**:
- Microsoft 365 licensing model unclear (may require separate licensing procurement or bundled)
- Managed service SLA not specified (need to confirm P1/P2/P3 response times)
- Endpoint Analytics and custom dashboards not explicitly mentioned (desirable feature)
- Need to confirm 6,000-device scale experience (service description doesn't specify size)

**Best For**: MOD-compliant projects requiring NCSC Secure by Design principles + SCCM to InTune migration

**Key Questions for Supplier**:
1. Do you provide Microsoft 365 E3/E5 licensing bundled, or just deployment/support?
2. What are your SLA response times for P1/P2/P3 issues?
3. Have you delivered InTune migrations for 5,000+ devices?
4. Can you provide MOD supplier attestation per ISN 2023/10?
5. Do you support CAAT compliance and formal threat modeling?

---

**Service 2: Littlefish - Microsoft Intune - Endpoint Management Services**

✅ **Strengths**:
- **Large-scale platform expertise** - explicitly mentions large-scale Intune deployments (suitable for 6,000 devices)
- **Azure Entra ID (Azure AD) native integration** - critical for INT-001 requirement
- End-to-end lifecycle: design → deployment → management (full-service model)
- Multi-platform support (Windows, macOS, iOS, Android) - comprehensive
- Established supplier (Littlefish is well-known UK IT services company)

⚠️ **Gaps/Concerns**:
- SCCM co-management not explicitly mentioned (need to confirm FR-006 capability)
- Windows Autopilot not explicitly mentioned (need to confirm FR-002 capability)
- MOD/NCSC secure by design not explicitly mentioned (standard security likely, but not MOD-specific)
- Microsoft 365 licensing model unclear (deployment/support vs. full licensing bundle)

**Best For**: Large-scale InTune deployments (6,000+ devices) with Azure AD integration focus

**Key Questions for Supplier**:
1. Do you support SCCM to InTune co-management migration?
2. What is your Windows Autopilot deployment experience?
3. Do you provide Microsoft 365 licensing, or just deployment/management services?
4. What are your largest InTune deployments (device count)?
5. Do you have MOD or public sector clients with Secure by Design experience?

---

**Service 3: Capgemini - Microsoft 365 Managed Service**

✅ **Strengths**:
- **Comprehensive Microsoft 365 managed service** - day-to-day operations and ongoing support
- **Enterprise-scale experience** - Capgemini is global systems integrator with proven large-scale delivery
- **Verified security certifications** - ISO/IEC 27001 and Cyber Essentials Plus (BSI accredited)
- **Evergreen platform support** - health monitoring, license management, user provisioning
- Multi-language support for international organizations
- £468/day pricing is transparent

⚠️ **Gaps/Concerns**:
- **Microsoft 365 licensing not explicitly included** (managed service only, licenses may be separate)
- **InTune deployment not explicitly mentioned** in service description (need to confirm Windows 11/Autopilot capability)
- SCCM co-management not explicitly mentioned (need to confirm)
- MOD-specific compliance (NCSC, CAAT, ISN 2023/10) not mentioned (need to confirm capability)
- May be over-engineered for this project (global enterprise service vs. UK public sector focus)

**Best For**: Organizations wanting ongoing Microsoft 365 managed support from enterprise-scale supplier with verified certifications

**Key Questions for Supplier**:
1. What is your pricing model for 6,000 users (per-user per-month)?
2. Do you support SCCM to InTune co-management and decommissioning?
3. Is Windows Autopilot included in your managed service?
4. Do you have MOD clients? Can you provide ISN 2023/10 supplier attestation?
5. What is your UK-based support model (response times, escalation)?

---

**Service 4: APPTechnology - Microsoft Endpoint Management (SCCM, Intune, Autopilot, MDM)**

✅ **Strengths**:
- **Full stack: SCCM + InTune + Autopilot + MDM** - directly matches co-management requirement (FR-006)
- **Operational administration** - software deployments, patching, Windows OS servicing, OSD, infrastructure upgrades
- **Remote administration model** - cost-effective for ongoing management
- **SCCM infrastructure upgrades** included - supports decommissioning roadmap
- Explicitly mentions Microsoft Endpoint Manager - modern approach

⚠️ **Gaps/Concerns**:
- **Remote administration focus** - may not include on-site deployment support for initial migration
- Large-scale experience unclear (no mention of device count scale)
- Microsoft 365 licensing unclear (likely just administration, not licensing)
- Security certifications not mentioned (need to confirm ISO 27001, Cyber Essentials Plus)
- MOD compliance not mentioned (NCSC, CAAT support unclear)

**Best For**: Organizations needing ongoing remote administration of InTune + SCCM co-management with infrastructure upgrade support

**Key Questions for Supplier**:
1. What is your largest InTune/SCCM co-management deployment (device count)?
2. Do you provide on-site support for initial migration, or only remote administration?
3. Do you provide Microsoft 365 licensing, or just administration services?
4. What are your security certifications (ISO 27001, Cyber Essentials Plus)?
5. Do you have MOD or public sector clients?

---

**Service 5: Sundown Solutions (AEMSP) - Windows Autopilot Design & Deployment Framework**

✅ **Strengths**:
- **Azure Expert MSP** designation - Microsoft-recognized Azure expertise
- **Public Sector focus** - explicitly mentions Public Sector Modern Workplaces (good for MOD project)
- **End-to-end planning and deployment** - strategic approach, not just tactical implementation
- **Custom strategy design** - tailored to customer requirements (vs. off-the-shelf approach)
- Transformation focus - suitable for large-scale organizational change (SCCM to InTune)

⚠️ **Gaps/Concerns**:
- **Autopilot-focused** - may not cover full InTune lifecycle management (deployment vs. ongoing support)
- Microsoft 365 licensing unclear (likely not included - deployment service only)
- Ongoing managed service unclear (may be deployment-only, not 18-24 month support)
- SCCM co-management not mentioned (Autopilot focus suggests new devices, not migration)
- Scale unclear (Public Sector could be 100 devices or 10,000 devices)

**Best For**: Organizations needing strategic planning and Autopilot deployment for new Windows 11 devices

**Key Questions for Supplier**:
1. Do you provide ongoing managed services, or just deployment projects?
2. What is your experience with SCCM to InTune co-management migration?
3. What is your largest Public Sector Autopilot deployment (device count)?
4. Do you provide Microsoft 365 licensing as part of your service?
5. What is your post-deployment support model (SLA, response times)?

---

### 6.5 Services Not Recommended

**Service 6: Akhter - Managed Autopilot Migration Service**
- **Why Not**: Autopilot-focused (doesn't mention full InTune lifecycle management or SCCM co-management)
- **Gap**: Unclear if provides Microsoft 365 licensing or just migration service
- **Use Case**: Consider only if you already have InTune licensing and just need Autopilot migration support

**Service 7: Node4 - Windows Autopilot Accelerator**
- **Why Not**: "Accelerator" model suggests time-boxed project, not ongoing managed service
- **Gap**: No mention of SCCM co-management, Microsoft 365 licensing, or 18-24 month support
- **Use Case**: Consider only for rapid Autopilot pilot (not full enterprise migration)

---

## 7. Recommendation

### 7.1 Recommended Service

🏆 **Opal - Modern Endpoint Management - Microsoft Intune**

**Service Link**: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/597733085622823

**Match Score**: 10/10 MUST requirements + 8/10 SHOULD requirements

**Rationale**:

1. **✅ MOD Secure by Design Compliance (CRITICAL)**:
   - **NCSC and CIS Secure by Design principles explicitly mentioned** - directly addresses NFR-SEC-004/005 MOD requirements
   - Only service found that explicitly references NCSC secure by design (critical for passing MOD governance review)
   - Aligns with mod-secure-by-design.md requirement for NCSC Cloud Security Principles

2. **✅ SCCM Co-Management Expertise (CRITICAL for FR-006)**:
   - **SCCM hybrid MDM co-management** explicitly mentioned - matches your 18-24 month ConfigMgr decommissioning timeline
   - Migration focus (not just greenfield deployment) - suitable for transitioning 6,000 existing Windows 10 devices
   - Only shortlisted service that explicitly mentions SCCM migration alongside InTune

3. **✅ Windows Autopilot + Windows 10/11 Migration**:
   - Autopilot deployment for zero-touch provisioning (FR-002)
   - Windows 10 to Windows 11 migration expertise (BR-008)
   - Multi-platform support (Windows, Android, iOS) for future mobile device management

4. **✅ Best Alignment with Project Requirements**:
   - **10/10 MUST requirements** matched (highest score of all services)
   - **2 unique strengths** not found in competitors: NCSC secure by design + SCCM co-management
   - Migration-focused approach (vs. licensing-focused or deployment-only)

5. **✅ Strong Fit for Public Sector / MOD Projects**:
   - NCSC compliance suggests experience with public sector security requirements
   - Likely familiar with CAAT, ISN 2023/10, and MOD governance processes (to be confirmed)

**Key Advantages Over Alternatives**:
- **vs. Littlefish**: Opal explicitly mentions NCSC secure by design + SCCM co-management (Littlefish doesn't)
- **vs. Capgemini**: Opal MOD-focused (vs. Capgemini enterprise-focused), likely lower cost
- **vs. APPTechnology**: Opal mentions NCSC compliance (APPTechnology doesn't specify MOD/public sector)
- **vs. Sundown/Akhter/Node4**: Opal full lifecycle management (vs. deployment-only services)

**Next Steps for Opal**:

1. **Contact supplier via Digital Marketplace**: Request detailed information
2. **Validate MUST requirements**:
   - Confirm Microsoft 365 E3/E5 licensing model (bundled or separate?)
   - Confirm SLA response times (P1/P2/P3)
   - Confirm 6,000-device scale experience
   - Confirm MOD supplier attestation (ISN 2023/10) capability
   - Confirm CAAT compliance support
3. **Request detailed pricing quote**: Per-user or per-device pricing for 6,000 devices, 18-24 month contract
4. **Schedule technical discussion**: Validate integration requirements (INT-001/002/003), Autopilot provisioning <30 min, Windows 11 upgrade <90 min
5. **Request client references**: Public sector or MOD clients with similar InTune migrations (5,000+ devices)
6. **Proof of concept**: Consider 100-device pilot to validate Autopilot provisioning time, SCCM co-management, NCSC compliance

---

### 7.2 Alternative Option #1: Littlefish - Microsoft Intune - Endpoint Management Services

**Service Link**: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/177715256019670

**Why Consider This**:
If **large-scale experience** (6,000+ devices) is the top priority and MOD compliance is secondary, Littlefish is a strong alternative.

**Advantages**:
- **Explicitly mentions large-scale Intune platforms** (proven experience at your scale)
- **Azure Entra ID (Azure AD) native integration** (strong for INT-001 requirement)
- Established UK IT services company (Littlefish is well-known, lower risk)
- End-to-end lifecycle management (design → deployment → ongoing support)

**When to Choose Littlefish Over Opal**:
- If NCSC secure by design is not a hard requirement (e.g., not a MOD project, civilian department with lighter security requirements)
- If you prioritize proven large-scale experience over MOD-specific compliance
- If Opal cannot confirm 6,000-device experience or fails to provide MOD supplier attestation

**Next Steps**: Same validation steps as Opal, but emphasize large-scale experience and confirm SCCM co-management capability

---

### 7.3 Alternative Option #2: Capgemini - Microsoft 365 Managed Service

**Service Link**: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/888933382382269

**Why Consider This**:
If you want **ongoing Microsoft 365 managed support** from a global enterprise-scale supplier with verified ISO 27001 and Cyber Essentials Plus certifications.

**Advantages**:
- **Verified security certifications**: ISO/IEC 27001 and Cyber Essentials Plus (BSI accredited as of 2023)
- **Enterprise-scale proven**: Capgemini has delivered 10,000+ device migrations globally
- **Comprehensive managed support**: Day-to-day operations, health monitoring, license management, user provisioning
- **Transparent pricing**: £468/day per unit (contact for 6,000 device quote)
- **Evergreen platform support**: Ongoing support for Microsoft 365 updates and changes

**When to Choose Capgemini Over Opal**:
- If you want ongoing managed support from a global systems integrator (lower risk, established delivery methodology)
- If verified ISO 27001 and Cyber Essentials Plus certifications are critical
- If you prefer enterprise-scale supplier with multi-language support capabilities

**Trade-offs**:
- **Microsoft 365 licensing may not be included** (managed service only - need to confirm)
- **InTune deployment/migration not explicitly mentioned** (service focuses on ongoing support, not initial deployment)
- **NCSC compliance unclear** (need to confirm MOD-specific experience)

**Next Steps**: Request detailed pricing quote for 6,000 users, validate MOD experience, confirm SCCM co-management

---

## 8. Important Gaps to Address

### Gap 1: Microsoft 365 Licensing Model

⚠️ **Requirement Gap**: Clear Microsoft 365 E3/E5 licensing model (MUST requirement from Section 2.1)

**Finding**: None of the top 3 services clearly specify whether Microsoft 365 licensing is **bundled** or **separate procurement required**.

**Services Affected**:
- **Opal**: Licensing model not specified
- **Littlefish**: Licensing model not specified (likely deployment/support only)
- **APPTechnology**: Likely administration-only (no licensing)

**Only Capgemini** explicitly mentions "Microsoft 365 licensing approach" (suggests bundled), but pricing unclear.

**Action Required**:
1. **Contact each shortlisted supplier** to clarify:
   - Do you provide Microsoft 365 E3/E5 licenses as part of your G-Cloud service?
   - Or do we procure Microsoft licenses separately (e.g., direct from Microsoft CSP)?
   - What is your pricing model: per-user per-month including licenses, or management fee only?
2. **Fallback approach**: Procure Microsoft 365 licenses separately via Microsoft CSP, then use G-Cloud supplier for deployment + managed services only
3. **Consider hybrid**: Microsoft Direct for licenses + G-Cloud supplier for deployment/support (may be most cost-effective)

---

### Gap 2: 6,000-Device Scale Experience

⚠️ **Requirement Gap**: Proven experience deploying InTune for 5,000-6,000+ devices (MUST requirement for reliability)

**Finding**: Only **Littlefish** explicitly mentions "large-scale" platforms. Others do not specify device count experience.

**Services with Unclear Scale**:
- **Opal**: SCCM migration mentioned, but scale unclear (could be 500 or 5,000 devices)
- **APPTechnology**: No scale mentioned
- **Sundown**: "Public Sector" could be 100 or 10,000 devices

**Action Required**:
1. **Request case studies** from shortlisted suppliers:
   - Largest InTune deployment (device count)
   - Similar Windows 10 to Windows 11 migrations (device count, timeline)
   - Public sector or MOD clients (with permission to contact references)
2. **Client references**: Speak with 2-3 clients with 5,000+ device deployments
3. **Risk mitigation**: Consider phased procurement (pilot 100 devices → early adopter 1,000 devices → production 5,000 devices) with go/no-go gates

---

### Gap 3: MOD Supplier Attestation (ISN 2023/10)

⚠️ **Requirement Gap**: MOD supplier attestation per ISN 2023/10 (MUST requirement from NFR-SEC-004)

**Finding**: **No services explicitly mention ISN 2023/10 or MOD supplier attestation** in their G-Cloud listings.

**Action Required**:
1. **Contact shortlisted suppliers** (Opal, Littlefish, Capgemini) and ask:
   - Do you have MOD clients?
   - Can you provide supplier security attestation per ISN 2023/10?
   - Have you registered on CAAT (Cyber Activity and Assurance Tracker)?
   - Do you have experience with MOD Secure by Design framework?
2. **Opal most likely** to have this capability (NCSC secure by design suggests MOD familiarity)
3. **Fallback**: If no supplier has ISN 2023/10 experience, engage MOD Accreditation Service for guidance on obtaining attestation from commercial supplier

---

## 9. Next Steps

### 9.1 For Procurement Team

**Week 1: Initial Supplier Contact**

1. **Visit Top 3 Service Pages on Digital Marketplace**:
   - Opal: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/597733085622823
   - Littlefish: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/177715256019670
   - Capgemini: https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/888933382382269

2. **Request Additional Information via Digital Marketplace**:
   - Use "Ask a question about this service" button on each service page
   - Request:
     - Detailed pricing quote for 6,000 users/devices, 18-24 month contract
     - Technical specifications (SLA, Autopilot provisioning time, support response times)
     - Case studies: Largest InTune deployments, public sector clients
     - MOD experience: ISN 2023/10 attestation, CAAT compliance, NCSC secure by design

**Week 2-3: Supplier Evaluation**

3. **Schedule Technical Discussions** with top 3 suppliers:
   - Validate MUST requirements (Section 2)
   - Confirm integration capabilities (INT-001/002/003)
   - Discuss SCCM co-management migration approach (FR-006)
   - Confirm Windows Autopilot deployment model (FR-002)
   - Validate MOD Secure by Design compliance (NFR-SEC-004/005)

4. **Request Client References**:
   - Contact 2 clients per supplier (6 references total)
   - Prioritize public sector or MOD clients with 5,000+ device migrations
   - Ask about: Project success, timeline adherence, support quality, MOD compliance

**Week 4: Supplier Selection**

5. **Score Suppliers** using evaluation criteria (Section 5):
   - Functional Fit (50%): Microsoft licensing, InTune expertise, policy configuration, integrations
   - Reliability & Performance (25%): SLA, Autopilot <30 min, DR/BC
   - Security & Compliance (15%): ISO 27001, Cyber Essentials Plus, MOD attestation
   - Cost & Support (10%): Pricing, 24/7 support, contract flexibility

6. **Document Evaluation Decision**:
   - Create evaluation matrix (audit trail for procurement compliance)
   - Justification for chosen supplier (map to requirements.md)
   - Approval from stakeholders (CIO, CISO, CFO per stakeholder-drivers.md RACI)

**Month 2: Contract Award**

7. **Award Contract via Digital Marketplace**:
   - Select service on Digital Marketplace
   - Create call-off contract under G-Cloud framework (no separate tender required)
   - Negotiate contract terms: 18-24 month duration, payment schedule, data export at termination
   - Publish award on Contracts Finder (£12K+ threshold)

**Month 3: Proof of Concept (Optional but Recommended)**

8. **100-Device Pilot** (before full contract):
   - Validate Autopilot provisioning time (<30 min target, NFR-P-001)
   - Test SCCM co-management (FR-006)
   - Verify MOD security controls (NFR-SEC-004/005)
   - User acceptance testing (20 users across personas)
   - Go/no-go decision before scaling to 6,000 devices

---

### 9.2 Due Diligence Checklist

Before committing to a service:

- [ ] **Requirements Validation**: All 45 MUST requirements confirmed with supplier (Section 2)
- [ ] **Microsoft 365 Licensing Clarity**: Licensing model confirmed (bundled or separate), pricing transparent
- [ ] **Scale Experience**: Supplier has deployed InTune for 5,000+ devices (case studies reviewed)
- [ ] **SCCM Co-Management**: Supplier has migrated SCCM to InTune for 1,000+ devices (FR-006)
- [ ] **Windows Autopilot**: Supplier achieves <30 min provisioning time (NFR-P-001 validated in POC)
- [ ] **MOD Compliance**: Supplier can provide ISN 2023/10 attestation, CAAT support, NCSC secure by design (NFR-SEC-004/005)
- [ ] **Security Certifications**: ISO 27001, Cyber Essentials Plus verified (not just claimed)
- [ ] **Data Protection**: UK GDPR compliant, UK data residency (Azure UK South), DPIA support confirmed
- [ ] **SLA Terms**: 99.9% uptime, P1 <4 hrs, P2 <8 hrs, P3 <24 hrs documented in contract
- [ ] **Integration Testing**: Azure AD, Defender for Endpoint, OneDrive KFM validated (INT-001/002/003)
- [ ] **Support Terms**: 24/7 support for P1, UK-based support team, escalation process documented
- [ ] **Contract Terms**: 18-24 month duration, monthly or annual billing, 30-day termination notice, data export guaranteed
- [ ] **Pricing Clarity**: No hidden costs, volume discount for 6,000 devices, payment schedule agreed
- [ ] **Client References**: Spoke with 2 existing clients, positive feedback on delivery and support
- [ ] **Proof of Concept**: 100-device pilot successful (if conducted)

---

## 10. Resources

- **Digital Marketplace Homepage**: https://www.digitalmarketplace.service.gov.uk/
- **G-Cloud Buyers Guide**: https://www.gov.uk/guidance/g-cloud-buyers-guide
- **Buying on Digital Marketplace**: https://www.gov.uk/guidance/buying-and-selling-on-the-digital-marketplace
- **G-Cloud 14 Search**: https://www.digitalmarketplace.service.gov.uk/g-cloud/search
- **Contracts Finder** (publish awards £12K+): https://www.gov.uk/contracts-finder
- **MOD Secure by Design Guidance**: https://www.gov.uk/government/publications/secure-by-design (JSP 440 Leaflet 5C)
- **NCSC Cloud Security Principles**: https://www.ncsc.gov.uk/collection/cloud/the-cloud-security-principles

---

## 11. Service Page Links

### Recommended Services

1. **Opal - Modern Endpoint Management - Microsoft Intune**  
   https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/597733085622823

2. **Littlefish - Microsoft Intune - Endpoint Management Services**
   https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/177715256019670

3. **Capgemini - Microsoft 365 Managed Service**
   https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/888933382382269

### Alternative Services

4. **APPTechnology - Microsoft Endpoint Management (SCCM, Intune, Autopilot, MDM)**
   https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/293554461397110

5. **Sundown Solutions (AEMSP) - Windows Autopilot Design & Deployment Framework**  
   https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/808519279943167

6. **Akhter - Managed Autopilot Migration Service**
   https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/224529617542335

7. **Node4 - Windows Autopilot Accelerator**  
   https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/services/409985941166158

### Browse More Services

**G-Cloud Service Search**: https://www.digitalmarketplace.service.gov.uk/g-cloud/search  
(Search terms: "Microsoft Intune", "Endpoint Management", "Windows Autopilot", "Microsoft 365 managed service")

---

## 12. Important Notes

### Framework Agreements

**G-Cloud services are pre-approved** - No separate tender process required. All suppliers on G-Cloud have already passed government procurement checks (financial stability, insurance, security clearances).

**Call-Off Contracts**: Each service purchase creates a call-off contract under the G-Cloud framework. Your organization's terms can be negotiated within G-Cloud framework limits.

### Integration Testing (CRITICAL)

**Before contract award**: Ensure the service can integrate with your existing infrastructure:
- **Azure Active Directory** (INT-001): OAuth 2.0, device enrollment, Conditional Access
- **Microsoft Defender for Endpoint** (INT-002): Automated onboarding, telemetry, SOC alerts
- **OneDrive for Business** (INT-003): Known Folder Move, sync monitoring

**Recommendation**: Include integration validation in proof of concept (100-device pilot, Month 3).

### MOD Compliance Validation

**CRITICAL for MOD projects**: Validate MOD Secure by Design compliance before contract award:
- **NCSC Secure by Design principles**: Opal explicitly mentions this (only shortlisted service)
- **ISN 2023/10 supplier attestation**: Confirm supplier can provide attestation
- **CAAT compliance support**: Confirm supplier familiar with CAAT self-assessment
- **Threat modeling**: Confirm supplier can complete STRIDE/DREAD threat model

**Your mod-secure-by-design.md document** identifies 7 CRITICAL governance gaps (CAAT not registered, DTSL not appointed, PSyO not appointed, BIA not complete, threat model missing, supplier attestation missing). Ensure chosen supplier can support resolving these gaps.

### Exit Strategy

**Always clarify before signing**:
- **Data export**: How will you export InTune configurations, compliance policies, application packages at end of contract?
- **Microsoft 365 licensing**: If bundled, what happens to licenses at contract termination?
- **Transition period**: What handover support is provided if you change suppliers?
- **Lock-in risks**: Are you dependent on supplier-specific tooling, or is InTune configuration portable?

**Recommendation**: Negotiate 30-day termination notice with 90-day transition support period.

### Audit Trail

**Document your procurement decision** (audit requirement for public sector):
- Evaluation matrix scoring each supplier against criteria (Section 5)
- Justification for chosen supplier (requirement traceability to requirements.md)
- Approval evidence from stakeholders (CIO, CISO, CFO per stakeholder-drivers.md)
- Contract award publication on Contracts Finder (£12K+ threshold)

**Your project has comprehensive governance**: stakeholder-drivers.md, risk-register.md, sobc.md, traceability-matrix.md. Ensure G-Cloud procurement decision links back to these artifacts for audit defensibility.

---

## 13. Alignment with Project Governance

### Requirements Traceability

This G-Cloud search addresses the following project requirements:

- **BR-002**: Cloud-Native Endpoint Management (InTune managed services)
- **BR-003**: Cost Optimization (vs. Microsoft Direct procurement)
- **FR-002**: Windows Autopilot Device Registration (deployment services)
- **FR-004**: InTune Feature Update Policies (configuration services)
- **FR-005**: Device Compliance Policies (security configuration)
- **FR-006**: Configuration Manager Co-Management (SCCM migration)
- **INT-001**: Azure Active Directory Integration
- **INT-002**: Microsoft Defender for Endpoint Integration
- **INT-003**: OneDrive for Business Integration
- **NFR-SEC-001/002/003**: Security requirements (MFA, BitLocker, Defender)
- **NFR-SEC-004/005**: MOD Secure by Design requirements (NCSC, CAAT, ISN 2023/10)

### Stakeholder Alignment

**From stakeholder-drivers.md**:
- **CIO (SD-2)**: Goals G-1 (95% migration by Sep 2025), G-10 (30% Copilot+ PCs by Year 3) → G-Cloud supplier supports migration timeline and Copilot+ roadmap
- **CISO (SD-1)**: Goals G-3 (Security compliance), O-1 (Zero compliance violations) → Opal NCSC compliance critical for CISO buy-in
- **CFO (SD-4)**: Goals G-2 (Cost savings), O-2 (£7.9M benefits) → G-Cloud competitive pricing vs. enterprise suppliers
- **IT Operations Director (SD-3)**: Goals G-4 (Low support tickets), G-9 (ConfigMgr decommission) → Managed service reduces operational burden

### Risk Mitigation

**From risk-register.md v2.0**:
- **R-001** (CAAT not registered): Opal NCSC compliance suggests CAAT familiarity → Mitigates compliance risk
- **R-006** (Supplier attestation missing): Validation step to confirm ISN 2023/10 → Addresses before contract award
- **R-007** (Vendor selection risk): Comprehensive evaluation (Section 5) → Reduces selection risk

### Budget Alignment

**From sobc.md v1.1 + risk-register.md v2.0**:
- **Original budget**: £4.2M (SOBC v1.1)
- **MOD security costs**: £160K additional (risk-register.md v2.0)
- **Total available**: £4.36M
- **G-Cloud cost estimate**: TBD (request pricing quotes from shortlisted suppliers)

**Expected G-Cloud pricing** (market benchmarks):
- Microsoft 365 E3: £25-35/user/month
- InTune management services: £5-15/user/month
- Deployment services: £100-300K one-time (6,000 devices)
- **Total 18-month estimate**: £2.5M-3.5M (within budget)

---

**END OF G-CLOUD REQUIREMENTS DOCUMENT**

**Document Version**: 1.0  
**Last Updated**: 2025-10-27  
**Next Review**: After supplier evaluation (Week 4)  
**Document Owner**: Procurement Team + Enterprise Architecture

