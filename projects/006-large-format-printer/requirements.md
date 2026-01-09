# Project Requirements: Large Format Printing Service

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-006-REQ-v3.0 |
| **Document Type** | Business and Technical Requirements |
| **Project** | Large Format Printing Service (Project 006) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 3.0 |
| **Created Date** | 2026-01-09 |
| **Last Modified** | 2026-01-09 |
| **Review Cycle** | Monthly |
| **Next Review Date** | 2026-02-09 |
| **Owner** | [PENDING] |
| **Reviewed By** | [PENDING] |
| **Approved By** | [PENDING] |
| **Distribution** | Project Team, Architecture Team, Procurement Team, Security Team |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2026-01-09 | ArcKit AI | Initial creation - in-house procurement model | [PENDING] | [PENDING] |
| 2.0 | 2026-01-09 | ArcKit AI | Revised for third-party managed service model per user request | [PENDING] | [PENDING] |
| 3.0 | 2026-01-09 | ArcKit AI | Enhanced security requirements based on MOD Secure by Design assessment (ARC-006-SECD-v1.0) | [PENDING] | [PENDING] |

## Document Purpose

This document defines the comprehensive business, functional, and non-functional requirements for the procurement of a third-party managed large format printing service. This approach outsources hardware ownership, maintenance, consumables management, and service delivery to a specialist provider, enabling the organisation to focus on core business activities while achieving print capability requirements.

**Version 3.0 Update**: Requirements enhanced based on MOD Secure by Design assessment findings to address supply chain security, accreditation, incident response, and vulnerability management gaps.

---

## Executive Summary

### Business Context

The organisation requires large format printing capabilities to support various business functions including marketing materials, architectural plans, engineering drawings, signage, and presentation materials. Rather than investing capital in printing equipment and managing an in-house print operation, the organisation seeks a **third-party managed print service** that provides:

- On-demand large format printing capability
- Predictable operational costs (OpEx vs CapEx)
- Professional equipment and expertise without internal staff burden
- Flexible capacity to scale with business demand
- Service-level guarantees with vendor accountability

This service-based approach aligns with cloud-first operational principles, minimises capital expenditure, and transfers operational risk to a specialist provider.

### Objectives

- Procure a managed large format printing service from a qualified third-party provider
- Achieve predictable, all-inclusive pricing eliminating consumables and maintenance surprises
- Ensure service turnaround times meet business requirements (24 hours standard, 4 hours urgent)
- Maintain document confidentiality through on-premises equipment managed by the service provider
- Integrate seamlessly with existing IT infrastructure and Windows 11 managed endpoints
- **Achieve MOD Secure by Design compliance** with JSP 440 accreditation before go-live

### Expected Outcomes

- **Cost Predictability**: Fixed monthly/quarterly cost vs variable outsourced printing
- **Reduced Management Overhead**: Zero internal staff time on printer maintenance, consumables, troubleshooting
- **Service Quality**: Professional-grade output with SLA-backed turnaround times
- **Flexibility**: Ability to scale service up/down based on business demand
- **Confidentiality**: Sensitive materials printed on-premises (not at external print shop)
- **Security Assurance**: Supplier security verified and service accredited for OFFICIAL data

### Procurement Approach

**Service Model**: Managed Print Service (MPS) with on-premises equipment placement

**Key Elements**:
- Vendor provides, installs, and maintains large format printer(s) on organisation premises
- Vendor manages all consumables (ink, media, maintenance kits)
- Vendor provides remote monitoring and proactive maintenance
- Organisation pays fixed monthly fee or per-print pricing
- Contract term: 36-60 months typical for managed services
- **Security certification mandatory** (Cyber Essentials+ minimum)

**Procurement Route**:
- G-Cloud Framework (Technology Services category) - preferred
- Direct procurement with competitive tender if not on G-Cloud
- Digital Outcomes and Specialists (DOS) if bespoke service design required

### Project Scope

**In Scope**:
- Procurement of third-party managed large format printing service
- Service provider to supply, install, and maintain equipment on premises
- Integration with Windows 11 enterprise endpoints via provider-supported drivers
- User training provided by service provider
- Service-level agreement covering availability, turnaround, and quality
- Consumables management and replenishment by service provider
- Print management software/portal provided by service provider
- **Security accreditation** for OFFICIAL data handling (JSP 440)
- **SIEM integration** for security monitoring
- **Incident response procedures** for print service

**Out of Scope**:
- Organisation ownership of printing hardware
- Internal staff responsibility for equipment maintenance
- Consumables procurement or inventory management by organisation
- Small format desktop printing (existing infrastructure)
- 3D printing capabilities
- Commercial print-for-sale services

---

## Stakeholders

| Stakeholder | Role | Organization | Involvement Level |
|-------------|------|--------------|-------------------|
| [PENDING] | Executive Sponsor | Operations | Decision maker |
| [PENDING] | Service Owner | Facilities Management | Service governance |
| [PENDING] | Business Analyst | IT | Requirements elicitation |
| [PENDING] | Enterprise Architect | Architecture | Technical oversight |
| [PENDING] | Security Lead | Information Security | Security review |
| [PENDING] | **Information Assurance Owner (IAO)** | Information Security | **Accreditation owner** |
| [PENDING] | Procurement Lead | Procurement | Vendor selection |
| [PENDING] | End User Representative | Marketing | User acceptance |
| [PENDING] | End User Representative | Engineering | User acceptance |
| [PENDING] | Finance Business Partner | Finance | Budget approval |
| [PENDING] | Contract Manager | Commercial | Contract negotiation |

---

## Business Requirements

### BR-001: Predictable Print Service Costs

**Description**: The organisation must achieve predictable, budgetable costs for large format printing through a managed service contract with fixed or capped pricing.

**Rationale**: Variable outsourced printing costs create budget uncertainty. A managed service with agreed pricing provides cost predictability and often lower total cost of ownership compared to in-house ownership.

**Success Criteria**:
- Fixed monthly service fee or agreed per-print rates with no hidden charges
- All consumables, maintenance, and support included in service fee
- No capital expenditure required (full OpEx model)
- Total service cost lower than current outsourced printing spend by 20% minimum
- Quarterly cost reporting provided by service provider

**Priority**: MUST_HAVE

**Stakeholder**: Finance Business Partner, Executive Sponsor

**Aligns With**: Cost management principles, OpEx preference over CapEx

---

### BR-002: Meet Business Turnaround Requirements

**Description**: The service must deliver print jobs within agreed turnaround times to support time-sensitive business needs.

**Rationale**: Marketing campaigns, client presentations, and project deliverables require rapid turnaround. The service provider must guarantee response times backed by SLA.

**Success Criteria**:
- Standard print jobs completed within 24 hours of submission
- Urgent/priority jobs completed within 4 hours during business hours
- 95% of print jobs delivered by requested deadline (SLA target)
- Out-of-hours printing capability for critical requirements (24/7 or extended hours)

**Priority**: MUST_HAVE

**Stakeholder**: Marketing, Engineering, Executive Sponsor

---

### BR-003: Maintain Document Confidentiality

**Description**: The service must enable printing of sensitive and confidential materials without exposure to third parties through off-premises handling.

**Rationale**: Certain documents (financial reports, strategic plans, M&A materials, architectural designs) should not leave the organisation's control. On-premises equipment managed by the service provider eliminates confidentiality risks of external print shops.

**Success Criteria**:
- Printing equipment physically located on organisation premises
- Service provider staff subject to appropriate vetting/NDA
- Print files transmitted securely (encrypted in transit)
- No print files stored on service provider systems beyond job completion
- Audit trail available for all print jobs

**Priority**: MUST_HAVE

**Stakeholder**: Security Lead, Legal, Executive Sponsor

**Aligns With**: Architecture Principle 2 - Zero Trust Security Model (data protection)

---

### BR-004: Support Diverse Print Requirements

**Description**: The service must accommodate varying print requirements across multiple business functions.

**Rationale**: Different departments have different needs - Marketing requires high colour accuracy, Engineering requires precise technical drawings, Facilities requires durable signage. The service must flex to meet all requirements.

**Success Criteria**:
- Support for minimum 4 distinct print media types
- Colour accuracy within industry-standard tolerances (Delta E < 2) for marketing materials
- Technical drawing precision meeting architectural/engineering standards
- Ability to produce weather-resistant outdoor materials
- Range of sizes from A2 to A0 and larger (up to 60" width)

**Priority**: MUST_HAVE

**Stakeholder**: Marketing, Engineering, Facilities Management

---

### BR-005: Minimise Organisational Overhead

**Description**: The service must require minimal organisational involvement in day-to-day operations.

**Rationale**: The organisation does not have budget for dedicated print room staff. A managed service must handle all operational aspects with minimal internal touchpoints.

**Success Criteria**:
- Service provider manages all equipment maintenance and repairs
- Service provider manages all consumables replenishment
- Single point of contact for all service issues (service desk/portal)
- Maximum 1 hour per week internal administrative overhead
- Proactive issue resolution before user impact

**Priority**: MUST_HAVE

**Stakeholder**: Facilities Management, Finance Business Partner

---

### BR-006: Flexible Service Capacity

**Description**: The service must accommodate fluctuating print volumes without renegotiation or penalty.

**Rationale**: Print demand varies seasonally (event seasons, year-end reporting, project cycles). The service must flex to handle peaks without excessive charges and allow reduced usage during quiet periods.

**Success Criteria**:
- Service agreement includes capacity for 100% volume increase above baseline
- No penalty for reduced usage during low-demand periods (within agreed minimums)
- Additional capacity available on-demand with reasonable notice (48 hours)
- Volume reporting provided monthly for capacity planning

**Priority**: SHOULD_HAVE

**Stakeholder**: Finance Business Partner, Facilities Management

---

### BR-007: Achieve Security Accreditation (NEW - from MOD SbD Assessment)

**Description**: The service must achieve JSP 440 accreditation for handling OFFICIAL data before operational go-live.

**Rationale**: MOD Secure by Design assessment identified accreditation as a critical issue. Risk Managed Accreditation is required for OFFICIAL data handling per JSP 440 Leaflet 5C.

**Success Criteria**:
- Information Assurance Owner (IAO) assigned before contract award
- Business Impact Assessment (BIA) completed during implementation
- Risk assessment completed with residual risks documented
- Security controls verified against supplier documentation
- IAO sign-off obtained before service go-live
- IAMM Level 2 (Managed) achieved across all domains

**Priority**: MUST_HAVE

**Stakeholder**: Information Assurance Owner, Security Lead

**Aligns With**: JSP 440 Defence IA Policy, MOD Secure by Design Principles

**Source**: MOD Secure by Design Assessment (ARC-006-SECD-v1.0) Section 3.1

---

## Functional Requirements

### User Personas

#### Persona 1: Marketing Professional
- **Role**: Marketing Manager/Designer
- **Goals**: Produce high-quality promotional materials (posters, banners, displays) quickly for campaigns and events
- **Pain Points**: Outsourced printing delays campaigns; colour consistency issues; inability to make last-minute changes
- **Technical Proficiency**: Medium
- **Print Volume**: 20-30 large format prints per month
- **Quality Priority**: Colour accuracy, photo quality, professional finish
- **Service Expectation**: Self-service job submission, rapid turnaround, colour proofing option

#### Persona 2: Engineering/CAD User
- **Role**: Architect/Engineer/Technical Designer
- **Goals**: Print technical drawings, blueprints, and CAD outputs for project reviews and site use
- **Pain Points**: Need precise scale accuracy; frequent revisions require rapid reprints; drawings must be readable in various conditions
- **Technical Proficiency**: High
- **Print Volume**: 50-100 technical drawings per month
- **Quality Priority**: Line precision, scale accuracy, readability
- **Service Expectation**: Simple submission workflow, reliable scale accuracy, economy options for drafts

#### Persona 3: Facilities/Operations Staff
- **Role**: Facilities Coordinator
- **Goals**: Produce signage, wayfinding materials, and operational notices
- **Pain Points**: Quick turnaround needed for urgent notices; durability required for high-traffic areas
- **Technical Proficiency**: Low to Medium
- **Print Volume**: 10-20 prints per month
- **Quality Priority**: Durability, legibility, cost-effectiveness
- **Service Expectation**: Easy job submission, helpful service desk, quick turnaround for urgent needs

#### Persona 4: Executive Assistant
- **Role**: PA/Executive Support
- **Goals**: Print presentation materials, large format charts, and visual aids for board meetings
- **Pain Points**: Last-minute requests; professional appearance critical; confidentiality essential
- **Technical Proficiency**: Low
- **Print Volume**: 5-10 prints per month
- **Quality Priority**: Professional appearance, confidentiality, speed
- **Service Expectation**: Urgent request handling, secure print release, white-glove service

---

### Use Cases

#### UC-001: Submit Standard Print Job (Self-Service)

**Actor**: Marketing Professional, Engineering User, Executive Assistant

**Preconditions**:
- User is logged into Windows 11 managed endpoint
- Print service driver/portal accessible
- Service equipment operational

**Main Flow**:
1. User opens document in source application (Adobe Creative Suite, AutoCAD, Microsoft Office)
2. User selects File > Print and chooses large format print service from available printers
3. User selects print profile (Photo Quality, Technical Drawing, Standard, Economy)
4. User specifies paper/media type and size from available options
5. User confirms print settings and submits job
6. System validates job (file format, size, permissions)
7. Service queues job with estimated completion time
8. User receives notification when job is ready for collection

**Postconditions**:
- Print job received by service provider system
- User has confirmation with job reference and estimated time
- Job tracked against user/department for billing purposes

**Alternative Flows**:
- **Alt 1a**: If portal submission preferred, user uploads file via web portal with settings selection
- **Alt 2a**: If file too large for network, user provides file via USB with service desk

**Exception Flows**:
- **Ex 1**: If service unavailable, user notified with estimated restoration time

**Business Rules**:
- Maximum file size: As agreed with service provider (recommend 5GB+)
- Supported formats: PDF, TIFF, JPEG, PNG, EPS, DWG (with appropriate licensing)
- Jobs queued for more than 72 hours follow up with user before cancellation

**Priority**: CRITICAL

---

#### UC-002: Request Urgent Print Job

**Actor**: Executive Assistant, Marketing Professional

**Preconditions**:
- User has authority to submit urgent jobs (department head approval or urgent flag access)
- Service operating during business hours (or 24/7 if contracted)

**Main Flow**:
1. User submits job via standard process (UC-001)
2. User selects "Urgent/Priority" flag
3. User provides brief justification for urgency
4. Service provider prioritises job in queue
5. Service provider contacts user if clarification needed
6. Job printed and available within 4-hour SLA
7. User receives completion notification

**Postconditions**:
- Urgent job completed within 4-hour SLA
- Urgent request logged for SLA reporting
- Any missed SLA triggers service credit process

**Alternative Flows**:
- **Alt 1a**: If outside business hours and 24/7 service available, on-call technician engaged

**Business Rules**:
- Urgent jobs may incur premium pricing (as per contract)
- Maximum X urgent jobs per department per month (as per contract)
- SLA clock starts from job submission timestamp

**Priority**: HIGH

---

#### UC-003: Check Job Status and History

**Actor**: All Users, Facilities Coordinator

**Preconditions**:
- User authenticated on corporate network

**Main Flow**:
1. User accesses service provider web portal or integrated application
2. System displays user's submitted jobs with status (Received, In Progress, Ready, Collected)
3. User can view estimated completion time for pending jobs
4. User can view print history for reordering
5. User can cancel pending jobs (subject to cut-off time)

**Postconditions**:
- User informed of job status
- Cancellations processed before print begins (no charge)

**Business Rules**:
- Users can only view their own jobs (unless administrator)
- Department administrators can view department's jobs

**Priority**: MEDIUM

---

#### UC-004: Report Service Issue

**Actor**: Any User, Facilities Coordinator

**Preconditions**:
- Service issue experienced (quality problem, missed SLA, equipment issue)

**Main Flow**:
1. User contacts service provider via phone, email, or portal
2. Service provider logs incident with unique reference
3. Service provider investigates and provides initial response within 2 hours
4. Service provider resolves issue within agreed SLA
5. User notified of resolution
6. Reprint provided at no cost if quality issue

**Postconditions**:
- Issue resolved within SLA
- Issue logged for monthly service review
- Service credits applied if SLA missed

**Priority**: HIGH

---

#### UC-005: Request New Media Type or Service Enhancement

**Actor**: Service Owner, Department Representative

**Preconditions**:
- Requirement for media type or capability not in current service scope

**Main Flow**:
1. User submits service request to Facilities/IT
2. Facilities validates business need
3. Facilities raises request with service provider
4. Service provider provides quote/timeline for enhancement
5. If approved, service scope updated

**Postconditions**:
- Service scope expanded (if approved)
- Contract variation documented

**Priority**: LOW

---

### Functional Requirements Detail

#### FR-001: Web-Based Job Submission Portal

**Description**: The service provider must supply a web-based portal for print job submission, accessible from any device on the corporate network.

**Relates To**: BR-005, UC-001

**Acceptance Criteria**:
- [ ] Portal accessible via HTTPS from corporate network
- [ ] Portal supports Azure AD SSO authentication
- [ ] Users can upload files, select settings, and submit jobs
- [ ] Portal displays job status and history
- [ ] Portal accessible from mobile devices (responsive design)
- [ ] Portal provides cost estimates before submission

**Data Requirements**:
- **Inputs**: Uploaded file, print settings, user authentication
- **Outputs**: Job reference, confirmation, status updates
- **Validations**: File format supported, file size within limits, user authorised

**Priority**: MUST_HAVE

**Complexity**: MEDIUM (provided by service provider)

---

#### FR-002: Windows 11 Print Driver Integration

**Description**: The service must integrate with Windows 11 Enterprise endpoints, enabling print submission from standard applications.

**Relates To**: BR-005, Architecture Principle 1 (Cloud-First Management)

**Acceptance Criteria**:
- [ ] Print driver deployable via Microsoft InTune
- [ ] Driver supports Windows 11 x64 and ARM64 (Copilot+ PCs)
- [ ] Users can print from standard applications (Office, Adobe, AutoCAD)
- [ ] Driver displays available media types and sizes
- [ ] Driver supports print preview before submission

**Data Requirements**:
- **Inputs**: Print driver package (.inf, .cab, or MSIX)
- **Outputs**: Installed printer on Windows endpoints
- **Validations**: Driver signed, compatible with Windows 11 22H2+

**Priority**: MUST_HAVE

**Complexity**: LOW (provided by service provider, deployed by IT)

**Dependencies**: Service provider supplies compatible driver

**Aligns With**: Architecture Principle 3A - Copilot+ PC Hardware (ARM64 compatibility)

---

#### FR-003: Print Quality Profiles

**Description**: The service must offer selectable print quality profiles optimised for different use cases.

**Relates To**: BR-004, UC-001

**Acceptance Criteria**:
- [ ] "Photo Quality" profile for marketing materials (maximum colour accuracy)
- [ ] "Technical" profile for engineering drawings (line precision, scale accuracy)
- [ ] "Standard" profile for general purpose printing
- [ ] "Economy/Draft" profile for proofs and internal documents
- [ ] Custom profiles available on request

**Priority**: MUST_HAVE

**Complexity**: LOW (service provider configuration)

---

#### FR-004: Media Type and Size Support

**Description**: The service must support multiple media sizes up to A0+ and various media types.

**Relates To**: BR-004

**Acceptance Criteria**:
- [ ] A0 (841mm x 1189mm) - MUST
- [ ] A1 (594mm x 841mm) - MUST
- [ ] A2 (420mm x 594mm) - MUST
- [ ] Custom sizes up to 60" width - SHOULD
- [ ] Plain paper (80-120 gsm) - MUST
- [ ] Coated paper (150-200 gsm) - MUST
- [ ] Glossy and matte photo paper - MUST
- [ ] Self-adhesive vinyl - SHOULD
- [ ] Canvas - SHOULD
- [ ] Technical drawing paper (vellum) - SHOULD
- [ ] Weather-resistant/outdoor media - SHOULD

**Priority**: MUST_HAVE

---

#### FR-005: Job Tracking and Notifications

**Description**: Users must receive proactive notifications on job status changes.

**Relates To**: BR-002, UC-001

**Acceptance Criteria**:
- [ ] Email notification when job received
- [ ] Email notification when job ready for collection
- [ ] Email notification if job fails or requires attention
- [ ] Microsoft Teams notification option (if supported)
- [ ] Notification includes job reference and location

**Priority**: SHOULD_HAVE

**Complexity**: LOW

---

#### FR-006: Department/Cost Centre Tracking

**Description**: The service must track print usage by department/cost centre for internal billing or reporting.

**Relates To**: BR-001

**Acceptance Criteria**:
- [ ] Job submission captures department/cost centre from Azure AD or user selection
- [ ] Monthly reports show usage by department
- [ ] Reports exportable in CSV/Excel format
- [ ] Integration with organisation's finance system (optional)

**Priority**: SHOULD_HAVE

**Complexity**: MEDIUM

---

#### FR-007: Secure Print Release Option

**Description**: For sensitive documents, users should be able to release print jobs at the equipment via authentication.

**Relates To**: BR-003, NFR-SEC-001

**Acceptance Criteria**:
- [ ] Secure print option available at job submission
- [ ] Job held until user authenticates at equipment (badge, PIN, or mobile)
- [ ] Unreleased secure jobs auto-delete after 24 hours
- [ ] Secure print jobs not visible to other users

**Priority**: MUST_HAVE (upgraded from SHOULD_HAVE per MOD SbD assessment)

---

#### FR-008: Colour Calibration and Proofing

**Description**: For colour-critical work, the service must offer colour proofing and maintain calibrated equipment.

**Relates To**: BR-004

**Acceptance Criteria**:
- [ ] Soft proofing available via portal for colour-critical jobs
- [ ] Equipment calibrated to Delta E < 2 accuracy
- [ ] ICC colour profiles available for download
- [ ] Calibration performed at agreed frequency (weekly/monthly)
- [ ] Calibration certificates available on request

**Priority**: SHOULD_HAVE

---

#### FR-009: Reprint and Reorder Function

**Description**: Users should be able to easily reorder previous print jobs without re-uploading files.

**Relates To**: BR-005

**Acceptance Criteria**:
- [ ] Portal displays print history (last 12 months minimum)
- [ ] One-click reorder with same or modified settings
- [ ] File retention for reorders (service provider responsibility)

**Priority**: COULD_HAVE

---

#### FR-010: Emergency/Out-of-Hours Service

**Description**: For critical requirements, the service should offer out-of-hours printing capability.

**Relates To**: BR-002

**Acceptance Criteria**:
- [ ] 24/7 service option available (may be premium tier)
- [ ] Or extended hours (7am-10pm weekdays, weekend coverage)
- [ ] Emergency contact number for urgent after-hours requests
- [ ] Clear escalation process documented

**Priority**: SHOULD_HAVE

---

## Non-Functional Requirements (NFRs)

### Performance Requirements

#### NFR-P-001: Standard Job Turnaround

**Requirement**: Standard print jobs must be completed within 24 hours of submission.

**Performance Targets**:
- 95% of standard jobs completed within 24 hours
- Average turnaround < 12 hours during business hours
- Jobs submitted before 2pm completed same business day (stretch target)

**Measurement Method**: Service provider reporting, spot-check audits

**SLA Consequence**: Service credits for systemic missed SLA

**Priority**: MUST_HAVE

---

#### NFR-P-002: Urgent Job Turnaround

**Requirement**: Urgent print jobs must be completed within 4 hours during business hours.

**Performance Targets**:
- 99% of urgent jobs completed within 4 hours
- Urgent job acknowledgement within 15 minutes
- User notified immediately on completion

**Measurement Method**: Service provider reporting, SLA dashboard

**SLA Consequence**: Service credits for missed urgent SLAs

**Priority**: MUST_HAVE

---

#### NFR-P-003: Portal Response Time

**Requirement**: The service portal must be responsive for job submission and status checking.

**Performance Targets**:
- Portal page load: < 3 seconds
- File upload: < 30 seconds per 100MB
- Job status query: < 2 seconds

**Priority**: SHOULD_HAVE

---

### Availability and Resilience Requirements

#### NFR-A-001: Service Availability

**Requirement**: The printing service must be available during business hours with minimal unplanned downtime.

**Availability Targets**:
- Service availability: 99% during business hours (08:00-18:00, Mon-Fri)
- Maximum unplanned downtime: 4 hours per incident
- Planned maintenance: Outside core hours with 48-hour notice
- Equipment failure: Replacement/repair within 8 business hours

**SLA Consequence**: Service credits for availability below target

**Priority**: MUST_HAVE

---

#### NFR-A-002: Business Continuity

**Requirement**: The service must have contingency for equipment failure.

**Resilience Targets**:
- Backup equipment or emergency alternative available
- Critical jobs processed within SLA during equipment failure
- Communication to users within 1 hour of significant outage

**Priority**: SHOULD_HAVE

---

### Security Requirements

#### NFR-SEC-001: Data Protection in Transit

**Requirement**: Print files must be encrypted during transmission from user endpoint to print equipment.

**Security Controls**:
- TLS 1.2+ for all portal and driver communications (TLS 1.3 preferred)
- Secure upload protocols for file transfer
- No print data transmitted outside organisation network (on-premises equipment)

**Priority**: MUST_HAVE

**Aligns With**: Architecture Principle 2 - Zero Trust Security Model

---

#### NFR-SEC-002: Data Protection at Rest

**Requirement**: Print files must be protected while queued on service provider systems.

**Security Controls**:
- Print files deleted from equipment/server within 24 hours of job completion
- Secure deletion (overwrite) of files
- No archival of print files by service provider without explicit agreement
- Encrypted storage for queued jobs (AES-256 minimum)

**Priority**: MUST_HAVE

---

#### NFR-SEC-003: Service Provider Vetting

**Requirement**: Service provider personnel with access to organisation premises or data must be appropriately vetted.

**Security Controls**:
- Service provider staff subject to background checks appropriate to data classification
- NDA in place covering all service provider personnel
- Access to premises logged and auditable
- Service provider maintains security certifications (ISO 27001, Cyber Essentials)

**Priority**: MUST_HAVE

---

#### NFR-SEC-004: Audit Logging

**Requirement**: All print activity must be logged for audit and compliance purposes.

**Audit Requirements**:
- Log: Username, timestamp, document name (or hash), job size, media type
- Logs retained for 12 months minimum
- Logs provided to organisation monthly or on demand
- Logs protected from tampering

**Priority**: MUST_HAVE

**Aligns With**: Architecture Principle 17 - Audit Logging and Compliance Reporting

---

#### NFR-SEC-005: Network Security

**Requirement**: On-premises printing equipment must comply with organisation network security policies.

**Security Controls**:
- Equipment deployed on designated VLAN
- Firewall rules limiting access to required ports only
- Remote management by service provider via secure channel (VPN or equivalent)
- Equipment firmware kept current with security patches

**Priority**: MUST_HAVE (upgraded from SHOULD_HAVE per MOD SbD assessment)

---

#### NFR-SEC-006: Supplier Security Certification (NEW - from MOD SbD Assessment)

**Requirement**: Service provider must hold and maintain current security certifications demonstrating adequate security posture.

**Security Controls**:
- **Cyber Essentials Plus certification**: MANDATORY (must be current at contract award)
- ISO 27001 certification: Preferred (scored in evaluation)
- UK Government G-Cloud accreditation: Preferred
- Annual certification renewal evidence provided to organisation
- Right to audit supplier security arrangements

**Verification**:
- Certificate verification during procurement (must be valid at contract signature)
- Annual certificate renewal check
- Immediate notification if certification lapses

**Priority**: MUST_HAVE

**Source**: MOD Secure by Design Assessment (ARC-006-SECD-v1.0) Section 7.1

---

#### NFR-SEC-007: Firmware and Patch Management (NEW - from MOD SbD Assessment)

**Requirement**: Service provider must maintain current firmware and security patches on all equipment.

**Security Controls**:
- Critical security patches applied within 14 days of vendor release
- High severity patches applied within 30 days
- Medium/Low patches applied within 90 days or next scheduled maintenance
- Monthly patch status reporting to organisation
- Emergency patching capability for zero-day vulnerabilities
- Firmware update notification before application (change control)

**Priority**: MUST_HAVE

**Source**: MOD Secure by Design Assessment (ARC-006-SECD-v1.0) Section 3.2 (Patch Management gap)

---

#### NFR-SEC-008: Secure Configuration (NEW - from MOD SbD Assessment)

**Requirement**: Equipment must be deployed with secure default configurations.

**Security Controls**:
- All default/factory credentials changed before deployment
- Unused services and ports disabled
- Secure configuration baseline documented by supplier
- Configuration hardening guide provided to organisation
- Annual configuration review against baseline
- Changes to security configuration require approval

**Priority**: MUST_HAVE

**Source**: MOD Secure by Design Assessment (ARC-006-SECD-v1.0) Section 2.2 (Secure by Default gap)

---

#### NFR-SEC-009: Penetration Testing Rights (NEW - from MOD SbD Assessment)

**Requirement**: Organisation must have the right to conduct or commission security testing of the service.

**Security Controls**:
- Annual penetration testing of service portal and network components
- Testing conducted by organisation-approved assessor
- Service provider must remediate Critical/High findings within 30 days
- Medium findings remediated within 90 days
- Test scope includes: web portal, print drivers, network equipment
- Service provider to provide evidence of their own annual penetration test

**Priority**: SHOULD_HAVE

**Source**: MOD Secure by Design Assessment (ARC-006-SECD-v1.0) Section 5.4 (Vulnerability Management gap)

---

#### NFR-SEC-010: Security Incident Notification (NEW - from MOD SbD Assessment)

**Requirement**: Service provider must notify organisation of security incidents affecting the service.

**Security Controls**:
- Security incident notification within 1 hour of detection
- Suspected data breach notification within 4 hours
- Confirmed data breach notification within 24 hours (to support ICO 72-hour requirement)
- Incident report provided within 5 business days
- Root cause analysis provided within 15 business days
- Evidence preservation for forensic investigation

**Priority**: MUST_HAVE

**Source**: MOD Secure by Design Assessment (ARC-006-SECD-v1.0) Section 8.2 (Incident Response gap)

---

#### NFR-SEC-011: Personnel Vetting - BPSS (NEW - from MOD SbD Assessment)

**Requirement**: All service provider personnel with on-site access or access to organisation data must hold BPSS clearance.

**Security Controls**:
- BPSS (Baseline Personnel Security Standard) verification for all on-site personnel
- Foreign nationals risk assessment required
- Right to audit supplier vetting records
- Notification within 24 hours if cleared personnel status changes
- Escort required for non-cleared visitors

**Priority**: MUST_HAVE

**Source**: MOD Secure by Design Assessment (ARC-006-SECD-v1.0) Section 9.1 (Personnel Security gap)

---

### Compliance and Regulatory Requirements

#### NFR-C-001: Data Protection (UK GDPR)

**Requirement**: The service must comply with UK GDPR for any personal data handled.

**Compliance Requirements**:
- [ ] Service provider registered as data processor in Data Processing Agreement (DPA)
- [ ] Personal data in print jobs handled per GDPR requirements
- [ ] Data subject access request (DSAR) process documented
- [ ] Data breach notification process in place (72 hours)

**Priority**: MUST_HAVE

---

#### NFR-C-002: Environmental Standards

**Requirement**: The service should demonstrate environmental responsibility.

**Compliance Requirements**:
- [ ] Equipment ENERGY STAR certified or equivalent
- [ ] Consumables recycling program in place
- [ ] Support for recycled/sustainable media options
- [ ] Carbon footprint reporting available (if requested)

**Priority**: SHOULD_HAVE

---

#### NFR-C-003: Accessibility

**Requirement**: The service portal must be accessible to users with disabilities.

**Compliance Requirements**:
- Web portal: WCAG 2.1 Level AA compliant
- Alternative submission methods available (phone, email) for users who cannot use portal

**Priority**: SHOULD_HAVE

---

#### NFR-C-004: JSP 440 Compliance (NEW - from MOD SbD Assessment)

**Requirement**: The service must support JSP 440 compliance for handling OFFICIAL data.

**Compliance Requirements**:
- [ ] Service supports IAMM Level 2 (Managed) across all 8 domains
- [ ] Supplier provides evidence for accreditation documentation
- [ ] Supplier cooperates with Business Impact Assessment
- [ ] Supplier participates in risk assessment process
- [ ] Residual risks documented and accepted by IAO

**Priority**: MUST_HAVE

**Source**: MOD Secure by Design Assessment (ARC-006-SECD-v1.0) Section 3.2

---

### Usability Requirements

#### NFR-U-001: Ease of Use

**Requirement**: Users must be able to submit print jobs without training.

**Usability Targets**:
- Intuitive portal interface with minimal clicks to submit job
- Driver-based submission identical to regular printing
- Help/FAQ available in portal
- First-time users successful on first attempt (>90%)

**Priority**: MUST_HAVE

---

#### NFR-U-002: Support and Documentation

**Requirement**: Service provider must supply comprehensive support.

**Support Requirements**:
- User guide (digital and print) provided
- Service desk available during business hours (phone, email, portal)
- Response time for queries: < 2 hours
- On-site support available when required

**Priority**: SHOULD_HAVE

---

### Service Management Requirements

#### NFR-SM-001: Proactive Monitoring

**Requirement**: Service provider must proactively monitor equipment and address issues before user impact.

**Service Management Targets**:
- Remote monitoring of equipment status 24/7
- Proactive consumables replenishment (before stockout)
- Predictive maintenance to prevent failures
- User notified proactively of any service issues

**Priority**: SHOULD_HAVE

---

#### NFR-SM-002: Regular Service Reviews

**Requirement**: Formal service reviews must be conducted regularly.

**Service Review Requirements**:
- Monthly service reports provided (SLA performance, volumes, issues)
- Quarterly service review meetings with service owner
- Annual strategic review and contract assessment
- **Quarterly security review** (NEW - per MOD SbD assessment)

**Priority**: MUST_HAVE (upgraded from SHOULD_HAVE)

---

#### NFR-SM-003: Continuous Improvement

**Requirement**: Service provider must demonstrate continuous improvement.

**Improvement Requirements**:
- User feedback mechanism in place
- Service improvement suggestions reviewed quarterly
- Technology refresh during contract term (if longer than 36 months)

**Priority**: COULD_HAVE

---

## Integration Requirements

### INT-001: Integration with Azure AD / Entra ID

**Purpose**: User authentication for portal and service access.

**Integration Type**: Identity provider integration (SAML/OAuth SSO)

**Data Exchanged**:
- **From Azure AD to Service**: User identity, group membership, department
- **From Service to Azure AD**: None (authentication only)

**Integration Pattern**: SAML 2.0 or OpenID Connect SSO

**Requirements**:
- [ ] Service portal supports Azure AD SSO
- [ ] Just-in-time user provisioning (no manual account creation)
- [ ] Department/cost centre attributes available for reporting
- [ ] Conditional Access policies apply to service portal

**Priority**: MUST_HAVE

**Owner**: IT - Identity Team

---

### INT-002: Integration with Microsoft InTune

**Purpose**: Deploy and manage print drivers across Windows 11 managed devices.

**Integration Type**: Print driver deployment via InTune

**Data Exchanged**:
- **From InTune to Endpoints**: Print driver package, printer configuration
- **From Endpoints to InTune**: Deployment status

**Requirements**:
- [ ] Service provider supplies InTune-compatible driver package
- [ ] Driver deployment tested and documented
- [ ] ARM64 driver available for Copilot+ PCs

**Priority**: MUST_HAVE

**Owner**: IT - Endpoint Management Team

**Aligns With**: Architecture Principle 1 - Cloud-First Endpoint Management

---

### INT-003: Integration with ServiceNow (Optional)

**Purpose**: Service issue reporting via standard ITSM tooling.

**Integration Type**: Incident creation integration

**Data Exchanged**:
- **From Service to ServiceNow**: Service incidents/alerts
- **From ServiceNow to Service**: Incident updates

**Integration Pattern**: API or email-based incident creation

**Requirements**:
- [ ] Service issues can be logged via ServiceNow (if service provider supports)
- [ ] Or clear escalation path via service provider's own ticketing system

**Priority**: COULD_HAVE

**Owner**: IT - Service Management Team

---

### INT-004: Integration with Finance/Billing System (Optional)

**Purpose**: Recharge print costs to departments.

**Integration Type**: Cost reporting export

**Data Exchanged**:
- **From Service to Finance**: Monthly usage report by cost centre

**Requirements**:
- [ ] Monthly report in agreed format (CSV/Excel)
- [ ] Report delivered by 5th business day of following month
- [ ] Data suitable for internal journal entries if required

**Priority**: COULD_HAVE

**Owner**: Finance Team

---

### INT-005: Integration with SIEM (NEW - from MOD SbD Assessment)

**Purpose**: Export audit logs to organisation's Security Information and Event Management system for centralised security monitoring.

**Integration Type**: Log export/forwarding

**Data Exchanged**:
- **From Service to SIEM**: Audit logs (authentication events, print job logs, admin actions, security events)

**Integration Pattern**:
- Syslog (RFC 5424) - Preferred
- CEF (Common Event Format) - Acceptable
- API-based log export - Acceptable
- File-based export (SFTP) - Minimum acceptable

**Requirements**:
- [ ] Service provides audit logs in standard format (Syslog/CEF)
- [ ] Near real-time log export (< 5 minute delay)
- [ ] Log format documented with field mappings
- [ ] Authentication failure events included
- [ ] Administrative action events included
- [ ] Security alert events included

**Priority**: SHOULD_HAVE

**Owner**: IT - Security Operations Team

**Source**: MOD Secure by Design Assessment (ARC-006-SECD-v1.0) Section 5.5 (Security Monitoring gap)

---

## Data Requirements

### Data Entities

#### Entity 1: Print Job Record

**Description**: Record of each print job submitted to the service.

**Responsibility**: Service provider maintains job records and provides reports to organisation.

**Key Attributes**:
| Attribute | Type | Description |
|-----------|------|-------------|
| Job Reference | String | Unique job identifier |
| User Identity | String | Azure AD user principal name |
| Department | String | Cost centre/department |
| Submit Timestamp | Timestamp | When job submitted |
| Complete Timestamp | Timestamp | When job completed |
| Status | Enum | Job status |
| Media Type | String | Paper/media used |
| Media Size | String | Dimensions |
| Copies | Integer | Number of copies |
| Priority | Enum | Standard/Urgent |
| Cost (if per-print) | Decimal | Job cost |

**Data Classification**: INTERNAL (job metadata); VARIABLE (print content classification)

**Data Retention**:
- Job records: 12 months active, archive as per contract
- Print files: Deleted within 24 hours of completion

---

### Data Quality Requirements

**Data Accuracy**: Job records must accurately reflect submitted jobs

**Data Completeness**: All mandatory fields populated for every print job

**Data Timeliness**: Reports provided within agreed timeframes

---

### Data Privacy Requirements

**UK GDPR Compliance**:
- Data Processing Agreement (DPA) required with service provider
- Personal data in print content is customer responsibility
- Service provider processes data only for service delivery
- Data deletion on request supported

---

## Constraints and Assumptions

### Technical Constraints

**TC-1**: On-premises equipment must work with existing corporate network infrastructure (VLAN-capable switches, DHCP)

**TC-2**: Print driver must be deployable via InTune (per Architecture Principle 1)

**TC-3**: Must support TLS 1.2+ as older protocols disabled on corporate network

**TC-4**: Physical footprint constrained - service provider to advise on space requirements

**TC-5**: Electrical supply: Standard UK outlets at proposed location (service provider to confirm requirements)

---

### Business Constraints

**BC-1**: Budget: Annual service cost not to exceed £55,000/year (increased from £50,000 to accommodate enhanced security requirements)

**BC-2**: Contract term: Maximum 36 months (with renewal option) to maintain flexibility

**BC-3**: Procurement route: Prefer G-Cloud or other established framework

**BC-4**: Implementation timeline: Service operational within 8 weeks of contract signature

**BC-5**: No capital expenditure - service must be fully OpEx

**BC-6**: **Accreditation timeline**: IAO sign-off required before service go-live (NEW)

---

### Assumptions

**A-1**: Service provider will supply and maintain all equipment on premises

**A-2**: Adequate space and electrical supply available at proposed location

**A-3**: Users will primarily submit jobs from Windows 11 managed endpoints

**A-4**: Average volume of 150-200 large format prints per month based on historical data

**A-5**: Internet connectivity available for service provider remote monitoring

**A-6**: Service provider can achieve Cyber Essentials Plus certification (MANDATORY)

**A-7**: IAO will be assigned from IT Security Team before contract award (NEW)

**A-8**: SIEM integration is technically feasible with organisation's existing SIEM platform (NEW)

**Validation Plan**: Assumptions validated during vendor due diligence

---

## Service Level Agreement Summary

### Key SLA Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| Service availability | 99% (business hours) | Monthly service report |
| Standard turnaround | 95% within 24 hours | Monthly service report |
| Urgent turnaround | 99% within 4 hours | Monthly service report |
| Issue response | < 2 hours | Ticket timestamps |
| Equipment repair/replace | < 8 business hours | Incident records |
| Proactive maintenance | No user-impacting failures from lack of maintenance | Incident analysis |
| **Security incident notification** | < 1 hour | Incident records (NEW) |
| **Critical patch application** | < 14 days | Patch reports (NEW) |

### Service Credits

Service credits should apply for systemic SLA failures:
- Availability < 95%: X% credit of monthly fee
- Turnaround SLA missed > 10% of jobs: Y% credit
- Critical incident handling failed: Case-by-case credit
- **Security incident notification SLA missed**: X% credit (NEW)

*Specific percentages to be negotiated during contract*

---

## Success Criteria and KPIs

### Business Success Metrics

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| Annual print service cost | £75,000/year (estimated current outsourced) | < £55,000/year | Year 1 | Contract cost |
| Internal management time | Unknown | < 1 hour/week | Month 3 | Time tracking |
| Turnaround SLA met | N/A | 95% standard, 99% urgent | Ongoing | Service reports |
| User satisfaction | N/A | > 85% | Month 6 | User survey |
| Print quality issues | Unknown | < 2% reprint rate | Ongoing | Service reports |

---

### Service Success Metrics

| Metric | Target | Measurement Method |
|--------|--------|-------------------|
| Service availability | 99% | Service provider dashboard |
| Mean time to resolve issues | < 4 hours | Incident tickets |
| Proactive vs reactive maintenance | 80% proactive | Service reports |
| User adoption | 100% of target users | Job submission analysis |

---

### Security Success Metrics (NEW - from MOD SbD Assessment)

| Metric | Target | Measurement Method |
|--------|--------|-------------------|
| Supplier security certification | Cyber Essentials+ maintained | Annual certificate check |
| Security patch compliance | 100% critical patches within 14 days | Patch reports |
| Security incidents | < 2 per year | Incident records |
| Accreditation status | Accredited before go-live | IAO sign-off |
| IAMM maturity | Level 2 all domains | Annual assessment |

---

## Dependencies and Risks

### Dependencies

| Dependency | Description | Owner | Impact if Delayed |
|------------|-------------|-------|-------------------|
| Procurement approval | Budget and contract approval | Finance/Procurement | HIGH - Blocks service start |
| Site preparation | Space, electrical, network at installation location | Facilities | MEDIUM - Delays installation |
| Azure AD SSO configuration | SSO setup for portal authentication | IT Identity Team | MEDIUM - Users need manual logins |
| InTune driver deployment | Driver testing and deployment | IT Endpoint Team | MEDIUM - Delays user rollout |
| **IAO assignment** | Information Assurance Owner assigned | Security Team | HIGH - Blocks accreditation (NEW) |
| **SIEM integration** | Log export configuration | Security Operations | MEDIUM - Delays security monitoring (NEW) |

---

### Risks

| Risk ID | Description | Probability | Impact | Mitigation Strategy | Owner |
|---------|-------------|-------------|--------|---------------------|-------|
| R-1 | Service provider fails to meet SLA consistently | LOW | HIGH | Strong SLA with service credits; exit clause for persistent failure | Procurement |
| R-2 | Driver incompatible with Windows 11 ARM64 (Copilot+ PCs) | LOW | MEDIUM | Require ARM64 driver support as mandatory requirement | IT |
| R-3 | Service provider security practices insufficient | LOW | HIGH | Require Cyber Essentials+; security assessment before award | Security |
| R-4 | Print volume exceeds contracted capacity | MEDIUM | MEDIUM | Size contract for expected peak; include on-demand scaling clause | Facilities |
| R-5 | User adoption low due to change resistance | LOW | MEDIUM | Change management communications; demonstrate service benefits | Business Analyst |
| R-6 | Service provider business failure | LOW | HIGH | Select established provider; check financial stability; exit/transition clause | Procurement |
| R-7 | Colour accuracy insufficient for Marketing needs | LOW | MEDIUM | Require Delta E < 2 SLA; colour proofing capability | Marketing |
| R-8 | Contract lock-in limits flexibility | MEDIUM | MEDIUM | Maximum 36-month term; exit for convenience clause with reasonable notice | Commercial |
| **R-SEC-001** | Supplier security posture inadequate | MEDIUM | HIGH | Mandatory Cyber Essentials+; annual penetration testing rights; audit rights | Security (NEW) |
| **R-SEC-002** | Accreditation delayed blocking go-live | MEDIUM | HIGH | Assign IAO immediately; start BIA during implementation | IAO (NEW) |
| **R-SEC-003** | Security incident not notified promptly | LOW | HIGH | 1-hour notification SLA in contract; escalation procedure | Security (NEW) |
| **R-SEC-004** | Audit log tampering by supplier | LOW | HIGH | SIEM integration; independent log storage; audit rights | Security (NEW) |

---

## Requirement Conflicts & Resolutions

### Conflict C-1: Cost vs Service Quality

**Conflicting Requirements**:
- **Requirement A**: BR-001 - Achieve predictable, reduced costs (< £55,000/year)
- **Requirement B**: BR-004 - High quality output with Delta E < 2 colour accuracy and diverse media support

**Stakeholders Involved**:
- **Finance Business Partner**: Wants lowest cost service
- **Marketing/Engineering**: Want professional-grade quality and media options

**Nature of Conflict**:
Premium managed print services with laboratory-grade equipment and extensive media options command higher prices than basic services. Ultra-low-cost services may use consumer-grade equipment with limited colour accuracy.

**Trade-off Analysis**:

| Option | Pros | Cons | Annual Cost |
|--------|------|------|-------------|
| **Budget service** | ✅ Lowest cost | ❌ Basic quality, limited media | £25,000-35,000 |
| **Standard service** | ✅ Good quality, reasonable media range | ❌ May lack premium options | £40,000-50,000 |
| **Premium service** | ✅ Excellent quality, full media range | ❌ Highest cost | £55,000-70,000 |

**Resolution Strategy**: COMPROMISE

**Decision**: Procure standard-tier managed service with specific quality requirements (Delta E < 2) in contract. Premium media types (canvas, specialty vinyls) available as on-demand extras at additional cost.

**Rationale**: 80% of print volume is standard materials where mid-tier quality suffices. Critical marketing pieces (10-15% of volume) can use on-demand premium options. This balances cost control with quality requirements.

**Decision Authority**: Executive Sponsor with Finance and Marketing input

**Stakeholder Management**:
- **Finance**: Satisfied - within budget ceiling
- **Marketing**: Accepted - core needs met; premium options available for critical work at extra cost

---

### Conflict C-2: Control vs Convenience (On-Premises vs Cloud Service)

**Conflicting Requirements**:
- **Requirement A**: BR-003 - Maximum document confidentiality (favour on-premises)
- **Requirement B**: BR-005, BR-006 - Minimal overhead and flexible capacity (favour cloud/off-site service)

**Stakeholders Involved**:
- **Security Lead**: Prefers on-premises equipment for data control
- **Facilities Management**: Prefers minimal on-site footprint and zero equipment responsibility

**Nature of Conflict**:
Pure off-site managed print services (print shop model) offer maximum convenience but require sending files externally. On-premises equipment placement requires floor space and coordination but keeps data on-site.

**Trade-off Analysis**:

| Option | Data Security | Convenience | On-Site Footprint |
|--------|---------------|-------------|-------------------|
| **Off-site print shop** | ❌ Files leave premises | ✅ No on-site equipment | ✅ Zero |
| **On-premises MPS** | ✅ Files stay on-site | ✅ Managed by provider | ⚠️ Floor space needed |
| **Hybrid** | ⚠️ Sensitive on-site, others off-site | ⚠️ More complex | ⚠️ Some space needed |

**Resolution Strategy**: PRIORITIZE (Security)

**Decision**: Require on-premises equipment placement managed by service provider. This maintains data confidentiality while still transferring operational burden to vendor.

**Rationale**: Document confidentiality (BR-003) is a MUST_HAVE requirement. The convenience benefits of off-site printing do not outweigh security risks for sensitive documents. On-premises MPS still achieves minimal overhead goal as vendor manages all operations.

**Decision Authority**: Security Lead and Executive Sponsor

**Stakeholder Management**:
- **Security Lead**: Satisfied - data stays on premises
- **Facilities**: Accepted - floor space provided; no operational responsibility beyond access coordination

---

### Conflict C-3: Contract Flexibility vs Cost Efficiency

**Conflicting Requirements**:
- **Requirement A**: BC-2 - Maximum contract term 36 months for flexibility
- **Requirement B**: BR-001 - Lowest possible cost (longer contracts often = lower unit cost)

**Stakeholders Involved**:
- **Commercial/Procurement**: Prefers shorter terms for renegotiation flexibility
- **Finance**: Prefers lowest cost which often means longer commitment

**Nature of Conflict**:
Managed print service providers typically offer better pricing for longer contracts (48-60 months) as they can amortise equipment costs. Shorter contracts mean higher monthly fees or equipment residual clauses.

**Trade-off Analysis**:

| Contract Term | Monthly Cost | Flexibility | Risk |
|---------------|--------------|-------------|------|
| **24 months** | Highest | Maximum | Low lock-in |
| **36 months** | Medium | Good | Moderate |
| **60 months** | Lowest | Low | High lock-in |

**Resolution Strategy**: COMPROMISE

**Decision**: Target 36-month initial term with option to extend for additional 12-24 months at same rates. Include exit for convenience clause at month 24 with 3-month notice.

**Rationale**: 36 months provides reasonable pricing while maintaining flexibility. Exit clause at month 24 provides escape route if service unsatisfactory. Extension option locks in pricing if service is good.

**Decision Authority**: Commercial/Procurement Lead with Finance input

**Stakeholder Management**:
- **Commercial**: Satisfied - flexibility preserved via exit clause and term limit
- **Finance**: Accepted - pricing competitive for 36-month term; extension option protects against cost increases

---

### Conflict C-4: Security Requirements vs Implementation Speed (NEW)

**Conflicting Requirements**:
- **Requirement A**: BR-007 - Achieve JSP 440 accreditation before go-live
- **Requirement B**: BC-4 - Service operational within 8 weeks of contract signature

**Stakeholders Involved**:
- **IAO/Security Team**: Requires full accreditation before OFFICIAL data processed
- **Business Sponsor**: Wants service available as quickly as possible

**Nature of Conflict**:
Full accreditation process (BIA, risk assessment, IAO sign-off) typically takes 4-8 weeks. Combined with 8-week implementation, this creates potential delay to service availability.

**Trade-off Analysis**:

| Option | Security Compliance | Speed | Risk |
|--------|-------------------|-------|------|
| **Full accreditation first** | ✅ Fully compliant | ❌ 12-16 weeks total | Low risk |
| **Parallel workstreams** | ✅ Accredited at go-live | ✅ 8-10 weeks total | Medium - dependent on timing |
| **Phased rollout** | ⚠️ Limited users initially | ✅ Quick initial availability | Medium - governance complexity |

**Resolution Strategy**: INNOVATE

**Decision**: Run accreditation workstream in parallel with implementation:
- Assign IAO immediately upon contract award (Week 0)
- Complete BIA during Weeks 1-3 using supplier documentation
- Complete risk assessment during Weeks 4-6
- Obtain IAO sign-off during Week 7-8 (before go-live)
- Service available Week 8-10 with accreditation complete

**Rationale**: Parallel execution satisfies both security and speed requirements. Key is early IAO assignment and supplier cooperation with accreditation evidence.

**Decision Authority**: IAO and Executive Sponsor

**Stakeholder Management**:
- **IAO/Security**: Satisfied - proper accreditation before processing OFFICIAL data
- **Business Sponsor**: Satisfied - service available within acceptable timeframe

---

## Vendor Evaluation Criteria

### Mandatory Requirements (Pass/Fail)

All vendors must meet these to be considered:

| Requirement | Evidence Required |
|-------------|------------------|
| On-premises equipment placement capability | Confirmation in proposal |
| Windows 11 x64 and ARM64 driver support | Driver documentation |
| Azure AD SSO integration | Technical specification |
| UK-based support (during business hours) | Support location statement |
| **Cyber Essentials Plus certification** | Current certificate (MANDATORY - upgraded from Cyber Essentials) |
| Financial stability | Credit check / accounts |
| G-Cloud listed (if procurement via framework) | G-Cloud service ID |
| **BPSS clearance for on-site staff** | Confirmation in proposal (NEW) |
| **TLS 1.2+ encryption** | Technical specification (NEW) |
| **Audit log capability with 12-month retention** | Technical specification (NEW) |

### Scored Criteria

| Criterion | Weighting | Scoring Basis |
|-----------|-----------|---------------|
| Price (TCO over contract term) | 25% | Lowest cost = highest score (reduced from 30%) |
| Technical capability (equipment, quality, features) | 20% | Demo and specification review (reduced from 25%) |
| Service levels and SLA terms | 15% | SLA commitments and remedies (reduced from 20%) |
| **Security posture and certifications** | 20% | ISO 27001, security questionnaire, penetration test evidence (NEW) |
| Implementation approach and timeline | 10% | Project plan credibility |
| Reference customers | 5% | Quality of references (reduced from 10%) |
| Added value / innovation | 5% | Differentiating features |

**Note**: Security weighting increased to 20% based on MOD Secure by Design assessment findings. ISO 27001 certification scores additional points in security evaluation.

---

## Timeline and Milestones

### High-Level Milestones

| Milestone | Description | Target Date | Dependencies |
|-----------|-------------|-------------|--------------|
| **IAO Assignment** | Information Assurance Owner assigned | TBD (immediately) | Requirements approval (NEW) |
| Requirements Approval | Stakeholder sign-off on requirements | TBD | This document |
| RFP/ITT Issued | Procurement documentation released | TBD + 2 weeks | Requirements |
| Vendor Responses Received | Deadline for proposals | TBD + 5 weeks | RFP issuance |
| **Security Evaluation** | Vendor security assessment complete | TBD + 6 weeks | Responses received (NEW) |
| Vendor Evaluation Complete | Scoring and shortlisting | TBD + 7 weeks | Security evaluation |
| Contract Award | Preferred vendor selected | TBD + 8 weeks | Evaluation |
| Contract Signature | Commercial agreement signed | TBD + 10 weeks | Award decision |
| **BIA Completed** | Business Impact Assessment complete | TBD + 12 weeks | Contract (NEW) |
| Site Preparation | Location ready for equipment | TBD + 12 weeks | Contract |
| Equipment Installation | Service provider installs equipment | TBD + 13 weeks | Site prep |
| **Risk Assessment Complete** | Security risk assessment complete | TBD + 14 weeks | BIA (NEW) |
| User Training | Staff trained on service | TBD + 14 weeks | Installation |
| **SIEM Integration** | Audit logs flowing to SIEM | TBD + 14 weeks | Installation (NEW) |
| **IAO Sign-Off** | Accreditation complete | TBD + 15 weeks | Risk assessment (NEW) |
| Service Go-Live | Service available to all users | TBD + 15 weeks | IAO sign-off |

---

## Budget

### Service Cost Estimate

| Component | Annual Cost | Notes |
|-----------|-------------|-------|
| Managed service fee | £35,000 - £48,000 | Fixed monthly fee covering equipment, consumables, support |
| Per-print overages (if applicable) | £0 - £5,000 | If volume exceeds contracted baseline |
| Premium media (on-demand) | £2,000 - £5,000 | Canvas, specialty materials |
| **Security enhancements** | £0 - £2,000 | SIEM integration, penetration testing support (NEW) |
| **Total Annual Cost** | **£37,000 - £60,000** | |

### Cost Comparison

| Model | Year 1 | Year 2 | Year 3 | Total 3-Year |
|-------|--------|--------|--------|--------------|
| Current outsourced (estimate) | £75,000 | £78,000 | £81,000 | £234,000 |
| In-house ownership (CapEx + OpEx) | £45,000 | £20,000 | £22,000 | £87,000 |
| Managed service (proposed) | £50,000 | £48,000 | £48,000 | £146,000 |

**Note**: Managed service cost increased slightly from v2.0 to accommodate enhanced security requirements (Cyber Essentials+ suppliers typically command premium, SIEM integration may incur setup costs). Still represents significant savings vs current outsourced approach and avoids CapEx/operational burden of in-house ownership.

---

## Approval

### Requirements Review

| Reviewer | Role | Status | Date | Comments |
|----------|------|--------|------|----------|
| [PENDING] | Business Sponsor | [ ] Approved | [DATE] | |
| [PENDING] | Service Owner (Facilities) | [ ] Approved | [DATE] | |
| [PENDING] | Enterprise Architect | [ ] Approved | [DATE] | |
| [PENDING] | Security | [ ] Approved | [DATE] | |
| [PENDING] | **Information Assurance Owner** | [ ] Approved | [DATE] | (NEW) |
| [PENDING] | Finance | [ ] Approved | [DATE] | |
| [PENDING] | Commercial/Procurement | [ ] Approved | [DATE] | |

### Sign-Off

By signing below, stakeholders confirm that requirements are complete, understood, and approved to proceed to procurement phase.

| Stakeholder | Signature | Date |
|-------------|-----------|------|
| [Name, Role] | _________ | [DATE] |
| [Name, Role] | _________ | [DATE] |

---

## Appendices

### Appendix A: Glossary

| Term | Definition |
|------|------------|
| **BPSS** | Baseline Personnel Security Standard - minimum vetting for government access |
| **BIA** | Business Impact Assessment - analysis of impact from service disruption |
| Delta E | Measure of colour difference; <2 is imperceptible to most observers |
| DPA | Data Processing Agreement - contract covering GDPR data processor requirements |
| G-Cloud | UK Government framework agreement for cloud services procurement |
| **IAO** | Information Assurance Owner - accountable for security accreditation |
| **IAMM** | Information Assurance Maturity Model - JSP 440 security maturity framework |
| ICC Profile | International Color Consortium colour profile for accurate colour reproduction |
| InTune | Microsoft's cloud-based device management platform |
| **JSP 440** | Joint Service Publication 440 - Defence Information Assurance policy |
| Large Format | Generally prints wider than A2 (420mm); often 24" (610mm) or wider |
| MPS | Managed Print Service - outsourced print service with vendor-supplied equipment |
| OpEx | Operational Expenditure - ongoing service costs (vs capital purchase) |
| **SIEM** | Security Information and Event Management - centralised security monitoring |
| SLA | Service Level Agreement - contractual performance commitments |
| SSO | Single Sign-On - authentication via central identity provider (Azure AD) |

### Appendix B: Reference Documents

- `.arckit/memory/architecture-principles.md` - Enterprise Architecture Principles (Windows 11 Migration)
- Architecture Principle 1 - Cloud-First Endpoint Management
- Architecture Principle 2 - Zero Trust Security Model
- Architecture Principle 3A - Copilot+ PC Hardware and AI-Ready Devices
- **`projects/006-large-format-printer/mod-secure-by-design.md`** - MOD Secure by Design Assessment (ARC-006-SECD-v1.0) (NEW)

### Appendix C: Media Size Reference

| Size | Dimensions (mm) | Dimensions (inches) |
|------|-----------------|---------------------|
| A0 | 841 x 1189 | 33.1 x 46.8 |
| A1 | 594 x 841 | 23.4 x 33.1 |
| A2 | 420 x 594 | 16.5 x 23.4 |
| 24" roll | 610mm width | 24" width |
| 36" roll | 914mm width | 36" width |
| 44" roll | 1118mm width | 44" width |
| 60" roll | 1524mm width | 60" width |

### Appendix D: Security Requirements Traceability (NEW)

| Requirement ID | MOD SbD Assessment Section | Gap Addressed |
|---------------|---------------------------|---------------|
| BR-007 | 3.1 Security Accreditation Status | Accreditation not started |
| NFR-SEC-006 | 7.1 Third-Party Risk Management | Supplier certification verification |
| NFR-SEC-007 | 3.2 JSP 440 Compliance (Patch Management) | Patch management SLA gap |
| NFR-SEC-008 | 2.2 Secure by Default | Default credentials, secure configuration |
| NFR-SEC-009 | 5.4 Vulnerability Management | Penetration testing not specified |
| NFR-SEC-010 | 8.2 Incident Response | Incident notification SLA gap |
| NFR-SEC-011 | 9.1 Security Clearances | BPSS verification requirement |
| NFR-C-004 | 3.2 JSP 440 Compliance | IAMM Level 2 target |
| INT-005 | 5.5 Security Monitoring and Logging | SIEM integration gap |
| C-4 | 3.1 / BC-4 | Accreditation timeline conflict |

---

**Generated by**: ArcKit `/arckit.requirements` command
**Generated on**: 2026-01-09 16:45 GMT
**ArcKit Version**: 0.8.2
**Project**: Large Format Printing Service (Project 006)
**AI Model**: claude-opus-4-5-20251101
**Generation Context**: Requirements v3.0 updated based on MOD Secure by Design Assessment (ARC-006-SECD-v1.0) findings. Added 6 new security NFRs, 1 new business requirement, 1 new integration requirement, 1 new compliance NFR, 4 new security risks, 1 new conflict resolution. Security weighting in vendor evaluation increased to 20%. Budget adjusted to accommodate enhanced security requirements.
