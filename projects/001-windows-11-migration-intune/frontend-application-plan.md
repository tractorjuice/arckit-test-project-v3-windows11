# Frontend Application Plan: Migration Control Centre
## Windows 11 Migration with InTune (Project 001)

**Document ID**: ARC-001-PLAN-FRONTEND-v1.0
**Classification**: INTERNAL
**Status**: DRAFT
**Created**: 2025-11-21
**Owner**: IT Operations

---

## Executive Summary

This document outlines the plan for **Migration Control Centre**, a web-based frontend application for the Windows 11 migration team to manage, monitor, and report on the enterprise-wide migration of 6,000 devices from Windows 10 to Windows 11.

### Key Objectives

1. **Real-time Visibility**: Provide live dashboards showing migration progress, device status, and wave execution
2. **Operational Efficiency**: Enable migration engineers to quickly identify and remediate failures
3. **Stakeholder Communication**: Offer executive dashboards with KPIs, cost tracking, and timeline status
4. **Self-Service Portal**: Allow end users to view their migration schedule and status
5. **Compliance & Reporting**: Generate audit reports, cost analysis, and regulatory compliance evidence

### Success Criteria

- ✅ 90%+ migration team adoption within 2 weeks of launch
- ✅ <2 second page load time for all dashboards
- ✅ Real-time updates within 5 seconds of database changes
- ✅ Mobile-responsive (works on tablets for field engineers)
- ✅ 99.9% uptime during migration phases (Weeks 27-74)
- ✅ WCAG 2.1 AA accessibility compliance

---

## 1. User Personas & Needs

### 1.1 Migration Project Manager (Primary User)

**Name**: Sarah Thompson
**Role**: IT Project Manager
**Goals**: Track overall progress, manage waves, report to stakeholders, control budget
**Pain Points**: Manual status updates, spreadsheet hell, lack of real-time visibility

**Key Features Needed**:
- 📊 Executive dashboard with KPIs (success rate, timeline adherence, budget)
- 📅 Wave planning and scheduling (Gantt chart, device assignment)
- 💰 Cost tracking by category (hardware, licenses, services, training)
- 📧 Automated stakeholder reports (weekly summary emails)
- 🚨 Alert management (failure threshold notifications)

**User Stories**:
- US-FE-001: As a PM, I want to see overall migration progress so I can report to the steering committee
- US-FE-002: As a PM, I want to create migration waves so I can schedule device deployments
- US-FE-003: As a PM, I want to track costs by category so I can stay within budget

---

### 1.2 IT Operations Engineer (Power User)

**Name**: James Rodriguez
**Role**: Desktop Support Engineer
**Goals**: Monitor device migrations, troubleshoot failures, validate compliance
**Pain Points**: No drill-down visibility, manual investigation of failures

**Key Features Needed**:
- 🖥️ Device-level tracking (individual device status, event timeline)
- 🔍 Failure investigation (error logs, OneDrive sync status, app compatibility)
- 🔧 Remediation actions (retry migration, reassign wave, rollback)
- 📱 Mobile-responsive UI (for on-site troubleshooting)
- 🔔 Real-time alerts (push notifications for failures in assigned wave)

**User Stories**:
- US-FE-004: As an engineer, I want to view device migration timeline so I can troubleshoot failures
- US-FE-005: As an engineer, I want to retry failed migrations so I can resolve issues quickly
- US-FE-006: As an engineer, I want real-time alerts for failures so I can respond immediately

---

### 1.3 Executive Stakeholder (Viewer)

**Name**: David Chen (CISO) / Emma Watson (CFO)
**Role**: C-level executives
**Goals**: Monitor risk, track spend, ensure compliance, make go/no-go decisions
**Pain Points**: Too much detail, need high-level view, lack of risk visibility

**Key Features Needed**:
- 📈 Executive dashboard (success rate, timeline, budget vs actual, risk status)
- 📉 Trend analysis (migration velocity, failure rate over time)
- 💷 Financial dashboard (cost by fiscal year/quarter, ROI tracking)
- 🛡️ Compliance status (Zero Trust compliance %, BitLocker adoption, TPM 2.0)
- 📄 One-click reports (export to PDF for board meetings)

**User Stories**:
- US-FE-007: As a CISO, I want to see Zero Trust compliance % so I can assess security posture
- US-FE-008: As a CFO, I want to see budget vs actual so I can forecast remaining costs
- US-FE-009: As a CIO, I want to see migration velocity so I can predict completion date

---

### 1.4 Application Owner (Contributor)

**Name**: Lisa Patel
**Role**: Business Application Owner (Finance, HR, etc.)
**Goals**: Ensure apps work on Windows 11, approve deployments
**Pain Points**: No visibility into app testing, manual approval process

**Key Features Needed**:
- 📦 App compatibility dashboard (test results, approval status)
- ✅ Approval workflow (review test results, approve/reject with notes)
- 🚫 Blocker tracking (apps with critical issues)
- 📝 Remediation planning (capture workarounds, vendor engagement)

**User Stories**:
- US-FE-010: As an app owner, I want to see my app test results so I can decide if it's safe to deploy
- US-FE-011: As an app owner, I want to approve apps for deployment so I can control rollout
- US-FE-012: As an app owner, I want to document blocker issues so the team can prioritize fixes

---

### 1.5 End User (Self-Service)

**Name**: Any employee
**Role**: Device user
**Goals**: Know when my device will be migrated, understand downtime, get help
**Pain Points**: Uncertainty about migration date, fear of data loss

**Key Features Needed**:
- 📅 Migration schedule (my device wave, estimated date, downtime)
- ✅ Pre-migration checklist (OneDrive sync, backup instructions)
- ❓ FAQ / Help (what to expect, who to contact)
- 📞 Support contact (chat widget, ServiceNow link)

**User Stories**:
- US-FE-013: As an end user, I want to see my migration date so I can plan accordingly
- US-FE-014: As an end user, I want a pre-migration checklist so I don't lose data
- US-FE-015: As an end user, I want FAQs so I can self-service common questions

---

## 2. Key Features & Workflows

### 2.1 Real-time Migration Dashboard (Home Page)

**Priority**: MUST_HAVE (Sprint 1)
**Complexity**: HIGH

**KPI Cards** (4 cards, top of page):
```
┌──────────────┬──────────────┬──────────────┬──────────────┐
│ Total Devices│  Migrated    │ In Progress  │   Failed     │
│              │              │              │              │
│    6,000     │  4,200 (70%) │   150 (3%)   │  180 (3%)    │
│              │  ✅ On Track  │  ⏳ Active    │  ⚠️ Review   │
└──────────────┴──────────────┴──────────────┴──────────────┘
```

**Wave Progress Chart** (bar chart, horizontal):
```
Wave 1 (Pilot)         ████████████████████████ 100% (50/50)
Wave 2 (Early Adopter) ████████████████████████ 100% (200/200)
Wave 3 (Broad - Ring 1)████████████████░░░░░░░░ 75% (750/1000)
Wave 4 (Broad - Ring 2)████░░░░░░░░░░░░░░░░░░░░ 20% (100/500)
Wave 5 (Broad - Ring 3)░░░░░░░░░░░░░░░░░░░░░░░░ 0% (0/2000)
```

**Recent Migration Events** (table, last 10 events):
| Time | Device | Event Type | Status | Wave | Downtime | Action |
|------|--------|------------|--------|------|----------|--------|
| 14:32 | LAPTOP-3421 | Autopilot | Success | Wave 3 | 12 min | View |
| 14:30 | DESKTOP-8765 | OneDrive Sync | Failed | Wave 3 | - | **Retry** |
| 14:28 | LAPTOP-5432 | Post-Validation | Success | Wave 3 | 8 min | View |

**Cost Tracker Widget** (mini chart):
```
Budget: £2.8M  |  Spent: £1.9M (68%)  |  Remaining: £900K
Progress: ████████████████████████░░░░░░░░ 68%
Status: ✅ On Budget
```

**Alert Notifications Banner** (top of page, dismissible):
```
⚠️ ALERT: Wave 3 has 15 failed migrations in the last hour. Review required.
ℹ️ INFO: Wave 4 will start on 2025-12-01 at 08:00 UTC.
```

**Real-time Updates**:
- WebSocket connection for live updates
- Auto-refresh every 30 seconds (configurable)
- Visual notification (pulse animation) when data changes

---

### 2.2 Wave Management

**Priority**: MUST_HAVE (Sprint 1)
**Complexity**: HIGH

#### Wave List Page (`/waves`)

**Table View**:
| Wave # | Name | Type | Devices | Status | Success Rate | Start Date | End Date | Actions |
|--------|------|------|---------|--------|--------------|------------|----------|---------|
| 1 | Pilot Wave | Pilot | 50 | ✅ Completed | 98% | 2025-11-15 | 2025-11-20 | View / Report |
| 2 | Early Adopters | Early Adopter | 200 | ✅ Completed | 95% | 2025-11-25 | 2025-12-05 | View / Report |
| 3 | Ring 1 Deployment | Production | 1000 | ⏳ In Progress | 75% | 2025-12-10 | 2025-12-20 | View / Pause / Edit |
| 4 | Ring 2 Deployment | Production | 500 | 📅 Planned | - | 2025-12-20 | 2026-01-10 | View / Edit / Start |

**Actions**:
- Create New Wave (button, top right)
- Edit Wave (pencil icon)
- View Details (eye icon)
- Pause/Resume (pause icon, in progress waves only)
- Start Wave (play icon, planned waves only)
- Export Report (download icon)

#### Create/Edit Wave Form

**Form Fields**:
```
Wave Name*: [___________________________________]
Wave Type*: [Dropdown: Pilot / Early Adopter / Production]
Wave Number*: [__] (auto-incremented)

Schedule:
  Start Date*: [Date Picker] [Time Picker]
  End Date*: [Date Picker] [Time Picker]

Target Device Count*: [____] devices

Device Assignment:
  ○ Auto-assign by Update Ring (Ring 1-4)
  ○ Manual assignment (upload CSV or select devices)

  [Upload CSV] or [Select Devices] button

Wave Description:
[Text area - describe purpose, special considerations]

Owner*: [Dropdown: Sarah Thompson / James Rodriguez / ...]

Notifications:
  ☑ Email stakeholders on wave start
  ☑ Alert on failure rate > 5%
  ☐ Daily summary report

[Cancel] [Save Draft] [Create Wave]
```

#### Wave Detail Page (`/waves/:id`)

**Tabs**:
1. **Overview** - KPIs, timeline, device count
2. **Devices** - List of devices in wave with status
3. **Events** - Migration event timeline
4. **Metrics** - Success rate chart, downtime chart
5. **Notes** - Comments, issues, resolution notes

**Overview Tab**:
```
Wave 3: Ring 1 Deployment
Status: ⏳ In Progress  |  Owner: Sarah Thompson  |  Started: 2025-12-10

┌──────────────┬──────────────┬──────────────┬──────────────┐
│ Total Devices│  Completed   │ In Progress  │   Failed     │
│    1,000     │  750 (75%)   │   50 (5%)    │   20 (2%)    │
└──────────────┴──────────────┴──────────────┴──────────────┘

Timeline:
  Scheduled Start: 2025-12-10 08:00 UTC
  Actual Start:    2025-12-10 08:15 UTC ⚠️ 15 min delay
  Scheduled End:   2025-12-20 18:00 UTC
  Estimated End:   2025-12-21 12:00 UTC ⚠️ 18 hr delay
  Progress:        75% (750/1000)

Metrics:
  Success Rate:    97.4% ✅ (750 success / 770 completed)
  Avg Downtime:    12 minutes
  Max Downtime:    45 minutes (LAPTOP-8765 - app compatibility issue)
```

---

### 2.3 Device Tracking

**Priority**: MUST_HAVE (Sprint 2)
**Complexity**: MEDIUM

#### Device List Page (`/devices`)

**Search & Filter Bar**:
```
🔍 Search: [________________] (hostname, user, serial, IP)

Filters:
  Status: [All ▼] (All, Success, Failed, In Progress, Pending)
  Wave: [All ▼] (Wave 1, Wave 2, Wave 3, ...)
  Update Ring: [All ▼] (Ring 1, Ring 2, Ring 3, Ring 4)
  Date Range: [Last 7 Days ▼]

[Clear Filters] [Export CSV]
```

**Device Table** (paginated, 100 rows per page):
| Hostname | User | Wave | Status | Last Event | Compliance | Downtime | Actions |
|----------|------|------|--------|------------|------------|----------|---------|
| LAPTOP-3421 | j.smith | Wave 3 | ✅ Success | Post-Validation | ✅ Pass | 12 min | View / Retry |
| DESKTOP-8765 | a.jones | Wave 3 | ❌ Failed | OneDrive Sync | ⚠️ Partial | - | **View** / **Retry** |
| LAPTOP-5432 | m.brown | Wave 4 | 📅 Pending | - | - | - | View / Reassign |

**Bulk Actions** (checkbox column):
- Reassign to Wave (bulk)
- Retry Migration (bulk)
- Export Selected (CSV)

#### Device Detail Page (`/devices/:id`)

**Device Information Card**:
```
Hostname: DESKTOP-8765
User: Alice Jones (a.jones@example.com)
Serial Number: SN123456789
IP Address: 10.100.2.45

Migration Status: ❌ Failed
Wave: Wave 3 (Ring 1 Deployment)
Update Ring: Ring 1
Last Updated: 2025-12-12 14:30 UTC

Compliance Status:
  TPM 2.0: ✅ Present
  Secure Boot: ✅ Enabled
  BitLocker: ❌ Not Enabled ⚠️
  OneDrive KFM: ⚠️ Partial Sync (82%)

Hardware:
  CPU: Intel Core i7-1165G7
  RAM: 16 GB
  Storage: 512 GB SSD (320 GB free)
  Windows 11 Compatible: ✅ Yes
```

**Migration Event Timeline** (vertical timeline):
```
⏰ 2025-12-12 14:00 UTC
   ✅ Pre-Check Started
   Device passed hardware compatibility check

⏰ 2025-12-12 14:05 UTC
   ✅ Pre-Check Completed
   All prerequisites met

⏰ 2025-12-12 14:10 UTC
   ✅ Autopilot Started
   Provisioning package applied

⏰ 2025-12-12 14:25 UTC
   ✅ Autopilot Completed
   Device joined to Azure AD

⏰ 2025-12-12 14:30 UTC
   ❌ OneDrive Sync Failed
   Error: OneDrive client not responding
   Failure Reason: OneDrive Known Folder Move timed out after 10 minutes

   [View Full Logs] [Retry OneDrive Sync] [Escalate to Support]
```

**Actions** (button group):
- [Retry Migration] (retriggers last failed event)
- [Reassign Wave] (move to different wave)
- [Rollback] (restore previous Windows 10 state - DANGER)
- [Create Incident] (open ServiceNow ticket)
- [Export Device Report] (PDF with full timeline)

---

### 2.4 Application Compatibility

**Priority**: SHOULD_HAVE (Sprint 3)
**Complexity**: MEDIUM

#### App Compatibility Dashboard (`/apps`)

**Summary Cards**:
```
┌──────────────┬──────────────┬──────────────┬──────────────┐
│ Total Apps   │ Tested       │ Approved     │  Blocked     │
│     125      │  110 (88%)   │  95 (76%)    │   8 (6%)     │
└──────────────┴──────────────┴──────────────┴──────────────┘
```

**App List Table**:
| App Name | Vendor | Version | Test Result | Compatibility Score | Approved | Blocker | Actions |
|----------|--------|---------|-------------|---------------------|----------|---------|---------|
| SAP GUI | SAP | 7.70 | ✅ Pass | 95/100 | ✅ Yes | - | View |
| Adobe Acrobat Pro | Adobe | 2023.006 | ⚠️ Partial | 75/100 | ⏳ Pending | Print issue | **View** / **Approve** |
| Legacy Finance App | InHouse | 3.2 | ❌ Fail | 30/100 | ❌ No | Won't start | **View** / **Remediate** |

**Filter Bar**:
```
Status: [All ▼] (Pass, Fail, Partial, Blocked)
Approval: [All ▼] (Approved, Pending, Rejected)
Tested By: [All ▼]
```

#### App Detail Page (`/apps/:id`)

**App Information**:
```
Application Name: Adobe Acrobat Pro
Vendor: Adobe Systems Inc.
Version: 2023.006.20360
Business Owner: Lisa Patel (Finance)

Test Summary:
  Test Environment: Lab
  Test Date: 2025-11-18
  Test Result: ⚠️ Partial Pass
  Compatibility Score: 75/100
  Tested By: James Rodriguez

  Test Notes:
  - Application launches successfully ✅
  - Document viewing works ✅
  - Document editing works ✅
  - Printing fails with error "Print spooler not responding" ❌
  - PDF creation works ✅

Blocker Issues:
  1. Print functionality broken (Severity: HIGH)
     - Impact: Users cannot print PDFs
     - Workaround: Use Microsoft Print to PDF
     - Resolution: Contact Adobe support, escalated 2025-11-19

Remediation Plan:
  - Adobe investigating printer driver compatibility
  - Expected fix in version 2023.008 (ETA: 2025-12-15)
  - Alternative: Deploy workaround script to map Print to PDF

Approval Status: ⏳ Pending Approval
Approval History:
  - 2025-11-20: Lisa Patel requested additional testing
  - 2025-11-22: Retest scheduled with latest printer drivers
```

**Approval Workflow** (if user has approval permission):
```
Approve for Deployment?

○ ✅ Approve (deploy to all waves)
○ ⚠️ Approve with Workaround (deploy with print workaround)
○ ❌ Reject (block deployment until fix available)

Approval Notes:
[Text area - capture decision rationale]

[Cancel] [Submit Approval]
```

---

### 2.5 Cost Tracking

**Priority**: SHOULD_HAVE (Sprint 3)
**Complexity**: LOW

#### Cost Dashboard (`/costs`)

**Financial Summary**:
```
Total Budget: £2.8M
Total Spent: £1.9M (68%)
Remaining: £900K (32%)

Status: ✅ On Budget
Burn Rate: £250K/month
Projected Final Cost: £2.75M ✅ Under budget by £50K
```

**Cost by Category** (pie chart):
```
Hardware (£1.2M, 43%)
Licenses (£450K, 16%)
Professional Services (£350K, 13%)
Training (£150K, 5%)
Support (£100K, 4%)
Contingency (£550K, 20% - £100K spent)
```

**Cost Timeline** (area chart, monthly):
```
Nov 2025: £350K
Dec 2025: £450K
Jan 2026: £400K
Feb 2026: £300K
...
```

**Cost by Fiscal Year/Quarter** (table):
| Fiscal Period | Budget | Actual | Variance | % Spent |
|---------------|--------|--------|----------|---------|
| FY 2025/26 Q3 | £800K | £750K | +£50K ✅ | 94% |
| FY 2025/26 Q4 | £900K | £600K | +£300K ✅ | 67% |
| FY 2026/27 Q1 | £600K | £0 | +£600K | 0% |

#### Cost Entry Form (`/costs/new`)

**Form**:
```
Cost Category*: [Dropdown: Hardware / Licenses / Professional Services / Training / Support / Other]
Cost Description*: [_________________________________]
Cost Amount (GBP)*: [£ _________]
Cost Date*: [Date Picker]

Budget Code: [_________]
Purchase Order Number: [_________]
Vendor Name: [_________________________________]

Device (optional): [Search for device...]
Migration Wave (optional): [Dropdown: Wave 1 / Wave 2 / ...]

Approved By*: [Dropdown: CFO / CIO / ...]
Approval Date: [Date Picker]

Fiscal Year*: [Dropdown: 2025/26 / 2026/27]
Fiscal Quarter*: [Dropdown: Q1 / Q2 / Q3 / Q4]

[Cancel] [Save]
```

---

### 2.6 Stakeholder Portal

**Priority**: MAY_HAVE (Sprint 4)
**Complexity**: LOW

#### Executive Dashboard (`/executive`)

**High-Level KPIs** (large cards, simplified):
```
┌─────────────────────────────────────────────────────────┐
│         MIGRATION PROGRESS: 70% COMPLETE                │
│  ████████████████████████████████░░░░░░░░░░░░░░░       │
│  4,200 / 6,000 devices migrated                        │
│  ✅ On Track for completion by March 2026              │
└─────────────────────────────────────────────────────────┘

┌──────────────┬──────────────┬──────────────┬──────────────┐
│ Success Rate │ Budget Status│ Risk Level   │ Compliance   │
│              │              │              │              │
│   97.4% ✅   │ £1.9M / £2.8M│  🟡 MEDIUM   │  Zero Trust  │
│   Target 95% │ ✅ On Budget │  2 HIGH risks│  85% ✅      │
└──────────────┴──────────────┴──────────────┴──────────────┘
```

**Trend Charts** (simplified, last 30 days):
- Migration Velocity (devices/day)
- Failure Rate (%)
- Cost Burn Rate (£/week)

**Risk Summary** (top 3 risks from risk register):
```
⚠️ HIGH: Application compatibility blocking 8 apps (R-012)
   Mitigation: Workarounds deployed, vendor engagement ongoing

⚠️ MEDIUM: Timeline slippage risk due to Wave 3 delays (R-003)
   Mitigation: Additional resources allocated, catch-up plan in place
```

**One-Click Reports**:
- [📄 Download Executive Summary (PDF)]
- [📄 Download Board Report (PDF)]
- [📊 Download Cost Analysis (Excel)]

---

### 2.7 End User Self-Service Portal

**Priority**: MAY_HAVE (Sprint 5)
**Complexity**: LOW

#### My Migration Status (`/my-device`)

**User Authentication**:
- Azure AD Single Sign-On (user logs in with corporate credentials)
- Automatically detects user's primary device from InTune

**Device Status Card**:
```
Your Device: LAPTOP-3421
User: John Smith (j.smith@example.com)

Migration Status: 📅 Scheduled
Wave: Wave 4 (Ring 2 Deployment)
Estimated Migration Date: 2025-12-20 to 2026-01-10
Expected Downtime: 15-30 minutes

What to Expect:
  1. You will receive an email 48 hours before migration
  2. Your device will restart automatically
  3. Save all work and close applications before scheduled time
  4. Migration typically takes 15-30 minutes
  5. Your files will be preserved via OneDrive Known Folder Move
```

**Pre-Migration Checklist**:
```
☑ OneDrive Sync Status: ✅ All Files Synced
☐ Backup Important Files: [Download Backup Guide]
☐ Review Browser Bookmarks: [Export Bookmarks]
☐ Note Installed Applications: [View App List]
☐ Confirm Manager Approval: ✅ Approved by M. Brown
```

**FAQ Section**:
```
❓ Will I lose my files?
   No, all files are backed up to OneDrive before migration.

❓ What if migration fails?
   Your device will automatically rollback to Windows 10.

❓ Who do I contact for help?
   [Contact IT Support] or call 0800-123-4567
```

**Support Contact**:
- [💬 Chat with Support] (live chat widget)
- [📧 Email Support] (opens email client)
- [🎫 Create ServiceNow Ticket]

---

## 3. Technical Architecture

### 3.1 Technology Stack (Recommended)

#### Frontend

**Framework**: React 18 + Next.js 14 (App Router)
- **Why**: Modern, performant, excellent developer experience, SSR/SSG support
- **Alternatives**: Vue.js 3 (lighter), Blazor WebAssembly (C# ecosystem)

**UI Library**: Shadcn/ui + Tailwind CSS
- **Why**: Unstyled, accessible components + utility-first CSS
- **Alternatives**: Material-UI (opinionated), Ant Design (enterprise-focused)

**State Management**:
- React Query (TanStack Query) - server state, caching, mutations
- Zustand - lightweight client state (UI state, filters, user preferences)
- **Why**: React Query handles 90% of state management needs (server data)

**Charts**: Recharts or Apache ECharts
- **Why**: React-native, responsive, well-documented
- **Alternatives**: Chart.js (simpler), D3.js (more powerful)

**Real-time**: Socket.io (client) or Azure SignalR
- **Why**: WebSocket for live updates (migration events, alerts)
- **Polling Fallback**: React Query with `refetchInterval` for older browsers

**Forms**: React Hook Form + Zod (schema validation)
- **Why**: Performant, type-safe validation, great DX

**Authentication**: MSAL.js (Microsoft Authentication Library)
- **Why**: Native Azure AD (Entra ID) integration

#### Backend

**API**: Node.js + Express or Next.js API Routes
- **Why**: JavaScript across stack, serverless-friendly
- **Alternatives**: ASP.NET Core (C#, stronger typing), FastAPI (Python, ML integration)

**ORM**: Prisma or node-postgres
- **Why**: Type-safe database queries, excellent PostgreSQL support
- **Alternatives**: TypeORM, Sequelize

**WebSockets**: Socket.io (server) or Azure SignalR Service
- **Why**: Managed service reduces ops burden (SignalR), or self-hosted (Socket.io)

#### Database

**Primary**: Azure Database for PostgreSQL Flexible Server (already deployed)
- 6-entity data model (MIGRATION_EVENT, MIGRATION_WAVE, etc.)
- Private endpoint access

**Caching**: Azure Cache for Redis (optional, for high-traffic dashboards)
- Cache aggregated metrics (success rate, device counts)
- TTL: 30 seconds

#### Hosting

**Frontend**: Azure Static Web Apps (recommended) or Azure App Service
- **Why Static Web Apps**:
  - Free tier available
  - Built-in CI/CD (GitHub Actions)
  - Global CDN
  - Custom domains + SSL
  - Azure Functions integration
  - Staging environments

**Backend API**: Azure Functions (consumption plan) or Azure App Service
- **Why Functions**: Serverless, pay-per-execution, auto-scaling
- **Why App Service**: Always-on, WebSocket support, easier deployment

**CDN**: Azure Front Door or Azure CDN
- **Why**: Global low latency, DDoS protection, Web Application Firewall (WAF)

#### Monitoring

**Application Insights**: For frontend and backend monitoring
- Page views, errors, performance metrics
- User telemetry

**Azure Monitor**: For infrastructure monitoring
- PostgreSQL metrics (already configured in Terraform)
- API response times
- WebSocket connection health

### 3.2 Architecture Diagram

```
┌─────────────────────────────────────────────────────────────┐
│                    End Users / Admins                        │
│               (Browser: Desktop / Mobile)                    │
└───────────────────────┬─────────────────────────────────────┘
                        │ HTTPS
                        ▼
┌─────────────────────────────────────────────────────────────┐
│          Azure Front Door (CDN + WAF)                        │
│          - SSL/TLS Termination                               │
│          - DDoS Protection                                   │
│          - Geo-distributed caching                           │
└───────────────────────┬─────────────────────────────────────┘
                        │
                        ▼
┌─────────────────────────────────────────────────────────────┐
│     Azure Static Web Apps (React/Next.js Frontend)          │
│     ┌────────────────────────────────────────────────────┐  │
│     │ - Static assets (HTML, CSS, JS, images)           │  │
│     │ - Next.js SSR/SSG pages                            │  │
│     │ - Azure AD authentication (MSAL.js)                │  │
│     │ - Client-side routing (React Router)               │  │
│     └────────────────────────────────────────────────────┘  │
└───────────────────────┬─────────────────────────────────────┘
                        │ API calls (REST + WebSocket)
                        ▼
┌─────────────────────────────────────────────────────────────┐
│   Azure Functions (API Backend) - Consumption Plan          │
│   ┌────────────────────────────────────────────────────┐    │
│   │ /api/devices           - Device CRUD               │    │
│   │ /api/waves             - Wave management           │    │
│   │ /api/events            - Migration events          │    │
│   │ /api/apps              - App compatibility         │    │
│   │ /api/costs             - Cost tracking             │    │
│   │ /api/stakeholders      - Stakeholder mgmt          │    │
│   │ /api/reports           - Report generation         │    │
│   │ /api/dashboard         - Dashboard aggregates      │    │
│   │ /ws/migrations         - WebSocket for real-time   │    │
│   └────────────────────────────────────────────────────┘    │
│                                                               │
│   Features:                                                   │
│   - JWT token validation (Azure AD)                          │
│   - Role-based access control (RBAC)                         │
│   - Input validation (Zod schemas)                           │
│   - Rate limiting (per user/IP)                              │
│   - Caching (Redis)                                          │
└───────────────────────┬─────────────────────────────────────┘
                        │ SQL queries (node-postgres/Prisma)
                        ▼
┌─────────────────────────────────────────────────────────────┐
│   Azure Database for PostgreSQL Flexible Server             │
│   ┌────────────────────────────────────────────────────┐    │
│   │ Schema: public                                     │    │
│   │                                                     │    │
│   │ Tables (6):                                        │    │
│   │ - migration_wave (wave planning)                   │    │
│   │ - migration_event (device events)                  │    │
│   │ - app_compatibility_test (app testing)             │    │
│   │ - cost_tracking (budget tracking) [CONFIDENTIAL]   │    │
│   │ - stakeholder (contacts) [CONFIDENTIAL - PII]      │    │
│   │ - update_ring_assignment (update rings)            │    │
│   │                                                     │    │
│   │ Indexes: 14 performance indexes                    │    │
│   │ Constraints: 4 foreign keys                        │    │
│   └────────────────────────────────────────────────────┘    │
│                                                               │
│   - Private endpoint access (no public internet)             │
│   - UK South region (data sovereignty)                       │
│   - 35-day backups, geo-redundant                            │
└─────────────────────────────────────────────────────────────┘
                        │
                        ▼
┌─────────────────────────────────────────────────────────────┐
│              Azure Monitor / Log Analytics                   │
│              Application Insights                            │
│   - Frontend performance (page load, errors)                 │
│   - Backend performance (API latency, errors)                │
│   - Database performance (query time, connections)           │
│   - Real-time alerts (failures, downtime)                    │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│              Optional: Azure Cache for Redis                 │
│   - Cache dashboard aggregates (30s TTL)                     │
│   - Cache device counts (1m TTL)                             │
│   - Session storage (WebSocket connections)                  │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│              Optional: Azure SignalR Service                 │
│   - Managed WebSocket connections                            │
│   - Broadcast migration events to clients                    │
│   - 1M messages/day free tier                                │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│              Integration: ServiceNow                         │
│   - Incident creation API (failed migrations)                │
│   - CMDB updates (device CI records)                         │
│   - Change request linking (migration wave → change)         │
└─────────────────────────────────────────────────────────────┘
```

---

### 3.3 API Design

**REST API Endpoints** (all `/api/*`):

#### Devices
```
GET    /api/devices              - List devices (paginated, filterable)
GET    /api/devices/:id          - Get device details
POST   /api/devices/:id/retry    - Retry migration
PATCH  /api/devices/:id/wave     - Reassign device to wave
GET    /api/devices/:id/events   - Get device event timeline
POST   /api/devices/:id/incident - Create ServiceNow incident
```

#### Waves
```
GET    /api/waves                - List waves
GET    /api/waves/:id            - Get wave details
POST   /api/waves                - Create wave
PATCH  /api/waves/:id            - Update wave
DELETE /api/waves/:id            - Delete wave (soft delete)
POST   /api/waves/:id/start      - Start wave execution
POST   /api/waves/:id/pause      - Pause wave execution
GET    /api/waves/:id/devices    - List devices in wave
POST   /api/waves/:id/assign     - Bulk assign devices to wave
GET    /api/waves/:id/metrics    - Get wave metrics
```

#### Events
```
GET    /api/events               - List migration events (filterable)
GET    /api/events/:id           - Get event details
POST   /api/events               - Create event (from InTune webhook)
GET    /api/events/recent        - Get recent events (for dashboard)
```

#### Applications
```
GET    /api/apps                 - List applications
GET    /api/apps/:id             - Get app details
POST   /api/apps/:id/test        - Submit test result
POST   /api/apps/:id/approve     - Approve app for deployment
POST   /api/apps/:id/reject      - Reject app deployment
PATCH  /api/apps/:id/remediation - Update remediation plan
```

#### Costs
```
GET    /api/costs                - List cost records (filterable)
GET    /api/costs/:id            - Get cost details
POST   /api/costs                - Create cost record
PATCH  /api/costs/:id            - Update cost record
DELETE /api/costs/:id            - Delete cost record
GET    /api/costs/summary        - Get cost summary (by category, FY, quarter)
GET    /api/costs/chart          - Get cost chart data (timeline)
```

#### Stakeholders
```
GET    /api/stakeholders         - List stakeholders
GET    /api/stakeholders/:id     - Get stakeholder details
POST   /api/stakeholders         - Create stakeholder
PATCH  /api/stakeholders/:id     - Update stakeholder
DELETE /api/stakeholders/:id     - Delete stakeholder
PATCH  /api/stakeholders/:id/notifications - Update notification preferences
```

#### Dashboard
```
GET    /api/dashboard/kpis       - Get KPI cards (total, migrated, in progress, failed)
GET    /api/dashboard/waves      - Get wave progress chart data
GET    /api/dashboard/events     - Get recent events (last 10)
GET    /api/dashboard/costs      - Get cost widget data
GET    /api/dashboard/alerts     - Get active alerts
```

#### Reports
```
POST   /api/reports/executive    - Generate executive summary (PDF)
POST   /api/reports/wave/:id     - Generate wave report (PDF)
POST   /api/reports/device/:id   - Generate device report (PDF)
POST   /api/reports/cost         - Generate cost analysis (Excel)
GET    /api/reports/:id/download - Download generated report
```

#### User
```
GET    /api/user/profile         - Get user profile (from Azure AD)
GET    /api/user/device          - Get user's primary device (for self-service portal)
GET    /api/user/permissions     - Get user RBAC permissions
```

**WebSocket Events** (`/ws/migrations`):

Server → Client:
```
migration:started        - Migration started for device
migration:progress       - Migration progress update
migration:completed      - Migration completed (success/failure)
wave:started             - Wave execution started
wave:completed           - Wave execution completed
alert:triggered          - Alert triggered (failure threshold, etc.)
cost:added               - Cost record added (if user watching costs)
```

Client → Server:
```
subscribe:devices        - Subscribe to device updates (device IDs)
subscribe:waves          - Subscribe to wave updates (wave IDs)
unsubscribe:devices      - Unsubscribe from device updates
unsubscribe:waves        - Unsubscribe from wave updates
```

---

### 3.4 Security

#### Authentication

**Azure AD (Entra ID)** with MSAL.js:
```javascript
// Frontend: MSAL configuration
const msalConfig = {
  auth: {
    clientId: '<azure-ad-app-id>',
    authority: 'https://login.microsoftonline.com/<tenant-id>',
    redirectUri: 'https://migration.example.com'
  },
  cache: {
    cacheLocation: 'localStorage',
    storeAuthStateInCookie: false
  }
};

// Scopes for API access
const loginRequest = {
  scopes: ['User.Read', 'api://migration-api/.default']
};
```

**Backend: JWT Token Validation**:
```javascript
// Azure Functions middleware
const jwt = require('jsonwebtoken');
const jwksClient = require('jwks-rsa');

// Validate Azure AD JWT token
async function validateToken(token) {
  const decoded = jwt.decode(token, { complete: true });
  const client = jwksClient({
    jwksUri: `https://login.microsoftonline.com/${tenantId}/discovery/v2.0/keys`
  });

  const key = await client.getSigningKey(decoded.header.kid);
  const publicKey = key.getPublicKey();

  return jwt.verify(token, publicKey, {
    audience: '<azure-ad-app-id>',
    issuer: `https://sts.windows.net/${tenantId}/`
  });
}
```

#### Authorization (RBAC)

**Roles**:
1. **Admin** - Full access (PM, architects)
2. **Engineer** - Read/write devices, waves, apps (IT ops)
3. **Stakeholder** - Read-only dashboards, reports (executives)
4. **AppOwner** - Read/write app compatibility, approval (app owners)
5. **EndUser** - Read own device status (self-service portal)

**Azure AD Group Mapping**:
```
Azure AD Group                  → Application Role
─────────────────────────────────────────────────
Migration-Admins                → Admin
Migration-Engineers             → Engineer
Migration-Stakeholders          → Stakeholder
Migration-AppOwners             → AppOwner
All-Employees                   → EndUser
```

**API Authorization Middleware**:
```javascript
// Check user role from JWT token claims
function requireRole(role) {
  return (req, res, next) => {
    const userRoles = req.user.roles || []; // From JWT 'roles' claim
    if (userRoles.includes(role) || userRoles.includes('Admin')) {
      next();
    } else {
      res.status(403).json({ error: 'Forbidden' });
    }
  };
}

// Usage
app.get('/api/costs', requireRole('Admin'), getCosts);
app.post('/api/waves', requireRole('Admin'), createWave);
app.post('/api/devices/:id/retry', requireRole('Engineer'), retryMigration);
app.get('/api/dashboard/kpis', requireRole('Stakeholder'), getDashboardKPIs);
```

#### Data Protection

**Row-Level Security (PostgreSQL RLS)**:
```sql
-- Enable RLS on CONFIDENTIAL tables
ALTER TABLE cost_tracking ENABLE ROW LEVEL SECURITY;
ALTER TABLE stakeholder ENABLE ROW LEVEL SECURITY;

-- Policy: Admins see all, others see nothing (enforce via API)
CREATE POLICY cost_tracking_policy ON cost_tracking
  FOR SELECT
  USING (current_setting('app.user_role', true) = 'Admin');
```

**Input Validation (Zod)**:
```typescript
// Frontend and backend schema validation
import { z } from 'zod';

const createWaveSchema = z.object({
  wave_name: z.string().min(3).max(100),
  wave_type: z.enum(['Pilot', 'Early Adopter', 'Production']),
  wave_number: z.number().int().positive(),
  scheduled_start: z.date(),
  scheduled_end: z.date(),
  target_device_count: z.number().int().positive(),
  owner: z.string().uuid()
});

// Backend validation
app.post('/api/waves', async (req, res) => {
  const result = createWaveSchema.safeParse(req.body);
  if (!result.success) {
    return res.status(400).json({ error: result.error.errors });
  }
  // Proceed with validated data
});
```

**Rate Limiting**:
```javascript
// Azure Functions rate limiting (via Redis)
const rateLimit = require('express-rate-limit');
const RedisStore = require('rate-limit-redis');

const limiter = rateLimit({
  store: new RedisStore({
    client: redisClient
  }),
  windowMs: 15 * 60 * 1000, // 15 minutes
  max: 100, // 100 requests per window per user
  keyGenerator: (req) => req.user.sub // User ID from JWT
});

app.use('/api/', limiter);
```

**HTTPS Only**:
- Azure Static Web Apps enforces HTTPS by default
- Redirect HTTP → HTTPS
- HSTS header enabled

**CORS Configuration**:
```javascript
// Allow only frontend domain
const cors = require('cors');
app.use(cors({
  origin: 'https://migration.example.com',
  credentials: true
}));
```

---

### 3.5 Performance Optimization

#### Frontend

**Code Splitting**:
```javascript
// Next.js automatic code splitting
// pages/waves/[id].tsx → separate bundle

// Dynamic imports for heavy components
const WaveChart = dynamic(() => import('@/components/WaveChart'), {
  loading: () => <Spinner />,
  ssr: false // Client-side only
});
```

**Image Optimization**:
```jsx
// Next.js Image component (automatic WebP, lazy loading)
import Image from 'next/image';

<Image
  src="/dashboard-screenshot.png"
  width={1200}
  height={800}
  alt="Dashboard"
  loading="lazy"
/>
```

**React Query Caching**:
```typescript
// Cache dashboard KPIs for 30 seconds
const { data: kpis } = useQuery({
  queryKey: ['dashboard', 'kpis'],
  queryFn: fetchDashboardKPIs,
  staleTime: 30000, // 30 seconds
  refetchInterval: 30000 // Auto-refresh every 30 seconds
});
```

**Virtual Scrolling** (large device tables):
```jsx
import { useVirtualizer } from '@tanstack/react-virtual';

// Render only visible rows (100 visible, 10000 total)
const virtualizer = useVirtualizer({
  count: devices.length,
  getScrollElement: () => parentRef.current,
  estimateSize: () => 50, // 50px per row
  overscan: 10
});
```

#### Backend

**Database Query Optimization**:
```sql
-- Use indexes (already created in Terraform schema)
-- Index on device_id for fast lookups
CREATE INDEX idx_migration_event_device_id ON migration_event(device_id);

-- Index on wave_id for wave filtering
CREATE INDEX idx_migration_event_wave_id ON migration_event(migration_wave_id);

-- Composite index for common query pattern
CREATE INDEX idx_migration_event_status_timestamp
  ON migration_event(migration_status, event_timestamp DESC);
```

**Connection Pooling**:
```javascript
// node-postgres connection pool
const { Pool } = require('pg');

const pool = new Pool({
  host: process.env.POSTGRES_HOST,
  port: 5432,
  database: 'migration_db',
  user: process.env.POSTGRES_USER,
  password: process.env.POSTGRES_PASSWORD,
  max: 20, // Max 20 connections in pool
  idleTimeoutMillis: 30000,
  connectionTimeoutMillis: 2000
});
```

**Redis Caching** (optional, for high traffic):
```javascript
// Cache dashboard aggregates for 30 seconds
const redis = require('redis');
const client = redis.createClient({
  url: process.env.REDIS_URL
});

async function getDashboardKPIs() {
  const cacheKey = 'dashboard:kpis';
  const cached = await client.get(cacheKey);

  if (cached) {
    return JSON.parse(cached);
  }

  // Query database
  const kpis = await db.query(`
    SELECT
      COUNT(*) as total_devices,
      COUNT(*) FILTER (WHERE migration_status = 'Success') as migrated,
      COUNT(*) FILTER (WHERE migration_status = 'In Progress') as in_progress,
      COUNT(*) FILTER (WHERE migration_status = 'Failed') as failed
    FROM migration_event
  `);

  // Cache for 30 seconds
  await client.setEx(cacheKey, 30, JSON.stringify(kpis));

  return kpis;
}
```

**CDN Caching** (Azure Front Door):
- Cache static assets (JS, CSS, images) for 1 year
- Cache API responses (dashboard KPIs) for 30 seconds (with revalidation)

---

### 3.6 Real-time Updates

**WebSocket Architecture**:

**Option 1: Self-hosted Socket.io**
```javascript
// Backend: Azure Functions with Socket.io
const { Server } = require('socket.io');
const io = new Server(server, {
  cors: {
    origin: 'https://migration.example.com',
    credentials: true
  }
});

// Authenticate WebSocket connection
io.use((socket, next) => {
  const token = socket.handshake.auth.token;
  const user = validateToken(token);
  if (user) {
    socket.user = user;
    next();
  } else {
    next(new Error('Unauthorized'));
  }
});

// Handle subscriptions
io.on('connection', (socket) => {
  console.log(`User ${socket.user.name} connected`);

  // Subscribe to device updates
  socket.on('subscribe:devices', (deviceIds) => {
    deviceIds.forEach(id => socket.join(`device:${id}`));
  });

  // Subscribe to wave updates
  socket.on('subscribe:waves', (waveIds) => {
    waveIds.forEach(id => socket.join(`wave:${id}`));
  });
});

// Broadcast migration event (from InTune webhook handler)
function broadcastMigrationEvent(event) {
  io.to(`device:${event.device_id}`).emit('migration:progress', event);
  io.to(`wave:${event.migration_wave_id}`).emit('wave:progress', event);
}
```

**Option 2: Azure SignalR Service (Managed)**
```javascript
// Backend: Azure Functions with SignalR bindings
module.exports = async function (context, req) {
  // SignalR negotiate endpoint
  return {
    url: context.bindings.signalRConnectionInfo.url,
    accessToken: context.bindings.signalRConnectionInfo.accessToken
  };
};

// Frontend: Connect to SignalR
import * as signalR from '@microsoft/signalr';

const connection = new signalR.HubConnectionBuilder()
  .withUrl('/api/negotiate', {
    accessTokenFactory: () => msalInstance.getAccessToken()
  })
  .withAutomaticReconnect()
  .build();

connection.on('migration:progress', (event) => {
  // Update UI with new event
  queryClient.invalidateQueries(['devices', event.device_id]);
});

await connection.start();

// Subscribe to device updates
await connection.invoke('SubscribeToDevices', [deviceId1, deviceId2]);
```

**Recommendation**: Use Azure SignalR Service (managed) for production:
- No WebSocket infrastructure to manage
- Auto-scaling
- Global distribution
- Free tier: 1M messages/day, 20 concurrent connections
- Standard tier: 100K concurrent connections, 1B messages/month

---

### 3.7 Accessibility (WCAG 2.1 AA)

**Semantic HTML**:
```jsx
// Use semantic elements
<nav aria-label="Main navigation">
  <ul>
    <li><a href="/dashboard">Dashboard</a></li>
    <li><a href="/waves">Waves</a></li>
  </ul>
</nav>

<main>
  <h1>Migration Dashboard</h1>
  <section aria-labelledby="kpis-heading">
    <h2 id="kpis-heading">Key Performance Indicators</h2>
    {/* KPI cards */}
  </section>
</main>
```

**Keyboard Navigation**:
- All interactive elements focusable via Tab
- Focus indicators (outline) visible
- Skip to main content link
- Escape to close modals

**Screen Reader Support**:
```jsx
// ARIA labels for charts
<div role="img" aria-label="Wave progress bar chart showing 75% completion">
  <BarChart data={waveData} />
</div>

// Live regions for real-time updates
<div aria-live="polite" aria-atomic="true">
  {alert && <p>New alert: {alert.message}</p>}
</div>

// Button labels
<button aria-label="Retry migration for device LAPTOP-3421">
  <RetryIcon />
</button>
```

**Color Contrast**:
- Minimum contrast ratio 4.5:1 (text)
- Minimum contrast ratio 3:1 (large text, icons)
- Use Tailwind color palette (automatically WCAG compliant)

**Focus Management**:
```jsx
// Focus trap in modals
import { FocusTrap } from '@headlessui/react';

<FocusTrap>
  <Dialog>
    {/* Modal content */}
  </Dialog>
</FocusTrap>
```

---

## 4. Development Roadmap

### Sprint 1 (Weeks 1-2) - MVP Foundation
**Goal**: Core infrastructure and basic dashboard

**Tasks**:
- [ ] Set up Azure Static Web Apps (Next.js)
- [ ] Set up Azure Functions (API backend)
- [ ] Configure Azure AD authentication (MSAL.js)
- [ ] Implement database connection (node-postgres)
- [ ] Build basic dashboard (KPI cards, recent events)
- [ ] Implement `/api/dashboard` endpoints
- [ ] Add React Query setup
- [ ] Add Tailwind CSS + Shadcn/ui
- [ ] Deploy to dev environment

**Deliverable**: Basic dashboard with KPI cards and recent events (read-only)

---

### Sprint 2 (Weeks 3-4) - Device & Wave Management
**Goal**: Enable migration team to view devices and waves

**Tasks**:
- [ ] Build wave list page (`/waves`)
- [ ] Build wave detail page (`/waves/:id`)
- [ ] Build device list page (`/devices`)
- [ ] Build device detail page (`/devices/:id`)
- [ ] Implement search and filtering (devices)
- [ ] Implement pagination (100 rows per page)
- [ ] Add device event timeline component
- [ ] Implement `/api/devices` endpoints
- [ ] Implement `/api/waves` endpoints
- [ ] Add role-based access control (RBAC)

**Deliverable**: Device and wave tracking pages (read-only)

---

### Sprint 3 (Weeks 5-6) - Write Operations & Real-time
**Goal**: Enable migration team to manage waves and retry migrations

**Tasks**:
- [ ] Build create/edit wave form
- [ ] Build retry migration action
- [ ] Build reassign wave action
- [ ] Implement WebSocket connection (Azure SignalR)
- [ ] Add real-time migration event updates
- [ ] Add real-time dashboard updates
- [ ] Implement `/api/waves POST/PATCH` endpoints
- [ ] Implement `/api/devices/:id/retry` endpoint
- [ ] Add input validation (Zod schemas)
- [ ] Add error handling and toast notifications

**Deliverable**: Full wave management and device remediation

---

### Sprint 4 (Weeks 7-8) - App Compatibility & Costs
**Goal**: Enable app owners to manage compatibility and admins to track costs

**Tasks**:
- [ ] Build app compatibility dashboard (`/apps`)
- [ ] Build app detail page with approval workflow
- [ ] Build cost tracking dashboard (`/costs`)
- [ ] Build cost entry form
- [ ] Implement `/api/apps` endpoints
- [ ] Implement `/api/costs` endpoints
- [ ] Add cost charts (Recharts)
- [ ] Add app compatibility test result submission
- [ ] Add approval workflow (approve/reject)

**Deliverable**: App compatibility and cost tracking

---

### Sprint 5 (Weeks 9-10) - Reporting & Stakeholder Portal
**Goal**: Enable stakeholders to view executive dashboards and generate reports

**Tasks**:
- [ ] Build executive dashboard (`/executive`)
- [ ] Build stakeholder portal
- [ ] Implement report generation (PDF)
- [ ] Implement Excel export (XLSX)
- [ ] Add pre-built reports (wave summary, cost analysis)
- [ ] Implement `/api/reports` endpoints
- [ ] Add scheduled report emails (Azure Functions timer trigger)
- [ ] Add report download functionality

**Deliverable**: Executive dashboards and reporting

---

### Sprint 6 (Weeks 11-12) - End User Portal & Polish
**Goal**: Enable end users to view migration status and prepare for migration

**Tasks**:
- [ ] Build end user self-service portal (`/my-device`)
- [ ] Add pre-migration checklist
- [ ] Add FAQ section
- [ ] Add support contact (chat widget, ServiceNow)
- [ ] Implement `/api/user/device` endpoint
- [ ] Perform accessibility audit (WCAG 2.1 AA)
- [ ] Add mobile responsive testing (tablets)
- [ ] Add performance optimization (Lighthouse audit)
- [ ] Add error monitoring (Application Insights)
- [ ] UAT with migration team

**Deliverable**: End user portal and production-ready application

---

### Sprint 7 (Weeks 13-14) - Testing & Deployment
**Goal**: Production deployment and go-live

**Tasks**:
- [ ] Load testing (simulate 100 concurrent users)
- [ ] Security testing (penetration testing)
- [ ] Performance testing (Lighthouse score > 90)
- [ ] Create runbook for operations team
- [ ] Train migration team on application
- [ ] Deploy to production
- [ ] Monitor for 1 week (hotfix if needed)
- [ ] Handoff to operations team

**Deliverable**: Production-ready application

---

## 5. Cost Estimation

### Azure Infrastructure Costs (Monthly)

| Service | Tier | Cost (£/month) | Notes |
|---------|------|----------------|-------|
| **Azure Static Web Apps** | Standard | £7 | 100 GB bandwidth, custom domain |
| **Azure Functions** | Consumption | £20-50 | 1M executions/month, 5s avg |
| **Azure Database for PostgreSQL** | GP_Standard_D2s_v3 | £250 | Already deployed (Terraform) |
| **Azure Front Door** | Standard | £30 | CDN + WAF |
| **Azure SignalR Service** | Standard (10 units) | £350 | 10K concurrent connections |
| **Azure Cache for Redis** | Basic C1 (1 GB) | £14 | Optional caching |
| **Application Insights** | Pay-as-you-go | £10-20 | 5 GB logs/month |
| **Azure Key Vault** | Standard | £1 | Secret storage |
| **Total** | | **£682-£722/month** | |

**Annual Cost**: £8,184-£8,664

**Cost Optimization Options**:
- Use Socket.io self-hosted instead of SignalR (save £350/month)
- Skip Redis caching initially (save £14/month)
- Use Free tier Static Web Apps for dev/test (save £7/month)

**Optimized Monthly Cost**: £318-£358 (£3,816-£4,296/year)

---

### Development Costs

| Role | Rate (£/day) | Days | Cost (£) |
|------|--------------|------|----------|
| **Senior Full-Stack Engineer** | £600 | 60 | £36,000 |
| **UI/UX Designer** | £500 | 10 | £5,000 |
| **QA Engineer** | £400 | 10 | £4,000 |
| **DevOps Engineer** | £600 | 5 | £3,000 |
| **Total Development Cost** | | | **£48,000** |

**Timeline**: 14 weeks (3.5 months)

**Notes**:
- Assumes 1 senior full-stack engineer working full-time
- Designer for initial wireframes and UI design (Sprint 1)
- QA engineer for testing (Sprint 6-7)
- DevOps for Azure infrastructure setup (Sprint 1)

---

## 6. Success Metrics

### 6.1 Adoption Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| **Daily Active Users (DAU)** | 90% of migration team (27/30) | Application Insights |
| **Weekly Active Users (WAU)** | 95% of migration team | Application Insights |
| **Executive Dashboard Views** | 5+ views/week by each stakeholder | Application Insights |
| **End User Portal Usage** | 80% of users check status before migration | Application Insights |

### 6.2 Performance Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| **Page Load Time (p95)** | <2 seconds | Lighthouse, Application Insights |
| **Time to Interactive (TTI)** | <3 seconds | Lighthouse |
| **API Response Time (p95)** | <500ms | Azure Functions metrics |
| **WebSocket Latency** | <100ms | SignalR metrics |
| **Lighthouse Score** | >90 (Performance) | Lighthouse |

### 6.3 Reliability Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| **Uptime (SLA)** | 99.9% | Azure Monitor |
| **Error Rate** | <0.1% | Application Insights |
| **Mean Time to Recovery (MTTR)** | <1 hour | Incident tracking |
| **WebSocket Connection Success** | >99% | SignalR metrics |

### 6.4 Business Impact Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| **Time Saved per Failure** | 15 minutes (vs manual investigation) | User survey |
| **Report Generation Time** | <2 minutes (vs 1 hour manual) | Application logs |
| **Stakeholder Satisfaction** | >8/10 (NPS) | Quarterly survey |
| **Reduction in Support Tickets** | 30% (self-service portal) | ServiceNow metrics |

---

## 7. Risks & Mitigations

### 7.1 Technical Risks

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| **WebSocket scaling issues** (>1000 concurrent) | MEDIUM | HIGH | Use Azure SignalR (managed, auto-scaling) instead of self-hosted Socket.io |
| **Database query performance** (large device tables) | MEDIUM | MEDIUM | Implement pagination, indexes (already in Terraform), Redis caching for aggregates |
| **Real-time update latency** (>5s) | LOW | MEDIUM | Optimize WebSocket broadcast logic, use Azure SignalR in UK region |
| **Authentication issues** (Azure AD outage) | LOW | HIGH | Implement graceful degradation, cache user roles locally (30 min TTL) |
| **API rate limiting** (DDoS) | LOW | MEDIUM | Implement rate limiting per user (100 req/15min), Azure Front Door WAF |

### 7.2 Delivery Risks

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| **Scope creep** (additional features requested) | HIGH | HIGH | Lock Sprint 1-5 scope, defer new features to Sprint 6+ or post-launch backlog |
| **Resource availability** (engineer on leave) | MEDIUM | MEDIUM | Hire 2 engineers (1 full-time, 1 part-time) for redundancy, document architecture |
| **UAT delays** (stakeholders unavailable) | MEDIUM | LOW | Schedule UAT in advance (Sprint 5 week 2), provide async feedback form |
| **Integration delays** (ServiceNow API) | LOW | LOW | Build integration as optional feature (MAY_HAVE), can be added post-launch |

### 7.3 Adoption Risks

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| **Low adoption** (team prefers spreadsheets) | MEDIUM | HIGH | Involve migration team in Sprint 1-2 reviews, incorporate feedback, provide training |
| **Resistance to change** (executives want PDF reports) | LOW | MEDIUM | Implement one-click PDF export, email scheduled reports, offer 1:1 demos |
| **Self-service portal not used** (users call helpdesk) | MEDIUM | LOW | Promote portal in migration emails, add QR code on posters, track usage metrics |

---

## 8. Next Steps

### Immediate Actions (This Week)

1. **Stakeholder Buy-In**
   - [ ] Present this plan to Project Manager (Sarah Thompson)
   - [ ] Review with IT Operations Engineer (James Rodriguez)
   - [ ] Get budget approval from CFO

2. **Technical Validation**
   - [ ] Validate Azure AD app registration (client ID, tenant ID)
   - [ ] Confirm PostgreSQL database access from Azure Functions
   - [ ] Test WebSocket connection to Azure SignalR

3. **Team Formation**
   - [ ] Hire Senior Full-Stack Engineer (React + Node.js)
   - [ ] Engage UI/UX Designer for wireframes (Sprint 1)
   - [ ] Identify QA Engineer for Sprint 6-7

### Week 1 (Sprint 1 Start)

4. **Azure Infrastructure Setup**
   - [ ] Create Azure Static Web Apps resource
   - [ ] Create Azure Functions resource
   - [ ] Configure Azure AD application registration
   - [ ] Set up CI/CD pipeline (GitHub Actions)
   - [ ] Deploy "Hello World" to dev environment

5. **Repository Setup**
   - [ ] Create Git repository (`migration-control-centre`)
   - [ ] Initialize Next.js project (App Router)
   - [ ] Install dependencies (React Query, Tailwind, Shadcn/ui)
   - [ ] Set up project structure (`/app`, `/components`, `/lib`, `/api`)

6. **Design**
   - [ ] Create wireframes for dashboard (Figma)
   - [ ] Create wireframes for wave list/detail
   - [ ] Create wireframes for device list/detail
   - [ ] Establish design system (colors, typography, spacing)

---

## 9. Appendices

### Appendix A: Wireframe Examples

(To be created by UI/UX Designer in Sprint 1)

### Appendix B: API Contract (OpenAPI Spec)

(To be generated from API endpoints in Sprint 2)

### Appendix C: Database Schema ERD

(Already created in `migration-database-data-model.md`)

### Appendix D: Deployment Runbook

(To be created in Sprint 7)

### Appendix E: User Training Materials

(To be created in Sprint 6)

---

## Document Control

**Version History**:
| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-11-21 | ArcKit AI | Initial draft |

**Approval**:
- [ ] IT Operations (Owner)
- [ ] Project Manager
- [ ] CISO (Security review)
- [ ] CFO (Budget approval)

**Next Review Date**: 2025-12-01 (after stakeholder feedback)

---

**Generated by**: ArcKit Planning Assistant
**Project**: Windows 11 Migration with InTune (Project 001)
**Traceability**: Requirements FR-001 through FR-020, NFR-SEC-001, NFR-P-001
🤖 Generated with [Claude Code](https://claude.com/claude-code)
