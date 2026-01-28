# Wardley Map: Windows 10 to Windows 11 Migration - Procurement Strategy

**Project**: 001-windows-11-migration-intune
**Date**: 2025-10-15
**Author**: Enterprise Architecture Team
**Purpose**: Strategic build vs buy analysis for vendor procurement and InTune cloud transformation

---

## Map Visualization

**View this map**: Paste the map code below into [https://create.wardleymaps.ai](https://create.wardleymaps.ai)

```wardley
title Windows 10 to 11 Migration - Procurement Strategy

anchor End Users [0.95, 0.63]

annotation 1 [0.42, 0.42] Build Custom - Competitive Advantage
annotation 2 [0.88, 0.88] Buy Cloud Services - Commodity
annotation 3 [0.68, 0.78] Procure Products via RFP
note Vendor delivers HLD/DLD per SOW [0.15, 0.25]

component End Users [0.95, 0.20]
component Secure Productive Endpoints [0.92, 0.25]
component Zero Trust Security Posture [0.88, 0.38]
component Cloud-Native Management [0.85, 0.42]
component Migration Wave Orchestration [0.82, 0.45]
component Hardware Compatibility Assessment [0.75, 0.48]
component Application Compatibility Testing [0.72, 0.46]
component User Training and Communication [0.70, 0.44]
component Copilot+ PC Strategy [0.68, 0.35]

component Microsoft InTune [0.62, 0.88]
component Windows Autopilot [0.60, 0.85]
component Azure Active Directory [0.58, 0.90]
component Microsoft Defender for Endpoint [0.56, 0.87]
component OneDrive for Business [0.54, 0.92]
component Conditional Access Policies [0.52, 0.75]
component Windows Update for Business [0.50, 0.82]

component Configuration Manager Co-Management [0.48, 0.55]
component GPO to InTune Migration [0.46, 0.52]
component Application Packaging [0.44, 0.58]
component InTune Policy Configuration [0.42, 0.62]
component Security Baseline Deployment [0.40, 0.72]

component Windows 11 Feature Updates [0.35, 0.88]
component BitLocker Encryption [0.33, 0.92]
component TPM 2.0 Hardware Attestation [0.31, 0.90]
component Known Folder Move [0.29, 0.85]

component Azure Cloud Platform [0.25, 0.95]
component Windows 11 OS [0.23, 0.90]
component Microsoft 365 E3 E5 Licensing [0.21, 0.88]

End Users -> Secure Productive Endpoints
Secure Productive Endpoints -> Zero Trust Security Posture
Secure Productive Endpoints -> Cloud-Native Management
Secure Productive Endpoints -> Migration Wave Orchestration
Cloud-Native Management -> Microsoft InTune
Cloud-Native Management -> Windows Autopilot
Cloud-Native Management -> Azure Active Directory
Zero Trust Security Posture -> Microsoft Defender for Endpoint
Zero Trust Security Posture -> Conditional Access Policies
Zero Trust Security Posture -> BitLocker Encryption
Zero Trust Security Posture -> TPM 2.0 Hardware Attestation
Migration Wave Orchestration -> Hardware Compatibility Assessment
Migration Wave Orchestration -> Application Compatibility Testing
Migration Wave Orchestration -> User Training and Communication
Migration Wave Orchestration -> Copilot+ PC Strategy
Microsoft InTune -> InTune Policy Configuration
Microsoft InTune -> Configuration Manager Co-Management
Microsoft InTune -> Windows Update for Business
Microsoft InTune -> Azure Cloud Platform
Windows Autopilot -> Azure Active Directory
Windows Autopilot -> InTune Policy Configuration
Azure Active Directory -> Azure Cloud Platform
Microsoft Defender for Endpoint -> Azure Cloud Platform
OneDrive for Business -> Known Folder Move
OneDrive for Business -> Azure Cloud Platform
Conditional Access Policies -> Azure Active Directory
Conditional Access Policies -> InTune Policy Configuration
Configuration Manager Co-Management -> GPO to InTune Migration
GPO to InTune Migration -> InTune Policy Configuration
Application Compatibility Testing -> Application Packaging
Application Packaging -> InTune Policy Configuration
Security Baseline Deployment -> InTune Policy Configuration
Windows Update for Business -> Windows 11 Feature Updates
BitLocker Encryption -> TPM 2.0 Hardware Attestation
Windows 11 Feature Updates -> Windows 11 OS
Windows 11 OS -> Azure Cloud Platform
Azure Cloud Platform -> Microsoft 365 E3 E5 Licensing

pipeline Configuration Manager Co-Management [0.48, 0.55, 0.25]
pipeline Copilot+ PC Strategy [0.68, 0.35, 0.65]

evolve Microsoft InTune 0.92 label Moving to utility
evolve Windows Autopilot 0.90 label Standardizing
evolve Copilot+ PC Strategy 0.65 label Product in 18m

style wardley
```

---

## Evolution Stages Reference

| Stage | Maturity | Characteristics | Strategic Actions |
|-------|----------|-----------------|-------------------|
| **Genesis** (0.00 - 0.25) | Novel, uncertain, rapidly changing | - Unique and rare<br>- Poorly understood<br>- Rapid change<br>- High uncertainty<br>- Future value uncertain | - R&D focus<br>- Accept failure<br>- Explore and experiment<br>- Build in-house if strategic |
| **Custom** (0.25 - 0.50) | Emerging, growing understanding | - Bespoke solutions<br>- Artisanal development<br>- Competitive advantage<br>- Requires significant skill<br>- Still evolving rapidly | - Invest in differentiation<br>- Build custom if competitive advantage<br>- Patent/protect IP<br>- Hire specialists |
| **Product** (0.50 - 0.75) | Maturing, good/rental services | - Products with feature differentiation<br>- Rental models<br>- Slower evolution<br>- Defined practices<br>- Training available | - Buy products<br>- Compare features<br>- Use market leaders<br>- Standardize where possible |
| **Commodity** (0.75 - 1.00) | Industrialized, utility | - Standardized<br>- Volume operations<br>- Cost of deviation high<br>- Utility services<br>- Highly evolved | - Use commodity/utility<br>- Cloud services<br>- Outsource/procure<br>- Focus on cost efficiency |

---

## Component Inventory

### User Needs (Top of Map - High Visibility)

| Component | Visibility | Evolution | Stage | Description | Strategic Notes |
|-----------|-----------|-----------|-------|-------------|-----------------|
| End Users | 0.95 | 0.20 | Genesis | Organization's workforce requiring secure, productive endpoints | User need evolving from on-premises to cloud-native |
| Secure Productive Endpoints | 0.92 | 0.25 | Genesis-Custom | Business requirement: Zero Trust, compliant, modern OS | Strategic objective - drives all migration decisions |
| Zero Trust Security Posture | 0.88 | 0.38 | Custom | TPM 2.0, BitLocker, MFA, Conditional Access, Defender for Endpoint | Competitive advantage through security maturity |
| Cloud-Native Management | 0.85 | 0.42 | Custom | Transition from on-premises ConfigMgr to cloud InTune | Strategic transformation - enables remote workforce |
| Migration Wave Orchestration | 0.82 | 0.45 | Custom | Phased rollout: Pilot → Early Adopters → Production waves | Custom process requiring vendor expertise |

### Supporting Capabilities (Mid-Level Visibility)

| Component | Visibility | Evolution | Stage | Description | Strategic Notes |
|-----------|-----------|-----------|-------|-------------|-----------------|
| Hardware Compatibility Assessment | 0.75 | 0.48 | Custom | Assess Windows 11 hardware requirements (TPM 2.0, UEFI, CPU) | Emerging practice, vendor delivers per SOW |
| Application Compatibility Testing | 0.72 | 0.46 | Custom | Test top 100 apps in Windows 11 test environment | Requires vendor test lab setup |
| User Training and Communication | 0.70 | 0.44 | Custom | Change management, training materials, helpdesk enablement | Custom to organizational culture |
| Copilot+ PC Strategy | 0.68 | 0.35 | Custom (moving to Product) | AI-powered devices with NPU (30% Year 1, 70% Year 2) | Emerging technology, becoming product |
| Microsoft InTune | 0.62 | 0.88 | Commodity (utility) | Cloud-native endpoint management (MDM/MAM) | Buy - Microsoft cloud service (SaaS) |
| Windows Autopilot | 0.60 | 0.85 | Commodity (utility) | Zero-touch device provisioning service | Buy - Microsoft cloud service |
| Azure Active Directory | 0.58 | 0.90 | Commodity (utility) | Cloud identity and access management | Buy - Microsoft cloud service |
| Microsoft Defender for Endpoint | 0.56 | 0.87 | Commodity (utility) | EDR, threat protection, security analytics | Buy - Microsoft cloud service |
| OneDrive for Business | 0.54 | 0.92 | Commodity (utility) | Cloud storage, Known Folder Move, data protection | Buy - Microsoft cloud service |
| Conditional Access Policies | 0.52 | 0.75 | Product | Risk-based access control enforcing compliance | Buy - Azure AD Premium P1/P2 feature |
| Windows Update for Business | 0.50 | 0.82 | Commodity | Cloud-based Windows update management via InTune | Buy - included in InTune licensing |

### Infrastructure Components (Low Visibility - Build by Vendor)

| Component | Visibility | Evolution | Stage | Description | Strategic Notes |
|-----------|-----------|-----------|-------|-------------|-----------------|
| Configuration Manager Co-Management | 0.48 | 0.55 | Product (transitional) | Hybrid management during 18-month transition | Buy/Configure - Microsoft product, vendor implements |
| GPO to InTune Migration | 0.46 | 0.52 | Product | Group Policy Analytics tool for GPO conversion | Buy - InTune feature, vendor executes migration |
| Application Packaging | 0.44 | 0.58 | Product | Win32 app packaging for InTune deployment | Build - Vendor creates .intunewin packages |
| InTune Policy Configuration | 0.42 | 0.62 | Product | Compliance, configuration profiles, security baseline | Build - Vendor configures InTune policies (HLD/DLD) |
| Security Baseline Deployment | 0.40 | 0.72 | Product | Microsoft Security Baseline for Windows 11 | Buy - Microsoft baseline, vendor customizes |
| Windows 11 Feature Updates | 0.35 | 0.88 | Commodity | In-place upgrade from Windows 10 to Windows 11 | Buy - Microsoft feature update via InTune |
| BitLocker Encryption | 0.33 | 0.92 | Commodity | AES-256 full disk encryption | Buy - Windows 11 built-in feature |
| TPM 2.0 Hardware Attestation | 0.31 | 0.90 | Commodity | Hardware-based security chip validation | Buy - Hardware requirement, InTune attestation |
| Known Folder Move | 0.29 | 0.85 | Commodity | OneDrive KFM for Desktop, Documents, Pictures | Buy - OneDrive feature, InTune policy deployment |
| Azure Cloud Platform | 0.25 | 0.95 | Commodity | Azure infrastructure for InTune, Azure AD, Defender | Buy - Microsoft Azure cloud |
| Windows 11 OS | 0.23 | 0.90 | Commodity | Windows 11 22H2/23H2/24H2 feature updates | Buy - Microsoft 365 E3/E5 licensing |
| Microsoft 365 E3/E5 Licensing | 0.21 | 0.88 | Commodity | InTune, Azure AD Premium P1, Defender, OneDrive licensing | Buy - Existing Microsoft 365 licenses |

---

## Evolution Analysis

### Components in Genesis (0.00 - 0.25)

**Novel, unproven, high uncertainty**

| Component | Current Position | Risk | Opportunity | Action |
|-----------|------------------|------|-------------|--------|
| End Users (User Need) | 0.20 | User resistance to change, productivity disruption | Enable remote workforce, improve security posture | Phased rollout, change management, user training |
| Secure Productive Endpoints | 0.25 | Windows 10 EOL Oct 2025 creates security risk | Modern Zero Trust architecture, Copilot+ AI features | Migration completion by Sep 2025 (6 weeks before EOL) |

**Strategic Recommendations**:
- ✅ Accept user resistance - invest in change management
- ✅ Phased rollout to de-risk migration (Pilot → Early Adopters → Production)
- ✅ User training and communication critical (BR-007, FR-014)
- ✅ Executive sponsorship required for organizational change

---

### Components in Custom (0.25 - 0.50)

**Emerging practices, competitive advantage**

| Component | Current Position | Competitive Advantage? | Action |
|-----------|------------------|------------------------|--------|
| Zero Trust Security Posture | 0.38 | ✅ **YES** - Security maturity differentiator | Build - Vendor designs Zero Trust architecture per SOW |
| Cloud-Native Management | 0.42 | ✅ **YES** - Operational excellence, remote workforce enablement | Build - Vendor configures InTune, decommissions ConfigMgr |
| Migration Wave Orchestration | 0.45 | ✅ **YES** - Phased approach reduces risk, enables learning | Build - Vendor creates migration runbooks, wave planning |
| Application Compatibility Testing | 0.46 | ⚠️ **PARTIAL** - Reduces risk but not differentiator | Build - Vendor sets up test lab, executes testing |
| Hardware Compatibility Assessment | 0.48 | ⚠️ **PARTIAL** - Standard assessment process | Build - Vendor runs assessment, creates device inventory |
| User Training and Communication | 0.44 | ⚠️ **PARTIAL** - Standard change management | Build - Vendor creates training materials, helpdesk training |
| Copilot+ PC Strategy | 0.35 | ✅ **YES** - Early adoption of AI-powered devices for productivity gains | Build - Vendor designs pilot strategy, procurement recommendations |

**Strategic Recommendations**:
- ✅ **Build** Zero Trust Security Posture - Vendor designs architecture (SOW HLD Deliverable)
- ✅ **Build** Cloud-Native Management - Vendor configures InTune, migrates from ConfigMgr
- ✅ **Build** Migration Wave Orchestration - Vendor creates custom process for org
- ✅ **Build** Copilot+ PC Strategy - Vendor designs pilot, ARM64 compatibility testing
- ✅ Invest in vendor expertise for custom components (SOW Phases 1-3)
- ✅ Document IP ownership in SOW (configurations, scripts, runbooks owned by client)

---

### Components in Product (0.50 - 0.75)

**Maturing market, feature differentiation**

| Component | Current Position | Market Options | Action |
|-----------|------------------|----------------|--------|
| Configuration Manager Co-Management | 0.55 | Microsoft Configuration Manager + InTune | Buy - Configure for 18-month transition, then decommission |
| GPO to InTune Migration | 0.52 | InTune Group Policy Analytics | Buy - Use InTune feature, vendor executes migration |
| Application Packaging | 0.58 | InTune Win32 app management | Build - Vendor packages top 20 apps as .intunewin files |
| InTune Policy Configuration | 0.62 | InTune configuration profiles, compliance policies | Build - Vendor designs and configures policies (HLD/DLD) |
| Security Baseline Deployment | 0.72 | Microsoft Security Baseline for Windows 11 | Buy - Microsoft baseline with vendor customization |
| Conditional Access Policies | 0.75 | Azure AD Premium P1/P2 | Buy - Azure AD feature, vendor configures policies |

**Strategic Recommendations**:
- ✅ **Buy** Configuration Manager (existing Microsoft product) - Configure co-management, plan decommission
- ✅ **Buy** GPO to InTune Migration tool (InTune feature) - Vendor uses Group Policy Analytics
- ✅ **Build** Application Packaging - Vendor creates custom .intunewin packages for top 20 apps
- ✅ **Build** InTune Policy Configuration - Vendor designs policies per architecture principles
- ✅ **Buy** Security Baseline - Microsoft baseline with vendor customization/deployment
- ✅ **Buy** Conditional Access - Azure AD feature, vendor configures per Zero Trust design
- ✅ Use RFP process for vendor selection (SOW evaluation criteria)
- ✅ Compare vendor proposals against architecture principles compliance

---

### Components in Commodity (0.75 - 1.00)

**Industrialized, utility services**

| Component | Current Position | Commodity Provider | Action |
|-----------|------------------|-------------------|--------|
| Microsoft InTune | 0.88 | Microsoft (SaaS) | Buy - Existing Microsoft 365 E3/E5 licensing |
| Windows Autopilot | 0.85 | Microsoft (SaaS) | Buy - Included in InTune licensing |
| Azure Active Directory | 0.90 | Microsoft (SaaS) | Buy - Existing Microsoft 365 E3/E5 licensing |
| Microsoft Defender for Endpoint | 0.87 | Microsoft (SaaS) | Buy - Existing Microsoft 365 E5 or add-on |
| OneDrive for Business | 0.92 | Microsoft (SaaS) | Buy - Existing Microsoft 365 E3/E5 licensing |
| Windows Update for Business | 0.82 | Microsoft (InTune feature) | Buy - Included in InTune licensing |
| Windows 11 Feature Updates | 0.88 | Microsoft (OS updates) | Buy - Microsoft 365 E3/E5 licensing |
| BitLocker Encryption | 0.92 | Microsoft (Windows 11 built-in) | Buy - Windows 11 Pro/Enterprise feature |
| TPM 2.0 Hardware Attestation | 0.90 | Hardware vendors (Intel, AMD, Qualcomm) | Buy - Windows 11 hardware requirement |
| Known Folder Move | 0.85 | Microsoft (OneDrive feature) | Buy - OneDrive feature, InTune policy deployment |
| Azure Cloud Platform | 0.95 | Microsoft Azure | Buy - Microsoft Azure cloud infrastructure |
| Windows 11 OS | 0.90 | Microsoft | Buy - Microsoft 365 E3/E5 licensing |
| Microsoft 365 E3/E5 Licensing | 0.88 | Microsoft | Buy - Existing licenses (no procurement needed per SOW) |

**Strategic Recommendations**:
- ✅ **NEVER build** commodity components - Use Microsoft cloud services
- ✅ **Buy** Microsoft InTune (SaaS) - Cloud-native endpoint management
- ✅ **Buy** Windows Autopilot (SaaS) - Zero-touch provisioning
- ✅ **Buy** Azure AD (SaaS) - Cloud identity management
- ✅ **Buy** Defender for Endpoint (SaaS) - EDR and threat protection
- ✅ **Buy** OneDrive (SaaS) - Cloud storage and data protection
- ✅ **Buy** Azure Cloud Platform - Infrastructure for InTune, Azure AD, Defender
- ✅ **Buy** Windows 11 OS - Microsoft 365 E3/E5 licensing (existing)
- ✅ Leverage existing Microsoft 365 E3/E5 licenses (no new licensing per SOW Section 2.2)
- ✅ Focus vendor effort on configuration and deployment, not building infrastructure
- ❌ **AVOID** custom endpoint management solutions (waste of investment)
- ❌ **AVOID** custom identity providers (use Azure AD)
- ❌ **AVOID** custom storage solutions (use OneDrive)

---

## Build vs Buy Analysis

### Build (Vendor Delivers - In-House Ownership)

**Candidates for Building (Vendor Implementation, Client Ownership)**:

| Component | Evolution Stage | Rationale | Risk | Investment | Owner |
|-----------|----------------|-----------|------|------------|-------|
| Zero Trust Security Architecture | Custom (0.38) | Competitive advantage through security maturity, compliance differentiator | Medium - Requires vendor expertise | SOW Phase 1-2 | Vendor designs, client owns configurations |
| Cloud-Native Management Transformation | Custom (0.42) | Strategic transformation from on-premises to cloud, operational excellence | High - ConfigMgr decommission within 18 months | SOW Phases 1-5 | Vendor implements, client owns InTune tenant |
| Migration Wave Orchestration | Custom (0.45) | Custom process for organization-specific phased rollout | Medium - Vendor delivers runbooks | SOW Phases 3-4 | Vendor creates, client owns process |
| Copilot+ PC Pilot Strategy | Custom (0.35) | Early adoption of AI-powered devices for competitive advantage | High - ARM64 app compatibility, new technology | SOW Phase 3 | Vendor designs, client owns strategy |
| InTune Policy Configuration | Product (0.62) | Custom policies aligned with architecture principles | Low - Well-understood InTune features | SOW Phase 2 | Vendor configures, client owns policies |
| Application Packaging | Product (0.58) | Custom .intunewin packages for top 20 business apps | Low - Standard InTune app management | SOW Phase 2 | Vendor packages, client owns .intunewin files |
| User Training and Communication Materials | Custom (0.44) | Custom to organizational culture and change management | Medium - Requires org knowledge | SOW Phase 3 | Vendor creates, client owns materials |

**Build Criteria Met**:
- ✅ Genesis/Custom stage (< 0.50 evolution) for strategic components
- ✅ Provides competitive advantage (Zero Trust, Cloud-Native Management, Copilot+ early adoption)
- ✅ Core to business differentiator (Security, Operational Excellence, AI-powered productivity)
- ✅ No suitable market alternatives for custom organizational processes
- ✅ Vendor skills available (Microsoft Gold Partner, InTune expertise per SOW MQ-1 to MQ-6)
- ✅ Strategic IP ownership important (SOW Section 9.5: Work product becomes client property)

---

### Buy (Procurement via Microsoft Licensing)

**Candidates for Buying (Already Procured)**:

| Component | Evolution Stage | Market Options | Rationale | Procurement Route |
|-----------|----------------|----------------|-----------|-------------------|
| Microsoft InTune | Commodity (0.88) | Microsoft (SaaS) | Cloud-native MDM/MAM, industry standard | Existing Microsoft 365 E3/E5 licenses (no procurement) |
| Windows Autopilot | Commodity (0.85) | Microsoft (SaaS) | Zero-touch provisioning, Microsoft utility | Included in InTune licensing (no procurement) |
| Azure Active Directory | Commodity (0.90) | Microsoft (SaaS) | Cloud identity, industry standard | Existing Microsoft 365 E3/E5 licenses (no procurement) |
| Microsoft Defender for Endpoint | Commodity (0.87) | Microsoft (SaaS) | EDR and threat protection, Microsoft security suite | Existing Microsoft 365 E5 or add-on (no procurement) |
| OneDrive for Business | Commodity (0.92) | Microsoft (SaaS) | Cloud storage, Known Folder Move, data protection | Existing Microsoft 365 E3/E5 licenses (no procurement) |
| Azure Cloud Platform | Commodity (0.95) | Microsoft Azure | Cloud infrastructure for InTune, Azure AD, Defender | Existing Azure consumption (no procurement) |
| Windows 11 OS | Commodity (0.90) | Microsoft | Modern operating system with TPM 2.0, Secure Boot requirements | Existing Microsoft 365 E3/E5 licenses (no procurement) |
| Configuration Manager | Product (0.55) | Microsoft (on-premises product) | Transitional co-management during 18-month migration | Existing licenses (decommission Month 24 per SOW) |
| Security Baseline | Product (0.72) | Microsoft | Microsoft Security Baseline for Windows 11 | Free from Microsoft (vendor customizes) |
| Conditional Access | Product (0.75) | Microsoft (Azure AD Premium P1/P2) | Risk-based access control | Included in Microsoft 365 E3/E5 licenses (no procurement) |

**Buy Criteria Met**:
- ✅ Product/Commodity stage (> 0.50 evolution)
- ✅ Mature market with dominant vendor (Microsoft)
- ✅ Not a competitive differentiator (industry-standard tools)
- ✅ Cost of building >> cost of buying (cloud SaaS model)
- ✅ Time to market critical (Windows 10 EOL Oct 14, 2025)
- ✅ Skills available via vendor (SOW MQ-2: 3+ years InTune experience)
- ✅ Existing licensing eliminates procurement (SOW Section 2.2: Client has Microsoft 365 E3/E5)

**Procurement Route**: **No procurement required** - Existing Microsoft 365 E3/E5 licenses cover InTune, Azure AD Premium P1, OneDrive, Windows 11 Enterprise, Defender for Endpoint (if E5).

**Vendor Responsibility**: Configure and deploy existing Microsoft cloud services (SOW Deliverables 4.1-4.6).

---

### Rent/SaaS (Utility Services - Already Licensed)

**Candidates for SaaS/Cloud (Existing Microsoft 365 Licensing)**:

| Component | Evolution Stage | Provider | Rationale | Procurement Route |
|-----------|----------------|----------|-----------|-------------------|
| Microsoft InTune | Commodity (0.88) | Microsoft | Cloud-native MDM/MAM SaaS | Included in Microsoft 365 E3/E5 (no procurement) |
| Windows Autopilot | Commodity (0.85) | Microsoft | Zero-touch provisioning SaaS | Included in InTune licensing (no procurement) |
| Azure Active Directory | Commodity (0.90) | Microsoft | Cloud identity SaaS | Included in Microsoft 365 E3/E5 (no procurement) |
| Microsoft Defender for Endpoint | Commodity (0.87) | Microsoft | EDR and threat protection SaaS | Included in Microsoft 365 E5 or add-on |
| OneDrive for Business | Commodity (0.92) | Microsoft | Cloud storage SaaS (1TB+ per user) | Included in Microsoft 365 E3/E5 (no procurement) |
| Azure Cloud Platform | Commodity (0.95) | Microsoft Azure | Infrastructure as a Service (IaaS) | Existing Azure consumption-based pricing |

**Rent Criteria Met**:
- ✅ Commodity stage (> 0.75 evolution)
- ✅ Utility services available (Microsoft cloud SaaS)
- ✅ Pay-as-you-go model (Azure consumption-based for infrastructure)
- ✅ Low switching costs (Microsoft ecosystem integration)
- ✅ Standardized functionality sufficient (InTune, Azure AD, OneDrive standard features)
- ✅ Operational burden not desired (Microsoft manages infrastructure, SLA 99.9% per SOW)

**Strategic Advantage**: Existing Microsoft 365 E3/E5 licensing means **$0 incremental software procurement cost**. Focus vendor budget on professional services (configuration, migration, training) rather than software licensing.

---

## Inertia and Barriers to Change

**Inertia** = resistance to evolution due to existing practices, skills, or investments

| Component | Current Evolution | Desired Evolution | Inertia Factor | Barrier Description | Mitigation Strategy |
|-----------|-------------------|-------------------|----------------|---------------------|---------------------|
| Configuration Manager (On-Premises) | 0.55 (Product) | 0.25 (Decommission) | **HIGH** | - 10+ years of IT staff expertise in ConfigMgr<br>- Established processes for imaging, patching, app deployment<br>- Capital investment in ConfigMgr infrastructure (servers, SQL)<br>- Fear of losing control with cloud management | - Co-management for gradual transition (18 months per SOW)<br>- Vendor training on InTune for IT staff (SOW Phase 6)<br>- Document ConfigMgr decommission plan with cost savings ($[X]/year per BR-003)<br>- Pilot phase with IT staff to build confidence (SOW Phase 3) |
| Group Policy Objects (GPOs) | 0.52 (Product) | 0.62 (InTune Policies) | **MEDIUM** | - 20+ years of GPO expertise in IT staff<br>- 100+ GPOs with complex dependencies<br>- Fear of missing settings in InTune migration | - Group Policy Analytics tool for automated migration (InTune feature)<br>- Document GPO-to-InTune mapping (SOW Phase 2 deliverable)<br>- Vendor identifies unsupported GPOs with alternatives (SOW Deliverable 4.2) |
| On-Premises Active Directory | 0.52 (Product) | 0.90 (Azure AD) | **MEDIUM** | - 20+ years of on-premises AD expertise<br>- Legacy apps requiring Kerberos/NTLM authentication<br>- Hybrid AD join required during transition | - Hybrid Azure AD join permitted during transition (Principle 11)<br>- Azure AD Connect for identity sync<br>- Legacy app modernization plan (SOW Section 2.2: Out of scope) |
| User Resistance to Change | 0.20 (Genesis) | 0.50 (Adoption) | **HIGH** | - Fear of new Windows 11 interface (Start menu changes, taskbar)<br>- Productivity loss during learning curve<br>- Resistance to AI features (Copilot+ PC Recall concerns) | - Comprehensive change management (BR-007, SOW Phase 3)<br>- User training materials and webinars (SOW Deliverable 4.3)<br>- Communication timeline: T-90, T-30, T-14, T-7, T-1 days (Principle 14)<br>- User satisfaction target >80% (BR-004)<br>- Copilot+ Recall feature requires explicit user opt-in (NFR-C-001) |
| Hardware Replacement Budget | 0.48 (Custom) | 0.75 (Approved) | **MEDIUM** | - 30% of devices require replacement (non-compliant with Windows 11)<br>- Capital budget approval process<br>- CFO resistance to hardware costs | - Hardware assessment report with cost-benefit analysis (SOW Deliverable 4.1)<br>- Copilot+ PC ROI justification (10-15% productivity gains per Principle 3A)<br>- Device lifecycle extension from 3-4 years to 4-5 years (BR-003)<br>- Cost savings from ConfigMgr decommission offset hardware costs |

**De-risking Strategies**:
- ✅ **Upskilling programs**: Vendor training for IT staff on InTune, Azure AD, Windows 11 (SOW Phase 6)
- ✅ **Pilot projects**: IT staff pilot (50-100 devices) to prove approach before production (SOW Phase 3)
- ✅ **Phased migration**: Pilot → Early Adopters (10%) → Production waves (500-1000/wave) reduces risk (Principle 6)
- ✅ **Vendor expertise**: Microsoft Gold Partner with 3+ Windows 11 migration projects (SOW MQ-1 to MQ-3)
- ✅ **Change management**: Executive sponsorship, user training, helpdesk enablement (BR-007)
- ✅ **Rollback capability**: 10-day Windows.old retention for emergency rollback (Principle 15)

---

## Movement and Evolution Predictions

**Evolution Velocity** = how fast components are expected to move along evolution axis

### Next 12 Months (Q4 2024 - Q4 2025)

| Component | Current | Predicted (12m) | Velocity | Impact | Action Required |
|-----------|---------|----------------|----------|--------|-----------------|
| Microsoft InTune | 0.88 | 0.92 | Fast | Moving to pure utility, standardization across industry | Leverage commodity status, avoid custom features |
| Windows Autopilot | 0.85 | 0.90 | Medium | Becoming industry standard for zero-touch provisioning | Adopt Autopilot for all new devices (SOW Phase 2) |
| Copilot+ PC Strategy | 0.35 | 0.55 | Fast | Moving from Custom to Product as market matures, more devices available | Pilot 50-100 Copilot+ PCs in Q2 2025 (SOW Phase 3), procurement strategy for Year 2 |
| Configuration Manager | 0.55 | 0.25 | Fast (Decommission) | Decommissioned by Month 18-24 per SOW | Co-management transition, workload migration to InTune (SOW Phase 5) |
| Zero Trust Security Posture | 0.38 | 0.48 | Medium | Becoming more standardized as organizations adopt Zero Trust | Build custom architecture now while competitive advantage exists |
| Cloud-Native Management | 0.42 | 0.52 | Medium | Becoming standard practice across enterprises | Build expertise now, migrate from ConfigMgr within 18 months |
| GPO to InTune Migration | 0.52 | 0.68 | Medium | InTune policy management becoming productized | Complete migration by Month 6 (SOW Phase 2) |

### Next 24 Months (Q4 2024 - Q4 2026)

| Component | Current | Predicted (24m) | Velocity | Impact | Action Required |
|-----------|---------|----------------|----------|--------|-----------------|
| Microsoft InTune | 0.88 | 0.95 | Fast | Pure utility, no differentiation possible | Complete migration by Month 24, avoid custom development |
| Copilot+ PC Strategy | 0.35 | 0.70 | Very Fast | Moving to Product, 70% of new procurements (Principle 3A) | 30% adoption Year 1, 70% adoption Year 2 per BR-005 |
| Configuration Manager | 0.55 | 0.00 | Very Fast (Decommission) | Decommissioned by Month 24 per SOW | Infrastructure shutdown Month 24 (SOW Phase 5) |
| Zero Trust Security Posture | 0.38 | 0.58 | Medium | Becoming Product as standards emerge (NIST, CIS) | Build custom now, standardize later |
| Cloud-Native Management | 0.42 | 0.65 | Medium | Becoming Product as industry matures | 100% InTune management by Month 18 (SOW Phase 4-5) |
| Windows 11 OS | 0.90 | 0.92 | Slow | Stable commodity, feature updates (23H2 → 24H2) | Windows Update for Business management (SOW Phase 2) |

**Strategic Implications**:
- ✅ **InTune moving to utility (0.88 → 0.95)**: Use commodity, focus on policy configuration not platform development
- ✅ **Copilot+ PC fast evolution (0.35 → 0.70)**: Early adoption provides competitive advantage, move quickly
- ✅ **ConfigMgr rapid decommission (0.55 → 0.00)**: 18-month timeline aggressive but achievable with vendor support
- ✅ **Zero Trust Custom → Product (0.38 → 0.58)**: Build custom architecture now while competitive advantage exists
- ✅ **Cloud-Native Custom → Product (0.42 → 0.65)**: Build transformation expertise now, productize later

---

## Dependencies and Value Chain

**Component Dependencies** (Top-to-Bottom Flow):

```
End Users (User Need)
  └─> Secure Productive Endpoints (Strategic Objective)
      ├─> Zero Trust Security Posture (Custom - Vendor Designs)
      │   ├─> Microsoft Defender for Endpoint (Commodity - Buy Microsoft SaaS)
      │   │   └─> Azure Cloud Platform (Commodity - Buy Azure)
      │   ├─> Conditional Access Policies (Product - Buy Azure AD Premium P1/P2)
      │   │   ├─> Azure Active Directory (Commodity - Buy Microsoft SaaS)
      │   │   └─> InTune Policy Configuration (Product - Vendor Configures)
      │   ├─> BitLocker Encryption (Commodity - Windows 11 Built-in)
      │   │   └─> TPM 2.0 Hardware Attestation (Commodity - Hardware Requirement)
      │   └─> Security Baseline Deployment (Product - Microsoft Baseline, Vendor Deploys)
      │       └─> InTune Policy Configuration (Product - Vendor Configures)
      │
      ├─> Cloud-Native Management (Custom - Vendor Implements)
      │   ├─> Microsoft InTune (Commodity - Buy Microsoft SaaS)
      │   │   ├─> Azure Cloud Platform (Commodity - Buy Azure)
      │   │   └─> InTune Policy Configuration (Product - Vendor Configures)
      │   ├─> Windows Autopilot (Commodity - Buy Microsoft SaaS)
      │   │   ├─> Azure Active Directory (Commodity - Buy Microsoft SaaS)
      │   │   └─> InTune Policy Configuration (Product - Vendor Configures)
      │   ├─> Configuration Manager Co-Management (Product - Transitional, Decommission Month 24)
      │   │   └─> GPO to InTune Migration (Product - InTune Feature, Vendor Executes)
      │   │       └─> InTune Policy Configuration (Product - Vendor Configures)
      │   └─> Windows Update for Business (Commodity - InTune Feature)
      │       └─> Windows 11 Feature Updates (Commodity - Microsoft OS)
      │           └─> Windows 11 OS (Commodity - Microsoft 365 E3/E5)
      │
      └─> Migration Wave Orchestration (Custom - Vendor Delivers)
          ├─> Hardware Compatibility Assessment (Custom - Vendor Executes)
          ├─> Application Compatibility Testing (Custom - Vendor Delivers)
          │   └─> Application Packaging (Product - Vendor Creates .intunewin)
          │       └─> InTune Policy Configuration (Product - Vendor Configures)
          ├─> User Training and Communication (Custom - Vendor Creates)
          └─> Copilot+ PC Strategy (Custom - Vendor Designs)
```

**Critical Path Analysis**:

1. **Critical Path to User Value** (End Users → Secure Productive Endpoints):
   - **Path 1** (Zero Trust): Defender for Endpoint → Azure AD → Conditional Access → InTune Policies
   - **Path 2** (Cloud Management): InTune → Azure AD → Autopilot → InTune Policies
   - **Path 3** (Migration): Hardware Assessment → App Testing → InTune Policies → Windows 11 Upgrade

2. **High-Risk Dependencies**:
   - ⚠️ **InTune Policy Configuration (0.62)**: Single point of failure - all paths converge here
   - ⚠️ **Azure Active Directory (0.90)**: Critical dependency for InTune, Autopilot, Conditional Access
   - ⚠️ **Application Compatibility Testing (0.46)**: Blocker for pilot phase if apps fail
   - ⚠️ **Configuration Manager Decommission (0.55)**: 18-month deadline, high inertia risk

3. **Inertia Points Blocking Evolution**:
   - 🛑 **Configuration Manager (0.55)**: IT staff expertise, established processes, capital investment
   - 🛑 **GPO Migration (0.52)**: 100+ GPOs with complex dependencies, fear of missing settings
   - 🛑 **User Resistance (0.20)**: Change management critical to prevent migration failure

4. **Traceability to Requirements**:
   - **Zero Trust Security** → BR-001 (Security Compliance), NFR-SEC-001/002/003 (MFA, Encryption, Defender)
   - **Cloud-Native Management** → BR-002 (Cloud-Native Endpoint Management), FR-002/004/005 (Autopilot, Updates, Compliance)
   - **Migration Wave Orchestration** → BR-008 (Phased Rollout), FR-001/013 (Hardware Assessment, App Testing)
   - **Copilot+ PC Strategy** → BR-005 (Hardware Modernization), Principle 3A (Copilot+ PC Hardware)

---

## Strategic Gameplay

### Gameplay Patterns Identified

**Accelerators** (speed up evolution):
- ✅ **Microsoft InTune (0.88 → 0.95)**: Microsoft is commoditizing InTune by standardizing features across industry
  - **Gameplay**: Leverage commodity evolution, avoid custom InTune development, use standard policies
  - **Action**: Focus vendor effort on policy configuration, not platform customization (SOW Phases 1-2)

- ✅ **Copilot+ PC (0.35 → 0.70)**: Early adoption accelerates evolution to Product stage
  - **Gameplay**: Be first mover to gain productivity advantage (10-15% per Principle 3A)
  - **Action**: Pilot 50-100 Copilot+ PCs in Q2 2025, 30% adoption Year 1, 70% Year 2 (BR-005)

- ✅ **Windows Autopilot (0.85 → 0.90)**: Microsoft is standardizing Autopilot as industry best practice
  - **Gameplay**: Adopt early, avoid custom provisioning, contribute to InTune feedback
  - **Action**: All new devices via Autopilot (SOW Phase 2), zero-touch provisioning

**Tower and Moat** (protect competitive advantage):
- ✅ **Zero Trust Security Posture (0.38 - Custom)**: Build custom while competitive advantage exists
  - **Gameplay**: Invest in Zero Trust architecture now (SOW HLD Deliverable), differentiate on security maturity
  - **Action**: Vendor designs custom Conditional Access policies, Defender for Endpoint rules, device compliance
  - **Moat**: Security compliance (BR-001, BR-006) becomes competitive advantage, difficult for competitors to replicate

- ✅ **Cloud-Native Management (0.42 - Custom)**: Build transformation expertise, operational excellence differentiator
  - **Gameplay**: InTune expertise provides operational advantage over competitors still on ConfigMgr
  - **Action**: Complete ConfigMgr decommission Month 24 (SOW Phase 5), faster than competitors (18-month timeline)
  - **Moat**: Remote workforce enablement, reduced datacenter costs, faster deployment times

**Exploiting Inertia** (leverage competitors' resistance to change):
- ✅ **Competitors stuck on Configuration Manager (0.55 - Product)**:
  - **Inertia**: Competitors have 10+ years ConfigMgr investment, fear cloud migration, skills gap
  - **Opportunity**: Move to cloud-native InTune faster (18 months), gain operational advantage
  - **Action**: Aggressive ConfigMgr decommission timeline (SOW Phase 5), marketing competitive advantage

- ✅ **Competitors avoiding Copilot+ PC (0.35 - Custom)**:
  - **Inertia**: Competitors waiting for ARM64 app compatibility maturity, budget constraints
  - **Opportunity**: Early adoption of AI-powered devices for productivity gains (10-15%)
  - **Action**: Pilot Copilot+ PC in Q2 2025 (SOW Phase 3), 30% adoption Year 1 while competitors wait

**Sensing Engines** (early warning systems):
- ✅ **Monitor Copilot+ PC market (0.35 - Custom moving to Product)**:
  - **Metric**: Track ARM64 app compatibility, NPU vendor ecosystem (Qualcomm, Intel, AMD)
  - **Action**: Vendor conducts ARM64 app testing (SOW Phase 3), quarterly Copilot+ market review
  - **Threshold**: If ARM64 app compatibility >95%, accelerate Copilot+ adoption to 80% Year 2

- ✅ **Monitor InTune evolution velocity (0.88 - Commodity moving to 0.95)**:
  - **Metric**: Track Microsoft InTune feature releases, policy standardization
  - **Action**: Avoid custom InTune development, use standard policies, monitor Microsoft Ignite announcements
  - **Threshold**: If InTune reaches 0.95 (pure utility), zero differentiation possible - focus on business processes

- ✅ **Monitor Windows 10 EOL (October 14, 2025)**:
  - **Metric**: Track migration completion rate, compliance with September 1, 2025 target (6 weeks before EOL)
  - **Action**: Monthly migration dashboard (SOW Deliverable 4.4), pause/resume criteria for waves
  - **Threshold**: If <50% migrated by Month 16 (Q4 2025), escalate to executive sponsor, increase wave size

---

## Risk Analysis

### High-Risk Areas

| Risk | Component(s) Affected | Likelihood | Impact | Mitigation |
|------|----------------------|------------|--------|------------|
| **Windows 10 EOL deadline missed** | Migration Wave Orchestration, All Windows 10 devices | MEDIUM | CRITICAL | - Aggressive 24-month timeline (SOW)<br>- Target 95% completion by Sep 2025 (6 weeks before Oct 14 EOL)<br>- Pause/resume criteria for waves (>10% failure triggers pause)<br>- Rollback capability within 10 days (Principle 15) |
| **Configuration Manager decommission failure** | Configuration Manager Co-Management (0.55) | MEDIUM | HIGH | - 18-month co-management transition (SOW Phase 5)<br>- Workload migration plan (Months 0-6: Co-mgmt, Months 7-12: 80% InTune, Months 13-18: 100% InTune)<br>- Vendor experience with ConfigMgr decommission (SOW MQ-4)<br>- Phased workload transition reduces risk |
| **Application compatibility failures** | Application Compatibility Testing (0.46), Application Packaging (0.58) | MEDIUM | HIGH | - Vendor test lab setup (SOW Phase 2)<br>- Top 100 apps tested before pilot (SOW Phase 3)<br>- Remediation plan for incompatible apps (SOW Deliverable 4.3)<br>- Pilot phase validates app compatibility before production |
| **User resistance to change** | End Users (0.20), User Training (0.44) | HIGH | MEDIUM | - Comprehensive change management (BR-007, SOW Phase 3)<br>- User training materials, webinars, FAQ (SOW Deliverable 4.3)<br>- Communication timeline T-90, T-30, T-14, T-7, T-1 days<br>- User satisfaction target >80% (BR-004)<br>- Helpdesk training before pilot (SOW Phase 3) |
| **Copilot+ PC ARM64 app compatibility** | Copilot+ PC Strategy (0.35), ARM64 devices | MEDIUM | MEDIUM | - ARM64 app compatibility testing for top 20 apps (SOW Phase 3)<br>- Pilot 50-100 devices with IT staff and early adopters<br>- Option to deploy x64 Copilot+ PCs (Intel/AMD) for lower risk<br>- Fallback to standard Windows 11 devices if ARM64 issues |
| **Hardware budget approval delays** | Hardware Compatibility Assessment (0.48), Copilot+ PC Strategy | MEDIUM | MEDIUM | - Hardware assessment report with cost-benefit analysis (SOW Month 3)<br>- CFO as stakeholder with budget approval (SOW Section 2.3)<br>- ROI justification: ConfigMgr cost savings, device lifecycle extension, productivity gains<br>- Phased hardware procurement (pilot → early adopters → production) |
| **Vendor lock-in to Microsoft ecosystem** | Microsoft InTune (0.88), Azure AD (0.90), All Microsoft services | LOW | MEDIUM | - Microsoft ecosystem already established (existing M365 E3/E5 licenses)<br>- InTune is industry standard for Windows endpoint management (no viable alternatives)<br>- Azure AD integration with O365, Teams already in use<br>- Accept lock-in as strategic decision (Cloud-First principle) |
| **Skills gap: IT staff unfamiliar with InTune/Azure AD** | Cloud-Native Management (0.42), InTune Policy Configuration (0.62) | MEDIUM | MEDIUM | - Vendor training for IT staff (SOW Phase 6)<br>- Pilot phase with IT staff to build expertise (SOW Phase 3)<br>- Vendor creates runbooks and troubleshooting guides (SOW Deliverable 4.3)<br>- 90-day warranty support post-project (SOW Section 9.4) |

### Opportunities

| Opportunity | Component(s) | Potential Value | Investment Required | Action Plan |
|-------------|--------------|-----------------|---------------------|-------------|
| **Early Copilot+ PC adoption competitive advantage** | Copilot+ PC Strategy (0.35) | 10-15% productivity improvement (Microsoft estimates), AI-powered features (Windows Studio Effects, Live Captions, on-device AI) | $100-300 premium per device, 30% of new procurements Year 1 | - Pilot 50-100 Copilot+ PCs Q2 2025 (SOW Phase 3)<br>- ARM64 app compatibility testing (SOW Phase 3)<br>- 30% adoption Year 1, 70% Year 2 (BR-005) |
| **Configuration Manager cost savings** | Configuration Manager (0.55 → 0.00 decommission) | $[X]/year infrastructure cost savings (servers, storage, licensing, labor per BR-003) | SOW Phase 5 vendor cost (ConfigMgr decommission) | - Co-management transition 18 months (SOW Phase 1-5)<br>- Workload cutover Months 18-21<br>- Infrastructure shutdown Month 24 (SOW Deliverable 4.5) |
| **Zero Trust security maturity as competitive differentiator** | Zero Trust Security Posture (0.38) | Compliance audit pass rate 100%, cyber insurance renewal without exceptions (BR-001), competitive advantage through security maturity | SOW Phase 1-2 vendor cost (Zero Trust architecture design) | - Vendor designs Zero Trust architecture (SOW HLD)<br>- Conditional Access policies, Defender for Endpoint, BitLocker, TPM 2.0 attestation<br>- Security baseline compliance >90% (BR-001) |
| **Remote workforce enablement without VPN** | Cloud-Native Management (0.42) | Remote device management without VPN, InTune management 100% online, reduced datacenter dependencies | SOW Phase 1-5 vendor cost (InTune transformation) | - InTune cloud-native management (SOW Phase 2)<br>- Azure AD join for zero-trust access (Principle 11)<br>- OneDrive KFM for data protection (FR-003)<br>- 100% remote workforce support by Month 18 |
| **Operational efficiency: Autopilot provisioning <30 min** | Windows Autopilot (0.85), Migration Wave Orchestration (0.45) | Deployment time reduced from [X] hours to <30 minutes (BR-003), IT staff time savings 40% (BR-002) | SOW Phase 2 vendor cost (Autopilot configuration) | - Autopilot deployment profiles (SOW Phase 2)<br>- User-Driven, Self-Deploying, White Glove modes<br>- Zero-touch provisioning for all new devices<br>- Provisioning time <30 min (NFR-P-001) |
| **Regulatory compliance audit readiness** | Zero Trust Security, Audit Logging (NFR-C-002) | Pass compliance audits (SOX, PCI-DSS, HIPAA, GDPR), zero compliance violations (BR-006) | SOW Phase 1-2 vendor cost (compliance architecture) | - Audit logging 7-year retention (NFR-C-002)<br>- Monthly compliance reports via InTune (BR-006)<br>- Device compliance policies enforced (FR-005)<br>- Compliance audit readiness by Month 6 |

---

## Traceability

### Requirements Mapping

| Requirement ID | Related Components | Evolution Stage | Build/Buy Decision |
|----------------|-------------------|-----------------|-------------------|
| **BR-001** (Security Compliance) | Zero Trust Security Posture, Microsoft Defender for Endpoint, BitLocker, TPM 2.0, Conditional Access | Custom (0.38) → Commodity (0.87-0.92) | Build Zero Trust architecture (Vendor HLD), Buy Microsoft security services |
| **BR-002** (Cloud-Native Management) | Cloud-Native Management, Microsoft InTune, Windows Autopilot, Azure AD | Custom (0.42) → Commodity (0.85-0.90) | Build transformation process (Vendor implements), Buy Microsoft cloud services |
| **BR-003** (Cost Optimization) | Configuration Manager Decommission, Cloud-Native Management | Product (0.55) → Custom (0.42) | Decommission ConfigMgr (Vendor executes), migrate to InTune cloud |
| **BR-004** (User Productivity) | User Training and Communication, OneDrive KFM, Migration Wave Orchestration | Custom (0.44-0.45), Commodity (0.85) | Build training materials (Vendor creates), Buy OneDrive service |
| **BR-005** (Hardware Modernization, Copilot+ PC) | Hardware Compatibility Assessment, Copilot+ PC Strategy | Custom (0.35-0.48) | Build assessment process (Vendor delivers), Buy Copilot+ PC hardware |
| **BR-006** (Regulatory Compliance) | Zero Trust Security, Audit Logging (NFR-C-002), Compliance Policies | Custom (0.38) → Commodity (0.75-0.90) | Build compliance architecture (Vendor designs), Buy Azure AD compliance features |
| **BR-007** (Change Management) | User Training and Communication, Helpdesk Training | Custom (0.44) | Build training materials (Vendor creates), org-specific change management |
| **BR-008** (Phased Rollout) | Migration Wave Orchestration, Rollback Capability | Custom (0.45) | Build wave planning (Vendor creates runbooks), custom to org |
| **FR-001** (Hardware Assessment) | Hardware Compatibility Assessment | Custom (0.48) | Build assessment (Vendor executes with InTune inventory) |
| **FR-002** (Autopilot Registration) | Windows Autopilot | Commodity (0.85) | Buy Microsoft Autopilot service, vendor configures deployment profiles |
| **FR-003** (OneDrive KFM) | OneDrive for Business, Known Folder Move | Commodity (0.85-0.92) | Buy Microsoft OneDrive service, vendor deploys InTune KFM policy |
| **FR-004** (Feature Update Policies) | Windows Update for Business, Windows 11 Feature Updates | Commodity (0.82-0.88) | Buy Microsoft update services, vendor configures update rings |
| **FR-005** (Compliance Policies) | InTune Policy Configuration, Conditional Access | Product (0.62) → Product (0.75) | Build InTune policies (Vendor configures), Buy Azure AD Conditional Access |
| **NFR-P-001** (Autopilot <30 min) | Windows Autopilot | Commodity (0.85) | Buy Microsoft Autopilot service, vendor optimizes Enrollment Status Page |
| **NFR-P-002** (Upgrade <90 min) | Windows 11 Feature Updates | Commodity (0.88) | Buy Microsoft feature updates, vendor configures pre-download |
| **NFR-SEC-001** (MFA) | Azure Active Directory, Conditional Access | Commodity (0.90), Product (0.75) | Buy Azure AD MFA, vendor configures Conditional Access policies |
| **NFR-SEC-002** (Encryption) | BitLocker, TPM 2.0 | Commodity (0.90-0.92) | Buy Windows 11 BitLocker feature, vendor configures InTune compliance policy |
| **NFR-SEC-003** (Endpoint Protection) | Microsoft Defender for Endpoint | Commodity (0.87) | Buy Microsoft Defender service, vendor configures onboarding policy |
| **NFR-C-001** (GDPR Compliance) | Azure AD, OneDrive, Copilot+ Recall opt-in | Commodity (0.90-0.92) | Buy Microsoft compliance features, vendor configures data residency |
| **NFR-C-002** (Audit Logging) | Azure AD Audit Logs, InTune Audit Logs | Commodity (0.90), Product (0.62) | Buy Azure AD audit logging, vendor configures Log Analytics export |
| **INT-001** (Azure AD Integration) | Azure Active Directory | Commodity (0.90) | Buy Microsoft Azure AD service, vendor configures Azure AD join |
| **INT-002** (Defender Integration) | Microsoft Defender for Endpoint | Commodity (0.87) | Buy Microsoft Defender service, vendor configures InTune onboarding |
| **INT-003** (OneDrive Integration) | OneDrive for Business | Commodity (0.92) | Buy Microsoft OneDrive service, vendor deploys KFM policy |

### Architecture Principles Alignment

| Principle | Related Components | Compliance | Gap Analysis |
|-----------|-------------------|------------|--------------|
| **1. Cloud-First Endpoint Management** | Microsoft InTune (0.88), Windows Autopilot (0.85), Azure AD (0.90) | ✅ COMPLIANT | Buy Microsoft cloud services (SaaS), vendor configures InTune policies |
| **2. Zero Trust Security Model** | Zero Trust Security Posture (0.38), Conditional Access (0.75), Defender (0.87) | ✅ COMPLIANT | Build Zero Trust architecture (Vendor HLD), Buy Microsoft security services |
| **3. Hardware Readiness** | Hardware Compatibility Assessment (0.48), TPM 2.0 (0.90) | ✅ COMPLIANT | Build assessment process (Vendor delivers), Buy Windows 11 hardware requirements |
| **3A. Copilot+ PC Hardware** | Copilot+ PC Strategy (0.35) | ✅ COMPLIANT | Build pilot strategy (Vendor designs), Buy Copilot+ PC hardware (30% Year 1, 70% Year 2) |
| **4. User-Centric Migration** | User Training (0.44), OneDrive KFM (0.85), Migration Orchestration (0.45) | ✅ COMPLIANT | Build training materials (Vendor creates), Buy OneDrive service |
| **5. Application Compatibility** | Application Compatibility Testing (0.46), Application Packaging (0.58) | ✅ COMPLIANT | Build test process (Vendor delivers), Build app packages (Vendor creates .intunewin) |
| **6. Phased Rollout Strategy** | Migration Wave Orchestration (0.45) | ✅ COMPLIANT | Build wave planning (Vendor creates runbooks), custom to org |
| **7. Automated Deployment (Autopilot)** | Windows Autopilot (0.85) | ✅ COMPLIANT | Buy Microsoft Autopilot service, vendor configures deployment profiles |
| **8. Configuration Management (InTune)** | InTune Policy Configuration (0.62), GPO Migration (0.52) | ✅ COMPLIANT | Build InTune policies (Vendor configures), Buy Group Policy Analytics tool |
| **9. Update Management** | Windows Update for Business (0.82), Update Rings | ✅ COMPLIANT | Buy Microsoft update services, vendor configures 4 update rings |
| **10. Monitoring and Compliance** | InTune Reporting, Endpoint Analytics, Migration Dashboard | ⚠️ PARTIAL | Buy InTune reporting (Commodity), Build migration dashboard (Vendor creates Power BI) |
| **11. Azure AD Integration** | Azure Active Directory (0.90), Conditional Access (0.75) | ✅ COMPLIANT | Buy Microsoft Azure AD service, vendor configures Azure AD join |
| **12. Data Protection and Backup** | OneDrive KFM (0.85), BitLocker (0.92) | ✅ COMPLIANT | Buy Microsoft OneDrive service, Buy Windows 11 BitLocker feature |
| **13. Helpdesk Support** | Helpdesk Training, InTune Remote Help | ⚠️ PARTIAL | Build training materials (Vendor creates), Buy InTune Remote Help tool |
| **14. Change Management** | User Training and Communication (0.44) | ✅ COMPLIANT | Build change management (Vendor delivers), custom to org culture |
| **15. Incident Response and Rollback** | Rollback Capability, Migration Orchestration | ⚠️ PARTIAL | Build rollback procedures (Vendor creates runbooks), Windows.old 10-day retention |
| **16. Licensing and Cost Management** | Microsoft 365 E3/E5 Licensing (0.88) | ✅ COMPLIANT | Buy Microsoft 365 licenses (existing, no procurement needed per SOW) |
| **17. Audit Logging and Compliance** | Azure AD Audit Logs (0.90), InTune Audit Logs (0.62) | ✅ COMPLIANT | Buy Azure AD audit logging, vendor configures Log Analytics 7-year retention |

**Compliance Summary**:
- ✅ **15/18 principles COMPLIANT** (83%)
- ⚠️ **3/18 principles PARTIAL** (17%): Monitoring Dashboard, Helpdesk Support, Rollback Capability
  - **Action**: Vendor delivers these as custom components (SOW Deliverables 4.3, 4.4)

---

## Recommendations

### Immediate Actions (0-3 months) - Pre-RFP Release

1. **Replace 79 Placeholder Values in Requirements/SOW**
   - **Component**: Requirements Documentation, SOW, Evaluation Criteria
   - **Rationale**: Cannot release RFP with placeholders ([X], [NUMBER], [DATE], [NAME], [ORGANIZATION_NAME])
   - **Investment**: 12-18 hours (device inventory, cost analysis, schedule finalization, stakeholder names)
   - **Owner**: IT Operations + Finance + Procurement
   - **Success Criteria**: Zero placeholders in RFP documents, vendor can provide accurate proposals
   - **Wardley Map Insight**: Documentation is Custom (0.50) - Build complete requirements before procurement

2. **Document Missing FR-006 to FR-020+ (44 Functional Requirements)**
   - **Component**: Requirements Documentation
   - **Rationale**: SOW references 60+ requirements but only 23 documented (34% complete), vendor evaluation incomplete
   - **Investment**: 20-26 hours (15 requirements × 1-1.5 hours each)
   - **Owner**: Enterprise Architect + IT Operations
   - **Success Criteria**: 67 total requirements documented, 100% SOW requirements coverage
   - **Wardley Map Insight**: Complete requirements before procurement (Custom 0.50) to ensure vendor alignment

3. **Finalize RFP Package for Vendor Release**
   - **Component**: SOW, Evaluation Criteria, Requirements
   - **Rationale**: RFP ready after placeholder replacement and missing requirements documented
   - **Investment**: Week 3-4 (legal review, procurement approval, RFP publication)
   - **Owner**: Procurement Lead
   - **Success Criteria**: RFP issued to vendors, 6-week proposal window, Q&A published
   - **Wardley Map Insight**: Vendor procurement for Custom components (0.35-0.62), Buy for Commodity (0.75-0.95)

### Short-Term Actions (3-12 months) - Vendor Selection and Design Phase

1. **Vendor Selection via RFP Evaluation (SOW Weeks 7-10)**
   - **Component**: Vendor Evaluation, SOW Section 8
   - **Rationale**: Select Microsoft Gold Partner with 3+ Windows 11 migrations, InTune expertise (SOW MQ-1 to MQ-6)
   - **Investment**: SOW Phase 1-6 vendor cost ($[MIN]-$[MAX] per SOW Section 1.3)
   - **Owner**: Evaluation Committee (CIO, Enterprise Architect, IT Operations, Security, Procurement)
   - **Success Criteria**: Vendor selected based on 70% technical + 30% cost scoring (SOW Section 8.3)
   - **Wardley Map Insight**: Vendor delivers Custom components (Zero Trust 0.38, Cloud-Native 0.42, Migration 0.45), configures Commodity services (InTune 0.88, Azure AD 0.90)

2. **Vendor Delivers High-Level Design (HLD) - SOW Month 4**
   - **Component**: Zero Trust Security Architecture, InTune Architecture, Migration Strategy
   - **Rationale**: HLD required for Architecture Review Board approval before implementation (SOW Milestone M3)
   - **Investment**: SOW Phase 1 (15% of vendor cost per payment schedule)
   - **Owner**: Vendor (Solution Architect), validated by Enterprise Architect
   - **Success Criteria**: Architecture Review Board approval, C4 Context/Container diagrams, alignment with 18 principles
   - **Wardley Map Insight**: HLD designs Custom components (Zero Trust 0.38, Cloud-Native 0.42), specifies Commodity services (InTune 0.88, Azure AD 0.90, Defender 0.87)

3. **Vendor Delivers Detailed Design (DLD) and InTune Configuration - SOW Month 6**
   - **Component**: InTune Policy Configuration, Autopilot Profiles, Security Baseline, GPO Migration
   - **Rationale**: DLD required for pilot phase implementation (SOW Milestone M3)
   - **Investment**: SOW Phase 2 (15% of vendor cost per payment schedule)
   - **Owner**: Vendor (Technical Lead), validated by IT Operations
   - **Success Criteria**: InTune policies documented with JSON exports, Autopilot profiles configured, security baseline deployed
   - **Wardley Map Insight**: DLD configures Product components (InTune Policies 0.62, Security Baseline 0.72), integrates Commodity services (InTune 0.88, Autopilot 0.85)

4. **Pilot Phase (50-100 IT Staff Devices) - SOW Month 9**
   - **Component**: Migration Wave Orchestration, Application Compatibility Testing, Copilot+ PC Pilot
   - **Rationale**: Validate migration process, test app compatibility, prove Copilot+ PC value before production rollout
   - **Investment**: SOW Phase 3 (10% of vendor cost per payment schedule)
   - **Owner**: Vendor (Migration Engineers), IT Operations
   - **Success Criteria**: Zero P1/P2 incidents, >80% user satisfaction, top 100 apps compatible, Copilot+ pilot >80% satisfaction
   - **Wardley Map Insight**: Pilot validates Custom components (Migration 0.45, App Testing 0.46, Copilot+ Strategy 0.35) before production

### Long-Term Strategic Actions (12-24 months) - Production Migration and Transformation

1. **Production Migration Waves (SOW Months 10-22): Migrate 95% Users to Windows 11**
   - **Component**: Migration Wave Orchestration, Windows 11 Feature Updates, InTune Management
   - **Rationale**: Complete migration by Sep 2025 (6 weeks before Windows 10 EOL Oct 14, 2025)
   - **Investment**: SOW Phase 4 (50% of vendor cost: 15% + 20% + 15% per milestones M5/M6/M7)
   - **Owner**: Vendor (Migration Engineers), IT Operations, Change Management
   - **Success Criteria**: 95% migration completion, 90% device compliance, >80% user satisfaction, <2% support ticket volume
   - **Wardley Map Insight**: Production migration executes Custom process (Migration 0.45) using Commodity services (InTune 0.88, Autopilot 0.85, Windows Update 0.82)

2. **Configuration Manager Decommissioning (SOW Months 18-24): 100% InTune Cloud-Native**
   - **Component**: Configuration Manager Co-Management (0.55 → 0.00), Cloud-Native Management (0.42)
   - **Rationale**: Complete transformation from on-premises ConfigMgr to cloud InTune within 18 months (Principle 1)
   - **Investment**: SOW Phase 5 (5% of vendor cost per milestone M8)
   - **Owner**: Vendor (Technical Lead), IT Operations Director
   - **Success Criteria**: 100% workloads managed by InTune, ConfigMgr infrastructure shutdown Month 24, cost savings $[X]/year documented
   - **Wardley Map Insight**: Decommission Product (ConfigMgr 0.55), complete evolution to Custom (Cloud-Native 0.42) using Commodity (InTune 0.88)

3. **Copilot+ PC Adoption Strategy (Year 1-2): 30% Year 1, 70% Year 2**
   - **Component**: Copilot+ PC Strategy (0.35 → 0.70), ARM64 Application Compatibility
   - **Rationale**: Early adoption of AI-powered devices for competitive productivity advantage (10-15% gains per Principle 3A)
   - **Investment**: $100-300 premium per Copilot+ PC, 30% of new procurements Year 1, 70% Year 2
   - **Owner**: IT Operations (Hardware Procurement), Finance (Budget Approval)
   - **Success Criteria**: 30% new procurements Year 1 Copilot+ PCs, 70% Year 2, user satisfaction >80%, app compatibility >95%
   - **Wardley Map Insight**: Copilot+ PC evolving Custom → Product (0.35 → 0.70), early adoption provides competitive advantage before commoditization

4. **Post-Project: Continuous InTune Management and Optimization (Month 24+)**
   - **Component**: InTune Policy Configuration, Windows Update Management, Security Baseline Maintenance
   - **Rationale**: Ongoing InTune administration, policy updates, compliance monitoring after vendor warranty period
   - **Investment**: Optional post-warranty support (SOW Section 7.2.4) or internal IT staff with vendor training (SOW Phase 6)
   - **Owner**: IT Operations (InTune Administrators)
   - **Success Criteria**: IT staff trained and capable of independent InTune administration, 90% device compliance maintained, zero P1/P2 incidents
   - **Wardley Map Insight**: InTune evolving to pure utility (0.88 → 0.95), focus on cost efficiency and standardization, avoid custom development

---

## Map Versioning

**Version History**:

| Version | Date | Author | Changes | Rationale |
|---------|------|--------|---------|-----------|
| v1.0 | 2025-10-15 | Enterprise Architecture Team | Initial procurement strategy map for Windows 10 to Windows 11 migration | Strategic build vs buy analysis for vendor RFP, alignment with 18 architecture principles, traceability to 23 requirements |

**Next Review Date**: 2026-01-15 (Quarterly review after vendor selection, post-HLD delivery)

**Review Frequency**: Quarterly (SOW Milestones M3, M5, M7, M9)

**Map Update Triggers**:
- After vendor selection (Week 10): Update with vendor-specific approach
- After HLD delivery (Month 4): Update evolution predictions based on vendor design
- After pilot phase (Month 9): Update based on pilot learnings, app compatibility results
- After 50% migration (Month 16): Update evolution velocity based on actual migration data
- After project closure (Month 24): Final retrospective, actual vs predicted evolution

---

## Additional Resources

- **Wardley Mapping**: https://learnwardleymaps.com/
- **Create Maps**: https://create.wardleymaps.ai
- **Microsoft InTune Documentation**: https://learn.microsoft.com/mem/intune/
- **Windows Autopilot Documentation**: https://learn.microsoft.com/autopilot/
- **Copilot+ PC Requirements**: https://www.microsoft.com/windows/copilot-plus-pcs
- **Microsoft Security Baselines**: https://learn.microsoft.com/windows/security/operating-system-security/device-management/windows-security-configuration-framework/windows-security-baselines
- **Architecture Principles**: `.arckit/memory/architecture-principles.md` (18 principles, version 1.1)
- **Project Requirements**: `projects/001-windows-11-migration-intune/requirements.md` (23 requirements documented)
- **Statement of Work**: `projects/001-windows-11-migration-intune/sow.md` (24-month vendor engagement)
- **Evaluation Criteria**: `projects/001-windows-11-migration-intune/evaluation-criteria.md` (70% technical, 30% cost)
