# Business and Technical Requirements: Migration Control Centre Frontend Application

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-001-REQ-FE-v1.0 |
| **Document Type** | Business and Technical Requirements |
| **Project** | Windows 11 Migration with InTune (Project 001) |
| **Project ID** | 001 |
| **Classification** | INTERNAL |
| **Status** | DRAFT |
| **Version** | 1.0 |
| **Created Date** | 2025-11-21 |
| **Last Updated** | 2025-11-21 |
| **Owner** | IT Operations Director |
| **Author** | Enterprise Architect |
| **Reviewers** | Migration Project Manager, CISO, CIO |
| **Approvers** | IT Operations Director, CIO |
| **Distribution** | Project Team, Architecture Team, Stakeholders, Development Team |
| **Review Cycle** | Quarterly |
| **Next Review Date** | 2026-02-21 |

### Revision History

| Version | Date | Author | Changes | Approver |
|---------|------|--------|---------|----------|
| 0.1 | 2025-11-21 | Enterprise Architect | Initial draft | - |
| 1.0 | 2025-11-21 | Enterprise Architect | First release | TBD |

---

## Executive Summary

### Business Context

This document defines comprehensive business and technical requirements for the **Migration Control Centre**, a web-based frontend application that enables the migration team to manage, monitor, and control the Windows 11 migration of 6,000 devices. The application serves as the operational command centre for Project 001 (Windows 11 Migration with InTune), providing real-time visibility, wave management, device tracking, application compatibility management, cost tracking, and stakeholder reporting.

**Problem Statement**: Without a centralized control centre, the migration team would rely on manual Azure portal queries, PowerShell scripts, and spreadsheets - resulting in delayed issue detection, poor stakeholder visibility, and operational inefficiency.

**Solution**: The Migration Control Centre provides a React-based web application hosted on Azure Static Web Apps, integrated with the PostgreSQL migration database (already deployed via Terraform), enabling real-time monitoring, proactive alerting, and self-service capabilities for all stakeholder personas.

### Objectives

1. **Real-time Operational Visibility** - Enable engineers to monitor device migration status, detect failures within 5 seconds, and troubleshoot issues with detailed event timelines
2. **Stakeholder Communication** - Provide executives with high-level KPIs (success rate, budget vs actual, compliance %) and one-click PDF reports for steering committee meetings
3. **Self-Service for End Users** - Enable 6,000 end users to check their migration date, complete pre-migration checklists, and access FAQs without helpdesk involvement
4. **Operational Efficiency** - Reduce manual reporting effort by 80% through automated dashboards and eliminate spreadsheet-based wave management
5. **Application Compatibility Management** - Enable application owners to review test results, approve deployments, and track blocker issues
6. **Cost Control** - Enable CFO and IT Operations to track costs by category (hardware, licenses, professional services, training, support) against the approved budget

### Expected Outcomes

- **90%+ migration team adoption** within 2 weeks of launch (Sprint 7)
- **<2% support ticket rate** due to self-service portal for end users (addresses SD-4, SD-6)
- **80% reduction in manual reporting effort** for project managers (addresses SD-3)
- **100% stakeholder visibility** into migration progress, costs, and risks (addresses SD-1, SD-2, SD-5)
- **99.9% uptime** during migration phases (Weeks 27-74) to ensure operational continuity (addresses SD-3)
- **<2 second page load time** for all dashboards to ensure usability (addresses SD-4)
- **WCAG 2.1 AA accessibility compliance** to ensure inclusive access for all users

### Source Documents

- **Architecture Principles**: `.arckit/memory/architecture-principles.md` (18 principles)
- **Stakeholder Drivers**: `projects/001-windows-11-migration-intune/stakeholder-drivers.md` (7 stakeholders, 14 goals)
- **Frontend Application Plan**: `projects/001-windows-11-migration-intune/frontend-application-plan.md` (5 personas, 7 features, 15 user stories, technical architecture)
- **SOBC (Strategic Outline Business Case)**: `projects/001-windows-11-migration-intune/sobc.md`
- **ADR-001 (Platform Selection)**: `projects/001-windows-11-migration-intune/decisions/ADR-001-cloud-native-endpoint-management-platform-selection.md`
- **Traceability Matrix v4**: `projects/001-windows-11-migration-intune/traceability-matrix-v4.md`

---

## Stakeholders

| Stakeholder ID | Role | Stakeholder Driver | Involvement Level | Requirements Focus |
|----------------|------|-------------------|-------------------|-------------------|
| SD-1 | CISO | Eliminate Windows 10 EOL Security Risk | HIGH | Zero Trust compliance dashboard, security posture visibility |
| SD-2 | CFO | Reduce IT Infrastructure Costs | HIGH | Cost tracking, budget vs actual, fiscal year reporting |
| SD-3 | IT Operations Director | Execute Risk-Free Migration | CRITICAL | Real-time device monitoring, failure alerting, wave management |
| SD-4 | End Users (6,000 employees) | Don't Break My Work | HIGH | Self-service portal, migration date visibility, pre-migration checklist |
| SD-5 | CIO | Deliver Strategic Modernization | HIGH | Executive dashboard, migration velocity, one-click reports |
| SD-6 | Helpdesk Manager | Avoid Support Ticket Tsunami | MEDIUM | FAQ management, self-service capabilities, support contact integration |
| SD-7 | Enterprise Architect | Establish Governance Excellence | MEDIUM | Traceability, compliance reporting, architecture alignment |

---

## Business Requirements (BR)

### BR-FE-001: Real-time Migration Visibility

**Description**: The system must provide real-time visibility into migration progress, device status, and failure events to enable proactive issue resolution.

**Business Justification**: Without real-time visibility, the migration team would detect failures reactively (hours or days late), leading to missed SLAs, stakeholder escalations, and increased rollback rates. Real-time visibility addresses SD-3 (IT Operations Director - Execute Risk-Free Migration) and SD-5 (CIO - Deliver Strategic Modernization).

**Stakeholder Drivers**: SD-3 (CRITICAL), SD-5 (HIGH)

**Architecture Principles**: Principle 10 (Monitoring, Reporting, and Compliance)

**Success Criteria**:
- Migration team detects failures within 5 seconds of occurrence (99.9% of events)
- Dashboard updates reflect database changes within 5 seconds via WebSocket
- 90%+ migration team adoption within 2 weeks of launch

**Priority**: CRITICAL

---

### BR-FE-002: Operational Efficiency for Engineers

**Description**: The system must reduce manual reporting effort by 80% and eliminate spreadsheet-based wave management through automated dashboards and wave orchestration.

**Business Justification**: Manual reporting consumes 8-10 hours per week per project manager (cost: £500-600/week). Automated dashboards free up 80% of this effort, enabling engineers to focus on issue resolution instead of data collection. Addresses SD-3 (IT Operations Director) and SD-6 (Helpdesk Manager).

**Stakeholder Drivers**: SD-3 (CRITICAL), SD-6 (MEDIUM)

**Architecture Principles**: Principle 10 (Monitoring, Reporting, and Compliance)

**Success Criteria**:
- Project managers spend <2 hours/week on manual reporting (down from 8-10 hours)
- Wave creation/management takes <10 minutes (down from 30-60 minutes with spreadsheets)
- 100% of migration waves managed via the application (no spreadsheets)

**Priority**: HIGH

---

### BR-FE-003: Executive Stakeholder Communication

**Description**: The system must provide executive stakeholders (CISO, CFO, CIO) with high-level KPIs, trend charts, and one-click PDF reports for steering committee meetings.

**Business Justification**: Executives need simplified views without technical details. Current manual report generation takes 4-6 hours before steering committee meetings. One-click reports save 4-6 hours per meeting (12 meetings over 18 months = 48-72 hours saved). Addresses SD-1 (CISO), SD-2 (CFO), SD-5 (CIO).

**Stakeholder Drivers**: SD-1 (HIGH), SD-2 (HIGH), SD-5 (HIGH)

**Architecture Principles**: Principle 10 (Monitoring, Reporting, and Compliance)

**Success Criteria**:
- Executive dashboard shows 6-8 high-level KPIs (success rate, budget %, compliance %, migration velocity)
- One-click PDF report generation takes <10 seconds
- Reports include trend charts (last 30 days) for steering committee context

**Priority**: HIGH

---

### BR-FE-004: End User Self-Service Capabilities

**Description**: The system must enable 6,000 end users to check their migration date, complete pre-migration checklists, and access FAQs without helpdesk involvement.

**Business Justification**: Without self-service, end users would flood helpdesk with routine questions ("When is my migration?", "What should I back up?"), generating 1,200-1,800 tickets (20-30% of users × 6,000). Self-service reduces support tickets by 60-80% (addresses SD-4, SD-6). Each avoided ticket saves £15-20 in helpdesk time (estimated savings: £18,000-28,800).

**Stakeholder Drivers**: SD-4 (HIGH), SD-6 (MEDIUM)

**Architecture Principles**: Principle 4 (User-Centric Migration Experience)

**Success Criteria**:
- 80%+ end users access self-service portal before their migration date
- <2% support ticket rate (target: 120 tickets or fewer for 6,000 users)
- >80% user satisfaction with self-service capabilities

**Priority**: HIGH

---

### BR-FE-005: Compliance and Audit Reporting

**Description**: The system must provide compliance dashboards, audit trails, and traceability reports for governance and regulatory purposes.

**Business Justification**: Windows 10 reaches EOL in October 2025, creating compliance risk. CISO needs real-time Zero Trust compliance % to assess security posture. Enterprise Architect needs traceability for governance reviews. Addresses SD-1 (CISO - Eliminate Windows 10 EOL Security Risk) and SD-7 (Enterprise Architect - Establish Governance Excellence).

**Stakeholder Drivers**: SD-1 (HIGH), SD-7 (MEDIUM)

**Architecture Principles**: Principle 2 (Zero Trust Security Model), Principle 10 (Monitoring, Reporting, and Compliance)

**Success Criteria**:
- Real-time Zero Trust compliance % displayed on executive dashboard
- Audit trail captures all wave changes, device reassignments, and cost updates
- Compliance reports show TPM 2.0, BitLocker, MFA, Defender EDR status per device

**Priority**: HIGH

---

### BR-FE-006: Cost Tracking and Budget Control

**Description**: The system must enable CFO and IT Operations to track costs by category (hardware, licenses, professional services, training, support) against the approved budget and forecast remaining costs.

**Business Justification**: CFO's primary driver (SD-2) is reducing IT infrastructure costs. Without cost tracking, the project risks budget overruns (estimated budget: £500K-800K). Real-time budget vs actual enables proactive corrective action before exceeding approved spend.

**Stakeholder Drivers**: SD-2 (HIGH), SD-3 (CRITICAL)

**Architecture Principles**: Principle 10 (Monitoring, Reporting, and Compliance)

**Success Criteria**:
- Cost tracking dashboard shows budget vs actual by category with variance %
- Forecast remaining costs based on current burn rate and remaining devices
- Alert CFO when any category exceeds 90% of allocated budget

**Priority**: HIGH

---

### BR-FE-007: Application Compatibility Management

**Description**: The system must enable application owners to review compatibility test results, approve applications for deployment, and track blocker issues.

**Business Justification**: All business-critical applications must be tested before migration (Principle 5: Application Compatibility and Testing). Without approval workflow, untested applications could be deployed, causing user productivity loss and increased rollback rates. Addresses SD-3 (IT Operations Director - Execute Risk-Free Migration) and SD-4 (End Users - Don't Break My Work).

**Stakeholder Drivers**: SD-3 (CRITICAL), SD-4 (HIGH)

**Architecture Principles**: Principle 5 (Application Compatibility and Testing)

**Success Criteria**:
- 100% of business-critical applications approved before inclusion in migration waves
- Application owners can document blocker issues and remediation plans
- Dashboard shows % of applications approved (target: 90%+ before Wave 1)

**Priority**: HIGH

---

### BR-FE-008: High User Adoption and Usability

**Description**: The system must achieve 90%+ migration team adoption within 2 weeks of launch through intuitive design, fast performance (<2s page load), and mobile responsiveness.

**Business Justification**: Low adoption would force team to continue using manual processes (Azure portal, PowerShell, spreadsheets), negating all benefits of the application. Fast performance and mobile support enable engineers to monitor migrations from tablets in the field.

**Stakeholder Drivers**: SD-3 (CRITICAL), SD-4 (HIGH)

**Architecture Principles**: Principle 4 (User-Centric Migration Experience)

**Success Criteria**:
- 90%+ of migration team uses application daily within 2 weeks of launch
- <2 second page load time for all dashboards (p95)
- Mobile-responsive design works on tablets (1024×768 or larger)
- >80% user satisfaction score (post-launch survey)

**Priority**: HIGH

---

## Functional Requirements (FR)

### Feature 1: Real-time Migration Dashboard

#### FR-FE-001: KPI Cards

**Description**: The dashboard must display 6-8 KPI cards showing key migration metrics updated in real-time.

**User Story**: US-FE-001 - As a PM, I want to see overall migration progress so I can report to the steering committee.

**Acceptance Criteria**:
- KPI cards display: Total Devices (6,000), Migrated (count + %), In Progress (count + %), Failed (count + %), Average Downtime (minutes), Success Rate (%), Budget Spent (% of total), Zero Trust Compliance (%)
- Cards update in real-time via WebSocket when MIGRATION_EVENT or COST_TRACKING tables change
- Cards use color coding (green ≥90%, yellow 70-89%, red <70%) for quick assessment
- Cards are clickable to drill down to detailed views

**Linked Requirements**: BR-FE-001 (Real-time Visibility), NFR-FE-P-003 (Real-time updates <5s)

**Priority**: CRITICAL

---

#### FR-FE-002: Wave Progress Chart

**Description**: The dashboard must display a horizontal bar chart showing progress for each migration wave (Pilot, Early Adopter, Production 1-4).

**User Story**: US-FE-001 - As a PM, I want to see overall migration progress so I can report to the steering committee.

**Acceptance Criteria**:
- Chart displays all active waves with stacked bars (Completed = green, In Progress = blue, Failed = red, Not Started = gray)
- Chart updates in real-time via WebSocket
- Clicking a wave bar navigates to Wave Detail view
- Chart includes wave labels (e.g., "Pilot (300 devices)", "Production 1 (1,200 devices)")

**Linked Requirements**: BR-FE-001 (Real-time Visibility), BR-FE-002 (Operational Efficiency)

**Priority**: HIGH

---

#### FR-FE-003: Recent Migration Events

**Description**: The dashboard must display the 20 most recent migration events (success, failure, in-progress) with timestamps and device names.

**User Story**: US-FE-006 - As an engineer, I want real-time alerts for failures so I can respond immediately.

**Acceptance Criteria**:
- Table displays: Device Name, Event Type (Pre-Check, Autopilot, OneDrive Sync, App Install, Post-Validation), Status (Success, Failed, In Progress), Timestamp, Wave Name
- Table updates in real-time via WebSocket when new events occur
- Failed events highlighted in red with alert icon
- Clicking a device name navigates to Device Detail view
- Table is sortable by timestamp (default: newest first)

**Linked Requirements**: BR-FE-001 (Real-time Visibility), NFR-FE-P-003 (Real-time updates <5s)

**Priority**: HIGH

---

#### FR-FE-004: Cost Tracker Widget

**Description**: The dashboard must display a cost tracker widget showing budget vs actual by category (hardware, licenses, professional services, training, support).

**User Story**: US-FE-003 - As a PM, I want to track costs by category so I can stay within budget.

**Acceptance Criteria**:
- Widget displays: Total Budget (£), Total Spent (£ + % of budget), Remaining (£), Forecast to Complete (£)
- Widget includes a horizontal bar chart showing budget vs actual by category (5 categories)
- Overbudget categories highlighted in red with alert icon
- Clicking the widget navigates to Cost Tracking page
- Widget updates when COST_TRACKING table changes

**Linked Requirements**: BR-FE-006 (Cost Tracking and Budget Control)

**Priority**: HIGH

---

#### FR-FE-005: Alert Notifications

**Description**: The dashboard must display alert notifications for critical events (migration failures, budget overruns, compliance violations).

**User Story**: US-FE-006 - As an engineer, I want real-time alerts for failures so I can respond immediately.

**Acceptance Criteria**:
- Alert banner appears at top of dashboard when critical events occur
- Alert types: Migration Failure (device failed ≥3 times), Budget Overrun (category >90% of budget), Compliance Violation (device fails Zero Trust check)
- Alerts include: Severity (Critical, Warning, Info), Message, Timestamp, Dismiss button
- Alerts persist until dismissed by user
- Alerts delivered via WebSocket for real-time notification

**Linked Requirements**: BR-FE-001 (Real-time Visibility), NFR-FE-P-003 (Real-time updates <5s)

**Priority**: HIGH

---

### Feature 2: Wave Management

#### FR-FE-006: Create Migration Wave

**Description**: Project managers must be able to create new migration waves with name, type (Pilot, Early Adopter, Production), scheduled start date, and target device count.

**User Story**: US-FE-002 - As a PM, I want to create migration waves so I can schedule device deployments.

**Acceptance Criteria**:
- Create Wave form includes fields: Wave Name (required, max 100 chars), Wave Type (dropdown: Pilot, Early Adopter, Production 1-4), Scheduled Start Date (date picker), Scheduled End Date (date picker), Target Device Count (integer, max 6,000), Description (optional, max 500 chars)
- Form validation: Start Date ≥ Today, End Date ≥ Start Date, Target Device Count > 0
- Clicking "Create Wave" inserts row into MIGRATION_WAVE table and displays success message
- After creation, user redirected to Wave Detail view

**Linked Requirements**: BR-FE-002 (Operational Efficiency), INT-FE-001 (PostgreSQL integration)

**Priority**: HIGH

---

#### FR-FE-007: Edit Migration Wave

**Description**: Project managers must be able to edit existing migration waves (name, dates, target device count) unless the wave has started.

**User Story**: US-FE-002 - As a PM, I want to create migration waves so I can schedule device deployments.

**Acceptance Criteria**:
- Edit Wave form pre-populated with existing values from MIGRATION_WAVE table
- If wave status = "In Progress" or "Completed", only Description field is editable (dates/name/target count locked)
- If wave status = "Not Started", all fields editable
- Form validation: Same rules as Create Wave
- Clicking "Save Changes" updates MIGRATION_WAVE table and logs change to audit trail

**Linked Requirements**: BR-FE-002 (Operational Efficiency), BR-FE-005 (Compliance and Audit Reporting)

**Priority**: MEDIUM

---

#### FR-FE-008: Gantt Timeline View

**Description**: The wave management page must display a Gantt chart showing all waves on a timeline with start/end dates, overlaps, and current date marker.

**User Story**: US-FE-002 - As a PM, I want to create migration waves so I can schedule device deployments.

**Acceptance Criteria**:
- Gantt chart displays all waves as horizontal bars on a timeline (X-axis = dates, Y-axis = wave names)
- Current date marked with vertical red line ("Today")
- Wave bars color-coded by status (gray = Not Started, blue = In Progress, green = Completed, red = Failed)
- Hovering over wave bar displays tooltip with: Wave Name, Scheduled Start/End, Target Device Count, Actual Device Count (if started)
- Chart is zoomable (Week, Month, Quarter views)

**Linked Requirements**: BR-FE-002 (Operational Efficiency)

**Priority**: MEDIUM

---

#### FR-FE-009: Assign Devices to Wave

**Description**: Project managers must be able to assign devices to migration waves by uploading a CSV file (Device ID, Wave ID) or using a device selector.

**User Story**: US-FE-002 - As a PM, I want to create migration waves so I can schedule device deployments.

**Acceptance Criteria**:
- Device assignment UI offers 2 options: Bulk Upload (CSV file) or Manual Selection (device picker)
- CSV upload validates: Device ID exists, Wave ID exists, Device not already assigned to another wave
- Manual selection allows filtering devices by department, location, hardware model
- Clicking "Assign Devices" updates MIGRATION_EVENT table with wave_id foreign key
- After assignment, Wave Detail view shows updated device count

**Linked Requirements**: BR-FE-002 (Operational Efficiency), INT-FE-001 (PostgreSQL integration)

**Priority**: HIGH

---

#### FR-FE-010: Start/Pause/Resume Wave

**Description**: Project managers must be able to start, pause, or resume migration waves to control rollout pace.

**User Story**: US-FE-002 - As a PM, I want to create migration waves so I can schedule device deployments.

**Acceptance Criteria**:
- Wave Detail view includes action buttons: Start Wave (if status = Not Started), Pause Wave (if status = In Progress), Resume Wave (if status = Paused)
- Clicking "Start Wave" updates wave status to "In Progress", sets actual_start_date to current timestamp
- Clicking "Pause Wave" stops new device migrations in this wave (in-progress devices continue), updates status to "Paused"
- Clicking "Resume Wave" updates status back to "In Progress"
- All status changes logged to audit trail

**Linked Requirements**: BR-FE-002 (Operational Efficiency), BR-FE-005 (Compliance and Audit Reporting)

**Priority**: HIGH

---

### Feature 3: Device Tracking

#### FR-FE-011: Search and Filter Devices

**Description**: Engineers must be able to search devices by Device ID, hostname, or user name, and filter by wave, status, department, or location.

**User Story**: US-FE-004 - As an engineer, I want to view device migration timeline so I can troubleshoot failures.

**Acceptance Criteria**:
- Search bar accepts: Device ID (exact match), Hostname (partial match), User Name (partial match)
- Filter dropdowns: Wave (all waves + "Unassigned"), Status (Not Started, In Progress, Completed, Failed), Department (from device metadata), Location (from device metadata)
- Search and filters applied with logical AND (e.g., Wave = Pilot AND Status = Failed)
- Results displayed in paginated table (100 rows per page, sortable by any column)
- Search/filter applied via API call (backend filtering, not client-side)

**Linked Requirements**: BR-FE-001 (Real-time Visibility), NFR-FE-S-001 (Pagination for 6,000 devices)

**Priority**: HIGH

---

#### FR-FE-012: Device Detail View

**Description**: Engineers must be able to view detailed information for a single device, including migration status, event timeline, compliance checks, and assigned wave.

**User Story**: US-FE-004 - As an engineer, I want to view device migration timeline so I can troubleshoot failures.

**Acceptance Criteria**:
- Device Detail page displays: Device ID, Hostname, User Name, Department, Location, Hardware Model, Current OS Version, Target OS Version, Assigned Wave, Migration Status, Last Event Timestamp
- Page includes a collapsible section for Zero Trust compliance checks: TPM 2.0 (pass/fail), BitLocker (pass/fail), MFA Enrolled (pass/fail), Defender EDR Onboarded (pass/fail)
- Page includes event timeline (see FR-FE-013)
- Page includes action buttons: Retry Migration (if status = Failed), Reassign to Wave (if status = Not Started or Failed)

**Linked Requirements**: BR-FE-001 (Real-time Visibility), BR-FE-005 (Compliance and Audit Reporting)

**Priority**: HIGH

---

#### FR-FE-013: Device Event Timeline

**Description**: The device detail page must display a chronological timeline of all migration events (Pre-Check, Autopilot, OneDrive Sync, App Install, Post-Validation) with timestamps, statuses, and error messages.

**User Story**: US-FE-004 - As an engineer, I want to view device migration timeline so I can troubleshoot failures.

**Acceptance Criteria**:
- Timeline displays events in chronological order (newest first) with: Event Type, Event Timestamp, Status (Success, Failed, In Progress), Duration (minutes), Downtime (minutes, if applicable), Error Message (if failed)
- Failed events highlighted in red with expandable error details
- Timeline is filterable by event type (e.g., show only App Install events)
- Timeline data fetched from MIGRATION_EVENT table via API

**Linked Requirements**: BR-FE-001 (Real-time Visibility), INT-FE-001 (PostgreSQL integration)

**Priority**: HIGH

---

#### FR-FE-014: Retry Failed Migration

**Description**: Engineers must be able to retry failed device migrations from the device detail page.

**User Story**: US-FE-005 - As an engineer, I want to retry failed migrations so I can resolve issues quickly.

**Acceptance Criteria**:
- "Retry Migration" button displayed on device detail page if device status = Failed
- Clicking "Retry Migration" triggers backend API call to initiate new migration attempt
- After retry initiated, device status changes to "In Progress" and new event row inserted into MIGRATION_EVENT table
- User sees confirmation message: "Migration retry initiated for [Device ID]"
- If device has failed ≥3 times, display warning modal before retry: "This device has failed 3+ times. Review error logs before retrying."

**Linked Requirements**: BR-FE-002 (Operational Efficiency), INT-FE-001 (PostgreSQL integration)

**Priority**: HIGH

---

#### FR-FE-015: Reassign Device to Wave

**Description**: Engineers must be able to reassign devices to different migration waves (e.g., move from Production 1 to Production 2 due to app blocker).

**User Story**: US-FE-005 - As an engineer, I want to retry failed migrations so I can resolve issues quickly.

**Acceptance Criteria**:
- "Reassign to Wave" button displayed on device detail page if device status = Not Started or Failed
- Clicking button opens modal with wave dropdown (all waves + "Unassigned")
- Selecting new wave and clicking "Reassign" updates MIGRATION_EVENT.migration_wave_id foreign key
- Reassignment logged to audit trail with: Device ID, Old Wave, New Wave, Timestamp, User
- After reassignment, device detail page shows updated wave name

**Linked Requirements**: BR-FE-002 (Operational Efficiency), BR-FE-005 (Compliance and Audit Reporting)

**Priority**: MEDIUM

---

#### FR-FE-016: Bulk Device Operations

**Description**: Engineers must be able to perform bulk operations (retry, reassign, export) on multiple devices selected via checkboxes.

**User Story**: US-FE-005 - As an engineer, I want to retry failed migrations so I can resolve issues quickly.

**Acceptance Criteria**:
- Device list table includes checkbox column for multi-select
- Bulk action toolbar appears when ≥1 devices selected with buttons: Bulk Retry (if all selected devices failed), Bulk Reassign (if all selected devices not started or failed), Export to CSV
- Clicking "Bulk Retry" triggers retry for all selected devices (max 50 devices per operation)
- Clicking "Bulk Reassign" opens modal to select target wave
- Clicking "Export to CSV" downloads CSV with all selected device details
- Confirmation modal displayed before bulk operations: "You are about to retry [N] devices. Confirm?"

**Linked Requirements**: BR-FE-002 (Operational Efficiency)

**Priority**: MEDIUM

---

### Feature 4: Application Compatibility Management

#### FR-FE-017: Application Test Results Dashboard

**Description**: Application owners must be able to view test results for all applications on Windows 11, including test status (Not Tested, Pass, Fail, Blocked), application owner, and last test date.

**User Story**: US-FE-010 - As an app owner, I want to see my app test results so I can decide if it's safe to deploy.

**Acceptance Criteria**:
- Dashboard displays table with: Application Name, Application Owner, Test Status (Not Tested, Pass, Fail, Blocked), Test Date, Tester Name, Remediation Plan (if Fail/Blocked), Approved for Deployment (yes/no)
- Table is filterable by Test Status and Application Owner (user can filter to "My Apps")
- Table is sortable by any column
- Clicking an application name navigates to Application Detail view

**Linked Requirements**: BR-FE-007 (Application Compatibility Management), INT-FE-001 (PostgreSQL integration)

**Priority**: HIGH

---

#### FR-FE-018: Application Approval Workflow

**Description**: Application owners must be able to approve applications for deployment after reviewing test results.

**User Story**: US-FE-011 - As an app owner, I want to approve apps for deployment so I can control rollout.

**Acceptance Criteria**:
- Application Detail page includes "Approve for Deployment" button if: Test Status = Pass AND Approved for Deployment = No
- Clicking "Approve for Deployment" opens modal prompting for approval notes (optional, max 500 chars)
- Clicking "Confirm Approval" updates APP_COMPATIBILITY_TEST.approved_for_deployment = true, APP_COMPATIBILITY_TEST.approved_by = current user, APP_COMPATIBILITY_TEST.approval_date = current timestamp
- After approval, application badge changes to "Approved" (green) on dashboard
- Approval logged to audit trail

**Linked Requirements**: BR-FE-007 (Application Compatibility Management), BR-FE-005 (Compliance and Audit Reporting)

**Priority**: HIGH

---

#### FR-FE-019: Document Blocker Issues

**Description**: Application owners and engineers must be able to document blocker issues for failed applications, including issue description, severity, and remediation plan.

**User Story**: US-FE-012 - As an app owner, I want to document blocker issues so the team can prioritize fixes.

**Acceptance Criteria**:
- Application Detail page includes "Document Blocker" button if Test Status = Fail or Blocked
- Clicking button opens form with fields: Issue Description (required, max 1,000 chars), Severity (dropdown: Critical, High, Medium, Low), Remediation Plan (required, max 1,000 chars), Estimated Fix Date (date picker, optional)
- Clicking "Save Blocker" updates APP_COMPATIBILITY_TEST.remediation_plan and related fields
- Blocker issues displayed on Application Test Results Dashboard with red alert icon for Critical severity

**Linked Requirements**: BR-FE-007 (Application Compatibility Management), INT-FE-001 (PostgreSQL integration)

**Priority**: MEDIUM

---

#### FR-FE-020: Application Compatibility Summary

**Description**: The application compatibility page must display a summary widget showing % of applications tested, % passed, % failed, and % approved for deployment.

**User Story**: US-FE-010 - As an app owner, I want to see my app test results so I can decide if it's safe to deploy.

**Acceptance Criteria**:
- Summary widget displays 4 KPI cards: Total Applications (count), Tested (count + % of total), Passed (count + % of tested), Approved for Deployment (count + % of total)
- Widget includes a pie chart showing test status distribution (Not Tested, Pass, Fail, Blocked)
- Widget updates when APP_COMPATIBILITY_TEST table changes
- Target threshold displayed: "Goal: 90% applications approved before Wave 1 start"

**Linked Requirements**: BR-FE-007 (Application Compatibility Management)

**Priority**: MEDIUM

---

### Feature 5: Cost Tracking

#### FR-FE-021: Budget vs Actual Dashboard

**Description**: The cost tracking page must display budget vs actual spending by category (hardware, licenses, professional services, training, support) with variance % and forecast to complete.

**User Story**: US-FE-003 - As a PM, I want to track costs by category so I can stay within budget.

**Acceptance Criteria**:
- Dashboard displays table with columns: Cost Category, Budget (£), Actual (£), Variance (£ and %), Forecast to Complete (£), Remaining Budget (£)
- Overbudget categories highlighted in red (variance < 0)
- Dashboard includes horizontal bar chart comparing budget vs actual by category
- Dashboard includes a summary card: Total Budget (£), Total Spent (£ + % of budget), Forecast to Complete (£), Projected Overspend (£, if applicable)
- Data fetched from COST_TRACKING table with CONFIDENTIAL access control (Admin role only)

**Linked Requirements**: BR-FE-006 (Cost Tracking and Budget Control), NFR-FE-SEC-003 (Row-Level Security on CONFIDENTIAL tables)

**Priority**: HIGH

---

#### FR-FE-022: Cost by Category Drill-Down

**Description**: Users must be able to drill down into cost categories to view individual cost records (vendor, invoice number, PO number, amount, date).

**User Story**: US-FE-003 - As a PM, I want to track costs by category so I can stay within budget.

**Acceptance Criteria**:
- Clicking a cost category row navigates to Cost Detail view showing all cost records for that category
- Cost Detail table displays: Cost Record ID, Cost Category, Vendor, Invoice Number, PO Number, Amount (£), Cost Date, Fiscal Year, Quarter
- Table is sortable and filterable by Vendor, Fiscal Year, Quarter
- Table is exportable to CSV
- Data fetched from COST_TRACKING table with CONFIDENTIAL access control

**Linked Requirements**: BR-FE-006 (Cost Tracking and Budget Control), NFR-FE-SEC-003 (Row-Level Security on CONFIDENTIAL tables)

**Priority**: MEDIUM

---

#### FR-FE-023: Add Cost Record

**Description**: Admins must be able to add new cost records via a form (cost category, vendor, amount, invoice number, PO number, cost date).

**User Story**: US-FE-003 - As a PM, I want to track costs by category so I can stay within budget.

**Acceptance Criteria**:
- "Add Cost Record" button displayed on cost tracking page (Admin role only)
- Form includes fields: Cost Category (dropdown: Hardware, Licenses, Professional Services, Training, Support), Vendor (text, max 200 chars), Amount (£, decimal, required), Invoice Number (text, max 50 chars, optional), PO Number (text, max 50 chars, optional), Cost Date (date picker, required), Fiscal Year (auto-calculated from cost date), Quarter (auto-calculated from cost date)
- Form validation: Amount > 0, Cost Date ≤ Today
- Clicking "Save Cost Record" inserts row into COST_TRACKING table
- After save, Budget vs Actual Dashboard updates automatically

**Linked Requirements**: BR-FE-006 (Cost Tracking and Budget Control), NFR-FE-SEC-003 (Row-Level Security on CONFIDENTIAL tables)

**Priority**: MEDIUM

---

#### FR-FE-024: Fiscal Year and Quarter Reporting

**Description**: The cost tracking page must support filtering by fiscal year and quarter to enable quarterly financial reporting.

**User Story**: US-FE-008 - As a CFO, I want to see budget vs actual so I can forecast remaining costs.

**Acceptance Criteria**:
- Cost tracking page includes filter dropdowns: Fiscal Year (2025, 2026, 2027), Quarter (Q1, Q2, Q3, Q4)
- Selecting filters updates Budget vs Actual Dashboard to show only costs for selected fiscal year/quarter
- Fiscal year assumed to align with calendar year (Q1 = Jan-Mar, Q2 = Apr-Jun, Q3 = Jul-Sep, Q4 = Oct-Dec)
- Filter selection persisted in browser session (user navigates away and returns, filter still applied)

**Linked Requirements**: BR-FE-006 (Cost Tracking and Budget Control)

**Priority**: MEDIUM

---

#### FR-FE-025: Budget Overrun Alerts

**Description**: The system must send alert notifications when any cost category exceeds 90% of allocated budget.

**User Story**: US-FE-008 - As a CFO, I want to see budget vs actual so I can forecast remaining costs.

**Acceptance Criteria**:
- When COST_TRACKING table updated, backend calculates % spent for each category
- If any category reaches 90% of budget, alert notification sent to CFO and IT Operations Director via email and in-app notification
- Alert includes: Cost Category, Budget (£), Actual (£), Variance (%), Projected Overspend (£, based on forecast to complete)
- Alert banner displayed on dashboard for users with Admin role
- Alert threshold configurable (default: 90%, adjustable to 80-95%)

**Linked Requirements**: BR-FE-006 (Cost Tracking and Budget Control), INT-FE-005 (Azure Application Insights integration)

**Priority**: MEDIUM

---

### Feature 6: Executive Dashboard

#### FR-FE-026: High-Level KPI Summary

**Description**: The executive dashboard must display 6-8 high-level KPIs without technical details, optimized for C-level stakeholders (CISO, CFO, CIO).

**User Story**: US-FE-007 - As a CISO, I want to see Zero Trust compliance % so I can assess security posture.

**User Story**: US-FE-008 - As a CFO, I want to see budget vs actual so I can forecast remaining costs.

**User Story**: US-FE-009 - As a CIO, I want to see migration velocity so I can predict completion date.

**Acceptance Criteria**:
- Executive dashboard displays 6-8 KPI cards: Migration Progress (% of 6,000 devices migrated), Migration Velocity (devices/week), Success Rate (%), Zero Trust Compliance (%), Budget Spent (% of total), Projected Completion Date (based on velocity), Average Downtime (minutes), Support Ticket Rate (%)
- Cards use large fonts (24-32px) and simplified visuals (no charts, just numbers + trend arrows)
- Cards color-coded by health status (green = on track, yellow = at risk, red = off track)
- Dashboard optimized for large screen displays (1920×1080 or larger) for steering committee meetings
- No technical details (no device IDs, error messages, or logs)

**Linked Requirements**: BR-FE-003 (Executive Stakeholder Communication)

**Priority**: HIGH

---

#### FR-FE-027: Trend Charts (Last 30 Days)

**Description**: The executive dashboard must include trend charts showing migration progress, success rate, and budget spending over the last 30 days.

**User Story**: US-FE-009 - As a CIO, I want to see migration velocity so I can predict completion date.

**Acceptance Criteria**:
- Dashboard includes 3 trend line charts: Migration Progress (cumulative devices migrated over last 30 days), Success Rate (daily success rate % over last 30 days), Budget Spending (cumulative spending over last 30 days)
- Charts use simple line graphs (no complex visualizations) with axis labels and data point tooltips
- Charts highlight trends (e.g., "Migration velocity increasing", "Success rate declining")
- Charts updated daily (data fetched from MIGRATION_EVENT and COST_TRACKING tables)

**Linked Requirements**: BR-FE-003 (Executive Stakeholder Communication)

**Priority**: MEDIUM

---

#### FR-FE-028: One-Click PDF Report Generation

**Description**: The executive dashboard must include a "Generate Report" button that produces a one-click PDF report for steering committee meetings.

**User Story**: US-FE-009 - As a CIO, I want to see migration velocity so I can predict completion date.

**Acceptance Criteria**:
- "Generate Report" button displayed on executive dashboard (Stakeholder role or higher)
- Clicking button triggers backend API call to generate PDF report (takes <10 seconds)
- PDF report includes: Cover page with project title and report date, Executive Summary (1-2 paragraphs), KPI summary (all 6-8 KPIs from dashboard), Trend charts (3 charts from dashboard), Risk summary (top 3 risks with mitigation status), Next steps (bullet list)
- PDF formatted for A4 portrait, branded with organizational logo
- After generation, browser downloads PDF file: "Migration-Report-[YYYY-MM-DD].pdf"

**Linked Requirements**: BR-FE-003 (Executive Stakeholder Communication), NFR-FE-P-004 (PDF generation <10s)

**Priority**: MEDIUM

---

### Feature 7: End User Self-Service Portal

#### FR-FE-029: My Migration Status

**Description**: End users must be able to view their personal migration status, including scheduled date, assigned wave, and current status (Not Started, In Progress, Completed).

**User Story**: US-FE-013 - As an end user, I want to see my migration date so I can plan accordingly.

**Acceptance Criteria**:
- End User Portal homepage displays: Device Name, Scheduled Migration Date (if assigned to wave), Assigned Wave Name, Current Status (Not Started, In Progress, Completed), Last Updated Timestamp
- If device not yet assigned to wave, display message: "Your device will be assigned to a migration wave soon. Check back later."
- If device migration in progress, display progress indicator: "Your migration is in progress. Step 3 of 5: Installing applications..."
- If device migration completed, display success message: "Your device was successfully migrated on [Date]. Enjoy Windows 11!"
- Portal authenticates via Azure AD SSO (user sees only their own device, not others)

**Linked Requirements**: BR-FE-004 (End User Self-Service Capabilities), NFR-FE-SEC-001 (Azure AD authentication with MFA)

**Priority**: HIGH

---

#### FR-FE-030: Pre-Migration Checklist

**Description**: End users must be able to view and complete a pre-migration checklist (e.g., back up data to OneDrive, close all applications, save work) before their migration date.

**User Story**: US-FE-014 - As an end user, I want a pre-migration checklist so I don't lose data.

**Acceptance Criteria**:
- Pre-Migration Checklist displayed on End User Portal with 5-7 checklist items: "Back up important files to OneDrive", "Ensure OneDrive sync completed (green checkmark in system tray)", "Close all applications and save your work", "Plug in laptop charger (migration takes 1-2 hours)", "Stay connected to network (Wi-Fi or Ethernet)", "Do not shut down or restart during migration"
- Each checklist item includes checkbox for user to mark as complete
- Checklist completion status saved to user's browser (localStorage, not database)
- If user accesses portal on migration day, display prominent banner: "Your migration is scheduled for today. Please complete the checklist below."

**Linked Requirements**: BR-FE-004 (End User Self-Service Capabilities)

**Priority**: HIGH

---

#### FR-FE-031: FAQ and Support Contact

**Description**: End users must be able to access a FAQ page with common questions about the migration and a support contact link.

**User Story**: US-FE-015 - As an end user, I want FAQs so I can self-service common questions.

**Acceptance Criteria**:
- FAQ page includes 10-15 common questions: "What is Windows 11?", "Why are we migrating?", "When is my migration?", "How long will migration take?", "Will I lose my data?", "Will my applications still work?", "What if I have problems after migration?", "Who do I contact for help?", "Can I delay my migration?", "Will my laptop be faster?"
- Each FAQ item is collapsible (click to expand/collapse answer)
- FAQ page includes prominent "Contact Support" button linking to ServiceNow self-service portal or IT helpdesk email
- FAQ content managed by admins (editable via CMS or admin panel)

**Linked Requirements**: BR-FE-004 (End User Self-Service Capabilities), INT-FE-003 (ServiceNow integration for incident creation)

**Priority**: MEDIUM

---

#### FR-FE-032: Mobile-Responsive Design for End User Portal

**Description**: The end user portal must be mobile-responsive (works on smartphones and tablets) to enable users to check migration status on personal devices.

**User Story**: US-FE-013 - As an end user, I want to see my migration date so I can plan accordingly.

**Acceptance Criteria**:
- End User Portal renders correctly on mobile devices (320px-768px viewport width)
- Navigation menu collapses into hamburger menu on mobile
- KPI cards and checklist items stack vertically on mobile (not side-by-side)
- Text is legible without pinch-to-zoom (minimum 14px font size)
- Touch targets (buttons, checkboxes) are ≥44×44px for accessibility
- Tested on iOS Safari and Android Chrome

**Linked Requirements**: BR-FE-008 (High User Adoption and Usability), NFR-FE-ACC-002 (Mobile-responsive design)

**Priority**: MEDIUM

---

## Non-Functional Requirements (NFR)

### Performance Requirements (NFR-FE-P)

#### NFR-FE-P-001: Page Load Time

**Description**: All dashboard pages must load within 2 seconds (95th percentile) on standard corporate network (10 Mbps or faster).

**Rationale**: Fast page load times ensure high user adoption and operational efficiency. Addresses BR-FE-008 (High User Adoption and Usability).

**Measurement**: Application Insights page load telemetry (p95 metric)

**Target**: <2 seconds (p95) for initial page load, <1 second (p95) for subsequent navigation (cached resources)

**Priority**: HIGH

---

#### NFR-FE-P-002: API Response Time

**Description**: All backend API endpoints must respond within 500ms (95th percentile) for typical queries (e.g., GET /api/devices with 100 rows, GET /api/dashboard/kpis).

**Rationale**: Fast API responses ensure responsive UI and prevent user frustration. Addresses BR-FE-001 (Real-time Visibility).

**Measurement**: Application Insights API response time telemetry (p95 metric)

**Target**: <500ms (p95) for GET requests, <1s (p95) for POST/PUT requests

**Priority**: HIGH

---

#### NFR-FE-P-003: Real-time Update Latency

**Description**: Real-time updates delivered via WebSocket (Azure SignalR) must reflect database changes within 5 seconds of the change occurring.

**Rationale**: Near real-time visibility enables proactive issue resolution. Addresses BR-FE-001 (Real-time Visibility).

**Measurement**: Timestamp diff between database INSERT/UPDATE and WebSocket message received by client

**Target**: <5 seconds (p95) from database change to client notification

**Priority**: HIGH

---

#### NFR-FE-P-004: PDF Report Generation Time

**Description**: One-click PDF report generation must complete within 10 seconds.

**Rationale**: Fast report generation enables ad-hoc steering committee requests. Addresses BR-FE-003 (Executive Stakeholder Communication).

**Measurement**: Application Insights API response time for POST /api/reports/generate

**Target**: <10 seconds (p95) for PDF generation and download

**Priority**: MEDIUM

---

#### NFR-FE-P-005: Concurrent User Support

**Description**: The application must support 100 concurrent users without performance degradation (page load times, API response times remain within targets).

**Rationale**: Migration team (30-50 users) + end users checking portal (50-100 concurrent during peak hours). Addresses BR-FE-008 (High User Adoption and Usability).

**Measurement**: Load testing with 100 concurrent users (JMeter or Azure Load Testing)

**Target**: No performance degradation (NFR-FE-P-001 and NFR-FE-P-002 targets maintained under 100 concurrent users)

**Priority**: MEDIUM

---

### Security Requirements (NFR-FE-SEC)

#### NFR-FE-SEC-001: Azure AD Authentication with MFA

**Description**: All users must authenticate via Azure AD (Entra ID) using MSAL.js, with Multi-Factor Authentication (MFA) enforced via Conditional Access policies.

**Rationale**: Aligns with Principle 2 (Zero Trust Security Model). Prevents unauthorized access to confidential migration data (COST_TRACKING, STAKEHOLDER tables contain PII and financial data).

**Implementation**: MSAL.js library for frontend authentication, Azure AD Conditional Access policies requiring MFA for all users accessing the application

**Compliance**: Principle 2 (Zero Trust Security Model), UK GDPR (data access control)

**Priority**: CRITICAL

---

#### NFR-FE-SEC-002: Role-Based Access Control (RBAC)

**Description**: The application must implement RBAC with 5 roles: Admin (full access), Engineer (read/write devices, waves, apps), Stakeholder (read-only dashboards), AppOwner (read/write applications only), EndUser (read-only own device).

**Rationale**: Enforces least privilege access. Prevents end users from viewing other users' devices, prevents non-admins from viewing/editing CONFIDENTIAL cost data. Addresses BR-FE-005 (Compliance and Audit Reporting).

**Implementation**: Role claims embedded in Azure AD JWT tokens, backend API enforces role checks before processing requests

**Roles**:
- **Admin**: Full access to all features (cost tracking, wave management, device operations, user management)
- **Engineer**: Read/write access to devices, waves, apps; no access to cost tracking
- **Stakeholder**: Read-only access to executive dashboard, KPI cards, reports
- **AppOwner**: Read/write access to application compatibility tests (only apps where they are listed as owner)
- **EndUser**: Read-only access to own device status, pre-migration checklist, FAQs

**Compliance**: Principle 2 (Zero Trust Security Model), UK GDPR (data access control)

**Priority**: CRITICAL

---

#### NFR-FE-SEC-003: Row-Level Security on CONFIDENTIAL Tables

**Description**: COST_TRACKING and STAKEHOLDER tables must enforce Row-Level Security (RLS) in PostgreSQL, restricting access to Admin role only.

**Rationale**: COST_TRACKING contains CONFIDENTIAL financial data (budget, vendor invoices, PO numbers). STAKEHOLDER contains PII (name, email, phone). Addresses BR-FE-006 (Cost Tracking and Budget Control), BR-FE-005 (Compliance and Audit Reporting).

**Implementation**: PostgreSQL RLS policies enforced at database level (not application level), API requests include user role in JWT token, database verifies role before returning rows

**Compliance**: UK GDPR (data protection), Principle 2 (Zero Trust Security Model)

**Priority**: CRITICAL

---

#### NFR-FE-SEC-004: TLS 1.2+ Encryption in Transit

**Description**: All client-server communication (API calls, WebSocket connections) must use TLS 1.2 or higher encryption.

**Rationale**: Prevents man-in-the-middle attacks and eavesdropping on migration data. Aligns with Principle 2 (Zero Trust Security Model).

**Implementation**: Azure Static Web Apps and Azure Functions enforce HTTPS by default, Azure SignalR enforces TLS 1.2+ for WebSocket connections

**Compliance**: Principle 2 (Zero Trust Security Model), UK GDPR (encryption in transit)

**Priority**: CRITICAL

---

#### NFR-FE-SEC-005: API Rate Limiting

**Description**: Backend API must enforce rate limiting (100 requests per 15 minutes per user) to prevent abuse and DoS attacks.

**Rationale**: Protects backend API from malicious users or misconfigured clients flooding the API. Addresses BR-FE-005 (Compliance and Audit Reporting).

**Implementation**: Azure API Management (APIM) or custom middleware in Azure Functions enforces rate limits per user (identified by Azure AD user ID in JWT token)

**Target**: 100 requests per 15 minutes per user (configurable)

**Priority**: MEDIUM

---

#### NFR-FE-SEC-006: Input Validation and Sanitization

**Description**: All user inputs (form fields, API parameters) must be validated and sanitized to prevent SQL injection, XSS, and other injection attacks.

**Rationale**: Prevents common web vulnerabilities (OWASP Top 10). Addresses BR-FE-005 (Compliance and Audit Reporting).

**Implementation**: Backend API validates all inputs (type checks, range checks, regex patterns) before processing, parameterized queries for PostgreSQL (prevents SQL injection), React escapes all user-generated content (prevents XSS)

**Compliance**: OWASP Top 10 (Injection, XSS)

**Priority**: HIGH

---

#### NFR-FE-SEC-007: HTTPS-Only Access

**Description**: The application must be accessible only via HTTPS (no HTTP access permitted).

**Rationale**: Prevents unencrypted access to confidential migration data. Aligns with Principle 2 (Zero Trust Security Model).

**Implementation**: Azure Static Web Apps enforces HTTPS by default, HTTP requests automatically redirected to HTTPS

**Compliance**: Principle 2 (Zero Trust Security Model), UK GDPR (encryption in transit)

**Priority**: CRITICAL

---

### Availability Requirements (NFR-FE-A)

#### NFR-FE-A-001: 99.9% Uptime During Migration Phases

**Description**: The application must achieve 99.9% uptime during active migration phases (Weeks 27-74, 48 weeks total), allowing for maximum 43 minutes of downtime per month.

**Rationale**: Migration team relies on the application for operational control. Unplanned downtime blocks wave management, device tracking, and issue resolution. Addresses BR-FE-001 (Real-time Visibility), BR-FE-002 (Operational Efficiency).

**Measurement**: Azure Application Insights availability monitoring (uptime %)

**Target**: 99.9% uptime (max 43 minutes downtime per month)

**Planned Maintenance Window**: Sundays 02:00-04:00 UTC (outside migration hours)

**Priority**: HIGH

---

#### NFR-FE-A-002: Mean Time to Recover (MTTR) < 1 Hour

**Description**: In the event of application failure, Mean Time to Recover (MTTR) must be less than 1 hour.

**Rationale**: Fast recovery minimizes operational disruption. Addresses BR-FE-001 (Real-time Visibility).

**Implementation**: Azure Static Web Apps and Azure Functions have built-in redundancy and auto-healing, monitoring alerts trigger on-call engineer via PagerDuty, runbooks document recovery procedures

**Target**: MTTR <1 hour (from failure detection to full recovery)

**Priority**: MEDIUM

---

#### NFR-FE-A-003: Graceful Degradation

**Description**: If real-time updates (WebSocket) fail, the application must gracefully degrade to polling mode (refresh every 30 seconds) without breaking core functionality.

**Rationale**: Ensures application remains operational even if Azure SignalR service is unavailable. Addresses BR-FE-001 (Real-time Visibility).

**Implementation**: Frontend WebSocket client detects connection failure, automatically falls back to HTTP polling (GET /api/dashboard/kpis every 30s), user sees banner notification: "Real-time updates temporarily unavailable. Dashboard refreshing every 30 seconds."

**Priority**: MEDIUM

---

### Scalability Requirements (NFR-FE-S)

#### NFR-FE-S-001: Support 6,000 Devices with Pagination

**Description**: The application must support 6,000 devices without performance degradation, using pagination for device lists (100 rows per page, backend filtering).

**Rationale**: Prevents client-side memory issues and slow page rendering with large datasets. Addresses BR-FE-001 (Real-time Visibility), NFR-FE-P-001 (Page Load Time).

**Implementation**: Backend API returns paginated results (100 rows per page, configurable), frontend table includes pagination controls (Previous, Next, Page 1 of 60), search/filter applied on backend (not client-side)

**Target**: Page load time <2s (p95) for device list page with 6,000 devices (100 rows per page)

**Priority**: HIGH

---

#### NFR-FE-S-002: Horizontal Scaling for 3× Growth

**Description**: The application architecture must support horizontal scaling to accommodate 3× growth (18,000 devices) without code changes.

**Rationale**: Ensures application can scale if organization expands or future projects reuse the platform. Addresses BR-FE-002 (Operational Efficiency).

**Implementation**: Azure Static Web Apps and Azure Functions scale horizontally (auto-scaling based on request load), PostgreSQL Flexible Server supports vertical scaling (increase vCores/RAM if needed), Azure SignalR Service supports scale-out (increase units if concurrent connections exceed 1,000)

**Target**: Support 18,000 devices, 300 concurrent users, 3,000 WebSocket connections without performance degradation

**Priority**: LOW

---

### Accessibility Requirements (NFR-FE-ACC)

#### NFR-FE-ACC-001: WCAG 2.1 AA Compliance

**Description**: The application must comply with Web Content Accessibility Guidelines (WCAG) 2.1 Level AA to ensure inclusive access for users with disabilities.

**Rationale**: Ensures application is accessible to users with visual, auditory, motor, or cognitive impairments. Addresses BR-FE-008 (High User Adoption and Usability).

**Implementation**: All UI components (buttons, forms, tables, charts) use semantic HTML5, ARIA labels for screen readers, sufficient color contrast (4.5:1 for text), keyboard navigation support (no mouse required), skip-to-content links

**Compliance**: WCAG 2.1 Level AA, UK Public Sector Bodies Accessibility Regulations 2018

**Validation**: Automated testing with axe DevTools, manual testing with NVDA screen reader

**Priority**: MEDIUM

---

#### NFR-FE-ACC-002: Keyboard Navigation Support

**Description**: All interactive elements (buttons, links, form fields, dropdowns) must be accessible via keyboard (Tab, Enter, Arrow keys) without requiring a mouse.

**Rationale**: Ensures application is accessible to users with motor impairments or assistive technology users. Addresses BR-FE-008 (High User Adoption and Usability).

**Implementation**: All interactive elements receive focus via Tab key, focus indicators visible (2px blue outline), Enter key activates buttons/links, Arrow keys navigate dropdowns/menus, Escape key closes modals

**Compliance**: WCAG 2.1 Level AA (Guideline 2.1 - Keyboard Accessible)

**Priority**: MEDIUM

---

#### NFR-FE-ACC-003: Screen Reader Support

**Description**: The application must be fully navigable using screen readers (NVDA, JAWS, VoiceOver) with proper semantic markup and ARIA labels.

**Rationale**: Ensures application is accessible to users with visual impairments. Addresses BR-FE-008 (High User Adoption and Usability).

**Implementation**: All UI elements use semantic HTML5 (e.g., `<nav>`, `<main>`, `<article>`, `<button>`), ARIA labels for non-semantic elements (e.g., `<div role="button" aria-label="Retry migration">`), ARIA live regions for real-time updates (e.g., `<div aria-live="polite">` for alert notifications)

**Compliance**: WCAG 2.1 Level AA (Guideline 1.3 - Adaptable), UK Public Sector Bodies Accessibility Regulations 2018

**Priority**: MEDIUM

---

## Integration Requirements (INT)

### INT-FE-001: PostgreSQL Database Integration

**Description**: The frontend application must integrate with the existing PostgreSQL Flexible Server database (deployed via Terraform) to read/write migration data across 6 entities (MIGRATION_EVENT, MIGRATION_WAVE, APP_COMPATIBILITY_TEST, COST_TRACKING, STAKEHOLDER, UPDATE_RING_ASSIGNMENT).

**Database Details**:
- **Server**: Azure Database for PostgreSQL Flexible Server (PostgreSQL 15)
- **Database Name**: migration_db
- **Schema**: public
- **6 Entities**: MIGRATION_WAVE (parent), MIGRATION_EVENT (child of MIGRATION_WAVE), APP_COMPATIBILITY_TEST, COST_TRACKING (CONFIDENTIAL), STAKEHOLDER (CONFIDENTIAL - PII), UPDATE_RING_ASSIGNMENT (child of MIGRATION_WAVE)
- **Access Method**: Private endpoint (no public access)
- **Authentication**: PostgreSQL admin credentials stored in Azure Key Vault, connection pooling via pg library (Node.js)

**API Endpoints Required**:
- **Devices**: GET /api/devices (list, paginated, filterable), GET /api/devices/:id (detail), POST /api/devices/:id/retry (retry migration), PUT /api/devices/:id/reassign (reassign to wave)
- **Waves**: GET /api/waves (list), POST /api/waves (create), PUT /api/waves/:id (edit), POST /api/waves/:id/start (start wave), POST /api/waves/:id/pause (pause wave)
- **Apps**: GET /api/apps (list, filterable), GET /api/apps/:id (detail), PUT /api/apps/:id/approve (approve for deployment)
- **Costs**: GET /api/costs (list, filterable by fiscal year/quarter), POST /api/costs (add cost record) - Admin role only
- **Dashboard**: GET /api/dashboard/kpis (KPI cards), GET /api/dashboard/events (recent events)

**Data Model Traceability**:
- DR-FE-001 → MIGRATION_EVENT table (event_id UUID PK, device_id, migration_wave_id FK, event_type, migration_status, event_timestamp, downtime_minutes, failure_reason)
- DR-FE-002 → MIGRATION_WAVE table (wave_id UUID PK, wave_name, wave_type, wave_status, scheduled_start, scheduled_end, success_rate_percent)
- DR-FE-003 → APP_COMPATIBILITY_TEST table (test_id UUID PK, application_id, application_name, test_result, approved_for_deployment, approved_by, approval_date, remediation_plan)
- DR-FE-004 → COST_TRACKING table (cost_record_id UUID PK, migration_wave_id FK, cost_category, cost_amount_gbp, vendor, invoice_number, po_number, cost_date, fiscal_year, quarter) - CONFIDENTIAL
- DR-FE-005 → STAKEHOLDER table (stakeholder_id UUID PK, stakeholder_name, email, phone, raci_role, notification_preferences) - CONFIDENTIAL - PII

**Priority**: CRITICAL

**Linked Requirements**: BR-FE-001, BR-FE-002, BR-FE-006, BR-FE-007, NFR-FE-SEC-003

---

### INT-FE-002: Azure AD (Entra ID) Integration for SSO

**Description**: The frontend application must integrate with Azure AD (Entra ID) using MSAL.js for Single Sign-On (SSO), user authentication, and role claims.

**Authentication Flow**:
1. User navigates to application (e.g., https://migration.contoso.com)
2. Application redirects to Azure AD login page (OAuth 2.0 Authorization Code Flow with PKCE)
3. User authenticates with corporate credentials (MFA enforced via Conditional Access)
4. Azure AD returns JWT token with user claims (user ID, name, email, role)
5. Application stores token in browser (sessionStorage, not localStorage) and includes in all API requests (Authorization: Bearer <token>)
6. Backend API validates JWT token signature and role claims before processing requests

**Required Azure AD Configuration**:
- App Registration created in Azure AD (redirect URI: https://migration.contoso.com/auth/callback)
- API Permissions: Microsoft Graph (User.Read - read user profile)
- Role claims added to JWT token (Admin, Engineer, Stakeholder, AppOwner, EndUser)
- Conditional Access policies enforce MFA for all users accessing the application

**MSAL.js Configuration**:
- Library: @azure/msal-browser (v3+)
- Authentication method: Authorization Code Flow with PKCE (recommended for SPAs)
- Token storage: sessionStorage (tokens not persisted after browser close)
- Silent token renewal: MSAL.js automatically renews tokens before expiration

**Priority**: CRITICAL

**Linked Requirements**: NFR-FE-SEC-001, NFR-FE-SEC-002

---

### INT-FE-003: ServiceNow Integration for Incident Creation

**Description**: The frontend application must integrate with ServiceNow to create incident tickets for failed migrations or critical alerts.

**Integration Method**: REST API (ServiceNow Table API)

**Use Cases**:
1. Device fails migration ≥3 times → Auto-create ServiceNow incident (Category: Windows 11 Migration, Priority: Medium, Assigned to: IT Operations)
2. User clicks "Contact Support" on End User Portal → Redirect to ServiceNow self-service portal (existing ServiceNow instance)

**API Endpoint**: POST https://contoso.service-now.com/api/now/table/incident

**Payload Example**:
```json
{
  "short_description": "Migration failed for device [Device ID]",
  "description": "Device [Device ID] (hostname: [Hostname], user: [User Name]) failed migration 3 times. Last error: [Error Message]",
  "category": "Windows 11 Migration",
  "priority": "3",
  "assigned_to": "IT Operations",
  "impact": "3",
  "urgency": "3",
  "caller_id": "[User ID]",
  "u_device_id": "[Device ID]",
  "u_migration_wave": "[Wave Name]"
}
```

**Authentication**: ServiceNow OAuth 2.0 (client credentials flow) or Basic Auth (service account credentials stored in Azure Key Vault)

**Priority**: MEDIUM

**Linked Requirements**: BR-FE-002 (Operational Efficiency), BR-FE-004 (End User Self-Service Capabilities)

---

### INT-FE-004: Azure SignalR Integration for Real-time WebSocket Updates

**Description**: The frontend application must integrate with Azure SignalR Service to receive real-time updates for migration events, wave status changes, and cost updates.

**Architecture**:
- **Backend**: Azure Functions (Node.js) publish messages to Azure SignalR hub when database changes occur (MIGRATION_EVENT INSERT/UPDATE, MIGRATION_WAVE UPDATE, COST_TRACKING INSERT)
- **Frontend**: React client subscribes to SignalR hub via @microsoft/signalr library, receives messages via WebSocket, updates dashboard in real-time

**WebSocket Events**:
1. `migration-event-created` - New migration event inserted (payload: event_id, device_id, event_type, migration_status, timestamp)
2. `migration-event-updated` - Migration event updated (payload: event_id, migration_status, failure_reason, timestamp)
3. `wave-status-changed` - Wave status changed (payload: wave_id, wave_status, timestamp)
4. `cost-added` - New cost record inserted (payload: cost_record_id, cost_category, cost_amount_gbp, timestamp)
5. `app-approved` - Application approved for deployment (payload: application_id, approved_by, timestamp)
6. `alert-created` - Critical alert triggered (payload: alert_type, severity, message, timestamp)

**Frontend Implementation**:
- React component subscribes to SignalR hub on mount: `hubConnection.on('migration-event-created', (data) => { updateDashboard(data) })`
- Dashboard components listen for relevant events and update state in real-time
- If WebSocket connection fails, gracefully degrade to HTTP polling (NFR-FE-A-003)

**Azure SignalR Configuration**:
- Service Mode: Serverless (Azure Functions trigger SignalR messages)
- Pricing Tier: Standard (supports 1,000 concurrent connections, 1 million messages/day)
- Connection string stored in Azure Key Vault

**Priority**: HIGH

**Linked Requirements**: BR-FE-001 (Real-time Visibility), NFR-FE-P-003 (Real-time updates <5s)

---

### INT-FE-005: Azure Application Insights Integration for Monitoring

**Description**: The frontend and backend must integrate with Azure Application Insights for monitoring, telemetry, logging, and alerting.

**Frontend Telemetry (React)**:
- Library: @microsoft/applicationinsights-web
- Metrics collected: Page views, page load times, API call durations, JavaScript exceptions, user sessions
- Custom events: Button clicks (e.g., "Retry Migration", "Generate Report"), filter selections (e.g., "Filter by Wave: Pilot")

**Backend Telemetry (Azure Functions)**:
- Built-in integration (Application Insights enabled by default for Azure Functions)
- Metrics collected: API response times, function execution duration, dependency calls (PostgreSQL queries), exceptions

**Alerts Configured**:
1. API Response Time >1s (p95) → Send email to IT Operations
2. Page Load Time >3s (p95) → Send email to development team
3. Application Availability <99.9% → Send email to IT Operations + PagerDuty alert
4. JavaScript Exception Rate >5 errors/minute → Send email to development team

**Log Analytics Queries**:
- Slow API endpoints: `requests | where duration > 1000 | summarize count() by name | order by count_ desc`
- JavaScript errors: `exceptions | where client_Type == "Browser" | project timestamp, message, url`
- User adoption: `pageViews | summarize UserCount = dcount(user_Id) by bin(timestamp, 1d)`

**Priority**: HIGH

**Linked Requirements**: NFR-FE-P-001 (Page Load Time), NFR-FE-P-002 (API Response Time), NFR-FE-A-001 (99.9% Uptime)

---

## Data Requirements (DR)

### DR-FE-001: MIGRATION_EVENT Table Access (Read-Only)

**Description**: The frontend application requires read-only access to the MIGRATION_EVENT table to display device migration history, event timelines, and failure reasons.

**Table Schema** (from Terraform data model):
```sql
CREATE TABLE migration_event (
    event_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    device_id VARCHAR(255) NOT NULL,
    migration_wave_id UUID REFERENCES migration_wave(wave_id),
    event_type VARCHAR(50) NOT NULL, -- Pre-Check, Autopilot, OneDrive Sync, App Install, Post-Validation
    migration_status VARCHAR(20) NOT NULL, -- Not Started, In Progress, Completed, Failed
    event_timestamp TIMESTAMP DEFAULT NOW(),
    downtime_minutes INTEGER,
    failure_reason TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);
```

**Access Pattern**:
- **Device List**: `SELECT device_id, migration_status, MAX(event_timestamp) as last_updated FROM migration_event GROUP BY device_id, migration_status ORDER BY last_updated DESC LIMIT 100 OFFSET 0;`
- **Device Detail**: `SELECT * FROM migration_event WHERE device_id = $1 ORDER BY event_timestamp DESC;`
- **Recent Events**: `SELECT * FROM migration_event ORDER BY event_timestamp DESC LIMIT 20;`

**Data Classification**: INTERNAL

**Priority**: CRITICAL

**Linked Requirements**: FR-FE-011 (Search and Filter Devices), FR-FE-012 (Device Detail View), FR-FE-013 (Device Event Timeline)

---

### DR-FE-002: MIGRATION_WAVE Table Access (Read/Write)

**Description**: The frontend application requires read/write access to the MIGRATION_WAVE table to create, edit, start, and pause migration waves.

**Table Schema** (from Terraform data model):
```sql
CREATE TABLE migration_wave (
    wave_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    wave_name VARCHAR(100) NOT NULL UNIQUE,
    wave_type VARCHAR(50) NOT NULL, -- Pilot, Early Adopter, Production
    wave_status VARCHAR(20) NOT NULL DEFAULT 'Not Started', -- Not Started, In Progress, Paused, Completed
    scheduled_start DATE,
    scheduled_end DATE,
    actual_start TIMESTAMP,
    actual_end TIMESTAMP,
    target_device_count INTEGER,
    actual_device_count INTEGER,
    success_rate_percent DECIMAL(5,2),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);
```

**Access Pattern**:
- **Wave List**: `SELECT * FROM migration_wave ORDER BY scheduled_start ASC;`
- **Create Wave**: `INSERT INTO migration_wave (wave_name, wave_type, scheduled_start, scheduled_end, target_device_count) VALUES ($1, $2, $3, $4, $5) RETURNING wave_id;`
- **Update Wave**: `UPDATE migration_wave SET wave_status = $1, actual_start = $2, updated_at = NOW() WHERE wave_id = $3;`

**Data Classification**: INTERNAL

**Priority**: CRITICAL

**Linked Requirements**: FR-FE-006 (Create Migration Wave), FR-FE-007 (Edit Migration Wave), FR-FE-010 (Start/Pause/Resume Wave)

---

### DR-FE-003: APP_COMPATIBILITY_TEST Table Access (Read/Write)

**Description**: The frontend application requires read/write access to the APP_COMPATIBILITY_TEST table to display test results, approve applications for deployment, and document blocker issues.

**Table Schema** (from Terraform data model):
```sql
CREATE TABLE app_compatibility_test (
    test_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    application_id VARCHAR(255) NOT NULL,
    application_name VARCHAR(255) NOT NULL,
    application_owner VARCHAR(255),
    test_result VARCHAR(20) NOT NULL, -- Not Tested, Pass, Fail, Blocked
    test_date DATE,
    tested_by VARCHAR(255),
    approved_for_deployment BOOLEAN DEFAULT FALSE,
    approved_by VARCHAR(255),
    approval_date DATE,
    remediation_plan TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);
```

**Access Pattern**:
- **App List**: `SELECT * FROM app_compatibility_test ORDER BY application_name ASC;`
- **App Detail**: `SELECT * FROM app_compatibility_test WHERE test_id = $1;`
- **Approve App**: `UPDATE app_compatibility_test SET approved_for_deployment = TRUE, approved_by = $1, approval_date = NOW(), updated_at = NOW() WHERE test_id = $2;`
- **Document Blocker**: `UPDATE app_compatibility_test SET remediation_plan = $1, updated_at = NOW() WHERE test_id = $2;`

**Data Classification**: INTERNAL

**Priority**: HIGH

**Linked Requirements**: FR-FE-017 (Application Test Results Dashboard), FR-FE-018 (Application Approval Workflow), FR-FE-019 (Document Blocker Issues)

---

### DR-FE-004: COST_TRACKING Table Access (Admin Role Only - CONFIDENTIAL)

**Description**: The frontend application requires read/write access to the COST_TRACKING table (Admin role only) to track costs by category, add cost records, and generate budget vs actual reports.

**Table Schema** (from Terraform data model):
```sql
CREATE TABLE cost_tracking (
    cost_record_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    migration_wave_id UUID REFERENCES migration_wave(wave_id),
    cost_category VARCHAR(100) NOT NULL, -- Hardware, Licenses, Professional Services, Training, Support
    cost_amount_gbp DECIMAL(12,2) NOT NULL,
    vendor VARCHAR(255),
    invoice_number VARCHAR(100),
    po_number VARCHAR(100),
    cost_date DATE NOT NULL,
    fiscal_year INTEGER NOT NULL,
    quarter VARCHAR(10), -- Q1, Q2, Q3, Q4
    budget_code VARCHAR(50),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);
```

**Access Pattern**:
- **Cost Summary**: `SELECT cost_category, SUM(cost_amount_gbp) as total_spent FROM cost_tracking GROUP BY cost_category;`
- **Cost Detail**: `SELECT * FROM cost_tracking WHERE cost_category = $1 ORDER BY cost_date DESC;`
- **Add Cost Record**: `INSERT INTO cost_tracking (cost_category, cost_amount_gbp, vendor, invoice_number, po_number, cost_date, fiscal_year, quarter, budget_code) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING cost_record_id;`

**Row-Level Security (RLS)**: PostgreSQL RLS policy enforced - only users with Admin role can read/write COST_TRACKING table.

**Data Classification**: CONFIDENTIAL (financial data, vendor contracts, PO numbers)

**Priority**: HIGH

**Linked Requirements**: FR-FE-021 (Budget vs Actual Dashboard), FR-FE-023 (Add Cost Record), NFR-FE-SEC-003 (Row-Level Security on CONFIDENTIAL tables)

---

### DR-FE-005: STAKEHOLDER Table Access (Admin Role Only - PII)

**Description**: The frontend application requires read/write access to the STAKEHOLDER table (Admin role only) for stakeholder contact management and notification preferences.

**Table Schema** (from Terraform data model):
```sql
CREATE TABLE stakeholder (
    stakeholder_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    stakeholder_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(50),
    department VARCHAR(100),
    raci_role VARCHAR(20), -- Responsible, Accountable, Consulted, Informed
    notification_preferences TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);
```

**Access Pattern**:
- **Stakeholder List**: `SELECT * FROM stakeholder ORDER BY stakeholder_name ASC;`
- **Stakeholder Detail**: `SELECT * FROM stakeholder WHERE stakeholder_id = $1;`
- **Update Notifications**: `UPDATE stakeholder SET notification_preferences = $1, updated_at = NOW() WHERE stakeholder_id = $2;`

**Row-Level Security (RLS)**: PostgreSQL RLS policy enforced - only users with Admin role can read/write STAKEHOLDER table.

**Data Classification**: CONFIDENTIAL (PII - name, email, phone)

**GDPR Compliance**: Email and phone are PII, subject to GDPR data subject rights (right to access, rectify, erase). Application must support data export (CSV) and data deletion (soft delete + anonymization).

**Priority**: MEDIUM

**Linked Requirements**: BR-FE-005 (Compliance and Audit Reporting), NFR-FE-SEC-003 (Row-Level Security on CONFIDENTIAL tables)

---

## Use Cases

### UC-FE-001: Monitor Real-time Migration Progress (Engineer Persona)

**Actors**: IT Operations Engineer (James Rodriguez)

**Preconditions**:
- User authenticated via Azure AD (Engineer role)
- Migration waves active (≥1 wave with status = In Progress)
- Devices migrating (MIGRATION_EVENT rows being inserted)

**Main Flow**:
1. Engineer navigates to Dashboard (/)
2. System displays KPI cards (Total Devices, Migrated, In Progress, Failed, Success Rate, Average Downtime)
3. System displays Wave Progress Chart (horizontal bars showing Pilot, Early Adopter, Production 1-4 progress)
4. System displays Recent Migration Events table (20 most recent events, auto-refreshing via WebSocket)
5. Engineer observes new migration event appear in real-time (<5 seconds after database insert)
6. Engineer clicks failed device row in Recent Events table
7. System navigates to Device Detail view (UC-FE-002)

**Alternative Flow 1: WebSocket Connection Fails**:
- At step 5, WebSocket connection to Azure SignalR fails
- System detects connection failure and displays banner: "Real-time updates temporarily unavailable. Dashboard refreshing every 30 seconds."
- System falls back to HTTP polling (GET /api/dashboard/kpis every 30s)
- Engineer continues monitoring with 30s refresh rate instead of real-time

**Alternative Flow 2: Critical Alert Triggered**:
- At step 5, device fails migration for 3rd time
- System publishes `alert-created` WebSocket event (severity: Critical, message: "Device [Device ID] failed 3 times")
- Alert banner appears at top of dashboard: "CRITICAL: Device [Device ID] failed 3 times. [View Details]"
- Engineer clicks "View Details" and navigates to Device Detail view

**Postconditions**:
- Engineer aware of migration progress and failures within 5 seconds of occurrence
- Critical alerts delivered in real-time

**Linked Requirements**: BR-FE-001 (Real-time Visibility), FR-FE-001 (KPI Cards), FR-FE-003 (Recent Migration Events), NFR-FE-P-003 (Real-time updates <5s), NFR-FE-A-003 (Graceful Degradation)

---

### UC-FE-002: Troubleshoot Failed Migration (Engineer Persona)

**Actors**: IT Operations Engineer (James Rodriguez)

**Preconditions**:
- User authenticated via Azure AD (Engineer role)
- ≥1 device with migration_status = Failed

**Main Flow**:
1. Engineer navigates to Devices page (/devices)
2. System displays device list (100 rows per page, paginated)
3. Engineer applies filter: Status = Failed
4. System returns filtered device list (e.g., 15 failed devices)
5. Engineer clicks device row
6. System navigates to Device Detail view (/devices/:id)
7. System displays device details: Device ID, Hostname, User Name, Department, Location, Hardware Model, Current OS Version, Assigned Wave, Migration Status = Failed, Last Event Timestamp
8. System displays Zero Trust compliance checks: TPM 2.0 (Pass), BitLocker (Pass), MFA Enrolled (Pass), Defender EDR Onboarded (Pass)
9. System displays event timeline: Pre-Check (Success, 2025-01-15 10:00), Autopilot (Success, 2025-01-15 10:15), OneDrive Sync (Success, 2025-01-15 10:30), App Install (Failed, 2025-01-15 11:00, Error: "Application 'Adobe Acrobat' installation failed. Exit code: 1603")
10. Engineer reviews error message: "Application 'Adobe Acrobat' installation failed. Exit code: 1603"
11. Engineer identifies root cause: Adobe Acrobat installer incompatible with Windows 11 (version 9.x not supported)
12. Engineer clicks "Document Blocker" button
13. System navigates to Application Detail view for Adobe Acrobat (/apps/:id)
14. Engineer documents blocker issue: "Adobe Acrobat 9.x not compatible with Windows 11. Upgrade to Adobe Acrobat DC required."
15. Engineer clicks "Reassign to Wave" button on Device Detail view
16. System opens modal with wave dropdown: "Select target wave: [Pilot, Early Adopter, Production 1, Production 2, Production 3, Production 4, Unassigned]"
17. Engineer selects "Production 3" (delayed to allow Adobe Acrobat DC deployment)
18. Engineer clicks "Reassign"
19. System updates MIGRATION_EVENT.migration_wave_id to Production 3 wave_id
20. System displays confirmation: "Device [Device ID] reassigned to Production 3"

**Postconditions**:
- Device reassigned to later wave (Production 3)
- Blocker issue documented for Adobe Acrobat
- Migration can retry after Adobe Acrobat DC deployed

**Linked Requirements**: BR-FE-001 (Real-time Visibility), BR-FE-007 (Application Compatibility Management), FR-FE-012 (Device Detail View), FR-FE-013 (Device Event Timeline), FR-FE-015 (Reassign Device to Wave), FR-FE-019 (Document Blocker Issues)

---

### UC-FE-003: Create and Manage Migration Wave (Project Manager Persona)

**Actors**: Migration Project Manager (Sarah Thompson)

**Preconditions**:
- User authenticated via Azure AD (Admin or Engineer role)
- Migration plan defined (Pilot: 300 devices, Early Adopter: 800 devices, Production 1-4: 1,200 devices each)

**Main Flow**:
1. PM navigates to Waves page (/waves)
2. System displays wave list (6 waves: Pilot, Early Adopter, Production 1-4 with status, scheduled dates, device counts)
3. PM clicks "Create Wave" button
4. System navigates to Create Wave form (/waves/create)
5. PM fills form: Wave Name = "Production 1", Wave Type = Production, Scheduled Start Date = 2025-04-01, Scheduled End Date = 2025-04-30, Target Device Count = 1,200, Description = "First production wave targeting Finance and HR departments"
6. PM clicks "Create Wave"
7. System validates: Start Date ≥ Today (pass), End Date ≥ Start Date (pass), Target Device Count > 0 (pass)
8. System inserts row into MIGRATION_WAVE table: `INSERT INTO migration_wave (wave_name, wave_type, scheduled_start, scheduled_end, target_device_count) VALUES ('Production 1', 'Production', '2025-04-01', '2025-04-30', 1200) RETURNING wave_id;`
9. System displays success message: "Wave 'Production 1' created successfully"
10. System navigates to Wave Detail view (/waves/:id)
11. PM clicks "Assign Devices" button
12. System opens device assignment UI with 2 options: Bulk Upload (CSV) or Manual Selection
13. PM selects "Bulk Upload (CSV)"
14. PM uploads CSV file: `device_id, wave_id` (1,200 rows)
15. System validates: Device IDs exist (pass), Wave ID exists (pass), Devices not already assigned (pass)
16. System updates MIGRATION_EVENT table: `UPDATE migration_event SET migration_wave_id = $1 WHERE device_id = ANY($2);` (1,200 devices)
17. System displays success message: "1,200 devices assigned to Production 1"
18. Wave Detail view shows updated device count: Target = 1,200, Actual = 1,200 (100%)
19. PM clicks "Start Wave" button
20. System updates wave status: `UPDATE migration_wave SET wave_status = 'In Progress', actual_start = NOW() WHERE wave_id = $1;`
21. System displays success message: "Wave 'Production 1' started"
22. Wave Detail view shows status = In Progress, actual_start = 2025-04-01 09:00

**Alternative Flow 1: Wave Already Exists**:
- At step 8, validation fails: Wave name "Production 1" already exists (UNIQUE constraint violation)
- System displays error message: "Wave name 'Production 1' already exists. Please choose a different name."
- PM corrects wave name to "Production 1A" and resubmits

**Alternative Flow 2: PM Needs to Pause Wave Mid-Flight**:
- At step 22, PM observes high failure rate (15% of devices failing)
- PM clicks "Pause Wave" button
- System updates wave status: `UPDATE migration_wave SET wave_status = 'Paused' WHERE wave_id = $1;`
- System stops assigning new devices to migration (in-progress devices continue)
- PM investigates root cause, resolves issue (e.g., update InTune policy)
- PM clicks "Resume Wave" button
- System updates wave status: `UPDATE migration_wave SET wave_status = 'In Progress' WHERE wave_id = $1;`
- Migration resumes

**Postconditions**:
- New wave created (Production 1)
- 1,200 devices assigned to Production 1
- Wave started (status = In Progress)
- Devices begin migrating

**Linked Requirements**: BR-FE-002 (Operational Efficiency), FR-FE-006 (Create Migration Wave), FR-FE-009 (Assign Devices to Wave), FR-FE-010 (Start/Pause/Resume Wave)

---

### UC-FE-004: Track Budget vs Actual (CFO Persona)

**Actors**: CFO (Emma Watson)

**Preconditions**:
- User authenticated via Azure AD (Admin role only - CONFIDENTIAL data)
- Cost records exist in COST_TRACKING table (≥10 cost records)

**Main Flow**:
1. CFO navigates to Cost Tracking page (/costs)
2. System verifies user role = Admin (CONFIDENTIAL table access control)
3. System displays Budget vs Actual Dashboard:
   - Summary card: Total Budget = £600,000, Total Spent = £320,000 (53%), Forecast to Complete = £580,000, Projected Overspend = £0 (under budget)
   - Table with 5 categories:
     * Hardware: Budget £250,000, Actual £180,000 (72%), Variance £70,000 (28% under), Forecast £240,000, Remaining £10,000
     * Licenses: Budget £150,000, Actual £100,000 (67%), Variance £50,000 (33% under), Forecast £145,000, Remaining £5,000
     * Professional Services: Budget £120,000, Actual £30,000 (25%), Variance £90,000 (75% under), Forecast £110,000, Remaining £10,000
     * Training: Budget £50,000, Actual £8,000 (16%), Variance £42,000 (84% under), Forecast £45,000, Remaining £5,000
     * Support: Budget £30,000, Actual £2,000 (7%), Variance £28,000 (93% under), Forecast £40,000, Remaining -£10,000 (OVERSPEND)
   - Horizontal bar chart comparing Budget vs Actual by category
4. CFO observes Support category projected to overspend by £10,000 (highlighted in red)
5. CFO clicks "Support" category row
6. System navigates to Cost Detail view for Support category (/costs/support)
7. System displays cost records table:
   - Cost Record 1: Vendor = "IT Helpdesk Inc", Invoice # = "INV-2025-001", PO # = "PO-2025-045", Amount = £1,200, Cost Date = 2025-01-15, Quarter = Q1
   - Cost Record 2: Vendor = "IT Helpdesk Inc", Invoice # = "INV-2025-002", PO # = "PO-2025-046", Amount = £800, Cost Date = 2025-02-10, Quarter = Q1
   - (8 more records, Total = £2,000)
8. CFO identifies root cause: Helpdesk contract renewed at higher rate (£1,200/month vs £1,000/month originally budgeted)
9. CFO clicks "Export to CSV" button
10. System generates CSV file with all Support cost records
11. Browser downloads: "Cost-Tracking-Support-2025-11-21.csv"
12. CFO uses CSV for financial reporting to steering committee
13. CFO navigates back to Budget vs Actual Dashboard
14. CFO clicks "Generate Report" button (executive dashboard feature)
15. System generates PDF report including cost summary (takes 8 seconds)
16. Browser downloads: "Migration-Report-2025-11-21.pdf" (includes cost tracking page)

**Alternative Flow 1: Non-Admin User Attempts Access**:
- At step 2, user role = Engineer (not Admin)
- System denies access: HTTP 403 Forbidden
- System displays error message: "Access denied. Cost tracking is restricted to Admin role."
- User redirected to Dashboard

**Postconditions**:
- CFO aware of budget status (53% spent, on track overall)
- Support category identified as projected overspend (£10,000)
- Cost records exported for financial reporting
- PDF report generated for steering committee

**Linked Requirements**: BR-FE-006 (Cost Tracking and Budget Control), FR-FE-021 (Budget vs Actual Dashboard), FR-FE-022 (Cost by Category Drill-Down), NFR-FE-SEC-003 (Row-Level Security on CONFIDENTIAL tables)

---

### UC-FE-005: Self-Service Migration Status (End User Persona)

**Actors**: End User (Any employee with device assigned to migration wave)

**Preconditions**:
- User authenticated via Azure AD (EndUser role)
- User's device assigned to migration wave (MIGRATION_EVENT.migration_wave_id not null)

**Main Flow**:
1. End user navigates to End User Portal (https://migration.contoso.com/portal)
2. System authenticates user via Azure AD SSO (no separate login required)
3. System retrieves user's device from MIGRATION_EVENT table using Azure AD user ID
4. System displays My Migration Status page:
   - Device Name: "LAPTOP-JD-001"
   - Scheduled Migration Date: 2025-04-15
   - Assigned Wave: Production 1
   - Current Status: Not Started
   - Last Updated: 2025-03-15 14:00
5. System displays prominent banner: "Your migration is scheduled for 15 April 2025 (4 weeks from today). Please complete the checklist below."
6. System displays Pre-Migration Checklist:
   - [ ] Back up important files to OneDrive
   - [ ] Ensure OneDrive sync completed (green checkmark in system tray)
   - [ ] Close all applications and save your work
   - [ ] Plug in laptop charger (migration takes 1-2 hours)
   - [ ] Stay connected to network (Wi-Fi or Ethernet)
   - [ ] Do not shut down or restart during migration
7. End user reads checklist items
8. End user checks first 3 items (Back up files, Verify OneDrive sync, Close applications)
9. System saves checklist completion status to browser localStorage (not database)
10. End user clicks "FAQ" link in navigation
11. System navigates to FAQ page (/portal/faq)
12. System displays 15 FAQs (collapsible accordions)
13. End user clicks "Will I lose my data?" FAQ
14. System expands answer: "No, your data will not be lost. All documents stored in OneDrive and your Desktop, Documents, and Pictures folders are automatically backed up. After migration, your files will sync back to your device."
15. End user satisfied, clicks "Contact Support" button
16. System redirects to ServiceNow self-service portal (https://contoso.service-now.com/sp) in new tab
17. End user submits ServiceNow support request if needed

**Alternative Flow 1: Device Not Yet Assigned**:
- At step 3, user's device not found in MIGRATION_EVENT table (not yet assigned to wave)
- System displays message: "Your device will be assigned to a migration wave soon. Check back later."
- Checklist and scheduled date not displayed

**Alternative Flow 2: Migration Day**:
- At step 1, current date = 2025-04-15 (migration day)
- System displays prominent banner: "Your migration is scheduled for TODAY. Please complete the checklist and ensure you're connected to the network."
- At step 5, Current Status changes to "In Progress" (device migration started)
- System displays progress indicator: "Your migration is in progress. Step 3 of 5: Installing applications... Estimated time remaining: 25 minutes."
- User sees real-time progress updates via WebSocket

**Alternative Flow 3: Migration Complete**:
- At step 5, Current Status = Completed
- System displays success message: "Your device was successfully migrated on 15 April 2025. Enjoy Windows 11!"
- System displays "What's New in Windows 11" link (optional informational content)

**Postconditions**:
- End user aware of migration date (2025-04-15)
- End user completed pre-migration checklist (3 of 6 items)
- End user self-serviced FAQ (no helpdesk ticket required)

**Linked Requirements**: BR-FE-004 (End User Self-Service Capabilities), FR-FE-029 (My Migration Status), FR-FE-030 (Pre-Migration Checklist), FR-FE-031 (FAQ and Support Contact)

---

## Requirement Conflicts and Resolutions

### Conflict 1: CFO Rapid Delivery vs IT Operations Comprehensive Testing

**Conflicting Requirements**:
- **BR-FE-002 (Operational Efficiency)**: CFO wants rapid delivery (Sprint 1-3, 6 weeks) to start realizing cost savings
- **BR-FE-001 (Real-time Visibility)**: IT Operations wants comprehensive testing (Sprint 1-2 pilot, Sprint 3-7 production features) to minimize risk

**Stakeholders Involved**:
- **SD-2 (CFO)**: "Reduce IT Infrastructure Costs" - Driver Intensity: HIGH
- **SD-3 (IT Operations Director)**: "Execute Risk-Free Migration" - Driver Intensity: CRITICAL

**Root Cause**: CFO prioritizes speed (time-to-value), IT Operations prioritizes quality and risk mitigation (avoid production failures).

**Resolution**:
- **Decision**: Implement phased 7-sprint approach (14 weeks total) with pilot validation before production rollout
- **Rationale**: Sprint 1-2 (4 weeks) delivers Minimum Viable Product (MVP) with core features (dashboard, device tracking, wave management) for pilot wave (300 devices). Sprint 3-7 (10 weeks) adds advanced features (application compatibility, cost tracking, executive dashboard, end user portal) for production waves (5,700 devices). This balances CFO's need for rapid delivery with IT Operations' need for risk mitigation.
- **Implementation**:
  - Sprint 1-2 (Pilot MVP): Dashboard, Wave Management, Device Tracking (features FR-FE-001 through FR-FE-016)
  - Sprint 3-4 (Production Features): Application Compatibility Management, Cost Tracking (features FR-FE-017 through FR-FE-025)
  - Sprint 5-7 (Stakeholder & End User Features): Executive Dashboard, End User Portal, PDF Reports (features FR-FE-026 through FR-FE-032)
- **Decision Authority**: CIO (from stakeholder RACI matrix - Accountable for project success)
- **Agreed Metrics**:
  - Pilot MVP delivered Week 4 (end of Sprint 2)
  - Pilot wave success rate >90% before proceeding to production features (Sprint 3)
  - Production features delivered Week 8 (end of Sprint 4)
  - Full production rollout Week 14 (end of Sprint 7)

**Impact on Requirements**: BR-FE-002 success criteria adjusted to "Project managers spend <2 hours/week on manual reporting after Sprint 2 (pilot) and <1 hour/week after Sprint 4 (production features)". BR-FE-001 success criteria unchanged (90%+ adoption within 2 weeks of Sprint 7 completion).

---

### Conflict 2: Executive Simplicity vs Engineer Detailed Drill-Down

**Conflicting Requirements**:
- **BR-FE-003 (Executive Stakeholder Communication)**: Executives want simplified dashboards (6-8 KPIs, no technical details, large fonts)
- **BR-FE-001 (Real-time Visibility)**: Engineers want detailed drill-down (device timelines, error messages, event logs)

**Stakeholders Involved**:
- **SD-1 (CISO), SD-2 (CFO), SD-5 (CIO)**: Want high-level summaries for steering committee meetings
- **SD-3 (IT Operations Director)**: Wants technical details for troubleshooting

**Root Cause**: Different personas have different information needs. Executives need "at-a-glance" health status, engineers need "root cause analysis" details.

**Resolution**:
- **Decision**: Create separate Executive Dashboard and Engineer Dashboard with different UI layouts
- **Rationale**: Separate dashboards satisfy both stakeholder groups without compromising individual needs. Executive Dashboard optimized for large screen displays (1920×1080, steering committee meetings), Engineer Dashboard optimized for detailed troubleshooting.
- **Implementation**:
  - **Executive Dashboard** (/executive): 6-8 high-level KPI cards (large fonts, simplified visuals, no technical details), trend charts (last 30 days), one-click PDF reports (FR-FE-026, FR-FE-027, FR-FE-028)
  - **Engineer Dashboard** (/): KPI cards, wave progress chart, recent events table, cost tracker widget, alert notifications with drill-down links to device detail, wave detail, app detail (FR-FE-001 through FR-FE-005)
- **Decision Authority**: CIO (from stakeholder RACI matrix)
- **Agreed Metrics**:
  - Executives use Executive Dashboard for 100% of steering committee meetings (no manual report generation)
  - Engineers use Engineer Dashboard for 90%+ of troubleshooting activities (no Azure portal queries)

**Impact on Requirements**: No changes to existing requirements. Added clarity that FR-FE-026 through FR-FE-028 (Executive Dashboard features) are separate from FR-FE-001 through FR-FE-005 (Engineer Dashboard features).

---

### Conflict 3: Security (Rate Limiting) vs Usability (Real-time Updates)

**Conflicting Requirements**:
- **NFR-FE-SEC-005 (API Rate Limiting)**: Backend API enforces 100 requests per 15 minutes per user to prevent abuse
- **NFR-FE-P-003 (Real-time Update Latency)**: Dashboard requires near real-time updates (<5 seconds) which could exceed rate limits if using HTTP polling

**Stakeholders Involved**:
- **SD-1 (CISO)**: Security requirements (prevent API abuse, DoS protection)
- **SD-3 (IT Operations Director)**: Usability requirements (real-time visibility for proactive issue resolution)

**Root Cause**: Rate limiting protects backend API from abuse, but aggressive rate limits could block legitimate real-time update requests.

**Resolution**:
- **Decision**: Use WebSocket (Azure SignalR) for real-time updates instead of HTTP polling, reserve HTTP polling as fallback only
- **Rationale**: WebSocket establishes persistent connection, avoiding repeated HTTP requests. Rate limiting (100 req/15 min) applies only to REST API calls (GET /api/devices, POST /api/waves, etc.), not WebSocket messages. This satisfies both security (rate limiting on REST API) and usability (real-time updates via WebSocket).
- **Implementation**:
  - **Primary**: Real-time updates via WebSocket (Azure SignalR) - no rate limiting on WebSocket messages (INT-FE-004)
  - **Fallback**: If WebSocket connection fails, degrade to HTTP polling (GET /api/dashboard/kpis every 30s) - well within rate limit (100 req/15 min = 6.6 req/min, polling at 2 req/min = 30% of limit)
- **Decision Authority**: Enterprise Architect (from stakeholder RACI matrix - Responsible for technical decisions)
- **Agreed Metrics**:
  - WebSocket uptime >99.9% (primary real-time delivery method)
  - Rate limit violations <0.1% of API requests (legitimate users not blocked)

**Impact on Requirements**: NFR-FE-SEC-005 clarified to apply only to REST API requests (not WebSocket messages). NFR-FE-P-003 unchanged (real-time updates <5s achieved via WebSocket). NFR-FE-A-003 (Graceful Degradation) ensures fallback to HTTP polling if WebSocket fails.

---

## Compliance Requirements

### UK GDPR Compliance

**Applicable Tables**: STAKEHOLDER (PII - name, email, phone)

**GDPR Requirements**:
1. **Data Subject Rights**:
   - Right to Access: Application must support data export (CSV download of stakeholder data for data subject requests)
   - Right to Rectification: Application must allow editing stakeholder contact information (email, phone) via admin panel
   - Right to Erasure ("Right to be Forgotten"): Application must support soft delete + anonymization (set stakeholder_name = "REDACTED", email = "redacted@example.com", phone = null, retain stakeholder_id for audit trail)
   - Right to Data Portability: Application must support CSV export (machine-readable format)

2. **Data Retention**: STAKEHOLDER data retained for 7 years (2 years active + 5 years archive) per UK GDPR Article 5(1)(e) (storage limitation)

3. **Data Access Control**: STAKEHOLDER table enforces Row-Level Security (Admin role only) per NFR-FE-SEC-003

4. **Data Breach Notification**: If STAKEHOLDER table accessed by unauthorized user, notify ICO within 72 hours (UK GDPR Article 33)

**Implementation**:
- Admin panel includes "Export Stakeholder Data" button (generates CSV with all stakeholder records)
- Admin panel includes "Delete Stakeholder" button (soft delete + anonymization, not hard delete)
- PostgreSQL RLS policy enforces Admin role check before returning STAKEHOLDER rows
- Azure Application Insights logs all STAKEHOLDER table access (audit trail for GDPR compliance)

**Linked Requirements**: BR-FE-005 (Compliance and Audit Reporting), NFR-FE-SEC-003 (Row-Level Security on CONFIDENTIAL tables), DR-FE-005 (STAKEHOLDER Table Access)

---

### WCAG 2.1 AA Accessibility Compliance

**Applicable Requirements**: NFR-FE-ACC-001 (WCAG 2.1 AA Compliance), NFR-FE-ACC-002 (Keyboard Navigation), NFR-FE-ACC-003 (Screen Reader Support)

**WCAG Guidelines**:
- **Guideline 1.1 (Text Alternatives)**: All images, icons, charts have alt text or ARIA labels (e.g., `<img src="chart.png" alt="Wave progress chart showing 60% completion">`)
- **Guideline 1.3 (Adaptable)**: Semantic HTML5 markup (e.g., `<nav>`, `<main>`, `<article>`, `<section>`) for screen reader navigation
- **Guideline 1.4 (Distinguishable)**: Color contrast ratio ≥4.5:1 for text (e.g., dark gray text on white background), ≥3:1 for large text (≥18pt)
- **Guideline 2.1 (Keyboard Accessible)**: All interactive elements (buttons, links, form fields, dropdowns) accessible via keyboard (Tab, Enter, Arrow keys, Escape)
- **Guideline 2.4 (Navigable)**: Skip-to-content links for screen readers (e.g., `<a href="#main-content" class="skip-link">Skip to main content</a>`)
- **Guideline 3.1 (Readable)**: Page language declared (`<html lang="en">`)
- **Guideline 4.1 (Compatible)**: Valid HTML5 markup, ARIA roles for custom components

**Testing**:
- **Automated**: axe DevTools browser extension (tests 50-60% of WCAG guidelines)
- **Manual**: NVDA screen reader testing (Windows), VoiceOver testing (macOS), keyboard-only navigation testing

**Linked Requirements**: BR-FE-008 (High User Adoption and Usability), NFR-FE-ACC-001 (WCAG 2.1 AA Compliance)

---

### UK Public Sector Bodies Accessibility Regulations 2018

**Applicability**: If the Migration Control Centre is deployed for a UK public sector organization (e.g., NHS, local council, government department), it must comply with UK Public Sector Bodies Accessibility Regulations 2018.

**Requirements**:
- Accessibility statement published on website (e.g., /accessibility-statement) documenting WCAG 2.1 AA compliance, known issues, contact email for accessibility feedback
- Accessibility audit conducted before public launch (manual testing + automated testing)
- Accessibility issues remediated within 12 months of identification

**Implementation**:
- "Accessibility Statement" link in application footer (routes to /accessibility-statement)
- Accessibility statement template: "This application is maintained by [Organization] and aims to comply with WCAG 2.1 Level AA. Last updated: [Date]. If you experience accessibility issues, contact: [Email]."

**Linked Requirements**: NFR-FE-ACC-001 (WCAG 2.1 AA Compliance)

---

## Gaps and TBDs

### Gap 1: InTune Integration for Triggering Migrations

**Description**: Current requirements assume migrations are triggered externally (e.g., InTune Autopilot policies, Azure Functions scheduled jobs). Frontend application does not have direct integration with Microsoft InTune APIs to trigger device migrations.

**Impact**: Project managers cannot click "Start Migration" button on device detail page to immediately trigger Autopilot enrollment. Instead, they must manually configure InTune policies or wait for scheduled Azure Functions job.

**Recommendation**: Add integration requirement (INT-FE-006) for Microsoft Graph API (InTune endpoints) to trigger Autopilot enrollment programmatically. Requires Azure AD app registration with Microsoft.Intune permissions (DeviceManagementManagedDevices.ReadWrite.All).

**Decision Required**: CIO and IT Operations Director - decide if InTune API integration is required for Sprint 1-2 (pilot) or deferred to Sprint 3+ (production features).

**TBD**: Resolve by Sprint 1 Planning (Week 0)

---

### Gap 2: Email Notification Service

**Description**: Current requirements reference email notifications (e.g., NFR-FE-SEC-005 "Rate limit violations", FR-FE-025 "Budget overrun alerts") but do not define email delivery mechanism (SendGrid, Azure Communication Services, Exchange Online).

**Impact**: Backend API cannot send email alerts unless email service integration is implemented.

**Recommendation**: Add integration requirement (INT-FE-007) for email delivery service. Options:
- **Azure Communication Services** (Email) - Azure-native, £0.015 per 1,000 emails
- **SendGrid** (Twilio) - Popular third-party, £12/month for 40,000 emails
- **Exchange Online** (Microsoft 365) - Existing corporate email, SMTP relay (free if organization has M365 licenses)

**Decision Required**: IT Operations Director - select email delivery service based on cost, existing licenses, and operational preferences.

**TBD**: Resolve by Sprint 2 Planning (Week 2)

---

### Gap 3: Reporting Database for Historical Trend Analysis

**Description**: Current requirements use PostgreSQL transactional database (MIGRATION_EVENT, MIGRATION_WAVE, etc.) for operational queries. However, trend charts (FR-FE-027 - last 30 days) require aggregations across 30 days of data, which could be slow for large datasets (6,000 devices × 30 days = 180,000 rows).

**Impact**: Dashboard queries may exceed NFR-FE-P-002 (API response time <500ms) for trend charts if data volume grows.

**Recommendation**: Consider adding Azure Synapse Analytics or Power BI for historical trend analysis and reporting (separate from operational database). Operational database (PostgreSQL) optimized for transactional queries (device detail, wave management), reporting database optimized for analytical queries (trend charts, executive reports).

**Decision Required**: Enterprise Architect - decide if reporting database is required for Sprint 1-2 (pilot) or deferred to Sprint 5+ (after pilot validation with 300 devices).

**TBD**: Resolve by Sprint 3 Planning (Week 4)

---

## Traceability

### Business Requirements → Stakeholder Drivers

- BR-FE-001 (Real-time Visibility) → SD-3 (IT Operations Director - Execute Risk-Free Migration), SD-5 (CIO - Deliver Strategic Modernization)
- BR-FE-002 (Operational Efficiency) → SD-3 (IT Operations Director), SD-6 (Helpdesk Manager - Avoid Support Ticket Tsunami)
- BR-FE-003 (Executive Stakeholder Communication) → SD-1 (CISO - Eliminate Windows 10 EOL Security Risk), SD-2 (CFO - Reduce IT Infrastructure Costs), SD-5 (CIO)
- BR-FE-004 (End User Self-Service) → SD-4 (End Users - Don't Break My Work), SD-6 (Helpdesk Manager)
- BR-FE-005 (Compliance and Audit Reporting) → SD-1 (CISO), SD-7 (Enterprise Architect - Establish Governance Excellence)
- BR-FE-006 (Cost Tracking and Budget Control) → SD-2 (CFO), SD-3 (IT Operations Director)
- BR-FE-007 (Application Compatibility Management) → SD-3 (IT Operations Director), SD-4 (End Users)
- BR-FE-008 (High User Adoption and Usability) → SD-3 (IT Operations Director), SD-4 (End Users)

### Functional Requirements → Business Requirements

- FR-FE-001 through FR-FE-005 (Dashboard features) → BR-FE-001 (Real-time Visibility)
- FR-FE-006 through FR-FE-010 (Wave management) → BR-FE-002 (Operational Efficiency)
- FR-FE-011 through FR-FE-016 (Device tracking) → BR-FE-001 (Real-time Visibility), BR-FE-002 (Operational Efficiency)
- FR-FE-017 through FR-FE-020 (Application compatibility) → BR-FE-007 (Application Compatibility Management)
- FR-FE-021 through FR-FE-025 (Cost tracking) → BR-FE-006 (Cost Tracking and Budget Control)
- FR-FE-026 through FR-FE-028 (Executive dashboard) → BR-FE-003 (Executive Stakeholder Communication)
- FR-FE-029 through FR-FE-032 (End user portal) → BR-FE-004 (End User Self-Service Capabilities)

### Non-Functional Requirements → Business Requirements

- NFR-FE-P-001 through NFR-FE-P-005 (Performance) → BR-FE-008 (High User Adoption and Usability)
- NFR-FE-SEC-001 through NFR-FE-SEC-007 (Security) → BR-FE-005 (Compliance and Audit Reporting), Architecture Principle 2 (Zero Trust Security Model)
- NFR-FE-A-001 through NFR-FE-A-003 (Availability) → BR-FE-001 (Real-time Visibility), BR-FE-002 (Operational Efficiency)
- NFR-FE-S-001 through NFR-FE-S-002 (Scalability) → BR-FE-001 (Real-time Visibility)
- NFR-FE-ACC-001 through NFR-FE-ACC-003 (Accessibility) → BR-FE-008 (High User Adoption and Usability)

### Integration Requirements → Data Requirements

- INT-FE-001 (PostgreSQL Database Integration) → DR-FE-001 (MIGRATION_EVENT), DR-FE-002 (MIGRATION_WAVE), DR-FE-003 (APP_COMPATIBILITY_TEST), DR-FE-004 (COST_TRACKING), DR-FE-005 (STAKEHOLDER)
- INT-FE-002 (Azure AD Integration) → NFR-FE-SEC-001 (Azure AD authentication with MFA), NFR-FE-SEC-002 (RBAC)
- INT-FE-003 (ServiceNow Integration) → BR-FE-002 (Operational Efficiency), BR-FE-004 (End User Self-Service)
- INT-FE-004 (Azure SignalR Integration) → BR-FE-001 (Real-time Visibility), NFR-FE-P-003 (Real-time updates <5s)
- INT-FE-005 (Application Insights Integration) → NFR-FE-P-001 (Page Load Time), NFR-FE-P-002 (API Response Time), NFR-FE-A-001 (99.9% Uptime)

### Requirements → Architecture Principles

- BR-FE-001, BR-FE-005 → Principle 10 (Monitoring, Reporting, and Compliance)
- BR-FE-004, BR-FE-008 → Principle 4 (User-Centric Migration Experience)
- BR-FE-007 → Principle 5 (Application Compatibility and Testing)
- NFR-FE-SEC-001 through NFR-FE-SEC-007 → Principle 2 (Zero Trust Security Model)
- NFR-FE-SEC-002 → Principle 11 (Azure AD Integration)

---

## Next Steps

1. **Review and Approval**:
   - Distribute requirements document to stakeholders (IT Operations Director, CISO, CFO, CIO, Helpdesk Manager, Enterprise Architect)
   - Schedule requirements review meeting (Week 0, Day 2)
   - Collect feedback and incorporate revisions (Week 0, Day 3-5)
   - Obtain formal approval signatures (IT Operations Director, CIO) by end of Week 0

2. **Architecture Design**:
   - Run `/arckit.diagram` command to create architecture diagrams (C4 Context, C4 Container, Deployment diagram)
   - Document technical architecture decisions (React 18 + Next.js 14, Azure Static Web Apps, Azure Functions, PostgreSQL, Azure SignalR)
   - Create API specification (OpenAPI 3.0 spec for 28 REST endpoints + 6 WebSocket events)

3. **Data Model Review**:
   - Requirements reference existing PostgreSQL data model (deployed via Terraform)
   - No new entities required (6 entities sufficient: MIGRATION_EVENT, MIGRATION_WAVE, APP_COMPATIBILITY_TEST, COST_TRACKING, STAKEHOLDER, UPDATE_RING_ASSIGNMENT)
   - Verify data model supports all data requirements (DR-FE-001 through DR-FE-005) - CONFIRMED

4. **Sprint Planning**:
   - Break down functional requirements into user stories (FR-FE-001 → User Story: "As a PM, I want to see KPI cards so I can monitor migration progress")
   - Estimate user stories (story points, T-shirt sizes, or hours)
   - Prioritize user stories for Sprint 1-7 based on phased approach (Pilot MVP → Production Features → Stakeholder & End User Features)
   - Schedule Sprint 1 Planning meeting (Week 1, Day 1)

5. **Resolve TBDs**:
   - Gap 1 (InTune Integration): Decision required by Sprint 1 Planning (Week 0)
   - Gap 2 (Email Notification Service): Decision required by Sprint 2 Planning (Week 2)
   - Gap 3 (Reporting Database): Decision required by Sprint 3 Planning (Week 4)

6. **Procurement (if required)**:
   - If development team not yet identified, run `/arckit.sow` command to create Statement of Work (RFP) for vendor procurement
   - Requirements document serves as primary input for SOW (vendor proposals must address all functional requirements, non-functional requirements, integration requirements)

7. **Traceability Matrix Update**:
   - Update traceability matrix (traceability-matrix-v4.md) to include frontend requirements
   - Map requirements to user stories, architecture components, test cases

---

## Generation Metadata

**Generated by**: ArcKit v0.8.2 (Enterprise Architecture Governance Toolkit)
**Command**: `/arckit.requirements` (Claude Code)
**Source Document**: `projects/001-windows-11-migration-intune/frontend-application-plan.md`
**AI Model**: Claude Sonnet 4.5 (claude-sonnet-4-5-20250929)
**Generation Date**: 2025-11-21
**Template Version**: requirements-template.md v1.0
**Document Classification**: INTERNAL
**Compliance**: UK GDPR, WCAG 2.1 AA, UK Public Sector Bodies Accessibility Regulations 2018

---

**End of Document**
