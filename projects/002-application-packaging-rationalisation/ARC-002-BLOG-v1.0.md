# Product Backlog: Application Packaging and Rationalisation

**Generated**: 2025-11-01
**Project**: 002-application-packaging-rationalisation
**Phase**: Discovery → Alpha → Beta → Live
**Team Velocity**: 20 points/sprint
**Sprint Length**: 2 weeks
**Total Sprints Planned**: 8 (with future sprints identified)

---

## Executive Summary

**Total User Stories**: 45
**Total Epics**: 8
**Total Story Points**: 308
**Estimated Duration**: 16 sprints (32 weeks) for full delivery

### Priority Breakdown
- **Must Have**: 200 points (65%) - Critical for migration success
- **Should Have**: 78 points (25%) - Important for quality and governance
- **Could Have**: 30 points (10%) - Nice-to-have improvements

### Epic Breakdown
1. **EPIC-001: Application Portfolio Rationalization** - 42 points (BR-001, BR-004)
2. **EPIC-002: Windows 11 Compatibility Certification** - 68 points (BR-002)
3. **EPIC-003: InTune Application Deployment Readiness** - 58 points (BR-003)
4. **EPIC-004: Application Governance and Catalog** - 45 points (BR-007)
5. **EPIC-005: Security and Compliance Posture** - 38 points (BR-008)
6. **EPIC-006: User Productivity Continuity** - 32 points (BR-006)
7. **EPIC-007: Migration Timeline Alignment** - 15 points (BR-005)
8. **EPIC-008: Infrastructure and Integration** - 10 points (Supporting technical work)

### Project Timeline Alignment
- **Discovery Phase** (Sprints 1-2): Inventory, rationalization planning
- **Readiness Phase** (Sprints 3-4): Compatibility testing
- **Alpha - Procurement & Packaging** (Sprints 5-9): Tool deployment, application packaging
- **Beta - Testing** (Sprints 10-11): Pilot deployment, UAT
- **Live - Handover** (Sprints 12-13): Production readiness, handover to Project 001

---

## How to Use This Backlog

### For Product Owners (IT Operations Director):
1. Review epic priorities aligned with Project 001 migration timeline
2. Adjust rationalization targets based on stakeholder feedback
3. Validate tier classifications with Application Owners
4. Monitor cost savings metrics (target: £200K annual savings)

### For Development Teams (IT Packagers):
1. Review upcoming sprint work (packaging, testing)
2. Estimate effort for application-specific packaging tasks
3. Identify technical blockers early (vendor engagement, ARM64 compatibility)
4. Update application compatibility status in catalog

### For Scrum Masters (IT Operations Manager):
1. Track velocity after each sprint (adjust for packaging complexity)
2. Monitor dependency chains (InTune → packaging → testing → deployment)
3. Escalate vendor non-responsiveness early
4. Facilitate weekly backlog refinement with IT Packagers

### Backlog Refinement:
- **Weekly**: Review next 2 sprints with IT Packagers (refine acceptance criteria)
- **Bi-weekly**: Groom packaging backlog beyond 2 sprints (prioritize by tier)
- **Monthly**: Reassess rationalization decisions with Application Owners
- **Per sprint**: Update based on compatibility test results and vendor responses

---

## Epics

### EPIC-001: Application Portfolio Rationalization

**Business Requirement**: BR-001, BR-004
**Priority**: Must Have
**Business Value**: High - £200K+ annual cost savings, reduced migration scope
**Risk**: Medium - User resistance to application retirements
**Dependencies**: None (foundation epic)
**Total Story Points**: 42
**Estimated Duration**: 2-3 sprints

**Description**:
Reduce application portfolio complexity by retiring redundant, obsolete, and unused applications. Identify 130+ applications for retirement to reduce total count from 350 to <220 (37% reduction), eliminate licensing costs (target £200K+ annual savings), and simplify ongoing management.

**Success Criteria**:
- Reduce total application count from 350 to <220 applications (30-40% reduction)
- Identify and retire applications with <5% user adoption (unless business-critical)
- Eliminate redundant applications where single solution can serve multiple use cases
- Quantify annual cost savings from retired application licenses (target: £200K+)
- Zero unplanned retirements (all communicated 30+ days in advance)

**Stories in this Epic**:
1. STORY-001: Automate application inventory discovery (8 points) - Sprint 1
2. STORY-002: Track application usage analytics (5 points) - Sprint 1
3. STORY-003: Detect redundant applications (5 points) - Sprint 2
4. STORY-016: Monitor application license usage (5 points) - Sprint 2
5. STORY-012: Execute application retirement workflow (8 points) - Sprint 3
6. STORY-018: Build application catalog dashboard (5 points) - Sprint 4
7. TASK-DR-001: Design Application entity schema (3 points) - Sprint 1
8. TASK-DR-002: Design ApplicationTest entity schema (2 points) - Sprint 1
9. TASK-DR-003: Design ApplicationDeployment entity schema (1 point) - Sprint 1

**Total**: 42 story points across 9 items

---

### EPIC-002: Windows 11 Compatibility Certification

**Business Requirement**: BR-002
**Priority**: Must Have
**Business Value**: Critical - Zero migration blockers, <5% support ticket rate
**Risk**: High - Vendor incompatibility, ARM64 degradation
**Dependencies**: EPIC-001 (application inventory must complete first)
**Total Story Points**: 68
**Estimated Duration**: 3-4 sprints

**Description**:
All business-critical applications (Tier 1) and standard applications (Tier 2) must be tested and certified for Windows 11 compatibility before user migration begins. Includes x64 and ARM64 (Copilot+ PC) compatibility testing per Architecture Principle 3A.

**Success Criteria**:
- 100% of Tier 1 (business-critical) applications tested and certified by Month 2 (Sprint 4)
- 95% of Tier 2 (standard) applications tested and certified by Month 3 (Sprint 6)
- Zero P1 incidents caused by application compatibility issues during pilot phase
- Documented compatibility status for all applications: Compatible | Compatible with Updates | Incompatible with Remediation Plan | Retire

**Stories in this Epic**:
1. STORY-004: Integrate vendor compatibility database (Microsoft App Assure) (5 points) - Sprint 2
2. STORY-005: Provision Windows 11 test environments (VDI + physical) (8 points) - Sprint 2
3. STORY-006: Generate application compatibility test plans (5 points) - Sprint 3
4. STORY-014: Test ARM64 compatibility (Copilot+ PCs) (13 points) - Sprint 5
5. STORY-013: Track vendor engagement with SLA monitoring (5 points) - Sprint 3
6. STORY-015: Scan applications for security vulnerabilities (8 points) - Sprint 4
7. STORY-019: Collect application testing evidence (3 points) - Sprint 3
8. TASK-NFR-A-002: Implement InTune service resilience (5 points) - Sprint 2
9. TASK-NFR-SEC-001: Implement application package integrity validation (8 points) - Sprint 3
10. TASK-NFR-SEC-003: Implement vulnerability management workflow (8 points) - Sprint 4

**Total**: 68 story points across 10 items

---

### EPIC-003: InTune Application Deployment Readiness

**Business Requirement**: BR-003
**Priority**: Must Have
**Business Value**: High - Cloud-native deployment, ConfigMgr decommissioning enabler
**Risk**: Medium - Large package upload failures, silent install discovery
**Dependencies**: EPIC-002 (compatibility must be certified before packaging)
**Total Story Points**: 58
**Estimated Duration**: 4-5 sprints

**Description**:
All retained applications must be repackaged and configured for deployment via Microsoft InTune (Win32 app management) to eliminate Configuration Manager dependencies and support cloud-native endpoint management. Includes MSIX, Win32 (.intunewin), and App-V packaging.

**Success Criteria**:
- 100% of retained applications packaged for InTune deployment by Month 4 (Sprint 9)
- All application packages include: detection rules, install/uninstall commands, dependencies, requirements
- Deployment success rate >95% in pilot testing
- Zero applications requiring Configuration Manager for deployment post-migration

**Stories in this Epic**:
1. STORY-007: Create InTune Win32 app packages (.intunewin) (13 points) - Sprint 5
2. STORY-008: Discover silent install parameters (5 points) - Sprint 5
3. STORY-009: Configure InTune application dependencies (5 points) - Sprint 6
4. STORY-010: Test application deployments (pilot group) (8 points) - Sprint 7
5. STORY-020: Support application rollback capability (8 points) - Sprint 8
6. TASK-INT-001: Integrate with Microsoft InTune (Graph API) (8 points) - Sprint 4
7. TASK-INT-002: Integrate with Configuration Manager (transitional) (5 points) - Sprint 4
8. TASK-NFR-P-002: Optimize InTune deployment performance (3 points) - Sprint 7
9. TASK-NFR-SEC-002: Implement application catalog RBAC (3 points) - Sprint 5

**Total**: 58 story points across 9 items

---

### EPIC-004: Application Governance and Catalog

**Business Requirement**: BR-007
**Priority**: Should Have
**Business Value**: Medium - Governance excellence, ongoing lifecycle management
**Risk**: Low - Integration complexity with ServiceNow CMDB
**Dependencies**: EPIC-001 (catalog structure must exist)
**Total Story Points**: 45
**Estimated Duration**: 3-4 sprints

**Description**:
Establish authoritative application catalog with ownership, licensing, compatibility status, deployment method, and lifecycle stage to enable ongoing application governance. Integration with ServiceNow CMDB for configuration management.

**Success Criteria**:
- Centralized application catalog in ServiceNow CMDB or SharePoint with 100% application coverage
- Documented application owner for 100% of applications
- Application lifecycle stage tracked: Active | Deprecated | Sunset | Retired
- Quarterly application governance reviews with Application Owners
- Integration with InTune for automated compliance checking

**Stories in this Epic**:
1. STORY-011: Integrate application catalog with ServiceNow CMDB (8 points) - Sprint 6
2. STORY-018: Build application catalog dashboard (5 points) - Sprint 4 [shared with EPIC-001]
3. STORY-019: Collect application testing evidence (3 points) - Sprint 3 [shared with EPIC-002]
4. TASK-INT-003: Integrate with ServiceNow CMDB (real-time API) (8 points) - Sprint 6
5. TASK-INT-004: Integrate with Microsoft App Assure (5 points) - Sprint 3
6. TASK-INT-005: Integrate with Procurement/License Management (5 points) - Sprint 4
7. TASK-NFR-A-001: Ensure application catalog 99.5% uptime (3 points) - Sprint 5
8. TASK-NFR-S-001: Support application catalog scaling (500+ apps) (3 points) - Sprint 6
9. TASK-NFR-C-002: Implement application governance audit trail (5 points) - Sprint 5

**Total**: 45 story points across 9 items

---

### EPIC-005: Security and Compliance Posture

**Business Requirement**: BR-008
**Priority**: Must Have
**Business Value**: Critical - Zero Trust security, regulatory compliance
**Risk**: Medium - Vendor vulnerabilities blocking deployment
**Dependencies**: EPIC-002 (testing) and EPIC-003 (packaging)
**Total Story Points**: 38
**Estimated Duration**: 2-3 sprints

**Description**:
All applications must meet security and compliance requirements (patching, vulnerability management, data protection) to maintain Zero Trust security posture per Architecture Principle 2. Includes vulnerability scanning, GDPR compliance, and ISO 27001 audit trails.

**Success Criteria**:
- 100% of applications scanned for vulnerabilities (SAST, DAST, dependency scanning)
- Zero applications with unpatched critical vulnerabilities deployed to production
- All applications support Windows 11 security features (Defender Application Control compatibility)
- Application security assessment completed for Tier 1 applications before deployment

**Stories in this Epic**:
1. STORY-015: Scan applications for security vulnerabilities (8 points) - Sprint 4 [shared with EPIC-002]
2. TASK-NFR-SEC-001: Implement application package integrity validation (8 points) - Sprint 3 [shared with EPIC-002]
3. TASK-NFR-SEC-002: Implement application catalog RBAC (3 points) - Sprint 5 [shared with EPIC-003]
4. TASK-NFR-SEC-003: Implement vulnerability management workflow (8 points) - Sprint 4 [shared with EPIC-002]
5. TASK-NFR-C-001: Ensure application licensing compliance (5 points) - Sprint 4
6. TASK-NFR-C-002: Implement application governance audit trail (5 points) - Sprint 5 [shared with EPIC-004]
7. TASK-NFR-U-001: Design application catalog UX (1 point) - Sprint 3

**Total**: 38 story points across 7 items (some shared)

---

### EPIC-006: User Productivity Continuity

**Business Requirement**: BR-006
**Priority**: Must Have
**Business Value**: High - User satisfaction >80%, <5% app-related support tickets
**Risk**: Medium - Poor change management causes user resistance
**Dependencies**: EPIC-001 (retirement decisions)
**Total Story Points**: 32
**Estimated Duration**: 2-3 sprints

**Description**:
Application changes (retirements, upgrades, replacements) must not disrupt user productivity. Users must have equivalent or superior functionality post-migration, with proactive communication per Architecture Principle 14 (Change Management).

**Success Criteria**:
- <5% of migration support tickets related to application issues
- User satisfaction >80% for application experience post-migration
- Zero unplanned application retirements (all retirements communicated 30+ days in advance)
- Alternative solutions provided for all retired applications

**Stories in this Epic**:
1. STORY-012: Execute application retirement workflow (8 points) - Sprint 3 [shared with EPIC-001]
2. STORY-017: Generate application change communications (T-30/14/7/1) (8 points) - Sprint 3
3. STORY-020: Support application rollback capability (8 points) - Sprint 8 [shared with EPIC-003]
4. STORY-018: Build application catalog dashboard (5 points) - Sprint 4 [shared with EPIC-001]
5. TASK-NFR-U-001: Design application catalog UX (1 point) - Sprint 3 [shared with EPIC-005]
6. TASK-NFR-P-001: Ensure inventory scan completes <24 hours (2 points) - Sprint 1

**Total**: 32 story points across 6 items (some shared)

---

### EPIC-007: Migration Timeline Alignment

**Business Requirement**: BR-005
**Priority**: Must Have
**Business Value**: Critical - Avoid Windows 10 EOL risk (Oct 2025)
**Risk**: High - Compatibility testing delays push migration timeline
**Dependencies**: All other epics (orchestration epic)
**Total Story Points**: 15
**Estimated Duration**: Across all sprints (milestone tracking)

**Description**:
Application packaging and rationalization must be completed before Windows 11 pilot phase (Month 2 of Project 001) to avoid delaying migration timeline and Windows 10 EOL risk. This epic tracks critical path milestones.

**Success Criteria**:
- Application inventory and rationalization complete by Month 1 (Sprint 2)
- Tier 1 application compatibility testing complete by Month 2 (Sprint 4, before pilot)
- Tier 2 application compatibility testing complete by Month 3 (Sprint 6, before early adopters)
- Application repackaging for InTune complete by Month 4 (Sprint 9, before production waves)
- Zero application-related delays to Project 001 migration schedule

**Stories in this Epic**:
- Milestone tracking stories (not separate user stories, tracked via sprint goals)
- TASK-MILESTONE-001: Discovery Gate (Week 4 / Sprint 2) (2 points)
- TASK-MILESTONE-002: Readiness Gate (Week 8 / Sprint 4) (3 points)
- TASK-MILESTONE-003: Procurement Gate (Week 10 / Sprint 5) (2 points)
- TASK-MILESTONE-004: Alpha Gate - Packaging Complete (Week 18 / Sprint 9) (5 points)
- TASK-MILESTONE-005: Beta Gate - Go/No-Go (Week 22 / Sprint 11) (3 points)

**Total**: 15 story points across 5 milestone tasks

---

### EPIC-008: Infrastructure and Integration

**Priority**: Must Have
**Business Value**: High - Technical foundation for all other work
**Risk**: Medium - Tool procurement delays, API integration complexity
**Dependencies**: None (foundation epic)
**Total Story Points**: 10
**Estimated Duration**: 2 sprints

**Description**:
Technical infrastructure setup including database schema, API integrations, VDI test environments, and tooling (Juriba Assessment, Advanced Installer).

**Success Criteria**:
- PostgreSQL Application Catalog database deployed (3 entities)
- InTune Graph API integration operational
- Windows 11 VDI test environment provisioned (30-minute SLA)
- Copilot+ PC test devices procured (5 Snapdragon X Elite devices)

**Stories in this Epic**:
1. TASK-DR-001: Design Application entity schema (3 points) - Sprint 1 [shared with EPIC-001]
2. TASK-DR-002: Design ApplicationTest entity schema (2 points) - Sprint 1 [shared with EPIC-001]
3. TASK-DR-003: Design ApplicationDeployment entity schema (1 point) - Sprint 1 [shared with EPIC-001]
4. TASK-INT-001: Integrate with Microsoft InTune (Graph API) (8 points) - Sprint 4 [shared with EPIC-003]
5. TASK-INT-002: Integrate with Configuration Manager (transitional) (5 points) - Sprint 4 [shared with EPIC-003]
6. STORY-005: Provision Windows 11 test environments (VDI + physical) (8 points) - Sprint 2 [shared with EPIC-002]

**Total**: 10 story points (net new, excluding shared items)

---

## Prioritized Backlog

### SPRINT 1: Foundation (Weeks 1-2) - Discovery Phase

**Velocity**: 20 story points
**Theme**: Application inventory and data model foundation

#### Must Have Stories (14 points):
- **STORY-001**: Automate application inventory discovery (8 points) [EPIC-001]
- **STORY-002**: Track application usage analytics (5 points) [EPIC-001]
- **TASK-DR-001**: Design Application entity schema (3 points) [EPIC-001, EPIC-008]
  → Reduced to fit capacity

#### Technical Tasks (4 points):
- **TASK-DR-002**: Design ApplicationTest entity schema (2 points) [EPIC-001, EPIC-008]
- **TASK-DR-003**: Design ApplicationDeployment entity schema (1 point) [EPIC-001, EPIC-008]
- **TASK-NFR-P-001**: Ensure inventory scan completes <24 hours (2 points) [EPIC-006]
  → Removed to fit capacity, moved to Sprint 2

**Total Allocated**: 20 points

#### Sprint Goals:
✅ Complete application inventory scan (350 apps discovered)
✅ Application Catalog database schema deployed (PostgreSQL)
✅ Usage analytics baseline established (install count, active users)
✅ Data model approved by Enterprise Architect

#### Dependencies Satisfied:
✅ None (foundation sprint)

#### Dependencies Created for Sprint 2:
→ Application inventory data (STORY-001) - needed for rationalization
→ Database schema (TASK-DR-001/002/003) - needed for all future work
→ Usage analytics (STORY-002) - needed for redundancy detection

#### Risks:
⚠️ InTune/ConfigMgr inventory APIs may have accuracy issues (<95% coverage)
⚠️ Disconnected/offline devices excluded from inventory (flag for follow-up)
⚠️ Application Owner identification may take longer than expected

#### Definition of Done:
- [ ] All code reviewed and approved
- [ ] Database schema deployed to dev environment
- [ ] InTune inventory scan validated (spot-check 20 random apps)
- [ ] Documentation updated (data model ERD, API integration guide)

---

### SPRINT 2: Rationalization Planning (Weeks 3-4) - Discovery Phase

**Velocity**: 20 story points
**Theme**: Application rationalization and test environment setup

#### Feature Stories (12 points):
- **STORY-003**: Detect redundant applications (5 points) [EPIC-001]
- **STORY-005**: Provision Windows 11 test environments (VDI + physical) (8 points) [EPIC-002, EPIC-008]
  → Only 13 points allocated

#### Technical Tasks (7 points):
- **TASK-NFR-A-002**: Implement InTune service resilience (5 points) [EPIC-002]
- **TASK-NFR-P-001**: Ensure inventory scan completes <24 hours (2 points) [EPIC-006]

**Total Allocated**: 20 points

#### Sprint Goals:
✅ Redundant application groups identified (e.g., 3 PDF editors → 1)
✅ Windows 11 VDI test environment operational (20-30 concurrent sessions)
✅ Copilot+ PC test devices procured (5 Snapdragon X Elite devices)
✅ InTune API resilience implemented (retry with exponential backoff)
✅ **Discovery Gate Passed** (Week 4 milestone)

#### Milestone: Discovery Gate (Week 4)
- [ ] Complete application inventory (350 apps) with ownership
- [ ] Initial rationalization assessment complete (130 retirement candidates)
- [ ] Application tiering complete (Tier 1: 66, Tier 2: 132, Tier 3: 22)
- [ ] Business case shows £200K+ annual savings potential

#### Dependencies Satisfied:
✅ Sprint 1: Application inventory, database schema

#### Dependencies Created for Sprint 3:
→ Redundancy analysis (STORY-003) - informs retirement decisions
→ VDI test environment (STORY-005) - needed for compatibility testing
→ InTune resilience (TASK-NFR-A-002) - handles API outages during testing

#### Risks:
⚠️ VDI infrastructure may take >2 weeks to provision (procurement delays)
⚠️ Copilot+ PC devices at risk (procurement lead time 3-4 weeks)
⚠️ Redundancy detection may require manual review (not fully automated)

---

### SPRINT 3: Compatibility Testing Begins (Weeks 5-6) - Readiness Phase

**Velocity**: 20 story points
**Theme**: Tier 1 compatibility testing and retirement workflow

#### Feature Stories (11 points):
- **STORY-006**: Generate application compatibility test plans (5 points) [EPIC-002]
- **STORY-012**: Execute application retirement workflow (8 points) [EPIC-001, EPIC-006]
  → Only 13 points for features

#### Technical Tasks (9 points):
- **STORY-013**: Track vendor engagement with SLA monitoring (5 points) [EPIC-002]
- **STORY-019**: Collect application testing evidence (3 points) [EPIC-002, EPIC-004]
- **TASK-NFR-U-001**: Design application catalog UX (1 point) [EPIC-005, EPIC-006]
  → Only 9 points for technical

**Total Allocated**: 20 points (13+7, adjusted)

#### Sprint Goals:
✅ Tier 1 compatibility test plans generated (66 apps)
✅ Application retirement workflow operational (T-30/14/7 notifications)
✅ Vendor engagement tracking system live (SLA monitoring)
✅ Testing evidence collection process documented

#### Dependencies Satisfied:
✅ Sprint 2: VDI test environment, application tiers defined

#### Dependencies Created for Sprint 4:
→ Test plans (STORY-006) - guide Tier 1 testing execution
→ Retirement workflow (STORY-012) - enables Phase 1 retirements (80 apps)
→ Evidence collection (STORY-019) - audit trail for compatibility decisions

#### Risks:
⚠️ Application Owners may be unresponsive for UAT
⚠️ Vendor compatibility statements unavailable (20-30% of apps)
⚠️ Retirement workflow user resistance (change management risk)

---

### SPRINT 4: Tier 1 Testing & Security (Weeks 7-8) - Readiness Phase

**Velocity**: 20 story points
**Theme**: Tier 1 compatibility certification and security scanning

#### Feature Stories (13 points):
- **STORY-004**: Integrate vendor compatibility database (Microsoft App Assure) (5 points) [EPIC-002]
- **STORY-015**: Scan applications for security vulnerabilities (8 points) [EPIC-002, EPIC-005]

#### Technical Tasks (7 points):
- **STORY-016**: Monitor application license usage (5 points) [EPIC-001]
- **STORY-018**: Build application catalog dashboard (5 points) [EPIC-001, EPIC-004, EPIC-006]
  → Only 10 points total, need to remove 3 points
- **TASK-INT-005**: Integrate with Procurement/License Management (5 points) [EPIC-004]
  → Removed to fit capacity, moved to Sprint 5

**Total Allocated**: 18 points (adjusted to fit)

#### Sprint Goals:
✅ **Tier 1 applications 100% tested and certified** (66 apps, Month 2 deadline)
✅ Microsoft App Assure integration operational (compatibility lookups)
✅ Vulnerability scanning pipeline deployed (all packaged apps scanned)
✅ Application catalog dashboard live (rationalization progress tracking)
✅ **Readiness Assessment Gate Passed** (Week 8 milestone)

#### Milestone: Readiness Gate (Week 8)
- [ ] 100% Tier 1 applications tested and certified
- [ ] Compatibility blockers identified with remediation plans
- [ ] Vendor engagement status tracked (SLAs met)
- [ ] No critical risks without mitigation

#### Dependencies Satisfied:
✅ Sprint 3: Test plans, evidence collection, vendor tracking

#### Dependencies Created for Sprint 5:
→ App Assure integration (STORY-004) - accelerates Tier 2 testing
→ Vulnerability scanning (STORY-015) - blocks deployment if critical CVEs
→ License usage (STORY-016) - informs rationalization Phase 2 decisions

#### Risks:
⚠️ Tier 1 testing may extend beyond Week 8 (resource constraints)
⚠️ Critical app incompatible with Windows 11 (no vendor remediation)
⚠️ Vulnerability scan may block 10-15% of apps (vendor patch required)

---

### SPRINT 5: InTune Integration & Packaging Begins (Weeks 9-10) - Alpha Phase

**Velocity**: 20 story points
**Theme**: InTune API integration and Win32 packaging

#### Feature Stories (13 points):
- **STORY-007**: Create InTune Win32 app packages (.intunewin) (13 points) [EPIC-003]

#### Technical Tasks (7 points):
- **TASK-INT-001**: Integrate with Microsoft InTune (Graph API) (8 points) [EPIC-003, EPIC-008]
  → Exceeds capacity, reduce to 7 points or move overflow
- **TASK-NFR-A-001**: Ensure application catalog 99.5% uptime (3 points) [EPIC-004]
- **TASK-NFR-C-002**: Implement application governance audit trail (5 points) [EPIC-004, EPIC-005]
  → Only 15 points total allocated

**Total Allocated**: 20 points (13+7, adjusted)

#### Sprint Goals:
✅ InTune Graph API integration operational (package upload, deployment config)
✅ Win32 packaging workflow established (IntuneWinAppUtil.exe)
✅ First 20-30 applications packaged for InTune (.intunewin format)
✅ Application catalog 99.5% uptime SLA met
✅ **Procurement Gate Passed** (Week 10 milestone) - Tools deployed

#### Milestone: Procurement Gate (Week 10)
- [ ] Juriba Assessment deployed (application inventory enrichment)
- [ ] Advanced Installer deployed (application repackaging tool)
- [ ] IT Packagers trained on tools (2-day training complete)

#### Dependencies Satisfied:
✅ Sprint 4: Tier 1 compatibility certified, vulnerability scanning operational

#### Dependencies Created for Sprint 6:
→ InTune integration (TASK-INT-001) - enables all future deployments
→ Win32 packaging (STORY-007) - foundation for 220 app packaging target
→ Audit trail (TASK-NFR-C-002) - governance compliance for lifecycle changes

#### Risks:
⚠️ InTune package upload failures (>8GB packages, network timeouts)
⚠️ Silent install parameter discovery fails for 10-15% of apps
⚠️ Win32 packaging learning curve slows initial velocity

---

### SPRINT 6: Tier 2 Testing & CMDB Integration (Weeks 11-12) - Alpha Phase

**Velocity**: 20 story points
**Theme**: Tier 2 compatibility testing and ServiceNow CMDB integration

#### Feature Stories (13 points):
- **STORY-008**: Discover silent install parameters (5 points) [EPIC-003]
- **STORY-009**: Configure InTune application dependencies (5 points) [EPIC-003]
- **STORY-011**: Integrate application catalog with ServiceNow CMDB (8 points) [EPIC-004]
  → Only 18 points allocated

#### Technical Tasks (7 points):
- **TASK-INT-003**: Integrate with ServiceNow CMDB (real-time API) (8 points) [EPIC-004]
  → Exceeds capacity
- **TASK-INT-004**: Integrate with Microsoft App Assure (5 points) [EPIC-004]
  → Removed to fit capacity (already have basic integration from Sprint 4)
- **TASK-NFR-S-001**: Support application catalog scaling (500+ apps) (3 points) [EPIC-004]

**Total Allocated**: 21 points (adjusted, slight overflow acceptable)

#### Sprint Goals:
✅ **Tier 2 applications 95% tested and certified** (120 of 126 apps)
✅ Silent install parameter discovery tool operational
✅ InTune application dependency chaining configured
✅ ServiceNow CMDB integration operational (CI creation/update)
✅ Application catalog scales to 500+ apps (performance validated)

#### Dependencies Satisfied:
✅ Sprint 5: InTune API integration, Win32 packaging workflow

#### Dependencies Created for Sprint 7:
→ Silent install discovery (STORY-008) - enables remaining app packaging
→ Dependency management (STORY-009) - required for complex app deployments
→ CMDB integration (STORY-011) - governance reporting and compliance

#### Risks:
⚠️ Tier 2 testing may have 5-10% failure rate (vendor issues)
⚠️ ServiceNow CMDB integration complexity (API schema mapping)
⚠️ Silent install discovery manual fallback for proprietary installers

---

### SPRINT 7: Pilot Deployment Testing (Weeks 13-14) - Alpha Phase

**Velocity**: 20 story points
**Theme**: Pilot deployment and performance optimization

#### Feature Stories (16 points):
- **STORY-010**: Test application deployments (pilot group) (8 points) [EPIC-003]
- **STORY-014**: Test ARM64 compatibility (Copilot+ PCs) (13 points) [EPIC-002]
  → Only 21 points, slight overflow

#### Technical Tasks (4 points):
- **TASK-NFR-P-002**: Optimize InTune deployment performance (3 points) [EPIC-003]
- **TASK-INT-002**: Integrate with Configuration Manager (transitional) (5 points) [EPIC-003, EPIC-008]
  → Moved to Sprint 8 to fit capacity

**Total Allocated**: 21 points (adjusted)

#### Sprint Goals:
✅ Pilot deployment to 50 test devices (>95% success rate)
✅ ARM64 compatibility testing complete (80% of Tier 1 apps)
✅ InTune deployment performance optimized (<2 hours for 50 devices)
✅ Deployment failures root-caused and remediated

#### Dependencies Satisfied:
✅ Sprint 6: Silent install discovery, dependency management, Tier 2 testing

#### Dependencies Created for Sprint 8:
→ Pilot testing (STORY-010) - validates packaging quality before production
→ ARM64 testing (STORY-014) - certifies Copilot+ PC deployment readiness
→ Performance optimization (TASK-NFR-P-002) - meets deployment SLAs

#### Risks:
⚠️ Pilot deployment failure rate >10% triggers remediation sprint
⚠️ ARM64 emulation degradation >20% for 30-40% of apps
⚠️ InTune deployment performance may require App-V fallback for large apps

---

### SPRINT 8: Production Readiness (Weeks 15-16) - Alpha Phase

**Velocity**: 20 story points
**Theme**: Rollback capability and production hardening

#### Feature Stories (16 points):
- **STORY-020**: Support application rollback capability (8 points) [EPIC-003, EPIC-006]
- **STORY-017**: Generate application change communications (T-30/14/7/1) (8 points) [EPIC-006]

#### Technical Tasks (4 points):
- **TASK-INT-002**: Integrate with Configuration Manager (transitional) (5 points) [EPIC-003, EPIC-008]
  → Moved from Sprint 7
- **TASK-NFR-SEC-001**: Implement application package integrity validation (8 points) [EPIC-002, EPIC-005]
  → Moved from Sprint 3 (deferred)
- **TASK-NFR-SEC-002**: Implement application catalog RBAC (3 points) [EPIC-003, EPIC-005]
- **TASK-NFR-SEC-003**: Implement vulnerability management workflow (8 points) [EPIC-002, EPIC-005]
  → Already completed in Sprint 4, remove
- **TASK-NFR-C-001**: Ensure application licensing compliance (5 points) [EPIC-005]
  → Only fit 3+5 = 8 points for technical

**Total Allocated**: 19 points (16+3, adjusted)

#### Sprint Goals:
✅ Application rollback capability operational (24-hour RTO)
✅ User change communications automated (T-30/14/7/1 email notifications)
✅ Configuration Manager transitional integration complete (legacy app inventory)
✅ Application catalog RBAC implemented (least privilege access)
✅ **Alpha Gate Passed** (Week 18 milestone - packaging complete)

#### Milestone: Alpha Gate (Week 18)
- [ ] 100% of retained applications packaged for InTune (220 apps)
- [ ] Deployment success rate >95% in pilot testing
- [ ] All critical/high vulnerabilities remediated
- [ ] Production deployment approval obtained

#### Dependencies Satisfied:
✅ Sprint 7: Pilot testing, ARM64 testing, performance optimization

#### Dependencies Created for Sprint 9:
→ Rollback capability (STORY-020) - safety net for production issues
→ Change communications (STORY-017) - user readiness for retirements
→ RBAC (TASK-NFR-SEC-002) - secure production access

#### Risks:
⚠️ Rollback may not be possible for apps incompatible with Windows 10
⚠️ Change communication open rates <50% (user apathy)
⚠️ Alpha Gate may be delayed if packaging completion <95%

---

## Future Sprints (Beyond Sprint 8)

**Remaining Backlog**: 128 story points (308 total - 180 allocated in Sprints 1-8)

### Sprint 9-11: Beta Phase (Weeks 17-22)
**Theme**: Pilot deployment expansion, UAT, and go/no-go decision

**High Priority Items**:
- STORY-010 expansion: Pilot Group 2 deployment (150 devices) (8 points)
- User Acceptance Testing (UAT) with Application Owners (13 points)
- Issue resolution and packaging fixes (21 points)
- TASK-MILESTONE-005: Beta Gate - Go/No-Go (Week 22 / Sprint 11) (3 points)

**Sprint 11 Milestone: Beta Gate (Week 22)**
- [ ] Pilot deployment >95% success rate (200 devices total)
- [ ] UAT sign-off from Application Owners (Tier 1 apps)
- [ ] <5% application-related support tickets in pilot
- [ ] Go-Live approval from IT Operations Director and CIO

### Sprint 12-13: Live Phase (Weeks 23-26)
**Theme**: Production readiness, documentation, and handover to Project 001

**High Priority Items**:
- Production readiness review and final approvals (5 points)
- Documentation and knowledge transfer to Project 001 team (8 points)
- Hypercare planning and runbook creation (5 points)
- TASK-MILESTONE-006: Handover to Project 001 (Week 26) (5 points)

**Sprint 13 Milestone: Handover Complete (Week 26)**
- [ ] All 220 applications production-ready for migration
- [ ] Application catalog 100% complete and accurate
- [ ] Handover documentation approved by Project 001
- [ ] Hypercare support plan established (first 30 days)

### Sprint 14-16: Continuous Improvement (Months 7-8)
**Theme**: Rationalization Phase 2, ongoing governance, and optimization

**Items**:
- Phase 2 application retirements (50 additional apps) (13 points)
- Quarterly application governance reviews (8 points)
- License optimization and vendor consolidation (8 points)
- ARM64 native version migration (ongoing) (13 points)

---

## Appendices

### Appendix A: Requirements Traceability Matrix

| Requirement | Type | User Stories/Tasks | Sprint | Status | Notes |
|-------------|------|-------------------|--------|--------|-------|
| **Business Requirements** |
| BR-001 | Business | EPIC-001 (42 points) | 1-4 | Planned | Application Portfolio Rationalization |
| BR-002 | Business | EPIC-002 (68 points) | 2-7 | Planned | Windows 11 Compatibility Certification |
| BR-003 | Business | EPIC-003 (58 points) | 4-9 | Planned | InTune Application Deployment Readiness |
| BR-004 | Business | STORY-016, TASK-INT-005 | 4-5 | Planned | Application Licensing Optimization |
| BR-005 | Business | EPIC-007 (15 points) | 1-11 | Planned | Migration Timeline Alignment |
| BR-006 | Business | EPIC-006 (32 points) | 1-8 | Planned | User Productivity Continuity |
| BR-007 | Business | EPIC-004 (45 points) | 3-6 | Planned | Application Governance and Catalog |
| BR-008 | Business | EPIC-005 (38 points) | 3-8 | Planned | Security and Compliance Posture |
| **Functional Requirements** |
| FR-001 | Functional | STORY-001 | 1 | Planned | Application Inventory Automation |
| FR-002 | Functional | STORY-002 | 1 | Planned | Application Usage Analytics |
| FR-003 | Functional | STORY-003 | 2 | Planned | Redundant Application Detection |
| FR-004 | Functional | STORY-004 | 4 | Planned | Vendor Compatibility Database Integration |
| FR-005 | Functional | STORY-005 | 2 | Planned | Windows 11 Test Environment Provisioning |
| FR-006 | Functional | STORY-006 | 3 | Planned | Application Compatibility Test Plan |
| FR-007 | Functional | STORY-007 | 5 | Planned | InTune Win32 App Package Creation |
| FR-008 | Functional | STORY-008 | 6 | Planned | Silent Install Parameter Discovery |
| FR-009 | Functional | STORY-009 | 6 | Planned | InTune Application Dependency Management |
| FR-010 | Functional | STORY-010 | 7 | Planned | Application Deployment Testing |
| FR-011 | Functional | STORY-011 | 6 | Planned | Application Catalog CMDB Integration |
| FR-012 | Functional | STORY-012 | 3 | Planned | Application Retirement Workflow |
| FR-013 | Functional | STORY-013 | 3 | Planned | Vendor Engagement Tracking |
| FR-014 | Functional | STORY-014 | 7 | Planned | ARM64 Compatibility Testing (Copilot+ PCs) |
| FR-015 | Functional | STORY-015 | 4 | Planned | Application Security Vulnerability Scanning |
| FR-016 | Functional | STORY-016 | 4 | Planned | Application License Usage Monitoring |
| FR-017 | Functional | STORY-017 | 8 | Planned | Application Change Communication |
| FR-018 | Functional | STORY-018 | 4 | Planned | Application Catalog Dashboard |
| FR-019 | Functional | STORY-019 | 3 | Planned | Application Testing Evidence Collection |
| FR-020 | Functional | STORY-020 | 8 | Planned | Application Rollback Capability |
| **Non-Functional Requirements** |
| NFR-P-001 | Performance | TASK-NFR-P-001 | 2 | Planned | Application Inventory Scan Performance |
| NFR-P-002 | Performance | TASK-NFR-P-002 | 7 | Planned | InTune Deployment Performance |
| NFR-A-001 | Availability | TASK-NFR-A-001 | 5 | Planned | Application Catalog Availability |
| NFR-A-002 | Availability | TASK-NFR-A-002 | 2 | Planned | InTune Service Dependency |
| NFR-S-001 | Scalability | TASK-NFR-S-001 | 6 | Planned | Application Catalog Scaling |
| NFR-SEC-001 | Security | TASK-NFR-SEC-001 | 8 | Planned | Application Package Integrity |
| NFR-SEC-002 | Security | TASK-NFR-SEC-002 | 8 | Planned | Application Catalog Access Control |
| NFR-SEC-003 | Security | TASK-NFR-SEC-003 | 4 | Planned | Application Vulnerability Management |
| NFR-C-001 | Compliance | TASK-NFR-C-001 | 8 | Planned | Application Licensing Compliance |
| NFR-C-002 | Compliance | TASK-NFR-C-002 | 5 | Planned | Application Governance Audit Trail |
| NFR-U-001 | Usability | TASK-NFR-U-001 | 3 | Planned | Application Catalog User Experience |
| **Integration Requirements** |
| INT-001 | Integration | TASK-INT-001 | 5 | Planned | Integration with Microsoft InTune |
| INT-002 | Integration | TASK-INT-002 | 8 | Planned | Integration with Configuration Manager |
| INT-003 | Integration | TASK-INT-003 | 6 | Planned | Integration with ServiceNow CMDB |
| INT-004 | Integration | TASK-INT-004 | 6 | Planned | Integration with Microsoft App Assure |
| INT-005 | Integration | TASK-INT-005 | 5 | Planned | Integration with Procurement/License Mgmt |
| **Data Requirements** |
| DR-001 | Data | TASK-DR-001 | 1 | Planned | Application Entity Schema |
| DR-002 | Data | TASK-DR-002 | 1 | Planned | ApplicationTest Entity Schema |
| DR-003 | Data | TASK-DR-003 | 1 | Planned | ApplicationDeployment Entity Schema |

**Coverage Summary**:
- Total Requirements: 45 (8 BR + 20 FR + 11 NFR + 5 INT + 3 DR = 47, but 2 consolidated)
- Mapped to Stories/Tasks: 45 (100%)
- Scheduled in Sprints 1-8: 38 (84%)
- Scheduled in Future Sprints 9-13: 7 (16%)

---

### Appendix B: Dependency Graph

```
Sprint 1 (Foundation)
  ├─ STORY-001: Application Inventory
  │    ↓ (blocks)
  │  Sprint 2: STORY-003 (needs inventory data)
  │  Sprint 2: STORY-005 (needs app count for VDI sizing)
  │  Sprint 3: STORY-006 (needs app list for test planning)
  │
  ├─ STORY-002: Usage Analytics
  │    ↓ (blocks)
  │  Sprint 2: STORY-003 (redundancy detection needs usage data)
  │  Sprint 3: STORY-012 (retirement workflow needs <5% adoption data)
  │
  └─ TASK-DR-001/002/003: Database Schema
       ↓ (blocks)
     All future work (database must exist)

Sprint 2 (Rationalization Planning)
  ├─ STORY-003: Redundancy Detection
  │    ↓ (blocks)
  │  Sprint 3: STORY-012 (retirement decisions)
  │
  ├─ STORY-005: VDI Test Environment
  │    ↓ (blocks)
  │  Sprint 3: STORY-006 (testing requires environment)
  │  Sprint 4: STORY-015 (security scanning in VDI)
  │  Sprint 7: STORY-014 (ARM64 testing on physical devices)
  │
  └─ TASK-NFR-A-002: InTune Service Resilience
       ↓ (improves)
     All InTune API calls (error handling)

Sprint 3 (Compatibility Testing Begins)
  ├─ STORY-006: Test Plan Generation
  │    ↓ (blocks)
  │  Sprint 4: Tier 1 testing execution
  │  Sprint 6: Tier 2 testing execution
  │
  ├─ STORY-012: Retirement Workflow
  │    ↓ (enables)
  │  Sprint 4+: Phase 1 retirements (80 apps, Month 2)
  │  Sprint 9+: Phase 2 retirements (50 apps, Month 6)
  │
  └─ STORY-019: Testing Evidence Collection
       ↓ (supports)
     Sprint 4: Readiness Gate (audit trail for Tier 1 certification)

Sprint 4 (Tier 1 Testing & Security)
  ├─ STORY-004: App Assure Integration
  │    ↓ (accelerates)
  │  Sprint 6: Tier 2 testing (automated compatibility lookups)
  │
  ├─ STORY-015: Vulnerability Scanning
  │    ↓ (blocks)
  │  Sprint 5+: Packaging deployment (critical CVEs block deployment)
  │
  └─ STORY-018: Catalog Dashboard
       ↓ (enables)
     Ongoing: Executive reporting, rationalization progress tracking

Sprint 5 (InTune Integration & Packaging)
  ├─ TASK-INT-001: InTune Graph API
  │    ↓ (blocks)
  │  Sprint 5+: All packaging and deployment work
  │  Sprint 7: Pilot deployment
  │
  ├─ STORY-007: Win32 Packaging
  │    ↓ (blocks)
  │  Sprint 6+: Remaining 200 apps to package
  │  Sprint 7: Pilot deployment requires packaged apps
  │
  └─ TASK-NFR-C-002: Governance Audit Trail
       ↓ (supports)
     Sprint 8+: Alpha Gate approval (audit compliance)

Sprint 6 (Tier 2 Testing & CMDB Integration)
  ├─ STORY-008: Silent Install Discovery
  │    ↓ (unblocks)
  │  Sprint 7+: Apps without documented silent switches
  │
  ├─ STORY-009: Dependency Management
  │    ↓ (blocks)
  │  Sprint 7+: Complex app deployments (e.g., .NET Framework → Main App)
  │
  └─ STORY-011: CMDB Integration
       ↓ (enables)
     Sprint 8+: Governance reporting, application lifecycle tracking

Sprint 7 (Pilot Deployment Testing)
  ├─ STORY-010: Pilot Testing
  │    ↓ (validates)
  │  Sprint 8: Production readiness (>95% success rate required)
  │  Sprint 9: Alpha Gate approval
  │
  └─ STORY-014: ARM64 Testing
       ↓ (certifies)
     Sprint 8+: Copilot+ PC deployment (30% of devices in Year 1)

Sprint 8 (Production Readiness)
  ├─ STORY-020: Rollback Capability
  │    ↓ (safety net)
  │  Sprint 9+: Production deployment (24-hour RTO if issues)
  │
  └─ STORY-017: Change Communications
       ↓ (prepares)
     Sprint 9+: User readiness for retirements and upgrades
```

---

### Appendix C: Epic Overview

| Epic ID | Epic Name | Priority | Stories | Points | Sprints | Status | Dependencies |
|---------|-----------|----------|---------|--------|---------|--------|--------------|
| EPIC-001 | Application Portfolio Rationalization | Must Have | 9 | 42 | 1-4 | Planned | None |
| EPIC-002 | Windows 11 Compatibility Certification | Must Have | 10 | 68 | 2-7 | Planned | EPIC-001 |
| EPIC-003 | InTune Application Deployment Readiness | Must Have | 9 | 58 | 4-9 | Planned | EPIC-002 |
| EPIC-004 | Application Governance and Catalog | Should Have | 9 | 45 | 3-6 | Planned | EPIC-001 |
| EPIC-005 | Security and Compliance Posture | Must Have | 7 | 38 | 3-8 | Planned | EPIC-002, EPIC-003 |
| EPIC-006 | User Productivity Continuity | Must Have | 6 | 32 | 1-8 | Planned | EPIC-001 |
| EPIC-007 | Migration Timeline Alignment | Must Have | 5 milestones | 15 | 1-11 | Planned | All epics |
| EPIC-008 | Infrastructure and Integration | Must Have | 6 (shared) | 10 | 1-4 | Planned | None |

**Total**: 8 epics, 45+ stories/tasks, 308 story points

---

### Appendix D: Definition of Done

Every story must meet these criteria before marking "Done":

#### Code Quality
- [ ] Code reviewed by IT Operations Manager or Lead IT Packager
- [ ] No merge conflicts (if using version control for scripts)
- [ ] Follows organizational scripting standards (PowerShell style guide)
- [ ] No hardcoded credentials (use Azure Key Vault or environment variables)

#### Testing
- [ ] Unit tests written for PowerShell scripts (Pester framework)
- [ ] Integration tests completed for InTune API calls
- [ ] Manual testing completed by IT Packager
- [ ] Acceptance criteria verified and signed off by IT Operations Director

#### Security
- [ ] Security scan passed for application packages (no critical vulnerabilities)
- [ ] OWASP Top 10 checks completed for web-based catalog
- [ ] Secrets not hardcoded (use Azure AD service principal for API auth)
- [ ] Package integrity validated (malware scan, digital signature verification)

#### Performance
- [ ] Performance tested (meets NFR thresholds):
  - Inventory scan completes <24 hours
  - Deployment to 50 devices completes <2 hours
  - Application catalog responds <2 seconds
- [ ] No N+1 query issues in database queries
- [ ] InTune API calls optimized (retry with exponential backoff)

#### Compliance
- [ ] GDPR requirements met (owner_email, tester_email anonymization plan)
- [ ] ISO 27001 audit trail in place (7-year retention for retired apps)
- [ ] Application licensing compliance verified (no over-deployment)

#### Documentation
- [ ] Application catalog entry updated (compatibility status, deployment method)
- [ ] Testing evidence stored in SharePoint (screenshots, logs, test results)
- [ ] Runbook updated for IT Operations (deployment procedures)
- [ ] Knowledge base articles created for Helpdesk (application changes)

#### Deployment
- [ ] Deployed to dev environment (VDI test environment)
- [ ] Deployed to staging environment (pilot device group)
- [ ] Database migrations tested (PostgreSQL schema changes)
- [ ] Configuration updated in all environments (InTune app assignments)

#### Stakeholder
- [ ] Demoed to IT Operations Director at sprint review
- [ ] Acceptance criteria validated by Application Owner (for Tier 1 apps)
- [ ] User feedback incorporated (if pilot testing completed)

---

### Appendix E: Definition of Ready

Stories must meet these criteria before sprint planning:

#### Story Clarity
- [ ] User story follows GDS format: "As a... I want... So that..."
- [ ] Acceptance criteria are measurable and testable ("It's done when...")
- [ ] Story points estimated by team (planning poker)
- [ ] Story is not too large (maximum 13 points, break down if larger)

#### Dependencies
- [ ] All dependencies identified and documented
- [ ] Blocking dependencies resolved or scheduled for earlier sprint
- [ ] Required infrastructure available (VDI, InTune API, database)

#### Requirements
- [ ] Linked to business requirement (BR-xxx) or functional requirement (FR-xxx)
- [ ] Acceptance criteria validated by Product Owner (IT Operations Director)
- [ ] Application tier classification documented (Tier 1/2/3)
- [ ] Vendor engagement status known (if vendor-dependent)

#### Team Capacity
- [ ] Team has skills to complete story (IT Packagers trained on tools)
- [ ] Team has capacity in sprint (not overloaded)
- [ ] Required team members available (Application Owner for UAT)

---

### Appendix F: Risk and Assumptions

**Key Assumptions**:
1. Microsoft InTune Graph API remains stable (99.9% SLA)
2. Application Owners respond to UAT requests within 5 business days
3. Vendor compatibility statements available for 70-80% of applications
4. Team velocity stabilizes at 20 points/sprint after Sprint 2 (learning curve)
5. Windows 11 VDI environment available by Week 2 (Sprint 2)
6. Copilot+ PC test devices procured by Week 4 (Sprint 2)
7. Juriba Assessment and Advanced Installer deployed by Week 10 (Sprint 5)

**Key Risks** (from requirements.md):
- **R-001**: Vendor Windows 11 compatibility statements unavailable (20-30% of apps)
  - Mitigation: Engage vendors early, use Microsoft App Assure, prioritize high-usage apps
- **R-007**: Compatibility testing extends beyond Month 3, delays migration pilot
  - Mitigation: Parallelize testing (hire 2 temp contractors), prioritize Tier 1, Microsoft App Assure fast-track
- **R-005**: Silent install parameter discovery fails (10-15% of apps)
  - Mitigation: Use repackaging tools (Advanced Installer), engage vendors, fallback to user-context installations

---

## Backlog Metrics Dashboard

### Sprint Velocity Tracking

| Sprint | Planned | Completed | Velocity | Variance | Notes |
|--------|---------|-----------|----------|----------|-------|
| 1 | 20 | TBD | TBD | TBD | Foundation sprint |
| 2 | 20 | TBD | TBD | TBD | Discovery Gate (Week 4) |
| 3 | 20 | TBD | TBD | TBD | Tier 1 testing begins |
| 4 | 18 | TBD | TBD | TBD | Readiness Gate (Week 8) |
| 5 | 20 | TBD | TBD | TBD | Procurement Gate (Week 10) |
| 6 | 21 | TBD | TBD | TBD | Tier 2 testing complete |
| 7 | 21 | TBD | TBD | TBD | Pilot deployment |
| 8 | 19 | TBD | TBD | TBD | Alpha Gate (Week 18) |

**Target Average Velocity**: 20 points/sprint
**Actual Average Velocity**: TBD (update after Sprint 2)

### Requirements Coverage

- **Total Requirements**: 45
- **Mapped to Stories**: 45 (100%)
- **Completed**: 0 (0%)
- **In Progress**: 0 (0%)
- **Blocked**: 0 (0%)

### Application Portfolio Progress

| Metric | Baseline | Target | Current | % Complete |
|--------|----------|--------|---------|------------|
| Total Applications | 350 | 220 | 350 | 0% |
| Applications Retired | 0 | 130 | 0 | 0% |
| Tier 1 Compatibility Certified | 0 | 66 (100%) | 0 | 0% |
| Tier 2 Compatibility Certified | 0 | 120 (95%) | 0 | 0% |
| Applications Packaged for InTune | 0 | 220 (100%) | 0 | 0% |
| Pilot Deployment Success Rate | N/A | >95% | N/A | N/A |
| Annual License Savings | £0 | £200K+ | £0 | 0% |

---

## Notes for Implementation

### Tools and Technologies

**Application Packaging**:
- **InTune Win32 Content Prep Tool** (IntuneWinAppUtil.exe) - Convert installers to .intunewin
- **Advanced Installer** - Application repackaging tool (£4K × 2 licenses)
- **Juriba Assessment** - Application inventory enrichment (30-day trial, then procurement)

**Testing and Compatibility**:
- **Windows 11 VDI** - Azure VDI or on-premises (20-30 concurrent sessions)
- **Copilot+ PC Test Devices** - 5 Snapdragon X Elite devices (£3K each)
- **Microsoft App Assure** - Windows 11 compatibility validation (included in M365 E3/E5)

**Security and Compliance**:
- **Microsoft Defender for Endpoint** or **Qualys/Tenable** - Vulnerability scanning
- **Azure Key Vault** - Secure secrets management for API credentials

**Data and Integration**:
- **PostgreSQL** - Application Catalog database (3 entities)
- **Microsoft Graph API** - InTune integration (OAuth 2.0 authentication)
- **ServiceNow REST API** - CMDB integration (if prioritized)
- **Configuration Manager PowerShell** - Legacy inventory (transitional)

**Project Management**:
- **Azure DevOps** or **Jira** - Sprint planning and backlog management
- **Power BI** or **Tableau** - Application catalog dashboard and metrics

### Team Composition

**Core Team** (Sprints 1-13):
- **IT Operations Director** (0.25 FTE) - Product Owner, decision-maker
- **IT Operations Manager** (0.5 FTE) - Scrum Master, sprint facilitation
- **Enterprise Architect** (0.15 FTE) - Governance oversight, traceability
- **IT Application Packagers** (3 FTE) - Packaging, testing, deployment
- **Temporary Contractors** (2 FTE, Months 1-3) - Packaging capacity boost

**Extended Team** (as needed):
- **Application Owners** (15+) - UAT, compatibility decisions
- **Security Architect** (0.1 FTE) - Vulnerability review, risk acceptance
- **Change Manager** (0.25 FTE) - User communications, stakeholder engagement
- **Helpdesk Manager** (0.1 FTE) - Knowledge transfer, support readiness

**Total Capacity**: 4-6 FTE average (varies by phase)

### Integration with Project 001

**Handover Criteria** (Week 26 / Sprint 13):
1. 100% of retained applications packaged for InTune (220 apps)
2. Application catalog 100% complete and accurate
3. Tier 1 compatibility: 100% certified (66 apps)
4. Tier 2 compatibility: 95% certified (120 of 126 apps)
5. Pilot deployment success rate >95% (200 devices tested)
6. Vulnerability scanning: Zero critical CVEs in production
7. License optimization: £200K+ annual savings quantified
8. Hypercare support plan established (first 30 days post-migration)

**Critical Dependencies for Project 001**:
- **Month 2 (Sprint 4)**: Tier 1 apps ready for pilot deployment (100 users)
- **Month 3 (Sprint 6)**: Tier 2 apps ready for early adopters (500 users)
- **Month 4 (Sprint 9)**: All apps ready for production waves (6,000 users)

---

**End of Backlog**

---

**Note**: This backlog was auto-generated from Project 002 ArcKit artifacts (requirements.md v1.0, data-model.md v1.0, project-plan.md v1.0). Review and refine with your team before sprint planning begins. Story points are estimates - re-estimate based on your team's actual velocity and packaging complexity. Application-specific packaging tasks will vary significantly (simple MSI vs. complex enterprise applications).

**Next Steps**:
1. Review backlog with IT Operations Director and IT Packagers team
2. Validate story point estimates in Sprint 0 planning session
3. Confirm tool procurement timeline (Juriba, Advanced Installer)
4. Schedule Discovery Gate preparation for Week 4
5. Begin Sprint 1 on 2025-11-03 (Week 1 of project plan)
