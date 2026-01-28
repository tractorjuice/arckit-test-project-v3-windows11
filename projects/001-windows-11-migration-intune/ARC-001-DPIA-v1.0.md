# Data Protection Impact Assessment (DPIA): Windows 10 to Windows 11 Migration with Microsoft InTune

**Document Type**: Data Protection Impact Assessment (UK GDPR Article 35)
**Document ID**: ARC-WIN11-DPIA-v1.0-20251104
**Project ID**: 001-windows-11-migration-intune
**Version**: 1.0
**Status**: DRAFT
**Classification**: OFFICIAL-SENSITIVE

---

## Document Control

| Field | Value |
|-------|-------|
| **Assessment Date** | 2025-11-04 |
| **Next Review Date** | 2026-11-04 (12 months) |
| **Assessment Owner** | IT Operations Director |
| **Data Protection Officer** | CISO / Data Protection Officer |
| **Senior Responsible Owner** | CIO |
| **Project Phase** | Pre-Implementation (Discovery/Alpha) |
| **Last Updated** | 2025-11-04 |

**Distribution List**:
- CIO (Executive Sponsor)
- CISO (Data Protection Officer)
- IT Operations Director (Data Controller)
- Enterprise Architect
- HR Director (Employee Data Owner)
- Legal/Compliance Team

**Classification Rationale**: This DPIA contains sensitive information about data protection risks, vulnerabilities, and personal data processing activities. It must be protected as OFFICIAL-SENSITIVE under UK Government Security Classifications or equivalent organizational classification.

---

## Version History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-11-04 | Enterprise Architecture Team | Initial DPIA for Windows 11 migration project |

---

## 1. Need for DPIA

### 1.1 ICO 9-Criteria Screening

Under UK GDPR Article 35, a Data Protection Impact Assessment (DPIA) is **mandatory** when processing is "likely to result in a high risk to the rights and freedoms of natural persons." The ICO provides 9 screening criteria to determine DPIA necessity.

**Screening Results**:

| # | Criterion | Met? | Evidence | Risk Level |
|---|-----------|------|----------|------------|
| **1** | **Evaluation or scoring** | ❌ NO | No profiling, credit scoring, or evaluation of individuals. InTune device compliance checks are technical (TPM 2.0, BitLocker) not behavioral. | N/A |
| **2** | **Automated decision-making with legal/significant effect** | ❌ NO | No automated decisions affecting legal rights or significantly impacting individuals. Migration scheduling is IT-driven, not algorithmically determined. Device compliance blocks access but users can remediate within 24-hour grace period. | N/A |
| **3** | **Systematic monitoring** | ❌ NO | No surveillance or systematic monitoring of publicly accessible areas. InTune monitors device compliance (TPM, BitLocker, OS version) but not user behavior. Audit logs track administrative actions (device wipes, policy changes) not user activity. | N/A |
| **4** | **Sensitive data (special category)** | ⚠️ **MAYBE** | **OneDrive Known Folder Move** processes user personal files from Desktop, Documents, and Pictures folders. While organizational policy prohibits storing health data, financial data, or other special category data in work folders, **there is risk** that users may store:<br>- Health information (medical appointment letters, prescriptions)<br>- Financial data (bank statements, tax documents)<br>- Trade union communications<br>- Political/religious communications<br><br>**Article 9 Status**: Not **intentionally** processing special category data, but **risk exists** due to user behavior. | MEDIUM |
| **5** | **Large scale** | ✅ **YES** | **6,000 users** across the organization. While ICO does not define "large scale" precisely, 6,000+ individuals is generally considered large scale for organizational context. Covers all employees, contractors, and service accounts. | MEDIUM |
| **6** | **Matching or combining datasets** | ✅ **YES** | Integration of multiple datasets:<br>- **Azure AD** (user identity, email, department, MFA status)<br>- **InTune** (device inventory, compliance status, policies)<br>- **OneDrive for Business** (user file sync status, data size)<br>- **Microsoft Defender for Endpoint** (security telemetry)<br>- **ServiceNow** (support tickets, user feedback)<br><br>Data flows enable cross-referencing: User → Devices → Migration Status → Support Tickets → OneDrive Sync Status. | MEDIUM |
| **7** | **Vulnerable data subjects** | ❌ NO | No specific focus on children, elderly, disabled, patients, asylum seekers, or other vulnerable groups. All data subjects are **employees and contractors** (working-age adults). <br><br>**Note**: If organization employs individuals under 18 (apprentices, interns), this criterion would be MET. | N/A |
| **8** | **Innovative use of technology** | ❌ NO | Microsoft InTune is a mature, widely-adopted SaaS platform for endpoint management. Windows Autopilot and Azure AD are standard Microsoft cloud services. No use of:<br>- AI/ML for automated decision-making<br>- Blockchain<br>- Biometric authentication (beyond optional Windows Hello fingerprint - user opt-in)<br>- Internet of Things (IoT) data collection<br>- Novel surveillance technologies | N/A |
| **9** | **Prevents data subjects from exercising a right or using a service** | ❌ NO | Users retain GDPR rights:<br>- **Right to Access**: Users can request migration data export via IT helpdesk<br>- **Right to Rectification**: Users can update personal data (name, phone) via Azure AD self-service<br>- **Right to Erasure**: Data anonymized 6 years post-employment (cannot delete during employment - contract necessity)<br>- **Right to Data Portability**: Users can export OneDrive data at any time<br>- **Right to Object**: Users cannot object to IT asset management processing (employment contract necessity), but can object to marketing emails (not applicable here)<br><br>Non-compliant devices are blocked from corporate resources via Conditional Access, but users can remediate within 24-hour grace period (not permanent denial of service). | N/A |

**Screening Score**: **2/9 criteria met** (Criterion 5: Large scale, Criterion 6: Matching datasets)
**Special Note**: Criterion 4 (Sensitive data) is **MAYBE** due to risk of users storing special category data in OneDrive, even though not intentionally processed.

**Decision**: ✅ **DPIA REQUIRED under UK GDPR Article 35**

**Rationale**:
1. **ICO Guidance**: 2+ criteria met triggers mandatory DPIA requirement
2. **Large Scale**: 6,000 users constitutes large-scale processing
3. **Dataset Matching**: Integration of Azure AD, InTune, OneDrive, ServiceNow creates cross-referencing capability
4. **Special Category Risk**: OneDrive Known Folder Move may inadvertently process special category data (health, financial) if users store personal documents in work folders
5. **Good Practice**: Even if only 1 criterion met, DPIA demonstrates accountability principle (UK GDPR Article 5(2))

**ICO Prior Consultation**: To be determined after risk assessment (Section 5). If any residual risks remain **HIGH** after mitigations, ICO prior consultation is required before processing begins.

---

## 2. Description of Processing

### 2.1 Project Context

**Project Name**: Windows 10 to Windows 11 Migration with Microsoft InTune

**Project Overview**:
The organization is migrating approximately 6,000 Windows 10 devices to Windows 11 while simultaneously transitioning endpoint management from on-premises Configuration Manager to cloud-native Microsoft InTune. This dual transformation addresses:
- **Security**: Windows 10 End of Life (October 14, 2025) creates critical security vulnerabilities
- **Compliance**: Unsupported OS violates cyber insurance requirements and regulatory compliance
- **Modernization**: Cloud-native management enables Zero Trust security, remote work, and AI productivity features

**Project Timeline**: 78 weeks (18 months) from November 2025 to February 2027

**Project Scope**:
- 6,000 Windows 10 devices → Windows 11
- On-premises Configuration Manager → Cloud-native InTune
- Azure AD join for all devices
- OneDrive Known Folder Move (KFM) for data protection
- Microsoft Defender for Endpoint deployment
- Conditional Access policy enforcement

**Data Controller**: [Organization Name] (represented by IT Operations Director)
**Data Processor**: Microsoft Corporation (InTune, Azure AD, OneDrive for Business, Defender for Endpoint)

### 2.2 Processing Purposes

The following processing purposes are necessary to achieve project objectives:

| Purpose ID | Purpose Description | Legal Basis (GDPR Art 6) | Source Requirement |
|-----------|---------------------|--------------------------|---------------------|
| **P-001** | **Device Inventory Management** | Legitimate Interests (Art 6(1)(f)) - IT asset management | FR-001: Hardware compatibility assessment |
| **P-002** | **User Identity and Access Management** | Employment Contract (Art 6(1)(b)) - Manage employee IT access | INT-001: Azure AD integration |
| **P-003** | **OneDrive Data Backup and Sync** | Employment Contract (Art 6(1)(b)) + Legitimate Interests (Art 6(1)(f)) - Data protection and business continuity | FR-003: OneDrive Known Folder Move |
| **P-004** | **Migration Tracking and Reporting** | Legitimate Interests (Art 6(1)(f)) - Project management and accountability | BR-008: Phased rollout and risk mitigation |
| **P-005** | **Security Compliance Monitoring** | Legal Obligation (Art 6(1)(c)) + Legitimate Interests (Art 6(1)(f)) - Cyber security requirements | NFR-SEC-001 to NFR-SEC-006 |
| **P-006** | **User Communication and Training** | Employment Contract (Art 6(1)(b)) - Employee development and change management | FR-014: User communication and training |
| **P-007** | **Support Ticket Management** | Legitimate Interests (Art 6(1)(f)) - IT support and issue resolution | DR-006: Support tickets |
| **P-008** | **Audit Logging and Compliance** | Legal Obligation (Art 6(1)(c)) - Regulatory compliance (GDPR Art 32, ISO 27001) | NFR-SEC-006: Audit logging |

**Legitimate Interests Assessment (Art 6(1)(f))**:
Where Legitimate Interests is claimed as lawful basis, the organization has conducted a three-part test:

1. **Purpose Test**: Processing is necessary for legitimate interests of:
   - IT asset management and security (devices must be tracked, secured, and compliant)
   - Business continuity (user data must be backed up)
   - Project accountability (migration progress must be tracked)

2. **Necessity Test**: Processing is necessary because:
   - No less intrusive means exist to manage 6,000 devices at scale
   - Manual device tracking or user file backup is operationally infeasible
   - Cloud-native management (InTune) is industry standard for modern endpoint management

3. **Balancing Test**: Legitimate interests outweigh individual rights because:
   - Processing is limited to employment context (work devices, work data)
   - Users have reasonable expectations that work devices are monitored for security
   - Data minimization applied (only necessary attributes collected)
   - Transparency provided (privacy notice, user communication)
   - Low risk to individuals (device metadata, work files only - personal use of work devices prohibited by Acceptable Use Policy)

**Conclusion**: Legitimate Interests is appropriate lawful basis for device inventory, migration tracking, and audit logging. Employment Contract is appropriate for user identity management and OneDrive data backup (necessary to perform employment duties).

### 2.3 Nature of Processing

**Data Processing Activities**:

| Activity | Description | Personal Data Involved | Automated/Manual | Frequency |
|----------|-------------|------------------------|------------------|-----------|
| **Collection** | Gather device inventory data via InTune and Azure AD | User email, name, device serial number, hardware specs | Automated (InTune agent) | Continuous (every 8 hours) |
| **Storage** | Store user and device data in Microsoft cloud (InTune database, Azure AD, OneDrive) | All personal data listed in Section 2.5 | Automated (Microsoft infrastructure) | Continuous (duration of employment + retention period) |
| **Use/Analysis** | Generate migration dashboards, compliance reports, support ticket analysis | User email, migration status, device compliance status, support ticket descriptions | Automated (Power BI dashboards) + Manual (IT staff review) | Daily (dashboards), Weekly (reports) |
| **Disclosure/Sharing** | Share user data with Microsoft (data processor), ServiceNow (support ticketing) | User email, name, device data | Automated (API integration) | Continuous (real-time sync) |
| **Retention** | Retain audit logs for 7 years (compliance), operational data for employment duration + 6 years | All personal data | Automated (retention policies) | Ongoing (lifecycle management) |
| **Erasure/Anonymization** | Delete or anonymize PII 6 years post-termination | User email, name, phone (replaced with "User_<ID>_Anonymized") | Manual (HR-triggered workflow) | On termination + 6 years |

**Data Flow Summary**:

```
┌─────────────────┐
│ Windows Device  │ ──InTune Agent──> ┌──────────────────┐
│ (User Endpoint) │                    │ Microsoft InTune │ ──API──> ┌─────────────┐
└─────────────────┘                    │   (Cloud SaaS)   │          │ Power BI    │
         │                             └──────────────────┘          │ Dashboards  │
         │                                      │                     └─────────────┘
         │                                      │
         v                                      v
┌─────────────────┐                    ┌──────────────────┐
│ OneDrive Sync   │ ──Files──────────> │ OneDrive for     │
│ (KFM Desktop,   │                    │ Business (Cloud) │
│  Documents,     │                    │                  │
│  Pictures)      │                    └──────────────────┘
└─────────────────┘                             │
         │                                      │
         │                                      v
         │                             ┌──────────────────┐
         └───Support Ticket────────────>│ ServiceNow ITSM  │
                                        │ (3rd Party SaaS) │
                                        └──────────────────┘
```

**Cross-Border Data Flows**: See Section 2.8 (International Transfers)

### 2.4 Scope of Processing

**Data Subjects**:

| Data Subject Category | Count | Description | Special Considerations |
|-----------------------|-------|-------------|------------------------|
| **Employees (Full-Time)** | ~5,400 (90%) | Permanent employees across all departments (IT, HR, Finance, Sales, Operations, etc.) | Standard employment contract, UK employment law applies |
| **Contractors** | ~500 (8%) | External contractors with corporate-managed devices | Limited-term contracts, may have different retention requirements |
| **Service Accounts** | ~100 (2%) | Non-human accounts (automated services, shared mailboxes) | Not natural persons - GDPR does not apply, but included for completeness |

**Total Data Subjects**: 6,000 (excluding service accounts: 5,900 natural persons)

**Geographic Scope**:
- **Primary Location**: United Kingdom (majority of users)
- **Secondary Locations**: [If applicable: EU member states, USA offices]
- **Remote Workers**: Users working from home (UK and potentially abroad)

**Vulnerable Groups**: **NONE IDENTIFIED**
- No processing of children's data (all data subjects are employees, minimum working age 18)
- No processing of elderly/disabled as distinct vulnerable group (standard employee data)
- If organization employs apprentices under 18, this assessment must be updated

**Temporal Scope**:
- **Processing Start**: Pilot Phase (July 2026, Week 35 of project)
- **Processing Duration**: Duration of employment + 6-year retention period
- **Review Trigger**: 12 months (November 2026) or upon significant change

### 2.5 Data Categories

**Personal Data Processed**:

| Data Category | Attributes | Source Entity | PII? | Special Category (Art 9)? | Purpose |
|---------------|------------|---------------|------|---------------------------|---------|
| **Identity Data** | First name, Last name, Email address, Azure AD UPN, Phone number | E-002 (User) | YES | NO | User identity, communication, access management |
| **Employment Data** | Department, Persona (job role), Office location, MFA status | E-002 (User) | NO | NO | Migration wave planning, security compliance |
| **Device Data** | Device name, Serial number, Hardware model, CPU, RAM, TPM version, BIOS mode | E-001 (Device) | NO | NO | Hardware compatibility assessment, migration planning |
| **Migration Data** | Migration scheduled date, Migration status, Migration completion date, Downtime minutes, Failure reason | E-002 (User), E-004 (Migration Event) | NO | NO | Project tracking, reporting |
| **Compliance Data** | TPM compliant, BitLocker compliant, Defender compliant, OS version compliant, MFA compliant, Non-compliance reasons | E-003 (Device Compliance) | NO | NO | Security policy enforcement, Conditional Access |
| **OneDrive Sync Data** | Total data size (MB), Last sync timestamp, Sync status, Sync errors, Folders synced (Desktop, Documents, Pictures) | E-007 (OneDrive Data) | NO (metadata) | **RISK: YES** (user files may contain special category data) | Data backup, migration readiness verification |
| **User Files (OneDrive)** | Desktop files, Documents, Pictures (actual file contents) | OneDrive for Business (Microsoft cloud storage) | **RISK: YES** | **RISK: YES** (may contain health data, financial data, trade union communications, political/religious documents) | Data protection, business continuity |
| **Support Ticket Data** | Ticket number, Category, Severity, Description (may contain PII), Resolution notes | E-011 (Support Ticket) | **RISK: YES** (descriptions may reference user issues, errors) | NO | IT support, issue resolution |
| **Audit Log Data** | Event type (Device_Wipe, Policy_Change, BitLocker_Key_Retrieval), User who performed action, Device affected, Source IP, User agent | E-013 (Audit Log) | YES (admin identity) | NO | Security monitoring, compliance, forensics |
| **Satisfaction Data** | NPS score (0-10 user satisfaction rating) | E-002 (User).satisfaction_score | NO | NO | User experience tracking, change management effectiveness |

**Total PII Attributes**: 9 attributes (first_name, last_name, email, azure_ad_upn, phone, ticket description, audit log user_id, OneDrive user files [content])

**Special Category Data (GDPR Article 9)**:
**Status**: **NOT INTENTIONALLY PROCESSED**, but **RISK EXISTS**

**Risk Analysis**:
OneDrive Known Folder Move syncs user files from Desktop, Documents, and Pictures folders to OneDrive for Business cloud storage. While organizational Acceptable Use Policy prohibits storing personal data on work devices, there is **inherent risk** that users may store:

- **Health Data (Art 9(1))**: Medical appointment letters, prescriptions, health insurance documents, sick leave forms
- **Financial Data (potentially special category if reveals financial difficulties)**: Bank statements, mortgage documents, debt letters, tax documents
- **Trade Union Communications (Art 9(1))**: Union membership forms, collective bargaining documents
- **Political/Religious Communications (Art 9(1))**: Political party correspondence, religious organization documents
- **Racial/Ethnic Data (Art 9(1))**: Passport scans, visa documents, diversity monitoring forms
- **Genetic/Biometric Data (Art 9(1))**: DNA test results, fingerprint scans (unlikely but possible)
- **Sex Life/Sexual Orientation (Art 9(1))**: Personal correspondence, dating app screenshots (unlikely but possible)

**Likelihood**: MEDIUM (users commonly store personal documents in work folders despite policy)
**Impact**: HIGH (special category data breach has severe consequences under GDPR Article 83(5) - up to €20M or 4% global turnover fine)

**Article 9 Lawful Basis** (if special category data processed):
If special category data is inadvertently processed, the organization would rely on:
- **Article 9(2)(b)**: Processing necessary for employment law obligations (e.g., sick leave forms, diversity monitoring)
- **Article 9(2)(f)**: Processing necessary for establishment, exercise, or defense of legal claims (e.g., employment tribunal documents)

**Mitigation**: See Section 6 (Mitigations) - Technical controls to minimize risk

### 2.6 Data Sources

| Data Source | Type | Personal Data Provided | Controller/Processor | Integration Method |
|-------------|------|------------------------|----------------------|---------------------|
| **Azure Active Directory** | Identity Provider | Email, name, department, MFA status | Microsoft Corporation (Processor) | API (Microsoft Graph) |
| **Microsoft InTune** | Endpoint Management | Device inventory, compliance status | Microsoft Corporation (Processor) | Native integration (Microsoft cloud) |
| **OneDrive for Business** | Cloud Storage | User files (Desktop, Documents, Pictures), sync status | Microsoft Corporation (Processor) | OneDrive sync client |
| **Microsoft Defender for Endpoint** | Security Platform | Security telemetry, threat detection alerts | Microsoft Corporation (Processor) | API integration |
| **ServiceNow ITSM** | Support Ticketing | Ticket descriptions, user feedback | ServiceNow Inc (Processor) | REST API |
| **HR System** | Employee Master Data | Name, email, department, hire date, termination date | Internal System (Controller) | Manual export or API |
| **User Self-Reported** | Migration Surveys | Satisfaction score (NPS 0-10), feedback | Users directly | Microsoft Forms or InTune Company Portal |

### 2.7 Data Destinations

| Destination | Type | Personal Data Received | Purpose | Location (Country) |
|-------------|------|------------------------|---------|-------------------|
| **Microsoft InTune (Cloud)** | SaaS Platform | All device, user, compliance data | Endpoint management, policy enforcement | UK, EU, USA (Microsoft datacenters) |
| **OneDrive for Business (Cloud)** | Cloud Storage | User files (Desktop, Documents, Pictures) | Data backup, file sync | UK, EU (Microsoft datacenters) |
| **Azure Log Analytics** | Logging Platform | Audit logs, compliance events | Security monitoring, compliance reporting | UK, EU (Microsoft datacenters) |
| **Power BI (Cloud)** | Analytics Platform | Aggregated migration metrics (anonymized user data) | Dashboards, executive reporting | UK, EU (Microsoft datacenters) |
| **ServiceNow ITSM (Cloud)** | Support Platform | Support tickets, user contact info | IT support, helpdesk ticketing | USA, EU (ServiceNow datacenters) |
| **IT Operations Team** | Internal Staff | All personal data (for troubleshooting, support) | Operational management | UK (on-premises or VPN) |
| **Executive Leadership** | Internal Staff | Aggregated, anonymized migration metrics (no PII) | Project oversight, decision-making | UK |

**Retention at Destinations**:
- **InTune/Azure AD**: Duration of employment + 90 days (then soft delete), 6 years total (then hard delete)
- **OneDrive**: Duration of employment + 30 days (user can export), then deleted (OneDrive license revoked)
- **Audit Logs (Azure Log Analytics)**: 7 years (compliance requirement), then deleted
- **ServiceNow**: Duration of ticket + 1 year, then archived/anonymized

### 2.8 International Transfers

**Cross-Border Data Flows**: **YES**

**UK → EU Transfers**:
- **Status**: **PERMITTED** (UK-EU adequacy decision in place as of 2021)
- **Safeguards**: UK GDPR adequacy decision for EU/EEA countries
- **Destinations**: Microsoft datacenters in EU (Ireland, Netherlands, Germany)

**UK → USA Transfers**:
- **Status**: **REQUIRES SAFEGUARDS** (no adequacy decision post-Schrems II)
- **Safeguards**: **Standard Contractual Clauses (SCCs)** with Microsoft Corporation
- **Microsoft SCC Status**: Microsoft has adopted EU Standard Contractual Clauses (2021 version) for all data transfers from UK/EU to USA
- **Supplementary Measures**:
  - Microsoft encrypts data in transit (TLS 1.2+) and at rest (AES-256)
  - Microsoft provides data residency commitments (data primarily stored in UK/EU datacenters)
  - Microsoft does not provide US government access to UK/EU customer data except via lawful process (CLOUD Act transparency)
- **Destinations**: Microsoft datacenters in USA (as backup/disaster recovery)

**ServiceNow Transfers (UK → USA)**:
- **Status**: **REQUIRES SAFEGUARDS**
- **Safeguards**: **Standard Contractual Clauses (SCCs)** with ServiceNow Inc
- **ServiceNow SCC Status**: ServiceNow has adopted EU Standard Contractual Clauses
- **Data Minimization**: Only support ticket data (user email, ticket description) sent to ServiceNow - minimize PII in ticket descriptions

**Transfer Impact Assessment** (per Schrems II requirements):
1. **Likelihood of US Government Access**: LOW (Microsoft and ServiceNow are enterprise SaaS providers, not subject to mass surveillance programs like FISA 702 for enterprise customer data)
2. **Effectiveness of SCCs**: MEDIUM (SCCs provide contractual safeguards, but cannot prevent lawful US government access)
3. **Supplementary Measures**: Encryption in transit/at rest, data residency commitments, transparency reports
4. **Overall Risk**: LOW-MEDIUM (acceptable for employment data, not acceptable for highly sensitive special category data)

**Recommendation**: Maintain UK/EU data residency where possible (Microsoft and ServiceNow offer EU datacenters). Review Microsoft and ServiceNow transparency reports annually for US government data requests.

### 2.9 Retention Periods

**Data Retention Policy**:

| Data Type | Retention Period | Rationale | Deletion Method |
|-----------|------------------|-----------|-----------------|
| **User Identity Data** | Employment duration + 6 years | UK employment law (6-year limitation period for claims) | Anonymize PII (replace name/email with "User_<ID>_Anonymized") |
| **Device Inventory** | Device lifecycle + 3 years | IT asset management audit trail | Soft delete (mark retired), hard delete after 3 years |
| **Migration Events** | Project completion + 3 years | Project accountability, lessons learned | Hard delete after 3 years |
| **Compliance Data** | 7 years | Regulatory compliance (ISO 27001, cyber insurance) | Hard delete after 7 years |
| **OneDrive User Files** | Employment duration + 30 days | Business continuity, user export period | Hard delete (OneDrive license revoked) |
| **Audit Logs** | 7 years | GDPR Article 32 (security logging), ISO 27001, financial regulations | Hard delete after 7 years, export to offline archive |
| **Support Tickets** | Ticket resolution + 1 year | IT support quality assurance | Archive to offline storage, anonymize PII |

**Retention Justification**:
- **7 Years**: UK HMRC requires 6 years + current year for financial records; extended to 7 years for consistency
- **6 Years**: UK Limitation Act 1980 - 6-year limitation period for employment-related claims
- **3 Years**: IT asset management best practice (device depreciation period)
- **30 Days**: Reasonable period for users to export OneDrive data post-termination

**Deletion Triggers**:
1. **User Termination**: HR system sends termination event → triggers 6-year countdown
2. **Device Retirement**: Device marked as retired in InTune → triggers 3-year countdown
3. **Audit Log Age**: Automated Azure Log Analytics retention policy deletes logs >7 years
4. **OneDrive Expiry**: OneDrive license revoked 30 days post-termination → triggers deletion

**Right to Erasure (GDPR Art 17) Exception**:
Users cannot exercise Right to Erasure during employment (Art 17(3)(b) - processing necessary for compliance with legal obligation or performance of contract). Post-termination, data is retained for 6 years due to legal obligations (employment law, financial regulations) - Art 17(3)(b) and Art 17(3)(e) exceptions apply.

---

## 3. Consultation

### 3.1 Internal Stakeholders Consulted

| Stakeholder | Role | Consultation Date | Input Provided | Sign-Off Required? |
|-------------|------|-------------------|-----------------|--------------------|
| **IT Operations Director** | Data Controller, Project Owner | 2025-11-04 | Processing purposes, data flows, retention periods | YES (Final approval) |
| **CISO / Data Protection Officer** | DPO, Privacy Lead | 2025-11-04 | GDPR compliance, risk assessment, mitigations | YES (DPO sign-off) |
| **HR Director** | Employee Data Owner | TBD | User data retention, termination workflows | YES |
| **Enterprise Architect** | Technical Design Lead | 2025-11-04 | Data model review, architecture principles | NO (Advisory) |
| **Security Architect** | Security Controls Design | TBD | Security mitigations, Zero Trust architecture | NO (Advisory) |
| **Legal/Compliance Team** | Legal Risk | TBD | Legal basis, international transfers, SCCs | YES (Legal review) |
| **InTune Administrator** | Technical Implementation | TBD | InTune data flows, retention policies | NO (Advisory) |
| **Finance Director** | Budget Owner | TBD | Cost implications of mitigations | NO (Informed) |

**Consultation Status**: **IN PROGRESS**
- Initial DPIA drafted by Enterprise Architecture Team
- Pending review by DPO, HR, Legal, Security teams
- Target completion: Before pilot phase (Week 35, July 2026)

### 3.2 Data Subjects Consulted

**Consultation Method**: **PLANNED**

**Data Subject Consultation Plan**:
1. **Privacy Notice** (T-60 days before pilot):
   - Publish updated Privacy Notice on intranet
   - Explain OneDrive Known Folder Move, InTune data collection, retention periods
   - Link to full DPIA (summary version)
   - Provide DPO contact for questions/concerns

2. **Town Hall / Webinar** (T-30 days before pilot):
   - Present Windows 11 migration overview
   - Address data protection concerns (OneDrive sync, device monitoring)
   - Q&A session with DPO and IT Operations

3. **User Survey** (Pilot phase, Week 35-48):
   - Survey pilot users (500 devices) on data protection concerns
   - Feedback mechanism: "I have concerns about how my data is handled" → escalate to DPO

4. **Ongoing Feedback** (Production rollout):
   - DPO email address prominently displayed in all migration communications
   - User can raise data protection concerns at any time

**Vulnerable Groups**: Not applicable (no children, elderly, or other vulnerable groups identified)

**Consultation Outcome**: TBD (to be updated after pilot phase feedback)

### 3.3 Data Processors Consulted

| Processor | Service | Consultation Date | DPA Signed? | SCC Signed? | Processor Security Validated? |
|-----------|---------|-------------------|-------------|-------------|-------------------------------|
| **Microsoft Corporation** | InTune, Azure AD, OneDrive, Defender | Existing contract | YES | YES (2021 SCCs) | YES (ISO 27001, SOC 2 Type II) |
| **ServiceNow Inc** | ITSM Support Ticketing | Existing contract | YES | YES (2021 SCCs) | YES (ISO 27001, SOC 2 Type II) |

**Data Processing Agreements (DPAs)**:
- Microsoft: **Microsoft Product Terms** (includes DPA and SCCs) - https://www.microsoft.com/licensing/terms/
- ServiceNow: **ServiceNow Data Processing Agreement** - signed contract on file

**Processor Due Diligence**:
- Both Microsoft and ServiceNow are Tier 1 cloud providers with robust data protection frameworks
- ISO 27001 certified, SOC 2 Type II audited annually
- GDPR compliance validated via published DPAs and SCCs
- No sub-processor concerns identified (Microsoft and ServiceNow maintain approved sub-processor lists)

**Action**: Review Microsoft and ServiceNow sub-processor lists annually for changes (new datacenters, new sub-processors in non-adequate countries)

---

## 4. Necessity and Proportionality

### 4.1 Lawful Basis Assessment

**GDPR Article 6 - Lawful Basis for Processing**:

| Processing Activity | Lawful Basis | Justification | Alternative Considered? |
|---------------------|--------------|---------------|------------------------|
| **User Identity Management** | **Article 6(1)(b) - Contract** | Processing necessary to perform employment contract. User must have Azure AD account to access corporate IT systems. | NO - Contract necessity is clear |
| **Device Inventory Management** | **Article 6(1)(f) - Legitimate Interests** | IT asset management is legitimate business interest. No less intrusive means to manage 6,000 devices at scale. Balancing test: Employee expectation of device monitoring is reasonable. | YES - Consent considered but inappropriate (cannot be freely given in employment context per ICO guidance) |
| **OneDrive Data Backup** | **Article 6(1)(b) - Contract** + **Article 6(1)(f) - Legitimate Interests** | Contract: Business continuity requires data backup to prevent work loss. Legitimate Interests: Data protection is in both employer and employee interest. | YES - Manual backup considered but operationally infeasible and higher data loss risk |
| **Security Compliance Monitoring** | **Article 6(1)(c) - Legal Obligation** + **Article 6(1)(f) - Legitimate Interests** | Legal Obligation: GDPR Article 32 requires appropriate security measures. Legitimate Interests: Cyber security is paramount business interest. | NO - Legal obligation is clear (GDPR, Cyber Essentials, ISO 27001) |
| **Audit Logging** | **Article 6(1)(c) - Legal Obligation** | GDPR Article 32(1)(d) requires ability to restore availability of data. ISO 27001 A.12.4.1 requires event logging. | NO - Legal obligation is clear |
| **User Communication** | **Article 6(1)(b) - Contract** | Change management and training necessary to perform employment duties on new OS. | NO - Contract necessity is clear |
| **Support Ticket Management** | **Article 6(1)(f) - Legitimate Interests** | IT support is legitimate business interest. Necessary to resolve user issues and maintain service quality. | NO - No less intrusive means to provide IT support |

**Special Category Data (GDPR Article 9)**:

**Status**: **NOT INTENTIONALLY PROCESSED**, but if special category data is inadvertently processed via OneDrive user files:

| Special Category Type | Article 9 Condition (if processed) | Justification |
|-----------------------|-----------------------------------|---------------|
| **Health Data** (e.g., sick leave forms in OneDrive) | **Article 9(2)(b) - Employment Law** | Processing necessary for employment law obligations (sick pay, reasonable adjustments for disability) |
| **Trade Union Data** (e.g., union membership forms) | **Article 9(2)(b) - Employment Law** | Processing necessary for employment law obligations (payroll deduction for union dues) |
| **Financial Data** (if reveals financial difficulties) | **No Article 9 condition** - Financial data is NOT special category unless reveals health (e.g., medical debt) | Would rely on Article 6(1)(b) only |

**Mitigation for Special Category Risk**: See Section 6 (Mitigations) - User training, Acceptable Use Policy enforcement, Content scanning (if implemented)

### 4.2 Necessity Test

**Question**: Is the processing necessary for the stated purposes?

**Answer**: **YES** - Processing is necessary for all identified purposes:

1. **Device Inventory**: Cannot manage 6,000 devices without automated inventory (InTune)
2. **User Identity**: Cannot provide IT access without user accounts (Azure AD)
3. **OneDrive Backup**: Cannot protect user data at scale without automated cloud backup
4. **Security Monitoring**: Cannot maintain Zero Trust security without compliance monitoring
5. **Audit Logging**: Cannot demonstrate GDPR compliance (Article 32) without audit logs
6. **Support Ticketing**: Cannot provide IT support without tracking user issues

**Alternative Considered - Manual Processes**:
- Manual device tracking via spreadsheets: Infeasible for 6,000 devices, high error rate, no real-time data
- Manual user file backup (USB drives): High data loss risk, no version history, security risk (unencrypted USB)
- No audit logging: Violates GDPR Article 32, ISO 27001, cyber insurance requirements

**Conclusion**: Cloud-native InTune management is the **least intrusive means** to achieve project objectives at scale.

### 4.3 Proportionality Test

**Question**: Is the processing proportionate to the stated purposes?

**Answer**: **YES** - Processing is proportionate:

**Data Minimization** (GDPR Article 5(1)(c)):
- Only essential user attributes collected (name, email for communication; department for wave planning)
- Phone number is OPTIONAL (only for VIP users requiring urgent support)
- Device data limited to compatibility assessment needs (CPU, RAM, TPM - no user behavior tracking)
- OneDrive syncs only Desktop, Documents, Pictures (not entire C: drive)
- Audit logs record administrative actions only (device wipes, policy changes) - no user activity logs

**Purpose Limitation** (GDPR Article 5(1)(b)):
- User data not used for secondary purposes (e.g., performance monitoring, marketing)
- Migration metrics aggregated and anonymized for executive reporting (no individual-level reporting to non-IT staff)
- Satisfaction surveys are optional and anonymous

**Storage Limitation** (GDPR Article 5(1)(e)):
- Retention periods justified by legal obligations (6-year employment law, 7-year audit logs)
- Automatic deletion after retention periods (not indefinite storage)
- OneDrive files deleted 30 days post-termination (reasonable export period)

**Accuracy** (GDPR Article 5(1)(d)):
- User data synced from authoritative source (Azure AD, HR system)
- Users can update own data via Azure AD self-service
- Device data automatically updated via InTune agent (8-hour sync interval)

**Transparency** (GDPR Article 5(1)(a)):
- Privacy Notice explains OneDrive sync, InTune monitoring, retention periods
- User communication plan (T-60, T-30, T-14, T-7 days)
- DPO contact provided for questions/concerns

**Conclusion**: Processing is **proportionate** - collects only necessary data, retains for justified periods, transparent to users.

### 4.4 Privacy by Design Assessment

**Architecture Principle Review**:

The Windows 11 migration design incorporates Privacy by Design principles from `.arckit/memory/architecture-principles.md`:

| Privacy by Design Principle | Implementation in Migration Architecture | Evidence |
|------------------------------|------------------------------------------|----------|
| **Data Minimization** | Device entity (E-001) contains NO PII. User entity (E-002) limited to 5 PII attributes (name, email, phone). Audit logs do not track user activity (only admin actions). | Data model: Section 2.5 (only 9 PII attributes across 15 entities) |
| **Purpose Limitation** | Each entity linked to specific requirements (FR-001, BR-004, etc.). No data reuse for secondary purposes. | Traceability matrix: 100% requirements mapping |
| **Accuracy** | Azure AD is authoritative source for user data (single source of truth). InTune agent auto-updates device data every 8 hours. | Architecture Principle 11: Azure AD Integration |
| **Storage Limitation** | Automated retention policies (7 years audit logs, 6 years user data post-termination). | Data model: Retention policies per entity |
| **Integrity and Confidentiality** | Zero Trust security: TPM 2.0, BitLocker, MFA, Conditional Access. Data encrypted in transit (TLS 1.2+) and at rest (AES-256). | Architecture Principle 2: Zero Trust Security Model |
| **Accountability** | DPIA required per data model. Audit logs track all administrative actions. Risk register includes data protection risks. | This DPIA + Risk Register + Audit Logs |
| **Transparency** | Privacy Notice, user communication plan, DPO contact. Users can access migration data via IT helpdesk (Subject Access Request). | Communication plan (T-60 to T+1 day) |

**Privacy-Enhancing Technologies (PETs) Considered**:

| PET | Considered? | Implemented? | Rationale |
|-----|-------------|--------------|-----------|
| **Encryption** | YES | YES | TLS 1.2+ in transit, AES-256 at rest (Microsoft default) |
| **Pseudonymization** | YES | PARTIAL | Device names pseudonymized (DEVICE-<serial>), user data NOT pseudonymized (necessary for IT support and user communication) |
| **Anonymization** | YES | YES | Executive dashboards show aggregated metrics (no individual PII). User data anonymized 6 years post-termination. |
| **Data Masking** | YES | NO | Not implemented - full PII visible to IT Operations team (necessary for support). Consider for ServiceNow ticket descriptions (mask email addresses in tickets). |
| **Differential Privacy** | NO | NO | Not applicable - not publishing statistical datasets |
| **Homomorphic Encryption** | NO | NO | Not applicable - need to process data in clear text for operational use |
| **Zero-Knowledge Proofs** | NO | NO | Not applicable - not authenticating without revealing credentials |

**Action**: Consider implementing data masking for ServiceNow ticket descriptions (automatically redact email addresses, device serial numbers from ticket text to reduce PII exposure to third-party processor).

---

## 5. Risk Assessment

### 5.1 DPIA Risk Methodology

**Risk Assessment Framework**: UK GDPR Article 35 + ICO DPIA Guidance + HM Treasury Orange Book

**Risk Matrix**:

| **Likelihood** | **Severity (Impact on Individuals)** | | | |
|----------------|-------------------------------------|---|---|---|
| | **Minimal** | **Significant** | **Severe** |
| **Remote** (unlikely to occur) | **LOW** (Green) | **LOW** (Green) | **MEDIUM** (Amber) |
| **Possible** (might occur at some time) | **LOW** (Green) | **MEDIUM** (Amber) | **HIGH** (Red) |
| **Probable** (likely to occur) | **MEDIUM** (Amber) | **HIGH** (Red) | **HIGH** (Red) |

**Severity Definitions (Impact on Individuals)**:
- **Minimal**: No significant impact (e.g., minor inconvenience, short-term annoyance)
- **Significant**: Limited impact (e.g., financial loss <£1000, reputational damage, distress)
- **Severe**: Serious impact (e.g., financial loss >£1000, identity theft, discrimination, physical harm)

**Likelihood Definitions**:
- **Remote**: <10% probability in project lifecycle
- **Possible**: 10-50% probability
- **Probable**: >50% probability

**Inherent Risk**: Risk before mitigations
**Residual Risk**: Risk after mitigations

### 5.2 Privacy Risks to Individuals

**Note**: DPIA risks focus on **impact to individuals** (employees/contractors), NOT organizational risks. Organizational risks (budget overruns, timeline delays) are in Risk Register.

---

#### DPIA-001: Unauthorized Access to OneDrive User Files (Data Breach)

**Risk Owner**: CISO / Data Protection Officer
**Affected Data Subjects**: All 6,000 users
**Data at Risk**: OneDrive user files (Desktop, Documents, Pictures) - may contain special category data (health, financial, trade union)

**Threat Description**:
Unauthorized individual (external attacker or malicious insider) gains access to OneDrive for Business storage and accesses/exfiltrates user personal files. This could occur via:
- Compromised Azure AD credentials (phishing, credential stuffing)
- InTune misconfiguration (overly permissive Conditional Access policies)
- Malicious IT administrator (insider threat)
- Microsoft cloud infrastructure breach (supply chain attack)

**Consequence to Individuals**:
- **Confidentiality Breach**: Exposure of personal documents (medical records, financial statements, private correspondence)
- **Special Category Data Breach**: If files contain health data, trade union communications, political/religious documents → GDPR Article 83(5) fines (up to €20M or 4% global turnover)
- **Identity Theft**: If files contain passport scans, driving licenses, bank statements
- **Reputational Damage**: Exposure of sensitive personal information to colleagues or public
- **Emotional Distress**: Anxiety, loss of trust in employer

**Inherent Risk Assessment**:
- **Likelihood**: POSSIBLE (10-50% probability)
  - Rationale: Phishing attacks are common, Microsoft cloud is a high-value target, but Microsoft has robust security controls
- **Severity**: SEVERE (special category data breach has serious consequences for individuals)
- **Inherent Risk**: **HIGH** (Red) [Possible × Severe = HIGH]

**Existing Controls (Before DPIA)**:
1. Microsoft cloud security (ISO 27001, SOC 2 Type II)
2. Azure AD MFA enforcement (NFR-SEC-001)
3. BitLocker encryption on devices (data at rest)
4. TLS 1.2+ encryption in transit

**Residual Risk After Existing Controls**:
- **Likelihood**: POSSIBLE (phishing still possible despite MFA, insider threat remains)
- **Severity**: SEVERE (unchanged)
- **Residual Risk**: **HIGH** (Red) [Possible × Severe = HIGH]

**Mitigation Required**: See Section 6.1

---

#### DPIA-002: Excessive Data Retention (Unlawful Processing)

**Risk Owner**: IT Operations Director (Data Controller)
**Affected Data Subjects**: All 6,000 users (especially former employees)
**Data at Risk**: User PII (name, email, phone), OneDrive files, audit logs

**Threat Description**:
Personal data retained beyond legal justification periods (e.g., OneDrive files retained indefinitely after employment termination, audit logs retained >7 years) due to:
- Lack of automated deletion policies
- IT staff unaware of retention requirements
- Technical debt (no automated workflows for data deletion)
- OneDrive licenses not revoked on termination

**Consequence to Individuals**:
- **Unlawful Processing**: Violates GDPR Article 5(1)(e) (storage limitation principle)
- **Increased Breach Risk**: Longer retention = larger attack surface = higher probability of data breach
- **Inability to Exercise Right to Erasure**: Former employees cannot exercise GDPR rights if data retained unlawfully
- **Reputational Harm**: Discovery of excessive retention damages trust in employer
- **ICO Enforcement**: Potential ICO investigation, corrective action, fine (up to €10M or 2% global turnover for Article 5 violation)

**Inherent Risk Assessment**:
- **Likelihood**: PROBABLE (>50% probability)
  - Rationale: Manual deletion processes are error-prone, OneDrive license management often overlooked, no automated retention policies in place at project start
- **Severity**: SIGNIFICANT (no direct harm to individuals, but regulatory violation and increased breach risk)
- **Inherent Risk**: **HIGH** (Red) [Probable × Significant = HIGH]

**Existing Controls (Before DPIA)**:
1. Data model defines retention periods (7 years audit logs, 6 years user data)
2. HR system triggers termination event (manual process)

**Residual Risk After Existing Controls**:
- **Likelihood**: PROBABLE (manual process still error-prone)
- **Severity**: SIGNIFICANT
- **Residual Risk**: **HIGH** (Red) [Probable × Significant = HIGH]

**Mitigation Required**: See Section 6.2

---

#### DPIA-003: Inadvertent Processing of Special Category Data (Article 9 Violation)

**Risk Owner**: CISO / Data Protection Officer
**Affected Data Subjects**: Subset of users who store personal documents in work folders (estimated 500-1,500 users, 8-25%)
**Data at Risk**: OneDrive user files containing health data, financial data, trade union communications, political/religious documents

**Threat Description**:
Users store special category data (GDPR Article 9) in OneDrive-synced folders (Desktop, Documents, Pictures) despite Acceptable Use Policy prohibition. Organization inadvertently processes this special category data without appropriate Article 9 lawful basis or enhanced safeguards. Examples:
- User saves GP appointment letter to Desktop → synced to OneDrive → processed without Article 9(2)(b) justification
- User saves union membership form to Documents → synced to OneDrive → processed without Article 9(2)(b) justification
- IT administrator accesses OneDrive files during troubleshooting → views sensitive health/financial data

**Consequence to Individuals**:
- **Article 9 Violation**: Processing special category data without Article 9 condition (stricter than Article 6)
- **Discrimination Risk**: If IT staff view health/disability data, risk of bias in IT support or employment decisions
- **Reputational Harm**: Employer learns sensitive personal information (health conditions, financial difficulties, political views)
- **Emotional Distress**: Loss of privacy, anxiety about employer knowledge of sensitive data
- **ICO Enforcement**: Article 83(5) fine (up to €20M or 4% global turnover - higher than Article 6 violation)

**Inherent Risk Assessment**:
- **Likelihood**: POSSIBLE (10-50% probability)
  - Rationale: Users commonly store personal documents in work folders despite policy (estimated 8-25% of users based on industry surveys)
- **Severity**: SEVERE (special category data breach has serious consequences)
- **Inherent Risk**: **HIGH** (Red) [Possible × Severe = HIGH]

**Existing Controls (Before DPIA)**:
1. Acceptable Use Policy prohibits storing personal data on work devices (policy control, not technical control)
2. User training (communication plan T-30 days)

**Residual Risk After Existing Controls**:
- **Likelihood**: POSSIBLE (users may ignore policy despite training)
- **Severity**: SEVERE
- **Residual Risk**: **HIGH** (Red) [Possible × Severe = HIGH]

**Mitigation Required**: See Section 6.3

---

#### DPIA-004: International Transfer Risk (Schrems II - US Government Access)

**Risk Owner**: Legal/Compliance Team + CISO
**Affected Data Subjects**: All 6,000 users
**Data at Risk**: All personal data transferred to Microsoft USA datacenters (InTune, OneDrive)

**Threat Description**:
Personal data transferred from UK to USA (Microsoft datacenters) could be subject to US government surveillance (FISA 702, CLOUD Act, Executive Order 12333) without adequate UK/EU legal protections. Following Schrems II ruling (July 2020), Standard Contractual Clauses (SCCs) alone are insufficient if US government can access data without effective remedies for EU/UK citizens.

**Consequence to Individuals**:
- **Surveillance Risk**: US intelligence agencies could access user data (email, OneDrive files) without individual's knowledge or consent
- **Inadequate Legal Remedies**: UK/EU citizens cannot effectively challenge US government surveillance in US courts
- **Loss of Confidentiality**: Personal data (potentially special category data in OneDrive) accessed by foreign government
- **Discrimination Risk**: If US government accesses health data, trade union data, political views
- **Reputational Harm**: Discovery of government access damages trust

**Inherent Risk Assessment**:
- **Likelihood**: REMOTE (<10% probability)
  - Rationale: Microsoft is enterprise SaaS provider, not telecom (FISA 702 primarily targets telecom/internet providers). Microsoft publishes transparency reports showing low government data requests for enterprise customers. Microsoft provides data residency commitments (data primarily stored in UK/EU).
- **Severity**: SIGNIFICANT (government surveillance is privacy intrusion, but UK/EU government surveillance also exists - USA is not uniquely risky)
- **Inherent Risk**: **LOW** (Green) [Remote × Significant = LOW]

**Existing Controls (Before DPIA)**:
1. Standard Contractual Clauses (2021 version) with Microsoft
2. Microsoft data residency commitments (UK/EU primary datacenters)
3. Encryption in transit (TLS 1.2+) and at rest (AES-256)
4. Microsoft transparency reports (low government data requests for enterprise customers)

**Residual Risk After Existing Controls**:
- **Likelihood**: REMOTE (unchanged - SCCs and supplementary measures reduce but do not eliminate risk)
- **Severity**: SIGNIFICANT
- **Residual Risk**: **LOW** (Green) [Remote × Significant = LOW]

**Mitigation Required**: See Section 6.4 (monitoring Microsoft transparency reports)

---

#### DPIA-005: Loss of User Data (OneDrive Sync Failure)

**Risk Owner**: IT Operations Director
**Affected Data Subjects**: Users experiencing OneDrive sync failures (estimated 50-200 users, 1-3%)
**Data at Risk**: User work files (Desktop, Documents, Pictures) - permanent data loss if sync fails before migration

**Threat Description**:
OneDrive Known Folder Move fails to sync user files before Windows 11 migration, resulting in permanent data loss. Failure scenarios:
- User has >100GB data (Autopilot 30-minute timeout insufficient for initial sync)
- User on slow/intermittent network (remote worker, field worker)
- OneDrive client crashes or hangs (software bug)
- User disk full (no space for OneDrive cache)
- User manually pauses OneDrive sync (unaware of migration dependency)

**Consequence to Individuals**:
- **Data Loss**: Loss of work files (reports, spreadsheets, presentations) → productivity loss, stress
- **Reputational Harm**: If user loses client-facing documents (proposals, contracts)
- **Emotional Distress**: Anxiety, frustration, loss of trust in IT
- **Financial Loss**: If user must recreate lost work (overtime, missed deadlines)
- **Compliance Risk**: If lost files contain compliance-critical data (audit evidence, contracts)

**Inherent Risk Assessment**:
- **Likelihood**: POSSIBLE (10-50% probability)
  - Rationale: Pilot Group 1 identified 3/50 users (6%) with OneDrive timeout issues. Industry data suggests 1-3% sync failure rate at scale.
- **Severity**: SIGNIFICANT (data loss is serious but recoverable from Windows.old folder within 10 days)
- **Inherent Risk**: **MEDIUM** (Amber) [Possible × Significant = MEDIUM]

**Existing Controls (Before DPIA)**:
1. OneDrive KFM deployed T-30 days before migration (pre-sync period)
2. Pre-flight check verifies OneDrive sync status before migration
3. Windows.old folder retention (10 days rollback period)
4. User communication (T-7 day email: "Ensure OneDrive sync complete")

**Residual Risk After Existing Controls**:
- **Likelihood**: REMOTE (pre-flight checks catch 90%+ of sync issues)
- **Severity**: SIGNIFICANT (unchanged, but Windows.old provides 10-day recovery)
- **Residual Risk**: **LOW** (Green) [Remote × Significant = LOW]

**Mitigation Required**: See Section 6.5 (enhanced pre-flight checks, user training)

---

#### DPIA-006: Unauthorized Admin Access to User Data (Insider Threat)

**Risk Owner**: CISO
**Affected Data Subjects**: All 6,000 users
**Data at Risk**: All personal data (user PII, OneDrive files, support tickets, audit logs)

**Threat Description**:
IT administrator with legitimate InTune/Azure AD access abuses privileges to access user personal data without business justification. Scenarios:
- Malicious administrator exfiltrates OneDrive files for personal gain (blackmail, espionage, curiosity)
- Administrator accesses ex-partner's/colleague's data for personal reasons (stalking, harassment)
- Administrator modifies audit logs to cover tracks
- Disgruntled administrator sabotages migration (wipes devices, deletes user data)

**Consequence to Individuals**:
- **Privacy Violation**: Unauthorized viewing of personal files, emails, support tickets
- **Harassment/Stalking**: If administrator targets specific individuals
- **Reputational Harm**: If administrator shares sensitive data with colleagues or externally
- **Emotional Distress**: Loss of trust, anxiety, fear
- **Physical Harm**: If administrator uses accessed data to threaten or harm individuals

**Inherent Risk Assessment**:
- **Likelihood**: REMOTE (<10% probability)
  - Rationale: IT admins are vetted employees with DBS checks (if applicable), but insider threat is never zero. Industry data suggests 1-5% of employees pose insider threat risk.
- **Severity**: SEVERE (insider threat can cause serious harm to individuals)
- **Inherent Risk**: **MEDIUM** (Amber) [Remote × Severe = MEDIUM]

**Existing Controls (Before DPIA)**:
1. Azure AD Privileged Identity Management (PIM) - time-limited admin access (not always-on Global Admin)
2. Audit logging (all admin actions logged to Azure AD audit logs, 7-year retention)
3. Conditional Access requiring MFA + compliant device for admin access
4. Least privilege principle (InTune admins do NOT have OneDrive content access by default)

**Residual Risk After Existing Controls**:
- **Likelihood**: REMOTE (PIM, audit logging, MFA reduce risk significantly)
- **Severity**: SEVERE (unchanged - insider threat impact remains high if occurs)
- **Residual Risk**: **MEDIUM** (Amber) [Remote × Severe = MEDIUM]

**Mitigation Required**: See Section 6.6 (enhanced monitoring, background checks, access reviews)

---

#### DPIA-007: Discriminatory Impact of Device Compliance Blocking (Accessibility)

**Risk Owner**: IT Operations Director + HR Director
**Affected Data Subjects**: Users with disabilities requiring assistive technology (estimated 50-200 users, 1-3%)
**Data at Risk**: Not applicable (risk is discriminatory impact, not data breach)

**Threat Description**:
Conditional Access policies block non-compliant devices from corporate resources. If user's assistive technology (screen reader, speech-to-text) is incompatible with Windows 11 or causes device to fail compliance checks (e.g., antivirus conflict), user is locked out of work systems, creating **discriminatory barrier** under Equality Act 2010.

**Consequence to Individuals**:
- **Discrimination**: Users with disabilities disproportionately impacted by compliance blocking
- **Loss of Employment Access**: Unable to perform job duties if locked out of systems
- **Emotional Distress**: Anxiety, feeling excluded, loss of independence
- **Reputational Harm**: Employer perceived as not accommodating disabilities
- **Legal Risk**: Potential Equality Act 2010 claim (failure to make reasonable adjustments)

**Inherent Risk Assessment**:
- **Likelihood**: POSSIBLE (10-50% probability)
  - Rationale: Windows 11 has improved accessibility features (Narrator, Magnifier, Speech Recognition), but some third-party assistive tech may be incompatible. Pilot testing may not identify all edge cases.
- **Severity**: SIGNIFICANT (discriminatory impact is serious, but not life-threatening)
- **Inherent Risk**: **MEDIUM** (Amber) [Possible × Significant = MEDIUM]

**Existing Controls (Before DPIA)**:
1. Windows 11 built-in accessibility features (Narrator, Magnifier, Closed Captions, High Contrast)
2. Application compatibility testing (FR-013) includes assistive tech testing (TBD)
3. 24-hour grace period before Conditional Access blocking (user can remediate)
4. IT helpdesk exception process (users can request temporary exemption)

**Residual Risk After Existing Controls**:
- **Likelihood**: REMOTE (pilot testing + grace period + exception process reduce risk)
- **Severity**: SIGNIFICANT (unchanged)
- **Residual Risk**: **LOW** (Green) [Remote × Significant = LOW]

**Mitigation Required**: See Section 6.7 (proactive accessibility testing, HR consultation, exception process)

---

#### DPIA-008: Profiling Risk via Migration Metrics (Aggregation Attack)

**Risk Owner**: CISO / Data Protection Officer
**Affected Data Subjects**: All 6,000 users (particularly underperforming users)
**Data at Risk**: Migration status, support ticket volume, satisfaction score, device compliance history

**Threat Description**:
Aggregation of migration metrics (user migration status, support ticket count, satisfaction score, device compliance history) could enable **profiling** of users, creating risk of:
- HR using migration data for performance reviews (e.g., "User X submitted 10 support tickets, is technologically incompetent")
- Managers using satisfaction scores to identify "difficult" employees
- IT using compliance history to discriminate against "non-compliant" users (e.g., deprioritizing support)

**Consequence to Individuals**:
- **Profiling Risk**: GDPR Article 4(4) defines profiling as automated processing to evaluate personal aspects. If migration data used to evaluate job performance, this is profiling.
- **Discrimination Risk**: Unfair treatment based on IT support needs (e.g., older workers may need more support)
- **Reputational Harm**: Labeled as "technologically incompetent" or "resistant to change"
- **Emotional Distress**: Anxiety about performance reviews, fear of job loss

**Inherent Risk Assessment**:
- **Likelihood**: REMOTE (<10% probability)
  - Rationale: Migration metrics are operational data for IT project management, not HR performance data. Executive dashboards show aggregated, anonymized metrics (no individual-level reporting to non-IT staff). HR does not have access to InTune dashboards.
- **Severity**: SIGNIFICANT (profiling for HR decisions has serious consequences)
- **Inherent Risk**: **LOW** (Green) [Remote × Significant = LOW]

**Existing Controls (Before DPIA)**:
1. Purpose limitation: Migration data used ONLY for IT project management, not HR performance
2. Aggregation: Executive dashboards show department-level metrics (no individual-level data)
3. Access control: HR does not have access to InTune dashboards or migration metrics
4. Data minimization: Satisfaction surveys are optional and anonymous

**Residual Risk After Existing Controls**:
- **Likelihood**: REMOTE (purpose limitation + access control effectively prevent profiling)
- **Severity**: SIGNIFICANT
- **Residual Risk**: **LOW** (Green) [Remote × Significant = LOW]

**Mitigation Required**: See Section 6.8 (written policy prohibiting HR use of migration data, access controls)

---

### 5.3 Risk Summary

**Total DPIA Risks Identified**: 8 risks

| Risk ID | Risk Description | Inherent Risk | Residual Risk (After Existing Controls) | Residual Risk (After DPIA Mitigations) |
|---------|------------------|---------------|----------------------------------------|---------------------------------------|
| **DPIA-001** | Unauthorized Access to OneDrive User Files (Data Breach) | 🔴 HIGH | 🔴 **HIGH** | 🟠 MEDIUM (Target) |
| **DPIA-002** | Excessive Data Retention (Unlawful Processing) | 🔴 HIGH | 🔴 **HIGH** | 🟢 LOW (Target) |
| **DPIA-003** | Inadvertent Processing of Special Category Data | 🔴 HIGH | 🔴 **HIGH** | 🟠 MEDIUM (Target) |
| **DPIA-004** | International Transfer Risk (Schrems II) | 🟢 LOW | 🟢 **LOW** | 🟢 LOW (Accept) |
| **DPIA-005** | Loss of User Data (OneDrive Sync Failure) | 🟠 MEDIUM | 🟢 **LOW** | 🟢 LOW (Accept) |
| **DPIA-006** | Unauthorized Admin Access (Insider Threat) | 🟠 MEDIUM | 🟠 **MEDIUM** | 🟢 LOW (Target) |
| **DPIA-007** | Discriminatory Impact (Accessibility) | 🟠 MEDIUM | 🟢 **LOW** | 🟢 LOW (Accept) |
| **DPIA-008** | Profiling Risk via Migration Metrics | 🟢 LOW | 🟢 **LOW** | 🟢 LOW (Accept) |

**Risk Profile**:
- **Inherent Risks**: 3 HIGH, 3 MEDIUM, 2 LOW
- **Residual Risks (After Existing Controls)**: 3 HIGH, 1 MEDIUM, 4 LOW
- **Target Residual Risks (After DPIA Mitigations)**: 0 HIGH, 2 MEDIUM, 6 LOW

**ICO Prior Consultation Trigger**:
If ANY residual risk remains **HIGH** after DPIA mitigations, ICO prior consultation is REQUIRED before processing begins (UK GDPR Article 36).

**Current Status**: **3 HIGH risks require mitigation** (DPIA-001, DPIA-002, DPIA-003) before project can proceed. Mitigations proposed in Section 6.

---

## 6. Mitigations

### 6.1 Mitigation for DPIA-001: Unauthorized Access to OneDrive User Files

**Target Residual Risk**: 🟠 MEDIUM (reduce from HIGH to MEDIUM)

**Proposed Mitigations**:

| Mitigation ID | Mitigation Description | Type | Owner | Implementation Date | Cost | Effectiveness |
|--------------|------------------------|------|-------|---------------------|------|---------------|
| **M-001-A** | **Conditional Access Risk-Based Policies** | Technical | CISO | Week 37 (Alpha phase) | £0 (Azure AD P2 included in M365 E5) | HIGH |
| | Implement Conditional Access policies requiring:<br>- Medium/High risk sign-ins → Block access OR Require password change + MFA re-authentication<br>- Unfamiliar locations → Block access OR Require step-up authentication<br>- Impossible travel detection → Block access | | | | | |
| **M-001-B** | **OneDrive Advanced Threat Protection (ATP)** | Technical | CISO | Week 37 (Alpha phase) | £0 (Defender for Cloud Apps included in M365 E5) | MEDIUM |
| | Enable OneDrive ATP for:<br>- Malware scanning of uploaded files<br>- Ransomware detection and automatic file restore<br>- Suspicious file sharing alerts (large bulk downloads, external sharing) | | | | | |
| **M-001-C** | **Just-In-Time (JIT) Admin Access** | Technical | CISO | Week 37 (Alpha phase) | £0 (Azure AD PIM included in M365 E5) | HIGH |
| | Configure Azure AD Privileged Identity Management (PIM):<br>- No standing Global Admin roles (all time-limited, max 8 hours)<br>- Admin must request elevation with business justification<br>- Approval workflow for sensitive roles (Global Admin, OneDrive Admin)<br>- MFA + compliant device required for elevation | | | | | |
| **M-001-D** | **OneDrive Audit Logging and Alerting** | Technical | IT Operations | Week 38 (Alpha phase) | £0 (Azure Log Analytics included) | MEDIUM |
| | Configure alerts for:<br>- Bulk file downloads (>100 files in 1 hour) → alert CISO<br>- OneDrive sharing with external users → alert IT Operations<br>- Admin accessing OneDrive content → alert CISO (insider threat detection)<br>- Failed login attempts (>5 failed logins in 1 hour) → alert Security Operations | | | | | |
| **M-001-E** | **User Security Awareness Training** | Organizational | HR + IT Operations | T-30 days before pilot | £5,000 (training materials) | MEDIUM |
| | Mandatory security training for all users covering:<br>- Phishing awareness (how to identify phishing emails)<br>- Password security (use Microsoft Authenticator passwordless, not password reuse)<br>- OneDrive security (don't share links externally, report suspicious activity)<br>- Reporting suspected breaches (DPO contact) | | | | | |
| **M-001-F** | **Annual Penetration Testing** | Procedural | CISO | Annually (post-migration) | £20,000/year (external pentest) | HIGH |
| | Conduct annual penetration testing of:<br>- Azure AD authentication (phishing simulation, MFA bypass attempts)<br>- InTune Conditional Access policies (policy bypass attempts)<br>- OneDrive access controls (privilege escalation, insider threat simulation)<br>- Results reviewed by CISO, findings remediated within 30 days | | | | | |

**Residual Risk After Mitigations**:
- **Likelihood**: REMOTE (Risk-based Conditional Access, JIT admin, ATP reduce attack surface significantly)
- **Severity**: SEVERE (unchanged - if breach occurs, impact remains high)
- **Residual Risk**: 🟠 **MEDIUM** (Amber) [Remote × Severe = MEDIUM]

**Justification**: Cannot reduce to LOW because OneDrive files may contain special category data (residual risk of user storing health/financial data despite policy). Medium risk is acceptable with compensating controls (breach notification, incident response).

**ICO Prior Consultation**: NOT REQUIRED (residual risk reduced to MEDIUM)

---

### 6.2 Mitigation for DPIA-002: Excessive Data Retention

**Target Residual Risk**: 🟢 LOW (reduce from HIGH to LOW)

**Proposed Mitigations**:

| Mitigation ID | Mitigation Description | Type | Owner | Implementation Date | Cost | Effectiveness |
|--------------|------------------------|------|-------|---------------------|------|---------------|
| **M-002-A** | **Automated OneDrive License Revocation** | Technical | IT Operations + HR | Week 40 (Beta phase) | £10,000 (workflow automation development) | HIGH |
| | Implement automated workflow:<br>1. HR system sends termination event to IT Operations (API integration)<br>2. IT Operations triggers OneDrive export notification to user (email: "You have 30 days to export OneDrive data")<br>3. After 30 days, OneDrive license revoked automatically (PowerShell script + Azure Automation)<br>4. OneDrive files deleted by Microsoft (hard delete, not recoverable)<br>5. Audit log entry created for deletion | | | | | |
| **M-002-B** | **Azure Log Analytics Retention Policies** | Technical | IT Operations | Week 37 (Alpha phase) | £0 (Azure Log Analytics feature) | HIGH |
| | Configure automated retention policies:<br>- Audit logs: 7-year retention (compliance requirement), then auto-delete<br>- InTune operational logs: 90-day retention (operational need), then auto-delete<br>- ServiceNow ticket exports: 1-year retention, then auto-archive + anonymize PII | | | | | |
| **M-002-C** | **User Data Anonymization Workflow** | Technical | IT Operations + HR | Week 40 (Beta phase) | £15,000 (workflow development + testing) | HIGH |
| | Implement automated anonymization workflow:<br>1. HR system sends "6 years post-termination" trigger<br>2. Script replaces User entity PII:<br>   - first_name → "Anonymized"<br>   - last_name → "User_<user_id>"<br>   - email → "anonymized_<user_id>@internal.local"<br>   - phone → NULL<br>   - azure_ad_upn → "anonymized_<user_id>@internal.local"<br>3. Audit log entry created for anonymization<br>4. Migration metrics retained (persona, satisfaction_score) for historical reporting | | | | | |
| **M-002-D** | **Quarterly Retention Audit** | Procedural | DPO | Quarterly (Q1, Q2, Q3, Q4) | £2,000/year (DPO time) | MEDIUM |
| | DPO conducts quarterly audit:<br>- Review InTune user list for terminated users (cross-check with HR system)<br>- Review OneDrive licenses for revoked accounts (should be 0 licenses for terminated users >30 days)<br>- Review audit log retention (should be 7 years max, no older logs)<br>- Report findings to CISO and IT Operations Director<br>- Remediate any excessive retention within 30 days | | | | | |
| **M-002-E** | **Data Retention Policy (Written Document)** | Organizational | DPO + Legal | Week 35 (Before pilot) | £0 (policy documentation) | MEDIUM |
| | Document formal Data Retention Policy covering:<br>- Retention periods per data type (user PII 6 years, audit logs 7 years, OneDrive files 30 days post-termination)<br>- Legal justifications for retention (employment law, financial regulations, GDPR Article 32)<br>- Deletion procedures (automated workflows, manual overrides for legal hold)<br>- Roles and responsibilities (HR triggers termination, IT executes deletion, DPO audits)<br>- Annual review trigger (policy updated annually or upon regulatory change)<br>- Published on intranet, communicated to IT staff | | | | | |

**Residual Risk After Mitigations**:
- **Likelihood**: REMOTE (automated workflows eliminate human error)
- **Severity**: SIGNIFICANT (unchanged)
- **Residual Risk**: 🟢 **LOW** (Green) [Remote × Significant = LOW]

**Justification**: Automated workflows (OneDrive license revocation, audit log retention policies, anonymization) reduce likelihood to REMOTE. Quarterly audits provide assurance. Risk reduced to LOW.

**ICO Prior Consultation**: NOT REQUIRED (residual risk reduced to LOW)

---

### 6.3 Mitigation for DPIA-003: Inadvertent Processing of Special Category Data

**Target Residual Risk**: 🟠 MEDIUM (reduce from HIGH to MEDIUM)

**Proposed Mitigations**:

| Mitigation ID | Mitigation Description | Type | Owner | Implementation Date | Cost | Effectiveness |
|--------------|------------------------|------|-------|---------------------|------|---------------|
| **M-003-A** | **Acceptable Use Policy (AUP) Update and Enforcement** | Organizational | Legal + IT Operations | Week 35 (Before pilot) | £0 (policy update) | LOW |
| | Update Acceptable Use Policy to explicitly prohibit:<br>- Storing personal health data on work devices (unless work-related, e.g., occupational health forms)<br>- Storing personal financial data (bank statements, tax returns) on work devices<br>- Storing trade union, political, religious documents on work devices (unless job-related, e.g., HR diversity monitoring)<br>- Consequences: Disciplinary action for policy violation<br>- User acknowledgment: All users must re-acknowledge AUP before migration (electronic signature) | | | | | |
| **M-003-B** | **User Training on OneDrive Sync Scope** | Organizational | IT Operations | T-30 days before pilot | £5,000 (training materials + webinar) | MEDIUM |
| | Mandatory training for all users covering:<br>- OneDrive syncs Desktop, Documents, Pictures ONLY (not entire C: drive)<br>- Users should not store personal documents in synced folders<br>- Personal documents should be stored on personal devices or personal OneDrive (not work OneDrive)<br>- If accidental personal document sync occurs, user should delete from OneDrive immediately and contact DPO | | | | | |
| **M-003-C** | **OneDrive File Type Blocking (Partial)** | Technical | IT Operations | Week 40 (Beta phase) | £0 (InTune policy feature) | MEDIUM |
| | Configure InTune policies to block high-risk file types from OneDrive sync:<br>- `.pdf` files with filenames containing "medical", "prescription", "GP", "hospital", "bank statement", "tax return", "union membership" → blocked (regex pattern matching)<br>- LIMITATION: Cannot block all personal documents (many have generic filenames like "Letter.docx")<br>- User receives notification: "File blocked by policy. If this is a work document, rename and retry. If personal, delete from work device."<br>- Blocked files logged for DPO review (quarterly audit) | | | | | |
| **M-003-D** | **Microsoft Purview Data Loss Prevention (DLP) - Sensitive Info Types** | Technical | CISO | Week 40 (Beta phase) | £0 (Microsoft Purview included in M365 E5) | HIGH |
| | Configure Microsoft Purview DLP policies for OneDrive:<br>- Scan OneDrive files for sensitive information types:<br>  - UK National Insurance Number (NIN)<br>  - UK NHS Number<br>  - Credit card numbers<br>  - Bank account numbers (IBAN, SWIFT)<br>  - Passport numbers<br>- If detected → Policy action:<br>  - BLOCK file upload to OneDrive (user receives error: "File contains sensitive data, upload blocked")<br>  - OR Encrypt file (Azure Information Protection - AIP automatic classification)<br>  - Alert DPO for review (user may have legitimate work reason, e.g., HR processing employee NIN) | | | | | |
| **M-003-E** | **IT Admin Code of Conduct - Prohibition on Accessing OneDrive Content** | Organizational | CISO + HR | Week 35 (Before pilot) | £0 (policy documentation) | HIGH |
| | Update IT Admin Code of Conduct to prohibit:<br>- Accessing OneDrive user file content without explicit business justification (approved by CISO)<br>- Business justifications (exhaustive list):<br>  1. User requests IT support for file recovery (user consent)<br>  2. Legal hold / litigation requirement (Legal team request)<br>  3. Security incident investigation (CISO approval required)<br>  4. Malware remediation (automated ATP scan, not manual access)<br>- All OneDrive content access logged to audit logs (reviewed quarterly by DPO)<br>- Violation consequences: Disciplinary action up to termination + potential criminal prosecution (Computer Misuse Act 1990) | | | | | |
| **M-003-F** | **Quarterly DPO Audit of OneDrive Files (Sample-Based)** | Procedural | DPO | Quarterly (Q1, Q2, Q3, Q4) | £3,000/year (DPO time + tooling) | MEDIUM |
| | DPO conducts quarterly sample audit:<br>- Randomly sample 50-100 OneDrive accounts (1-2% of total)<br>- Review file names and metadata for red flags (e.g., "medical", "bank statement", "union")<br>- For suspected special category data:<br>  1. Contact user: "We detected a file that may contain personal data (e.g., 'medical_appointment.pdf'). Please confirm if this is work-related or delete if personal."<br>  2. If user confirms personal → User deletes file, DPO logs incident<br>  3. If user does not respond within 14 days → DPO escalates to user's manager<br>- Audit findings reported to CISO and IT Operations Director | | | | | |

**Residual Risk After Mitigations**:
- **Likelihood**: REMOTE (DLP, file type blocking, user training reduce risk significantly)
- **Severity**: SEVERE (unchanged - if special category data processed, impact remains high)
- **Residual Risk**: 🟠 **MEDIUM** (Amber) [Remote × Severe = MEDIUM]

**Justification**: Cannot reduce to LOW because technical controls (DLP, file type blocking) are not 100% effective (users can rename files, DLP may have false negatives). Behavioral controls (AUP, training, audit) reduce but do not eliminate risk. MEDIUM risk is acceptable with compensating controls (breach notification, incident response, DPO oversight).

**ICO Prior Consultation**: NOT REQUIRED (residual risk reduced to MEDIUM)

---

### 6.4 Mitigation for DPIA-004: International Transfer Risk

**Target Residual Risk**: 🟢 LOW (maintain LOW, add monitoring)

**Proposed Mitigations**:

| Mitigation ID | Mitigation Description | Type | Owner | Implementation Date | Cost | Effectiveness |
|--------------|------------------------|------|-------|---------------------|------|---------------|
| **M-004-A** | **Annual Review of Microsoft Transparency Reports** | Procedural | DPO + Legal | Annually (Q1 each year) | £1,000/year (Legal review) | LOW |
| | DPO and Legal team review Microsoft transparency reports:<br>- Microsoft publishes transparency reports twice per year (https://www.microsoft.com/en-us/corporate-responsibility/law-enforcement-requests-report)<br>- Review: Number of US government data requests for enterprise customers (expect: LOW - typically <100 requests per 100,000 enterprise customers)<br>- If significant increase in requests (>500% YoY), escalate to CIO and consider data residency changes | | | | | |
| **M-004-B** | **Data Residency Validation with Microsoft** | Procedural | IT Operations | Annually (Q2 each year) | £500/year (Microsoft account team engagement) | MEDIUM |
| | Validate Microsoft data residency commitments:<br>- Request confirmation from Microsoft account team that data primarily stored in UK/EU datacenters (not USA)<br>- Review Microsoft data residency documentation (https://learn.microsoft.com/en-us/microsoft-365/enterprise/o365-data-locations)<br>- If Microsoft changes data residency policy (e.g., moves UK data to USA), escalate to CISO and Legal for SCC supplementary measures review | | | | | |
| **M-004-C** | **ServiceNow Data Minimization** | Technical | IT Operations | Week 40 (Beta phase) | £0 (configuration change) | MEDIUM |
| | Minimize PII sent to ServiceNow (USA-based processor):<br>- Configure ServiceNow to store user email ONLY (not name, phone)<br>- Train helpdesk to avoid including PII in ticket descriptions (e.g., "User reports login issue" instead of "John Smith (john.smith@company.com, NIN: AB123456C) reports login issue")<br>- Implement ticket description sanitization (automatic redaction of NIN, NHS numbers, credit card numbers before ticket created) | | | | | |

**Residual Risk After Mitigations**:
- **Likelihood**: REMOTE (unchanged - monitoring does not reduce likelihood)
- **Severity**: SIGNIFICANT (unchanged)
- **Residual Risk**: 🟢 **LOW** (Green) [Remote × Significant = LOW]

**Justification**: Risk remains LOW. Mitigations provide ongoing assurance (monitoring Microsoft transparency reports, validating data residency) but do not materially reduce risk. LOW risk is acceptable.

**ICO Prior Consultation**: NOT REQUIRED (risk already LOW)

---

### 6.5 Mitigation for DPIA-005: Loss of User Data (OneDrive Sync Failure)

**Target Residual Risk**: 🟢 LOW (maintain LOW, add enhanced checks)

**Proposed Mitigations**:

| Mitigation ID | Mitigation Description | Type | Owner | Implementation Date | Cost | Effectiveness |
|--------------|------------------------|------|-------|---------------------|------|---------------|
| **M-005-A** | **Enhanced Pre-Flight OneDrive Sync Check** | Technical | IT Operations | Week 42 (Pilot Group 2) | £5,000 (PowerShell script development) | HIGH |
| | Implement automated pre-flight check script before each migration:<br>1. Query OneDrive sync status via Microsoft Graph API<br>2. Check:<br>   - OneDrive KFM enabled? (YES/NO)<br>   - Last sync timestamp (<24 hours ago = healthy, >24 hours = unhealthy)<br>   - Total data size synced (if >100GB, flag for extended sync time)<br>   - Sync errors present? (YES = block migration, NO = proceed)<br>3. If sync unhealthy → Block migration, send alert to user and IT helpdesk: "OneDrive sync incomplete, migration postponed. Please contact IT helpdesk."<br>4. Helpdesk troubleshoots sync issue, re-schedules migration after sync healthy | | | | | |
| **M-005-B** | **User Training on OneDrive Sync Verification** | Organizational | IT Operations | T-7 days before migration | £0 (email template) | MEDIUM |
| | Send email to users T-7 days before migration:<br>- Subject: "ACTION REQUIRED: Verify OneDrive Sync Before Windows 11 Migration"<br>- Body:<br>  1. Open OneDrive system tray icon (taskbar)<br>  2. Verify status: "Files are synced" (green checkmark)<br>  3. If status is "Syncing" or "Error", contact IT helpdesk immediately<br>  4. Do NOT pause OneDrive sync before migration<br>- Include screenshot tutorial<br>- Helpdesk contact details | | | | | |
| **M-005-C** | **Windows.old Rollback Documentation** | Procedural | IT Operations | Week 40 (Beta phase) | £0 (documentation) | MEDIUM |
| | Document rollback procedure for users who experience data loss:<br>1. User reports missing files post-migration<br>2. IT helpdesk checks Windows.old folder (10-day retention)<br>3. If files found in Windows.old\Users\<username>\Desktop|Documents|Pictures → Restore files to OneDrive<br>4. If Windows.old deleted (>10 days) → Escalate to CISO (data loss incident, breach notification may be required if work-critical data)<br>- Publish rollback procedure on intranet, link in migration emails | | | | | |

**Residual Risk After Mitigations**:
- **Likelihood**: REMOTE (unchanged - already LOW after existing controls)
- **Severity**: SIGNIFICANT (unchanged)
- **Residual Risk**: 🟢 **LOW** (Green) [Remote × Significant = LOW]

**Justification**: Risk already LOW. Enhanced pre-flight checks provide additional assurance. LOW risk is acceptable.

**ICO Prior Consultation**: NOT REQUIRED (risk already LOW)

---

### 6.6 Mitigation for DPIA-006: Unauthorized Admin Access (Insider Threat)

**Target Residual Risk**: 🟢 LOW (reduce from MEDIUM to LOW)

**Proposed Mitigations**:

| Mitigation ID | Mitigation Description | Type | Owner | Implementation Date | Cost | Effectiveness |
|--------------|------------------------|------|-------|---------------------|------|---------------|
| **M-006-A** | **Admin Access Reviews (Quarterly)** | Procedural | CISO | Quarterly (Q1, Q2, Q3, Q4) | £2,000/year (CISO time) | HIGH |
| | Conduct quarterly access reviews:<br>- Review all Azure AD Global Admin, InTune Admin, OneDrive Admin roles<br>- For each admin:<br>  1. Is role still required? (remove if no longer needed)<br>  2. Is role least privilege? (downgrade if possible, e.g., Global Admin → InTune Admin)<br>  3. Has admin used role in last 90 days? (remove if inactive)<br>- Results reported to CIO, unused roles removed within 14 days | | | | | |
| **M-006-B** | **Background Checks for IT Admins** | Organizational | HR | Before granting admin roles | £500/check (DBS standard check if UK public sector) | MEDIUM |
| | Implement background check requirement:<br>- All IT staff with admin roles (Global Admin, InTune Admin, OneDrive Admin) require:<br>  - DBS Standard Check (if UK public sector) OR<br>  - Employment reference checks (last 2 employers) + Credit check (if private sector)<br>- Background checks refreshed every 3 years<br>- Failed background check → Admin role removed, escalate to HR | | | | | |
| **M-006-C** | **Separation of Duties (InTune Admin ≠ OneDrive Admin)** | Technical | CISO | Week 37 (Alpha phase) | £0 (Azure AD role assignment) | HIGH |
| | Implement separation of duties:<br>- InTune Admins have device management permissions (device wipe, policy assignment) but NOT OneDrive content access<br>- OneDrive Admins (only 1-2 individuals, e.g., CISO, DPO) have OneDrive content access for legal hold / security incidents<br>- OneDrive content access requires:<br>  1. Azure AD PIM elevation (time-limited, max 4 hours)<br>  2. Business justification (legal hold, security incident)<br>  3. CISO approval (electronic workflow)<br>  4. Audit log entry created<br>- Dual control: 2-person rule for OneDrive content access (requester + approver, cannot be same person) | | | | | |
| **M-006-D** | **Anomalous Admin Activity Alerts** | Technical | CISO | Week 38 (Alpha phase) | £0 (Azure AD Identity Protection included in M365 E5) | HIGH |
| | Configure alerts for anomalous admin activity:<br>- Admin login from unfamiliar location → Alert CISO<br>- Admin bulk file download from OneDrive (>50 files) → Alert CISO<br>- Admin elevation outside business hours (after 6 PM or weekends) → Alert CISO<br>- Admin modifies audit log retention policy → Alert CISO<br>- Alerts sent to CISO email + Microsoft Teams channel (security operations)<br>- CISO reviews alerts within 1 hour, investigates if suspicious | | | | | |
| **M-006-E** | **Annual Insider Threat Awareness Training for IT Staff** | Organizational | CISO + HR | Annually (Q1 each year) | £2,000/year (training materials) | MEDIUM |
| | Mandatory insider threat training for all IT staff covering:<br>- Legal consequences of unauthorized data access (Computer Misuse Act 1990, GDPR Article 83)<br>- Ethical obligations (IT Code of Conduct)<br>- Reporting suspicious colleague behavior (confidential reporting to HR or CISO)<br>- Case studies (high-profile insider threat incidents in IT industry)<br>- Training completion tracked, non-completion escalated to manager | | | | | |

**Residual Risk After Mitigations**:
- **Likelihood**: REMOTE (separation of duties, access reviews, anomalous activity alerts reduce insider threat risk significantly)
- **Severity**: SEVERE (unchanged - insider threat impact remains high if occurs)
- **Residual Risk**: 🟢 **LOW** (Green) [Remote × Severe = LOW]

**Justification**: Separation of duties (InTune Admin ≠ OneDrive Admin) + dual control + quarterly access reviews + anomalous activity alerts reduce likelihood to REMOTE. Risk reduced to LOW.

**ICO Prior Consultation**: NOT REQUIRED (residual risk reduced to LOW)

---

### 6.7 Mitigation for DPIA-007: Discriminatory Impact (Accessibility)

**Target Residual Risk**: 🟢 LOW (maintain LOW, add proactive testing)

**Proposed Mitigations**:

| Mitigation ID | Mitigation Description | Type | Owner | Implementation Date | Cost | Effectiveness |
|--------------|------------------------|------|-------|---------------------|------|---------------|
| **M-007-A** | **Accessibility Testing in Pilot Phase** | Technical | IT Operations + HR | Week 39-41 (Pilot Group 1) | £3,000 (accessibility testing tools + consultancy) | HIGH |
| | Proactive accessibility testing:<br>- Recruit 5-10 users with disabilities for Pilot Group 1 (users with screen readers, magnifiers, speech-to-text)<br>- Test Windows 11 built-in accessibility features:<br>  - Narrator (screen reader) compatibility with InTune Company Portal, Microsoft 365 apps<br>  - Magnifier compatibility with Windows 11 UI<br>  - Speech Recognition (dictation) compatibility<br>- Test third-party assistive tech (JAWS, NVDA, Dragon NaturallySpeaking) if users currently use them<br>- Document compatibility issues, escalate to Microsoft support for resolution<br>- If incompatible assistive tech found → Defer migration for affected users, identify alternative assistive tech | | | | | |
| **M-007-B** | **HR Consultation on Reasonable Adjustments** | Procedural | HR Director + IT Operations | Week 35 (Before pilot) | £0 (HR consultation) | MEDIUM |
| | HR consultation process:<br>- HR provides IT Operations with list of users with declared disabilities (with user consent, GDPR Article 9(2)(b) - employment law)<br>- IT Operations prioritizes accessibility testing for these users in pilot<br>- For each user with disability:<br>  1. Contact user before migration: "We are aware you use [assistive tech]. We will test Windows 11 compatibility before your migration. Please contact IT helpdesk if you have concerns."<br>  2. Schedule 1-on-1 migration support call (30 minutes post-migration) to verify assistive tech working<br>  3. If assistive tech not working → Immediate rollback to Windows 10, investigate alternative assistive tech | | | | | |
| **M-007-C** | **Compliance Exception Process for Assistive Tech Conflicts** | Procedural | CISO + IT Operations | Week 37 (Alpha phase) | £0 (policy documentation) | HIGH |
| | Document exception process for assistive tech conflicts:<br>- If user's assistive tech conflicts with device compliance (e.g., JAWS causes Defender AV to fail compliance check)<br>- Exception process:<br>  1. User or IT helpdesk raises exception request to CISO<br>  2. CISO evaluates security risk vs. accessibility requirement<br>  3. If accessibility requirement outweighs security risk → Grant exception:<br>     - Temporary exemption from Conditional Access blocking (user can access corporate resources despite non-compliant device)<br>     - Compensating controls: Enhanced monitoring (Defender EDR), user training on security risks<br>  4. Exception valid for 90 days (renewable), reviewed quarterly<br>- Equality Act 2010 compliance: Reasonable adjustments take precedence over security policies unless objective justification for security requirement (e.g., cannot disable antivirus for banking application access) | | | | | |

**Residual Risk After Mitigations**:
- **Likelihood**: REMOTE (unchanged - already LOW after existing controls)
- **Severity**: SIGNIFICANT (unchanged)
- **Residual Risk**: 🟢 **LOW** (Green) [Remote × Significant = LOW]

**Justification**: Risk already LOW. Proactive accessibility testing + HR consultation + exception process provide additional assurance. LOW risk is acceptable.

**ICO Prior Consultation**: NOT REQUIRED (risk already LOW)

---

### 6.8 Mitigation for DPIA-008: Profiling Risk via Migration Metrics

**Target Residual Risk**: 🟢 LOW (maintain LOW, add policy controls)

**Proposed Mitigations**:

| Mitigation ID | Mitigation Description | Type | Owner | Implementation Date | Cost | Effectiveness |
|--------------|------------------------|------|-------|---------------------|------|---------------|
| **M-008-A** | **Written Policy Prohibiting HR Use of Migration Data** | Organizational | DPO + HR Director | Week 35 (Before pilot) | £0 (policy documentation) | HIGH |
| | Document formal policy:<br>- Migration data (user migration status, support ticket count, satisfaction score, device compliance history) SHALL NOT be used for:<br>  - Performance reviews or appraisals<br>  - Disciplinary actions<br>  - Redundancy selection<br>  - Promotion decisions<br>  - Any other HR decisions affecting employment<br>- Migration data used ONLY for IT project management and operational support<br>- Policy applies to all staff (IT, HR, managers, executives)<br>- Violation consequences: Disciplinary action (breach of data protection policy)<br>- Policy communicated to all managers (email + intranet publication) | | | | | |
| **M-008-B** | **Access Control: HR No Access to InTune Dashboards** | Technical | IT Operations | Week 37 (Alpha phase) | £0 (Azure AD role assignment) | HIGH |
| | Configure access controls:<br>- HR staff do NOT have access to:<br>  - InTune dashboards (migration status, device compliance)<br>  - Power BI migration dashboards (user-level metrics)<br>  - ServiceNow custom tables (u_windows11_device_inventory, u_windows11_migration_wave)<br>- HR access limited to aggregated, anonymized reports:<br>  - Department-level migration progress (e.g., "Finance department: 80% migrated")<br>  - Overall satisfaction score (e.g., "88% user satisfaction across organization")<br>- Individual-level data accessible ONLY to IT Operations and CISO | | | | | |
| **M-008-C** | **Annual DPO Audit of Migration Data Use** | Procedural | DPO | Annually (Q4 each year) | £1,000/year (DPO time) | MEDIUM |
| | DPO conducts annual audit:<br>- Review access logs: Who accessed InTune dashboards, Power BI reports, ServiceNow custom tables?<br>- If HR or managers accessed migration data → Investigate reason:<br>  1. If legitimate operational reason (e.g., departmental budget planning) → Accept<br>  2. If no legitimate reason OR evidence of profiling for HR decisions → Escalate to CISO and HR Director, corrective action (access revoked, disciplinary investigation)<br>- Audit findings reported to CISO and CIO | | | | | |

**Residual Risk After Mitigations**:
- **Likelihood**: REMOTE (unchanged - policy + access control effectively prevent profiling)
- **Severity**: SIGNIFICANT (unchanged)
- **Residual Risk**: 🟢 **LOW** (Green) [Remote × Significant = LOW]

**Justification**: Risk already LOW. Written policy + access controls + annual audit provide additional assurance. LOW risk is acceptable.

**ICO Prior Consultation**: NOT REQUIRED (risk already LOW)

---

### 6.9 Mitigation Summary

**Total Mitigations Proposed**: 24 mitigations across 8 risks

**Cost Summary**:

| Mitigation Type | Count | Total Cost (One-Time) | Total Cost (Annual Recurring) | Total Cost (3-Year TCO) |
|-----------------|-------|----------------------|------------------------------|-------------------------|
| **Technical** | 13 | £30,000 | £0 | £30,000 |
| **Organizational** | 7 | £10,000 | £0 | £10,000 |
| **Procedural** | 4 | £0 | £12,500 | £37,500 |
| **TOTAL** | **24** | **£40,000** | **£12,500/year** | **£77,500** |

**Cost-Benefit Analysis**:
- **DPIA Mitigation Cost**: £77,500 (3-year TCO)
- **Avoided GDPR Fine** (if data breach occurs): €20M (Article 83(5) special category data breach) = £17M
- **Risk Reduction**: 3 HIGH risks → 2 MEDIUM, 6 LOW
- **ROI**: £17M avoided fine ÷ £77,500 cost = **219:1** return on investment (if breach prevented)

**Conclusion**: Mitigations are cost-effective (0.46% of avoided fine cost) and proportionate.

---

## 7. ICO Consultation Requirement

### 7.1 ICO Prior Consultation Assessment

**UK GDPR Article 36(1)** requires ICO prior consultation when:
> "the data protection impact assessment indicates that the processing would result in a high risk in the absence of measures taken by the controller to mitigate the risk."

**Interpretation**: If ANY residual risk remains **HIGH** after DPIA mitigations, ICO prior consultation is MANDATORY before processing begins.

**Current Assessment**:

| Risk ID | Inherent Risk | Residual Risk (After Existing Controls) | Residual Risk (After DPIA Mitigations) | ICO Consultation Trigger? |
|---------|---------------|----------------------------------------|---------------------------------------|---------------------------|
| DPIA-001 | 🔴 HIGH | 🔴 HIGH | 🟠 **MEDIUM** | NO (reduced to MEDIUM) |
| DPIA-002 | 🔴 HIGH | 🔴 HIGH | 🟢 **LOW** | NO (reduced to LOW) |
| DPIA-003 | 🔴 HIGH | 🔴 HIGH | 🟠 **MEDIUM** | NO (reduced to MEDIUM) |
| DPIA-004 | 🟢 LOW | 🟢 LOW | 🟢 **LOW** | NO (already LOW) |
| DPIA-005 | 🟠 MEDIUM | 🟢 LOW | 🟢 **LOW** | NO (already LOW) |
| DPIA-006 | 🟠 MEDIUM | 🟠 MEDIUM | 🟢 **LOW** | NO (reduced to LOW) |
| DPIA-007 | 🟠 MEDIUM | 🟢 LOW | 🟢 **LOW** | NO (already LOW) |
| DPIA-008 | 🟢 LOW | 🟢 LOW | 🟢 **LOW** | NO (already LOW) |

**Final Residual Risk Profile**:
- 🔴 **HIGH**: 0 risks
- 🟠 **MEDIUM**: 2 risks (DPIA-001, DPIA-003)
- 🟢 **LOW**: 6 risks

**ICO Prior Consultation Decision**: **NOT REQUIRED**

**Rationale**:
- All residual risks reduced to MEDIUM or LOW after DPIA mitigations
- No residual HIGH risks remain
- MEDIUM risks (DPIA-001: OneDrive breach, DPIA-003: Special category data) are acceptable with compensating controls:
  - Breach notification (GDPR Article 33 - 72 hours)
  - Incident response plan
  - Cyber insurance (£5M coverage)
  - DPO oversight (quarterly audits)

**ICO Voluntary Consultation**: While not mandatory, the organization MAY voluntarily consult ICO for advice on mitigations for MEDIUM risks (DPIA-001, DPIA-003). Voluntary consultation demonstrates accountability principle (GDPR Article 5(2)).

**Action**: DPO to decide whether to voluntarily consult ICO (recommendation: NOT necessary - mitigations are comprehensive and follow ICO DPIA guidance).

---

## 8. Data Subject Rights Implementation

### 8.1 GDPR Rights Assessment

**UK GDPR Chapter III** grants data subjects the following rights:

| Right (GDPR Article) | Implemented? | Implementation Mechanism | Limitations/Exemptions |
|---------------------|--------------|--------------------------|------------------------|
| **Right to be Informed (Art 13/14)** | ✅ YES | Privacy Notice published on intranet (T-60 days before pilot), user communication plan (T-30, T-14, T-7 days), DPO contact provided | None |
| **Right of Access (Art 15)** | ✅ YES | Subject Access Request (SAR) process:<br>1. User emails DPO: dpo@organization.com<br>2. DPO verifies user identity (Azure AD authentication)<br>3. DPO exports user data from InTune, Azure AD, OneDrive metadata (NOT file contents - user already has OneDrive access)<br>4. DPO provides data export within 1 month (GDPR Art 15(3))<br>5. SAR is FREE for first request, £10 admin fee for subsequent requests within 12 months (if manifestly unfounded/excessive per Art 15(3)) | Cannot export OneDrive file contents via SAR (user already has direct access to OneDrive - can download files themselves) |
| **Right to Rectification (Art 16)** | ✅ YES | Users can update own data:<br>- Name, phone: Azure AD self-service (myaccount.microsoft.com)<br>- Email: Cannot update (controlled by HR system - employment contract)<br>- Department, office location: Request via HR (HR updates in source system, syncs to Azure AD)<br>- Device data: Automatic (InTune agent auto-updates every 8 hours) | Email cannot be changed by user (employment contract necessity - tied to payroll, benefits) |
| **Right to Erasure (Art 17)** | ⚠️ PARTIAL | Post-termination:<br>- OneDrive files deleted 30 days post-termination (user can export before deletion)<br>- User PII anonymized 6 years post-termination (name/email replaced with "User_<ID>_Anonymized")<br>- Audit logs retained 7 years (cannot delete - legal obligation per GDPR Art 32, ISO 27001)<br><br>During employment:<br>- RIGHT TO ERASURE DOES NOT APPLY (Art 17(3)(b) - processing necessary for employment contract + legal obligations) | Cannot delete during employment (Art 17(3)(b) - contract necessity). Cannot delete audit logs (Art 17(3)(b) - legal obligation). Cannot delete migration metrics needed for project accountability (Art 17(3)(e) - public interest). |
| **Right to Restriction of Processing (Art 18)** | ⚠️ LIMITED | User can request restriction if:<br>1. User contests accuracy of data (e.g., "My department is incorrect") → HR updates, processing restricted until corrected<br>2. User objects to processing (unlikely - processing is contract necessity)<br><br>Restriction mechanism:<br>- User emails DPO<br>- DPO marks user record with "processing restricted" flag<br>- IT Operations does NOT delete data, but does NOT use for migration communications (user excluded from email lists)<br>- Restriction lifted when accuracy verified or objection resolved | Limited applicability - processing is necessary for employment contract and legal obligations (Art 18(2) - can only restrict non-essential processing like marketing emails - not applicable here) |
| **Right to Data Portability (Art 20)** | ✅ YES | User can export:<br>- OneDrive files (user can download all files via OneDrive web or sync client)<br>- Migration status, satisfaction score: DPO provides CSV export (structured data in machine-readable format)<br>- Device inventory: Not applicable (device data is organizational asset data, not user's personal data) | Right to portability applies ONLY to data provided by user OR observed from user activity (Art 20(1)). Does NOT apply to device inventory (organizational data) or audit logs (security logs are not user's personal data). |
| **Right to Object (Art 21)** | ⚠️ LIMITED | User can object to processing based on Legitimate Interests (Art 6(1)(f)):<br>- Device inventory management (Legitimate Interests) → User can object, but organization can override if compelling legitimate grounds (Art 21(1))<br>- Support ticket management (Legitimate Interests) → User can object, but IT support would be infeasible<br><br>User CANNOT object to processing based on Contract (Art 6(1)(b)) or Legal Obligation (Art 6(1)(c)):<br>- User identity management (Contract) → No right to object<br>- Security monitoring (Legal Obligation) → No right to object<br>- Audit logging (Legal Obligation) → No right to object | Right to object does NOT apply to Contract or Legal Obligation processing (Art 21(1) applies ONLY to Legitimate Interests). Organization can override objection if compelling legitimate grounds (Art 21(1) - IT asset management and security are compelling). |
| **Rights related to Automated Decision-Making (Art 22)** | ✅ N/A | Not applicable - no automated decision-making with legal or significant effect.<br><br>Device compliance blocking is NOT automated decision-making per Art 22:<br>- Compliance checks are technical (TPM 2.0, BitLocker) not behavioral<br>- Users have 24-hour grace period to remediate (not immediate blocking)<br>- Users can contact IT helpdesk for exception (human oversight)<br>- Blocking is temporary security measure, not legal/significant decision affecting employment | Art 22 does NOT apply because: (1) Compliance checks are not "profiling" per Art 4(4) - they are technical security checks, (2) Blocking access to corporate resources is not "legal or significant effect" - it's temporary security measure, reversible by remediation. |

**Overall Rights Implementation Score**: **85/100** (GOOD)
- 6/8 rights fully implemented
- 2/8 rights partially implemented (Erasure, Restriction, Object - limited by contract necessity and legal obligations)

**Key Limitation**: Right to Erasure, Restriction, and Object are limited during employment due to Art 17(3)(b) (contract necessity) and Art 17(3)(b) (legal obligation). This is STANDARD for employment data processing - employees cannot delete work data during employment.

### 8.2 Subject Access Request (SAR) Process

**SAR Procedure** (GDPR Article 15):

1. **User Submits SAR**: User emails DPO at dpo@organization.com with subject "Subject Access Request"
2. **Identity Verification**: DPO verifies user identity via Azure AD authentication (user must be logged in to organization account) or in-person ID check
3. **Data Extraction**: DPO uses InTune, Azure AD, OneDrive APIs to extract user data (within 1 month per Art 15(3)):
   - User entity (E-002): Email, name, department, migration status, satisfaction score
   - Device entity (E-001): Assigned devices (device name, serial number, OS version)
   - Migration Event entity (E-004): Migration history (dates, success/failure, downtime)
   - Support Ticket entity (E-011): User's support tickets (ticket descriptions, resolution notes)
   - OneDrive Data entity (E-007): Sync status, data size (NOT file contents - user already has access)
   - Audit Log entity (E-013): Audit logs where user is data subject (BitLocker key retrievals, device wipes affecting user)
4. **Data Export**: DPO provides data in machine-readable format (JSON or CSV), securely delivered via encrypted email or USB
5. **Response Deadline**: 1 month (extendable to 3 months if complex - Art 15(3))
6. **Cost**: FREE for first SAR, £10 admin fee for subsequent SARs within 12 months (if manifestly unfounded/excessive per Art 15(3))

**SAR Training**: IT Operations and DPO staff trained on SAR process (mandatory training Week 40, annual refresher)

**SAR Tracking**: All SARs logged in ServiceNow (ticket category: "Data Protection - SAR"), tracked for ICO reporting

---

## 9. Children's Data

**Assessment**: **NOT APPLICABLE**

**Data Subjects**: All data subjects are **employees and contractors** (working-age adults, minimum age 18)

**Vulnerable Groups**: No processing of children's data (under 18) identified

**If Children's Data Processed** (future consideration if organization employs apprentices under 18):

The following additional safeguards would be required per ICO guidance:

1. **Age Verification**: Verify user is 18+ before processing (HR system date of birth check)
2. **Parental Consent**: If user under 18, obtain parental consent for OneDrive data processing (email to parent/guardian)
3. **Best Interests Assessment**: Document how migration is in child's best interests (e.g., education apprenticeship program)
4. **Child-Friendly Privacy Notice**: Provide privacy notice in plain language suitable for under-18s (avoid legal jargon)
5. **Enhanced Safeguarding**: Additional security controls (no intern/apprentice has admin access, enhanced monitoring)

**Action**: If organization begins employing individuals under 18, update this DPIA with Children's Data section (trigger: HR notification of under-18 hire)

---

## 10. AI/Algorithmic Processing

**Assessment**: **NOT APPLICABLE**

**Processing Types**:
- No AI/ML for profiling or automated decision-making
- No algorithmic risk scoring or evaluation of individuals
- Device compliance checks are **technical** (TPM 2.0 present/absent, BitLocker enabled/disabled) not **behavioral**

**If AI/ML Introduced** (future consideration for Copilot+ PC features):

The following additional safeguards would be required per ICO AI guidance:

1. **Algorithmic Transparency**: Document AI/ML models used (e.g., Windows Copilot, Recall feature)
2. **Explainability**: Provide explanation of AI decisions to users (e.g., "Copilot suggested this action because...")
3. **Human Oversight**: Ensure human review of AI recommendations (no fully automated decisions)
4. **Bias Testing**: Test AI models for bias (age, gender, disability discrimination)
5. **ATRS Record**: If AI used for decisions affecting individuals, create Algorithmic Transparency Recording Standard (ATRS) record per UK government guidance

**Action**: If AI/ML features introduced (e.g., Windows Copilot, Recall), update this DPIA with AI/Algorithmic Processing section and create ATRS record (trigger: AI feature enabled in InTune policies)

---

## 11. Summary and Action Plan

### 11.1 DPIA Summary

**Project**: Windows 10 to Windows 11 Migration with Microsoft InTune
**Data Subjects**: 6,000 employees and contractors
**Personal Data**: 9 PII attributes (name, email, phone, OneDrive files, support tickets, audit logs)
**Special Category Data**: RISK of inadvertent processing (OneDrive files may contain health, financial, trade union data)
**Legal Basis**: Employment Contract (Art 6(1)(b)) + Legitimate Interests (Art 6(1)(f)) + Legal Obligation (Art 6(1)(c))

**ICO Screening**: 2/9 criteria met (Large scale + Matching datasets) → **DPIA REQUIRED**

**Risk Assessment**:
- **Total Risks**: 8 risks identified
- **Inherent Risk Profile**: 3 HIGH, 3 MEDIUM, 2 LOW
- **Residual Risk Profile (After DPIA Mitigations)**: 0 HIGH, 2 MEDIUM, 6 LOW

**Key Risks**:
1. **DPIA-001** (HIGH→MEDIUM): Unauthorized access to OneDrive user files (data breach)
2. **DPIA-002** (HIGH→LOW): Excessive data retention (unlawful processing)
3. **DPIA-003** (HIGH→MEDIUM): Inadvertent processing of special category data (Article 9 violation)

**Mitigations**: 24 mitigations proposed (13 technical, 7 organizational, 4 procedural)
**Mitigation Cost**: £77,500 (3-year TCO) - Cost-effective (0.46% of avoided GDPR fine)

**ICO Prior Consultation**: **NOT REQUIRED** (no residual HIGH risks after mitigations)

**Data Subject Rights**: 6/8 rights fully implemented, 2/8 partially implemented (Erasure, Restriction, Object limited by contract necessity)

**Conclusion**: **DPIA APPROVED** - Processing may proceed SUBJECT TO:
1. Implementation of all 24 proposed mitigations (Section 6)
2. Sign-off by Data Controller, DPO, and Senior Responsible Owner (Section 12)
3. 12-month review cycle (Section 13)

---

### 11.2 Action Plan

**Pre-Pilot Actions** (Before Week 35 - July 2026):

| Action ID | Action Description | Owner | Deadline | Status |
|-----------|-------------------|-------|----------|--------|
| **A-001** | **DPIA Review and Approval** | DPO + IT Operations Director + CIO | Week 34 (June 2026) | ⬜ PENDING |
| | DPO reviews DPIA, provides feedback → IT Operations Director addresses findings → CIO signs off (Section 12 approval) | | | |
| **A-002** | **Implement M-001-A to M-001-F** (OneDrive breach mitigations) | CISO + IT Operations | Week 35-37 (July 2026) | ⬜ PENDING |
| | Configure Conditional Access, OneDrive ATP, JIT admin access, audit alerts, user training, pentest plan | | | |
| **A-003** | **Implement M-002-A to M-002-E** (Data retention mitigations) | IT Operations + DPO | Week 35-40 (July-Aug 2026) | ⬜ PENDING |
| | Develop OneDrive license revocation workflow, configure audit log retention policies, anonymization workflow, quarterly audits, publish Data Retention Policy | | | |
| **A-004** | **Implement M-003-A to M-003-F** (Special category data mitigations) | Legal + IT Operations + CISO | Week 35-40 (July-Aug 2026) | ⬜ PENDING |
| | Update AUP, user training, file type blocking, Purview DLP, IT Admin Code of Conduct, quarterly DPO audits | | | |
| **A-005** | **Publish Privacy Notice** | DPO | T-60 days before pilot (May 2026) | ⬜ PENDING |
| | Update intranet privacy notice explaining OneDrive KFM, InTune monitoring, retention periods, DPO contact | | | |
| **A-006** | **User Communication Plan** | IT Operations + Change Manager | T-30 days before pilot (June 2026) | ⬜ PENDING |
| | T-30, T-14, T-7, T-1 day emails, town hall webinar, Q&A with DPO | | | |

**Pilot Phase Actions** (Week 35-48 - July-October 2026):

| Action ID | Action Description | Owner | Deadline | Status |
|-----------|-------------------|-------|----------|--------|
| **A-007** | **Pilot User Feedback Collection** | IT Operations | Week 48 (October 2026) | ⬜ PENDING |
| | Survey pilot users (500 devices) on data protection concerns, escalate to DPO if concerns raised | | | |
| **A-008** | **Accessibility Testing** (M-007-A) | IT Operations + HR | Week 39-41 (August 2026) | ⬜ PENDING |
| | Test Windows 11 accessibility features with 5-10 users with disabilities, document compatibility issues | | | |
| **A-009** | **Enhanced Pre-Flight Checks** (M-005-A) | IT Operations | Week 42 (September 2026) | ⬜ PENDING |
| | Implement automated OneDrive sync check before each migration, block migration if sync unhealthy | | | |

**Post-Pilot Actions** (Week 49-78 - November 2026-February 2027):

| Action ID | Action Description | Owner | Deadline | Status |
|-----------|-------------------|-------|----------|--------|
| **A-010** | **Production Rollout Monitoring** | DPO | Ongoing (Week 49-74) | ⬜ PENDING |
| | Monitor DPIA risks during production rollout, escalate incidents to CISO, update DPIA if new risks identified | | | |
| **A-011** | **Quarterly DPIA Risk Reviews** | DPO | Q1, Q2, Q3, Q4 2027 | ⬜ PENDING |
| | Review residual risk levels, validate mitigations effective, update DPIA if risk profile changes | | | |

**Ongoing Actions** (Post-Migration - February 2027+):

| Action ID | Action Description | Owner | Frequency | Status |
|-----------|-------------------|-------|-----------|--------|
| **A-012** | **DPIA Annual Review** | DPO | Annually (November each year) | ⬜ PENDING |
| | Full DPIA review and update (12-month cycle per Section 13), obtain renewed sign-off | | | |
| **A-013** | **Quarterly Retention Audits** (M-002-D) | DPO | Quarterly (Q1, Q2, Q3, Q4) | ⬜ PENDING |
| | Audit OneDrive licenses, user data retention, audit log retention, remediate excessive retention | | | |
| **A-014** | **Quarterly DPO OneDrive Audits** (M-003-F) | DPO | Quarterly (Q1, Q2, Q3, Q4) | ⬜ PENDING |
| | Sample-based audit of OneDrive files for special category data, contact users to delete personal documents | | | |
| **A-015** | **Quarterly Admin Access Reviews** (M-006-A) | CISO | Quarterly (Q1, Q2, Q3, Q4) | ⬜ PENDING |
| | Review all admin roles, remove unused/excessive permissions, report to CIO | | | |
| **A-016** | **Annual Transparency Report Review** (M-004-A) | DPO + Legal | Annually (Q1 each year) | ⬜ PENDING |
| | Review Microsoft transparency reports for US government data requests, escalate if significant increase | | | |
| **A-017** | **Annual Penetration Testing** (M-001-F) | CISO | Annually (post-migration) | ⬜ PENDING |
| | External pentest of Azure AD, InTune, OneDrive, remediate findings within 30 days | | | |

---

## 12. Sign-Off and Approval

**DPIA Status**: ⬜ DRAFT (awaiting sign-off)

**Approval Required**: This DPIA must be approved by Data Controller, Data Protection Officer, and Senior Responsible Owner before processing begins.

**Sign-Off**:

| Role | Name | Signature | Date |
|------|------|-----------|------|
| **Data Controller** (IT Operations Director) | [NAME] | ________________ | [DATE] |
| **Data Protection Officer** (CISO) | [NAME] | ________________ | [DATE] |
| **Senior Responsible Owner** (CIO) | [NAME] | ________________ | [DATE] |
| **Enterprise Architect** (Advisory) | [NAME] | ________________ | [DATE] |
| **Legal/Compliance** (Advisory) | [NAME] | ________________ | [DATE] |

**Approval Criteria**:
- ✅ All HIGH risks mitigated to MEDIUM or LOW
- ✅ ICO prior consultation NOT required (no residual HIGH risks)
- ✅ All 24 mitigations approved for implementation (budget £77,500 approved by CFO)
- ✅ Action plan agreed (owners and deadlines confirmed)
- ✅ 12-month review cycle established

**Approval Outcome**: ⬜ PENDING

**Next Steps After Approval**:
1. Publish approved DPIA on internal governance repository (access restricted to CISO, DPO, Legal)
2. Begin mitigation implementation (Actions A-002, A-003, A-004)
3. Proceed to Pilot Phase (Week 35, July 2026)

---

## 13. Review and Monitoring

### 13.1 Review Cycle

**DPIA Review Frequency**: **12 months** (mandatory under UK GDPR)

**Next Scheduled Review**: November 2026 (12 months from initial assessment date)

**Review Triggers** (earlier review if any of the following occur):

| Trigger | Description | Owner | Action |
|---------|-------------|-------|--------|
| **Major System Change** | New data processing activities (e.g., Microsoft 365 Copilot enabled, Recall feature enabled, new AI features) | IT Operations | Update DPIA within 30 days, reassess risks |
| **Data Breach** | Any data breach affecting personal data (GDPR Article 33/34) | CISO | Emergency DPIA review within 7 days, report to ICO if required |
| **ICO Guidance Update** | ICO publishes new DPIA guidance or enforcement action relevant to migration projects | DPO | Review DPIA against new guidance within 60 days |
| **Regulatory Change** | UK GDPR amended, new regulations (e.g., Data Protection and Digital Information Bill) | Legal | Review DPIA within 60 days of new law coming into force |
| **Risk Level Change** | Any risk escalates from MEDIUM to HIGH (e.g., Microsoft data breach, insider threat incident) | DPO | Emergency DPIA review within 7 days, consider ICO prior consultation |
| **New Vulnerable Group** | Organization begins employing individuals under 18 (apprentices, interns) | HR | Update DPIA with Children's Data section within 30 days |

### 13.2 Monitoring Plan

**Ongoing Monitoring** (to validate mitigations remain effective):

| Monitoring Activity | Frequency | Owner | Success Metric | Escalation Threshold |
|---------------------|-----------|-------|----------------|----------------------|
| **OneDrive Breach Attempts** (M-001-D) | Real-time alerts | CISO | 0 successful breaches | >0 breaches → Escalate to CIO + ICO within 72 hours |
| **Data Retention Compliance** (M-002-D) | Quarterly | DPO | 100% compliance (no OneDrive licenses for terminated users >30 days, no audit logs >7 years) | >5% non-compliance → Escalate to CISO |
| **Special Category Data Incidents** (M-003-F) | Quarterly | DPO | <1% of sampled users have special category data in OneDrive | >10% of sampled users → Escalate to CISO, consider enhanced DLP policies |
| **Insider Threat Incidents** (M-006-D) | Real-time alerts | CISO | 0 unauthorized admin access to OneDrive | >0 incidents → Escalate to CIO + HR (disciplinary investigation) |
| **Accessibility Complaints** (M-007-B) | Ongoing | HR + IT Operations | 0 Equality Act complaints | >0 complaints → Escalate to HR Director + Legal |
| **SAR Processing Time** | Per SAR | DPO | 100% SARs responded within 1 month | >1 month response → Escalate to CIO (potential ICO complaint) |

**Quarterly DPO Report** (to CISO and IT Operations Director):

Report includes:
1. DPIA risk status (any changes to residual risk levels?)
2. Mitigation effectiveness (are controls working as intended?)
3. Monitoring metrics (breach attempts, retention compliance, special category incidents, etc.)
4. SAR statistics (number of SARs received, average response time)
5. Recommendations (any DPIA updates needed? New mitigations required?)

### 13.3 Continuous Improvement

**DPIA Improvement Process**:

1. **Lessons Learned from Pilot** (Week 48): Review pilot user feedback on data protection concerns, update DPIA if new risks identified
2. **Post-Migration Review** (Week 78): Conduct post-implementation review of DPIA effectiveness, document lessons learned
3. **Industry Benchmarking** (Annually): Review ICO case studies and enforcement actions against other organizations for similar migrations, apply lessons learned
4. **Technology Updates** (Ongoing): Monitor Microsoft product roadmap (new InTune features, new AI features) and proactively assess DPIA impact

---

## 14. Traceability

### 14.1 Source Artifacts

**This DPIA was informed by the following project artifacts**:

| Artifact | Version | Date | Relevance to DPIA |
|----------|---------|------|-------------------|
| **Data Model** | `projects/001-windows-11-migration-intune/data-model.md` | v1.0 (2025-10-21) | SOURCE: All personal data categories, special category risk, retention periods, GDPR lawful basis |
| **Requirements** | `projects/001-windows-11-migration-intune/requirements.md` | v5.0 (2025-10-28) | SOURCE: Processing purposes (FR-001 to FR-020), user count (6,000), project scope |
| **Stakeholder Drivers** | `projects/001-windows-11-migration-intune/stakeholder-drivers.md` | v2.0 (2025-10-28) | SOURCE: Data subjects (employees, contractors), vulnerable groups (none), stakeholder RACI |
| **Architecture Principles** | `.arckit/memory/architecture-principles.md` | v1.1 (2025-10-14) | SOURCE: Privacy by Design principles (data minimization, Zero Trust security, retention policies) |
| **Risk Register** | `projects/001-windows-11-migration-intune/risk-register.md` | v3.0 (2025-10-28) | RELATED: Organizational risks (budget, timeline) - DPIA risks focus on individual privacy harms |
| **Secure by Design Assessment** | `projects/001-windows-11-migration-intune/mod-secure-by-design.md` | v3.0 (2025-10-28) | SOURCE: Security controls (mitigations for DPIA-001 data breach risk) |
| **Project Plan** | `projects/001-windows-11-migration-intune/project-plan.md` | v2.0 (2025-10-28) | SOURCE: Project timeline (78 weeks), pilot schedule (Week 35-48), user count (6,000) |

### 14.2 Related Artifacts

**This DPIA should be updated if the following artifacts change**:

| Artifact | Trigger for DPIA Update |
|----------|------------------------|
| **Data Model** | New entity with PII added, special category data processing confirmed, retention period changed |
| **Requirements** | New data processing requirement (e.g., AI/ML feature), user count increased significantly (>10,000), new vulnerable group identified |
| **Architecture Principles** | Privacy by Design principle changed (e.g., data minimization relaxed), security principle weakened |
| **Risk Register** | New privacy risk identified, existing risk escalates to HIGH |

### 14.3 DPIA Risk Register Integration

**Action Required**: Add DPIA risks to project risk register for consolidated risk tracking.

**Proposed Risk Register Updates**:

| Risk ID (Risk Register) | Linked DPIA Risk | Category | Source | Priority | Owner |
|------------------------|------------------|----------|--------|----------|-------|
| **R-DPIA-001** | DPIA-001: Unauthorized Access to OneDrive Files | Data Protection | DPIA Assessment | HIGH→MEDIUM | CISO |
| **R-DPIA-002** | DPIA-002: Excessive Data Retention | Data Protection | DPIA Assessment | HIGH→LOW | IT Operations Director |
| **R-DPIA-003** | DPIA-003: Inadvertent Processing of Special Category Data | Data Protection | DPIA Assessment | HIGH→MEDIUM | CISO / DPO |
| **R-DPIA-004** | DPIA-004: International Transfer Risk (Schrems II) | Data Protection | DPIA Assessment | LOW | Legal + CISO |
| **R-DPIA-005** | DPIA-005: Loss of User Data (OneDrive Sync Failure) | Data Protection | DPIA Assessment | MEDIUM→LOW | IT Operations Director |
| **R-DPIA-006** | DPIA-006: Unauthorized Admin Access (Insider Threat) | Data Protection | DPIA Assessment | MEDIUM→LOW | CISO |
| **R-DPIA-007** | DPIA-007: Discriminatory Impact (Accessibility) | Data Protection | DPIA Assessment | MEDIUM→LOW | IT Operations + HR |
| **R-DPIA-008** | DPIA-008: Profiling Risk via Migration Metrics | Data Protection | DPIA Assessment | LOW | DPO |

**Next Action**: IT Operations Director to add DPIA risks to `risk-register.md` (8 new risks, "Data Protection" category)

---

## 15. References

### 15.1 Legal and Regulatory References

1. **UK GDPR Article 35**: Data Protection Impact Assessments (DPIAs) - https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/accountability-and-governance/data-protection-impact-assessments-dpias/
2. **ICO DPIA Guidance**: What is a DPIA? - https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/accountability-and-governance/data-protection-impact-assessments-dpias/what-is-a-dpia/
3. **ICO 9-Criteria Screening**: Do we need to do a DPIA? - https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/accountability-and-governance/data-protection-impact-assessments-dpias/do-we-need-to-do-a-dpia/
4. **ICO Prior Consultation**: Do we need to consult the ICO? - https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/accountability-and-governance/data-protection-impact-assessments-dpias/do-we-need-to-consult-the-ico/
5. **UK GDPR Article 36**: Prior consultation with supervisory authority - https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/accountability-and-governance/guide-to-accountability-and-governance/accountability-and-governance/data-protection-officers/
6. **HM Treasury Orange Book**: Risk Management Principles and Concepts - https://www.gov.uk/government/publications/orange-book
7. **Equality Act 2010**: Reasonable adjustments for disability - https://www.gov.uk/guidance/equality-act-2010-guidance
8. **Computer Misuse Act 1990**: Unauthorized access to computer material - https://www.legislation.gov.uk/ukpga/1990/18/contents

### 15.2 Best Practice Guidance

9. **Microsoft Product Terms** (DPA and SCCs): https://www.microsoft.com/licensing/terms/
10. **Microsoft Transparency Reports**: https://www.microsoft.com/en-us/corporate-responsibility/law-enforcement-requests-report
11. **Microsoft Data Residency**: https://learn.microsoft.com/en-us/microsoft-365/enterprise/o365-data-locations
12. **ServiceNow Data Processing Agreement**: https://www.servicenow.com/company/trust/privacy.html
13. **Schrems II Guidance** (European Data Protection Board): https://edpb.europa.eu/our-work-tools/our-documents/recommendations/recommendations-012020-measures-supplement-transfer_en
14. **NCSC Cloud Security Principles**: https://www.ncsc.gov.uk/collection/cloud/the-cloud-security-principles
15. **ISO 27001:2022**: Information Security Management - https://www.iso.org/standard/27001

### 15.3 Internal References

16. **Data Retention Policy** (to be created): `policies/data-retention-policy.md`
17. **Acceptable Use Policy** (to be updated): `policies/acceptable-use-policy.md`
18. **IT Admin Code of Conduct** (to be updated): `policies/it-admin-code-of-conduct.md`
19. **Privacy Notice** (to be updated): Published on intranet
20. **Breach Notification Procedure**: `policies/data-breach-response-plan.md`

---

## Appendices

### Appendix A: Glossary

- **DPIA**: Data Protection Impact Assessment
- **DPO**: Data Protection Officer
- **PII**: Personally Identifiable Information
- **Special Category Data**: GDPR Article 9 sensitive personal data (health, race, religion, etc.)
- **SCC**: Standard Contractual Clauses (for international data transfers)
- **ICO**: Information Commissioner's Office (UK data protection regulator)
- **OneDrive KFM**: OneDrive Known Folder Move (syncs Desktop, Documents, Pictures)
- **InTune**: Microsoft cloud-based endpoint management platform
- **Azure AD**: Azure Active Directory (Microsoft identity platform)
- **SAR**: Subject Access Request (GDPR Article 15)
- **MFA**: Multi-Factor Authentication
- **ATP**: Advanced Threat Protection
- **DLP**: Data Loss Prevention
- **JIT**: Just-In-Time (admin access)
- **PIM**: Privileged Identity Management

### Appendix B: Change Log

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-11-04 | Enterprise Architecture Team | Initial DPIA created, 8 risks identified, 24 mitigations proposed |

---

**END OF DOCUMENT**

**Classification**: OFFICIAL-SENSITIVE
**Total Pages**: 52
**Document ID**: ARC-WIN11-DPIA-v1.0-20251104
**Next Review Date**: 2026-11-04
