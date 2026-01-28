# ADR-001: Application Packaging Format Strategy (MSIX vs. Win32 vs. App-V)

**Status**: Proposed
**Date**: 2025-11-12
**Decision Makers**: Enterprise Architect, IT Operations Director
**Consulted**: Application Packaging Engineer, Security Architect, Application Owners
**Informed**: CIO, Helpdesk Manager, End Users

**Document ID**: ARC-002-ADR-001-v1.0
**Escalation Level**: Cross-team
**Governance Forum**: Architecture Review Board

---

## Context and Problem Statement

Project 002 (Application Packaging and Rationalisation) requires repackaging 220 applications (post-rationalization from 350) for deployment via Microsoft InTune cloud-native management as part of the Windows 10 to Windows 11 migration. The organization must select the optimal application packaging format(s) to balance:

- Windows 11 and ARM64 (Copilot+ PC) compatibility
- User experience (self-service capabilities, clean uninstall)
- IT operational efficiency (packaging time, update management)
- Security posture (code signing, containerization)
- Long-term strategic alignment with Microsoft's direction

**Business Context**:
- **BR-003** (InTune Application Deployment Readiness): 100% of retained applications must be packaged for InTune deployment by Month 4
- **Architecture Principle 1** (Cloud-First Endpoint Management): InTune becomes single source of truth, Configuration Manager to be decommissioned within 18 months
- **Architecture Principle 2** (Zero Trust Security): Application packaging must support code signing, security policies, and containerization where possible
- **Architecture Principle 3A** (Windows 11 and Copilot+ PC Readiness): Support ARM64 Snapdragon devices (30% adoption Year 1)

**Technical Context**:
- Microsoft offers three primary packaging formats: **MSIX** (modern containerized), **Win32** (.intunewin wrapper for legacy installers), and **App-V** (application virtualization, EOL April 2026)
- Application portfolio includes: 30% modern applications (Microsoft 365, productivity tools), 65% legacy enterprise applications (line-of-business, vendor software), 5% App-V packages requiring migration
- Windows 11 and InTune fully support MSIX and Win32; App-V support is deprecated

**Regulatory Context**:
- **GDS Service Standard Point 3**: Make the service simple to use - self-service application install/uninstall improves user experience
- **Technology Code of Practice Point 5**: Use cloud first - MSIX aligns with cloud-native application distribution (Microsoft Store, winget)
- **NCSC Cyber Security Principle 4**: Secure architecture - code signing and containerization reduce supply chain risks

**Problem Statement**: Which application packaging format(s) should the organization adopt for the 220-application portfolio to optimize Windows 11 compatibility, user experience, security, and IT operational efficiency while supporting InTune cloud-native deployment?

---

## Decision Drivers

### Critical Decision Drivers

| Priority | Driver | Rationale |
|---|---|---|
| **Critical** | **Windows 11 & ARM64 Compatibility** | MSIX is preferred format for ARM64 Copilot+ PCs (Architecture Principle 3A). Win32 supports x64 emulation but with potential performance degradation. App-V has no ARM64 support. |
| **Critical** | **InTune Deployment Support** | Win32 (.intunewin) has mature InTune support since 2019. MSIX support is evolving but not all features have parity with Win32 (e.g., complex dependencies). App-V has limited InTune integration. |
| **Critical** | **App-V EOL Migration** | Microsoft announced App-V end of support April 2026. 5% of portfolio (~17 apps) currently packaged as App-V must migrate to MSIX or Win32 by Month 6. |
| **High** | **User Experience (Self-Service)** | MSIX enables users to install/uninstall/repair applications without admin rights (BR-006: User Productivity Continuity). Win32 requires admin rights for install/uninstall. |
| **High** | **Security & Isolation** | MSIX provides containerization and mandatory code signing (Principle 2: Zero Trust Security). Win32 packages can be code-signed but lack container isolation. |
| **High** | **Packaging Complexity & Time** | Win32 packaging is straightforward (45-60 min average) but manual. MSIX conversion has 50-70% success rate (90-120 min average) due to service/driver limitations. |
| **Medium** | **Update Management** | MSIX supports differential updates (only changed files downloaded). Win32 requires full package re-download on version change. |
| **Medium** | **Future Strategic Alignment** | MSIX is Microsoft's strategic direction for Windows application packaging (introduced 2018, evolving feature parity with MSI). Win32 is legacy wrapper approach. |

### Stakeholder Perspectives

| Stakeholder | Primary Concern | Position |
|---|---|---|
| **Enterprise Architect** | Strategic alignment with Microsoft direction, long-term maintainability | Prefers MSIX where feasible, recognizes Win32 needed for legacy apps |
| **IT Operations Director** | Operational efficiency, packaging time, deployment success rate | Prefers Win32 for proven stability, concerned about MSIX conversion failures |
| **Application Packaging Engineer** | Packaging tool capabilities, troubleshooting complexity | Neutral - requires training on MSIX, comfortable with Win32 |
| **Security Architect** | Code signing, application isolation, supply chain security | Strongly prefers MSIX for containerization and mandatory signing |
| **End Users** | Self-service capabilities, seamless install/uninstall experience | Prefer MSIX for self-service (Tier 3 optional applications) |
| **Application Owners** | Application functionality preserved, minimal rework | Concerned about MSIX compatibility for complex line-of-business apps |

---

## Options Considered

### Option 1: MSIX-First Strategy (Maximize MSIX Adoption)

**Implementation Approach**:
- **Target**: 70% of portfolio (154 apps) packaged as MSIX, 30% (66 apps) as Win32 fallback
- **Prioritize MSIX** for: Microsoft applications, modern productivity tools, self-service Tier 3 apps, ARM64 Copilot+ PC deployments
- **Use Win32 fallback** for: Applications with Windows Services, kernel drivers, complex pre/post-install scripts, MSIX conversion failures
- **Migrate all App-V** packages to MSIX (preferred) or Win32 (if incompatible)

**Packaging Tool Requirements**:
- MSIX Packaging Tool (Microsoft free) + Advanced Installer Architect (MSIX authoring expertise)
- 90-120 minutes average per MSIX package (conversion + testing + troubleshooting)
- 60 minutes average per Win32 package (fallback for failed MSIX conversions)

#### Advantages

✅ **Future-Proof**: Aligns with Microsoft's strategic direction for Windows application packaging
✅ **ARM64 Readiness**: MSIX is preferred format for Copilot+ PC Snapdragon devices (30% adoption Year 1)
✅ **User Experience**: Self-service install/uninstall/repair improves user satisfaction (BR-006 requirement)
✅ **Security & Isolation**: Mandatory code signing and containerization reduce supply chain attacks (Principle 2: Zero Trust Security)
✅ **Differential Updates**: Reduces WAN bandwidth costs for distributed workforce (only changed files downloaded)
✅ **Clean Uninstall**: 100% removal with no registry/file residue improves device hygiene

#### Disadvantages

❌ **Conversion Success Rate**: Only 50-70% of legacy apps convert successfully to MSIX, requiring Win32 fallback
❌ **Packaging Time**: 90-120 min per MSIX package vs. 60 min per Win32 (50% longer)
❌ **Service/Driver Limitations**: MSIX does not support Windows Services or kernel-mode drivers (requires Win32)
❌ **Feature Parity Gap**: MSIX does not yet have full MSI functionality parity (complex dependencies, custom actions)
❌ **Learning Curve**: Packaging engineers require 2-4 weeks training on MSIX-specific concepts (AppX manifest, entitlements, capabilities)
❌ **Vendor Support**: Not all ISVs provide MSIX packages; may require manual repackaging effort

#### Cost Analysis (3-Year TCO)

**Assumptions**:
- 154 MSIX packages @ 90 min average = 231 hours packaging time
- 66 Win32 packages (fallback) @ 60 min average = 66 hours packaging time
- Packaging engineer labor: £55K/year (£28/hour)
- Advanced Installer Architect license: £8K Year 1, £4K/year maintenance Years 2-3
- MSIX training: 40 hours @ £28/hour = £1,120

| Cost Component | Year 1 | Year 2 | Year 3 | Total 3-Year TCO |
|---|---|---|---|---|
| **MSIX Packaging Labor** | 231 hours × £28 = £6,468 | 35 hours × £28 = £980 (updates) | 35 hours × £28 = £980 | **£8,428** |
| **Win32 Packaging Labor** | 66 hours × £28 = £1,848 | 15 hours × £28 = £420 (updates) | 15 hours × £28 = £420 | **£2,688** |
| **Tool Licensing** | £8,000 (Advanced Installer) | £4,000 (maintenance) | £4,000 (maintenance) | **£16,000** |
| **Training** | £1,120 (40 hours) | £0 | £0 | **£1,120** |
| **Rework (30% MSIX failures)** | 46 apps × 30 min × £28 = £644 | £0 | £0 | **£644** |
| **TOTAL 3-YEAR TCO** | **£18,080** | **£5,400** | **£5,400** | **£28,880** |

**Effective Cost per Application**: £28,880 ÷ 220 apps = **£131.27/app**

#### GDS Service Standard Impact

| GDS Service Standard Point | Impact | Evidence |
|---|---|---|
| **Point 3: Make the Service Simple to Use** | ✅ **Positive** | MSIX self-service install/uninstall improves user experience, reduces helpdesk burden |
| **Point 9: Create a Secure Service** | ✅ **Positive** | Mandatory code signing and containerization align with Zero Trust security |
| **Point 14: Operate a Reliable Service** | ⚠️ **Mixed** | MSIX provides clean uninstall (improves reliability), but 30% conversion failure rate requires Win32 fallback (adds complexity) |

---

### Option 2: Win32-Dominant Strategy (Minimize MSIX Risk)

**Implementation Approach**:
- **Target**: 20% of portfolio (44 apps) packaged as MSIX, 80% (176 apps) as Win32
- **Use MSIX only** for: Vendor-provided MSIX packages (Microsoft 365, Microsoft Teams), self-service Tier 3 optional apps
- **Use Win32 primary** for: All line-of-business applications, complex installers, legacy vendor software
- **Migrate all App-V** packages to Win32 (minimize risk vs. MSIX conversion)

**Packaging Tool Requirements**:
- Microsoft Win32 Content Prep Tool (free) + Advanced Installer (Win32/.intunewin creation)
- 60 minutes average per Win32 package (proven process, minimal rework)
- 90 minutes average per MSIX package (only vendor-provided or simple conversions)

#### Advantages

✅ **Proven Stability**: Win32 app deployment has been stable in InTune since 2019 (>5 years production use)
✅ **Maximum Compatibility**: Supports virtually any installer type (EXE, MSI, scripts, complex pre/post-install)
✅ **Faster Packaging**: 60 min average per Win32 package vs. 90-120 min MSIX (25-50% faster)
✅ **Lower Risk**: 95%+ packaging success rate (vs. 50-70% MSIX conversion success)
✅ **No Learning Curve**: Packaging engineers already skilled in Win32 packaging from Configuration Manager
✅ **Vendor Support**: Most ISVs provide EXE/MSI installers; MSIX availability varies

#### Disadvantages

❌ **No Self-Service**: Users cannot uninstall Win32 apps without admin rights (missed opportunity for user empowerment)
❌ **ARM64 Limitations**: Win32 apps run via x64 emulation on Copilot+ PCs (10-20% performance degradation, some apps incompatible)
❌ **No Containerization**: Win32 apps modify system registry and files (potential conflicts, no isolation)
❌ **Full Package Updates**: No differential updates; entire package re-downloaded on version change (higher bandwidth costs)
❌ **Strategic Misalignment**: Does not leverage Microsoft's modern packaging direction (MSIX), increasing technical debt

#### Cost Analysis (3-Year TCO)

**Assumptions**:
- 176 Win32 packages @ 60 min average = 176 hours packaging time
- 44 MSIX packages (vendor-provided or simple) @ 90 min average = 66 hours packaging time
- Packaging engineer labor: £55K/year (£28/hour)
- Advanced Installer license: £8K Year 1, £4K/year maintenance Years 2-3
- No additional MSIX training (only vendor-provided packages used)

| Cost Component | Year 1 | Year 2 | Year 3 | Total 3-Year TCO |
|---|---|---|---|---|
| **Win32 Packaging Labor** | 176 hours × £28 = £4,928 | 40 hours × £28 = £1,120 (updates) | 40 hours × £28 = £1,120 | **£7,168** |
| **MSIX Packaging Labor** | 66 hours × £28 = £1,848 | 10 hours × £28 = £280 (updates) | 10 hours × £28 = £280 | **£2,408** |
| **Tool Licensing** | £8,000 (Advanced Installer) | £4,000 (maintenance) | £4,000 (maintenance) | **£16,000** |
| **Training** | £0 (no MSIX training) | £0 | £0 | **£0** |
| **Rework** | £0 (Win32 95%+ success) | £0 | £0 | **£0** |
| **TOTAL 3-YEAR TCO** | **£14,776** | **£5,400** | **£5,400** | **£25,576** |

**Effective Cost per Application**: £25,576 ÷ 220 apps = **£116.25/app**

**Cost Comparison**: Win32-Dominant is **£3,304 cheaper** (11% savings) vs. MSIX-First over 3 years

#### GDS Service Standard Impact

| GDS Service Standard Point | Impact | Evidence |
|---|---|---|
| **Point 3: Make the Service Simple to Use** | ⚠️ **Negative** | No self-service capabilities; users must request IT support for uninstalls |
| **Point 9: Create a Secure Service** | ⚠️ **Mixed** | Win32 packages can be code-signed, but lack container isolation (supply chain risk) |
| **Point 14: Operate a Reliable Service** | ✅ **Positive** | Proven Win32 stability (5+ years production) reduces deployment failure risk |

---

### Option 3: Multi-Format Hybrid Strategy (RECOMMENDED)

**Implementation Approach**:
- **30% MSIX** (65 apps): Modern Microsoft applications, self-service Tier 3 apps, ARM64-optimized applications
- **65% Win32** (143 apps): Legacy line-of-business apps, complex installers, vendor software without MSIX
- **5% App-V Migration** (12 apps): Migrate to MSIX (preferred) or Win32 (if incompatible) by Month 6

**Decision Matrix** (format selection per application):

```
MSIX IF:
- Vendor provides MSIX package (Microsoft 365, Teams, modern apps)
- Application is Tier 3 (optional, self-service requirement)
- Application targets ARM64 Copilot+ PCs
- Application has simple installer (no services, drivers, complex scripts)
- MSIX conversion succeeds with <20% rework effort

Win32 IF:
- Application requires Windows Services or kernel drivers
- Application has complex pre/post-install scripts
- Application is business-critical (Tier 1) and MSIX conversion risk is unacceptable
- MSIX conversion fails after reasonable effort (2 hours troubleshooting)
- Application is legacy vendor software without MSIX support

App-V (MIGRATE):
- All App-V packages migrate to MSIX (preferred) or Win32 (fallback) by Month 6
```

#### Advantages

✅ **Optimized Format Selection**: Uses MSIX where it provides clear benefit (self-service, ARM64, security), Win32 where proven stability is critical
✅ **Risk Mitigation**: Avoids forcing MSIX on complex applications where conversion may fail or introduce bugs
✅ **Cost-Effective**: Balances MSIX benefits (user experience, security) with Win32 efficiency (faster packaging, proven stability)
✅ **ARM64 Support**: 30% MSIX adoption ensures Copilot+ PC compatibility for key applications
✅ **Strategic Alignment**: Demonstrates commitment to Microsoft's modern packaging direction without sacrificing project timeline
✅ **Flexibility**: Allows format re-evaluation on per-app basis during packaging phase

#### Disadvantages

⚠️ **Support Complexity**: IT helpdesk must support two packaging formats (MSIX and Win32) with different behavior
⚠️ **Training Overhead**: Packaging engineers require training on both MSIX and Win32 packaging (40 hours MSIX + 16 hours Win32 refresh)
⚠️ **Decision Overhead**: Requires judgment call per application (MSIX vs. Win32) vs. standardized approach
⚠️ **Tool Licensing**: Requires Advanced Installer Architect edition for both MSIX and Win32 support (£8K/year)

#### Cost Analysis (3-Year TCO)

**Assumptions**:
- 65 MSIX packages @ 90 min average = 98 hours packaging time
- 143 Win32 packages @ 60 min average = 143 hours packaging time
- 12 App-V migrations @ 120 min average (MSIX preferred, Win32 fallback) = 24 hours
- Packaging engineer labor: £55K/year (£28/hour)
- Advanced Installer Architect license: £8K Year 1, £4K/year maintenance Years 2-3
- Training: 40 hours MSIX + 16 hours Win32 refresh = 56 hours @ £28/hour = £1,568

| Cost Component | Year 1 | Year 2 | Year 3 | Total 3-Year TCO |
|---|---|---|---|---|
| **MSIX Packaging Labor** | 98 hours × £28 = £2,744 | 15 hours × £28 = £420 (updates) | 15 hours × £28 = £420 | **£3,584** |
| **Win32 Packaging Labor** | 143 hours × £28 = £4,004 | 30 hours × £28 = £840 (updates) | 30 hours × £28 = £840 | **£5,684** |
| **App-V Migration Labor** | 24 hours × £28 = £672 | £0 | £0 | **£672** |
| **Tool Licensing** | £8,000 (Advanced Installer) | £4,000 (maintenance) | £4,000 (maintenance) | **£16,000** |
| **Training** | £1,568 (56 hours) | £0 | £0 | **£1,568** |
| **Rework (20% MSIX failures)** | 13 apps × 30 min × £28 = £182 | £0 | £0 | **£182** |
| **TOTAL 3-YEAR TCO** | **£17,170** | **£5,260** | **£5,260** | **£27,690** |

**Effective Cost per Application**: £27,690 ÷ 220 apps = **£125.86/app**

**Cost Comparison**:
- **vs. MSIX-First**: £1,190 cheaper (4% savings)
- **vs. Win32-Dominant**: £2,114 more expensive (8% premium for MSIX benefits)

#### GDS Service Standard Impact

| GDS Service Standard Point | Impact | Evidence |
|---|---|---|
| **Point 3: Make the Service Simple to Use** | ✅ **Positive** | MSIX self-service for 30% of apps (Tier 3 optional apps) improves user experience |
| **Point 9: Create a Secure Service** | ✅ **Positive** | MSIX containerization for 30% of apps reduces supply chain risk; Win32 code-signed for remainder |
| **Point 14: Operate a Reliable Service** | ✅ **Positive** | Uses Win32 for business-critical apps (proven stability), MSIX for lower-risk apps |

---

### Option 4: Manual Microsoft Free Tools (Baseline Comparison)

**Implementation Approach**:
- Use Microsoft Win32 Content Prep Tool (free) for Win32 packages
- Use Microsoft MSIX Packaging Tool (free) for MSIX packages
- No commercial packaging tools (Advanced Installer, AdminStudio)
- Manual configuration of InTune deployment settings (detection rules, install commands)

#### Advantages

✅ **Zero Tool Licensing Cost**: Microsoft provides Win32 Content Prep Tool and MSIX Packaging Tool for free
✅ **Official Microsoft Support**: Tools receive regular updates and bug fixes from Microsoft
✅ **Lightweight**: No additional software to deploy or maintain

#### Disadvantages

❌ **Manual Configuration Overhead**: 60 min average per Win32 package (vs. 45 min with Advanced Installer automation)
❌ **No Batch Processing**: Each package must be created individually (no CI/CD integration)
❌ **Limited Error Handling**: Minimal validation of installer syntax or return codes
❌ **Higher Engineer Time**: 320 hours total packaging time vs. 241 hours with Advanced Installer (33% longer)
❌ **No Dependency Management**: Cannot automatically detect or package application dependencies

#### Cost Analysis (3-Year TCO)

| Cost Component | Year 1 | Year 2 | Year 3 | Total 3-Year TCO |
|---|---|---|---|---|
| **Packaging Labor** | 320 hours × £28 = £8,960 | 60 hours × £28 = £1,680 | 60 hours × £28 = £1,680 | **£12,320** |
| **Tool Licensing** | £0 (free Microsoft tools) | £0 | £0 | **£0** |
| **Training** | £560 (20 hours) | £0 | £0 | **£560** |
| **Rework (30% higher due to manual errors)** | £1,792 | £0 | £0 | **£1,792** |
| **TOTAL 3-YEAR TCO** | **£11,312** | **£1,680** | **£1,680** | **£14,672** |

**Cost Comparison**: Free tools are **£13,018 cheaper** than Hybrid Strategy, but require **79 additional engineer hours** over 3 years

**Decision**: **Reject** - While free tools save licensing costs, the 79 additional engineer hours (£2,212) plus higher rework risk (£1,792) result in **net £4,004 savings** vs. £16K tool investment. The productivity loss and quality risk are not justified for £4K savings.

---

## Decision Outcome

### Chosen Option: **Option 3: Multi-Format Hybrid Strategy**

We have decided to adopt a **Multi-Format Hybrid Strategy** using **30% MSIX** (65 applications), **65% Win32** (143 applications), and migrating **5% App-V** packages (12 applications) to MSIX/Win32 by Month 6.

**Y-Statement**:
> In the context of **repackaging 220 applications for Microsoft InTune deployment to support Windows 11 migration and Copilot+ PC ARM64 compatibility**,
> facing **trade-offs between MSIX benefits (self-service, security, ARM64 support) and Win32 proven stability (legacy app compatibility, faster packaging)**,
> we decided for **a Multi-Format Hybrid Strategy using MSIX for 30% of applications (modern apps, self-service tools, ARM64-optimized) and Win32 for 65% of applications (legacy line-of-business apps, complex installers)**,
> and against **MSIX-First (70% MSIX) or Win32-Dominant (80% Win32) single-format strategies**,
> to achieve **optimized format selection balancing user experience, security, ARM64 readiness, and packaging efficiency while mitigating MSIX conversion risk for business-critical applications**,
> accepting **increased support complexity (two packaging formats) and training overhead (56 hours MSIX + Win32 training)**.

### Decision Rationale

**Why Hybrid Strategy is Optimal**:

1. **Risk-Optimized Format Selection**: Uses MSIX where clear benefits exist (self-service, ARM64, security isolation) and Win32 where proven stability is critical (business-critical Tier 1 apps, complex installers)

2. **ARM64 Copilot+ PC Readiness**: 30% MSIX adoption (65 apps) ensures key applications are ARM64-native or optimized for Copilot+ PC Snapdragon devices (Architecture Principle 3A: 30% adoption Year 1)

3. **Cost-Effective**: £27,690 3-year TCO is only 8% more expensive than Win32-Dominant (£2,114 premium), justified by MSIX security and user experience benefits

4. **User Experience Improvement**: Self-service MSIX deployment for Tier 3 optional applications reduces helpdesk burden and empowers end users (GDS Service Standard Point 3)

5. **Security Posture**: MSIX containerization and mandatory code signing for 30% of portfolio reduces supply chain attack surface (Architecture Principle 2: Zero Trust Security)

6. **Strategic Alignment**: Demonstrates commitment to Microsoft's modern packaging direction (MSIX) without sacrificing project timeline or introducing unacceptable risk

**Why MSIX-First (Option 1) was Rejected**:
- ❌ 50-70% MSIX conversion success rate introduces unacceptable risk for 70% of portfolio
- ❌ 90-120 min average MSIX packaging time (vs. 60 min Win32) extends project timeline by 2-4 weeks
- ❌ £28,880 3-year TCO is highest cost option (8% more than Hybrid, 13% more than Win32-Dominant)

**Why Win32-Dominant (Option 2) was Rejected**:
- ❌ Misses ARM64 Copilot+ PC readiness opportunity (80% Win32 relies on x64 emulation with 10-20% performance degradation)
- ❌ No self-service capabilities for end users (all Win32 apps require admin rights for uninstall)
- ❌ Strategic misalignment with Microsoft's MSIX direction (accumulates technical debt)

**Why Manual Free Tools (Option 4) was Rejected**:
- ❌ 79 additional engineer hours (£2,212) plus 30% higher rework risk (£1,792) offset £16K tool licensing savings
- ❌ No CI/CD automation or batch processing capabilities (reduces scalability for future projects)

### Consequences

**Positive Consequences**:

1. **Optimized User Experience**: Self-service MSIX deployment for 65 Tier 3 applications empowers end users, reducing helpdesk burden by estimated 10% (50 tickets/month @ £20/ticket = £12K annual savings)

2. **ARM64 Copilot+ PC Compatibility**: 65 MSIX-packaged applications are ARM64-native or optimized, ensuring seamless experience on 30% Copilot+ PC adoption Year 1 (1,800 devices)

3. **Enhanced Security Posture**: MSIX containerization and mandatory code signing for 30% of portfolio reduces supply chain attack surface (supports Principle 2: Zero Trust Security)

4. **Proven Stability for Business-Critical Apps**: Win32 packaging for 143 legacy line-of-business applications leverages proven InTune Win32 deployment (5+ years production stability)

5. **App-V EOL Compliance**: Migration of 12 App-V packages to MSIX/Win32 by Month 6 ensures compliance with Microsoft App-V EOL April 2026

**Negative Consequences**:

1. **Support Complexity**: IT helpdesk must support two packaging formats (MSIX and Win32) with different self-service behaviors, requiring 16 hours additional training

2. **Training Overhead**: Packaging engineers require 56 hours training (40 hours MSIX + 16 hours Win32 refresh) vs. 20 hours for single-format approach

3. **Decision Overhead**: Requires per-application judgment call (MSIX vs. Win32) during packaging phase, adding 5-10 min decision time per app (18-36 hours total)

4. **Tool Licensing Cost**: £16,000 3-year Advanced Installer Architect license required for both MSIX and Win32 support

**Risks and Mitigations**:

| Risk ID | Risk Description | Inherent Impact | Inherent Probability | Mitigation Strategy | Residual Impact | Residual Probability |
|---|---|---|---|---|---|---|
| **R-011 (NEW)** | MSIX conversion failures exceed 30% estimate, requiring Win32 fallback and rework | 3 (Medium) | 3 (Medium) | **Treat**: Pilot MSIX conversion on 10 representative applications during Weeks 1-2 to validate 50-70% success rate assumption. If success rate <50%, reduce MSIX target from 30% to 20% of portfolio. | 2 (Low) | 2 (Low) |
| **R-012 (NEW)** | Packaging engineers struggle with MSIX training, extending packaging timeline by 2-4 weeks | 3 (Medium) | 2 (Low) | **Treat**: Schedule Advanced Installer MSIX training in Week 1 (before packaging starts). Allocate 40 hours training + 40 hours hands-on practice. Engage Advanced Installer support for first 10 MSIX packages. | 2 (Low) | 2 (Low) |
| **R-013 (NEW)** | ARM64 Copilot+ PC users experience performance degradation or compatibility issues with Win32 apps (x64 emulation) | 3 (Medium) | 3 (Medium) | **Treat**: Perform ARM64 compatibility testing (FR-014) for all Win32 packages. Document "x64 Emulated (Good)" vs. "x64 Emulated (Degraded)" vs. "Incompatible". Repackage degraded apps as MSIX if feasible. Provide Copilot+ PC users with alternative MSIX apps where Win32 incompatible. | 2 (Low) | 2 (Low) |
| **R-014 (NEW)** | IT helpdesk receives increased support tickets due to unfamiliarity with MSIX self-service behavior | 2 (Low) | 3 (Medium) | **Treat**: Provide IT helpdesk with 16-hour training on MSIX vs. Win32 differences (Week 10). Create support playbook with MSIX troubleshooting (install failed, uninstall failed, repair). Communicate self-service MSIX benefits to end users via email campaign (Week 18). | 1 (Very Low) | 2 (Low) |

---

## Validation and Compliance

### Requirements Traceability

| Requirement ID | Requirement Description | How This Decision Meets the Requirement | Validation Method |
|---|---|---|---|
| **BR-003** | InTune Application Deployment Readiness - 100% of retained applications packaged for InTune by Month 4 | Hybrid Strategy packages 65 MSIX + 143 Win32 = 208 apps by Week 18 (Month 4.5), plus 12 App-V migrations by Week 12 (Month 3) = 220 apps total | InTune Application Catalog showing 220 apps with deployment status "Published" |
| **FR-007** | InTune Win32 App Package Creation - Support .intunewin package creation from legacy installers | 143 Win32 packages created using Advanced Installer + Win32 Content Prep Tool | Win32 package validation: detection rules, install/uninstall commands, dependencies configured |
| **FR-014** | ARM64 Compatibility Testing (Copilot+ PCs) - Validate native ARM64 vs. x64 emulation | 65 MSIX packages prioritized for ARM64-native support; 143 Win32 packages tested for x64 emulation compatibility | ARM64 compatibility matrix: Native ARM64 / x64 Emulated (Good) / x64 Emulated (Degraded) / Incompatible |
| **NFR-P-001** | Packaging Performance - Average 30 min per application (3.5 weeks for 220 apps) | Hybrid Strategy: 98 hours MSIX + 143 hours Win32 + 24 hours App-V = 265 hours = 33 days (4.7 weeks with 8-hour days). Exceeds target by 1.2 weeks. | Project plan tracking: Packaging phase Weeks 11-18 (8 weeks budgeted, 4.7 weeks actual = 3.3 weeks buffer) |

### Architecture Principles Alignment

| Principle | How This Decision Aligns | Validation |
|---|---|---|
| **Principle 1: Cloud-First Endpoint Management** | Both MSIX and Win32 formats fully supported by Microsoft InTune cloud-native deployment. Eliminates Configuration Manager dependencies. | InTune Application Catalog populated with 220 apps; zero apps requiring Configuration Manager deployment post-Month 6 |
| **Principle 2: Zero Trust Security Model** | MSIX mandatory code signing and containerization for 30% of portfolio. Win32 packages code-signed (not containerized). | Code signing validation: 100% of MSIX and Win32 packages signed with trusted certificate (Digicert EV Code Signing) |
| **Principle 3A: Windows 11 and Copilot+ PC Readiness** | 65 MSIX packages (30%) optimized for ARM64 Copilot+ PCs. 143 Win32 packages tested for x64 emulation compatibility. | ARM64 compatibility testing report: 30% native ARM64 / 60% x64 Emulated (Good) / 8% x64 Emulated (Degraded) / 2% Incompatible |
| **Principle 5: Application Compatibility and Testing** | All 220 applications tested for Windows 11 compatibility before packaging. MSIX conversion pilot validates success rate before full deployment. | Windows 11 compatibility matrix: 100% Tier 1 apps certified, 95% Tier 2 apps certified by Week 8 (Readiness Gate) |

### UK Government Service Standards

| Standard | Point | How This Decision Complies | Evidence |
|---|---|---|---|
| **GDS Service Standard** | **Point 3: Make the Service Simple to Use** | MSIX self-service install/uninstall for 65 Tier 3 optional applications empowers end users, reducing helpdesk dependency | User satisfaction survey: >80% satisfaction with self-service MSIX applications (post-deployment survey, Week 26) |
| **GDS Service Standard** | **Point 9: Create a Secure Service** | MSIX mandatory code signing and containerization for 30% of portfolio. Win32 packages code-signed. | Code signing audit: 100% of deployed packages signed with trusted EV certificate (Digicert validation) |
| **Technology Code of Practice** | **Point 5: Use Cloud First** | MSIX aligns with cloud-native application distribution (Microsoft Store, Windows Package Manager winget) | MSIX packages registered with Windows Package Manager (winget) for self-service distribution |
| **NCSC Cyber Security** | **Principle 4: Secure Architecture** | MSIX containerization reduces supply chain attack surface (applications cannot modify system registry or files) | Security assessment: MSIX-packaged applications run in isolated containers (AppContainer validation) |

---

## Implementation Guidance

### 1. Format Selection Decision Matrix (Per Application)

**Packaging Engineer Workflow**:

For each of 220 applications, evaluate using the following decision tree:

```
1. Is vendor MSIX package available?
   ├─ YES → Use vendor MSIX (no conversion needed)
   └─ NO → Continue to Step 2

2. Does application require Windows Services or kernel drivers?
   ├─ YES → Use Win32 (MSIX does not support services/drivers)
   └─ NO → Continue to Step 3

3. Is application Tier 3 (optional, self-service requirement)?
   ├─ YES → Attempt MSIX conversion (enables self-service user experience)
   └─ NO → Continue to Step 4

4. Is application deployed to Copilot+ PC ARM64 devices?
   ├─ YES → Attempt MSIX conversion (ARM64-native preferred over x64 emulation)
   └─ NO → Continue to Step 5

5. Is application business-critical (Tier 1)?
   ├─ YES → Use Win32 (proven stability, minimize conversion risk)
   └─ NO → Continue to Step 6

6. Attempt MSIX conversion with 2-hour time limit
   ├─ SUCCESS (<2 hours, functional testing passes) → Use MSIX
   └─ FAILURE (>2 hours or testing fails) → Use Win32 fallback
```

**Expected Distribution** (based on decision matrix):
- **MSIX**: 65 apps (30%) = 20 vendor MSIX + 22 Tier 3 self-service + 15 ARM64 optimized + 8 successful conversions
- **Win32**: 143 apps (65%) = 66 Tier 1 business-critical + 45 services/drivers + 32 MSIX conversion failures
- **App-V Migration**: 12 apps (5%) = Migrate to MSIX (8 apps) or Win32 (4 apps) by Month 6

### 2. Packaging Timeline (Weeks 11-18)

**Week 11-12**: VDI Test Environment Setup + Pilot MSIX Conversion
- Provision Windows 11 VDI instances for packaging engineers (Hyper-V or Azure Virtual Desktop)
- Pilot MSIX conversion on 10 representative applications to validate 50-70% success rate
- If pilot success rate <50%, escalate to Architecture Review Board to reduce MSIX target from 30% to 20%

**Week 13-16**: Batch MSIX Packaging (65 apps)
- Package vendor-provided MSIX applications (20 apps) = 20 hours
- Convert Tier 3 self-service applications to MSIX (22 apps) = 33 hours
- Convert ARM64-optimized applications to MSIX (15 apps) = 23 hours
- Attempt MSIX conversion for remaining candidates (8 successes, 12 failures) = 18 hours
- **Total MSIX Time**: 94 hours (vs. 98 hours budgeted = 4 hours buffer)

**Week 13-18**: Batch Win32 Packaging (143 apps)
- Package Tier 1 business-critical applications as Win32 (66 apps) = 66 hours
- Package applications requiring services/drivers as Win32 (45 apps) = 45 hours
- Package MSIX conversion failures as Win32 fallback (32 apps) = 32 hours
- **Total Win32 Time**: 143 hours (vs. 143 hours budgeted = no buffer)

**Week 12-14**: App-V Migration (12 apps)
- Migrate 8 App-V packages to MSIX (preferred) = 12 hours
- Migrate 4 App-V packages to Win32 (MSIX incompatible) = 4 hours
- **Total App-V Migration Time**: 16 hours (vs. 24 hours budgeted = 8 hours buffer)

**Week 17-18**: InTune Deployment Configuration
- Configure detection rules, install/uninstall commands, dependencies for all 220 apps = 40 hours
- Upload packages to InTune, assign to test groups = 10 hours

### 3. Training Plan

**Packaging Engineer Training** (Week 10):
- **MSIX Fundamentals** (16 hours): AppX manifest structure, capabilities, entitlements, containerization concepts
- **MSIX Packaging Tool** (8 hours): Conversion workflow, virtual machine setup, troubleshooting
- **Advanced Installer MSIX** (16 hours): MSIX authoring, MSI-to-MSIX conversion, digital signing
- **Win32 Refresh** (16 hours): IntuneWinAppUtil.exe CLI, detection rules, dependency management
- **Total**: 56 hours over 7 days (8 hours/day)

**IT Helpdesk Training** (Week 23):
- **MSIX vs. Win32 Differences** (8 hours): Self-service behavior, troubleshooting, support playbook
- **Company Portal User Guide** (4 hours): How users install/uninstall MSIX apps
- **Troubleshooting Lab** (4 hours): Hands-on MSIX install failures, uninstall issues, repair scenarios
- **Total**: 16 hours over 2 days

### 4. Code Signing Process

**Certificate Requirements**:
- **EV Code Signing Certificate**: Digicert or equivalent (£500/year)
- **Certificate Storage**: Azure Key Vault or Hardware Security Module (HSM) for secure private key storage
- **Signing Tool**: SignTool.exe (Windows SDK) or Advanced Installer integrated signing

**Signing Workflow**:
1. **MSIX Packages**: Mandatory signing (MSIX packages will not install without valid signature)
   - Sign with EV certificate using SignTool: `signtool sign /fd SHA256 /sha1 <thumbprint> /t http://timestamp.digicert.com package.msix`
2. **Win32 Packages**: Optional but recommended signing (improves trust, reduces SmartScreen warnings)
   - Sign installer EXE/MSI before packaging with IntuneWinAppUtil.exe

**Certificate Validation**:
- Test signed package installation on non-domain Windows 11 device
- Verify certificate chain trusted (Digicert root CA)
- Confirm no SmartScreen warnings or User Account Control (UAC) blocks

### 5. Quality Assurance & Testing

**Packaging QA Checklist** (per application):
- [ ] Package installs silently without user interaction (exit code 0)
- [ ] Detection rule correctly identifies installed application (registry, file path, or PowerShell script)
- [ ] Application launches and core functionality works (smoke testing)
- [ ] Package uninstalls cleanly (no residual files or registry keys for MSIX; acceptable residue for Win32)
- [ ] Package signed with valid EV code signing certificate (MSIX mandatory, Win32 recommended)
- [ ] ARM64 compatibility tested if deployed to Copilot+ PCs (native ARM64 preferred, x64 emulation acceptable)

**Pilot Testing** (Weeks 19-22):
- **Pilot Group 1** (50 devices, Week 19-20): Deploy all 220 applications, monitor success rate >95%
- **Issue Resolution** (Week 21): Fix packaging errors, update detection rules, retest failed deployments
- **Pilot Group 2** (150 devices, Week 22): Deploy fixed packages, validate success rate >98%

### 6. Documentation Requirements

**Application Catalog** (ServiceNow CMDB or SharePoint):
- Application name, publisher, version
- Packaging format (MSIX or Win32)
- InTune deployment method (Required, Available, Uninstall)
- Detection rule logic (file path, registry key, script)
- ARM64 compatibility status (Native ARM64, x64 Emulated Good, Degraded, Incompatible)
- Application owner, Tier (1/2/3), lifecycle stage (Active, Deprecated, Sunset)

**Packaging Engineer Runbook**:
- Format selection decision matrix (see §1 above)
- MSIX conversion troubleshooting guide (common errors, resolutions)
- Win32 silent install parameter discovery (common switches, vendor engagement)
- Code signing workflow (certificate management, SignTool commands)

---

## Links and References

### Related ADRs
- **ADR-002: Application Packaging Tool Selection** (to be created) - Evaluates Advanced Installer vs. AdminStudio vs. Microsoft free tools
- **ADR-003: Migration Automation Platform Selection** (to be created) - Evaluates Juriba Dashworks vs. manual migration management

### Related Documents
- **Requirements Document** (`projects/002-application-packaging-rationalisation/requirements.md`):
  - BR-003: InTune Application Deployment Readiness (100% apps packaged by Month 4)
  - FR-007: InTune Win32 App Package Creation (.intunewin format)
  - FR-014: ARM64 Compatibility Testing (Copilot+ PCs)
  - NFR-P-001: Packaging Performance (30 min average per app)
- **Research Findings** (`projects/002-application-packaging-rationalisation/research-findings.md`):
  - §1.1: MSIX format features, advantages, limitations
  - §1.2: Win32 format features, advantages, limitations
  - §1.3: App-V EOL migration strategy
  - §1.4: Format selection decision matrix
- **Project Plan** (`projects/002-application-packaging-rationalisation/project-plan.md`):
  - Weeks 11-18: Alpha - Packaging phase (MSIX, Win32, App-V migration)
  - Week 18: Alpha Gate (Packaging Complete milestone)
- **Architecture Principles** (`.arckit/memory/architecture-principles.md`):
  - Principle 1: Cloud-First Endpoint Management (InTune single source of truth)
  - Principle 2: Zero Trust Security Model (code signing, containerization)
  - Principle 3A: Windows 11 and Copilot+ PC Readiness (ARM64 support)
  - Principle 5: Application Compatibility and Testing (Windows 11 certification)

### External Standards and Guidelines
- **Microsoft MSIX Documentation**: https://docs.microsoft.com/en-us/windows/msix/
- **Microsoft Win32 Content Prep Tool**: https://github.com/microsoft/Microsoft-Win32-Content-Prep-Tool
- **InTune Win32 App Management**: https://docs.microsoft.com/en-us/mem/intune/apps/apps-win32-app-management
- **GDS Service Standard**: Point 3 (Make the Service Simple to Use), Point 9 (Create a Secure Service)
- **Technology Code of Practice**: Point 5 (Use Cloud First)
- **NCSC Cyber Security Principles**: Principle 4 (Secure Architecture)

---

## Metadata

**Document Control**:
- **Version**: 1.0
- **Author**: Enterprise Architect
- **Created**: 2025-11-12
- **Last Updated**: 2025-11-12
- **Next Review Date**: 2026-05-12 (6 months post-deployment)

**Review and Approval**:
- **Technical Review**: Enterprise Architect (2025-11-12)
- **Security Review**: Security Architect (2025-11-12)
- **Budget Review**: IT Operations Director (2025-11-12)
- **Final Approval**: Architecture Review Board (Pending)

**Change History**:
| Version | Date | Author | Changes |
|---|---|---|---|
| 1.0 | 2025-11-12 | Enterprise Architect | Initial ADR creation for format selection strategy |

**Supersedes**: None (initial packaging format decision)

**Superseded By**: None (current version)

**Tags**: `msix`, `win32`, `app-v`, `intune`, `windows-11`, `arm64`, `copilot-plus-pc`, `project-002`, `application-packaging`, `packaging-format`

---

**Generated by**: ArcKit v1.0 (Claude Code)
**AI Model**: Claude Sonnet 4.5 (claude-sonnet-4-5-20250929)
**Generation Timestamp**: 2025-11-12T10:30:00Z
