# Project Requirements: Application Packaging and Rationalisation

> **Template Status**: Live | **Version**: 0.11.2 | **Command**: `/arckit.requirements`

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-002-REQ-v3.0 |
| **Document Type** | Business and Technical Requirements |
| **Project** | Application Packaging and Rationalisation (Project 002) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 3.0 |
| **Created Date** | 2025-10-27 |
| **Last Modified** | 2026-01-26 |
| **Review Cycle** | Quarterly |
| **Next Review Date** | 2026-04-26 |
| **Owner** | IT Operations & Enterprise Architecture |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | CIO, IT Operations Director, Enterprise Architect, Application Owners, Helpdesk Manager |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 0.1 | 2025-10-27 | Enterprise Architecture Team | Initial draft | - | - |
| 1.0 | 2025-10-27 | ArcKit AI | Initial creation from `/arckit.requirements` command | PENDING | PENDING |
| 2.0 | 2026-01-24 | ArcKit AI | Updated to latest template format - enhanced Document Control, Revision History with approval tracking, and generation metadata | PENDING | PENDING |
| 3.0 | 2026-01-26 | ArcKit AI | Updated to ArcKit 0.11.2 template format. Added template status line. No content changes to requirements. | PENDING | PENDING |

---

## Executive Summary

### Business Context

As part of the Windows 10 to Windows 11 migration (Project 001), the organization must comprehensively assess, rationalize, and repackage its application portfolio to ensure compatibility with Windows 11 and Microsoft InTune cloud-native management. The current application estate consists of approximately 350+ applications deployed via Configuration Manager, many of which are outdated, redundant, or incompatible with Windows 11 and modern deployment methods.

This Application Packaging and Rationalisation project aims to:
- Inventory and categorize all applications across the 6,000-device estate
- Identify redundant, obsolete, or unused applications for retirement
- Assess Windows 11 compatibility for business-critical applications
- Modernize application packaging for InTune Win32 deployment (MSIX, App-V, .intunewin)
- Reduce application portfolio complexity by 30-40%
- Ensure zero application compatibility blockers before user migration

Without this work, the Windows 11 migration faces critical risks: user productivity disruption from incompatible applications, failed migrations requiring rollback, and helpdesk ticket surges exceeding capacity. This project is a prerequisite dependency for Project 001 migration success.

### Objectives

- **Rationalize Application Portfolio**: Reduce application count by 30-40% through retirement of redundant, obsolete, and unused applications
- **Achieve Windows 11 Compatibility**: Ensure 100% of business-critical applications (Tier 1) are tested and certified for Windows 11 before migration
- **Modernize Application Packaging**: Repackage 100% of retained applications for InTune deployment using MSIX, App-V, or Win32 (.intunewin) formats
- **Enable Cloud-Native Deployment**: Eliminate Configuration Manager dependencies for application deployment, supporting 18-month ConfigMgr decommissioning timeline
- **Reduce Support Burden**: Minimize application-related support tickets to <10% of total migration tickets through proactive compatibility testing

### Expected Outcomes

- **Portfolio Reduction**: Reduce application count from ~350 to <220 applications (30-40% reduction), eliminating licensing costs for retired apps (estimated £200K+ annual savings)
- **Zero Application Blockers**: 100% of business-critical applications tested and certified for Windows 11 before pilot phase of Project 001 (Month 2)
- **Deployment Modernization**: 100% of retained applications packaged for InTune deployment by Month 4, enabling cloud-native management
- **User Satisfaction**: <5% of migration support tickets related to application compatibility issues (vs. 15-25% industry baseline for unprepared migrations)
- **Cost Avoidance**: Avoid £500K-£1M in migration failures, rollbacks, and lost productivity through proactive application readiness

### Project Scope

**In Scope**:
- Application discovery and inventory across all 6,000 Windows 10 devices via InTune, Configuration Manager, and endpoint scanning
- Application rationalization: identify redundant, obsolete, technically incompatible, and unused applications
- Windows 11 compatibility assessment for all business-critical (Tier 1) and standard (Tier 2) applications
- Vendor engagement for Windows 11 compatibility statements and updated application versions
- Application repackaging for InTune deployment: MSIX, App-V, Win32 (.intunewin), Microsoft Store for Business
- InTune Win32 app deployment configuration: detection rules, install/uninstall commands, dependencies, requirements
- Application testing: functional testing in Windows 11 VDI, pilot testing on physical devices
- Application catalog documentation: ownership, compatibility status, deployment method, licensing
- User communication: application changes, retirements, alternatives

**Out of Scope**:
- Application development or custom software engineering (vendor responsibility)
- Line-of-business (LOB) application modernization (separate initiative)
- Azure Virtual Desktop (AVD) application hosting (future consideration)
- Application performance tuning (post-migration optimization)
- Third-party application management platforms (committed to InTune)

---

## Stakeholders

| Stakeholder | Role | Organization | Involvement Level |
|-------------|------|--------------|-------------------|
| CIO | Executive Sponsor | IT Leadership | Decision maker - strategic alignment |
| IT Operations Director | Project Owner | IT Operations | Accountable for delivery |
| Enterprise Architect | Technical Oversight | Enterprise Architecture | Architecture governance and traceability |
| Application Owners (15+) | Application SMEs | Business Units | Requirements definition, compatibility testing |
| Helpdesk Manager | Support Readiness | IT Support | Application knowledge transfer |
| Security Architect | Security Review | Information Security | Application security assessment |
| Procurement Manager | License Management | Finance/Procurement | License optimization and vendor contracts |
| End User Representatives | User Acceptance | Business Units | UAT and feedback |
| Change Manager | Communication | IT Operations | Stakeholder communication |

---

## Business Requirements

### BR-001: Application Portfolio Rationalization

**Description**: The organization must reduce application portfolio complexity by retiring redundant, obsolete, and unused applications to minimize migration scope, reduce licensing costs, and simplify ongoing management.

**Rationale**: Current ~350 application portfolio contains significant bloat:
- Multiple applications serving same function (3 PDF editors, 4 screen capture tools, 2 VPN clients)
- Obsolete applications no longer used (legacy versions retained "just in case")
- Vendor-unsupported applications posing security risk
- Applications with <5% user adoption consuming licensing and management overhead

Rationalization directly supports CFO's cost reduction driver (SD-2) from Project 001 stakeholder analysis.

**Success Criteria**:
- Reduce total application count from ~350 to <220 applications (30-40% reduction)
- Identify and retire applications with <5% user adoption (unless business-critical)
- Eliminate redundant applications where single solution can serve multiple use cases
- Quantify annual cost savings from retired application licenses (target: £200K+)

**Priority**: MUST_HAVE

**Stakeholder**: IT Operations Director, CFO, Enterprise Architect

**Maps to Project 001 Goals**:
- G-2 (CFO cost reduction)
- G-1 (IT Ops migration success - reduced scope)
- G-12 (Enterprise Architect governance excellence)

---

### BR-002: Windows 11 Compatibility Certification

**Description**: All business-critical applications (Tier 1) and standard applications (Tier 2) must be tested and certified for Windows 11 compatibility before user migration begins.

**Rationale**: Application incompatibility is the primary cause of migration failures (Architecture Principle 5: Application Compatibility and Testing). Previous Windows 7 to 10 migration suffered 6-month recovery due to untested application compatibility. CISO (SD-1) and IT Operations (SD-3) drivers require risk-free migration execution.

**Success Criteria**:
- 100% of Tier 1 (business-critical) applications tested and certified by Month 2
- 95% of Tier 2 (standard) applications tested and certified by Month 3
- Zero P1 incidents caused by application compatibility issues during pilot phase
- Documented compatibility status for all applications: Compatible | Compatible with Updates | Incompatible with Remediation Plan | Retire

**Priority**: MUST_HAVE

**Stakeholder**: IT Operations Director, CISO, Application Owners

**Maps to Project 001 Goals**:
- G-1 (95% migration success rate)
- G-4 (<2% support ticket rate)
- G-8 (<5% rollback rate)

---

### BR-003: InTune Application Deployment Readiness

**Description**: All retained applications must be repackaged and configured for deployment via Microsoft InTune (Win32 app management) to eliminate Configuration Manager dependencies and support cloud-native endpoint management.

**Rationale**: Architecture Principle 1 (Cloud-First Endpoint Management) mandates InTune as single source of truth. Configuration Manager to be decommissioned by Month 18 of Project 001. Applications not packaged for InTune block ConfigMgr decommissioning and cost savings (G-2).

**Success Criteria**:
- 100% of retained applications packaged for InTune deployment by Month 4
- All application packages include: detection rules, install/uninstall commands, dependencies, requirements
- Deployment success rate >95% in pilot testing
- Zero applications requiring Configuration Manager for deployment post-migration

**Priority**: MUST_HAVE

**Stakeholder**: IT Operations Director, CIO, Enterprise Architect

**Maps to Project 001 Goals**:
- G-7 (ConfigMgr decommissioned Month 18)
- O-4 (Cloud-native IT capability established)
- G-2 (Cost reduction via infrastructure decommissioning)

---

### BR-004: Application Licensing Optimization

**Description**: Optimize application licensing through retirement of unused applications, vendor consolidation, and transition to subscription licensing where cost-effective.

**Rationale**: CFO driver (SD-2) from Project 001 requires cost reduction. Licensing audit identifies £200K-£400K annual savings opportunity from:
- Retiring 100+ unused applications
- Consolidating redundant tools (e.g., standardize on single PDF editor)
- Renegotiating enterprise agreements based on actual usage data

**Success Criteria**:
- Achieve £200K+ annual licensing cost savings through application retirements
- Reduce number of unique software vendors from ~80 to <60
- Optimize license true-up based on actual usage data (InTune inventory)
- Document license optimization opportunities in application catalog

**Priority**: SHOULD_HAVE

**Stakeholder**: CFO, Procurement Manager, IT Operations Director

---

### BR-005: Migration Timeline Alignment

**Description**: Application packaging and rationalization must be completed before Windows 11 pilot phase (Month 2 of Project 001) to avoid delaying migration timeline and Windows 10 EOL risk.

**Rationale**: Windows 10 EOL is October 2025 (non-negotiable). CISO driver (SD-1) requires migration completion by Sep 2025. Application readiness is critical path dependency.

**Success Criteria**:
- Application inventory and rationalization complete by Month 1
- Tier 1 application compatibility testing complete by Month 2 (before pilot)
- Tier 2 application compatibility testing complete by Month 3 (before early adopters)
- Application repackaging for InTune complete by Month 4 (before production waves)
- Zero application-related delays to Project 001 migration schedule

**Priority**: MUST_HAVE

**Stakeholder**: IT Operations Director, CISO, CIO

---

### BR-006: User Productivity Continuity

**Description**: Application changes (retirements, upgrades, replacements) must not disrupt user productivity. Users must have equivalent or superior functionality post-migration.

**Rationale**: End User driver (SD-4) from Project 001: "Don't break my work." Poor application planning causes user frustration, lost productivity, and resistance to migration.

**Success Criteria**:
- <5% of migration support tickets related to application issues
- User satisfaction >80% for application experience post-migration
- Zero unplanned application retirements (all retirements communicated 30+ days in advance per Architecture Principle 14: Change Management)
- Alternative solutions provided for all retired applications

**Priority**: MUST_HAVE

**Stakeholder**: End Users, Helpdesk Manager, IT Operations Director

---

### BR-007: Application Governance and Catalog

**Description**: Establish authoritative application catalog with ownership, licensing, compatibility status, deployment method, and lifecycle stage to enable ongoing application governance.

**Rationale**: Enterprise Architect driver (SD-7) from Project 001 requires governance excellence (G-12: Zero unapproved exceptions). Current application estate lacks centralized visibility.

**Success Criteria**:
- Centralized application catalog in ServiceNow CMDB or SharePoint with 100% application coverage
- Documented application owner for 100% of applications
- Application lifecycle stage tracked: Active | Deprecated | Sunset | Retired
- Quarterly application governance reviews with Application Owners
- Integration with InTune for automated compliance checking

**Priority**: SHOULD_HAVE

**Stakeholder**: Enterprise Architect, IT Operations Director, Application Owners

---

### BR-008: Security and Compliance Posture

**Description**: All applications must meet security and compliance requirements (patching, vulnerability management, data protection) to maintain Zero Trust security posture.

**Rationale**: Architecture Principle 2 (Zero Trust Security Model) and CISO driver (SD-1) mandate Zero Trust. Windows 11 security benefits undermined by insecure applications.

**Success Criteria**:
- 100% of applications scanned for vulnerabilities (SAST, DAST, dependency scanning)
- Zero applications with unpatched critical vulnerabilities deployed to production
- All applications support Windows 11 security features (Defender Application Control compatibility)
- Application security assessment completed for Tier 1 applications before deployment

**Priority**: MUST_HAVE

**Stakeholder**: CISO, Security Architect, Compliance Officer

---

## Functional Requirements

### Application Discovery and Inventory

#### FR-001: Application Inventory Automation

**Description**: Automatically discover and inventory all applications installed across the Windows 10 device estate using InTune, Configuration Manager, and endpoint scanning tools.

**Relates To**: BR-001, BR-007

**Acceptance Criteria**:
- [ ] System discovers 95%+ of installed applications when inventory scan runs
- [ ] System records: application name, publisher, version, install count, device list, last scanned date
- [ ] System deduplicates applications (same app, different versions grouped)
- [ ] Disconnected/offline devices excluded with flagged status for follow-up

**Priority**: MUST_HAVE | **Complexity**: MEDIUM

---

#### FR-002: Application Usage Analytics

**Description**: Track application usage metrics (install count, last used date, active users) to support rationalization decisions.

**Relates To**: BR-001

**Acceptance Criteria**:
- [ ] System calculates: install count, % of devices, active users (used in last 90 days)
- [ ] Applications with <5% adoption flagged for retirement review
- [ ] Application Owner can review and decide: Retire | Retain | Replace with documented rationale
- [ ] Business-critical applications with low usage marked "Retain - Low Usage Justified"

**Priority**: MUST_HAVE | **Complexity**: MEDIUM

---

#### FR-003: Redundant Application Detection

**Description**: Identify redundant applications serving similar functions to enable consolidation (e.g., multiple PDF editors).

**Relates To**: BR-001

**Acceptance Criteria**:
- [ ] System identifies application groups by category (PDF editor, compression tool, VPN client, etc.)
- [ ] Multiple apps in same category flagged as "Potential Redundancy" with alternatives list
- [ ] System recommends standardization on single solution with cost/benefit analysis
- [ ] Department-specific tools excluded from redundancy flagging

**Priority**: SHOULD_HAVE | **Complexity**: MEDIUM

---

### Windows 11 Compatibility Testing

#### FR-004: Vendor Compatibility Database Integration

**Description**: Integrate with vendor compatibility databases (Microsoft App Assure, vendor websites) to automate Windows 11 compatibility lookups.

**Relates To**: BR-002

**Acceptance Criteria**:
- [ ] System queries Microsoft App Assure API for compatibility status
- [ ] Result returned: Compatible | Compatible with Updates | Incompatible | Unknown
- [ ] If unavailable, system flags for manual testing
- [ ] Vendor compatibility statements >12 months old flagged for revalidation

**Priority**: SHOULD_HAVE | **Complexity**: MEDIUM

---

#### FR-005: Windows 11 Test Environment Provisioning

**Description**: Provide Windows 11 test environments (VDI or physical devices) for application compatibility testing.

**Relates To**: BR-002

**Acceptance Criteria**:
- [ ] System provisions Windows 11 VDI instance within 30 minutes when requested
- [ ] IT Packager can test full functionality: install, launch, use, uninstall
- [ ] ARM64 testing (Copilot+ PC): physical Snapdragon device available within 24 hours
- [ ] Specialized hardware requirements (GPU, USB) require physical device fallback

**Priority**: MUST_HAVE | **Complexity**: HIGH

**Dependencies**: Windows 11 VDI infrastructure, Copilot+ PC physical devices

---

#### FR-006: Application Compatibility Test Plan

**Description**: Generate application compatibility test plans tailored to application tier and complexity.

**Relates To**: BR-002

**Acceptance Criteria**:
- [ ] Test plan generated based on tier:
  - Tier 1 (Critical): Full regression testing with Application Owner UAT
  - Tier 2 (Standard): Smoke testing (install, launch, key features, uninstall)
  - Tier 3 (Optional): Best-effort testing or user self-reporting
- [ ] IT Packager executes tests, tracks results: Pass | Fail | Blocked with evidence
- [ ] Compatibility decision documented: Compatible | Compatible with Updates | Incompatible
- [ ] Test failures generate remediation ticket for vendor engagement

**Priority**: MUST_HAVE | **Complexity**: MEDIUM

---

#### FR-014: ARM64 Compatibility Testing (Copilot+ PCs)

**Description**: Support ARM64 (Snapdragon) compatibility testing for applications deployed to Copilot+ PCs per Architecture Principle 3A.

**Relates To**: BR-002

**Acceptance Criteria**:
- [ ] IT Packager validates: Native ARM64 version availability (preferred), x64 emulation compatibility (Prism), performance under emulation
- [ ] Compatibility documented: Native ARM64 | x64 Emulated (Good) | x64 Emulated (Degraded) | Incompatible
- [ ] Kernel-mode drivers flagged "Incompatible - Requires ARM64-native driver from vendor"
- [ ] Performance degradation <20% acceptable, >20% flagged as "Degraded"

**Priority**: SHOULD_HAVE (if Copilot+ PCs in scope) | **Complexity**: HIGH

**Dependencies**: Copilot+ PC test devices (Snapdragon X Elite/Plus)

**Assumptions**: 30% Copilot+ PC adoption in Year 1 per Architecture Principle 3A

---

### InTune Application Packaging

#### FR-007: InTune Win32 App Package Creation

**Description**: Support creation of InTune Win32 app packages (.intunewin) from legacy installers (EXE, MSI).

**Relates To**: BR-003

**Acceptance Criteria**:
- [ ] IT Packager runs IntuneWinAppUtil.exe to create .intunewin package file
- [ ] System validates package integrity and size (<8GB)
- [ ] Detection rule configured: File path | Registry key | PowerShell script | MSI product code
- [ ] If installer >8GB, system recommends App-V or alternative distribution

**Priority**: MUST_HAVE | **Complexity**: MEDIUM

**Dependencies**: Microsoft Win32 Content Prep Tool (IntuneWinAppUtil.exe)

---

#### FR-008: Silent Install Parameter Discovery

**Description**: Assist IT Packagers in discovering silent install parameters for applications lacking documentation.

**Relates To**: BR-003

**Acceptance Criteria**:
- [ ] System tests common silent switches: /S, /silent, /quiet, /q, /verysilent
- [ ] Validated installer completes without user interaction (exit code 0)
- [ ] If unavailable, system recommends: vendor engagement, application repackaging, or user-context installation
- [ ] Applications requiring user interaction (product key) flagged for vendor engagement

**Priority**: SHOULD_HAVE | **Complexity**: MEDIUM

---

#### FR-009: InTune Application Dependency Management

**Description**: Support configuration of application dependencies (e.g., .NET Framework, Visual C++ Redistributables).

**Relates To**: BR-003

**Acceptance Criteria**:
- [ ] System allows dependency chaining: install Dependency A → B → Main App
- [ ] InTune automatically installs dependencies in correct order before main app
- [ ] Dependency installation failure blocks main application deployment
- [ ] Circular dependencies flagged as configuration error

**Priority**: MUST_HAVE | **Complexity**: MEDIUM

---

#### FR-010: Application Deployment Testing

**Description**: Support pilot testing of InTune application deployments to test device groups before production rollout.

**Relates To**: BR-003

**Acceptance Criteria**:
- [ ] Application package assigned to test group (10-20 test devices)
- [ ] Application installs automatically (device context) or via Company Portal (user context)
- [ ] InTune reports: Success | Failed | Pending
- [ ] Failure rate >10% in test group alerts IT Operations for remediation

**Priority**: MUST_HAVE | **Complexity**: MEDIUM

---

### Application Governance

#### FR-011: Application Catalog CMDB Integration

**Description**: Integrate application catalog with ServiceNow CMDB to maintain authoritative application inventory with lifecycle tracking.

**Relates To**: BR-007

**Acceptance Criteria**:
- [ ] System creates CMDB CI with attributes: name, publisher, version, owner, tier, lifecycle stage, compatibility status, deployment method
- [ ] Lifecycle stage changes reflected in CMDB with audit trail (who, when, why)
- [ ] CMDB links application CI to device CIs (relationships)
- [ ] Applications deployed but not in catalog flagged as "Unapproved - Requires Governance Review"

**Priority**: SHOULD_HAVE | **Complexity**: HIGH

**Dependencies**: ServiceNow CMDB instance, Integration API

---

#### FR-012: Application Retirement Workflow

**Description**: Support application retirement workflow with user communication, license reclamation, and InTune deployment removal.

**Relates To**: BR-001, BR-006

**Acceptance Criteria**:
- [ ] Retirement workflow initiated:
  - T-30 days: User communication with alternative solution
  - T-14 days: Reminder with training resources
  - T-7 days: Final reminder with support contact
  - T-0 days: InTune deployment removed
  - T+7 days: License reclamation
- [ ] User communication includes: retirement reason, alternative solution, training, support contact
- [ ] Application uninstalled from devices on retirement date (if forced uninstall configured)
- [ ] User exemption requests routed to Application Owner for approval

**Priority**: MUST_HAVE | **Complexity**: MEDIUM

---

#### FR-013: Vendor Engagement Tracking

**Description**: Track vendor engagement for application compatibility, updates, and custom support requests with SLA monitoring.

**Relates To**: BR-002

**Acceptance Criteria**:
- [ ] System creates vendor ticket with: application name, issue description, priority, SLA target
- [ ] System tracks: response date, resolution plan, estimated delivery
- [ ] SLA deadline approaching triggers IT Operations alert for escalation
- [ ] Vendor non-responsive (>7 days critical issue) escalates to procurement

**Priority**: SHOULD_HAVE | **Complexity**: MEDIUM

---

### Security and Compliance

#### FR-015: Application Security Vulnerability Scanning

**Description**: Scan applications for known vulnerabilities (CVEs) using vulnerability databases before deployment approval.

**Relates To**: BR-008

**Acceptance Criteria**:
- [ ] System scans for: CVEs, outdated dependencies, malware signatures
- [ ] Vulnerabilities categorized: Critical | High | Medium | Low with remediation recommendations
- [ ] Critical vulnerabilities block deployment until resolved (vendor patch or risk acceptance)
- [ ] If no vendor patch, system routes to CISO for risk acceptance decision

**Priority**: MUST_HAVE | **Complexity**: MEDIUM

**Dependencies**: Vulnerability scanning tool (Microsoft Defender for Endpoint, Qualys, Tenable)

---

#### FR-016: Application License Usage Monitoring

**Description**: Monitor application license usage via InTune inventory to identify over-licensed applications for cost optimization.

**Relates To**: BR-004

**Acceptance Criteria**:
- [ ] System tracks: installed count, active users (last 90 days), licensed count
- [ ] Over-licensed (licensed count >> active users) flagged for license reclamation
- [ ] License reclamation opportunity reported to procurement with annual savings quantification
- [ ] License usage spiky (seasonal) averaged over 12 months before recommending reclamation

**Priority**: SHOULD_HAVE | **Complexity**: MEDIUM

---

### User Experience

#### FR-017: Application Change Communication

**Description**: Generate user communication for application changes (retirements, upgrades, replacements) with T-30, T-14, T-7, T-1 notifications per Architecture Principle 14 (Change Management).

**Relates To**: BR-006

**Acceptance Criteria**:
- [ ] System sends email notifications at T-30, T-14, T-7, T-1 days
- [ ] Communication includes: change description, reason, impact, alternative solution, training resources, support contact
- [ ] Open rate tracked: emails sent, emails opened, support ticket volume (pre/post change)
- [ ] User exemption requests routed to Application Owner for evaluation

**Priority**: MUST_HAVE | **Complexity**: MEDIUM

---

#### FR-018: Application Catalog Dashboard

**Description**: Provide real-time dashboard with application readiness metrics (inventory, compatibility, packaging, deployment).

**Relates To**: BR-007

**Acceptance Criteria**:
- [ ] Dashboard displays:
  - Total applications: 350 → Target 220 (rationalization progress)
  - Compatibility status: % Compatible, % Pending Testing, % Incompatible
  - Packaging status: % Packaged for InTune, % Pending Packaging
  - Deployment status: % Deployed to Pilot, % Production Ready
- [ ] Metrics refresh every 15 minutes (near real-time)
- [ ] Filter by tier (Tier 1 only) supported
- [ ] Export to CSV/PDF for executive reporting

**Priority**: SHOULD_HAVE | **Complexity**: MEDIUM

---

#### FR-019: Application Testing Evidence Collection

**Description**: Collect and store application testing evidence (screenshots, logs, test results) for audit trail and traceability.

**Relates To**: BR-007, G-13 (100% requirements traceability)

**Acceptance Criteria**:
- [ ] IT Packager captures: screenshots (install, launch, features), logs (install log, event viewer), test results (pass/fail with notes)
- [ ] Evidence stored and associated with application catalog entry
- [ ] Enterprise Architect can query complete testing evidence trail (who tested, when, results, evidence)
- [ ] Test failure evidence retained for root cause analysis

**Priority**: SHOULD_HAVE | **Complexity**: MEDIUM

---

#### FR-020: Application Rollback Capability

**Description**: Support application rollback (uninstall new version, reinstall previous version) if compatibility issues discovered post-deployment.

**Relates To**: BR-006

**Acceptance Criteria**:
- [ ] IT Operations can trigger rollback within 24 hours
- [ ] System uninstalls new version and reinstalls previous version from InTune package history
- [ ] Users notified: issue resolved, previous version restored, support contact
- [ ] If previous version incompatible with Windows 11, system flags "No rollback path - forward fix required"

**Priority**: SHOULD_HAVE | **Complexity**: HIGH

**Dependencies**: InTune package version history

---

## Non-Functional Requirements

### Performance Requirements

#### NFR-P-001: Application Inventory Scan Performance

**Requirement**: Application inventory scan must complete for 6,000 devices within 24 hours

**Measurement Method**: InTune/Configuration Manager reporting execution time

**Load Conditions**:
- 6,000 Windows 10 devices enrolled in InTune
- Configuration Manager co-management enabled
- Peak load: 80% devices online during business hours

**Priority**: HIGH

---

#### NFR-P-002: InTune Deployment Performance

**Requirement**: Application deployment to pilot group (50 devices) must complete within 2 hours (device-context) or 4 hours (user-context)

**Measurement Method**: InTune deployment reporting (install start to detection rule success)

**Load Conditions**:
- Pilot group: 50 devices
- Application package size: <2GB typical, <8GB maximum
- Network bandwidth: 100Mbps+ per device

**Priority**: MEDIUM

---

### Availability and Resilience Requirements

#### NFR-A-001: Application Catalog Availability

**Requirement**: Application catalog must achieve 99.5% uptime during business hours (8 AM - 6 PM, Monday-Friday)

**Maintenance Windows**: Weekends (Saturday 12 AM - 6 AM) for planned maintenance

**Priority**: MEDIUM

---

#### NFR-A-002: InTune Service Dependency

**Requirement**: System must gracefully handle InTune service outages (Microsoft 99.9% SLA)

**Resilience Patterns Required**:
- [ ] Retry with exponential backoff for InTune API calls
- [ ] Cache application inventory data locally (24-hour staleness acceptable)
- [ ] Queue deployment requests during outage, process when service restored

**Priority**: HIGH

---

### Scalability Requirements

#### NFR-S-001: Application Catalog Scaling

**Requirement**: Application catalog must support growth from 350 applications to 500+ over 3 years without performance degradation

**Scaling Triggers**: Database query response time >2 seconds triggers index optimization or scaling

**Priority**: MEDIUM

---

### Security Requirements

#### NFR-SEC-001: Application Package Integrity

**Requirement**: All application packages uploaded to InTune must be scanned for malware and validated for digital signatures (where available)

**Validation Process**:
- Microsoft Defender Antivirus scan before upload
- Digital signature verification for EXE/MSI (vendor-signed preferred)
- Hash verification (SHA-256) stored in application catalog for audit

**Priority**: CRITICAL

---

#### NFR-SEC-002: Application Catalog Access Control

**Requirement**: Application catalog access must follow RBAC with least privilege

**Roles and Permissions**:
- **IT Application Packager**: Read/write applications, upload packages, update compatibility
- **Application Owner**: Read own applications, comment on compatibility decisions
- **IT Operations Manager**: Read all applications, approve retirements, assign owners
- **Enterprise Architect**: Read all applications, audit compliance, generate reports
- **End User**: No direct access (consume via InTune Company Portal)

**Priority**: HIGH

---

#### NFR-SEC-003: Application Vulnerability Management

**Requirement**: Zero applications with unpatched critical CVEs deployed to production

**Remediation SLA**:
- Critical vulnerabilities: Block deployment until patched
- High vulnerabilities: Remediation within 30 days or CISO risk acceptance
- Medium vulnerabilities: Remediation within 90 days

**Priority**: CRITICAL

---

### Compliance Requirements

#### NFR-C-001: Application Licensing Compliance

**Requirement**: All deployed applications must have valid licenses with usage monitored for compliance

**Compliance Activities**:
- Quarterly license usage audits (install count vs. licensed count)
- Annual vendor license true-up reporting
- Immediate alerting if over-deployment detected

**Priority**: HIGH

---

#### NFR-C-002: Application Governance Audit Trail

**Requirement**: All application catalog changes (retirements, compatibility status, deployment method) must be logged with who/what/when/why

**Audit Log Retention**: 7 years for compliance (ISO 27001)

**Priority**: HIGH

---

### Usability Requirements

#### NFR-U-001: Application Catalog User Experience

**Requirement**: Application catalog interface must be intuitive for Application Owners and IT Packagers with minimal training

**UX Standards**:
- Search and filter by: application name, publisher, tier, lifecycle stage, compatibility status
- Bulk actions supported (retire multiple applications, assign owner)
- Mobile-responsive design (tablet access for field IT)
- Browser support: Edge, Chrome (last 2 versions)

**Priority**: MEDIUM

---

## Integration Requirements

### INT-001: Integration with Microsoft InTune

**Purpose**: InTune is the primary application deployment platform

**Integration Type**: Real-time API (Microsoft Graph API)

**Data Exchanged**:
- **To InTune**: Application packages (.intunewin), deployment configuration (detection rules, install/uninstall commands)
- **From InTune**: Device inventory, application install status, deployment success/failure reports

**Integration Pattern**: REST API (synchronous for package upload, polling for status)

**Authentication**: OAuth 2.0 with service principal (Azure AD app registration)

**SLA**: API response <2 seconds (95th percentile), 99.9% availability (Microsoft SLA)

**Priority**: CRITICAL

---

### INT-002: Integration with Configuration Manager (Transitional)

**Purpose**: During co-management period (Month 0-18), Configuration Manager provides supplemental application inventory

**Integration Type**: Database sync (SQL query) or API (ConfigMgr PowerShell cmdlets)

**Data Exchanged**:
- **From Configuration Manager**: Legacy application inventory, deployment status

**Integration Pattern**: Batch (daily sync)

**SLA**: Batch sync completes within 6 hours, acceptable staleness 24 hours

**Priority**: MEDIUM (transitional, sunsets Month 18)

---

### INT-003: Integration with ServiceNow CMDB

**Purpose**: ServiceNow CMDB is the authoritative configuration management database

**Integration Type**: Real-time API (ServiceNow REST API)

**Data Exchanged**:
- **To ServiceNow CMDB**: Application CI creation/update (name, publisher, version, owner, tier, lifecycle stage, compatibility status, deployment method)
- **From ServiceNow CMDB**: Device CI relationships, application owner contact details

**Integration Pattern**: Event-driven (application catalog changes trigger CMDB updates)

**SLA**: CMDB update latency <15 minutes, 99.5% availability

**Priority**: SHOULD_HAVE

---

### INT-004: Integration with Microsoft App Assure

**Purpose**: Microsoft App Assure provides Windows 11 compatibility validation and remediation support

**Integration Type**: API or manual lookup (web portal)

**Data Exchanged**:
- **To App Assure**: Application compatibility inquiry (name, publisher, version)
- **From App Assure**: Compatibility status, recommended version, remediation guidance

**Integration Pattern**: Request/response (synchronous API or manual lookup)

**SLA**: Compatibility inquiry response <24 hours (Microsoft SLA)

**Priority**: SHOULD_HAVE

---

### INT-005: Integration with Procurement/License Management System

**Purpose**: Track application license counts, costs, and vendor contracts for license optimization

**Integration Type**: Batch file export or API

**Data Exchanged**:
- **From Procurement**: Licensed application count, license cost, vendor contract details, renewal dates
- **To Procurement**: Actual install count, active users, over-licensing alerts

**Integration Pattern**: Batch (weekly sync)

**SLA**: Weekly sync completes within 24 hours

**Priority**: SHOULD_HAVE

---

## Data Requirements

### Data Entities

#### Entity 1: Application

**Description**: Represents a software application deployed or deployable to Windows devices

**Key Attributes**:
- application_id (UUID, PK)
- name (String, indexed)
- publisher (String)
- version (String)
- tier (Enum: Tier 1 Critical | Tier 2 Standard | Tier 3 Optional)
- lifecycle_stage (Enum: Active | Deprecated | Sunset | Retired)
- compatibility_status (Enum: Compatible | Compatible with Updates | Incompatible | Pending Testing | Retired)
- arm64_compatibility (Enum: Native ARM64 | x64 Emulated Good | x64 Emulated Degraded | Incompatible | Not Tested)
- deployment_method (Enum: MSIX | Win32 | App-V | Microsoft Store | Not Packaged)
- owner_email (String, FK to Azure AD)
- install_count (Integer ≥ 0)
- active_users (Integer ≥ 0, ≤ install_count)
- licensed_count (Integer ≥ 0)
- annual_license_cost (Decimal ≥ 0)
- intune_app_id (UUID, FK to InTune)

**Data Volume**:
- Current: ~350 applications
- Target: ~220 applications post-rationalization
- 3-year projection: ~300 applications

**Data Classification**: INTERNAL

**Data Retention**: Retired applications retained 7 years (audit trail), lifecycle_stage='Retired'

---

#### Entity 2: ApplicationTest

**Description**: Represents Windows 11 compatibility test results

**Key Attributes**:
- test_id (UUID, PK)
- application_id (UUID, FK to Application)
- test_date (Date)
- tester_email (String, FK to Azure AD)
- test_environment (Enum: VDI x64 | VDI ARM64 | Physical x64 | Physical ARM64)
- test_result (Enum: Pass | Fail | Blocked)
- compatibility_decision (Enum: Compatible | Compatible with Updates | Incompatible)
- test_notes (Text)
- evidence_url (String, URL to SharePoint)

**Data Volume**: ~500 test records

**Data Retention**: 7 years (audit trail)

---

#### Entity 3: ApplicationDeployment

**Description**: Represents InTune deployment configuration

**Key Attributes**:
- deployment_id (UUID, PK)
- application_id (UUID, FK to Application)
- intune_app_id (UUID, FK to InTune)
- target_group (String, Azure AD group)
- deployment_intent (Enum: Required | Available | Uninstall)
- deployment_date (Timestamp)
- success_count (Integer ≥ 0)
- failure_count (Integer ≥ 0)
- pending_count (Integer ≥ 0)

**Data Volume**: ~1,000 deployment records

**Data Retention**: 3 years (operational history)

---

## Requirement Conflicts & Resolutions

### Conflict C-1: Speed vs. Quality (Timeline vs. Testing Thoroughness)

**Conflicting Requirements**:
- **BR-005**: Application readiness before Project 001 pilot (Month 2) - SPEED
- **BR-002**: 100% Tier 1 applications thoroughly tested with Application Owner UAT - QUALITY

**Stakeholders**:
- **CISO (SD-1)**: Wants speed - migration by Sep 2025 to avoid unsupported OS
- **IT Operations Director (SD-3)**: Wants quality - thorough testing to avoid migration failures

**Resolution Strategy**: INNOVATE

**Decision**: Hire 2 temporary IT Packagers (contractors) for Month 1-3 to increase capacity from 3 to 5 FTEs, enabling parallel testing. If contractor hiring delayed, fallback to prioritizing Tier 1A (30 mission-critical apps) for full UAT, Tier 1B (50 apps) for smoke testing with pilot-phase UAT.

**Decision Authority**: CIO (Executive Sponsor)

**Impact**:
- **Modified**: BR-002 amended: "100% Tier 1 smoke tested before pilot, full UAT completed during pilot (Month 2-3)"
- **Added**: £30K budget for 2 temp contractors (3 months × £5K/month each)

---

### Conflict C-2: Cost vs. Continuity (Aggressive Rationalization vs. User Satisfaction)

**Conflicting Requirements**:
- **BR-001**: Reduce applications 30-40% (350 → <220) for £200K savings - COST
- **BR-006**: User productivity continuity, no forced retirements causing disruption - CONTINUITY

**Stakeholders**:
- **CFO (SD-2)**: Wants aggressive rationalization for cost reduction
- **End Users (SD-4)**: Want retention of familiar applications, avoid retraining

**Resolution Strategy**: COMPROMISE + PHASE

**Decision**: Phased retirements
- **Phase 1 (Month 1-2)**: Retire 80 apps (23%) - non-controversial (obsolete, <2% adoption, duplicates) - £80K savings
- **Phase 2 (Month 4-6)**: Retire 50 apps (14%) - user-impacting with change management (2-5% adoption, consolidation requiring training) - £120K savings (cumulative £200K)
- **Innovate**: Phase 2 includes alternative solution documentation, training webinars, user opt-in pilot (30-day evaluation)

**Decision Authority**: CIO with CFO and Change Manager consultation

**Impact**:
- **Modified**: BR-001 changed from "Month 4" to phased: "23% reduction Month 2, 37% reduction Month 6"
- **Modified**: BR-004 savings phased: "£80K Month 2, £200K Month 6"
- **Added**: FR-017 (Application Change Communication) prioritized to MUST_HAVE

---

### Conflict C-3: Security vs. Velocity (Vulnerability Scanning Delays)

**Conflicting Requirements**:
- **BR-003**: 100% applications packaged for InTune by Month 4 - VELOCITY
- **NFR-SEC-003**: Zero critical vulnerabilities in production (blocks deployment) - SECURITY

**Stakeholders**:
- **IT Operations Director (SD-3)**: Wants velocity - package quickly to meet migration timeline
- **CISO (SD-1)**: Wants security - comprehensive vulnerability scanning blocks insecure apps

**Resolution Strategy**: INNOVATE

**Decision**: Implement automated vulnerability scanning pipeline integrated with InTune packaging workflow:
1. IT Packager uploads package to staging
2. Automated scan runs within 4 hours
3. Automated decision:
   - **Critical**: Block deployment, alert IT Ops and CISO
   - **High**: Flag for review, deploy to test group only (not production)
   - **Medium/Low**: Risk acceptance auto-approved for Tier 2/3, remediation backlog
4. Risk acceptance workflow for High/Medium vulns (CISO approval required for High)

**Decision Authority**: CISO with IT Operations Director consultation

**Impact**:
- **Added**: NFR-SEC-003 amended: "Zero critical in production. High requires CISO risk acceptance. Medium/Low acceptable with 90-day remediation SLA."
- **Added**: Automated vulnerability scanning pipeline tooling requirement
- **Modified**: BR-003 unchanged (Month 4 deadline maintained)

---

## Timeline and Milestones

| Milestone | Description | Target Date | Dependencies |
|-----------|-------------|-------------|--------------|
| **M1: Requirements Approval** | Stakeholder sign-off | Month 0, Week 2 | This document |
| **M2: Application Inventory Complete** | 350 applications cataloged | Month 0, Week 4 | InTune, ConfigMgr, scanning tools |
| **M3: Rationalization Decisions** | 130 apps flagged for retirement | Month 1, Week 2 | Application Owner engagement |
| **M4: Windows 11 Test Environment** | VDI and physical devices ready | Month 0, Week 2 | VDI infra, Copilot+ PC procurement |
| **M5: Tier 1 Compatibility Testing** | 80 Tier 1 apps certified | Month 2 | M4, Application Owner UAT |
| **M6: Tier 2 Compatibility Testing** | 120 Tier 2 apps certified | Month 3 | M5 |
| **M7: InTune Packaging Complete** | 220 apps packaged for InTune | Month 4 | M5, M6 |
| **M8: Pilot Deployment Testing** | 50-device pilot, >95% success | Month 4, Week 2 | M7, Project 001 pilot devices |
| **M9: Production Deployment Ready** | Apps approved for production | Month 4, Week 4 | M8 |
| **M10: Phase 1 Rationalization** | 80 apps retired, £80K savings | Month 2 | M3 |
| **M11: Phase 2 Rationalization** | 130 apps retired, £200K savings | Month 6 | M10 |

---

## Budget

### Cost Estimate

| Category | Estimated Cost | Notes |
|----------|----------------|-------|
| **Labor - IT Packagers** | £90K | 3 FTEs × 4 months × £7.5K/month |
| **Labor - Temp Contractors** | £30K | 2 contractors × 3 months × £5K/month (C-1 resolution) |
| **Labor - IT Ops Manager** | £15K | 1 FTE × 25% × 4 months × £15K/month |
| **Labor - Enterprise Architect** | £10K | 1 FTE × 15% × 4 months × £15K/month |
| **Windows 11 VDI Infrastructure** | £20K | Azure VDI or on-premises (20-30 concurrent sessions, 4 months) |
| **Copilot+ PC Test Devices** | £15K | 5 Snapdragon X Elite devices × £3K each |
| **Vulnerability Scanning Tool** | £10K | Microsoft Defender for Endpoint or Qualys/Tenable |
| **Application Repackaging Tools** | £8K | AdminStudio or Advanced Installer (2 licenses × £4K) |
| **ServiceNow CMDB Integration** | £5K | API development (if SHOULD_HAVE prioritized) |
| **Change Management** | £7K | Training materials, webinars, emails (Phase 2 retirements) |
| **Contingency (10%)** | £21K | Risk mitigation buffer |
| **Total** | **£231K** | |

### Ongoing Operational Costs

| Category | Annual Cost | Notes |
|----------|-------------|-------|
| **Application Catalog Maintenance** | £20K | 0.5 FTE IT Operations × £40K/year |
| **InTune Licensing** | £0 | Included in Microsoft 365 E3/E5 (sunk cost) |
| **Vulnerability Scanning** | £5K | Annual license renewal (if third-party) |
| **Application Governance Reviews** | £10K | Quarterly reviews, Application Owner engagement |
| **Total** | **£35K/year** | Offset by £200K annual savings (net £165K/year savings) |

---

## Success Criteria and KPIs

### Business Success Metrics

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| Application Portfolio Reduction | 350 apps | <220 apps (37%) | Month 4 | Application catalog count |
| Annual Licensing Cost Savings | £0 | £200K+ | Month 6 | Finance cost tracking |
| Tier 1 Compatibility Certification | 0% | 100% | Month 2 | Catalog compatibility status |
| Tier 2 Compatibility Certification | 0% | 95% | Month 3 | Catalog compatibility status |
| InTune Packaging Completion | 0% | 100% | Month 4 | Catalog deployment_method |
| Application-Related Tickets | TBD | <5% of migration tickets | Ongoing | ServiceNow ticket categorization |
| User Satisfaction (App Experience) | 65% NPS | >80% NPS | Post-migration (T+30) | User survey |

### Technical Success Metrics

| Metric | Target | Measurement Method |
|--------|--------|-------------------|
| Application Inventory Accuracy | >95% | Spot-check 20 random apps vs. InTune |
| InTune Deployment Success Rate | >95% | InTune reporting (success/total) |
| Application Compatibility Test Coverage | 100% Tier 1, 95% Tier 2 | Catalog test records |
| ARM64 Compatibility Test Coverage | 80% of Tier 1 apps | ApplicationTest.test_environment='ARM64' |
| Vulnerability Scan Coverage | 100% of packaged apps | Vulnerability scan reports |
| Application Catalog Uptime | >99% business hours | Monitoring tool |

---

## Dependencies and Risks

### Dependencies

| Dependency | Owner | Target Date | Status | Impact if Delayed |
|------------|-------|-------------|--------|-------------------|
| InTune Tenant Configuration | IT Operations | Month 0 (Complete) | ✅ Complete | HIGH - Blocks packaging |
| Windows 11 VDI Environment | IT Infrastructure | Month 0, Week 2 | 🟡 In Progress | HIGH - Blocks compatibility testing |
| Copilot+ PC Test Devices | Procurement | Month 1 | 🟡 At Risk | MEDIUM - Blocks ARM64 testing only |
| Application Owner Identification | Business Unit Directors | Month 0, Week 3 | 🔴 Blocked | MEDIUM - Delays rationalization/UAT |
| ServiceNow CMDB Integration | ServiceNow Platform Team | Month 2 | 🟡 At Risk | LOW - Manual catalog fallback |
| Microsoft App Assure Access | IT Operations | Month 0, Week 1 | ✅ Complete | LOW - Manual vendor lookups fallback |
| Vulnerability Scanning Tool | Security Team | Month 1 | 🟡 In Progress | MEDIUM - Manual security reviews fallback |

### Risks

| Risk ID | Description | Probability | Impact | Mitigation | Owner |
|---------|-------------|-------------|--------|------------|-------|
| R-001 | Vendor Windows 11 compatibility statements unavailable for 20-30% of apps | HIGH | HIGH | Engage vendors early (T-90 days), prioritize high-usage apps, use Microsoft App Assure | IT Ops Director |
| R-002 | Application Owners unresponsive for UAT | MEDIUM | HIGH | Escalate to business unit directors, use IT Packager smoke testing fallback for Tier 2 | Change Manager |
| R-003 | ARM64 compatibility 30-40% degraded/incompatible under emulation | MEDIUM | MEDIUM | Prioritize x64 Copilot+ PCs (Intel/AMD) initially, engage vendors for native ARM64 | IT Ops Director |
| R-004 | Rationalization savings <£200K due to user resistance | MEDIUM | MEDIUM | Change management T-30 days, provide alternatives, executive sponsor messaging | CFO + Change Mgr |
| R-005 | Silent install parameter discovery fails for 10-15% of apps | MEDIUM | MEDIUM | Use repackaging tools (AdminStudio), engage vendors, fallback to user-context installations | IT Packagers |
| R-006 | InTune Win32 package upload failures (>8GB, network timeouts) | LOW | MEDIUM | Use App-V for large apps, implement retry logic, leverage Microsoft Premier Support | IT Ops Director |
| R-007 | Compatibility testing extends beyond Month 3, delays migration pilot | MEDIUM | CRITICAL | Parallelize testing (multiple IT Packagers), prioritize Tier 1, Microsoft App Assure fast-track | IT Ops Director |
| R-008 | Critical app incompatible with Windows 11, no vendor remediation | LOW | CRITICAL | Identify early via vendor lookup, explore alternatives, request vendor custom support, worst case: retain on Windows 10 with ESU | CIO + CISO |
| R-009 | License compliance issues trigger vendor audits and penalties | MEDIUM | HIGH | Proactive license reconciliation, immediately remediate over-deployments, procurement negotiations | Procurement Mgr |

---

## Validation & Sign-off

### Stakeholder Review

| Stakeholder | Review Date | Comments | Status |
|-------------|-------------|----------|--------|
| IT Operations Director | PENDING | | PENDING |
| CIO | PENDING | | PENDING |
| CFO | PENDING | | PENDING |
| CISO | PENDING | | PENDING |
| Enterprise Architect | PENDING | | PENDING |

### Document Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Project Sponsor | | | |
| Business Owner | | | |
| Enterprise Architect | | | |

---

## Appendices

### Appendix A: Glossary

- **MSIX**: Modern Windows application package format with containerization and clean uninstall
- **Win32**: Traditional Windows application (.exe, .msi) wrapped in .intunewin for InTune deployment
- **App-V**: Microsoft Application Virtualization for isolating applications from underlying OS
- **InTune Win32 Content Prep Tool**: Microsoft utility (IntuneWinAppUtil.exe) for converting installers to .intunewin
- **Detection Rule**: InTune configuration specifying how to verify application installed (registry, file, PowerShell script)
- **ARM64**: 64-bit ARM processor architecture (Qualcomm Snapdragon Copilot+ PCs) - requires x64 emulation for non-native apps
- **Application Rationalization**: Process of evaluating portfolio to retire redundant, obsolete, unused applications
- **Tier 1 Application**: Business-critical required for core business (e.g., ERP, CRM, LOB apps)
- **Tier 2 Application**: Standard productivity application used by majority (e.g., Microsoft Office, browsers)
- **Tier 3 Application**: Optional departmental/individual application with limited usage
- **Microsoft App Assure**: Microsoft service providing Windows 11 compatibility validation (included in M365 E3/E5)

### Appendix B: Reference Documents

- **Project 001: Windows 11 Migration Requirements** (`projects/001-windows-11-migration-intune/requirements.md`)
- **Windows 11 Migration Stakeholder Analysis** (`projects/001-windows-11-migration-intune/stakeholder-drivers.md`)
- **Enterprise Architecture Principles** (`.arckit/memory/architecture-principles.md`)
- **Microsoft InTune Win32 App Management**: https://learn.microsoft.com/mem/intune/apps/apps-win32-app-management
- **Windows 11 Application Compatibility**: https://learn.microsoft.com/windows/compatibility/
- **Microsoft App Assure Service**: https://learn.microsoft.com/fasttrack/windows-11-app-assure

### Appendix C: Application Tier Classification

**Tier 1 - Business-Critical**:
- Required for core business operations (revenue-impacting)
- No workaround if unavailable (mission-critical)
- Used by >50% OR essential for specific department
- Examples: SAP ERP, Salesforce CRM, custom LOB apps, Outlook

**Tier 2 - Standard**:
- Standard productivity applications for majority
- Workaround available if temporarily unavailable
- Used by 10-50% OR departmental standard
- Examples: Microsoft Office, Adobe Acrobat, browsers, Zoom/Teams

**Tier 3 - Optional**:
- Departmental/individual applications with limited usage
- Easily replaceable or deferrable
- Used by <10%
- Examples: Screen capture tools, media players, utilities

### Appendix D: ARM64 Compatibility Testing Checklist

For Copilot+ PCs (Snapdragon X Elite/Plus) per Architecture Principle 3A:

**Pre-Testing**:
- [ ] Check vendor website for native ARM64 version (preferred)
- [ ] Identify kernel-mode drivers (VPN, security, hardware drivers) - ARM64-native required

**Testing on Physical Snapdragon Device**:
- [ ] Application installs successfully (x64 or ARM64)
- [ ] Application launches without errors
- [ ] Key features functional (create, edit, save, open, print)
- [ ] Performance acceptable (vs. x64 Windows 11 - <20% degradation acceptable)
- [ ] Uninstall clean (no residual files/registry)

**ARM64 Compatibility Decision**:
- **Native ARM64**: Vendor provides ARM64 installer → Deploy native (best performance)
- **x64 Emulated - Good**: Runs under Prism emulation <20% degradation → Deploy x64 (acceptable)
- **x64 Emulated - Degraded**: Runs under emulation >20% degradation → Flag "Copilot+ PC Not Recommended"
- **Incompatible**: Kernel-mode drivers without ARM64 or application fails → Block Copilot+ PC deployment

---

**Generated by**: ArcKit `/arckit.requirements` command
**Generated on**: 2026-01-26
**ArcKit Version**: 0.11.2
**Project**: Application Packaging and Rationalisation (Project 002)
**Model**: Claude Opus 4.5
