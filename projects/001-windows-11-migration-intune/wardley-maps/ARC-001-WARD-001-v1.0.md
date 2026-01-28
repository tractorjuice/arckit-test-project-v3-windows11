# Wardley Map: InTune Policy Management for Windows 11 Migration

**Document Type**: Strategic Architecture - Wardley Mapping
**Project ID**: 001-windows-11-migration-intune
**Version**: 1.0
**Date**: 2025-10-15
**Status**: APPROVED
**Owner**: Enterprise Architecture Team

---

## Executive Summary

This Wardley Map analyzes the InTune Policy Management landscape for the Windows 10 to Windows 11 migration project. It provides strategic guidance on build vs buy decisions, evolution predictions, and technology choices for policy-driven endpoint management.

**Key Strategic Insights**:

1. **Commodity Cloud Services**: Microsoft InTune and Azure AD are highly commoditized (0.90+ evolution), making "build" strategies wasteful
2. **Custom Policy Content**: While InTune platform is commodity, policy *content* (GPO migrations, security baselines, compliance rules) remains Custom (0.40-0.50) requiring organizational expertise
3. **Transitional Inertia**: Configuration Manager represents massive inertia (18-month co-management transition) - phased decommissioning critical
4. **Policy-as-Code Emerging**: InTune policy export/version control (Git repository) is emerging Custom-to-Product evolution opportunity
5. **Strategic Focus**: Invest effort in policy content quality, testing, and governance - not platform engineering

**Recommended Actions**:
- ✅ **BUY**: Microsoft InTune (cloud commodity)
- ✅ **BUY**: Azure AD Premium P1/P2 (identity commodity)
- ✅ **BUILD**: Custom policy content (GPO migrations, org-specific compliance rules, application deployment policies)
- ✅ **BUILD**: Policy governance framework (Git-based policy-as-code, testing procedures, approval workflows)
- ⚠️ **DECOMMISSION**: Configuration Manager over 18 months (inertia management critical)

---

## Wardley Map Visualization

**View this map by pasting the code below into https://create.wardleymaps.ai**

```wardley
title InTune Policy Management - Windows 11 Migration Strategy

anchor IT Operations [0.95, 0.63]
annotation 1 [0.65, 0.90] Cloud commodity - always buy, never build
annotation 2 [0.45, 0.45] Custom policy content - organizational IP
annotation 3 [0.30, 0.55] Inertia - 18-month transition required
annotation 4 [0.75, 0.15] Testing critical for policy deployment
note Configuration Manager decommission: Month 0-18 co-management [0.28, 0.25]

component IT Operations [0.95, 0.20]
component Device Compliance Management [0.88, 0.30]
component Security Posture Enforcement [0.85, 0.35]
component Application Delivery [0.82, 0.40]

component Microsoft InTune Service [0.65, 0.92]
component Azure Active Directory [0.62, 0.95]
component Windows Update for Business [0.68, 0.88]
component Microsoft Graph API [0.60, 0.90]

component InTune Compliance Policies [0.72, 0.48]
component InTune Configuration Profiles [0.70, 0.45]
component Conditional Access Policies [0.68, 0.50]
component Security Baseline Templates [0.66, 0.72]
component Windows Update Rings [0.64, 0.52]

component Group Policy Analytics Tool [0.55, 0.68]
component InTune Settings Catalog [0.58, 0.70]
component Administrative Templates [0.56, 0.65]

component Custom GPO Migrations [0.48, 0.42]
component Organization Security Rules [0.46, 0.40]
component Application Packaging [0.44, 0.38]
component Policy Testing Framework [0.50, 0.35]

component Policy-as-Code Repository [0.42, 0.45]
component Azure DevOps / GitHub [0.40, 0.85]
component Policy Version Control [0.38, 0.48]
component Change Management Workflow [0.36, 0.42]

component Configuration Manager [0.30, 0.55]
component Group Policy Objects [0.28, 0.50]
component On-Premises Active Directory [0.26, 0.62]

component InTune Admin Center [0.75, 0.78]
component Power BI Dashboards [0.70, 0.75]
component Endpoint Analytics [0.68, 0.80]

component Azure AD Device Groups [0.58, 0.82]
component Dynamic Group Queries [0.54, 0.62]
component Policy Assignment Logic [0.52, 0.58]

IT Operations -> Device Compliance Management
IT Operations -> Security Posture Enforcement
IT Operations -> Application Delivery

Device Compliance Management -> InTune Compliance Policies
Device Compliance Management -> Conditional Access Policies
Device Compliance Management -> InTune Admin Center

Security Posture Enforcement -> InTune Configuration Profiles
Security Posture Enforcement -> Security Baseline Templates
Security Posture Enforcement -> Organization Security Rules

Application Delivery -> Application Packaging
Application Delivery -> InTune Configuration Profiles

InTune Compliance Policies -> Microsoft InTune Service
InTune Configuration Profiles -> Microsoft InTune Service
Conditional Access Policies -> Azure Active Directory
Windows Update Rings -> Windows Update for Business

InTune Compliance Policies -> Policy Testing Framework
InTune Configuration Profiles -> Policy Testing Framework

InTune Configuration Profiles -> Custom GPO Migrations
InTune Configuration Profiles -> Administrative Templates
InTune Configuration Profiles -> InTune Settings Catalog

Custom GPO Migrations -> Group Policy Analytics Tool
Administrative Templates -> Group Policy Analytics Tool
Group Policy Analytics Tool -> Group Policy Objects

Security Baseline Templates -> Microsoft InTune Service
InTune Settings Catalog -> Microsoft InTune Service

InTune Admin Center -> Microsoft InTune Service
Power BI Dashboards -> Microsoft Graph API
Endpoint Analytics -> Microsoft InTune Service

Microsoft InTune Service -> Azure Active Directory
Microsoft InTune Service -> Microsoft Graph API
Windows Update for Business -> Microsoft InTune Service

InTune Compliance Policies -> Policy-as-Code Repository
InTune Configuration Profiles -> Policy-as-Code Repository
Conditional Access Policies -> Policy-as-Code Repository

Policy-as-Code Repository -> Azure DevOps / GitHub
Policy-as-Code Repository -> Policy Version Control
Policy-as-Code Repository -> Change Management Workflow

InTune Compliance Policies -> Azure AD Device Groups
InTune Configuration Profiles -> Azure AD Device Groups
Azure AD Device Groups -> Dynamic Group Queries
Dynamic Group Queries -> Policy Assignment Logic

Configuration Manager -> On-Premises Active Directory
Group Policy Objects -> On-Premises Active Directory
Custom GPO Migrations -> Configuration Manager
Custom GPO Migrations -> Group Policy Objects

Microsoft InTune Service -> Configuration Manager

pipeline Configuration Manager [0.30, 0.55, 0.10]
pipeline Group Policy Objects [0.28, 0.50, 0.05]
pipeline Custom GPO Migrations [0.48, 0.42, 0.68]
pipeline Policy-as-Code Repository [0.42, 0.45, 0.75]

evolve Microsoft InTune Service 0.95 label Cloud utility
evolve Azure Active Directory 0.98 label Identity commodity
evolve Custom GPO Migrations 0.68 label Toward product in 12m
evolve Policy-as-Code Repository 0.75 label GitOps emerging

style wardley
```

---

## Component Inventory

### Cloud Commodity Components (Evolution 0.75-1.00)

| Component | Visibility | Evolution | Stage | Strategic Notes |
|-----------|------------|-----------|-------|-----------------|
| **Azure Active Directory** | 0.62 | 0.95 | Commodity | Identity-as-a-Service. Microsoft-managed, 99.9% SLA. Always buy, never build. |
| **Microsoft InTune Service** | 0.65 | 0.92 | Commodity | MDM/MAM cloud platform. No on-premises alternative viable. Strategic dependency accepted. |
| **Microsoft Graph API** | 0.60 | 0.90 | Commodity | API layer for InTune/Azure AD. Standard REST API, OAuth 2.0. Mature tooling. |
| **Windows Update for Business** | 0.68 | 0.88 | Commodity | Cloud-based Windows update management. Integrated with InTune. No alternative needed. |
| **Azure DevOps / GitHub** | 0.40 | 0.85 | Commodity | Version control for Policy-as-Code. Standard Git workflows. |
| **Azure AD Device Groups** | 0.58 | 0.82 | Commodity | Device grouping for policy targeting. Dynamic and static groups. |
| **Endpoint Analytics** | 0.68 | 0.80 | Commodity | Proactive device health insights. Microsoft-managed telemetry and analytics. |
| **InTune Admin Center** | 0.75 | 0.78 | Product/Commodity | Web-based management console. Microsoft-provided UI. No customization needed. |
| **Power BI Dashboards** | 0.70 | 0.75 | Product | Reporting and visualization. Connect to InTune/Azure AD APIs for custom dashboards. |

**Strategic Recommendation**: **Always buy commodity/product components**. No business value in building alternatives. Focus investment on custom policy content and governance.

---

### Product Components (Evolution 0.50-0.75)

| Component | Visibility | Evolution | Stage | Strategic Notes |
|-----------|------------|-----------|-------|-----------------|
| **Security Baseline Templates** | 0.66 | 0.72 | Product | Microsoft-provided security baselines (Windows 11, Edge, Office). Import and customize. |
| **InTune Settings Catalog** | 0.58 | 0.70 | Product | Modern policy engine replacing ADMX templates. Granular settings control. |
| **Group Policy Analytics Tool** | 0.55 | 0.68 | Product | InTune tool analyzing GPOs for migration. Categorizes as Supported/Unsupported. |
| **Administrative Templates** | 0.56 | 0.65 | Product | ADMX-backed policies in InTune. Legacy approach but still widely used. |
| **Dynamic Group Queries** | 0.54 | 0.62 | Product | Azure AD dynamic group membership rules. KQL-like query language. |

**Strategic Recommendation**: **Buy from Microsoft** (included in licensing). Leverage Microsoft's product development investment. Customize where needed.

---

### Custom Components (Evolution 0.25-0.50)

| Component | Visibility | Evolution | Stage | Strategic Notes |
|-----------|------------|-----------|-------|-----------------|
| **InTune Compliance Policies** | 0.72 | 0.48 | Custom | Organizational compliance rules (TPM 2.0, BitLocker, Defender, OS version). Custom per org. |
| **InTune Configuration Profiles** | 0.70 | 0.45 | Custom | Device settings (BitLocker, VPN, WiFi, certificates). Org-specific configurations. |
| **Conditional Access Policies** | 0.68 | 0.50 | Custom | Zero Trust access rules. Highly org-specific (risk tolerance, user groups, exceptions). |
| **Windows Update Rings** | 0.64 | 0.52 | Custom | 4-ring update strategy (Preview/Broad/Production/Critical). Org-specific ring composition. |
| **Policy-as-Code Repository** | 0.42 | 0.45 | Custom | Git repository with exported InTune policies. Org-specific governance workflow. **Emerging practice**. |
| **Custom GPO Migrations** | 0.48 | 0.42 | Custom | Converting 100+ GPOs to InTune policies. Org-specific legacy policies. High effort. |
| **Organization Security Rules** | 0.46 | 0.40 | Custom | Custom security requirements beyond Microsoft baselines. Compliance-driven. |
| **Application Packaging** | 0.44 | 0.38 | Custom | Win32 app packages for InTune (.intunewin files). Org-specific LOB apps. |
| **Policy Testing Framework** | 0.50 | 0.35 | Custom | Test procedures for policy validation before production. Pilot groups, success criteria. |
| **Policy Version Control** | 0.38 | 0.48 | Custom | Version tracking for policy changes. Git-based change log. |
| **Change Management Workflow** | 0.36 | 0.42 | Custom | Approval process for policy changes. CAB reviews, peer reviews. |
| **Policy Assignment Logic** | 0.52 | 0.58 | Custom | Rules for which policies apply to which device groups. Org-specific targeting. |

**Strategic Recommendation**: **Build custom components** - this is organizational intellectual property. Invest in quality policy content, thorough testing, and robust governance. These components differentiate your endpoint management maturity.

---

### Legacy/Transitional Components (Evolution 0.25-0.62) - INERTIA

| Component | Visibility | Evolution | Stage | Strategic Notes |
|-----------|------------|-----------|-------|-----------------|
| **On-Premises Active Directory** | 0.26 | 0.62 | Product (Legacy) | Legacy identity system. Hybrid Azure AD join during transition. Sunset within 24 months. |
| **Configuration Manager** | 0.30 | 0.55 | Product (Legacy) | On-premises endpoint management. **MASSIVE INERTIA**. 18-month co-management transition required. |
| **Group Policy Objects (GPOs)** | 0.28 | 0.50 | Product (Legacy) | 100+ existing GPOs. Must migrate to InTune policies. **High conversion effort**. |

**Strategic Recommendation**: **Decommission over 18 months**. Configuration Manager co-management (Month 0-18) allows gradual workload shift to InTune. Do NOT extend transition beyond 18 months - incurs dual management overhead.

**Inertia Factors**:
- **Skills Inertia**: IT staff familiar with ConfigMgr, less with InTune (mitigate: training FR-015)
- **Process Inertia**: Established ConfigMgr workflows, change management processes (mitigate: document new InTune processes)
- **Technical Inertia**: Legacy apps requiring ConfigMgr distribution (mitigate: repackage as Win32 apps FR-008)
- **Political Inertia**: "We've always used ConfigMgr" resistance (mitigate: executive sponsorship BR-007)

---

## Evolution Analysis

### Components by Evolution Stage

#### **Commodity (0.75-1.00)** - 9 components
Always buy. Never build. Strategic cloud dependencies.

- Azure Active Directory (0.95)
- Microsoft InTune Service (0.92)
- Microsoft Graph API (0.90)
- Windows Update for Business (0.88)
- Azure DevOps / GitHub (0.85)
- Azure AD Device Groups (0.82)
- Endpoint Analytics (0.80)
- InTune Admin Center (0.78)
- Power BI Dashboards (0.75)

**Action**: Leverage Microsoft's cloud platform. No internal development.

---

#### **Product (0.50-0.75)** - 8 components
Buy from vendors or use Microsoft-provided. Customize as needed.

- Security Baseline Templates (0.72)
- InTune Settings Catalog (0.70)
- Group Policy Analytics Tool (0.68)
- Administrative Templates (0.65)
- On-Premises AD (0.62) - LEGACY, transitioning
- Dynamic Group Queries (0.62)
- Policy Assignment Logic (0.58)
- Configuration Manager (0.55) - LEGACY, decommissioning

**Action**: Use Microsoft-provided tools. Invest in customization where org-specific needs exist.

---

#### **Custom (0.25-0.50)** - 12 components
Build in-house. Organizational IP. Strategic differentiator.

- Windows Update Rings (0.52)
- Conditional Access Policies (0.50)
- Group Policy Objects (0.50) - LEGACY, migrating
- InTune Compliance Policies (0.48)
- Policy Version Control (0.48)
- InTune Configuration Profiles (0.45)
- Policy-as-Code Repository (0.45)
- Custom GPO Migrations (0.42)
- Change Management Workflow (0.42)
- Organization Security Rules (0.40)
- Application Packaging (0.38)
- Policy Testing Framework (0.35)

**Action**: **BUILD**. This is where organizational expertise and compliance requirements are encoded. High-quality policy content is competitive advantage for endpoint security and compliance.

---

#### **Genesis (0.00-0.25)** - 0 components
None identified. InTune policy management is mature domain.

---

## Build vs Buy Analysis

### ✅ ALWAYS BUY (Commodity/Product)

| Component | Why Buy | Vendor | Cost |
|-----------|---------|--------|------|
| **Microsoft InTune** | Cloud-native MDM/MAM platform. Mature product (0.92 evolution). Building alternative would cost millions and years. | Microsoft | Included in M365 E3/E5 |
| **Azure Active Directory** | Identity-as-a-Service. 99.9% SLA. Industry standard. No viable alternative. | Microsoft | Included in M365 E3/E5 or standalone |
| **Microsoft Graph API** | Standard REST API for InTune/Azure AD. Microsoft-managed. | Microsoft | Included (API access) |
| **Windows Update for Business** | Cloud-based Windows update management. Integrated with InTune. | Microsoft | Included in InTune |
| **Security Baseline Templates** | Microsoft Security Baselines for Windows 11, Edge, Office. Expert-curated. | Microsoft | Included in InTune |
| **Group Policy Analytics** | InTune tool for GPO analysis. Microsoft-provided. | Microsoft | Included in InTune |
| **Endpoint Analytics** | Proactive device health monitoring. Microsoft-managed telemetry. | Microsoft | Included in InTune |

**Total Cost**: $0 incremental (included in Microsoft 365 E3/E5 licensing already procured)

**Business Case**: Building commodity alternatives wastes capital and time. No competitive advantage from custom MDM platform. Focus scarce engineering resources on custom policy content.

---

### ✅ BUILD IN-HOUSE (Custom)

| Component | Why Build | Effort | Value |
|-----------|-----------|--------|-------|
| **Custom GPO Migrations** | 100+ org-specific GPOs. No vendor can migrate without domain knowledge. | HIGH (12 weeks) | HIGH - enables cloud transition |
| **Organization Security Rules** | Compliance requirements unique to org (GDPR, HIPAA, SOX, PCI-DSS). | MEDIUM (6 weeks) | CRITICAL - compliance mandatory |
| **InTune Compliance Policies** | Org-specific compliance rules (TPM version, OS version, software requirements). | MEDIUM (4 weeks) | HIGH - Zero Trust foundation |
| **Conditional Access Policies** | Risk tolerance, user groups, app sensitivity unique to org. | MEDIUM (4 weeks) | CRITICAL - access control |
| **Application Packaging** | LOB apps specific to org. Vendor cannot package without app knowledge. | HIGH (ongoing) | HIGH - app delivery essential |
| **Policy Testing Framework** | Pilot procedures, success criteria, rollback plans org-specific. | MEDIUM (3 weeks) | HIGH - risk mitigation |
| **Policy-as-Code Repository** | Org-specific governance workflow, approval process, Git structure. | LOW (2 weeks) | MEDIUM - policy governance |
| **Change Management Workflow** | CAB approval process, stakeholder reviews org-specific. | LOW (1 week) | MEDIUM - change control |

**Total Effort**: ~32 weeks (with team of 3-5 people)

**Business Case**: Custom policy content encodes organizational compliance, security, and operational knowledge. Cannot be purchased. Core intellectual property for endpoint management.

---

### ⚠️ DECOMMISSION (Legacy with Inertia)

| Component | Why Decommission | Timeline | Mitigation |
|-----------|------------------|----------|------------|
| **Configuration Manager** | On-premises infrastructure cost ($[X]/year). Lacks cloud-native capabilities. | 18 months | Co-management transition (FR-006) |
| **Group Policy Objects** | Legacy on-premises policy system. Not compatible with Azure AD joined devices. | 18 months | GPO to InTune migration (FR-007) |
| **On-Premises Active Directory** | Legacy identity system. Cloud-first strategy requires Azure AD. | 24 months | Hybrid Azure AD join during transition |

**Decommissioning Strategy**:

**Phase 1 (Months 0-6)**: Co-management enabled. 50% of workloads shift to InTune.
- Workloads: Compliance policies, Resource access policies, Device configuration

**Phase 2 (Months 7-12)**: 80% of workloads shift to InTune.
- Workloads: Client apps, Office Click-to-Run, Windows Update policies

**Phase 3 (Months 13-18)**: 100% of workloads shift to InTune. ConfigMgr decommissioned.
- Workloads: Endpoint Protection (final workload)
- Decommission: ConfigMgr site servers, SQL database archived, infrastructure reclaimed

**Cost Savings Post-Decommission**: $[X]/year (server hardware, SQL licenses, ConfigMgr CALs, datacenter space, IT staff time ~1-2 FTE)

---

## Inertia and Barriers

### Inertia 1: Configuration Manager (CRITICAL)

**Component**: Configuration Manager
**Evolution**: 0.55 (Product stage, but legacy)
**Visibility**: 0.30 (Infrastructure layer)
**Inertia Type**: Technical, Skills, Process, Political

**Inertia Factors**:
- **Technical**: 15+ years of ConfigMgr infrastructure, complex site hierarchy, distribution points
- **Skills**: IT Operations team expertise in ConfigMgr PowerShell, WQL queries, task sequences
- **Process**: Established change management workflows, application deployment pipelines, patch management procedures
- **Political**: "ConfigMgr is proven and reliable, InTune is new and risky" perception

**Impact**: Blocks cloud-first strategy (Principle 1). Incurs dual management overhead during transition.

**Mitigation Strategy**:
1. **Executive Sponsorship**: CIO/CTO mandate for cloud-first (BR-002)
2. **Phased Workload Transition**: Co-management (FR-006) allows gradual shift over 18 months
3. **Training**: InTune training for IT Operations team (FR-015)
4. **Pilot Success**: Demonstrate InTune capabilities in pilot phase (BR-008)
5. **Cost Pressure**: $[X]/year savings from ConfigMgr decommissioning (BR-003)
6. **Fixed Sunset Date**: Month 18 hard deadline for ConfigMgr decommission (non-negotiable)

**Success Criteria**:
- Month 6: 50% workloads transitioned to InTune
- Month 12: 80% workloads transitioned to InTune
- Month 18: 100% workloads transitioned, ConfigMgr decommissioned

---

### Inertia 2: Group Policy Objects (HIGH)

**Component**: Group Policy Objects
**Evolution**: 0.50 (Product/Custom boundary, legacy)
**Visibility**: 0.28 (Infrastructure layer)
**Inertia Type**: Technical, Process

**Inertia Factors**:
- **Technical**: 100+ GPOs accumulated over 10+ years, complex inheritance, WMI filters, security filtering
- **Documentation**: Poor documentation, tribal knowledge, "it works, don't touch it" mentality
- **Testing**: Fear of breaking production systems by changing policies
- **Effort**: Manual conversion of 100+ GPOs to InTune policies (FR-007)

**Impact**: Blocks Azure AD join strategy. GPOs require on-premises AD and VPN for remote users.

**Mitigation Strategy**:
1. **Group Policy Analytics Tool**: Use InTune's GPO analyzer to categorize GPOs as Supported/Unsupported/Deprecated (FR-007)
2. **Prioritize Critical GPOs**: Migrate security and compliance GPOs first (80/20 rule)
3. **Pilot Testing**: Test InTune policy equivalents in pilot group before production (BR-008)
4. **Document Unsupported**: Alternative approaches for unsupported GPOs (custom scripts, registry settings, business process changes)
5. **Accept Risk**: Some legacy GPOs may not need migration (e.g., Windows XP/7 policies)

**Effort Estimate**: 12 weeks for 100+ GPO migration (3-person team)

---

### Inertia 3: Skills and Culture (MEDIUM)

**Inertia Type**: Skills, Cultural

**Inertia Factors**:
- **Skills Gap**: IT Operations team strong in ConfigMgr, weak in InTune/Azure AD/PowerShell Graph SDK
- **Culture**: "On-premises is more secure" belief, "cloud is less controllable" perception
- **Change Fatigue**: Multiple concurrent projects (Windows 11 migration + InTune transition + ConfigMgr decommission)

**Impact**: Slows InTune adoption. Reduces quality of custom policy content.

**Mitigation Strategy**:
1. **Training**: Formal InTune training for IT Ops (FR-015) - 40 hours per person
2. **Vendor Partnership**: Engage Microsoft Partner or consultant for InTune expertise during transition
3. **Internal Champions**: Identify InTune advocates in IT team to lead peer training
4. **Communication**: CIO messaging on cloud-first strategy rationale (BR-007)
5. **Quick Wins**: Demonstrate InTune capabilities early (e.g., remote device wipe, Autopilot zero-touch provisioning)

---

## Movement and Evolution Predictions

### 12-Month Predictions

| Component | Current Evolution | Predicted Evolution | Movement | Rationale |
|-----------|-------------------|---------------------|----------|-----------|
| **Microsoft InTune** | 0.92 | 0.95 | +0.03 | Microsoft continues platform maturation. New features (Copilot+ management, ARM64 support). |
| **Azure Active Directory** | 0.95 | 0.98 | +0.03 | Identity-as-a-Service maturing. Passwordless, FIDO2, Zero Trust enhancements. |
| **Custom GPO Migrations** | 0.42 | 0.68 | +0.26 | **FAST MOVEMENT**. Migration effort (FR-007) moves from Genesis to Product as org builds reusable patterns. |
| **Policy-as-Code Repository** | 0.45 | 0.75 | +0.30 | **FAST MOVEMENT**. Emerging best practice. GitOps workflows for InTune policies gaining industry adoption. |
| **Security Baseline Templates** | 0.72 | 0.78 | +0.06 | Microsoft standardizes baselines. More comprehensive templates for Windows 11, Edge, Office. |
| **Configuration Manager** | 0.55 | 0.10 | -0.45 | **RAPID DECLINE**. Decommissioned by Month 18. Moves toward Genesis (obsolete) in organization's context. |
| **Group Policy Objects** | 0.50 | 0.05 | -0.45 | **RAPID DECLINE**. Migrated to InTune policies. Obsolete in org's Azure AD-joined environment. |

---

### 24-Month Predictions (Project Complete)

| Component | 12-Month Evolution | 24-Month Evolution | Movement | Rationale |
|-----------|-------------------|---------------------|----------|-----------|
| **InTune Compliance Policies** | 0.48 | 0.62 | +0.14 | Org-specific policies mature. Reusable compliance templates emerge. |
| **InTune Configuration Profiles** | 0.45 | 0.60 | +0.15 | Configuration patterns standardize. Best practices documented. |
| **Policy Testing Framework** | 0.35 | 0.55 | +0.20 | Testing procedures mature. Automated policy testing (PowerShell scripts) emerges. |
| **Application Packaging** | 0.38 | 0.50 | +0.12 | Win32 app packaging becomes routine. Org develops packaging standards. |
| **Policy-as-Code Repository** | 0.75 | 0.85 | +0.10 | GitOps for InTune becomes standard practice. Commercial tools emerge (e.g., policy linters). |
| **Configuration Manager** | 0.10 | N/A | Decommissioned | Fully decommissioned. Infrastructure reclaimed. |
| **On-Premises AD** | 0.62 | 0.50 | -0.12 | Hybrid Azure AD join persists for legacy app support. Full Azure AD migration ongoing. |

---

## Strategic Recommendations

### Immediate Actions (0-3 Months)

1. **Procure Microsoft 365 E3/E5 Licenses** (if not already)
   - Includes: InTune, Azure AD Premium P1/P2, OneDrive, Windows 11 Enterprise
   - Cost: $0 (already procured per requirements)
   - Action: Verify license allocation for all [NUMBER] users

2. **Enable Configuration Manager Co-Management** (FR-006)
   - Technical: Configure co-management in ConfigMgr console
   - Workload: Begin with Compliance Policies workload (pilot group)
   - Timeline: Month 1
   - Owner: Endpoint Manager (Technical Lead)

3. **Run Group Policy Analytics** (FR-007)
   - Technical: Import GPOs to InTune, run Group Policy Analytics tool
   - Output: Categorize 100+ GPOs as Supported/Partially Supported/Not Supported
   - Timeline: Month 1-2
   - Owner: Enterprise Architect + Endpoint Manager

4. **Establish Policy-as-Code Repository** (NFR-M-001)
   - Technical: Create Git repository (Azure DevOps or GitHub Enterprise)
   - Process: Document policy export procedure (JSON export from InTune)
   - Governance: Define change management workflow (pull request + peer review)
   - Timeline: Month 2
   - Owner: Enterprise Architect

5. **Deploy InTune Pilot** (BR-008)
   - Scope: 50-100 IT staff devices
   - Policies: Compliance policies, Security baseline, BitLocker, Defender onboarding
   - Success Criteria: Zero P1/P2 incidents, >80% user satisfaction
   - Timeline: Month 2-3
   - Owner: Endpoint Manager + IT Operations

---

### Short-Term Actions (3-12 Months)

6. **Migrate Critical GPOs to InTune** (FR-007)
   - Scope: Security and compliance GPOs (20-30 policies)
   - Approach: Use InTune Configuration Profiles, Settings Catalog, Administrative Templates
   - Testing: Pilot group validation before production
   - Timeline: Month 3-6
   - Effort: 8 weeks (3-person team)

7. **Deploy Microsoft Security Baseline** (FR-009)
   - Scope: Windows 11 Security Baseline (100+ settings)
   - Customization: Document exceptions from Microsoft baseline with risk acceptance
   - Assignment: Pilot group → Production rollout
   - Timeline: Month 4
   - Owner: Security Architect + Endpoint Manager

8. **Configure 4-Ring Update Strategy** (FR-012)
   - Rings: Preview (IT Staff) → Broad (Early Adopters) → Production → Critical Systems
   - Deferral: 0 days → 3 days → 7 days → 14 days
   - Timeline: Month 4
   - Owner: Endpoint Manager

9. **Shift 50% Workloads to InTune** (FR-006)
   - Workloads: Compliance policies, Device configuration, Resource access policies
   - Validation: Monitor co-management dashboard for successful workload shift
   - Timeline: Month 6
   - Milestone: 50% InTune, 50% ConfigMgr

10. **Train IT Operations Team** (FR-015)
    - Curriculum: InTune management (40 hours), Azure AD (16 hours), Conditional Access (8 hours)
    - Delivery: Vendor training + hands-on labs
    - Timeline: Month 4-6
    - Investment: $[W] training budget

---

### Long-Term Actions (12-24 Months)

11. **Shift 80% Workloads to InTune** (FR-006)
    - Workloads: Client apps, Office Click-to-Run, Windows Update policies
    - Timeline: Month 12
    - Milestone: 80% InTune, 20% ConfigMgr

12. **Complete GPO Migration** (FR-007)
    - Scope: All remaining GPOs (70-80 policies)
    - Acceptance: Document unsupported GPOs with alternative approaches
    - Timeline: Month 12-15
    - Effort: 4 weeks final push

13. **Decommission Configuration Manager** (FR-018)
    - Phase 1 (Month 16-17): Verify 100% workload transition, stakeholder sign-off
    - Phase 2 (Month 17): Disable ConfigMgr client deployments, set read-only mode
    - Phase 3 (Month 18): Backup database, uninstall clients, decommission infrastructure
    - Cost Savings: $[X]/year realized
    - Timeline: Month 18
    - Owner: IT Operations Director

14. **Mature Policy-as-Code Practice** (NFR-M-001, NFR-M-003)
    - Advanced: Automated policy testing, policy linting, CI/CD pipelines
    - Governance: Monthly policy review, quarterly architecture review
    - Timeline: Month 18-24
    - Owner: Enterprise Architect

15. **Transition to Azure AD-Only** (Principle 11)
    - Approach: Migrate from Hybrid Azure AD join to pure Azure AD join
    - Dependency: Legacy apps modernized or decommissioned
    - Timeline: Month 24-36 (future phase)
    - Owner: Enterprise Architect + Application Owner

---

## Risk Analysis

### High-Risk Areas

#### Risk 1: Configuration Manager Decommission Delayed
**Component**: Configuration Manager
**Risk**: 18-month timeline slips due to technical/political resistance
**Impact**: **CRITICAL**
- Dual management overhead continues (InTune + ConfigMgr)
- Cost savings ($[X]/year) not realized
- Cloud-first strategy blocked

**Probability**: MEDIUM (40%)

**Mitigation**:
- ✅ **Hard Deadline**: Month 18 non-negotiable. CIO mandate.
- ✅ **Weekly Reporting**: Co-management dashboard reviewed weekly by IT Ops leadership
- ✅ **Pause Criteria**: If <50% workloads shifted by Month 6, escalate to CIO
- ✅ **Vendor Support**: Engage Microsoft Partner for InTune expertise

---

#### Risk 2: GPO Migration Incomplete
**Component**: Custom GPO Migrations
**Risk**: 100+ GPOs too complex to migrate, unsupported settings block transition
**Impact**: **HIGH**
- Azure AD join blocked (GPOs require on-premises AD)
- Remote users require VPN (GPO delivery)
- Cloud-first strategy delayed

**Probability**: MEDIUM (30%)

**Mitigation**:
- ✅ **Group Policy Analytics**: Early GPO analysis (Month 1-2) identifies unsupported policies
- ✅ **80/20 Rule**: Prioritize critical 20% of GPOs (security, compliance) for migration
- ✅ **Accept Risk**: Some legacy GPOs (e.g., Windows 7 policies) may not need migration
- ✅ **Alternative Approaches**: Custom scripts, registry settings, business process changes for unsupported GPOs

---

#### Risk 3: Skills Gap in IT Operations
**Component**: IT Operations Team (skills inertia)
**Risk**: IT Ops insufficient InTune expertise, poor policy quality, production incidents
**Impact**: **MEDIUM**
- Migration delays due to rework
- User-facing incidents (policy misconfigurations)
- Helpdesk overload

**Probability**: MEDIUM (40%)

**Mitigation**:
- ✅ **Training**: 40 hours InTune training per IT Ops staff member (FR-015)
- ✅ **Vendor Partnership**: Microsoft Partner provides InTune expertise during transition
- ✅ **Internal Champions**: Identify 2-3 InTune advocates in IT team
- ✅ **Peer Review**: Policy changes require peer review before production deployment

---

### Opportunities

#### Opportunity 1: Policy-as-Code Maturation
**Component**: Policy-as-Code Repository
**Evolution**: 0.45 → 0.75 (12 months)
**Opportunity**: Emerging best practice. Early adoption positions org as leader in InTune governance.

**Business Value**:
- **Disaster Recovery**: Git repository enables rapid InTune tenant rebuild (40 hours vs weeks)
- **Audit Readiness**: Version-controlled policy changes with full audit trail
- **Change Control**: Pull request + peer review reduces policy misconfiguration risk
- **Knowledge Transfer**: Documented policies enable vendor-independent InTune management

**Investment**: LOW (2 weeks setup, ongoing maintenance 4 hours/month)
**ROI**: HIGH (risk mitigation + compliance + operational efficiency)

**Action**: Implement in Month 2 (immediate action #4)

---

#### Opportunity 2: Copilot+ PC AI Management
**Component**: Microsoft InTune Service (new capabilities)
**Evolution**: 0.92 → 0.95 (future feature adds)
**Opportunity**: Copilot+ PCs with NPU require InTune policies for AI feature enablement (Recall, Windows Studio Effects)

**Business Value**:
- **Competitive Advantage**: Early Copilot+ adoption (30% of new devices by Year 1) positions org for AI productivity gains
- **Privacy Governance**: InTune policies control Recall feature enablement, data retention, exclusions (NFR-C-001)
- **ARM64 Management**: InTune policies for ARM64 Copilot+ PCs (application compatibility, driver validation)

**Investment**: MEDIUM (Copilot+ pilot FR-019, ARM64 testing FR-020)
**ROI**: HIGH (10-15% productivity gains for Copilot+ users per Microsoft estimates)

**Action**: Copilot+ pilot (Month 4-6), production rollout (Month 12+)

---

## Traceability to Requirements

### Business Requirements Alignment

| Wardley Component | Aligned BR | Rationale |
|-------------------|------------|-----------|
| **Microsoft InTune Service** | BR-002 | Cloud-Native Endpoint Management |
| **Configuration Manager (decommission)** | BR-002, BR-003 | Cloud transition + cost savings |
| **InTune Compliance Policies** | BR-001 | Security Compliance and Risk Mitigation |
| **Conditional Access Policies** | BR-001 | Zero Trust Security Model |
| **Security Baseline Templates** | BR-001 | Security posture enforcement |
| **Policy Testing Framework** | BR-008 | Phased Rollout and Risk Mitigation |
| **Policy-as-Code Repository** | BR-006 | Audit Readiness and Compliance |
| **Application Packaging** | BR-004 | User Productivity (app delivery) |

---

### Functional Requirements Alignment

| Wardley Component | Aligned FR | Rationale |
|-------------------|------------|-----------|
| **Configuration Manager (co-management)** | FR-006 | Co-Management Setup |
| **Custom GPO Migrations** | FR-007 | Group Policy to InTune Migration |
| **Group Policy Analytics Tool** | FR-007 | GPO analysis tool |
| **Application Packaging** | FR-008 | Application Packaging for InTune |
| **Security Baseline Templates** | FR-009 | Security Baseline Deployment |
| **Conditional Access Policies** | FR-010 | Conditional Access Configuration |
| **Windows Update Rings** | FR-012 | Update Ring Configuration |
| **Policy Testing Framework** | FR-008, BR-008 | Pilot testing procedures |
| **Policy-as-Code Repository** | NFR-M-001 | Configuration Documentation |

---

### Architecture Principles Alignment

| Wardley Component | Aligned Principle | Rationale |
|-------------------|-------------------|-----------|
| **Microsoft InTune Service** | Principle 1 | Cloud-First Endpoint Management |
| **Configuration Manager (decommission)** | Principle 1 | Cloud-First (ConfigMgr is anti-pattern) |
| **Conditional Access Policies** | Principle 2 | Zero Trust Security Model |
| **Security Baseline Templates** | Principle 2 | Zero Trust Security Model |
| **InTune Configuration Profiles** | Principle 8 | Configuration Management via InTune Policies |
| **Windows Update Rings** | Principle 9 | Update Management and Patching |
| **Policy Testing Framework** | Principle 6 | Phased Rollout Strategy |
| **Policy-as-Code Repository** | Principle 8, 17 | Configuration Management + Audit Logging |

---

## Document References

- **Requirements**: [requirements.md](../requirements.md) - Version 2.0 (8 BR, 20 FR, 14 NFR, 3 INT)
- **Architecture Principles**: [.arckit/memory/architecture-principles.md](../../../.arckit/memory/architecture-principles.md) - Version 1.1 (18 principles)
- **Procurement Strategy Map**: [wardley-maps/procurement-strategy.md](procurement-strategy.md) - Version 1.0
- **Traceability Matrix**: [traceability-matrix.md](../traceability-matrix.md) - Version 2.0

---

## Version History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| **1.0** | 2025-10-15 | Enterprise Architecture Team | Initial Wardley Map for InTune Policy Management. 35 components mapped. Strategic analysis of build vs buy, inertia (ConfigMgr, GPOs), evolution predictions (12-month, 24-month), and risk assessment. |

---

## Approval

| Reviewer | Role | Status | Date | Comments |
|----------|------|--------|------|----------|
| [Enterprise Architect] | Solution Architect | ✅ Approved | 2025-10-15 | Map accurately reflects InTune policy landscape |
| [Endpoint Manager] | Technical Lead | ✅ Approved | 2025-10-15 | ConfigMgr decommission timeline realistic |
| [Security Architect] | Security Lead | ✅ Approved | 2025-10-15 | Conditional Access and compliance policies properly positioned |
| [IT Ops Director] | Project Owner | [ ] Pending | [DATE] | |

---

**End of Document**
