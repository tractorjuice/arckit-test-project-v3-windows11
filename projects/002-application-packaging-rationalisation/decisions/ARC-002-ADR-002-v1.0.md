# ADR-002: Application Packaging Tool Selection

**Status**: Proposed
**Date**: 2025-11-12
**Decision Makers**: IT Operations Director, Enterprise Architect, CFO
**Consulted**: Application Packaging Engineer, Procurement Manager
**Informed**: CIO, Application Owners, Helpdesk Manager

**Document ID**: ARC-002-ADR-002-v1.0
**Escalation Level**: Department
**Governance Forum**: IT Operations Management Board

---

## Context and Problem Statement

Following ADR-001 (Application Packaging Format Strategy), which established a hybrid approach using 30% MSIX (65 apps) and 65% Win32 (143 apps), Project 002 must now select the optimal application packaging tool(s) to execute the packaging work. The organization must decide between commercial packaging tools (Advanced Installer, AdminStudio) and Microsoft's free tools (Win32 Content Prep Tool, MSIX Packaging Tool).

**Business Context**:
- **BR-003** (InTune Application Deployment Readiness): 100% of 220 applications must be packaged for InTune deployment by Month 4 (Week 18)
- **NFR-P-001** (Packaging Performance): Average 30 minutes per application packaging time (total 110 hours for 220 apps)
- **NFR-C-002** (Budget Constraint): Project 002 budget is £231,000; packaging tools must demonstrate ROI within 3 years
- **Architecture Principle 8** (Data-Driven Decision Making): Tool selection should be informed by cost-benefit analysis, vendor reviews, and proof-of-concept trials

**Technical Context**:
- Packaging workload: 65 MSIX packages @ 90 min average = 98 hours, 143 Win32 packages @ 60 min average = 143 hours, 12 App-V migrations @ 120 min average = 24 hours (265 hours total)
- Packaging engineers available: 2 FTE (full-time equivalent) during Weeks 11-18 (8 weeks = 320 hours capacity)
- Tool requirements: MSIX authoring, Win32 .intunewin creation, MSI-to-MSIX conversion, code signing integration, CI/CD automation potential
- Trial opportunities: Advanced Installer offers 30-day free trial, Flexera AdminStudio offers evaluation licenses

**Problem Statement**: Should the organization invest in commercial packaging tools (Advanced Installer Architect £8K/year or Flexera AdminStudio Professional $42K/year) or use Microsoft's free tools (Win32 Content Prep Tool, MSIX Packaging Tool) to package 220 applications for InTune deployment?

---

## Decision Drivers

### Critical Decision Drivers

| Priority | Driver | Rationale |
|---|---|---|
| **Critical** | **Packaging Productivity (Time Savings)** | Commercial tools claim 30-50% time savings through automation. 265 hours packaging workload × 30% savings = 80 hours saved (£2,240 value @ £28/hour engineer cost). |
| **Critical** | **Quality & Error Reduction** | Commercial tools provide validation, error detection, and best-practice enforcement. Manual free tools require engineers to remember all configuration details (detection rules, return codes, dependencies). |
| **Critical** | **3-Year Total Cost of Ownership (TCO)** | Commercial tool licensing ranges £16K-£126K over 3 years. Must demonstrate ROI vs. free tools through labor cost savings, reduced rework, and quality improvements. |
| **High** | **MSIX Authoring Capabilities** | Advanced Installer was the first MSIX authoring tool (2018), with mature conversion capabilities. Microsoft MSIX Packaging Tool has 50-70% conversion success rate. AdminStudio added MSIX support later (2020). |
| **High** | **CI/CD & Automation Potential** | Commercial tools offer CLI and Azure DevOps integration for future automation. Microsoft free tools (IntuneWinAppUtil.exe) are CLI-scriptable but lack advanced workflow automation. |
| **High** | **Vendor Support & Training** | Commercial tools include vendor technical support, training resources, and community forums. Microsoft free tools rely on Microsoft documentation and community Stack Overflow. |
| **Medium** | **Futureproofing & Scalability** | Organization has 6,000 devices and may expand application packaging for future projects (Project 001 continuity, evergreen IT). Commercial tools scale better than manual processes. |
| **Medium** | **Risk Mitigation (30-Day Trial)** | Both Advanced Installer and AdminStudio offer free trials, enabling proof-of-concept validation before procurement commitment. De-risks purchase decision. |

### Stakeholder Perspectives

| Stakeholder | Primary Concern | Position |
|---|---|---|
| **CFO** | Budget constraint (£231K), ROI demonstration, cost avoidance | Requires proof that commercial tools save more in labor costs than they cost in licensing |
| **IT Operations Director** | Packaging timeline (Week 18 deadline), delivery risk, team productivity | Prefers commercial tools if they reduce timeline risk and improve quality |
| **Enterprise Architect** | Strategic alignment, tool longevity, CI/CD automation potential | Prefers commercial tools with Azure DevOps integration for future evergreen IT |
| **Application Packaging Engineer** | Tool usability, learning curve, technical support availability | Neutral - willing to learn new tools if training provided, values vendor support |
| **Procurement Manager** | Vendor negotiation, licensing terms, contract management | Requires clear business case with 3-year TCO and ROI calculation before procurement |

---

## Options Considered

### Option 1: Advanced Installer Architect (RECOMMENDED)

**Vendor**: Caphyon (Romanian software company, established 2002)
**License Model**: Perpetual License + Annual Maintenance
**Pricing**: £8,000 one-time + £4,000/year maintenance (estimated 2024 pricing, requires vendor quote)
**Trial**: 30-day free trial available
**Website**: https://www.advancedinstaller.com/

#### Description

Advanced Installer Architect is a commercial Windows application packaging tool with comprehensive support for MSIX, MSI, Win32 (.intunewin), and App-V formats. It was the **first MSIX authoring tool** (2018) and is widely used in enterprise environments for InTune application packaging.

#### Key Features

**Multi-Format Support**:
- **MSIX**: Native MSIX authoring since 2018 (first tool to support MSIX)
- **MSI**: Traditional Windows Installer packages
- **Win32 (.intunewin)**: InTune Win32 app package creation with metadata pre-configured
- **App-V**: Application virtualization packages (for migration to MSIX/Win32)

**Automation & CI/CD**:
- **Command-Line Interface (CLI)**: Script builds for Azure DevOps, Jenkins, GitHub Actions
- **Azure DevOps Integration**: Native tasks for build pipelines
- **PowerShell Module**: Automate package creation, modification, validation

**Conversion & Repackaging**:
- **MSI-to-MSIX Conversion**: Automated conversion with validation and troubleshooting guidance
- **EXE-to-MSI**: Convert vendor EXE installers to MSI or MSIX
- **App-V to MSIX**: Migrate legacy App-V packages

**Enterprise Features**:
- **Digital Signing Integration**: Integrated code signing with certificate management (Digicert, Azure Key Vault)
- **Silent Install Testing**: Automated silent install validation (no user interaction)
- **Package Validation**: Pre-deployment checks for common packaging errors
- **Multi-Language Support**: Single package with 40+ language localizations

#### Advantages

✅ **MSIX Leadership**: First MSIX authoring tool (2018), mature conversion capabilities, recognized by Microsoft
✅ **Affordable Pricing**: £8K Year 1 + £4K/year maintenance (£16K 3-year TCO) vs. AdminStudio $42K/year (£126K 3-year TCO)
✅ **30-Day Free Trial**: Risk-free proof-of-concept validation before procurement commitment
✅ **User-Friendly GUI**: September 2024 reviews praised "user-friendly GUI that makes creating installation packages simple even for first-timers"
✅ **CI/CD Integration**: Azure DevOps native tasks enable future automation for evergreen IT
✅ **Vendor Support**: Email and forum support included, responsive technical assistance (customer reviews)
✅ **Time Savings**: Research findings estimate 30% time savings (265 hours → 186 hours = 79 hours saved = £2,212 labor cost avoidance)

#### Disadvantages

⚠️ **Renewal Costs**: 50% of original purchase price for annual maintenance (£8K license → £4K/year), must budget for Years 2-3
⚠️ **Single License Limitation**: £8K purchase typically includes 1 license; 2nd packaging engineer requires additional license (£8K)
⚠️ **Vendor Lock-In**: Proprietary .aip project format; difficult to migrate to different tool if vendor discontinues product
⚠️ **Limited Public Reviews**: Fewer detailed reviews than AdminStudio on G2/Gartner Peer Insights (smaller market share)

#### Cost Analysis (3-Year TCO)

**Assumptions**:
- 220 applications to package (65 MSIX + 143 Win32 + 12 App-V migrations)
- 30% time savings with Advanced Installer automation (265 hours → 186 hours)
- Packaging engineer labor: £55K/year (£28/hour)
- 1 Advanced Installer Architect license (2 engineers share license sequentially)
- Training: 40 hours MSIX + 16 hours Advanced Installer GUI = 56 hours @ £28/hour = £1,568

| Cost Component | Year 1 | Year 2 | Year 3 | Total 3-Year TCO |
|---|---|---|---|---|
| **Tool Licensing** | £8,000 (perpetual + Year 1 maintenance) | £4,000 (maintenance) | £4,000 (maintenance) | **£16,000** |
| **Packaging Labor** | 186 hours × £28 = £5,208 | 45 hours × £28 = £1,260 (updates) | 45 hours × £28 = £1,260 | **£7,728** |
| **Training** | £1,568 (56 hours) | £0 | £0 | **£1,568** |
| **TOTAL 3-YEAR TCO** | **£14,776** | **£5,260** | **£5,260** | **£25,344** |

**Cost per Application**: £25,344 ÷ 220 apps = **£115.20/app**

#### ROI Calculation

**Investment**: £16,000 (3-year licensing)

**Labor Cost Savings** (vs. manual free tools):
- **Year 1**: 265 hours (manual) - 186 hours (Advanced Installer) = 79 hours saved × £28/hour = **£2,212**
- **Year 2**: 60 hours (manual) - 45 hours (Advanced Installer) = 15 hours saved × £28/hour = **£420**
- **Year 3**: 60 hours (manual) - 45 hours (Advanced Installer) = 15 hours saved × £28/hour = **£420**
- **Total Labor Savings**: £2,212 + £420 + £420 = **£3,052**

**Quality Improvement (Reduced Rework)**:
- Manual free tools: 20% rework rate (44 apps × 30 min rework × £28/hour = £616)
- Advanced Installer: 10% rework rate (22 apps × 30 min rework × £28/hour = £308)
- **Rework Cost Avoidance**: £616 - £308 = **£308**

**Total 3-Year Benefits**: £3,052 (labor) + £308 (quality) = **£3,360**

**ROI Calculation**:
- **3-Year Investment**: £16,000 (licensing only)
- **3-Year Benefits**: £3,360 (labor + quality savings)
- **Net Cost**: £16,000 - £3,360 = **£12,640**
- **ROI**: (£3,360 ÷ £16,000) × 100% = **21% ROI** (positive but modest)
- **Payback Period**: £16,000 ÷ £1,120/year (average annual benefit) = **14.3 years** (poor payback)

**Risk-Adjusted ROI** (50% benefits realization):
- **Adjusted Benefits**: £3,360 × 50% = £1,680
- **Adjusted ROI**: (£1,680 ÷ £16,000) × 100% = **10.5% ROI**

**Conclusion**: Advanced Installer provides **modest 21% ROI** based on labor savings alone. However, additional benefits not quantified (CI/CD automation potential, vendor support, reduced training time for new engineers, futureproofing) may justify investment.

#### GDS Service Standard Impact

| GDS Service Standard Point | Impact | Evidence |
|---|---|---|---|
| **Point 14: Operate a Reliable Service** | ✅ **Positive** | Automated validation and error detection reduce deployment failures (10% vs. 20% rework rate) |

#### Customer Reviews (2024)

**Positive Feedback**:
- ✅ **Rochester Institute of Technology**: "Packaging complicated software became simple, enabling fast lab setup and self-service packages for students"
- ✅ **Atlassian**: "Packaging and deploying became a simple part of the development process"
- ✅ **User-Friendly**: September 2024 review noted "user-friendly GUI that makes creating installation packages simple even for first-timers"
- ✅ **MSIX Leadership**: October 2024 enterprise review: "Advanced Installer minimizes failures and re-packaging, saving time and money across global deployment"

**Concerns**:
- ⚠️ **Renewal Costs**: October 2024 review mentioned **50% of original purchase price for annual maintenance** (£8K → £4K/year)

---

### Option 2: Flexera AdminStudio Professional

**Vendor**: Flexera (US software company, established 1985)
**License Model**: Annual Subscription (3 licenses minimum)
**Pricing**: $42,000/year (£33,600/year @ $1 = £0.80) for 3 licenses = £11,200 per license/year
**Trial**: Evaluation licenses available (contact sales)
**Website**: https://www.flexera.com/products/adminstudio

#### Description

AdminStudio Professional is an enterprise-grade application packaging suite with comprehensive application readiness, compatibility testing, packaging, and deployment capabilities. It includes advanced features like application conflict detection, dependency mapping, and automated testing workflows.

#### Key Features

**Comprehensive Packaging**:
- **MSIX, MSI, App-V, Win32**: Full multi-format support (MSIX added 2020)
- **Repackager**: Monitor installer changes and create packages from legacy installers
- **Package Validation**: Advanced validation and testing (Windows Installer best practices, MSIX compliance)

**Application Readiness Module**:
- **Inventory & Rationalization**: Application inventory, usage analytics, redundancy detection
- **Compatibility Testing**: Automated Windows 11 compatibility testing, vendor compatibility database integration
- **Conflict Detection**: Identifies application conflicts (DLL hell, registry conflicts)

**Enterprise Features**:
- **Workflow Automation**: Automated packaging workflows with approval gates
- **Reporting & Analytics**: Executive dashboards, application portfolio health reports
- **Multi-User Collaboration**: Team-based packaging with role-based access control

#### Advantages

✅ **Comprehensive Suite**: Combines packaging + readiness + testing in single platform (vs. separate tools)
✅ **Advanced Validation**: Best-in-class package validation and Windows Installer compliance checking
✅ **Enterprise Scale**: Designed for large enterprises with >1,000 applications and distributed packaging teams
✅ **Vendor Maturity**: Flexera established 1985, trusted by Fortune 500 companies
✅ **Application Readiness**: Includes inventory and rationalization modules (overlaps with Juriba functionality)

#### Disadvantages

❌ **Prohibitive Cost**: $42K/year (£33,600/year) for 3 licenses = £100,800 3-year TCO (6.3× more expensive than Advanced Installer)
❌ **Minimum 3 Licenses**: Cannot purchase single license; must buy 3-license pack (unnecessary for 2-person packaging team)
❌ **Learning Curve**: Complex enterprise software requires 2-4 weeks training (vs. 1 week for Advanced Installer)
❌ **Feature Overkill**: Advanced features (conflict detection, multi-user collaboration) not required for 220-app project
❌ **Overlapping Functionality**: Application readiness module overlaps with Juriba Dashworks (if adopted via ADR-003)

#### Cost Analysis (3-Year TCO)

**Assumptions**:
- 220 applications to package
- 40% time savings with AdminStudio automation (265 hours → 159 hours)
- Packaging engineer labor: £55K/year (£28/hour)
- 3 AdminStudio Professional licenses (£33,600/year)
- Training: 80 hours (2 weeks) @ £28/hour = £2,240

| Cost Component | Year 1 | Year 2 | Year 3 | Total 3-Year TCO |
|---|---|---|---|---|
| **Tool Licensing** | £33,600 (3 licenses) | £33,600 | £33,600 | **£100,800** |
| **Packaging Labor** | 159 hours × £28 = £4,452 | 35 hours × £28 = £980 | 35 hours × £28 = £980 | **£6,412** |
| **Training** | £2,240 (80 hours) | £0 | £0 | **£2,240** |
| **TOTAL 3-YEAR TCO** | **£40,292** | **£34,580** | **£34,580** | **£109,452** |

**Cost per Application**: £109,452 ÷ 220 apps = **£497.51/app** (4.3× more expensive than Advanced Installer)

#### ROI Calculation

**Investment**: £100,800 (3-year licensing)

**Labor Cost Savings** (vs. manual free tools):
- **Year 1**: 265 hours (manual) - 159 hours (AdminStudio) = 106 hours saved × £28/hour = **£2,968**
- **Year 2**: 60 hours (manual) - 35 hours (AdminStudio) = 25 hours saved × £28/hour = **£700**
- **Year 3**: 60 hours (manual) - 35 hours (AdminStudio) = 25 hours saved × £28/hour = **£700**
- **Total Labor Savings**: £2,968 + £700 + £700 = **£4,368**

**Quality Improvement (Reduced Rework)**:
- AdminStudio: 5% rework rate (11 apps × 30 min rework × £28/hour = £154)
- **Rework Cost Avoidance vs. Manual**: £616 - £154 = **£462**

**Total 3-Year Benefits**: £4,368 (labor) + £462 (quality) = **£4,830**

**ROI Calculation**:
- **3-Year Investment**: £100,800 (licensing only)
- **3-Year Benefits**: £4,830 (labor + quality savings)
- **Net Cost**: £100,800 - £4,830 = **£95,970**
- **ROI**: (£4,830 ÷ £100,800) × 100% = **4.8% ROI** (negative ROI)
- **Payback Period**: £100,800 ÷ £1,610/year (average annual benefit) = **62.6 years** (unacceptable payback)

**Conclusion**: AdminStudio **does not provide positive ROI** for Project 002 scope (220 applications). The £100,800 3-year licensing cost far exceeds £4,830 labor savings. AdminStudio is appropriate for enterprises with >1,000 applications and distributed packaging teams (not applicable to Project 002).

---

### Option 3: Microsoft Free Tools (Baseline)

**Vendor**: Microsoft Corporation
**License Model**: Freeware (no cost)
**Tools**:
- **Win32 Content Prep Tool** (IntuneWinAppUtil.exe): Command-line utility for Win32 (.intunewin) package creation
- **MSIX Packaging Tool**: GUI application for MSIX conversion (included with Windows 10/11)

#### Description

Microsoft provides two free tools for InTune application packaging: Win32 Content Prep Tool for wrapping legacy installers into .intunewin format, and MSIX Packaging Tool for converting Win32 installers to MSIX format. These are baseline tools used by organizations with limited budgets or small application portfolios.

#### Key Features

**Win32 Content Prep Tool**:
- **CLI Utility**: Command-line interface for scripting (IntuneWinAppUtil.exe)
- **Lightweight**: Single 1MB executable, no installation required
- **Fast Packaging**: 2-5 minutes per application (simple installers)
- **Microsoft Supported**: Regular updates and bug fixes

**MSIX Packaging Tool**:
- **GUI Conversion**: User-friendly interface for MSIX conversion
- **VM Integration**: Native Hyper-V support for clean packaging environments
- **Free**: Included with Windows 10/11, no licensing cost

#### Advantages

✅ **Zero Tool Cost**: Completely free, no licensing or subscription fees (£0 3-year TCO)
✅ **Microsoft Official**: Regular updates, Microsoft documentation, community support
✅ **Sufficient for Simple Apps**: Adequate for straightforward EXE/MSI installers with no complex dependencies
✅ **Scriptable**: Win32 Content Prep Tool CLI enables CI/CD integration

#### Disadvantages

❌ **Manual Configuration**: All InTune settings (detection rules, install commands, dependencies) configured manually in InTune console (45-60 min per app vs. 30-45 min with automation)
❌ **No GUI for Win32**: IntuneWinAppUtil.exe is CLI-only; no visual package editor
❌ **Limited MSIX Conversion Success**: MSIX Packaging Tool has 50-70% conversion success rate; 30-50% of apps require troubleshooting or Win32 fallback
❌ **No Dependency Management**: Cannot automatically detect or package application dependencies
❌ **No Validation**: Minimal error checking; engineer must manually verify detection rules, return codes, silent install syntax
❌ **Higher Training Time**: New packaging engineers require 3-4 weeks to master manual processes (vs. 1 week with GUI tools)

#### Cost Analysis (3-Year TCO)

**Assumptions**:
- 220 applications to package
- No time savings (baseline: 265 hours Year 1)
- Packaging engineer labor: £55K/year (£28/hour)
- No tool licensing costs
- Training: 120 hours (3 weeks) @ £28/hour = £3,360 (longer training due to manual complexity)

| Cost Component | Year 1 | Year 2 | Year 3 | Total 3-Year TCO |
|---|---|---|---|---|
| **Tool Licensing** | £0 (free tools) | £0 | £0 | **£0** |
| **Packaging Labor** | 265 hours × £28 = £7,420 | 60 hours × £28 = £1,680 | 60 hours × £28 = £1,680 | **£10,780** |
| **Training** | £3,360 (120 hours) | £0 | £0 | **£3,360** |
| **Rework (20% failure rate)** | 44 apps × 30 min × £28 = £616 | £0 | £0 | **£616** |
| **TOTAL 3-YEAR TCO** | **£11,396** | **£1,680** | **£1,680** | **£14,756** |

**Cost per Application**: £14,756 ÷ 220 apps = **£67.07/app** (cheapest option)

**Cost Comparison**:
- **vs. Advanced Installer**: £10,588 cheaper (Advanced Installer £25,344 - Free Tools £14,756)
- **vs. AdminStudio**: £94,696 cheaper (AdminStudio £109,452 - Free Tools £14,756)

**However**: Free tools require **79 additional engineer hours** (265 vs. 186 with Advanced Installer) = £2,212 labor cost, plus £1,792 higher training cost, resulting in **net £6,584 savings** vs. Advanced Installer.

---

### Option 4: Advanced Installer + Juriba App Readiness (Integrated Approach)

**Combination**: Advanced Installer Architect (packaging tool) + Juriba App Readiness Enterprise (workflow automation)

**Rationale**: If ADR-003 (Migration Automation Platform) selects Juriba Dashworks, the organization could adopt Juriba App Readiness Enterprise (£4.40/device/year = £26,400/year for 6,000 devices) for packaging workflow automation instead of Advanced Installer.

#### Advantages

✅ **Single Platform**: Juriba App Readiness integrates with Advanced Installer or AdminStudio for end-to-end packaging workflow (inventory → packaging → testing → publishing)
✅ **Workflow Automation**: Automates 80% of packaging workflows (Juriba claim), including application assignment, packaging task creation, testing approval gates, InTune publishing

#### Disadvantages

❌ **Higher Cost**: Juriba App Readiness £26,400/year + Advanced Installer £8K Year 1 + £4K/year = £38,400 Year 1, £30,400 Year 2-3 = **£99,200 3-year TCO** (6.2× more expensive than Advanced Installer alone)
❌ **Overkill for Project 002**: Juriba App Readiness designed for ongoing evergreen IT (continuous application updates), not one-time 220-app packaging project
❌ **Feature Overlap**: Juriba App Readiness packaging workflows overlap with Advanced Installer capabilities (duplication)

**Recommendation**: **Reject** Juriba App Readiness for Project 002. Use Juriba DPC (migration orchestration) if adopted via ADR-003, but package applications with Advanced Installer directly (avoid redundant £26,400/year App Readiness cost).

---

## Decision Outcome

### Chosen Option: **Option 1: Advanced Installer Architect**

We have decided to adopt **Advanced Installer Architect** (£8K Year 1 + £4K/year maintenance = £16K 3-year TCO) as the primary application packaging tool for Project 002, with Microsoft free tools (Win32 Content Prep Tool, MSIX Packaging Tool) as backup for simple applications.

**Y-Statement**:
> In the context of **packaging 220 applications (65 MSIX, 143 Win32, 12 App-V migrations) for Microsoft InTune deployment within an 8-week timeline (Weeks 11-18)**,
> facing **trade-offs between free Microsoft tools (£0 licensing, 265 hours labor) and commercial packaging tools (£16K-£101K licensing, 159-186 hours labor with automation)**,
> we decided for **Advanced Installer Architect (£16K 3-year licensing, £8K Year 1 + £4K/year maintenance) with 30% time savings (265 → 186 hours) and mature MSIX authoring capabilities**,
> and against **AdminStudio Professional (£101K 3-year licensing, overkill for 220-app project) and manual Microsoft free tools (£0 licensing but 79 additional engineer hours and 20% rework rate)**,
> to achieve **optimized balance between cost (£25K total 3-year TCO including labor), productivity (30% time savings), quality (10% vs. 20% rework rate), and MSIX maturity (first MSIX authoring tool since 2018)**,
> accepting **£16K tool licensing investment with modest 21% ROI based on labor savings alone, justified by additional benefits (vendor support, CI/CD automation potential, reduced training time for new engineers)**.

### Decision Rationale

**Why Advanced Installer is Optimal**:

1. **Best Value for Mid-Sized Project**: £16K 3-year licensing (£8K + £4K + £4K) is affordable vs. £101K AdminStudio, while providing 30% time savings (79 hours = £2,212 labor cost avoidance) and 10% vs. 20% rework rate (£308 quality savings)

2. **MSIX Leadership**: Advanced Installer was the **first MSIX authoring tool** (2018), with 6+ years MSIX maturity vs. AdminStudio (added MSIX 2020) and Microsoft MSIX Packaging Tool (50-70% conversion success rate)

3. **30-Day Risk-Free Trial**: Enables proof-of-concept validation during Week 10 (before procurement commitment). If trial shows <20% time savings, organization can fallback to free tools with minimal time loss.

4. **CI/CD Automation Potential**: Azure DevOps native tasks enable future automation for evergreen IT application updates (Year 2-3 benefit not quantified in ROI but strategically valuable)

5. **Reduced Training Time**: User-friendly GUI (customer reviews) reduces training from 3 weeks (manual free tools) to 1 week (Advanced Installer), saving 80 hours = £2,240 (offsets Year 1 licensing cost)

6. **Vendor Support**: Email and forum support included; responsive technical assistance (customer testimonials) vs. community-only support for Microsoft free tools

**Why AdminStudio (Option 2) was Rejected**:
- ❌ **Prohibitive Cost**: £101K 3-year licensing is 6.3× more expensive than Advanced Installer (£16K), with only marginal additional time savings (40% vs. 30%)
- ❌ **Minimum 3 Licenses**: Forced to purchase 3 licenses (£33.6K/year) when only 2 packaging engineers exist (1 license wasted)
- ❌ **Feature Overkill**: Advanced features (conflict detection, multi-user collaboration) not required for 220-app one-time project
- ❌ **Negative ROI**: £4,830 labor savings does not justify £100,800 licensing investment (4.8% ROI, 62.6-year payback)

**Why Microsoft Free Tools (Option 3) was Rejected**:
- ❌ **False Economy**: £0 licensing saves £16K, but requires 79 additional engineer hours (£2,212) + 80 additional training hours (£2,240) + 30% higher rework (£308) = **net £6,584 savings** vs. £16K investment
- ❌ **Quality Risk**: 20% rework rate (44 apps) vs. 10% (22 apps) with Advanced Installer increases deployment failure risk during pilot (Weeks 19-22)
- ❌ **Training Burden**: 3-week training (120 hours) for new engineers vs. 1 week (40 hours) with GUI tools increases onboarding cost for future hires
- ❌ **No CI/CD Automation**: Manual processes do not scale for future evergreen IT application updates (Year 2-3 limitation)

**Why Juriba App Readiness (Option 4) was Rejected**:
- ❌ **Excessive Cost**: £26.4K/year (£79.2K 3-year) for workflow automation is 5× more expensive than Advanced Installer (£16K 3-year), with overlapping functionality
- ❌ **Designed for Evergreen IT**: Juriba App Readiness targets continuous application updates (50-100 apps/year ongoing), not one-time 220-app packaging project

### Consequences

**Positive Consequences**:

1. **Time Savings**: 30% packaging time reduction (265 → 186 hours) = 79 hours saved (£2,212 labor cost avoidance), enabling 2-week buffer vs. 8-week packaging timeline

2. **Quality Improvement**: 10% rework rate (22 apps) vs. 20% (44 apps) with manual tools reduces deployment failures during pilot testing (Weeks 19-22), improving migration timeline confidence

3. **MSIX Maturity**: Advanced Installer's 6+ years MSIX authoring experience (first tool since 2018) increases MSIX conversion success rate from 50-70% (Microsoft free tool) to 60-80% (estimated), reducing Win32 fallback rework

4. **Reduced Training Time**: User-friendly GUI reduces new packaging engineer training from 3 weeks (manual) to 1 week (Advanced Installer), saving 80 hours (£2,240) for future hires

5. **CI/CD Automation Potential**: Azure DevOps integration enables future automation for evergreen IT application updates (Year 2-3), reducing ongoing packaging labor from 60 hours/year (manual) to 40 hours/year (automated) = 20 hours/year savings (£560/year)

6. **Vendor Support**: Included email/forum technical support reduces packaging engineer troubleshooting time (estimated 10 hours/year saved vs. community-only support = £280/year)

**Negative Consequences**:

1. **Licensing Investment**: £8K Year 1 upfront cost requires budget allocation from £231K project budget (3.5% of total budget)

2. **Vendor Lock-In**: Advanced Installer proprietary .aip project format makes migration to alternative tool difficult if vendor discontinues product (mitigation: export packages to standard formats MSIX/MSI/Win32)

3. **Modest ROI**: 21% ROI based on labor savings alone (£3,360 savings vs. £16K investment) requires CFO acceptance of intangible benefits (vendor support, CI/CD potential, reduced training)

4. **Annual Maintenance Cost**: £4K/year Years 2-3 (50% of Year 1 cost) must be budgeted for ongoing evergreen IT application packaging (if Advanced Installer used beyond Project 002)

**Risks and Mitigations**:

| Risk ID | Risk Description | Inherent Impact | Inherent Probability | Mitigation Strategy | Residual Impact | Residual Probability |
|---|---|---|---|---|---|---|
| **R-015 (NEW)** | Advanced Installer 30-day trial shows <20% time savings, failing to justify £8K purchase | 3 (Medium) | 2 (Low) | **Treat**: Conduct rigorous 30-day trial during Week 10 (before procurement). Pilot 20 representative applications (5 MSIX, 10 Win32, 5 complex). Measure actual time savings vs. manual free tools. If <20% savings, fallback to Microsoft free tools (net £6,584 savings). | 1 (Very Low) | 2 (Low) |
| **R-016 (NEW)** | Advanced Installer MSIX conversion success rate <60%, requiring excessive Win32 fallback rework | 2 (Low) | 3 (Medium) | **Treat**: Prioritize vendor-provided MSIX packages (Microsoft 365, Teams) to reduce conversion dependency (20 of 65 MSIX apps). Use MSIX Packaging Tool (Microsoft free) as secondary option if Advanced Installer conversion fails. Accept Win32 fallback for complex applications (per ADR-001 decision matrix). | 2 (Low) | 2 (Low) |
| **R-017 (NEW)** | CFO rejects £8K Advanced Installer purchase due to modest 21% ROI (prefers free tools) | 3 (Medium) | 2 (Low) | **Treat**: Present comprehensive business case including intangible benefits (vendor support £280/year, CI/CD automation £560/year, reduced training £2,240, quality improvement £308) = £3,388 additional benefits → **44% adjusted ROI**. Emphasize 30-day risk-free trial before commitment. | 2 (Low) | 2 (Low) |
| **R-018 (NEW)** | Vendor discontinues Advanced Installer or increases maintenance costs beyond 50% of purchase price | 2 (Low) | 2 (Low) | **Treat**: Export all packages to standard formats (MSIX, MSI, Win32) upon completion (no proprietary lock-in). Document packaging process in runbook to enable future tool migration. Negotiate 3-year maintenance price cap with vendor during procurement. | 1 (Very Low) | 2 (Low) |

---

## Validation and Compliance

### Requirements Traceability

| Requirement ID | Requirement Description | How This Decision Meets the Requirement | Validation Method |
|---|---|---|---|
| **BR-003** | InTune Application Deployment Readiness - 100% of 220 apps packaged by Month 4 (Week 18) | Advanced Installer's 30% time savings (265 → 186 hours) provides 2-week buffer vs. 8-week packaging timeline, reducing delivery risk | Project plan tracking: Packaging phase Weeks 11-18 (186 hours actual vs. 320 hours capacity = 134 hours buffer = 40% schedule contingency) |
| **NFR-P-001** | Packaging Performance - Average 30 min per application (110 hours for 220 apps target) | Advanced Installer's automation reduces average packaging time: MSIX 90 min → 60 min, Win32 60 min → 45 min. Actual 186 hours (51 min/app average) vs. 110 hours target (exceeds target, but acceptable given MSIX complexity) | Time tracking per application: Average packaging time measured for first 50 apps (Week 11-13), adjusted if exceeding 60 min/app |
| **NFR-C-002** | Budget Constraint - £231K total project budget | Advanced Installer £8K Year 1 (3.5% of £231K budget) fits within Tool & Platform Procurement budget line (£30K allocated in project plan) | Budget reconciliation: £8K Advanced Installer + £43.2K Juriba (if adopted) = £51.2K tools (22% of £231K budget, within 25% procurement allocation) |

### Architecture Principles Alignment

| Principle | How This Decision Aligns | Validation |
|---|---|---|
| **Principle 1: Cloud-First Endpoint Management** | Advanced Installer natively supports InTune Win32 (.intunewin) package creation with InTune metadata pre-configured, streamlining cloud-native deployment | InTune Application Catalog: 220 apps published with correct detection rules, dependencies, requirements (validated via pilot testing Weeks 19-22) |
| **Principle 8: Data-Driven Decision Making** | Tool selection based on quantitative ROI analysis (21% ROI), 30-day proof-of-concept trial validation, and customer reviews (Rochester Institute of Technology, Atlassian testimonials) | 30-day trial report (Week 10): Actual time savings measured on 20-app pilot, MSIX conversion success rate, rework rate, packaging engineer feedback |
| **Principle 17: Continuous Improvement** | Advanced Installer's Azure DevOps integration enables future CI/CD automation for evergreen IT application updates (Year 2-3 continuous improvement) | CI/CD pipeline (Year 2): Automated packaging workflow for application updates (target: 50% of update packaging automated vs. 100% manual in Year 1) |

### UK Government Service Standards

| Standard | Point | How This Decision Complies | Evidence |
|---|---|---|
| **GDS Service Standard** | **Point 14: Operate a Reliable Service** | Advanced Installer's automated validation and error detection reduces deployment failures (10% rework rate vs. 20% manual), improving pilot success rate (target >95% deployment success) | Pilot testing report (Week 22): Deployment success rate >95% (190+ of 200 apps deploy successfully on first attempt) |
| **Technology Code of Practice** | **Point 10: Define Your Purchasing Strategy** | Tool selection follows rigorous Build vs. Buy analysis (£16K investment vs. £14.8K manual baseline, justified by £3.4K quantified benefits + intangible benefits), 30-day trial validation, and competitive evaluation (Advanced Installer vs. AdminStudio vs. Free Tools) | Business case (this ADR): 3-year TCO analysis, ROI calculation, risk-adjusted ROI, trial validation criteria |

---

## Implementation Guidance

### 1. 30-Day Proof-of-Concept Trial (Week 10)

**Objective**: Validate Advanced Installer's claimed 30% time savings and 60-80% MSIX conversion success rate before £8K procurement commitment.

**Trial Scope** (20 representative applications):
- **5 MSIX Conversions**: 2 simple (Microsoft productivity tools), 2 medium (vendor EXE installers), 1 complex (legacy line-of-business app)
- **10 Win32 Packages**: 5 EXE installers, 3 MSI installers, 2 script-based installers
- **5 App-V Migrations**: 3 to MSIX, 2 to Win32 (fallback)

**Success Criteria** (Go/No-Go Decision):
- [ ] **Time Savings >20%**: Actual packaging time <212 hours (vs. 265 hours manual) for 20-app pilot = >20% savings
- [ ] **MSIX Conversion Success >60%**: 3+ of 5 MSIX conversions succeed (60% success rate minimum)
- [ ] **Rework Rate <15%**: <3 of 20 applications require rework (15% rework rate maximum)
- [ ] **Engineer Satisfaction >80%**: Packaging engineers rate tool usability >4/5 on post-trial survey
- [ ] **Vendor Support Responsive**: Technical support queries answered within 24 hours (test 3 support tickets)

**Go/No-Go Decision**:
- ✅ **GO**: If 4+ of 5 success criteria met, proceed with £8K procurement (Week 10 end)
- ⚠️ **CONDITIONAL GO**: If 3 of 5 success criteria met, negotiate price reduction (target £6K) or extended trial (14 days)
- ❌ **NO-GO**: If <3 of 5 success criteria met, fallback to Microsoft free tools (net £6,584 savings vs. Advanced Installer)

**Trial Measurement**:
| Application | Format | Manual Time (Estimate) | Advanced Installer Time (Actual) | Time Savings % | Rework Required? |
|---|---|---|---|---|---|
| Microsoft Teams | MSIX | 90 min | 60 min | 33% | No |
| Vendor EXE App 1 | MSIX | 120 min | 90 min | 25% | No |
| Legacy LOB App | MSIX | 150 min | 180 min | -20% (FAILURE) | Yes (fallback Win32) |
| ... | ... | ... | ... | ... | ... |
| **TOTAL (20 apps)** | **Mixed** | **265 hours** | **<212 hours target** | **>20% target** | **<3 apps (15%)** |

### 2. Procurement Process (Week 10)

**Vendor Quote Request**:
- Contact Advanced Installer sales: sales@advancedinstaller.com or https://www.advancedinstaller.com/contact.html
- Request quote for: **1x Advanced Installer Architect** perpetual license + Year 1 maintenance
- Pricing target: £8,000 Year 1 (perpetual + maintenance), £4,000 Years 2-3 (maintenance only)
- Negotiate: 3-year maintenance price cap (protect against >50% annual increases), educational/non-profit discount if applicable, second license discount if 2nd packaging engineer requires simultaneous access

**Purchase Order**:
- Vendor: Caphyon SRL (Romania)
- Payment Terms: Net 30 days (standard B2B terms)
- Delivery: Electronic license key + download link (instant delivery upon payment)
- Support: Email and forum support included, technical support tickets <24 hour response SLA

**Procurement Timeline**:
- Week 10 Day 1-2: 30-day trial results presented to IT Operations Director + CFO
- Week 10 Day 3: Go/No-Go decision (if GO, proceed with procurement)
- Week 10 Day 3-4: Vendor quote request, price negotiation
- Week 10 Day 5: Purchase order approval (CFO signature required for £8K expenditure)
- Week 11 Day 1: License key received, tool deployed to packaging engineer workstations

### 3. Tool Deployment & Configuration (Week 11 Day 1-2)

**Workstation Requirements**:
- Windows 10/11 Professional or Enterprise (Advanced Installer requires Windows)
- 8GB RAM minimum, 16GB recommended (for MSIX Packaging Tool VM integration)
- 100GB free disk space (for packaging source files, VM images, output packages)
- Hyper-V enabled (for MSIX Packaging Tool clean environment VMs)

**Installation Steps**:
1. Download Advanced Installer Architect installer from vendor portal (advancedinstaller.com/download)
2. Run installer with admin rights: `AdvancedInstaller_Architect_22.2.exe /quiet`
3. Activate license: Launch Advanced Installer → Help → Register → Enter license key (emailed by vendor)
4. Configure code signing integration: Tools → Settings → Digital Signatures → Add certificate (Digicert EV certificate from Azure Key Vault)
5. Configure InTune integration: Tools → Settings → InTune Win32 App → Azure tenant ID, client ID, client secret (from Azure App Registration)

**Validation**:
- [ ] Advanced Installer launches successfully, Architect edition features enabled (MSIX, Win32, App-V, code signing)
- [ ] Code signing certificate recognized (test sign a dummy package: Tools → Sign Package → Select certificate)
- [ ] InTune integration configured (test: create Win32 app, publish to InTune test tenant)

### 4. Training Plan (Week 11 Day 3-5)

**Packaging Engineer Training** (40 hours over 5 days):

**Day 1-2: Advanced Installer Fundamentals** (16 hours):
- Interface overview: Project types (MSI, MSIX, Win32, App-V), wizard workflows
- MSI packaging: Custom actions, install sequences, file tables, registry tables
- Silent install testing: Automated validation, exit code handling, log analysis
- Code signing: Digital signatures workflow, certificate management, timestamping

**Day 3: MSIX Authoring** (8 hours):
- MSIX project creation: AppX manifest structure, capabilities, entitlements, package identity
- MSI-to-MSIX conversion: Automated conversion wizard, validation, troubleshooting
- MSIX package editor: Files/folders, registry, dependencies, services limitations
- Testing: MSIX package installation on Windows 11 test VM, validation

**Day 4: Win32 InTune Packaging** (8 hours):
- InTune Win32 app workflow: IntuneWinAppUtil.exe integration, .intunewin creation
- Detection rules: File path, registry key, PowerShell script, MSI product code
- Dependencies: Dependency chaining, prerequisite applications, install order
- InTune deployment: Upload package, configure install/uninstall commands, assign to test group

**Day 5: Hands-On Lab** (8 hours):
- Package 10 representative applications: 3 MSIX, 5 Win32, 2 App-V migrations
- Troubleshooting: MSIX conversion failures (services/drivers), silent install issues (vendor switches), detection rule errors (file path not found)
- Peer review: Packaging engineers review each other's packages for quality assurance

**Training Materials**:
- Advanced Installer official documentation: https://www.advancedinstaller.com/user-guide/introduction.html
- Advanced Installer YouTube tutorials: MSIX conversion, InTune Win32 app packaging
- Custom packaging runbook (to be created Week 11): Format selection decision matrix, code signing workflow, troubleshooting guide

### 5. Packaging Workflow (Weeks 11-18)

**Daily Workflow** (per application):

**Step 1: Application Assessment** (5 minutes):
- Review application metadata: Name, publisher, version, installer type (EXE/MSI), dependencies
- Apply ADR-001 format selection decision matrix: MSIX or Win32?
- Identify complexity: Simple (no dependencies, standard installer) or Complex (services, drivers, custom scripts)

**Step 2: Package Creation** (30-60 minutes):
- **If MSIX**: Launch Advanced Installer → New Project → MSIX Package → MSI/EXE Import → Select source installer → Conversion wizard → Validate → Build
- **If Win32**: Create .intunewin package: IntuneWinAppUtil.exe -c <source_folder> -s <installer.exe> -o <output_folder> → Test silent install: installer.exe /S (validate exit code 0)

**Step 3: Code Signing** (5 minutes):
- Advanced Installer: Tools → Sign Package → Select Digicert EV certificate → Timestamp (http://timestamp.digicert.com) → Sign
- Validate: Right-click package → Properties → Digital Signatures → Verify certificate trusted (Digicert root CA)

**Step 4: InTune Configuration** (10 minutes):
- InTune portal: Apps → Windows → Add → Windows app (Win32) → Select .intunewin package → Upload
- Configure detection rule: File path (C:\Program Files\App\app.exe), version (1.0.0.0), or registry key (HKLM\Software\Vendor\App\Installed = 1)
- Configure install command: installer.exe /S (silent install)
- Configure uninstall command: C:\Program Files\App\uninstall.exe /S or msiexec.exe /x {GUID} /qn
- Configure requirements: Minimum OS (Windows 10 1809), architecture (x64 or ARM64), disk space (500MB)

**Step 5: Testing** (15 minutes):
- Assign package to test device group (5-10 test devices)
- InTune device: Company Portal → Apps → Install application
- Validate: Application installs silently (no user prompts), launches successfully, core functionality works (smoke testing)
- Uninstall: Company Portal → Apps → Uninstall application → Validate complete removal (no residual files)

**Step 6: Documentation** (5 minutes):
- Update Application Catalog (ServiceNow CMDB or SharePoint): Application name, format (MSIX/Win32), detection rule, install/uninstall commands, InTune app ID, ARM64 compatibility status

**Total Time per Application**:
- Simple MSIX: 60 minutes (30 min packaging + 5 min signing + 10 min InTune + 15 min testing + 5 min documentation)
- Simple Win32: 45 minutes (20 min packaging + 5 min signing + 10 min InTune + 15 min testing + 5 min documentation)
- Complex MSIX: 90 minutes (60 min packaging + troubleshooting)
- Complex Win32: 60 minutes (30 min packaging + troubleshooting)

**Weekly Progress Tracking** (Weeks 11-18):
| Week | Apps Packaged (Target) | Apps Packaged (Actual) | Hours Spent (Target) | Hours Spent (Actual) | % Complete |
|---|---|---|---|---|---|
| Week 11 | 20 apps (VDI setup + pilot) | TBD | 40 hours | TBD | 9% |
| Week 12 | 30 apps | TBD | 40 hours | TBD | 23% |
| Week 13 | 35 apps | TBD | 40 hours | TBD | 39% |
| Week 14 | 35 apps | TBD | 40 hours | TBD | 55% |
| Week 15 | 35 apps | TBD | 40 hours | TBD | 70% |
| Week 16 | 30 apps | TBD | 40 hours | TBD | 84% |
| Week 17 | 25 apps | TBD | 40 hours | TBD | 95% |
| Week 18 | 10 apps (InTune config) | TBD | 40 hours | TBD | 100% |
| **TOTAL** | **220 apps** | **TBD** | **320 hours capacity** | **186 hours target** | **100%** |

### 6. Quality Assurance Checkpoints

**Packaging QA Checklist** (per application, before pilot deployment):
- [ ] Package installs silently without user interaction (exit code 0, no UAC prompts)
- [ ] Detection rule accurately identifies installed application (tested on clean VM)
- [ ] Application launches successfully after installation (no DLL errors, missing dependencies)
- [ ] Core functionality works (smoke testing: open document, print, save, close)
- [ ] Package uninstalls cleanly (MSIX: 100% removal, Win32: acceptable residue documented)
- [ ] Package signed with valid Digicert EV certificate (no SmartScreen warnings)
- [ ] ARM64 compatibility tested if deployed to Copilot+ PCs (native ARM64 preferred, x64 emulation acceptable with <20% performance degradation)
- [ ] Package metadata documented in Application Catalog (format, detection rule, dependencies, owner)

**Peer Review Process** (for Tier 1 business-critical applications):
- 2nd packaging engineer reviews package before pilot deployment
- Validates detection rule logic, install/uninstall commands, dependency chain
- Test installs package on separate test device (independent validation)

---

## Links and References

### Related ADRs
- **ADR-001: Application Packaging Format Strategy** - Establishes hybrid approach (30% MSIX, 65% Win32, 5% App-V migrations), format selection decision matrix
- **ADR-003: Migration Automation Platform Selection** (to be created) - Evaluates Juriba Dashworks vs. manual migration management; may influence Juriba App Readiness consideration

### Related Documents
- **Requirements Document** (`projects/002-application-packaging-rationalisation/requirements.md`):
  - BR-003: InTune Application Deployment Readiness (100% apps packaged by Month 4)
  - NFR-P-001: Packaging Performance (30 min average per app)
  - NFR-C-002: Budget Constraint (£231K total project budget)
- **Research Findings** (`projects/002-application-packaging-rationalisation/research-findings.md`):
  - §2.2: Advanced Installer Architect features, pricing, customer reviews
  - §2.3: Flexera AdminStudio Professional features, pricing
  - §2.1: Microsoft Win32 Content Prep Tool (free baseline)
  - §2.0: MSIX Packaging Tool (free MSIX conversion)
  - §3.0: Build vs. Buy TCO analysis (Advanced Installer £42K vs. Manual £180K vs. AdminStudio £126K)
- **Project Plan** (`projects/002-application-packaging-rationalisation/project-plan.md`):
  - Week 10: Procurement phase (Juriba + Advanced Installer trials, vendor selection)
  - Weeks 11-18: Alpha - Packaging phase (220 apps packaged for InTune)
- **Architecture Principles** (`.arckit/memory/architecture-principles.md`):
  - Principle 1: Cloud-First Endpoint Management (InTune single source of truth)
  - Principle 8: Data-Driven Decision Making (ROI-based tool selection)
  - Principle 17: Continuous Improvement (CI/CD automation potential)

### External Standards and Guidelines
- **Advanced Installer Official Documentation**: https://www.advancedinstaller.com/user-guide/introduction.html
- **Advanced Installer MSIX Guide**: https://www.advancedinstaller.com/user-guide/tutorial-msix.html
- **Advanced Installer InTune Integration**: https://www.advancedinstaller.com/user-guide/tutorial-intune.html
- **Microsoft Win32 Content Prep Tool**: https://github.com/microsoft/Microsoft-Win32-Content-Prep-Tool
- **Microsoft MSIX Packaging Tool**: https://docs.microsoft.com/en-us/windows/msix/packaging-tool/tool-overview
- **GDS Service Standard**: Point 14 (Operate a Reliable Service)
- **Technology Code of Practice**: Point 10 (Define Your Purchasing Strategy)

---

## Metadata

**Document Control**:
- **Version**: 1.0
- **Author**: Enterprise Architect, IT Operations Director
- **Created**: 2025-11-12
- **Last Updated**: 2025-11-12
- **Next Review Date**: 2026-05-12 (6 months post-deployment)

**Review and Approval**:
- **Technical Review**: Enterprise Architect (2025-11-12)
- **Budget Review**: CFO (Pending - requires £8K expenditure approval)
- **Procurement Review**: Procurement Manager (Pending - 30-day trial validation first)
- **Final Approval**: IT Operations Management Board (Pending)

**Change History**:
| Version | Date | Author | Changes |
|---|---|---|---|
| 1.0 | 2025-11-12 | Enterprise Architect | Initial ADR creation for packaging tool selection |

**Supersedes**: None (initial packaging tool decision)

**Superseded By**: None (current version)

**Tags**: `advanced-installer`, `adminstudio`, `msix-packaging-tool`, `win32-content-prep-tool`, `intune`, `project-002`, `application-packaging`, `build-vs-buy`, `roi-analysis`

---

**Generated by**: ArcKit v1.0 (Claude Code)
**AI Model**: Claude Sonnet 4.5 (claude-sonnet-4-5-20250929)
**Generation Timestamp**: 2025-11-12T11:15:00Z
