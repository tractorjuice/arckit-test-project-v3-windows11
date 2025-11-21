# Statement of Work (SOW): Migration Control Centre Frontend Application

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-001-SOW-FE-v1.0 |
| **Document Type** | Statement of Work / Request for Proposal (RFP) |
| **Project** | Windows 11 Migration with InTune - Migration Control Centre (Project 001) |
| **Classification** | INTERNAL |
| **Status** | DRAFT |
| **Version** | 1.0 |
| **Created Date** | 2025-11-21 |
| **Last Modified** | 2025-11-21 |
| **Review Cycle** | On-Demand |
| **Next Review Date** | 2025-12-21 |
| **Owner** | IT Operations Director |
| **Reviewed By** | [PENDING] |
| **Approved By** | [PENDING] |
| **Distribution** | Procurement Team, Finance, Legal, Architecture Team, IT Operations |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2025-11-21 | ArcKit AI | Initial creation from `/arckit.sow` command | [PENDING] | [PENDING] |

## Document Purpose

This Statement of Work (SOW) serves as a formal Request for Proposal (RFP) for the design, development, and deployment of the **Migration Control Centre** - a web-based frontend application for the Windows 11 Migration with InTune project (Project 001). This document defines the scope of work, technical requirements, deliverables, evaluation criteria, and contract terms for qualified vendors to submit competitive proposals.

---

## 1. Executive Summary

### 1.1 Purpose of This SOW

This Statement of Work (SOW) defines the requirements, deliverables, timeline, and evaluation criteria for the **Migration Control Centre** frontend application. The issuing organization is seeking qualified software development vendors with proven experience in **React/Next.js development**, **Azure cloud services**, and **enterprise application delivery** to design, build, test, and deploy a production-ready web application that will enable operational control of a 6,000-device Windows 11 migration project.

### 1.2 Background

The organization is executing a strategic Windows 11 migration affecting 6,000 devices, driven by Windows 10 end-of-life (October 2025) and the need to modernize IT infrastructure with Zero Trust security capabilities. The migration is managed through Microsoft InTune and supported by a PostgreSQL database (already deployed via Terraform) that tracks migration events, waves, application compatibility tests, costs, and stakeholder information.

**Current State Challenges**:
- Migration team relies on manual Azure portal queries, PowerShell scripts, and spreadsheets for operational visibility
- No real-time alerting for migration failures, resulting in delayed issue detection (hours to days)
- Project managers spend 8-10 hours per week on manual reporting for steering committee meetings
- 6,000 end users lack self-service capabilities, generating 1,200-1,800 helpdesk tickets (20-30% of user base)
- No centralized view of budget vs actual spending, creating risk of budget overruns (£500K-800K project budget)
- Application owners lack approval workflow for Windows 11 application compatibility tests

**Business Drivers**:
- **SD-1 (CISO)**: Eliminate Windows 10 EOL security risk before October 2025 deadline
- **SD-2 (CFO)**: Reduce IT infrastructure costs through cloud-first modernization
- **SD-3 (IT Operations Director)**: Execute risk-free migration without business disruption (<5% rollback rate)
- **SD-4 (End Users)**: Preserve data, applications, and productivity during migration (<2hr downtime per device)
- **SD-5 (CIO)**: Deliver strategic modernization aligned with digital transformation roadmap
- **SD-6 (Helpdesk Manager)**: Avoid support ticket tsunami (<2% support ticket rate)
- **SD-7 (Enterprise Architect)**: Establish governance excellence with full requirements traceability

### 1.3 Project Overview

**Objective**: Design, develop, test, and deploy a production-ready **Migration Control Centre** web application that provides real-time visibility, operational control, stakeholder communication, and self-service capabilities for the Windows 11 migration project.

**Scope**: Full-stack web application development including:
- React 18 + Next.js 14 frontend (App Router, Server-Side Rendering)
- Azure Functions backend API (Node.js, 28 REST endpoints, 6 WebSocket events)
- Azure SignalR Service integration for real-time updates (<5 second latency)
- Azure Database for PostgreSQL integration (6-entity data model, Row-Level Security)
- Azure AD (Entra ID) authentication with Role-Based Access Control (5 roles)
- 7 core features: Real-time Dashboard, Wave Management, Device Tracking, Application Compatibility, Cost Tracking, Executive Dashboard, End User Portal
- CI/CD pipeline (GitHub Actions), monitoring (Application Insights), security testing, performance testing

**Expected Business Outcomes**:
- **90%+ migration team adoption** within 2 weeks of launch
- **80% reduction in manual reporting effort** (from 8-10 hours/week to <2 hours/week per PM)
- **<2% support ticket rate** (target: 120 tickets or fewer for 6,000 users) due to self-service portal
- **99.9% application uptime** during migration phases (Weeks 27-74, 48 weeks)
- **<2 second page load time** for all dashboards (95th percentile)
- **Real-time visibility** into migration failures (<5 seconds from database change to dashboard update)
- **100% stakeholder visibility** into costs, risks, and progress (executives, CISO, CFO, CIO)

**Budget Range**: £40,000 - £60,000 (GBP) for design, development, testing, deployment, and knowledge transfer. Budget available upon request to qualified vendors with completed NDAs.

**Timeline**: 14-week implementation timeline (7 sprints × 2 weeks each) from contract signing to production go-live, with phased delivery:
- **Sprint 1-2 (Weeks 1-4)**: Pilot MVP (Dashboard, Wave Management, Device Tracking) for 300-device pilot wave
- **Sprint 3-4 (Weeks 5-8)**: Production features (Application Compatibility, Cost Tracking) for 5,700-device production waves
- **Sprint 5-7 (Weeks 9-14)**: Stakeholder & End User features (Executive Dashboard, End User Portal, PDF Reports)

---

## 2. Scope of Work

### 2.1 In Scope

The selected vendor will be responsible for:

#### 2.1.1 Design Phase (Weeks 1-2)

1. **High-Level Design (HLD)**
   - Review requirements document (ARC-001-REQ-FE-v1.0) and frontend application plan
   - Create C4 Context diagram showing system boundaries and external dependencies (Azure AD, PostgreSQL, ServiceNow, Azure SignalR)
   - Create C4 Container diagram showing frontend (Next.js), backend (Azure Functions), database (PostgreSQL), and Azure services
   - Define technology stack (React 18, Next.js 14, TypeScript, Shadcn/ui, TanStack Query, Zustand, Recharts)
   - Define integration patterns (REST API, WebSocket, Azure AD OAuth 2.0)
   - Document security architecture (authentication flow, RBAC, Row-Level Security on CONFIDENTIAL tables)
   - Present HLD to Architecture Review Board for approval (Gate 1)

2. **Detailed Design (DLD)**
   - Create component architecture diagram (React component hierarchy, state management, routing)
   - Define API specifications (OpenAPI 3.0 for 28 REST endpoints: devices, waves, apps, costs, dashboard)
   - Define WebSocket event specifications (6 events: migration-event-created, migration-event-updated, wave-status-changed, cost-added, app-approved, alert-created)
   - Create database access layer design (PostgreSQL connection pooling, query optimization, Row-Level Security enforcement)
   - Define data models (TypeScript interfaces for all entities: MIGRATION_EVENT, MIGRATION_WAVE, APP_COMPATIBILITY_TEST, COST_TRACKING, STAKEHOLDER, UPDATE_RING_ASSIGNMENT)
   - Create UI/UX mockups for all 7 features (Figma or similar tool, mobile-responsive designs)
   - Define CI/CD pipeline architecture (GitHub Actions, Azure Static Web Apps deployment, Azure Functions deployment)
   - Define monitoring and observability strategy (Application Insights telemetry, custom events, alerts)
   - Present DLD to technical reviewers for approval (Gate 2)

#### 2.1.2 Development Phase (Weeks 3-12)

3. **Frontend Application Development (React 18 + Next.js 14)**
   - Implement Next.js 14 App Router with Server-Side Rendering (SSR) for initial page loads
   - Implement 7 core features with 32 functional requirements (FR-FE-001 to FR-FE-032):
     * **Feature 1: Real-time Migration Dashboard** (FR-FE-001 to FR-FE-005): KPI cards, wave progress chart, recent events table, cost tracker widget, alert notifications
     * **Feature 2: Wave Management** (FR-FE-006 to FR-FE-010): Create/edit waves, Gantt timeline, assign devices (CSV upload + manual), start/pause/resume waves
     * **Feature 3: Device Tracking** (FR-FE-011 to FR-FE-016): Search/filter devices, device detail view, event timeline, retry migration, reassign to wave, bulk operations
     * **Feature 4: Application Compatibility** (FR-FE-017 to FR-FE-020): Test results dashboard, approval workflow, blocker documentation, summary widget
     * **Feature 5: Cost Tracking** (FR-FE-021 to FR-FE-025): Budget vs actual dashboard, category drill-down, add cost records, fiscal year/quarter reporting, budget overrun alerts
     * **Feature 6: Executive Dashboard** (FR-FE-026 to FR-FE-028): High-level KPI summary (6-8 KPIs), trend charts (last 30 days), one-click PDF report generation
     * **Feature 7: End User Self-Service Portal** (FR-FE-029 to FR-FE-032): My migration status, pre-migration checklist, FAQ page, mobile-responsive design
   - Implement Azure AD (Entra ID) authentication using MSAL.js (OAuth 2.0 Authorization Code Flow with PKCE)
   - Implement Role-Based Access Control (RBAC) with 5 roles: Admin, Engineer, Stakeholder, AppOwner, EndUser
   - Implement real-time updates via Azure SignalR Service (WebSocket client using @microsoft/signalr library)
   - Implement graceful degradation (fallback to HTTP polling if WebSocket fails, 30-second refresh rate)
   - Implement client-side state management (TanStack Query for server state, Zustand for client state)
   - Implement UI component library (Shadcn/ui with Tailwind CSS, custom theme, dark mode support)
   - Implement data visualization (Recharts for KPI charts, wave progress chart, trend charts)
   - Implement accessibility features (WCAG 2.1 Level AA compliance, keyboard navigation, ARIA labels, screen reader support)

4. **Backend API Development (Azure Functions - Node.js)**
   - Implement 28 REST API endpoints using Azure Functions (consumption plan):
     * **Devices API**: GET /api/devices (list, paginated, filterable), GET /api/devices/:id (detail), POST /api/devices/:id/retry (retry migration), PUT /api/devices/:id/reassign (reassign to wave)
     * **Waves API**: GET /api/waves (list), POST /api/waves (create), PUT /api/waves/:id (edit), POST /api/waves/:id/start (start), POST /api/waves/:id/pause (pause), POST /api/waves/:id/resume (resume)
     * **Apps API**: GET /api/apps (list, filterable), GET /api/apps/:id (detail), PUT /api/apps/:id/approve (approve for deployment), PUT /api/apps/:id/blocker (document blocker)
     * **Costs API**: GET /api/costs (list, filterable by fiscal year/quarter), POST /api/costs (add cost record) - Admin role only
     * **Dashboard API**: GET /api/dashboard/kpis (KPI cards), GET /api/dashboard/events (recent events), GET /api/dashboard/executive (executive KPIs)
     * **Reports API**: POST /api/reports/generate (PDF report generation)
   - Implement 6 WebSocket events using Azure SignalR Service (server-side SignalR hub):
     * migration-event-created, migration-event-updated, wave-status-changed, cost-added, app-approved, alert-created
   - Implement PostgreSQL database integration (pg library, connection pooling, parameterized queries for SQL injection prevention)
   - Implement Row-Level Security (RLS) enforcement for CONFIDENTIAL tables (COST_TRACKING, STAKEHOLDER) - Admin role only
   - Implement JWT token validation (verify Azure AD token signature, extract user role claims)
   - Implement rate limiting (100 requests per 15 minutes per user) using Azure API Management or custom middleware
   - Implement input validation and sanitization (Joi or Zod schema validation, prevent XSS/injection attacks)
   - Implement error handling and logging (structured logging to Application Insights, correlation IDs for request tracing)

5. **Database Integration**
   - Implement database access layer (TypeScript classes for each entity: MigrationEvent, MigrationWave, AppCompatibilityTest, CostTracking, Stakeholder, UpdateRingAssignment)
   - Implement query optimization (indexes for search/filter operations, pagination with LIMIT/OFFSET)
   - Implement database migrations (if schema changes required beyond existing Terraform-deployed schema)
   - Implement PostgreSQL Row-Level Security policies (verify role claims before returning rows from COST_TRACKING, STAKEHOLDER)

6. **Azure Services Integration**
   - Integrate with Azure Static Web Apps (frontend hosting, CDN, built-in CI/CD)
   - Integrate with Azure Functions (backend API hosting, consumption plan auto-scaling)
   - Integrate with Azure SignalR Service (serverless mode, WebSocket connections, message broadcasting)
   - Integrate with Azure AD (Entra ID) for authentication (MSAL.js configuration, app registration, redirect URIs, token caching in sessionStorage)
   - Integrate with Azure Application Insights (frontend telemetry: page views, exceptions, custom events; backend telemetry: API response times, dependency calls, exceptions)
   - Integrate with Azure Key Vault (PostgreSQL connection string, Azure SignalR connection string, sensitive configuration)

7. **ServiceNow Integration (Optional - if required)**
   - Implement ServiceNow REST API integration for incident creation (POST to /api/now/table/incident)
   - Auto-create ServiceNow incident when device fails migration ≥3 times (priority: Medium, category: Windows 11 Migration)
   - Add "Contact Support" button on End User Portal (redirect to ServiceNow self-service portal)

8. **Automated Testing**
   - Implement unit tests (Jest + React Testing Library, ≥80% code coverage for critical components)
   - Implement integration tests (Playwright or Cypress, test critical user flows: login, dashboard load, device search, wave creation)
   - Implement API tests (Supertest or similar, test all 28 REST endpoints with valid/invalid inputs)
   - Implement accessibility tests (axe-core automated testing, keyboard navigation tests)
   - Implement performance tests (Lighthouse CI, page load time <2s target, API response time <500ms target)
   - Implement security tests (OWASP ZAP or similar, test for XSS, SQL injection, CSRF, authentication bypass)

9. **CI/CD Pipeline**
   - Implement GitHub Actions workflow for frontend (build, test, deploy to Azure Static Web Apps staging/production environments)
   - Implement GitHub Actions workflow for backend (build, test, deploy to Azure Functions staging/production environments)
   - Implement automated testing in CI/CD pipeline (unit tests, integration tests, security tests, accessibility tests)
   - Implement infrastructure deployment (Terraform or Bicep for Azure resources if not already deployed)
   - Implement secrets management (GitHub Secrets for sensitive values, Azure Key Vault for runtime secrets)
   - Implement deployment gates (manual approval for production deployment, HLD/DLD approval gates)

#### 2.1.3 Testing Phase (Weeks 10-13)

10. **System Integration Testing (SIT)**
    - Test integration with Azure Database for PostgreSQL (verify all CRUD operations, Row-Level Security enforcement)
    - Test integration with Azure SignalR Service (verify real-time updates <5 seconds, WebSocket reconnection, graceful degradation)
    - Test integration with Azure AD (Entra ID) (verify authentication flow, role claims, MFA enforcement, token renewal)
    - Test integration with ServiceNow (if implemented) (verify incident creation, API error handling)
    - Test integration with Application Insights (verify telemetry data, custom events, alerts)

11. **User Acceptance Testing (UAT)**
    - Conduct UAT with 5 user personas (Migration Project Manager, IT Operations Engineer, Executive Stakeholder, Application Owner, End User)
    - Test all 32 functional requirements (FR-FE-001 to FR-FE-032) against acceptance criteria
    - Validate 5 use cases (UC-FE-001 to UC-FE-005): Monitor real-time migration progress, Troubleshoot failed migration, Create and manage migration wave, Track budget vs actual, Self-service migration status
    - Collect feedback from stakeholders (usability, missing features, bugs)
    - Remediate critical and high-priority bugs before production deployment

12. **Performance Testing**
    - Load testing (100 concurrent users, verify page load time <2s, API response time <500ms)
    - Stress testing (3× projected load = 300 concurrent users, verify graceful degradation)
    - Scalability testing (verify pagination works with 6,000 devices, 18,000 migration events)
    - WebSocket testing (verify 100 concurrent WebSocket connections, message delivery <5 seconds)

13. **Security Testing**
    - Vulnerability scanning (OWASP ZAP, Burp Suite, or similar - test for OWASP Top 10 vulnerabilities)
    - Penetration testing (manual testing by security team, attempt authentication bypass, privilege escalation, data exfiltration)
    - Compliance testing (verify WCAG 2.1 AA compliance with axe DevTools, verify UK GDPR compliance for PII handling)

14. **Accessibility Testing**
    - Automated testing (axe DevTools, Lighthouse accessibility audit)
    - Manual testing (NVDA screen reader on Windows, VoiceOver on macOS, keyboard-only navigation)
    - Mobile responsiveness testing (test on iOS Safari, Android Chrome, tablet devices 1024×768+)

#### 2.1.4 Deployment Phase (Week 14)

15. **Production Deployment**
    - Deploy frontend to Azure Static Web Apps production environment
    - Deploy backend to Azure Functions production environment
    - Configure custom domain (e.g., migration.contoso.com) with TLS certificate (Azure-managed or custom)
    - Configure Azure Front Door (CDN + WAF for DDoS protection) if required
    - Configure Azure Monitor alerts (CPU >80%, memory >85%, storage >85%, connection failures >10, server unavailable)
    - Configure Application Insights alerts (API response time >1s, page load time >3s, exception rate >5 errors/min, availability <99.9%)
    - Execute smoke tests in production (verify application accessible, authentication works, dashboard loads, real-time updates work)

16. **Hypercare Support (2 weeks post-deployment)**
    - Provide 24/7 on-call support for critical issues (Severity 0-1) during first 2 weeks post-deployment
    - Monitor Application Insights for errors, exceptions, performance degradation
    - Respond to incidents within 1 hour (Severity 0-1), 4 hours (Severity 2-3)
    - Apply hotfixes for critical bugs (deploy via CI/CD pipeline with expedited approval)

#### 2.1.5 Knowledge Transfer and Documentation (Weeks 13-14)

17. **Technical Documentation**
    - Architecture Decision Records (ADRs) for key technical decisions (React vs Angular, Next.js vs Create React App, Azure Functions vs App Service, etc.)
    - System architecture document (C4 diagrams, deployment architecture, network topology)
    - API documentation (OpenAPI 3.0 spec with examples, interactive Swagger UI)
    - Component documentation (React component hierarchy, props, state, hooks)
    - Database schema documentation (ERD, table descriptions, index rationale, Row-Level Security policies)
    - Security documentation (authentication flow, RBAC roles, threat model, security controls)
    - Monitoring and observability documentation (Application Insights setup, custom events, alerts, dashboards)

18. **Operational Documentation**
    - Deployment runbooks (step-by-step deployment procedures, rollback procedures)
    - CI/CD pipeline documentation (GitHub Actions workflows, secrets management, deployment gates)
    - Incident response runbooks (common issues, troubleshooting steps, escalation procedures)
    - Disaster recovery plan (RPO <5 minutes, RTO <1 hour, backup/restore procedures)
    - Performance tuning guide (PostgreSQL query optimization, Azure Functions scaling configuration)

19. **User Documentation**
    - End-user manual for End User Portal (how to check migration date, complete checklist, access FAQ)
    - Administrator manual for migration team (how to create waves, assign devices, retry migrations, track costs)
    - Training materials (video tutorials, PowerPoint slides, quick reference guides)

20. **Knowledge Transfer Sessions**
    - **Technical Training** (8 hours): Architecture walkthrough, codebase tour, deployment demo, CI/CD pipeline walkthrough (Audience: Internal development team, SRE team)
    - **Operations Training** (4 hours): Monitoring dashboards, incident response, log analysis, backup/restore (Audience: SRE/Operations team)
    - **User Training** (2 hours): End-user portal demo, migration team demo, Q&A session (Audience: End users, migration team)

---

### 2.2 Out of Scope

The following are explicitly **NOT** part of this engagement and will **NOT** be the vendor's responsibility:

1. **Azure Infrastructure Provisioning (Already Deployed)**
   - Azure Database for PostgreSQL Flexible Server (already deployed via Terraform with 6-entity data model)
   - Azure Virtual Network, subnets, Network Security Groups (already deployed)
   - Azure Log Analytics workspace, monitoring alerts (already deployed)
   - Azure Key Vault (already deployed with PostgreSQL credentials)
   - Vendor will **use** existing infrastructure, not provision it

2. **Microsoft InTune Configuration**
   - InTune Autopilot policies, device profiles, compliance policies (managed by IT Operations team)
   - Device enrollment, Windows 11 deployment (managed by InTune, not the application)
   - Application packaging and deployment via InTune (separate project: Project 002 - Application Packaging Rationalisation)
   - Vendor application does **not** trigger InTune migrations directly (migrations triggered by InTune policies or scheduled Azure Functions jobs)

3. **Data Migration and Seeding**
   - Existing migration event data (if any) will be provided by client in agreed format (CSV or SQL scripts)
   - Vendor will **not** migrate historical data from other systems
   - Test data seeding (client will provide sample data for 300-device pilot wave)

4. **Mobile Native Applications**
   - Mobile-responsive web design is **in scope** (works on tablets 1024×768+)
   - Native iOS/Android mobile apps are **out of scope** (may be future phase)

5. **Advanced Analytics and Business Intelligence**
   - Basic trend charts (last 30 days) are **in scope** (FR-FE-027)
   - Advanced analytics (predictive modeling, machine learning, custom analytics) are **out of scope**
   - Power BI/Tableau integration is **out of scope** (client may integrate separately)

6. **Third-Party Integrations Beyond Requirements**
   - Azure AD, PostgreSQL, ServiceNow, Azure SignalR, Application Insights are **in scope**
   - Integrations not mentioned in requirements (e.g., Slack, Microsoft Teams, JIRA) are **out of scope** unless explicitly requested by client

7. **Ongoing Maintenance and Support (Beyond 90-Day Warranty)**
   - Vendor provides 90-day warranty for bug fixes (defects against requirements)
   - Ongoing operational support, enhancements, feature requests beyond requirements are **out of scope** (separate support contract may be negotiated)

8. **Branding and Marketing Materials**
   - Application will use client's organizational branding (logo, colors provided by client)
   - Marketing materials, press releases, promotional content are **out of scope**

---

### 2.3 Client Responsibilities

The client organization will provide the following resources, access, and support to enable the vendor's successful delivery:

#### 2.3.1 Technical Resources and Access

1. **Azure Subscription Access**
   - Azure subscription with Contributor role for deployment (Azure Static Web Apps, Azure Functions, Azure SignalR Service)
   - Read-only access to Azure Database for PostgreSQL (vendor will not modify database schema without approval)
   - Access to Azure Key Vault for retrieving connection strings and secrets
   - Access to Azure AD (Entra ID) for app registration and authentication configuration

2. **PostgreSQL Database Access**
   - Read/write access to PostgreSQL database (migration_db) via private endpoint
   - Database credentials stored in Azure Key Vault
   - Database schema documentation (ERD, table descriptions, indexes) from Terraform deployment
   - Test database environment (separate from production) for development and testing

3. **Azure AD (Entra ID) Access**
   - App registration created for Migration Control Centre (redirect URIs configured)
   - API permissions granted (Microsoft Graph - User.Read for user profile)
   - Role claims configured in JWT tokens (Admin, Engineer, Stakeholder, AppOwner, EndUser)
   - Test accounts provided for each role (minimum 5 test accounts)

4. **ServiceNow Access (if integration required)**
   - ServiceNow instance URL and API credentials
   - ServiceNow test instance for integration testing
   - Documentation of ServiceNow incident creation API (field mappings, required fields)

5. **Sample Data for Testing**
   - 300 device records for pilot wave (device IDs, hostnames, user names, departments, locations)
   - 10-15 application compatibility test records (application names, test results, owners)
   - Sample cost records (5 categories, 20 cost records)
   - Sample stakeholder records (7 stakeholders with email, phone)

6. **CI/CD and Deployment Infrastructure**
   - GitHub organization/repository access (vendor will use client's GitHub organization or provide their own)
   - GitHub Actions runners (hosted runners acceptable, self-hosted runners if required by client)
   - Azure service principals for CI/CD pipeline authentication (Contributor role on Azure subscription)

#### 2.3.2 Business Resources and Subject Matter Experts

7. **Stakeholder Availability**
   - IT Operations Director (project sponsor): Available for weekly steering meetings (1 hour/week), HLD/DLD approval (Gate 1/Gate 2)
   - Migration Project Manager: Available for daily standup (15 min/day), sprint planning (2 hours/sprint), UAT (8 hours total)
   - Enterprise Architect: Available for architecture reviews (4 hours HLD, 4 hours DLD), technical decisions
   - CISO: Available for security review (2 hours), compliance sign-off
   - CFO: Available for cost tracking review (1 hour)
   - End User Representative: Available for UAT (4 hours)

8. **Requirements Clarification**
   - Client will respond to vendor questions within 2 business days during design phase
   - Client will provide clarification on ambiguous requirements within 1 business day during development phase
   - Client will prioritize change requests if requirements evolve during development (Change Control Board review)

#### 2.3.3 Approvals and Governance

9. **Design Approval Gates**
   - **Gate 1 (HLD Approval)**: Architecture Review Board meeting (Week 2) - Client will review HLD within 3 business days and provide approval or feedback
   - **Gate 2 (DLD Approval)**: Technical Review meeting (Week 4) - Client will review DLD within 3 business days and provide approval or feedback
   - Client delays in approvals will extend project timeline proportionally

10. **User Acceptance Testing (UAT) Sign-Off**
    - Client will conduct UAT within 2 weeks (Weeks 12-13)
    - Client will provide formal UAT sign-off (acceptance or list of critical bugs) by end of Week 13
    - Client acknowledges that production deployment (Week 14) depends on UAT sign-off

11. **Change Management**
    - Client will follow formal Change Control process for scope changes (Change Request form, impact assessment, Change Control Board approval)
    - Approved scope changes may extend timeline and increase cost (vendor will provide impact assessment)

#### 2.3.4 Infrastructure and Operations

12. **Production Environment**
    - Client will provide production Azure subscription (separate from development/test if required)
    - Client will configure custom domain and TLS certificate (if required beyond Azure default *.azurestaticapps.net)
    - Client will configure Azure Front Door (if required for CDN/WAF)

13. **Monitoring and Support**
    - Client will monitor Application Insights dashboards for operational issues after hypercare period (Week 16+)
    - Client will manage incident response and escalations after hypercare period
    - Client will provide feedback on application performance, bugs, enhancement requests

14. **Security and Compliance**
    - Client will provide organizational security policies and compliance requirements (UK GDPR, data classification, acceptable use policy)
    - Client will conduct security review and penetration testing (client's security team or third-party vendor)
    - Client will grant security clearances (if required) for vendor team members

---

## 3. Requirements

### 3.1 Requirements Overview

This SOW references the comprehensive requirements document **ARC-001-REQ-FE-v1.0** (Business and Technical Requirements: Migration Control Centre Frontend Application), which defines:

- **8 Business Requirements** (BR-FE-001 to BR-FE-008)
- **32 Functional Requirements** (FR-FE-001 to FR-FE-032) across 7 features
- **20 Non-Functional Requirements** (NFR-FE-P, NFR-FE-SEC, NFR-FE-A, NFR-FE-S, NFR-FE-ACC)
- **5 Integration Requirements** (INT-FE-001 to INT-FE-005)
- **5 Data Requirements** (DR-FE-001 to DR-FE-005)

**IMPORTANT**: All requirements in ARC-001-REQ-FE-v1.0 are **MANDATORY** unless explicitly marked as "SHOULD" or "MAY" below. Vendors must address every MANDATORY requirement in their technical proposal. Failure to meet MANDATORY requirements will result in disqualification.

### 3.2 Business Requirements Summary

| ID | Requirement | Priority | Acceptance Criteria |
|----|-------------|----------|---------------------|
| **BR-FE-001** | Real-time Migration Visibility | CRITICAL | Migration team detects failures within 5 seconds; Dashboard updates reflect database changes within 5 seconds; 90%+ adoption within 2 weeks |
| **BR-FE-002** | Operational Efficiency for Engineers | HIGH | PMs spend <2 hours/week on manual reporting (down from 8-10 hours); Wave creation takes <10 minutes; 100% waves managed via app |
| **BR-FE-003** | Executive Stakeholder Communication | HIGH | Executive dashboard shows 6-8 KPIs; PDF report generation <10 seconds; Reports include 30-day trend charts |
| **BR-FE-004** | End User Self-Service Capabilities | HIGH | 80%+ end users access portal before migration; <2% support ticket rate (≤120 tickets for 6,000 users); >80% user satisfaction |
| **BR-FE-005** | Compliance and Audit Reporting | HIGH | Real-time Zero Trust compliance % displayed; Audit trail for all changes; Compliance reports show TPM 2.0, BitLocker, MFA, Defender EDR |
| **BR-FE-006** | Cost Tracking and Budget Control | HIGH | Budget vs actual by category; Forecast remaining costs; Alert when category >90% of budget |
| **BR-FE-007** | Application Compatibility Management | HIGH | 100% business-critical apps approved before migration; App owners document blockers; Dashboard shows % approved (target: 90%+) |
| **BR-FE-008** | High User Adoption and Usability | HIGH | 90%+ migration team adoption within 2 weeks; <2s page load (p95); Mobile-responsive (tablets 1024×768+); >80% user satisfaction |

### 3.3 Functional Requirements Summary

**7 Core Features** (32 functional requirements total):

1. **Feature 1: Real-time Migration Dashboard** (FR-FE-001 to FR-FE-005)
   - KPI cards (8 metrics: Total Devices, Migrated, In Progress, Failed, Average Downtime, Success Rate, Budget Spent, Zero Trust Compliance)
   - Wave progress chart (horizontal bars, color-coded by status)
   - Recent migration events table (20 most recent, real-time updates)
   - Cost tracker widget (budget vs actual, 5 categories)
   - Alert notifications (migration failures, budget overruns, compliance violations)

2. **Feature 2: Wave Management** (FR-FE-006 to FR-FE-010)
   - Create migration wave (name, type, scheduled dates, target device count)
   - Edit migration wave (unless started)
   - Gantt timeline view (all waves on timeline, current date marker)
   - Assign devices to wave (CSV upload or manual selection)
   - Start/Pause/Resume wave (status changes logged to audit trail)

3. **Feature 3: Device Tracking** (FR-FE-011 to FR-FE-016)
   - Search and filter devices (by device ID, hostname, user name, wave, status, department, location)
   - Device detail view (device info, Zero Trust compliance checks, assigned wave, status)
   - Device event timeline (chronological list of Pre-Check, Autopilot, OneDrive Sync, App Install, Post-Validation events)
   - Retry failed migration (button on device detail, logs retry to audit trail)
   - Reassign device to wave (move device from one wave to another, logs change)
   - Bulk device operations (retry, reassign, export to CSV for multiple devices)

4. **Feature 4: Application Compatibility Management** (FR-FE-017 to FR-FE-020)
   - Application test results dashboard (table with app name, owner, test status, test date, approved for deployment)
   - Application approval workflow (app owner approves app, approval logged to audit trail)
   - Document blocker issues (app owner documents issue, severity, remediation plan)
   - Application compatibility summary (% tested, % passed, % approved - target: 90%+ before Wave 1)

5. **Feature 5: Cost Tracking** (FR-FE-021 to FR-FE-025)
   - Budget vs actual dashboard (table with budget, actual, variance, forecast to complete by category)
   - Cost by category drill-down (list of cost records: vendor, invoice, PO, amount, date)
   - Add cost record (form with category, vendor, amount, invoice, PO, cost date)
   - Fiscal year and quarter reporting (filter by fiscal year, quarter)
   - Budget overrun alerts (alert when category >90% of budget)

6. **Feature 6: Executive Dashboard** (FR-FE-026 to FR-FE-028)
   - High-level KPI summary (6-8 KPIs: Migration Progress, Migration Velocity, Success Rate, Zero Trust Compliance, Budget Spent, Projected Completion, Average Downtime, Support Ticket Rate)
   - Trend charts (3 charts: Migration Progress, Success Rate, Budget Spending over last 30 days)
   - One-click PDF report generation (<10 seconds, includes cover page, executive summary, KPIs, trend charts, risk summary, next steps)

7. **Feature 7: End User Self-Service Portal** (FR-FE-029 to FR-FE-032)
   - My migration status (device name, scheduled date, assigned wave, current status, last updated)
   - Pre-migration checklist (6 checklist items: back up files, verify OneDrive sync, close apps, plug in charger, stay connected, don't shut down)
   - FAQ and support contact (10-15 collapsible FAQs, "Contact Support" button linking to ServiceNow)
   - Mobile-responsive design (works on smartphones 320px-768px viewport, tablets 768px+)

**Detailed Requirements**: See `projects/001-windows-11-migration-intune/frontend-requirements.md` (ARC-001-REQ-FE-v1.0) for full functional requirement specifications with acceptance criteria.

### 3.4 Non-Functional Requirements

#### 3.4.1 Performance Requirements (MANDATORY)

| ID | Requirement | Target | Measurement |
|----|-------------|--------|-------------|
| **NFR-FE-P-001** | Page Load Time | <2 seconds (p95) | Application Insights page load telemetry |
| **NFR-FE-P-002** | API Response Time | <500ms (p95) GET requests, <1s (p95) POST/PUT | Application Insights API response time |
| **NFR-FE-P-003** | Real-time Update Latency | <5 seconds from database change to client notification (p95) | Timestamp diff (database INSERT → WebSocket message received) |
| **NFR-FE-P-004** | PDF Report Generation | <10 seconds (p95) | Application Insights API response time for POST /api/reports/generate |
| **NFR-FE-P-005** | Concurrent User Support | 100 concurrent users without performance degradation | Load testing (JMeter or Azure Load Testing) |

**Vendor must demonstrate performance targets via load testing before UAT sign-off.**

#### 3.4.2 Security Requirements (MANDATORY)

| ID | Requirement | Implementation | Compliance |
|----|-------------|----------------|------------|
| **NFR-FE-SEC-001** | Azure AD Authentication with MFA | MSAL.js, OAuth 2.0 Authorization Code Flow with PKCE, MFA enforced via Conditional Access | Architecture Principle 2 (Zero Trust), UK GDPR (data access control) |
| **NFR-FE-SEC-002** | Role-Based Access Control (RBAC) | 5 roles (Admin, Engineer, Stakeholder, AppOwner, EndUser), role claims in Azure AD JWT tokens, backend API enforces role checks | Architecture Principle 2 (Zero Trust) |
| **NFR-FE-SEC-003** | Row-Level Security on CONFIDENTIAL Tables | PostgreSQL RLS policies on COST_TRACKING, STAKEHOLDER tables (Admin role only) | UK GDPR (data protection) |
| **NFR-FE-SEC-004** | TLS 1.2+ Encryption in Transit | Azure Static Web Apps enforces HTTPS, Azure Functions enforces TLS 1.2+, Azure SignalR enforces TLS 1.2+ for WebSocket | Architecture Principle 2 (Zero Trust) |
| **NFR-FE-SEC-005** | API Rate Limiting | 100 requests per 15 minutes per user (REST API only, not WebSocket) | Prevent abuse and DoS attacks |
| **NFR-FE-SEC-006** | Input Validation and Sanitization | Backend validates all inputs (type checks, regex patterns), parameterized queries (SQL injection prevention), React escapes user content (XSS prevention) | OWASP Top 10 (Injection, XSS) |
| **NFR-FE-SEC-007** | HTTPS-Only Access | HTTP requests automatically redirected to HTTPS (Azure Static Web Apps default behavior) | Architecture Principle 2 (Zero Trust) |

**Vendor must pass OWASP Top 10 vulnerability scan (ZAP or Burp Suite) before UAT sign-off.**

#### 3.4.3 Availability and Resilience Requirements (MANDATORY)

| ID | Requirement | Target | Implementation |
|----|-------------|--------|----------------|
| **NFR-FE-A-001** | Uptime SLA | 99.9% uptime during migration phases (Weeks 27-74, 48 weeks) - max 43 minutes downtime per month | Azure Application Insights availability monitoring |
| **NFR-FE-A-002** | Mean Time to Recover (MTTR) | <1 hour from failure detection to full recovery | Azure Static Web Apps/Functions auto-healing, monitoring alerts, on-call engineer, runbooks |
| **NFR-FE-A-003** | Graceful Degradation | If WebSocket fails, fall back to HTTP polling (30-second refresh) without breaking core functionality | Frontend WebSocket client detects connection failure, automatically falls back to polling |

**Planned Maintenance Window**: Sundays 02:00-04:00 UTC (outside migration hours, excluded from uptime SLA).

#### 3.4.4 Scalability Requirements (MANDATORY)

| ID | Requirement | Target | Implementation |
|----|-------------|--------|----------------|
| **NFR-FE-S-001** | Support 6,000 Devices with Pagination | Page load time <2s (p95) for device list with 6,000 devices (100 rows per page) | Backend API returns paginated results (100 rows/page), frontend table with pagination controls |
| **NFR-FE-S-002** | Horizontal Scaling for 3× Growth | Support 18,000 devices, 300 concurrent users, 3,000 WebSocket connections without code changes | Azure Static Web Apps/Functions auto-scaling, PostgreSQL vertical scaling (increase vCores/RAM), Azure SignalR scale-out |

**Vendor must demonstrate scalability via stress testing (3× projected load = 300 concurrent users).**

#### 3.4.5 Accessibility Requirements (MANDATORY)

| ID | Requirement | Compliance | Implementation |
|----|-------------|------------|----------------|
| **NFR-FE-ACC-001** | WCAG 2.1 AA Compliance | All UI components meet WCAG 2.1 Level AA guidelines | Semantic HTML5, ARIA labels, color contrast ≥4.5:1, keyboard navigation, skip-to-content links |
| **NFR-FE-ACC-002** | Keyboard Navigation Support | All interactive elements accessible via keyboard (Tab, Enter, Arrow keys, Escape) | All buttons/links receive focus, focus indicators visible (2px blue outline), Enter activates buttons |
| **NFR-FE-ACC-003** | Screen Reader Support | Application fully navigable with NVDA, JAWS, VoiceOver | Semantic HTML5, ARIA labels for non-semantic elements, ARIA live regions for real-time updates |

**Vendor must pass automated accessibility testing (axe DevTools) and manual screen reader testing (NVDA or VoiceOver) before UAT sign-off.**

### 3.5 Integration Requirements (MANDATORY)

| ID | Integration | Description | Authentication |
|----|-------------|-------------|----------------|
| **INT-FE-001** | PostgreSQL Database | Read/write access to 6 entities (MIGRATION_EVENT, MIGRATION_WAVE, APP_COMPATIBILITY_TEST, COST_TRACKING, STAKEHOLDER, UPDATE_RING_ASSIGNMENT) via private endpoint | PostgreSQL admin credentials stored in Azure Key Vault, connection pooling via pg library |
| **INT-FE-002** | Azure AD (Entra ID) SSO | Single Sign-On for all users using MSAL.js (OAuth 2.0 Authorization Code Flow with PKCE) | Azure AD app registration, redirect URIs configured, role claims in JWT tokens |
| **INT-FE-003** | ServiceNow Integration | Auto-create ServiceNow incident when device fails ≥3 times; "Contact Support" button redirects to ServiceNow self-service portal | ServiceNow OAuth 2.0 or Basic Auth (service account credentials stored in Azure Key Vault) |
| **INT-FE-004** | Azure SignalR Service | Real-time WebSocket updates for migration events, wave status changes, cost updates | Azure SignalR connection string stored in Azure Key Vault, serverless mode, WebSocket connections |
| **INT-FE-005** | Azure Application Insights | Frontend and backend telemetry (page views, API response times, exceptions, custom events, alerts) | Application Insights instrumentation key or connection string stored in Azure Key Vault |

**Vendor must provide OpenAPI 3.0 specification for all 28 REST endpoints and WebSocket event specifications for all 6 events.**

### 3.6 Data Requirements (MANDATORY)

| ID | Table | Access Level | Row-Level Security |
|----|-------|--------------|-------------------|
| **DR-FE-001** | MIGRATION_EVENT | Read-only | No (INTERNAL classification) |
| **DR-FE-002** | MIGRATION_WAVE | Read/write | No (INTERNAL classification) |
| **DR-FE-003** | APP_COMPATIBILITY_TEST | Read/write | No (INTERNAL classification) |
| **DR-FE-004** | COST_TRACKING | Read/write (Admin role only) | Yes (CONFIDENTIAL - Admin role only) |
| **DR-FE-005** | STAKEHOLDER | Read/write (Admin role only) | Yes (CONFIDENTIAL - PII - Admin role only) |

**Database Schema**: See `projects/001-windows-11-migration-intune/terraform/README.md` for full PostgreSQL schema (6 entities, 14 indexes, 4 foreign key constraints).

### 3.7 Compliance Requirements (MANDATORY)

| Regulation | Requirement | Implementation |
|------------|-------------|----------------|
| **UK GDPR** | Data subject rights (access, rectification, erasure, portability) for STAKEHOLDER table (PII: name, email, phone) | Admin panel includes "Export Stakeholder Data" (CSV), "Delete Stakeholder" (soft delete + anonymization), PostgreSQL RLS enforces Admin role |
| **WCAG 2.1 AA** | Web Content Accessibility Guidelines Level AA compliance | Semantic HTML5, ARIA labels, color contrast ≥4.5:1, keyboard navigation, screen reader support |
| **UK Public Sector Bodies Accessibility Regulations 2018** (if applicable) | Accessibility statement published, audit conducted, issues remediated | Accessibility statement in footer (/accessibility-statement), automated + manual testing |

**Vendor must demonstrate UK GDPR compliance for PII handling (STAKEHOLDER table) and WCAG 2.1 AA compliance (axe DevTools, screen reader testing) before UAT sign-off.**

---

## 4. Deliverables

### 4.1 Design Phase Deliverables (Weeks 1-2)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **High-Level Design (HLD)** | System architecture, C4 Context/Container diagrams, technology stack (React 18, Next.js 14, Azure Functions, PostgreSQL, Azure SignalR), integration patterns, security architecture | Document (Markdown/PDF) + Diagrams (draw.io, Mermaid, or C4-PlantUML) | Week 2 | Approved by Architecture Review Board (Gate 1) |
| **UI/UX Mockups** | Figma mockups for all 7 features (Dashboard, Wave Management, Device Tracking, App Compatibility, Cost Tracking, Executive Dashboard, End User Portal) with mobile-responsive designs | Figma project (shared link) | Week 2 | Approved by IT Operations Director and stakeholders |
| **Project Plan** | 14-week project timeline with 7 sprints, milestones, sprint goals, resource assignments, dependencies, risk register | Document (Markdown/PDF) or Project Management tool (JIRA, Azure DevOps, MS Project) | Week 1 | Approved by IT Operations Director |

### 4.2 Detailed Design Phase Deliverables (Weeks 3-4)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Detailed Design (DLD)** | Component architecture, React component hierarchy, state management design (TanStack Query, Zustand), routing structure, database access layer, error handling, logging strategy | Document (Markdown/PDF) | Week 4 | Approved by Enterprise Architect and technical reviewers (Gate 2) |
| **API Specifications** | OpenAPI 3.0 spec for 28 REST endpoints (devices, waves, apps, costs, dashboard, reports) with request/response schemas, error codes, authentication | OpenAPI 3.0 YAML/JSON + Swagger UI | Week 4 | Approved by Enterprise Architect |
| **WebSocket Event Specifications** | Event schemas for 6 WebSocket events (migration-event-created, migration-event-updated, wave-status-changed, cost-added, app-approved, alert-created) with payloads | Document (Markdown/PDF) or JSON Schema | Week 4 | Approved by Enterprise Architect |
| **Database Access Design** | TypeScript classes for each entity, query optimization strategy, connection pooling, Row-Level Security enforcement | Document (Markdown/PDF) or code comments | Week 4 | Approved by Database Administrator |
| **Security Design** | Authentication flow diagram, RBAC role definitions, threat model, security controls mapping to requirements (NFR-FE-SEC-001 to NFR-FE-SEC-007) | Document (Markdown/PDF) | Week 4 | Approved by CISO or Security Architect |
| **CI/CD Pipeline Design** | GitHub Actions workflow diagrams, deployment strategy (staging/production environments), secrets management, automated testing stages, deployment gates | Document (Markdown/PDF) or Architecture Decision Record (ADR) | Week 4 | Approved by Enterprise Architect |

### 4.3 Development Phase Deliverables (Weeks 3-12)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Source Code - Frontend** | React 18 + Next.js 14 application with all 7 features, 32 functional requirements implemented, TypeScript, ESLint/Prettier configured | Git repository (GitHub, Azure Repos, or GitLab) | Ongoing (Sprints 1-7) | Code review approved, meets coding standards, no critical linting errors |
| **Source Code - Backend** | Azure Functions (Node.js) with 28 REST endpoints, 6 WebSocket events, PostgreSQL integration, Azure SignalR integration, TypeScript | Git repository | Ongoing (Sprints 1-7) | Code review approved, meets coding standards |
| **Infrastructure as Code** | Terraform or Bicep for Azure Static Web Apps, Azure Functions, Azure SignalR Service (if not already deployed) | Git repository | Week 8 | Deployable to all environments (dev, test, staging, production) |
| **Unit Tests** | Jest + React Testing Library for frontend components, Jest for backend API functions, ≥80% code coverage | Code in Git repository | Ongoing (Sprints 1-7) | ≥80% code coverage for critical components, all tests passing in CI/CD |
| **Integration Tests** | Playwright or Cypress for end-to-end testing of critical user flows (login, dashboard load, device search, wave creation, device retry, app approval, cost tracking) | Code in Git repository | Week 10 | Critical paths covered, all tests passing in CI/CD |
| **API Documentation** | Interactive Swagger UI for all 28 REST endpoints with request/response examples, authentication instructions | Swagger UI (hosted or local) | Ongoing (Sprints 1-7) | All endpoints documented, examples provided |
| **CI/CD Pipeline** | GitHub Actions workflows for frontend (build, test, deploy to Azure Static Web Apps) and backend (build, test, deploy to Azure Functions) | GitHub Actions YAML files in Git repository | Week 6 | Deploys to staging/production, automated tests pass, deployment gates configured |

### 4.4 Testing Phase Deliverables (Weeks 10-13)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Test Plan** | Test strategy, test cases for all 32 functional requirements, performance test plan, security test plan, accessibility test plan, UAT plan | Document (Markdown/PDF) | Week 10 | Approved by QA Lead |
| **Test Results** | Test execution results (unit, integration, performance, security, accessibility tests) with pass/fail status, bug reports, remediation plan | Document (Markdown/PDF) or Test Management tool (Azure DevOps Test Plans, Zephyr) | Week 13 | All critical/high bugs remediated, UAT sign-off |
| **Performance Test Results** | Load test results (100 concurrent users), stress test results (300 concurrent users), page load times, API response times, WebSocket latency | Document (Markdown/PDF) + JMeter or Azure Load Testing reports | Week 12 | Meets NFR-FE-P-001 to NFR-FE-P-005 targets |
| **Security Test Results** | Vulnerability scan results (OWASP ZAP or Burp Suite), penetration test results, OWASP Top 10 compliance | Document (Markdown/PDF) + Scan reports | Week 13 | No critical/high vulnerabilities, OWASP Top 10 compliance |
| **Accessibility Test Results** | axe DevTools scan results, Lighthouse accessibility audit, NVDA/VoiceOver testing results, WCAG 2.1 AA compliance report | Document (Markdown/PDF) + axe DevTools report | Week 13 | WCAG 2.1 AA compliance, no critical accessibility violations |
| **UAT Sign-Off** | Formal UAT acceptance from IT Operations Director, Migration Project Manager, and key stakeholders | Sign-off document or email confirmation | Week 13 | UAT sign-off obtained, critical bugs remediated |

### 4.5 Deployment Phase Deliverables (Week 14)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Production Deployment** | Frontend deployed to Azure Static Web Apps production, backend deployed to Azure Functions production, custom domain configured (if required), monitoring alerts configured | Running system | Week 14 | Application accessible at production URL, smoke tests pass |
| **Deployment Runbooks** | Step-by-step deployment procedures (frontend, backend, database migrations), rollback procedures, troubleshooting guide | Document (Markdown/PDF) | Week 14 | SRE team can deploy independently following runbooks |
| **Monitoring Dashboard** | Application Insights dashboard with key metrics (page load times, API response times, error rates, uptime), alerts configured (CPU, memory, exceptions, availability) | Application Insights dashboard (Azure portal) | Week 14 | All key metrics tracked, alerts configured and tested |
| **Disaster Recovery Plan** | DR procedures (backup/restore, failover), RPO <5 minutes, RTO <1 hour, DR drill executed and documented | Document (Markdown/PDF) | Week 14 | DR drill successfully executed, procedures documented |

### 4.6 Documentation Deliverables (Weeks 13-14)

| Deliverable | Description | Format | Due Date | Acceptance Criteria |
|-------------|-------------|--------|----------|---------------------|
| **Technical Documentation** | System architecture document (C4 diagrams, deployment architecture), Architecture Decision Records (ADRs), component documentation, database schema documentation, API documentation (OpenAPI spec) | Markdown files in Git repository or Confluence | Week 14 | Documentation reviewed and approved by Enterprise Architect |
| **Operations Manual** | System administration procedures, monitoring guide, incident response runbooks, performance tuning guide, backup/restore procedures | Document (Markdown/PDF) | Week 14 | SRE team trained, can operate system 24/7 |
| **User Manual - Migration Team** | Administrator manual for migration team (create waves, assign devices, retry migrations, track costs, approve apps), screenshots, step-by-step instructions | Document (PDF) or online help system | Week 14 | Migration team trained, can use application independently |
| **User Manual - End Users** | End-user manual for End User Portal (check migration date, complete checklist, access FAQ), screenshots, FAQs | Document (PDF) or online help system | Week 14 | End users trained, can use portal independently |
| **Training Materials** | Video tutorials (screen recordings with voiceover), PowerPoint slides, quick reference guides, cheat sheets | Video files (MP4), PowerPoint slides (PPTX), PDF quick reference guides | Week 14 | Training materials delivered, stakeholders trained |

### 4.7 Knowledge Transfer Deliverables (Weeks 13-14)

| Activity | Description | Participants | Duration | Due Date | Acceptance Criteria |
|----------|-------------|--------------|----------|----------|---------------------|
| **Technical Training** | Architecture walkthrough, codebase tour (frontend and backend), database schema review, CI/CD pipeline demo, deployment demo, troubleshooting tips | Internal development team, SRE team, Vendor team | 8 hours (2 sessions × 4 hours) | Week 14 | Internal team can make code changes, deploy, troubleshoot independently |
| **Operations Training** | Monitoring dashboards walkthrough, alert review, incident response procedures, log analysis, backup/restore demo, DR drill review | SRE/Operations team, Vendor team | 4 hours (1 session × 4 hours) | Week 14 | SRE team can monitor, respond to incidents, perform DR procedures independently |
| **User Training - Migration Team** | Application demo for migration team (dashboard, wave management, device tracking, app compatibility, cost tracking), hands-on exercises, Q&A | Migration Project Manager, IT Operations team, Vendor team | 2 hours (1 session × 2 hours) | Week 14 | Migration team can use application for daily operations |
| **User Training - End Users** | End User Portal demo (check migration status, complete checklist, access FAQ), hands-on exercises, Q&A | End user representatives, Vendor team | 1 hour (1 session × 1 hour) | Week 14 | End users can use portal for self-service |

### 4.8 Warranty and Support Deliverables (Weeks 15-26)

| Deliverable | Description | Duration | Acceptance Criteria |
|-------------|-------------|----------|---------------------|
| **Hypercare Support** | 24/7 on-call support for Severity 0-1 incidents, response within 1 hour, hotfix deployment via CI/CD pipeline | 2 weeks (Weeks 15-16) | No critical incidents remain unresolved, application stable |
| **90-Day Warranty** | Bug fixes for defects against requirements (functional, non-functional, integration requirements), no additional charge | 90 days from production deployment (Weeks 15-26) | All warranty bugs remediated, application meets all MANDATORY requirements |

**Warranty Scope**: Vendor will remediate defects (bugs) that prevent the application from meeting the MANDATORY requirements defined in ARC-001-REQ-FE-v1.0 at no additional charge during the 90-day warranty period. Warranty covers:
- Functional defects (features not working per acceptance criteria)
- Performance defects (not meeting NFR-FE-P-001 to NFR-FE-P-005 targets)
- Security defects (vulnerabilities introduced by vendor code)
- Accessibility defects (WCAG 2.1 AA compliance violations)

**Warranty Exclusions**: Warranty does NOT cover:
- Feature enhancements or changes beyond original requirements
- Performance issues caused by client infrastructure (e.g., PostgreSQL server undersized)
- Third-party service outages (Azure, Azure AD, PostgreSQL)
- Defects introduced by client modifications to vendor code

---

## 5. Project Timeline and Milestones

### 5.1 High-Level Timeline

**Total Duration**: 14 weeks from contract signing to production go-live (7 sprints × 2 weeks each)

| Phase | Duration | Key Deliverables | Key Milestones |
|-------|----------|------------------|----------------|
| **Initiation** | Week 1 | Project plan, resource assignments, environment setup, kickoff meeting | M1: Project Kickoff |
| **Design** | Weeks 1-4 | HLD (Week 2), UI/UX mockups (Week 2), DLD (Week 4), API specs (Week 4), security design (Week 4) | M2: HLD Approval (Week 2), M3: DLD Approval (Week 4) |
| **Development Sprint 1-2 (Pilot MVP)** | Weeks 3-6 | Dashboard, Wave Management, Device Tracking features | M4: Pilot MVP Demo (Week 6) |
| **Development Sprint 3-4 (Production Features)** | Weeks 7-10 | Application Compatibility, Cost Tracking features | M5: Mid-Project Review (Week 10) |
| **Development Sprint 5-7 (Stakeholder Features)** | Weeks 11-14 | Executive Dashboard, End User Portal, PDF Reports | M6: Feature Complete (Week 12) |
| **Testing** | Weeks 10-13 | Performance testing, security testing, accessibility testing, UAT | M7: UAT Sign-Off (Week 13) |
| **Deployment** | Week 14 | Production deployment, smoke tests, hypercare begins | M8: Production Go-Live (Week 14) |
| **Hypercare** | Weeks 15-16 | 24/7 support, monitor for critical issues, hotfixes | M9: Hypercare Complete (Week 16) |
| **Warranty** | Weeks 15-26 | Bug fixes for defects against requirements | M10: Warranty Complete (Week 26) |

### 5.2 Key Milestones and Exit Criteria

| Milestone | Target Week | Deliverables Due | Exit Criteria |
|-----------|-------------|------------------|---------------|
| **M1: Project Kickoff** | Week 1 | Project plan, resource assignments, GitHub repository setup, Azure subscription access granted | Kickoff meeting held, vendor team onboarded, environments accessible |
| **M2: HLD Approval (Gate 1)** | Week 2 | High-Level Design (HLD), C4 diagrams, technology stack, UI/UX mockups | Architecture Review Board approval obtained |
| **M3: DLD Approval (Gate 2)** | Week 4 | Detailed Design (DLD), API specifications, WebSocket event specs, security design, CI/CD pipeline design | Enterprise Architect and technical reviewers approval obtained |
| **M4: Pilot MVP Demo** | Week 6 | Sprint 1-2 features complete (Dashboard, Wave Management, Device Tracking), demo to stakeholders | Stakeholders approve pilot MVP, greenlight for production features |
| **M5: Mid-Project Review** | Week 10 | Sprint 3-4 features complete (Application Compatibility, Cost Tracking), integration tests passing | 60% functionality complete, on track for Week 14 go-live |
| **M6: Feature Complete** | Week 12 | All 7 features complete (Executive Dashboard, End User Portal, PDF Reports), unit tests passing (≥80% coverage) | Code freeze, begin UAT |
| **M7: UAT Sign-Off** | Week 13 | UAT completed, all critical/high bugs remediated, test results documented | IT Operations Director and stakeholders provide formal UAT sign-off |
| **M8: Production Go-Live** | Week 14 | Frontend/backend deployed to production, monitoring configured, smoke tests pass, hypercare begins | Application live, users operational, migration team using application |
| **M9: Hypercare Complete** | Week 16 | 2 weeks 24/7 support complete, no critical incidents remaining, application stable | Transition to 90-day warranty support |
| **M10: Warranty Complete** | Week 26 | All warranty bugs remediated, application meets all MANDATORY requirements, knowledge transfer complete | Project closure, final sign-off |

### 5.3 Sprint Breakdown (Agile Delivery)

| Sprint | Duration | Sprint Goal | Features Delivered | Acceptance Criteria |
|--------|----------|-----------|--------------------|---------------------|
| **Sprint 0** | Weeks 1-2 | Design & Planning | HLD, DLD, UI/UX mockups, API specs, project plan | HLD approved (Week 2), DLD approved (Week 4) |
| **Sprint 1** | Weeks 3-4 | Pilot MVP - Dashboard | Real-time Migration Dashboard (FR-FE-001 to FR-FE-005): KPI cards, wave progress chart, recent events, cost tracker widget, alert notifications | Dashboard loads <2s, real-time updates <5s, stakeholder demo |
| **Sprint 2** | Weeks 5-6 | Pilot MVP - Wave & Device Mgmt | Wave Management (FR-FE-006 to FR-FE-010), Device Tracking (FR-FE-011 to FR-FE-016) | Create wave, assign devices, start wave, search devices, retry migration - all working |
| **Sprint 3** | Weeks 7-8 | Production Features - App Compatibility | Application Compatibility Management (FR-FE-017 to FR-FE-020): Test results dashboard, approval workflow, blocker tracking | App owner can approve apps, document blockers, view summary |
| **Sprint 4** | Weeks 9-10 | Production Features - Cost Tracking | Cost Tracking (FR-FE-021 to FR-FE-025): Budget vs actual, category drill-down, add cost records, fiscal reporting, alerts | CFO can track budget, add costs, view fiscal reports (Admin role only) |
| **Sprint 5** | Weeks 11-12 | Stakeholder Features - Executive Dashboard | Executive Dashboard (FR-FE-026 to FR-FE-028): High-level KPIs, trend charts, PDF report generation | Executives can view KPIs, generate PDF reports <10s |
| **Sprint 6** | Weeks 12-13 | End User Features - Self-Service Portal | End User Self-Service Portal (FR-FE-029 to FR-FE-032): My migration status, checklist, FAQ, mobile-responsive | End users can check status, complete checklist, access FAQ on mobile |
| **Sprint 7** | Week 13-14 | Testing, Deployment, Go-Live | UAT, performance testing, security testing, accessibility testing, production deployment | UAT sign-off, production deployment, smoke tests pass |

### 5.4 Proposal and Procurement Timeline

| Event | Date | Description |
|-------|------|-------------|
| **RFP Issued** | 2025-11-21 | SOW published to qualified vendors |
| **Vendor Questions Due** | 2025-12-05 (2 weeks after RFP issue) | Vendors submit clarification questions via email |
| **Answers Published** | 2025-12-12 (3 weeks after RFP issue) | Client publishes answers to all vendor questions (sent to all vendors) |
| **Proposals Due** | 2026-01-02 (6 weeks after RFP issue) | Vendors submit written proposals (PDF format) |
| **Vendor Presentations** | 2026-01-13 to 2026-01-17 (8 weeks after RFP issue) | Shortlisted vendors present to evaluation panel (2-hour presentations) |
| **Final Vendor Selection** | 2026-01-24 (9 weeks after RFP issue) | Client selects winning vendor, notifies all vendors |
| **Contract Negotiation** | 2026-01-27 to 2026-02-07 (Weeks 10-11) | Contract negotiation, legal review, final terms |
| **Contract Signing** | 2026-02-10 (Week 11) | Contract executed, PO issued |
| **Expected Project Start (M1: Kickoff)** | 2026-02-17 (Week 12) | Project kickoff meeting, Week 1 begins |
| **Expected Production Go-Live (M8)** | 2026-05-18 (Week 12 + 14 weeks) | Production deployment, migration team using application |

---

## 6. Vendor Qualifications and Requirements

### 6.1 Mandatory Qualifications (Pass/Fail)

Vendors **MUST** meet the following minimum qualifications to be considered. Failure to meet any mandatory qualification will result in **disqualification**.

**MQ-1 - Experience**: Minimum **5 years of experience** delivering web application projects of similar scope and complexity (React/Angular/Vue frontends, RESTful backends, cloud hosting, enterprise clients).

**MQ-2 - Reference Projects**: At least **3 reference projects** in the past **3 years** demonstrating relevant capabilities:
- Project 1: React or Next.js web application (minimum 10,000 lines of code)
- Project 2: Azure cloud deployment (Azure App Service, Azure Functions, or similar)
- Project 3: Enterprise application with authentication (Azure AD, OAuth 2.0, SSO)

**MQ-3 - Team Certifications**: Vendor team must include individuals with relevant certifications:
- [ ] **Azure Certified**: Minimum 1 team member with Azure Solutions Architect Expert or Azure Developer Associate certification
- [ ] **Security Certified**: Minimum 1 team member with CISSP, CEH, or CompTIA Security+ certification
- [ ] **React/Next.js Expertise**: Minimum 2 team members with demonstrated React/Next.js experience (portfolio or GitHub profile required)

**MQ-4 - Security Compliance**: Company must hold **SOC 2 Type II** or **ISO 27001** certification (provide certificate copy with proposal).

**MQ-5 - Financial Stability**: Company must provide evidence of financial stability:
- Company registered for ≥3 years
- Annual revenue ≥£500,000 (or equivalent in vendor's currency)
- Financial statements (last 2 years) or bank reference letter

**MQ-6 - UK Presence** (if applicable): If vendor is not UK-based, vendor must demonstrate ability to work UK business hours (GMT/BST) for daily standups and stakeholder meetings. Time zone difference max ±3 hours from UK.

**MQ-7 - Insurance**: Vendor must carry appropriate insurance:
- Professional Liability Insurance (Errors & Omissions): Minimum £1,000,000 coverage
- Cyber Liability Insurance: Minimum £1,000,000 coverage
- Provide certificates of insurance with proposal

**MQ-8 - NDA Execution**: Vendor must execute Non-Disclosure Agreement (NDA) before accessing detailed requirements (ARC-001-REQ-FE-v1.0) and PostgreSQL database schema.

### 6.2 Preferred Qualifications (Scoring Advantage)

Preference will be given to vendors with the following qualifications (scored in evaluation criteria):

**PQ-1**: Experience in **UK Government or large enterprise** projects (financial services, healthcare, public sector) with similar governance and compliance requirements.

**PQ-2**: Expertise with **Azure services used in this project**: Azure Static Web Apps, Azure Functions, Azure SignalR Service, Azure Database for PostgreSQL, Azure AD (Entra ID), Azure Application Insights.

**PQ-3**: Prior work with **Microsoft InTune, Windows 11 migration projects, or device management platforms** (demonstrates domain knowledge).

**PQ-4**: **Agile/DevOps culture** with demonstrable CI/CD maturity (GitHub Actions, Azure DevOps, GitLab CI), automated testing, infrastructure as code.

**PQ-5**: **Strong accessibility expertise** (WCAG 2.1 AA compliance, screen reader testing, prior accessibility audits).

**PQ-6**: **UK GDPR compliance experience** (DPIA, data subject rights, PII handling, prior GDPR audits).

**PQ-7**: **Small/Medium Enterprise (SME) vendor** (preference for SMEs to support diverse supplier base, if vendor meets all mandatory qualifications).

### 6.3 Team Composition Requirements

Vendor must propose a team with the following roles (minimum team size: **5 FTEs** for 14-week duration):

| Role | Responsibilities | Required Skills | FTE Commitment |
|------|-----------------|-----------------|----------------|
| **Technical Lead / Solutions Architect** | Overall technical responsibility, HLD/DLD, architecture decisions, stakeholder communication | Azure architecture, React/Next.js, security design, 5+ years experience | 0.5 FTE (20 hours/week) |
| **Frontend Developer (Lead)** | Frontend development (React 18, Next.js 14, TypeScript, Shadcn/ui, TanStack Query, Zustand), UI/UX implementation, accessibility | React/Next.js expert, TypeScript, WCAG 2.1 AA, 3+ years experience | 1.0 FTE (40 hours/week) |
| **Frontend Developer (Support)** | Frontend development support, UI component development, testing | React/Next.js, TypeScript, Jest, React Testing Library, 2+ years experience | 1.0 FTE (40 hours/week) |
| **Backend Developer** | Backend API development (Azure Functions, Node.js, TypeScript), PostgreSQL integration, Azure SignalR integration, security | Node.js/TypeScript, Azure Functions, PostgreSQL, REST APIs, 3+ years experience | 1.0 FTE (40 hours/week) |
| **DevOps Engineer** | CI/CD pipeline (GitHub Actions), infrastructure as code (Terraform/Bicep), Azure deployment, monitoring (Application Insights) | Azure DevOps, GitHub Actions, Terraform, monitoring, 2+ years experience | 0.5 FTE (20 hours/week) |
| **QA Engineer / Tester** | Test plan, automated testing (Jest, Playwright/Cypress), performance testing, security testing, accessibility testing, UAT coordination | Test automation, Playwright/Cypress, performance testing (JMeter), security testing (OWASP ZAP), 2+ years experience | 0.5 FTE (20 hours/week, Weeks 10-14) |
| **UI/UX Designer** | UI/UX mockups (Figma), design system, mobile-responsive design, accessibility design | Figma, design systems, WCAG 2.1 AA, 2+ years experience | 0.25 FTE (10 hours/week, Weeks 1-4) |
| **Project Manager** | Sprint planning, daily standups, stakeholder communication, risk management, deliverable tracking | Agile/Scrum, stakeholder management, 3+ years experience | 0.25 FTE (10 hours/week) |

**Total Team Size**: 5.0 FTEs (200 hours/week), 14 weeks = 2,800 hours total effort

**Vendor must provide CVs/resumes for all proposed team members with proposal**, including:
- Name, role, years of experience
- Relevant certifications (Azure, security, React/Next.js)
- Portfolio or GitHub profile (for developers)
- Previous project experience (reference projects)

### 6.4 Approved Technology Stack

The following technology stack is **MANDATORY** for this project (aligned with client's enterprise architecture principles):

**Frontend**:
- [ ] **React 18** (functional components, hooks)
- [ ] **Next.js 14** (App Router, Server-Side Rendering, API routes)
- [ ] **TypeScript** (strict mode)
- [ ] **Shadcn/ui** (UI component library) or **Material-UI** (MUI) as alternative
- [ ] **Tailwind CSS** (utility-first CSS framework)
- [ ] **TanStack Query** (React Query) for server state management
- [ ] **Zustand** or **Redux Toolkit** for client state management
- [ ] **Recharts** or **Chart.js** for data visualization
- [ ] **MSAL.js** (@azure/msal-browser) for Azure AD authentication

**Backend**:
- [ ] **Azure Functions** (consumption plan, Node.js runtime)
- [ ] **Node.js 18+** (LTS version)
- [ ] **TypeScript** (strict mode)
- [ ] **Express** (optional, for Azure Functions HTTP routing)
- [ ] **pg** (node-postgres) for PostgreSQL connection pooling
- [ ] **@microsoft/signalr** (server-side SignalR hub for Azure SignalR Service)
- [ ] **Joi** or **Zod** for input validation
- [ ] **Winston** or **Pino** for structured logging to Application Insights

**Database**:
- [ ] **Azure Database for PostgreSQL Flexible Server** (PostgreSQL 15) - Already deployed
- [ ] Schema: 6 entities (MIGRATION_EVENT, MIGRATION_WAVE, APP_COMPATIBILITY_TEST, COST_TRACKING, STAKEHOLDER, UPDATE_RING_ASSIGNMENT) - Already deployed

**Azure Services** (MANDATORY):
- [ ] **Azure Static Web Apps** (frontend hosting, CDN, CI/CD)
- [ ] **Azure Functions** (backend API hosting, consumption plan)
- [ ] **Azure SignalR Service** (serverless mode, WebSocket connections)
- [ ] **Azure AD (Entra ID)** (authentication, SSO, RBAC)
- [ ] **Azure Key Vault** (secrets management: PostgreSQL credentials, Azure SignalR connection string)
- [ ] **Azure Application Insights** (monitoring, telemetry, alerts)
- [ ] **Azure Front Door** (optional, for CDN + WAF if required by client)

**CI/CD**:
- [ ] **GitHub Actions** (CI/CD pipeline, automated testing, deployment)
- [ ] **GitHub** (version control, code review, pull requests)

**Testing**:
- [ ] **Jest** (unit testing, ≥80% code coverage)
- [ ] **React Testing Library** (React component testing)
- [ ] **Playwright** or **Cypress** (end-to-end testing, integration testing)
- [ ] **Supertest** or **Chai HTTP** (API testing)
- [ ] **JMeter** or **Azure Load Testing** (performance testing, load testing)
- [ ] **OWASP ZAP** or **Burp Suite** (security testing, vulnerability scanning)
- [ ] **axe DevTools** or **Lighthouse** (accessibility testing, WCAG 2.1 AA compliance)

**Vendor may NOT propose alternative technology stack** without explicit client approval during design phase (HLD). Any deviations from approved stack must be justified with technical rationale and risk assessment.

---

## 7. Proposal Requirements

Vendors must submit a comprehensive written proposal (PDF format, maximum 50 pages) addressing the following sections:

### 7.1 Executive Summary (2 pages max)

- Vendor company overview (history, size, locations, annual revenue, years in business)
- Understanding of project objectives and challenges
- High-level approach and why vendor is best suited for this engagement
- Proposed team size and key team members
- Total proposed cost (fixed-price or time & materials)
- Proposed timeline (14 weeks or vendor's alternative)

### 7.2 Technical Approach (10 pages max)

**7.2.1 Architecture Approach**
- High-level architecture diagram (C4 Context or similar)
- Technology stack (confirm alignment with approved stack in Section 6.4)
- Integration strategy (Azure AD, PostgreSQL, Azure SignalR, ServiceNow, Application Insights)
- Security architecture (authentication flow, RBAC, Row-Level Security, TLS 1.2+)
- Scalability and performance approach (pagination, caching, WebSocket optimization)
- Accessibility approach (WCAG 2.1 AA compliance strategy)

**7.2.2 Development Methodology**
- Agile/Scrum practices (sprint planning, daily standups, retrospectives)
- Code review process (pull requests, approval gates, coding standards)
- Testing strategy (unit tests, integration tests, performance tests, security tests, accessibility tests)
- CI/CD pipeline approach (GitHub Actions workflows, deployment gates, automated testing)
- Quality assurance process (definition of done, acceptance criteria validation)

**7.2.3 Risk Mitigation**
- Identify top 5 project risks (technical, schedule, resource, client dependency)
- Mitigation strategies for each risk
- Contingency plans for critical risks (e.g., vendor team member unavailability, client approval delays)

**7.2.4 Innovation and Value-Add**
- Optional enhancements beyond requirements (e.g., dark mode, advanced analytics, mobile native apps)
- Best practices from previous projects applicable to this engagement
- Recommendations for long-term maintainability and scalability

### 7.3 Project Plan and Timeline (5 pages max)

**7.3.1 Detailed Timeline**
- 14-week Gantt chart with sprints, milestones, deliverables, dependencies
- If vendor proposes alternative timeline (shorter or longer), provide justification
- Critical path analysis (identify dependencies that could delay go-live)

**7.3.2 Sprint Breakdown**
- Sprint goals for all 7 sprints (Sprint 1-7)
- Features delivered per sprint (map to FR-FE-001 to FR-FE-032)
- Sprint deliverables (code, tests, documentation)

**7.3.3 Resource Plan**
- Team composition (roles, names, FTE commitment, weeks assigned)
- Resource ramp-up and ramp-down plan
- On-call support plan (hypercare Weeks 15-16, warranty Weeks 15-26)

**7.3.4 Dependencies**
- Client dependencies (Azure subscription access, PostgreSQL access, Azure AD configuration, stakeholder availability)
- Third-party dependencies (Azure services, ServiceNow)
- Mitigation for dependency risks

### 7.4 Team Composition and Experience (10 pages max)

**7.4.1 Team CVs/Resumes**
- Provide CV/resume for each proposed team member (1-2 pages per person)
- Include: Name, role, years of experience, relevant certifications (Azure, security, React/Next.js), previous project experience, portfolio/GitHub profile (for developers)
- Highlight team members' experience with approved technology stack (React 18, Next.js 14, Azure Functions, PostgreSQL, Azure SignalR, Azure AD)

**7.4.2 Organizational Chart**
- Team reporting structure (who reports to whom)
- Escalation path for issues (technical, schedule, resource)
- Client-facing roles (who will attend daily standups, sprint reviews, stakeholder meetings)

**7.4.3 Team Qualifications**
- Demonstrate compliance with Mandatory Qualifications (MQ-1 to MQ-8) in Section 6.1
- Highlight Preferred Qualifications (PQ-1 to PQ-7) in Section 6.2 (if applicable)

### 7.5 Reference Projects (5 pages max)

**Provide detailed descriptions for 3 reference projects** demonstrating relevant capabilities:

For each reference project, include:
- **Project Name**: (use generic name if client confidentiality required)
- **Client Name**: (or "Confidential Client - Financial Services" if NDA prohibits disclosure)
- **Project Duration**: (start date, end date, total duration)
- **Project Budget**: (or budget range if exact amount confidential)
- **Team Size**: (number of FTEs)
- **Technologies Used**: (frontend, backend, cloud platform, database)
- **Scope**: (2-3 paragraphs describing project objectives, deliverables, challenges)
- **Vendor's Role**: (prime contractor, subcontractor, specific deliverables)
- **Outcomes**: (project success metrics, client satisfaction, post-launch performance)
- **Relevance to This SOW**: (why this reference project demonstrates vendor's capability for Migration Control Centre)
- **Client Reference Contact**: (name, title, email, phone) - Must be willing to provide reference call

**Reference Project Requirements**:
- **Project 1**: React or Next.js web application (minimum 10,000 lines of code, demonstrate frontend expertise)
- **Project 2**: Azure cloud deployment (Azure App Service, Azure Functions, or similar, demonstrate Azure expertise)
- **Project 3**: Enterprise application with authentication (Azure AD, OAuth 2.0, SSO, demonstrate security expertise)

**Client reserves the right to contact reference clients for reference calls.** Non-responsive reference contacts or negative feedback may impact vendor evaluation.

### 7.6 Pricing and Commercial Terms (5 pages max)

**7.6.1 Pricing Model**

Vendor must propose **one of the following pricing models** (client preference: fixed-price):

**Option A: Fixed-Price** (Preferred)
- Total fixed price (GBP) for all deliverables (design, development, testing, deployment, knowledge transfer, 90-day warranty)
- Payment schedule tied to milestones (e.g., 20% on HLD approval, 30% on DLD approval, 30% on UAT sign-off, 20% on production go-live)
- Fixed price includes all costs (labor, travel, tools, licenses, third-party services)
- Change requests priced separately (vendor provides hourly rate for change requests)

**Option B: Time & Materials** (Alternative)
- Hourly rates by role (Technical Lead, Frontend Developer, Backend Developer, DevOps Engineer, QA Engineer, UI/UX Designer, Project Manager)
- Estimated total hours by role (provide breakdown)
- Estimated total cost (GBP) based on hours × rates
- Not-to-exceed (NTE) cap (maximum cost even if hours exceed estimate)
- Monthly invoicing based on actual hours worked (timesheets required)

**7.6.2 Cost Breakdown**

Provide detailed cost breakdown by phase and role:

| Phase | Technical Lead | Frontend Dev | Backend Dev | DevOps Eng | QA Eng | UI/UX Designer | PM | Total Cost (GBP) |
|-------|---------------|--------------|-------------|-----------|--------|----------------|----|--------------------|
| Design (Weeks 1-4) | | | | | | | | |
| Development Sprint 1-2 (Weeks 3-6) | | | | | | | | |
| Development Sprint 3-4 (Weeks 7-10) | | | | | | | | |
| Development Sprint 5-7 (Weeks 11-14) | | | | | | | | |
| Testing (Weeks 10-13) | | | | | | | | |
| Deployment (Week 14) | | | | | | | | |
| Hypercare (Weeks 15-16) | | | | | | | | |
| Warranty (Weeks 15-26) | | | | | | | | |
| **TOTAL** | | | | | | | | **£X** |

**7.6.3 Payment Terms**

- Payment schedule (milestone-based or monthly)
- Invoice payment terms (e.g., Net 30 days from invoice date)
- Late payment penalties (if applicable)
- Currency (GBP preferred, vendor may propose alternative with exchange rate mechanism)

**7.6.4 Exclusions and Assumptions**

- **Cost Exclusions**: Items NOT included in proposed cost (e.g., Azure infrastructure costs, ServiceNow licenses, client travel, third-party tools beyond GitHub, client-requested scope changes)
- **Assumptions**: Key assumptions underlying cost estimate (e.g., client provides Azure subscription, client responds to questions within 2 business days, no more than 2 rounds of HLD/DLD revisions, requirements stable with max 10% scope change)

**7.6.5 Warranty Terms**

- 90-day warranty period (Weeks 15-26) included in fixed price
- Warranty scope (bug fixes for defects against MANDATORY requirements)
- Warranty exclusions (feature enhancements, client-introduced defects, third-party service issues)
- Warranty response times (Severity 0: 4 hours, Severity 1: 8 hours, Severity 2-3: 2 business days)

**7.6.6 Optional Post-Warranty Support**

- Optional ongoing support and maintenance contract (if client wishes to retain vendor beyond 90-day warranty)
- Support tiers (e.g., Bronze: 8×5 business hours, Silver: 12×5, Gold: 24×7)
- Hourly rates for post-warranty enhancements or change requests

### 7.7 Compliance and Legal (3 pages max)

**7.7.1 Security Compliance**
- Copy of SOC 2 Type II or ISO 27001 certificate (MQ-4)
- Copy of Cyber Liability Insurance certificate (MQ-7)
- Vendor's security policies (data handling, access control, encryption, incident response)
- Background check policy for vendor team members (if applicable)

**7.7.2 UK GDPR Compliance**
- Vendor's UK GDPR compliance statement
- Data Processing Agreement (DPA) template (if vendor will process PII from STAKEHOLDER table)
- Data breach notification procedures (notify client within 24 hours)
- Data residency (confirm vendor will not transfer data outside UK without client approval)

**7.7.3 Intellectual Property**
- Confirm client owns all IP (source code, documentation, designs, deliverables)
- Open-source software (OSS) policy (list any OSS dependencies, licenses: MIT, Apache 2.0, BSD acceptable; GPL requires client approval)
- Third-party components (list any third-party libraries, licenses, indemnification)

**7.7.4 Subcontracting**
- Identify any subcontractors (name, role, location, percentage of work)
- Confirm all subcontractors bound by same NDA, security, and IP terms
- Client reserves right to approve or reject subcontractors

**7.7.5 Insurance Certificates**
- Professional Liability Insurance (Errors & Omissions): Minimum £1,000,000 coverage (MQ-7)
- Cyber Liability Insurance: Minimum £1,000,000 coverage (MQ-7)
- General Liability Insurance: Minimum £1,000,000 coverage (optional but preferred)

**7.7.6 Financial Statements**
- Financial statements (last 2 years) or bank reference letter demonstrating financial stability (MQ-5)
- Dun & Bradstreet report (if available)

**7.7.7 Company Registration**
- Copy of company registration certificate (Companies House registration for UK companies, equivalent for non-UK companies)
- VAT registration number (if applicable)

### 7.8 Additional Information (Optional, 5 pages max)

- Case studies or white papers relevant to this project
- Awards or recognitions (e.g., Azure Partner of the Year, React certification)
- Client testimonials or letters of recommendation
- Vendor's commitment to diversity and inclusion (if applicable)
- Vendor's environmental sustainability practices (if applicable)

### 7.9 Proposal Submission Requirements

**7.9.1 Submission Format**
- Proposal must be submitted as a **single PDF file** (maximum 50 pages, excluding CVs and appendices)
- File naming convention: `SOW-Migration-Control-Centre-[Vendor-Name]-2026-01-02.pdf`
- Page size: A4 portrait
- Font: Minimum 10pt for body text, 12pt for headings
- Include table of contents with page numbers

**7.9.2 Submission Method**
- Email proposal to: [procurement@example.com](mailto:procurement@example.com)
- Subject line: "RFP Response - Migration Control Centre - [Vendor Name]"
- Confirm receipt within 24 hours (client will reply with confirmation email)

**7.9.3 Submission Deadline**
- **Proposals Due**: 2026-01-02 by 17:00 GMT
- Late proposals will NOT be accepted (no exceptions)
- Vendor responsible for ensuring timely delivery (allow time for email delivery, large file sizes)

**7.9.4 Proposal Validity**
- Proposals must remain valid for **90 days** from submission deadline (until 2026-04-02)
- Pricing and terms must remain firm during validity period (no price increases)

**7.9.5 Questions and Clarifications**
- Vendor questions due by **2025-12-05 by 17:00 GMT** (2 weeks after RFP issue)
- Submit questions via email to: [procurement@example.com](mailto:procurement@example.com)
- Client will publish answers to all vendors by **2025-12-12** (3 weeks after RFP issue)
- No questions accepted after 2025-12-05 deadline

---

## 8. Evaluation Criteria

### 8.1 Evaluation Process

All proposals will be evaluated using a **two-stage process**:

**Stage 1: Mandatory Qualifications Check (Pass/Fail)**
- Proposals will be reviewed against Mandatory Qualifications (MQ-1 to MQ-8) in Section 6.1
- Proposals that fail to meet ANY mandatory qualification will be **disqualified** and will not proceed to Stage 2
- Client reserves the right to request clarifications or additional documentation for MQ verification

**Stage 2: Scored Evaluation (Shortlisted Vendors Only)**
- Proposals that pass Stage 1 will be scored using weighted criteria (Section 8.2)
- Top 3-5 scoring vendors will be invited for vendor presentations (2-hour presentation + Q&A)
- Final vendor selection based on total score (written proposal + presentation)

### 8.2 Evaluation Criteria and Weighting

**Total Score: 100 points**

| Criteria | Weight | Max Points | Sub-Criteria |
|----------|--------|------------|--------------|
| **1. Technical Approach** | 35% | 35 points | Architecture design (10 pts), Development methodology (8 pts), Testing strategy (7 pts), Risk mitigation (5 pts), Innovation (5 pts) |
| **2. Team Qualifications & Experience** | 25% | 25 points | Team skills and certifications (10 pts), Reference projects (10 pts), Team size and availability (5 pts) |
| **3. Project Plan & Timeline** | 15% | 15 points | Realistic timeline (7 pts), Detailed sprint plan (5 pts), Resource plan (3 pts) |
| **4. Cost** | 20% | 20 points | Total cost competitiveness (15 pts), Payment terms (3 pts), Value for money (2 pts) |
| **5. Compliance & Legal** | 5% | 5 points | Security compliance (2 pts), UK GDPR compliance (1 pt), IP terms (1 pt), Insurance (1 pt) |

**Scoring Methodology**:
- Each sub-criteria scored on scale of 0-10 (or max points for sub-criteria)
- **10 = Exceptional** (exceeds requirements significantly)
- **8 = Strong** (exceeds requirements)
- **6 = Acceptable** (meets requirements)
- **4 = Marginal** (partially meets requirements, concerns)
- **2 = Weak** (does not meet requirements)
- **0 = Non-responsive** (no information provided)
- Sub-criteria scores weighted to calculate total criteria score

### 8.3 Detailed Evaluation Sub-Criteria

#### 8.3.1 Technical Approach (35 points)

**Architecture Design (10 points)**
- Quality of high-level architecture diagram (C4 Context/Container)
- Alignment with approved technology stack (React 18, Next.js 14, Azure Functions, PostgreSQL, Azure SignalR)
- Integration strategy (Azure AD, PostgreSQL, Azure SignalR, ServiceNow, Application Insights)
- Security architecture (authentication flow, RBAC, Row-Level Security, TLS 1.2+)
- Scalability and performance approach (pagination, caching, WebSocket optimization)

**Development Methodology (8 points)**
- Agile/Scrum practices (sprint planning, daily standups, retrospectives)
- Code review process (pull requests, coding standards, definition of done)
- CI/CD pipeline approach (GitHub Actions, automated testing, deployment gates)
- Quality assurance process (testing strategy, acceptance criteria validation)

**Testing Strategy (7 points)**
- Comprehensive testing approach (unit, integration, performance, security, accessibility tests)
- Testing tools (Jest, Playwright/Cypress, JMeter, OWASP ZAP, axe DevTools)
- Coverage targets (≥80% code coverage for unit tests)
- UAT approach (stakeholder involvement, test case coverage)

**Risk Mitigation (5 points)**
- Identification of top 5 project risks (technical, schedule, resource, client dependency)
- Quality of mitigation strategies (proactive, realistic, actionable)
- Contingency plans for critical risks
- Change management approach

**Innovation (5 points)**
- Value-add beyond requirements (dark mode, advanced analytics, mobile native apps)
- Best practices from previous projects
- Recommendations for long-term maintainability and scalability
- Creative solutions to project challenges

#### 8.3.2 Team Qualifications & Experience (25 points)

**Team Skills and Certifications (10 points)**
- Azure certifications (Solutions Architect Expert, Developer Associate)
- Security certifications (CISSP, CEH, CompTIA Security+)
- React/Next.js expertise (portfolio, GitHub profile, years of experience)
- Team size and roles (Technical Lead, Frontend Developers, Backend Developer, DevOps Engineer, QA Engineer, UI/UX Designer, PM)
- FTE commitment (5.0 FTEs minimum for 14 weeks)

**Reference Projects (10 points)**
- **Project 1 (React/Next.js)**: Relevance to Migration Control Centre (frontend complexity, component architecture, state management)
- **Project 2 (Azure)**: Relevance to Migration Control Centre (Azure services, cloud deployment, scalability)
- **Project 3 (Enterprise Auth)**: Relevance to Migration Control Centre (Azure AD, OAuth 2.0, RBAC, security)
- Client reference contacts provided (name, title, email, phone)
- Project outcomes (success metrics, client satisfaction)

**Team Size and Availability (5 points)**
- Team size appropriate for 14-week timeline (5.0 FTEs minimum)
- Team ramp-up plan (Week 1 onboarding, resource availability)
- On-call support plan (hypercare Weeks 15-16, warranty Weeks 15-26)
- Escalation path for issues

#### 8.3.3 Project Plan & Timeline (15 points)

**Realistic Timeline (7 points)**
- 14-week timeline achievable (or vendor provides compelling justification for alternative timeline)
- Critical path analysis (dependencies identified, mitigation strategies)
- Milestone delivery dates realistic (HLD Week 2, DLD Week 4, Pilot MVP Week 6, Go-Live Week 14)
- Buffer time for client approvals, feedback, scope changes

**Detailed Sprint Plan (5 points)**
- Sprint goals clearly defined (Sprint 1-7)
- Features mapped to sprints (FR-FE-001 to FR-FE-032 distributed across sprints)
- Sprint deliverables identified (code, tests, documentation)
- Sprint capacity realistic (team size × sprint duration = achievable story points)

**Resource Plan (3 points)**
- Resource assignments by sprint (who works on which sprint, how many hours)
- Resource ramp-up and ramp-down plan (avoid resource cliffs)
- Dependencies on client resources (stakeholder availability, approvals)

#### 8.3.4 Cost (20 points)

**Total Cost Competitiveness (15 points)**
- Total proposed cost within budget range (£40,000 - £60,000 preferred)
- Scoring methodology:
  - **Lowest cost proposal = 15 points**
  - **Other proposals scored proportionally**: Points = 15 × (Lowest Cost / Proposal Cost)
  - Example: If Proposal A = £45,000 (lowest), Proposal B = £52,000 → Proposal B score = 15 × (45,000 / 52,000) = 13.0 points
- Cost must be competitive **without sacrificing quality** (abnormally low bids may be rejected if not credible)

**Payment Terms (3 points)**
- Milestone-based payment schedule (preferred: 20% HLD, 30% DLD, 30% UAT, 20% Go-Live)
- Invoice payment terms (Net 30 days acceptable, Net 60 days or longer preferred)
- No upfront payment required (0% upfront preferred, max 20% upfront acceptable)

**Value for Money (2 points)**
- Cost breakdown transparent (labor, tools, licenses, third-party services)
- Cost exclusions clearly stated
- Optional enhancements priced separately (not inflating base cost)
- Warranty included in fixed price (no additional charge for 90-day warranty)

#### 8.3.5 Compliance & Legal (5 points)

**Security Compliance (2 points)**
- SOC 2 Type II or ISO 27001 certificate provided (MQ-4)
- Cyber Liability Insurance certificate provided (MQ-7)
- Vendor security policies (data handling, access control, encryption, incident response)
- Background check policy for vendor team members

**UK GDPR Compliance (1 point)**
- UK GDPR compliance statement provided
- Data Processing Agreement (DPA) template provided
- Data breach notification procedures (notify within 24 hours)
- Data residency (confirm no data transfer outside UK without approval)

**IP Terms (1 point)**
- Client owns all IP (source code, documentation, designs, deliverables)
- Open-source software policy acceptable (MIT, Apache 2.0, BSD licenses)
- Third-party components listed with licenses

**Insurance (1 point)**
- Professional Liability Insurance: ≥£1,000,000 coverage (MQ-7)
- Cyber Liability Insurance: ≥£1,000,000 coverage (MQ-7)
- General Liability Insurance: ≥£1,000,000 coverage (preferred)

### 8.4 Vendor Presentations (Shortlisted Vendors Only)

**Shortlisted vendors (top 3-5 by written proposal score)** will be invited for vendor presentations:

**Presentation Format**:
- **Duration**: 2 hours (90 minutes presentation + 30 minutes Q&A)
- **Date**: 2026-01-13 to 2026-01-17 (Week 8 after RFP issue)
- **Location**: Virtual (Microsoft Teams) or client office (if vendor prefers in-person)
- **Attendees**: Vendor team (Technical Lead, Project Manager, key developers), Client evaluation panel (IT Operations Director, Enterprise Architect, Migration Project Manager, CISO, Procurement)

**Presentation Content** (vendor must cover):
1. **Company Overview** (5 minutes): Company background, relevant experience, why vendor is best suited
2. **Technical Approach** (30 minutes): Architecture walkthrough, technology stack, integration strategy, security approach, demo of similar project (if available)
3. **Team Introduction** (15 minutes): Introduce key team members (Technical Lead, Frontend Developers, Backend Developer), highlight relevant experience
4. **Project Plan** (15 minutes): Timeline walkthrough, sprint goals, milestones, dependencies, risk mitigation
5. **Reference Project Deep-Dive** (15 minutes): Detailed walkthrough of 1 reference project most relevant to Migration Control Centre (architecture, challenges, solutions, outcomes)
6. **Q&A** (30 minutes): Evaluation panel asks clarification questions

**Presentation Scoring** (10 points added to written proposal score):
- **10 = Exceptional** (team confident, answers all questions, demo impressive)
- **8 = Strong** (team knowledgeable, answers most questions, demo solid)
- **6 = Acceptable** (team adequate, some questions unanswered, demo basic)
- **4 = Marginal** (team uncertain, many questions unanswered, no demo)
- **2 = Weak** (team unprepared, unable to answer questions, no demo)

**Final Score** = Written Proposal Score (100 points) + Presentation Score (10 points) = **Total 110 points**

### 8.5 Final Vendor Selection

**Vendor selection based on**:
1. **Total Score** (written proposal + presentation): Highest scoring vendor wins
2. **Reference Calls**: Client reserves right to contact reference clients for reference calls (non-responsive or negative feedback may disqualify vendor)
3. **Contract Negotiation**: Client and winning vendor negotiate final contract terms (T&Cs, payment terms, IP rights, warranties)

**Client reserves the right to**:
- Award contract to vendor with highest score
- Award contract to vendor with second-highest score if highest-scoring vendor fails reference checks or contract negotiation
- Reject all proposals if no vendor meets minimum requirements
- Request Best and Final Offer (BAFO) from top 2 vendors if scores are tied or close

**Vendor notification**:
- Winning vendor notified by **2026-01-24** (9 weeks after RFP issue)
- All vendors notified of selection decision (win/lose) by **2026-01-27**
- Losing vendors may request debrief (30-minute call to discuss evaluation feedback)

---

## 9. Contract Terms and Conditions

### 9.1 Contract Type

**Fixed-Price Contract** (Preferred): Vendor agrees to deliver all scope of work (Section 2.1) and deliverables (Section 4) for a fixed total price (GBP), with milestone-based payments. Fixed price includes all costs (labor, travel, tools, licenses, third-party services, 90-day warranty).

**Time & Materials Contract** (Alternative): Vendor invoices monthly based on actual hours worked at agreed hourly rates, with Not-to-Exceed (NTE) cap. Client reserves right to terminate contract if hours exceed NTE cap.

### 9.2 Payment Terms

**Milestone-Based Payments** (Fixed-Price contracts):

| Milestone | % of Total Price | Payment Trigger | Example (£48,000 contract) |
|-----------|------------------|-----------------|----------------------------|
| **M2: HLD Approval** | 20% | Client approves HLD (Gate 1, Week 2) | £9,600 |
| **M3: DLD Approval** | 30% | Client approves DLD (Gate 2, Week 4) | £14,400 |
| **M7: UAT Sign-Off** | 30% | Client provides UAT sign-off (Week 13) | £14,400 |
| **M8: Production Go-Live** | 20% | Application deployed to production, smoke tests pass (Week 14) | £9,600 |
| **Total** | **100%** | | **£48,000** |

**Invoice Payment Terms**: Net 30 days from invoice date (client pays within 30 days of receiving invoice)

**Late Payment**: If client fails to pay within 30 days, late payment interest accrues at Bank of England base rate + 2% per annum (calculated daily).

**Withholding**: Client may withhold 10% of each milestone payment if deliverables incomplete or not meeting acceptance criteria. Withheld amount released when deliverable remediated.

### 9.3 Acceptance Criteria

Each milestone payment triggered by **formal acceptance** of deliverables:

**Acceptance Process**:
1. Vendor submits deliverable (e.g., HLD document, source code, deployed application)
2. Client reviews deliverable within **5 business days** against acceptance criteria (defined in Section 4)
3. Client provides one of three responses:
   - **Accepted**: Deliverable meets acceptance criteria, payment triggered
   - **Accepted with Minor Issues**: Deliverable substantially meets criteria, payment triggered, minor issues remediated in next sprint
   - **Rejected**: Deliverable does not meet acceptance criteria, vendor must remediate and resubmit within **3 business days**
4. If rejected, repeat review cycle (max 2 rejections per deliverable)
5. If deliverable rejected 3 times, escalate to IT Operations Director and Vendor Project Manager for resolution

**Acceptance Criteria Examples**:
- **HLD Approval (M2)**: HLD document includes C4 diagrams, technology stack, integration patterns, security architecture; Architecture Review Board approves HLD in writing (email or meeting minutes)
- **DLD Approval (M3)**: DLD document includes component architecture, API specifications (OpenAPI 3.0), database access design, security design; Enterprise Architect approves DLD in writing
- **UAT Sign-Off (M7)**: All 32 functional requirements (FR-FE-001 to FR-FE-032) tested and passing; All critical/high bugs remediated; IT Operations Director provides UAT sign-off in writing
- **Production Go-Live (M8)**: Application deployed to production URL; Smoke tests pass (login works, dashboard loads, real-time updates work); No Severity 0-1 incidents in first 24 hours

### 9.4 Change Management

**Change Requests**:
- Either party may request scope changes during project (e.g., add new feature, modify requirement, extend timeline)
- All change requests must follow formal Change Control process:
  1. Requesting party submits Change Request form (description, rationale, impact on scope/timeline/cost)
  2. Vendor provides Impact Assessment (effort estimate, cost estimate, timeline impact)
  3. Change Control Board (IT Operations Director, Enterprise Architect, Vendor Project Manager) reviews and approves/rejects change request
  4. If approved, vendor submits Change Order with updated SOW, timeline, cost
  5. Client signs Change Order, vendor proceeds with change

**Change Order Pricing** (Fixed-Price contracts):
- Vendor must provide hourly rates for change requests in original proposal
- Change Order cost calculated as: Hours × Hourly Rate
- Client approves Change Order before work begins

**Scope Freeze**:
- Scope freeze after **DLD Approval (M3, Week 4)**: No new features added after DLD approval without Change Order
- Client may request minor adjustments to existing features during development (clarifications, UI tweaks) without Change Order if effort <8 hours

### 9.5 Intellectual Property Rights

**IP Ownership**:
- **Client owns all IP** developed under this contract (source code, documentation, designs, diagrams, deliverables)
- Vendor assigns all IP rights to client upon delivery (or upon payment if fixed-price contract)
- Vendor retains no rights to use, modify, or distribute client IP without written permission

**Open-Source Software (OSS)**:
- Vendor may use OSS dependencies with permissive licenses (MIT, Apache 2.0, BSD, ISC)
- Vendor must NOT use OSS with copyleft licenses (GPL, AGPL, LGPL) without client approval
- Vendor must provide list of all OSS dependencies with licenses in DLD deliverable
- Client owns right to modify OSS dependencies if needed

**Third-Party Components**:
- Vendor may use third-party components (libraries, frameworks, tools) if necessary for project
- Vendor must ensure client has appropriate licenses for all third-party components (perpetual licenses preferred, subscription licenses acceptable if cost disclosed)
- Vendor indemnifies client against IP infringement claims from third-party component use

**Background IP**:
- Vendor retains ownership of Background IP (pre-existing IP, tools, frameworks developed before this contract)
- Vendor grants client perpetual, non-exclusive, royalty-free license to use Background IP as part of delivered solution
- Vendor may reuse Background IP for other clients (non-exclusive license)

### 9.6 Warranties and Representations

**Vendor Warranties**:
- Vendor warrants that all deliverables will:
  - Meet all MANDATORY requirements defined in ARC-001-REQ-FE-v1.0
  - Be free from defects in materials and workmanship
  - Not infringe any third-party IP rights
  - Comply with UK GDPR, WCAG 2.1 AA, and other compliance requirements
- Vendor warrants that vendor team members have appropriate skills and experience for assigned roles
- Vendor warrants that vendor has appropriate insurance coverage (Professional Liability, Cyber Liability)

**Client Warranties**:
- Client warrants that client owns or has rights to all client-provided materials (requirements, data, branding)
- Client warrants that client will provide timely access to Azure subscription, PostgreSQL database, Azure AD, and other resources necessary for vendor's work
- Client warrants that client will respond to vendor questions and provide approvals within agreed timelines (2 business days for questions, 5 business days for approvals)

**Warranty Period**:
- **90-Day Warranty**: Vendor provides 90-day warranty from production go-live (Weeks 15-26) for bug fixes at no additional charge
- **Warranty Scope**: Vendor will remediate defects (bugs) that prevent application from meeting MANDATORY requirements
- **Warranty Exclusions**: Warranty does NOT cover:
  - Feature enhancements or changes beyond original requirements
  - Defects introduced by client modifications to vendor code
  - Performance issues caused by client infrastructure (e.g., PostgreSQL server undersized, Azure subscription throttled)
  - Third-party service outages (Azure, Azure AD, PostgreSQL)

**Warranty Response Times**:
- **Severity 0 (Critical)**: Application down, no workaround → Response within 4 hours, resolution target 24 hours
- **Severity 1 (High)**: Major feature broken, workaround exists → Response within 8 hours, resolution target 48 hours
- **Severity 2 (Medium)**: Minor feature broken, low impact → Response within 2 business days, resolution target 5 business days
- **Severity 3 (Low)**: Cosmetic issue, no functional impact → Response within 5 business days, resolution target 10 business days

### 9.7 Support and Maintenance

**Hypercare Support** (Weeks 15-16, included in fixed price):
- Vendor provides 24/7 on-call support for Severity 0-1 incidents during first 2 weeks post-deployment
- Response times: Severity 0 within 1 hour, Severity 1 within 4 hours
- Vendor monitors Application Insights for errors, exceptions, performance degradation
- Vendor applies hotfixes for critical bugs via CI/CD pipeline with expedited approval

**90-Day Warranty Support** (Weeks 15-26, included in fixed price):
- Vendor provides bug fixes for defects against MANDATORY requirements at no additional charge
- Response times: See Section 9.6 (Warranty Response Times)
- Vendor may provide bug fixes remotely (no on-site presence required)

**Post-Warranty Support** (Weeks 27+, optional separate contract):
- Client may negotiate optional ongoing support and maintenance contract with vendor after 90-day warranty expires
- Support tiers (pricing to be negotiated):
  - **Bronze**: 8×5 business hours (Mon-Fri 09:00-17:00 GMT), email support, response within 2 business days
  - **Silver**: 12×5 business hours (Mon-Fri 07:00-19:00 GMT), email + phone support, response within 1 business day
  - **Gold**: 24×7 support, email + phone + on-call, response within 4 hours (Severity 0-1)
- Support scope (to be negotiated): Bug fixes, minor enhancements, performance tuning, security patches

### 9.8 Liability and Indemnification

**Liability Cap**:
- Vendor's total liability under this contract (all claims combined) shall not exceed **total contract value** (fixed price or NTE cap)
- Exception: No cap for liability arising from vendor's gross negligence, willful misconduct, IP infringement, or data breach

**Indemnification**:
- **Vendor indemnifies client** against third-party claims arising from:
  - IP infringement (vendor-delivered code or third-party components)
  - Data breach caused by vendor's negligence (e.g., vendor leaked Azure credentials)
  - Vendor's breach of UK GDPR (e.g., vendor transferred PII outside UK without approval)
- **Client indemnifies vendor** against third-party claims arising from:
  - Client-provided materials (requirements, data, branding) infringing third-party IP
  - Client's breach of UK GDPR (e.g., client used STAKEHOLDER PII for unauthorized purposes)

**Limitation of Liability**:
- Neither party liable for **indirect, incidental, consequential, or punitive damages** (lost profits, lost revenue, lost data, business interruption)
- Exception: No limitation for damages arising from gross negligence, willful misconduct, IP infringement, or data breach

### 9.9 Confidentiality

**Confidential Information**:
- Both parties agree to keep confidential all information disclosed during contract (requirements, data, designs, source code, pricing, business plans)
- Confidential Information excludes: publicly available information, information independently developed, information disclosed with written consent

**Obligations**:
- Receiving party will:
  - Use Confidential Information only for contract purposes (not for competitive purposes)
  - Protect Confidential Information with same care as own confidential information (minimum reasonable care)
  - Not disclose Confidential Information to third parties without disclosing party's written consent
  - Limit access to Confidential Information to employees/contractors with need-to-know

**Duration**:
- Confidentiality obligations survive contract termination for **5 years**

**Return of Confidential Information**:
- Upon contract termination or completion, receiving party will return or destroy all Confidential Information (including copies, backups)

### 9.10 Termination

**Termination for Convenience** (Client only):
- Client may terminate contract at any time with **30 days written notice**
- Vendor entitled to payment for work completed up to termination date (pro-rated for partial milestones)
- Vendor must deliver all work-in-progress (source code, documentation, designs) to client in current state

**Termination for Cause** (Either party):
- Either party may terminate contract immediately if other party:
  - **Material Breach**: Fails to meet obligations under contract (e.g., vendor fails to deliver HLD after 2 rejections and 30 days, client fails to pay invoice after 60 days)
  - **Insolvency**: Files for bankruptcy, becomes insolvent, appoints receiver
  - **Force Majeure**: Unforeseeable event (war, natural disaster, pandemic) prevents performance for >30 days
- Terminating party must provide **written notice** specifying breach and 14-day cure period (except insolvency or force majeure, no cure period)
- If breaching party fails to cure within 14 days, terminating party may terminate immediately

**Effect of Termination**:
- Upon termination, vendor must:
  - Deliver all work-in-progress (source code, documentation, designs) to client in current state
  - Return or destroy all client Confidential Information
  - Assign all IP rights for work completed to date to client
- Upon termination, client must:
  - Pay vendor for work completed up to termination date (pro-rated for partial milestones)
  - Return or destroy all vendor Confidential Information (excluding deliverables, which client owns)

**Survival**:
- Sections 9.5 (IP Rights), 9.6 (Warranties), 9.8 (Liability), 9.9 (Confidentiality), 9.10 (Termination) survive contract termination

### 9.11 Force Majeure

**Definition**: Unforeseeable event beyond party's reasonable control that prevents performance (war, terrorism, natural disaster, pandemic, government action, utility failure, labor strike).

**Effect**: Neither party liable for non-performance caused by Force Majeure event if:
- Affected party promptly notifies other party in writing (within 5 business days)
- Affected party uses reasonable efforts to mitigate impact and resume performance
- Non-performance limited to duration of Force Majeure event

**Termination**: If Force Majeure event continues for >30 days, either party may terminate contract upon written notice (no penalty for termination).

### 9.12 Dispute Resolution

**Escalation Process**:
1. **Working Level**: Technical Lead (vendor) and Enterprise Architect (client) attempt to resolve dispute within 5 business days
2. **Management Level**: Vendor Project Manager and IT Operations Director attempt to resolve dispute within 5 business days
3. **Executive Level**: Vendor CEO/CTO and client CIO attempt to resolve dispute within 5 business days
4. **Mediation**: If unresolved after escalation, parties engage neutral mediator (50% cost split)
5. **Arbitration**: If mediation fails, parties submit dispute to binding arbitration under UK Arbitration Act 1996 (1 arbitrator, 50% cost split, decision final and binding)

**Governing Law**: This contract governed by laws of England and Wales. Courts of England and Wales have exclusive jurisdiction (except arbitration, which follows Arbitration Act 1996).

**Continuity**: Parties continue performing contract obligations during dispute resolution (unless dispute relates to payment, in which case vendor may suspend work if payment 60+ days overdue).

---

## 10. Appendices

### Appendix A: Requirements Document

**ARC-001-REQ-FE-v1.0** (Business and Technical Requirements: Migration Control Centre Frontend Application)

**Location**: `projects/001-windows-11-migration-intune/frontend-requirements.md`

**Summary**:
- 8 Business Requirements (BR-FE-001 to BR-FE-008)
- 32 Functional Requirements (FR-FE-001 to FR-FE-032) across 7 features
- 20 Non-Functional Requirements (NFR-FE-P, NFR-FE-SEC, NFR-FE-A, NFR-FE-S, NFR-FE-ACC)
- 5 Integration Requirements (INT-FE-001 to INT-FE-005)
- 5 Data Requirements (DR-FE-001 to DR-FE-005)
- 5 Use Cases (UC-FE-001 to UC-FE-005)

**Access**: Requirements document will be provided to qualified vendors upon NDA execution.

### Appendix B: Architecture Principles

**Location**: `.arckit/memory/architecture-principles.md`

**Relevant Principles for This Project**:
- **Principle 1: Cloud-First Endpoint Management** - InTune only, no on-premises ConfigMgr
- **Principle 2: Zero Trust Security Model** - TPM 2.0, BitLocker, MFA, Conditional Access
- **Principle 4: User-Centric Migration Experience** - OneDrive KFM, <2hr downtime, >80% satisfaction
- **Principle 5: Application Compatibility and Testing** - 100% business-critical apps tested before migration
- **Principle 10: Monitoring, Reporting, and Compliance** - Daily dashboard monitoring, 72hr remediation
- **Principle 11: Azure AD Integration** - Cloud-native identity management, SSO

**Access**: Architecture principles will be provided to shortlisted vendors during DLD phase.

### Appendix C: Database Schema

**Location**: `projects/001-windows-11-migration-intune/terraform/README.md` (Section: Data Model)

**6 Entities** (already deployed via Terraform):
- MIGRATION_WAVE (parent entity)
- MIGRATION_EVENT (child of MIGRATION_WAVE)
- APP_COMPATIBILITY_TEST
- COST_TRACKING (CONFIDENTIAL - Row-Level Security)
- STAKEHOLDER (CONFIDENTIAL - PII - Row-Level Security)
- UPDATE_RING_ASSIGNMENT (child of MIGRATION_WAVE)

**14 Performance Indexes**: device_id, wave_id, status, timestamps

**4 Foreign Key Constraints**: MIGRATION_EVENT → MIGRATION_WAVE, COST_TRACKING → MIGRATION_WAVE, UPDATE_RING_ASSIGNMENT → MIGRATION_WAVE

**Access**: Database schema documentation will be provided to shortlisted vendors during DLD phase.

### Appendix D: Glossary

| Term | Definition |
|------|------------|
| **Azure AD (Entra ID)** | Microsoft Azure Active Directory (rebranded as Entra ID) - cloud-native identity and access management service |
| **Azure Functions** | Serverless compute service on Azure - event-driven, auto-scaling, consumption-based pricing |
| **Azure SignalR Service** | Managed WebSocket service on Azure - serverless mode, real-time messaging |
| **Azure Static Web Apps** | Hosting service for static web apps (React, Next.js) on Azure - CDN, CI/CD, API integration |
| **Autopilot** | Microsoft Autopilot - cloud-based device provisioning service for Windows 11 (zero-touch deployment) |
| **C4 Model** | Architecture diagram framework (Context, Container, Component, Code) by Simon Brown |
| **InTune** | Microsoft Intune - cloud-based Mobile Device Management (MDM) and Mobile Application Management (MAM) service |
| **MSAL.js** | Microsoft Authentication Library for JavaScript - client-side library for Azure AD authentication |
| **Next.js** | React framework by Vercel - Server-Side Rendering (SSR), Static Site Generation (SSG), API routes |
| **RBAC** | Role-Based Access Control - authorization model where users assigned roles (Admin, Engineer, Stakeholder, AppOwner, EndUser) |
| **RLS** | Row-Level Security - PostgreSQL feature to restrict rows returned based on user role (e.g., Admin-only access to CONFIDENTIAL tables) |
| **Shadcn/ui** | UI component library for React - built on Radix UI + Tailwind CSS, copy-paste components |
| **TanStack Query** | React Query - server state management library for React (data fetching, caching, synchronization) |
| **UAT** | User Acceptance Testing - testing phase where end users validate application meets requirements |
| **WCAG 2.1 AA** | Web Content Accessibility Guidelines Level AA - international standard for web accessibility (color contrast, keyboard navigation, screen reader support) |
| **WebSocket** | Full-duplex communication protocol over TCP - enables real-time updates (persistent connection, <5 second latency) |
| **Zero Trust** | Security model assuming no implicit trust - verify every access request (MFA, Conditional Access, least privilege) |

### Appendix E: Acronyms

| Acronym | Full Form |
|---------|-----------|
| ADR | Architecture Decision Record |
| API | Application Programming Interface |
| CISO | Chief Information Security Officer |
| CFO | Chief Financial Officer |
| CIO | Chief Information Officer |
| CRUD | Create, Read, Update, Delete |
| DLD | Detailed Design (Detailed-Level Design) |
| DPA | Data Processing Agreement (UK GDPR) |
| FTE | Full-Time Equivalent |
| HLD | High-Level Design |
| IP | Intellectual Property |
| JWT | JSON Web Token |
| KPI | Key Performance Indicator |
| NDA | Non-Disclosure Agreement |
| NFR | Non-Functional Requirement |
| NTE | Not-to-Exceed (cost cap) |
| OSS | Open-Source Software |
| PII | Personally Identifiable Information |
| RFP | Request for Proposal |
| RPO | Recovery Point Objective |
| RTO | Recovery Time Objective |
| SOW | Statement of Work |
| SSO | Single Sign-On |
| TLS | Transport Layer Security |
| UAT | User Acceptance Testing |

### Appendix F: Contact Information

**RFP Inquiries**:
- Email: [procurement@example.com](mailto:procurement@example.com)
- Subject line: "RFP Question - Migration Control Centre - [Vendor Name]"
- Response time: 2 business days

**Technical Inquiries**:
- Contact: Enterprise Architect
- Email: [architecture@example.com](mailto:architecture@example.com)
- Subject line: "Technical Question - Migration Control Centre - [Vendor Name]"
- Response time: 3 business days

**Proposal Submission**:
- Email: [procurement@example.com](mailto:procurement@example.com)
- Subject line: "RFP Response - Migration Control Centre - [Vendor Name]"
- Deadline: 2026-01-02 by 17:00 GMT

**Contract Negotiation**:
- Contact: Procurement Manager
- Email: [contracts@example.com](mailto:contracts@example.com)
- Phone: +44 (0) 20 XXXX XXXX

---

## Generation Metadata

**Generated by**: ArcKit v0.8.2 (Enterprise Architecture Governance Toolkit)
**Command**: `/arckit.sow` (Claude Code)
**Source Document**: `projects/001-windows-11-migration-intune/frontend-requirements.md` (ARC-001-REQ-FE-v1.0)
**AI Model**: Claude Sonnet 4.5 (claude-sonnet-4-5-20250929)
**Generation Date**: 2025-11-21
**Template Version**: sow-template.md v1.0
**Project**: Windows 11 Migration with InTune (Project 001)
**Document Classification**: INTERNAL
**Compliance**: UK GDPR, WCAG 2.1 AA, SOC 2 Type II, ISO 27001

---

**End of Document**
