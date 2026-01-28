# Vendor Evaluation Criteria: Cloud PKI Service for Hybrid PKI Architecture

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-005-EVAL-v1.0 |
| **Document Type** | Vendor Evaluation Criteria and Scoring Framework |
| **Project** | Hybrid Public Key Infrastructure (PKI) (Project 005) |
| **Classification** | OFFICIAL-SENSITIVE |
| **Status** | DRAFT |
| **Version** | 1.0 |
| **Created Date** | 2025-11-09 |
| **Last Modified** | 2025-11-09 |
| **Review Date** | 2025-12-09 |
| **Owner** | Procurement Manager + Enterprise Security Architect |
| **Reviewed By** | [PENDING] |
| **Approved By** | [PENDING] |
| **Distribution** | Evaluation Committee, CISO, Procurement Team |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2025-11-09 | ArcKit AI | Initial creation from `/arckit.evaluate` command | [PENDING] | [PENDING] |

---

## Document Purpose

This document defines the criteria, scoring methodology, and process for evaluating **cloud PKI service vendor** proposals for the Hybrid PKI project. The organization is procuring a cloud-native Certificate Authority (CA) service to handle 80-90% of certificate issuance (approximately 20,000 certificates/year) for device authentication, user certificates, Wi-Fi 802.1X, VPN, and development/test environments.

The evaluation will select the vendor that provides the best value considering technical capability, security compliance, Azure integration quality, cost, and track record.

**Related Documents**:
- **Requirements**: `projects/005-cloud-pki/requirements.md` (ARC-005-REQ-v2.0) - 55 requirements
- **Architecture Diagrams**: `projects/005-cloud-pki/diagrams/` - C4 Container, Block, Deployment diagrams
- **Project Plan**: `projects/005-cloud-pki/project-plan.md` (ARC-005-PLAN-v1.0) - 52-week timeline

---

## 1. Evaluation Overview

### 1.1 Purpose

Select a **cloud PKI service provider** that will:
- Issue and manage 80-90% of organizational certificates (~20,000 certificates/year)
- Integrate with Azure AD, Microsoft InTune, Kubernetes cert-manager
- Provide HSM-backed Certificate Authority (FIPS 140-2 Level 3)
- Support SCEP (RFC 8894), ACME (RFC 8555), and REST API protocols
- Deliver sub-5 minute certificate issuance and sub-500ms OCSP response times
- Ensure 99.9% service availability with UK data residency
- Achieve 25% TCO reduction vs. on-premises refresh

### 1.2 Procurement Scope

**In Scope**:
- Cloud-based Certificate Authority (CA) as a service
- HSM-backed private key storage (FIPS 140-2 Level 3)
- SCEP endpoint for Microsoft InTune device enrollment
- ACME endpoint for Kubernetes cert-manager automation
- REST API for programmatic certificate lifecycle management
- OCSP responder and CRL distribution services
- Certificate inventory and reporting APIs
- Integration with Azure AD for identity attributes
- UK data residency for certificate metadata and audit logs
- Vendor-managed infrastructure (multi-region HA, DR, monitoring)
- 24/7 support with defined SLAs

**Out of Scope**:
- On-premises PKI infrastructure (managed separately)
- Certificate inventory system (organization-built)
- Unified management dashboard (organization-built)
- Public SSL/TLS certificates for external websites
- Hardware Security Module (HSM) procurement for on-premises CA

### 1.3 Vendor Landscape

**Known Qualified Vendors** (examples, not exhaustive):
- **DigiCert ONE Platform** - Enterprise PKI-as-a-Service with Azure Key Vault integration
- **Sectigo Certificate Manager** - Cloud PKI with strong ACME/Kubernetes support
- **Entrust PKI as a Service** - Enterprise PKI with government/compliance focus
- **GlobalSign Atlas** - Cloud PKI with IoT/device certificate specialization
- **Microsoft Azure Key Vault Certificate Service** - Native Azure PKI service

### 1.4 Evaluation Principles

- **Objective**: Criteria are measurable and consistently applied across all vendors
- **Transparent**: Vendors understand evaluation criteria in advance (published in RFP/SOW)
- **Fair**: All vendors evaluated against identical criteria with same information access
- **Documented**: All scores and rationale captured for auditability and appeals
- **Value-Based**: Best value for money, not necessarily lowest cost
- **Security-First**: Security and compliance are non-negotiable mandatory qualifications

### 1.5 Evaluation Team

| Name | Role | Department | Evaluation Focus | Voting |
|------|------|------------|------------------|--------|
| [TBD] | Evaluation Lead | Procurement | Process orchestration, final scoring, vendor liaison | Yes |
| [TBD] | Technical Lead | Enterprise Security Architecture | Technical solution, security architecture, requirements alignment | Yes |
| [TBD] | Cloud Architect | Enterprise Architecture | Azure integration, cloud architecture, API quality | Yes |
| [TBD] | Security Evaluator | Information Security | Security compliance, cryptography, FIPS 140-2 validation | Yes |
| [TBD] | Integration SME | Identity & Access Management | Azure AD/InTune integration, SCEP/ACME protocol compliance | Yes |
| [TBD] | Business Evaluator | Finance/Procurement | Cost evaluation, contract terms, vendor financial stability | Yes |
| [TBD] | Infrastructure SME | IT Operations | Operations, monitoring, incident response, SLA validation | Yes |
| [TBD] | Compliance Observer | GRC Team | Regulatory compliance (UK GDPR, SOC 2, ISO 27001) | No (advisory) |
| [TBD] | Legal Observer | Legal | Contract review, data residency, liability terms | No (advisory) |

**Total Voting Members**: 7

**Decision Threshold**: Majority consensus (4/7) required for final selection

### 1.6 Conflict of Interest

All evaluators must complete **Conflict of Interest Declaration Form** before accessing vendor proposals:

**Conflicts requiring recusal**:
- [ ] Personal relationships with vendor employees (friends, family, former colleagues in past 2 years)
- [ ] Financial interests in vendor companies (stock ownership >$10K, options, consulting fees)
- [ ] Prior employment with vendor within past 3 years
- [ ] Concurrent paid consulting or advisory arrangements with vendor
- [ ] Gifts or benefits received from vendor (>$50 value) within past year

**Declared conflicts**: [NONE] or [DOCUMENTED IN APPENDIX E]

---

## 2. Evaluation Process

### 2.1 Process Flow

```
1. RFP Issued to Vendors (Week 14 per project plan)
   ↓
2. Vendor Questions & Answers (Weeks 14-15)
   ↓
3. Proposals Due (Week 16)
   ↓
4. Mandatory Qualifications Check (Pass/Fail) (Week 16)
   ↓ (Qualified vendors only proceed)
5. Individual Technical Scoring - Blind to Cost (Week 17)
   ↓
6. Consensus Technical Scoring Meeting (Week 17)
   ↓
7. Shortlist Top 3 Vendors (Week 17)
   ↓
8. Cost Proposals Opened - Shortlisted Vendors Only (Week 18)
   ↓
9. Cost Scoring (Week 18)
   ↓
10. Combined Technical + Cost Scoring (Week 18)
   ↓
11. Vendor Presentations & Technical Deep-Dive (Week 18)
   ↓
12. Reference Checks (Weeks 18-19)
   ↓
13. Security/Compliance Due Diligence (Weeks 18-19)
   ↓
14. Final Scoring & Selection Decision (Week 19)
   ↓
15. Vendor Selection Gate (Project Plan Milestone) (Week 18)
   ↓
16. Contract Negotiation (Weeks 19-20)
   ↓
17. Vendor Award & Onboarding (Week 20)
```

### 2.2 Timeline

| Phase | Duration | Start | Deadline | Responsible |
|-------|----------|-------|----------|-------------|
| **RFP Development** | 2 weeks | Week 13 | Week 14 | Procurement + Architecture |
| **RFP Issued to Vendors** | - | Week 14 | Week 14 | Procurement |
| **Vendor Q&A Period** | 2 weeks | Week 14 | Week 15 | Procurement (collect), Architecture (answer) |
| **Proposals Due** | - | - | Week 16 | Vendors |
| **Mandatory Qualifications Check** | 2 days | Week 16 | Week 16 | Procurement + Security |
| **Individual Technical Scoring** | 5 days | Week 17 | Week 17 | All evaluators (independent) |
| **Consensus Scoring Meeting** | 1 day | Week 17 | Week 17 | Evaluation committee |
| **Shortlist Decision** | 1 day | Week 17 | Week 17 | Evaluation lead |
| **Cost Proposals Opened** | 1 day | Week 18 | Week 18 | Finance + Procurement |
| **Cost Scoring** | 2 days | Week 18 | Week 18 | Finance |
| **Vendor Presentations** | 3 days | Week 18 | Week 18 | Shortlisted vendors (3) |
| **Reference Checks** | 1 week | Week 18 | Week 19 | Evaluation team (parallel) |
| **Security Due Diligence** | 1 week | Week 18 | Week 19 | Security team |
| **Final Scoring & Decision** | 2 days | Week 19 | Week 19 | Evaluation committee |
| **Vendor Selection Gate** | 1 day | Week 18 | Week 18 | **PROJECT MILESTONE** |
| **Approval & Award** | 1 day | Week 19 | Week 19 | CISO + Procurement |
| **Contract Negotiation** | 2 weeks | Week 19 | Week 20 | Legal + Procurement |

**Critical Path**: Vendor selection must complete by **Week 18** to align with project plan gate.

---

## 3. Mandatory Qualifications (Pass/Fail)

Vendors must meet **ALL** mandatory qualifications to proceed to scoring. Failure on **any single item** results in immediate disqualification.

### 3.1 Mandatory Qualification Checklist

| ID | Qualification | Requirement | Pass/Fail | Verification Method | Notes |
|----|---------------|-------------|-----------|---------------------|-------|
| **MQ-1** | **FIPS 140-2 Level 3 HSM** | HSM-backed CA private keys with FIPS 140-2 Level 3 validation certificate | [ ] Pass [ ] Fail | NIST CMVP certificate verification | Reference NFR-S-001 |
| **MQ-2** | **WebTrust for CAs Audit** | Current WebTrust for Certification Authorities audit (<12 months old) | [ ] Pass [ ] Fail | WebTrust seal verification | Industry standard for CA trust |
| **MQ-3** | **ISO 27001 Certification** | ISO/IEC 27001:2022 certification for organization | [ ] Pass [ ] Fail | Certificate verification | Reference NFR-C-001 |
| **MQ-4** | **SOC 2 Type II Report** | SOC 2 Type II audit report (<12 months old) | [ ] Pass [ ] Fail | Report review by Security team | Reference NFR-C-001 |
| **MQ-5** | **SCEP Protocol Support** | RFC 8894 compliant SCEP endpoint for InTune integration | [ ] Pass [ ] Fail | Protocol documentation + demo | Reference FR-003 |
| **MQ-6** | **ACME Protocol Support** | RFC 8555 compliant ACME endpoint for Kubernetes cert-manager | [ ] Pass [ ] Fail | Protocol documentation + demo | Reference FR-004 |
| **MQ-7** | **UK Data Residency** | Certificate metadata and audit logs stored in UK data centers | [ ] Pass [ ] Fail | Data center location documentation | Reference NFR-C-002 (UK GDPR) |
| **MQ-8** | **99.9% SLA (Year 1)** | Service Level Agreement guaranteeing 99.9% uptime minimum | [ ] Pass [ ] Fail | SLA contract review | Reference NFR-A-001 |
| **MQ-9** | **Minimum 5 Years Experience** | Vendor has 5+ years operating cloud PKI services | [ ] Pass [ ] Fail | Company history verification | De-risks vendor stability |
| **MQ-10** | **Azure Integration** | Native integration with Azure AD and Azure Key Vault | [ ] Pass [ ] Fail | Integration documentation + demo | Reference FR-015, INT-001 |
| **MQ-11** | **REST API Availability** | RESTful API for programmatic certificate lifecycle management | [ ] Pass [ ] Fail | API documentation + OpenAPI spec | Reference FR-005 |
| **MQ-12** | **OCSP Responder** | OCSP responder with <1 second p95 response time guarantee | [ ] Pass [ ] Fail | SLA documentation | Reference FR-008, NFR-P-003 |
| **MQ-13** | **UK GDPR Compliance** | GDPR compliance documentation (UK GDPR Article 30 ROPA) | [ ] Pass [ ] Fail | GDPR compliance docs review | Reference NFR-C-002 |
| **MQ-14** | **Financial Stability** | Audited financial statements (past 2 years) demonstrating stability | [ ] Pass [ ] Fail | Financial statement review | De-risks vendor continuity |
| **MQ-15** | **24/7 Support** | 24/7 technical support with <1 hour response time for P1 incidents | [ ] Pass [ ] Fail | Support SLA documentation | Reference NFR-M-002 |
| **MQ-16** | **Reference Projects** | Minimum 3 reference projects of similar scope (>10K certificates/year) | [ ] Pass [ ] Fail | Reference project documentation | Proof of capability at scale |
| **MQ-17** | **Certificate Volume** | Capacity to issue 20,000+ certificates/year with room for growth | [ ] Pass [ ] Fail | Capacity documentation | Reference scale requirements |
| **MQ-18** | **Proposal Submitted On Time** | Proposal received by deadline (Week 16) | [ ] Pass [ ] Fail | Timestamp verification | Process compliance |
| **MQ-19** | **Technical Proposal Complete** | All required sections answered (no "TBD" or missing sections) | [ ] Pass [ ] Fail | Proposal completeness check | Evaluation readiness |
| **MQ-20** | **Cost Proposal Separate** | Cost proposal submitted in separate sealed envelope/document | [ ] Pass [ ] Fail | Submission format check | Blind technical evaluation |

**Disqualification Procedure**:
1. Procurement Lead reviews proposals for mandatory qualifications within 2 days of submission
2. Security Architect validates MQ-1, MQ-2, MQ-7, MQ-13 (security/compliance qualifications)
3. Any failure identified → Vendor immediately notified with specific reason
4. Vendor has **48 hours** to provide clarification if failure was due to misunderstanding (not to submit missing information)
5. Evaluation Lead makes final determination with Security Architect concurrence
6. Disqualified vendors removed from further evaluation

**Expected Outcome**: 3-5 vendors qualify (based on market landscape, expect DigiCert, Sectigo, Entrust, GlobalSign to qualify)

---

## 4. Technical Evaluation Criteria (100 Points)

Technical proposals are scored **blind to cost** to ensure unbiased evaluation based on technical merit.

**Scoring Methodology**:
- Each evaluator scores independently (no discussion until consensus meeting)
- Scores averaged across all technical evaluators (Cloud Architect, Security Architect, Integration SME, Infrastructure SME)
- Consensus meeting resolves score discrepancies >15 points
- Final technical score is committee consensus (not mathematical average)

### 4.1 Criteria Summary

| Category | Weight | Max Points | Primary Evaluator(s) | Requirement Alignment |
|----------|--------|------------|----------------------|----------------------|
| **1. Technical Solution & Architecture** | 30% | 30 | Cloud Architect, Security Architect | FR-001, NFR-S-001, NFR-P-001, NFR-A-001 |
| **2. Protocol Compliance & Integration** | 25% | 25 | Integration SME, Cloud Architect | FR-003, FR-004, FR-005, INT-001, INT-002, INT-003 |
| **3. Security, Compliance & Cryptography** | 20% | 20 | Security Architect | NFR-S-001 through NFR-S-009, NFR-C-001 through NFR-C-004 |
| **4. Performance, Availability & Scalability** | 15% | 15 | Infrastructure SME, Cloud Architect | NFR-A-001 through NFR-A-005, NFR-P-001 through NFR-P-003 |
| **5. Operations, Monitoring & Support** | 10% | 10 | Infrastructure SME | NFR-M-001, NFR-M-002, NFR-M-003 |
| **TOTAL** | **100%** | **100** | | |

---

### 4.2 Category 1: Technical Solution & Architecture (30 points)

**Purpose**: Evaluate the cloud PKI service's technical architecture, Azure integration quality, and alignment with hybrid PKI requirements.

#### Subcriteria

| Subcriterion | Points | Evaluation Questions | Requirements |
|--------------|--------|---------------------|--------------|
| **1.1 Cloud CA Architecture** | 8 | • Is the cloud CA architecture robust, scalable, and well-designed?<br>• How are CA hierarchies structured (root CA, issuing CA, intermediate CAs)?<br>• Is HSM integration secure and compliant (FIPS 140-2 Level 3)?<br>• Are private keys truly non-exportable from HSM?<br>• Is architecture multi-tenant with proper isolation? | FR-001, NFR-S-001 |
| **1.2 Azure Integration Quality** | 8 | • How native is Azure AD integration (Microsoft Graph API)?<br>• Does vendor support Azure Key Vault Managed HSM integration?<br>• How seamless is InTune SCEP profile deployment?<br>• Are Azure Monitor/Sentinel integrations available?<br>• Is Azure private endpoint connectivity supported? | FR-015, INT-001, INT-002, INT-009 |
| **1.3 API Design & Automation** | 7 | • Is REST API well-designed, RESTful, and versioned?<br>• Is OpenAPI (Swagger) documentation provided?<br>• Are authentication methods secure (OAuth 2.0, mTLS)?<br>• Is rate limiting implemented to prevent abuse?<br>• Are automation capabilities robust (bulk operations, webhooks)? | FR-005, NFR-S-002 |
| **1.4 Certificate Lifecycle Management** | 4 | • How comprehensive is automated renewal support?<br>• Is revocation immediate and reliable?<br>• Are certificate templates/profiles flexible?<br>• Is certificate inventory API rich and queryable? | FR-002, FR-006, FR-010 |
| **1.5 Data Residency & Sovereignty** | 3 | • Are UK data centers used exclusively for certificate metadata?<br>• Is HSM-backed CA operation performed in UK?<br>• Are audit logs stored in UK with no cross-border transfer?<br>• Is sub-processor list transparent (UK/EEA only)? | NFR-C-002, MQ-7 (UK GDPR) |

#### Scoring Rubric (Applied to Each Subcriterion)

| Score Range | Description | Interpretation |
|-------------|-------------|----------------|
| **90-100%** | **Excellent** | Exceeds all requirements; innovative features; demonstrates deep technical expertise; best-in-class architecture; minimal risks |
| **75-89%** | **Good** | Meets all requirements with high quality; sound architecture; some innovative features; minor concerns easily mitigated |
| **60-74%** | **Adequate** | Meets most requirements; workable architecture; standard industry practices; some concerns requiring clarification or mitigation |
| **40-59%** | **Weak** | Meets minimum requirements only; concerns about scalability or security; significant gaps requiring vendor clarification |
| **0-39%** | **Unacceptable** | Does not meet requirements; major architectural flaws; unworkable approach; high risk of project failure |

**Example Scoring**:
- Subcriterion 1.1 (8 points max): Vendor scores 85% → 0.85 × 8 = **6.8 points**

#### Scoring Worksheet

**Vendor Name**: _______________

| Subcriterion | Max Points | Score | % | Justification (Reference specific proposal sections) |
|--------------|------------|-------|---|-----------------------------------------------------|
| 1.1 Cloud CA Architecture | 8 | ___ | ___% | |
| 1.2 Azure Integration Quality | 8 | ___ | ___% | |
| 1.3 API Design & Automation | 7 | ___ | ___% | |
| 1.4 Certificate Lifecycle Mgmt | 4 | ___ | ___% | |
| 1.5 Data Residency & Sovereignty | 3 | ___ | ___% | |
| **Category 1 Total** | **30** | **___** | **___%** | |

---

### 4.3 Category 2: Protocol Compliance & Integration (25 points)

**Purpose**: Evaluate vendor's compliance with industry-standard certificate enrollment protocols and quality of integrations with Azure ecosystem.

#### Subcriteria

| Subcriterion | Points | Evaluation Questions | Requirements |
|--------------|--------|---------------------|--------------|
| **2.1 SCEP Protocol (InTune)** | 8 | • Is SCEP RFC 8894 fully compliant?<br>• How robust is Microsoft InTune integration?<br>• Does vendor provide InTune SCEP connector/profile templates?<br>• Is device identity validation secure (challenge/response)?<br>• Are device compliance checks integrated (InTune compliance status)? | FR-003, INT-002, MQ-5 |
| **2.2 ACME Protocol (Kubernetes)** | 8 | • Is ACME RFC 8555 fully compliant?<br>• Does vendor support HTTP-01 and DNS-01 challenge types?<br>• How well does cert-manager integration work?<br>• Are rate limits appropriate for production (>1000 certs/day)?<br>• Is ACME external account binding (EAB) supported for security? | FR-004, INT-003, MQ-6 |
| **2.3 REST API Completeness** | 5 | • Does REST API cover full certificate lifecycle (issue, renew, revoke, retrieve)?<br>• Is bulk certificate issuance supported via API?<br>• Are webhook notifications available for lifecycle events?<br>• Is API pagination implemented for large result sets?<br>• Is API versioning strategy clear (backward compatibility)? | FR-005, FR-010 |
| **2.4 Azure AD Integration** | 4 | • How does vendor retrieve user/device attributes from Azure AD?<br>• Is Microsoft Graph API used (not deprecated APIs)?<br>• Can certificate subject DN be dynamically populated from Azure AD?<br>• Is conditional access policy integration supported?<br>• Are Azure AD groups used for certificate authorization? | FR-015, INT-001 |

#### Scoring Worksheet

**Vendor Name**: _______________

| Subcriterion | Max Points | Score | % | Justification |
|--------------|------------|-------|---|---------------|
| 2.1 SCEP Protocol (InTune) | 8 | ___ | ___% | |
| 2.2 ACME Protocol (Kubernetes) | 8 | ___ | ___% | |
| 2.3 REST API Completeness | 5 | ___ | ___% | |
| 2.4 Azure AD Integration | 4 | ___ | ___% | |
| **Category 2 Total** | **25** | **___** | **___%** | |

---

### 4.4 Category 3: Security, Compliance & Cryptography (20 points)

**Purpose**: Evaluate vendor's security architecture, compliance certifications, and cryptographic capabilities.

#### Subcriteria

| Subcriterion | Points | Evaluation Questions | Requirements |
|--------------|--------|---------------------|--------------|
| **3.1 HSM & Key Management** | 6 | • Is HSM FIPS 140-2 Level 3 validated (NIST CMVP cert number provided)?<br>• Are CA private keys generated within HSM (never exported)?<br>• Is key ceremony process documented and audited?<br>• Are HSM backups encrypted and geographically separated?<br>• Is multi-person key access control enforced (quorum)? | NFR-S-001, MQ-1 |
| **3.2 Compliance Certifications** | 5 | • WebTrust for CAs current and unqualified?<br>• SOC 2 Type II report comprehensive (no exceptions)?<br>• ISO 27001:2022 certification scope covers PKI services?<br>• Is UK GDPR ROPA (Article 30) documentation provided?<br>• Are PCI-DSS considerations addressed (if applicable)? | NFR-C-001, NFR-C-002, MQ-2, MQ-3, MQ-4, MQ-13 |
| **3.3 Cryptographic Algorithms** | 4 | • What key algorithms are supported (RSA 2048/4096, ECDSA P-256/P-384)?<br>• What hash algorithms (SHA-256, SHA-384, SHA-512)?<br>• Is algorithm agility supported (future-proof for post-quantum)?<br>• Are deprecated algorithms disabled (MD5, SHA-1, RSA 1024)? | NFR-S-001 |
| **3.4 Security Controls** | 3 | • Is TLS 1.3 enforced for all API connections?<br>• Is multi-factor authentication (MFA) required for admin access?<br>• Are API credentials rotatable and auditable?<br>• Is zero-trust network architecture used internally? | NFR-S-007, NFR-S-003 |
| **3.5 Audit Logging** | 2 | • Are all CA operations logged immutably?<br>• Is 7-year audit log retention guaranteed?<br>• Are logs tamper-evident (blockchain, WORM storage)?<br>• Can audit logs be exported for compliance reviews? | NFR-C-003 |

#### Scoring Worksheet

**Vendor Name**: _______________

| Subcriterion | Max Points | Score | % | Justification |
|--------------|------------|-------|---|---------------|
| 3.1 HSM & Key Management | 6 | ___ | ___% | |
| 3.2 Compliance Certifications | 5 | ___ | ___% | |
| 3.3 Cryptographic Algorithms | 4 | ___ | ___% | |
| 3.4 Security Controls | 3 | ___ | ___% | |
| 3.5 Audit Logging | 2 | ___ | ___% | |
| **Category 3 Total** | **20** | **___** | **___%** | |

---

### 4.5 Category 4: Performance, Availability & Scalability (15 points)

**Purpose**: Evaluate vendor's ability to meet performance SLAs, availability targets, and scale with organizational growth.

#### Subcriteria

| Subcriterion | Points | Evaluation Questions | Requirements |
|--------------|--------|---------------------|--------------|
| **4.1 Certificate Issuance Performance** | 4 | • Is <5 minute issuance time guaranteed for SCEP/ACME (p95)?<br>• What is typical issuance time (p50, p95, p99)?<br>• Is performance degradation documented under load?<br>• Are performance SLAs backed by financial penalties? | NFR-P-001, MQ-8 |
| **4.2 OCSP Response Performance** | 4 | • Is <500ms OCSP response time guaranteed (p99)?<br>• Is OCSP responder globally distributed (GeoDNS)?<br>• What is typical OCSP response time?<br>• Is OCSP stapling supported? | NFR-P-003, FR-008, MQ-12 |
| **4.3 Service Availability & HA** | 4 | • Is 99.9% availability guaranteed Year 1 (99.99% Year 2)?<br>• Is multi-region active-active HA architecture used?<br>• What is RTO (Recovery Time Objective) for region failover?<br>• Are SLA credits provided for downtime? | NFR-A-001, MQ-8 |
| **4.4 Scalability & Capacity** | 3 | • Can vendor handle 20K certificates/year with headroom for growth?<br>• What is maximum certificate issuance rate (certs/hour)?<br>• Are there scale limits on SCEP/ACME requests?<br>• Is horizontal scaling automatic or manual? | MQ-17 |

#### Scoring Worksheet

**Vendor Name**: _______________

| Subcriterion | Max Points | Score | % | Justification |
|--------------|------------|-------|---|---------------|
| 4.1 Certificate Issuance Performance | 4 | ___ | ___% | |
| 4.2 OCSP Response Performance | 4 | ___ | ___% | |
| 4.3 Service Availability & HA | 4 | ___ | ___% | |
| 4.4 Scalability & Capacity | 3 | ___ | ___% | |
| **Category 4 Total** | **15** | **___** | **___%** | |

---

### 4.6 Category 5: Operations, Monitoring & Support (10 points)

**Purpose**: Evaluate vendor's operational maturity, monitoring capabilities, and customer support quality.

#### Subcriteria

| Subcriterion | Points | Evaluation Questions | Requirements |
|--------------|--------|---------------------|--------------|
| **5.1 Monitoring & Alerting** | 3 | • Is real-time service health dashboard provided?<br>• Are proactive alerts available for certificate expiration?<br>• Can monitoring data be exported to Azure Monitor/Sentinel?<br>• Is API for programmatic health checks available? | NFR-M-001, INT-007 |
| **5.2 Technical Support Quality** | 3 | • Is 24/7/365 support available for P1 incidents?<br>• What is response time SLA (<1 hour for P1)?<br>• Is dedicated technical account manager (TAM) included?<br>• Are support channels multi-modal (phone, email, portal, chat)? | NFR-M-002, MQ-15 |
| **5.3 Incident Management** | 2 | • Is incident response process documented and mature?<br>• What is MTTR (Mean Time To Resolution) for P1 incidents?<br>• Are post-incident reviews (PIRs) provided?<br>• Is status page available for transparency? | NFR-M-002 |
| **5.4 Change Management** | 2 | • Is change notification provided in advance (>7 days)?<br>• Are maintenance windows scheduled during off-peak hours?<br>• Is rollback capability available for failed changes?<br>• Are release notes comprehensive and timely? | NFR-M-003 |

#### Scoring Worksheet

**Vendor Name**: _______________

| Subcriterion | Max Points | Score | % | Justification |
|--------------|------------|-------|---|---------------|
| 5.1 Monitoring & Alerting | 3 | ___ | ___% | |
| 5.2 Technical Support Quality | 3 | ___ | ___% | |
| 5.3 Incident Management | 2 | ___ | ___% | |
| 5.4 Change Management | 2 | ___ | ___% | |
| **Category 5 Total** | **10** | **___** | **___%** | |

---

### 4.7 Technical Scoring Summary Template

**Vendor Name**: _______________

| Category | Max Points | Score | Percentage | Weighted Contribution |
|----------|------------|-------|------------|----------------------|
| 1. Technical Solution & Architecture | 30 | ___ | ___% | ___ × 30% = ___ |
| 2. Protocol Compliance & Integration | 25 | ___ | ___% | ___ × 25% = ___ |
| 3. Security, Compliance & Cryptography | 20 | ___ | ___% | ___ × 20% = ___ |
| 4. Performance, Availability & Scalability | 15 | ___ | ___% | ___ × 15% = ___ |
| 5. Operations, Monitoring & Support | 10 | ___ | ___% | ___ × 10% = ___ |
| **TOTAL TECHNICAL SCORE** | **100** | **___** | **___%** | |

**Minimum Technical Score Threshold**: **70/100** (vendors scoring <70 are eliminated regardless of cost)

---

## 5. Cost Evaluation

Cost proposals are opened **only for shortlisted vendors** after technical evaluation is complete (top 3 vendors by technical score who also meet 70/100 minimum threshold).

### 5.1 Cost Scoring Methodology

**Method**: **Lowest Price Technically Acceptable (LPTA)** with value adjustment

**Formula**:
```
Cost Score (out of 100) = (Lowest Total Cost / Vendor Total Cost) × 100 × Value Adjustment Factor
```

**Value Adjustment Factor**:
- Technical score 90-100: Value factor = 1.10 (10% bonus for exceptional technical quality)
- Technical score 80-89: Value factor = 1.05 (5% bonus for strong technical quality)
- Technical score 70-79: Value factor = 1.00 (no adjustment)

**Rationale**: Recognize that slightly higher cost may be justified by significantly higher technical quality.

### 5.2 Cost Components to Evaluate

| Cost Category | Description | Evaluation Criteria |
|---------------|-------------|---------------------|
| **Per-Certificate Fee** | Cost per certificate issued/renewed (volume pricing tiers) | • Competitive pricing for 20K certs/year volume<br>• Volume discount structure (how cost scales with growth)<br>• Pricing predictability (fixed vs. variable) |
| **Platform Fee** | Monthly/annual platform access fee (if applicable) | • Transparency of platform fee vs. per-cert fee split<br>• Fixed cost for budgeting stability |
| **Setup/Onboarding** | One-time implementation and onboarding costs | • Reasonableness of setup fees<br>• Included vs. billable onboarding services |
| **Support Tiers** | Cost for different support levels (basic, premium, enterprise) | • Included support level adequacy<br>• Incremental cost for enhanced support |
| **Professional Services** | Optional consulting, integration assistance, training | • Hourly/daily rates for professional services<br>• Bundled packages for migration assistance |
| **Azure Integration Costs** | Costs specific to Azure Key Vault, Azure AD, InTune integration | • No hidden fees for Azure integrations<br>• Transparent licensing/connector costs |

### 5.3 3-Year Total Cost of Ownership (TCO) Calculation

**Assumptions** (for TCO comparison):
- Year 1: 15,000 certificates issued
- Year 2: 20,000 certificates issued (target volume)
- Year 3: 25,000 certificates issued (20% growth)
- Support level: Enterprise (24/7 with <1hr P1 response)
- Professional services: 40 hours for migration assistance (Year 1 only)

**TCO Calculation Template**:

| Cost Category | Year 1 | Year 2 | Year 3 | 3-Year Total |
|---------------|--------|--------|--------|--------------|
| **Per-Certificate Fees** | 15K certs × $X | 20K certs × $X | 25K certs × $X | $XXX,XXX |
| **Platform Fee (Annual)** | $XX,XXX | $XX,XXX | $XX,XXX | $XXX,XXX |
| **Setup/Onboarding (One-Time)** | $XX,XXX | $0 | $0 | $XX,XXX |
| **Enterprise Support** | $XX,XXX | $XX,XXX | $XX,XXX | $XXX,XXX |
| **Professional Services** | 40 hrs × $XXX | $0 | $0 | $XX,XXX |
| **Azure Integration Licenses** | $XX,XXX | $XX,XXX | $XX,XXX | $XXX,XXX |
| **TOTAL (Per Vendor)** | **$XXX,XXX** | **$XXX,XXX** | **$XXX,XXX** | **$XXX,XXX** |

**Cost per Certificate (3-Year Avg)**: 3-Year Total / (15K + 20K + 25K) = **$X.XX per certificate**

### 5.4 Cost Scoring Table

| Vendor | 3-Year TCO | Cost per Cert (Avg) | Technical Score | Value Adjustment | Raw Cost Score | Adjusted Cost Score (100 max) | Rank by Cost |
|--------|-----------|---------------------|-----------------|------------------|----------------|-------------------------------|--------------|
| Vendor A | $XXX,XXX | $X.XX | 85/100 | 1.05 | XXX | ___ | |
| Vendor B | $XXX,XXX | $X.XX | 78/100 | 1.00 | XXX | ___ | |
| Vendor C | $XXX,XXX | $X.XX | 92/100 | 1.10 | XXX | ___ | |

**Lowest TCO Vendor**: _____________ = $XXX,XXX (receives base cost score of 100 before value adjustment)

**Example Calculation**:
- Vendor A: TCO = $350K, Technical Score = 85 (Value factor 1.05)
- Vendor B: TCO = $300K (lowest), Technical Score = 78 (Value factor 1.00)
- Vendor C: TCO = $380K, Technical Score = 92 (Value factor 1.10)

Vendor A Cost Score = ($300K / $350K) × 100 × 1.05 = **90.0**
Vendor B Cost Score = ($300K / $300K) × 100 × 1.00 = **100.0**
Vendor C Cost Score = ($300K / $380K) × 100 × 1.10 = **86.8**

### 5.5 Budget Alignment Check

**Approved Budget** (from Project Plan): £1,275,000 (3-year total for entire Hybrid PKI project)

**Cloud PKI Allocation**: £184,200 (3-year, per cloud deployment diagram cost analysis)

**Budget per Certificate**: £184,200 / 60,000 certs (3-year) = **£3.07 per certificate**

**Pass/Fail Check**: Vendor TCO must be ≤ £184,200 to be considered (budget constraint)

---

## 6. Combined Scoring & Final Selection

### 6.1 Final Scoring Formula

**Final Score (100 max) = (Technical Score × 0.70) + (Cost Score × 0.30)**

**Weighting Rationale**:
- **70% Technical, 30% Cost**: PKI is security-critical infrastructure; technical quality and compliance are paramount
- Cost is secondary but meaningful factor (avoid overpaying for commodity features)

**Alternative Weighting** (if approved by CISO):
- **80% Technical, 20% Cost**: If security/compliance concerns are exceptionally high
- **60% Technical, 40% Cost**: If budget constraints are severe

### 6.2 Combined Scoring Summary

| Vendor | Technical Score (100) | Technical Weighted (70%) | Cost Score (100) | Cost Weighted (30%) | **Final Score (100)** | **Rank** |
|--------|-----------------------|--------------------------|------------------|---------------------|-----------------------|----------|
| Vendor A | 85 | 85 × 0.70 = 59.5 | 90 | 90 × 0.30 = 27.0 | **86.5** | |
| Vendor B | 78 | 78 × 0.70 = 54.6 | 100 | 100 × 0.30 = 30.0 | **84.6** | |
| Vendor C | 92 | 92 × 0.70 = 64.4 | 87 | 87 × 0.30 = 26.1 | **90.5** | 1 |

**Example Outcome**: Vendor C has highest final score (90.5) despite not being lowest cost, due to exceptional technical quality (92/100).

### 6.3 Selection Decision Criteria

**Primary Criterion**: Highest final score

**Secondary Considerations** (tie-breakers):
1. Reference check results (highly positive > positive > mixed)
2. Azure integration maturity (native integration preferred)
3. UK market presence and support infrastructure
4. Strategic partnership potential (vendor's product roadmap alignment)
5. Cultural fit and communication quality during presentations

**Disqualification Triggers** (even for highest scoring vendor):
- Technical score <70/100 (minimum threshold)
- 3-Year TCO exceeds budget (£184,200)
- Negative reference checks (would not rehire)
- Material misrepresentation discovered during due diligence
- Failed security/compliance due diligence (e.g., FIPS cert expired, WebTrust lapsed)

---

## 7. Vendor Presentations & Technical Deep-Dive

### 7.1 Presentation Format

**Audience**: Full evaluation committee + key stakeholders (CISO, Infrastructure Manager, IAM Manager)

**Duration**: 3 hours per vendor
- Vendor presentation: 90 minutes
- Technical deep-dive demo: 45 minutes
- Q&A: 45 minutes

**Presentation Content Required**:

1. **Company Overview** (10 min)
   - Company history, financial stability, customer base
   - Cloud PKI service evolution and roadmap

2. **Solution Architecture** (30 min)
   - Cloud CA architecture (HSM, HA, DR)
   - Azure integration architecture
   - Security controls and compliance framework

3. **Protocol Demonstrations** (45 min - **LIVE DEMO REQUIRED**)
   - **SCEP Demo**: InTune device enrollment with certificate issuance (<5 min)
   - **ACME Demo**: Kubernetes cert-manager certificate request and renewal
   - **REST API Demo**: Certificate lifecycle via API (issue, retrieve, revoke)
   - **OCSP Demo**: Real-time revocation status check (<500ms)
   - **Azure AD Integration Demo**: Certificate subject DN populated from Azure AD attributes

4. **Operational Excellence** (20 min)
   - Monitoring dashboard walkthrough
   - Incident management case study (real example)
   - Support model and escalation paths

5. **Migration Approach** (15 min)
   - Onboarding timeline and methodology
   - Migration from legacy on-premises CA (certificate re-issuance strategy)
   - Risk mitigation during migration

6. **Q&A** (45 min)
   - Evaluation committee asks clarifying questions
   - Focus on concerns identified during proposal review

### 7.2 Presentation Evaluation Criteria

Presentations are **NOT separately scored** but may **adjust existing scores** based on:

**Positive Adjustments** (+5 to +10 points to relevant subcriteria):
- Live demo successfully demonstrates claimed capabilities (SCEP/ACME/API work flawlessly)
- Vendor provides clear, confident answers to technical questions
- Vendor identifies and addresses concerns proactively
- Technical depth exceeds expectations
- Strong team chemistry and communication effectiveness

**Negative Adjustments** (-5 to -15 points to relevant subcriteria):
- Live demo fails or reveals undocumented limitations
- Vendor unable to answer basic technical questions
- Vendor deflects or provides evasive answers
- Red flags discovered (e.g., SCEP implementation doesn't support InTune-specific features)
- Poor communication or unprofessional conduct

**Post-Presentation Actions**:
1. Evaluation committee convenes within 24 hours of final presentation
2. Discuss each vendor's strengths, weaknesses, and presentation performance
3. Adjust technical scores if significant new information emerged (requires consensus)
4. Document adjusted scores with detailed rationale
5. Proceed to reference checks for all shortlisted vendors

---

## 8. Reference Checks

### 8.1 Reference Check Process

**Scope**: Contact **all provided references** (minimum 3 per vendor, target 5)

**Timing**: Week 18-19 (parallel with vendor presentations)

**Responsibility**: Evaluation team members divide reference checks (2 references per team member)

### 8.2 Reference Project Selection Criteria

Ideal reference projects demonstrate:
- Similar scale (>10,000 certificates/year)
- Similar use cases (device authentication, user certs, VPN/Wi-Fi)
- Azure/Microsoft ecosystem integration
- Completed within past 3 years (recent, relevant technology)
- Reference willing to speak candidly (not vendor-scripted)

### 8.3 Reference Check Template

**Reference Information**:
- **Client Organization**: _______________
- **Contact Name**: _______________
- **Contact Title/Role**: _______________
- **Contact Email/Phone**: _______________
- **Project Name**: _______________
- **Project Timeframe**: _______________ to _______________
- **Certificate Volume**: _______________ certificates/year
- **Use Cases**: Device auth, user certs, VPN/Wi-Fi, code signing, etc.

**Questions**:

**1. Project Scope**: Can you describe the cloud PKI project [Vendor] delivered for you?
   - **Notes**: _______________

**2. Similar to Our Project**: How similar was your project to ours (device auth, Azure integration, 20K certs/year)?
   - [ ] Very similar (90%+ overlap)
   - [ ] Somewhat similar (50-90% overlap)
   - [ ] Somewhat different (<50% overlap)
   - **Notes**: _______________

**3. On-Time Delivery**: Was the project delivered on schedule? If not, what caused delays?
   - [ ] On time (within 10% of planned timeline)
   - [ ] Minor delays (10-25% over timeline)
   - [ ] Significant delays (>25% over timeline)
   - **Notes**: _______________

**4. On-Budget Delivery**: Was the project delivered within budget? Were there change orders or cost overruns?
   - [ ] On budget (within 5% of estimate)
   - [ ] Minor overruns (5-15% over estimate)
   - [ ] Significant overruns (>15% over estimate)
   - **Notes**: _______________

**5. Technical Quality**: Did the solution meet your technical requirements? Were there gaps or issues?
   - [ ] Exceeded expectations (better than promised)
   - [ ] Met expectations (delivered as promised)
   - [ ] Partially met expectations (some gaps or workarounds required)
   - [ ] Below expectations (significant issues)
   - **Notes**: _______________

**6. SCEP/InTune Integration**: How well did the SCEP/InTune integration work for device enrollment?
   - [ ] Excellent (seamless, reliable)
   - [ ] Good (worked with minor tuning)
   - [ ] Adequate (required significant troubleshooting)
   - [ ] Poor (did not work as expected)
   - [ ] N/A (did not use SCEP/InTune)
   - **Notes**: _______________

**7. Performance**: Did the vendor meet performance SLAs (certificate issuance time, OCSP response time)?
   - [ ] Exceeded SLAs consistently
   - [ ] Met SLAs consistently
   - [ ] Met SLAs most of the time (occasional breaches)
   - [ ] Frequently missed SLAs
   - **Notes**: _______________

**8. Availability/Reliability**: How reliable was the cloud PKI service? Were there outages?
   - [ ] No unplanned outages (99.99%+ uptime)
   - [ ] Rare outages (99.9%+ uptime)
   - [ ] Occasional outages (99%+ uptime)
   - [ ] Frequent outages (<99% uptime)
   - **Notes**: _______________

**9. Technical Support Quality**: How responsive and helpful was the vendor's technical support team?
   - [ ] Excellent (proactive, fast response, high expertise)
   - [ ] Good (responsive, knowledgeable)
   - [ ] Adequate (slow response but eventually helpful)
   - [ ] Poor (unresponsive or unhelpful)
   - **Notes**: _______________

**10. Issue Resolution**: When problems occurred, how effectively did the vendor resolve them?
   - [ ] Very effectively (root cause analysis, permanent fixes, proactive communication)
   - [ ] Effectively (issues resolved in reasonable time)
   - [ ] Slowly (issues eventually resolved but took too long)
   - [ ] Poorly (issues unresolved or recurring)
   - **Notes**: _______________

**11. Security Incidents**: Were there any security incidents or compliance issues with the cloud PKI service?
   - [ ] No incidents
   - [ ] Minor incidents (quickly resolved, no impact)
   - [ ] Moderate incidents (some impact, vendor handled well)
   - [ ] Major incidents (significant impact, poor vendor response)
   - **Notes**: _______________

**12. Post-Go-Live Support**: How has the vendor's support been during the operational phase (post-go-live)?
   - [ ] Excellent (proactive monitoring, regular check-ins, continuous improvement)
   - [ ] Good (responsive when issues arise)
   - [ ] Adequate (reactive support only)
   - [ ] Poor (unresponsive or unhelpful)
   - [ ] N/A (too early in project lifecycle)
   - **Notes**: _______________

**13. Would You Hire Again?**: Would you engage this vendor for another PKI project or recommend them to peers?
   - [ ] Definitely yes (enthusiastic endorsement)
   - [ ] Probably yes (satisfied, would consider again)
   - [ ] Maybe (mixed experience, depends on project)
   - [ ] Probably not (concerns outweigh benefits)
   - [ ] Definitely not (would not recommend)
   - **Notes**: _______________

**14. Strengths**: What were the vendor's greatest strengths during and after the project?
   - **Notes**: _______________

**15. Weaknesses**: What were the vendor's weaknesses or areas for improvement?
   - **Notes**: _______________

**16. Anything Else**: Is there anything else we should know about working with this vendor?
   - **Notes**: _______________

### 8.4 Reference Check Scoring

**Reference Check Summary Rating** (per reference):

| Rating | Criteria | Impact on Vendor Evaluation |
|--------|----------|----------------------------|
| **Highly Positive** | • Enthusiastic endorsement ("definitely would hire again")<br>• Project exceeded expectations<br>• On time, on budget, high quality<br>• Excellent support and partnership | **No score adjustment** (validates high scores) |
| **Positive** | • Satisfied customer ("probably would hire again")<br>• Project met expectations<br>• Minor delays/overruns but acceptable<br>• Good support | **No score adjustment** (validates scores) |
| **Mixed** | • Some concerns but overall acceptable ("maybe would hire again")<br>• Project partially met expectations<br>• Moderate delays/overruns or quality issues<br>• Support adequate but not proactive | **Warning flag**: Re-review technical scores for relevant categories. Possible -5 to -10 point adjustment if pattern emerges across multiple mixed references. |
| **Negative** | • Unsatisfied customer ("probably not" or "definitely not" hire again)<br>• Project failed to meet expectations<br>• Significant delays, overruns, or quality issues<br>• Poor support or unresolved issues | **Disqualification trigger**: Single highly negative reference requires investigation. Multiple negative references → vendor disqualified regardless of technical/cost scores. |

**Reference Check Aggregate Score** (per vendor):

| Vendor | Ref 1 Rating | Ref 2 Rating | Ref 3 Rating | Ref 4 Rating | Ref 5 Rating | Overall Assessment | Action |
|--------|--------------|--------------|--------------|--------------|--------------|-------------------|--------|
| Vendor A | Highly Positive | Positive | Positive | | | **Strong references** | Proceed |
| Vendor B | Positive | Mixed | Positive | Positive | | **Good references** | Proceed with caution |
| Vendor C | Highly Positive | Highly Positive | Positive | Highly Positive | | **Excellent references** | Strong confidence |

**Disqualification Criteria**:
- **1 Highly Negative Reference**: Requires investigation and vendor explanation. If concerns not resolved → disqualify.
- **2+ Negative or Mixed References**: Pattern of dissatisfaction → disqualify or downgrade technical scores by 10-15 points.

---

## 9. Security & Compliance Due Diligence

### 9.1 Security Due Diligence Process

**Scope**: Shortlisted vendors only (top 3 after technical scoring)

**Timing**: Week 18-19 (parallel with reference checks and presentations)

**Responsibility**: Security Architect + Compliance Observer

### 9.2 Security Due Diligence Checklist

| ID | Due Diligence Item | Verification Method | Pass/Fail | Risk Level (H/M/L) | Notes |
|----|-------------------|---------------------|-----------|-------------------|-------|
| **DD-1** | **FIPS 140-2 Level 3 Certificate Validation** | Verify HSM on NIST CMVP validated modules list (https://csrc.nist.gov/projects/cryptographic-module-validation-program/validated-modules/search) | [ ] Pass [ ] Fail | High | Certificate number, validation date, expiration |
| **DD-2** | **WebTrust Audit Seal Verification** | Verify WebTrust seal on vendor website, check with CPA Canada WebTrust registry | [ ] Pass [ ] Fail | High | Audit date, scope, unqualified opinion |
| **DD-3** | **SOC 2 Type II Report Review** | Request and review most recent SOC 2 Type II report (<12 months), verify no Type II exceptions | [ ] Pass [ ] Fail | High | Audit date, auditor, exceptions (if any) |
| **DD-4** | **ISO 27001 Certificate Verification** | Verify ISO 27001:2022 certificate with issuing certification body, check scope includes PKI services | [ ] Pass [ ] Fail | Medium | Certificate number, scope, expiration |
| **DD-5** | **UK GDPR Compliance Documentation** | Review UK GDPR Article 30 ROPA, Data Protection Impact Assessment (DPIA), Data Processing Agreement (DPA) template | [ ] Pass [ ] Fail | High | ROPA completeness, DPA terms |
| **DD-6** | **UK Data Residency Verification** | Request data center location attestation, verify no cross-border data transfers for certificate metadata/audit logs | [ ] Pass [ ] Fail | High | Data center locations, sub-processors |
| **DD-7** | **Penetration Test Report Review** | Request most recent penetration test report (annual), verify critical/high findings resolved | [ ] Pass [ ] Fail | Medium | Test date, scope, findings, remediation |
| **DD-8** | **Incident Response Plan Review** | Review incident response plan and tabletop exercise results, verify MTTR for security incidents | [ ] Pass [ ] Fail | Low | Plan maturity, MTTR targets |
| **DD-9** | **Vulnerability Management Process** | Review vulnerability scanning/patching process, verify SLA for critical vulnerabilities (<24hr) | [ ] Pass [ ] Fail | Medium | Scanning frequency, patch SLA |
| **DD-10** | **Business Continuity Plan (BCP) Review** | Review BCP and disaster recovery plan, verify annual DR testing | [ ] Pass [ ] Fail | Medium | RTO/RPO, DR test results |
| **DD-11** | **Cyber Insurance Verification** | Request cyber liability insurance certificate (minimum £10M coverage) | [ ] Pass [ ] Fail | Low | Coverage amount, policy expiration |
| **DD-12** | **Third-Party Risk Assessment** | Review vendor's third-party risk management process for sub-processors (e.g., HSM vendor, data center provider) | [ ] Pass [ ] Fail | Medium | Sub-processor list, risk assessments |

**Disqualification Triggers**:
- **DD-1 Fail**: FIPS 140-2 certificate invalid or expired → **DISQUALIFY** (mandatory qualification)
- **DD-2 Fail**: WebTrust audit lapsed or qualified opinion → **DISQUALIFY** (industry trust requirement)
- **DD-3 Fail**: SOC 2 Type II with material exceptions unresolved → **DOWNGRADE** technical security score by 10 points
- **DD-5 Fail**: UK GDPR non-compliance → **DISQUALIFY** (legal requirement)
- **DD-6 Fail**: Data residency outside UK → **DISQUALIFY** (mandatory qualification)

---

## 10. Final Selection Decision

### 10.1 Decision Authority

**Approval Chain**:
1. **Evaluation Committee**: Recommends vendor based on final scores + qualitative factors
2. **Enterprise Security Architect**: Reviews technical recommendation, validates security/compliance
3. **CISO**: Approves vendor selection (executive sponsor)
4. **Procurement Manager**: Executes contract award

**Escalation**: If CISO disagrees with evaluation committee recommendation, CTO/CIO provides final decision.

### 10.2 Selection Decision Factors

**Quantitative (Objective)**:
| Factor | Weight | Threshold |
|--------|--------|-----------|
| **Final Combined Score** | Primary | Highest score wins |
| **Technical Score** | Qualifier | Minimum 70/100 required |
| **3-Year TCO** | Constraint | Must be ≤ £184,200 |

**Qualitative (Subjective - Tie-Breakers)**:
1. **Reference Check Results**: Highly positive references > positive > mixed
2. **Azure Integration Maturity**: Native Azure AD/InTune/Key Vault integration preferred over third-party connectors
3. **UK Market Presence**: UK-based support team, UK data centers, UK customer base (regulatory alignment)
4. **Strategic Partnership Potential**: Vendor roadmap aligned with organizational digital transformation (e.g., post-quantum cryptography, Zero Trust)
5. **Cultural Fit**: Communication style, responsiveness, transparency during procurement process
6. **Presentation Performance**: Live demo quality, Q&A confidence, team expertise demonstrated

### 10.3 Selection Decision Matrix

| Vendor | Final Score | Technical | Cost (3yr TCO) | Ref Checks | Azure Integration | UK Presence | Strategic Fit | **Recommendation** |
|--------|-------------|-----------|----------------|------------|-------------------|-------------|---------------|-------------------|
| **DigiCert ONE** | 90.5 | 92 | £175K | Highly Positive | Excellent (native Key Vault) | Strong | Strong (PQ roadmap) | **RECOMMEND** |
| **Sectigo CM** | 86.5 | 85 | £162K (lowest) | Positive | Good (ACME focus) | Medium | Medium | Consider |
| **Entrust PKIaaS** | 84.6 | 78 | £180K | Positive | Good | Strong (UK HQ) | Medium | Consider |

**Example Decision Rationale**:
- **DigiCert ONE** selected despite not being lowest cost due to:
  - Highest final score (90.5) driven by exceptional technical quality (92/100)
  - Highly positive reference checks (all 5 references enthusiastic)
  - Native Azure Key Vault Managed HSM integration (best-in-class)
  - Strong UK market presence with London-based support team
  - Post-quantum cryptography roadmap alignment
  - Within budget (£175K < £184K approved budget)

### 10.4 Selection Approval Form

**Recommended Vendor**: _______________

**Final Score**: ___ / 100 (Technical: ___, Cost: ___)

**3-Year TCO**: £___________ (Budget: £184,200)

**Selection Rationale** (2-3 paragraphs):

[Provide detailed justification for vendor selection, referencing final scores, reference checks, due diligence findings, and strategic fit]

**Key Strengths**:
1. [Strength 1 - e.g., "Exceptional Azure integration quality with native Key Vault HSM support"]
2. [Strength 2 - e.g., "Highly positive reference checks with enthusiastic endorsements from 5 UK government/enterprise customers"]
3. [Strength 3 - e.g., "Proven SCEP/InTune deployment at scale (30K+ devices) with sub-3 minute issuance times"]

**Risks and Mitigations**:
1. **Risk**: [e.g., "Vendor pricing 8% higher than lowest-cost option"]
   - **Mitigation**: [e.g., "Value justified by superior technical quality (92/100 vs. 78/100), reducing implementation risk and future operational costs. TCO still within budget (£175K < £184K)."]
2. **Risk**: [e.g., "Vendor has limited post-quantum cryptography (PQC) implementation experience"]
   - **Mitigation**: [e.g., "Vendor committed to NIST PQC standards adoption within 18 months. Include PQC migration roadmap in contract SLA."]

**Contract Negotiation Points**:
1. [e.g., "Negotiate 5% volume discount for Year 2 if certificate volume exceeds 25K/year"]
2. [e.g., "Include SLA credits for availability below 99.9% (1% credit per 0.1% below SLA)"]
3. [e.g., "Secure commitment to UK data residency in perpetuity (contract term, not just current state)"]

**Approvals**:

| Role | Name | Signature | Date | Comments |
|------|------|-----------|------|----------|
| **Evaluation Lead** | [NAME] | _________ | _____ | |
| **Enterprise Security Architect** | [NAME] | _________ | _____ | |
| **CISO (Executive Sponsor)** | [NAME] | _________ | _____ | |
| **Procurement Manager** | [NAME] | _________ | _____ | |

**Final Approval Authority**: CISO [NAME] _________ Date: _____

---

## 11. Vendor Notification

### 11.1 Award Notification (Selected Vendor)

**Timing**: Within **1 business day** of final approval

**Method**: Email + phone call from Procurement Manager

**Content**:
- Congratulations on selection
- High-level feedback on strengths (technical quality, Azure integration, references)
- Next steps: Contract negotiation kickoff meeting (within 3 business days)
- Request for celebration/announcement coordination (press release, case study)

**Contract Negotiation Kickoff**:
- **Attendees**: Procurement Manager, Legal, Enterprise Security Architect, Vendor Account Executive, Vendor Legal
- **Agenda**: Contract terms review, SLA negotiation, data processing agreement, pricing finalization
- **Timeline**: 2-week negotiation target (Week 19-20 per project plan)

### 11.2 Non-Selected Vendor Notification

**Timing**: Within **2 business days** of final approval (after selected vendor notified and accepted)

**Method**: Email from Procurement Manager

**Content Template**:

---

**Subject**: Cloud PKI Vendor Selection - [PROJECT NAME]

Dear [Vendor Contact Name],

Thank you for submitting a proposal for our Cloud PKI service procurement. We appreciate the time and effort your team invested in understanding our requirements and preparing a comprehensive response.

After careful evaluation by our technical and business teams, including proposal review, vendor presentations, reference checks, and due diligence, we have selected another vendor whose proposal best met our specific needs at this time.

While your organization was not selected for this project, we were impressed by [1-2 specific strengths, e.g., "your strong ACME/Kubernetes integration capabilities" or "your competitive pricing and flexible contract terms"]. We will keep your company in mind for future opportunities.

If you would like to receive feedback on your proposal to help with future submissions, we are happy to offer an optional 30-minute debrief call within the next two weeks. Please contact [Procurement Manager Email] to schedule.

Thank you again for your interest in working with us. We wish you continued success.

Sincerely,
[Procurement Manager Name]
[Title]

---

### 11.3 Debrief Guidelines (If Vendor Requests)

**Offer**: Optional 30-minute video call within 2 weeks of request

**Attendees**: Procurement Manager + 1 technical evaluator (e.g., Cloud Architect)

**Do Provide**:
- [ ] General feedback on proposal strengths and weaknesses
- [ ] Specific areas where proposal could be improved (e.g., "SCEP demo failed to demonstrate InTune-specific features")
- [ ] Clarification on evaluation criteria and scoring methodology
- [ ] Guidance on how vendor could strengthen future proposals

**Do NOT Disclose**:
- [ ] Other vendors' names, scores, or proposal details
- [ ] Cost proposals from other vendors
- [ ] Specific numerical scores (only relative feedback: "strong," "adequate," "weak")
- [ ] Reference check details from other vendors
- [ ] Internal evaluation committee discussions or disagreements

**Debrief Call Structure**:
1. Thank vendor for participation (5 min)
2. General feedback on proposal (10 min)
3. Specific improvement suggestions (10 min)
4. Vendor Q&A (5 min)

---

## 12. Appeals Process

### 12.1 Grounds for Appeal

Vendors may appeal the selection decision **only** for the following reasons:

**Accepted Grounds**:
- [ ] **Process Violation**: Evaluation process not followed as documented in RFP/SOW
- [ ] **Scoring Error**: Mathematical errors in score calculation (verifiable)
- [ ] **Conflict of Interest**: Undisclosed evaluator conflict of interest with selected vendor
- [ ] **Misrepresentation**: Vendor information misrepresented by evaluation team
- [ ] **Mandatory Qualification Error**: Vendor incorrectly disqualified on mandatory qualification (vendor can prove they met requirement)

**NOT Accepted Grounds**:
- [ ] Disagreement with evaluation criteria (criteria were disclosed in RFP)
- [ ] Disagreement with subjective scores or judgments
- [ ] "We should have won because we're cheaper"
- [ ] "We have more features" (features not valued in criteria)
- [ ] Post-proposal improvements ("If you give us another chance, we'll fix X")

### 12.2 Appeal Process

**Step 1: Appeal Submission** (Within 5 business days of non-selection notification)
- Vendor submits written appeal to Procurement Manager
- Appeal must state specific grounds (from accepted list above)
- Appeal must provide evidence supporting claim

**Step 2: Appeal Review** (Within 10 business days of receipt)
- Procurement Manager forwards appeal to impartial reviewer (e.g., Chief Procurement Officer or Legal)
- Impartial reviewer investigates claim:
  - Reviews evaluation documentation
  - Interviews evaluators (if conflict of interest alleged)
  - Recalculates scores (if scoring error alleged)
  - Verifies process compliance

**Step 3: Appeal Decision** (Within 10 business days of review start)
- Impartial reviewer issues written decision:
  - **Appeal Upheld**: Re-evaluation required (rare), selection decision reversed or modified
  - **Appeal Denied**: Selection decision stands, rationale provided

**Step 4: Final Decision** (Immediately after appeal decision)
- Procurement Manager communicates decision to appellant vendor
- If appeal upheld: Re-evaluation process initiated with corrective actions
- If appeal denied: Decision is **final and binding**, no further appeals accepted

**Step 5: Contract Award** (After appeal period expires or appeal resolved)
- If no appeals received within 5 business days: Award contract to selected vendor
- If appeal denied: Award contract to selected vendor
- If appeal upheld: Complete re-evaluation, then award

---

## 13. Documentation and Records Retention

### 13.1 Required Documentation

All evaluation materials must be retained for **7 years** (to align with audit log retention requirement NFR-C-003):

**Pre-Evaluation Documents**:
- [ ] RFP/SOW issued to vendors
- [ ] Vendor Q&A log (questions and answers)
- [ ] Evaluation criteria document (this document)

**Vendor Proposal Documents**:
- [ ] All vendor technical proposals (PDF, original submission format)
- [ ] All vendor cost proposals (sealed until shortlist, then opened)
- [ ] Vendor presentation slides and demo recordings (if recorded)

**Evaluation Scoring Documents**:
- [ ] Individual evaluator scoring sheets (all evaluators, all vendors)
- [ ] Consensus scoring worksheets (committee meeting notes)
- [ ] Technical scoring summary (final technical scores per vendor)
- [ ] Cost scoring summary (final cost scores per vendor)
- [ ] Combined scoring summary (final scores and ranking)

**Due Diligence Documents**:
- [ ] Reference check notes (all references, all vendors)
- [ ] Security/compliance due diligence checklist (completed for shortlisted vendors)
- [ ] FIPS 140-2 certificate verification (screenshots from NIST CMVP website)
- [ ] WebTrust audit seal verification (screenshots)
- [ ] SOC 2 Type II reports (received from vendors)
- [ ] UK GDPR compliance documentation (ROPA, DPA templates)

**Selection Decision Documents**:
- [ ] Selection decision matrix (quantitative and qualitative factors)
- [ ] Selection approval form (signed by CISO and stakeholders)
- [ ] Selection rationale memo (detailed justification)
- [ ] Vendor notification emails (selected and non-selected vendors)
- [ ] Debrief call notes (if conducted)

**Appeal Documents** (if applicable):
- [ ] Appeal submissions (written appeals from vendors)
- [ ] Appeal review documentation (impartial reviewer findings)
- [ ] Appeal decisions (upheld or denied, with rationale)

### 13.2 Confidentiality and Access Control

**Classification**: OFFICIAL-SENSITIVE (Document Control section)

**Access Control**:
- **During Evaluation**: Evaluation committee members only (+ Legal/Compliance observers)
- **Post-Evaluation**: Procurement Manager, CISO, Enterprise Security Architect, Legal (need-to-know basis)
- **Audit/Compliance Reviews**: Internal Audit, External Auditors (with NDA)

**Storage**:
- **Electronic**: Encrypted SharePoint site with access controls (not public git repository)
- **Physical** (if printed): Locked file cabinet in Procurement office

**Retention**:
- **7 years** from project completion (align with audit log retention requirement)
- After 7 years: Secure destruction (shredding for physical, secure deletion for electronic)

### 13.3 Vendor Proposal Confidentiality

**Vendor Proprietary Information**:
- All vendor proposals are confidential and proprietary
- Proposals not shared outside evaluation committee
- Competitive information not disclosed to other vendors
- Proposals not committed to public repositories (git, etc.)

**Non-Disclosure Agreement (NDA)**:
- All evaluators sign NDA before accessing vendor proposals
- NDA prohibits:
  - Disclosure of vendor proprietary information
  - Disclosure of vendor pricing to competitors
  - Use of vendor intellectual property outside evaluation scope
  - Unauthorized copying or distribution of proposals

---

## Appendices

### Appendix A: Individual Evaluator Scorecard Template

[See Sections 4.2-4.6 for detailed scoring worksheets]

**Evaluator Name**: _______________
**Vendor Name**: _______________
**Evaluation Date**: _______________

**Instructions**:
1. Read vendor proposal thoroughly before scoring
2. Score each subcriterion independently (do not discuss with other evaluators until consensus meeting)
3. Provide specific justification for each score (reference proposal page numbers)
4. Use scoring rubric (90-100% = Excellent, 75-89% = Good, 60-74% = Adequate, 40-59% = Weak, 0-39% = Unacceptable)
5. Complete scoring within 5 business days of proposal receipt

[Individual scoring sheets for all 5 categories would be included here as fillable forms]

---

### Appendix B: Consensus Scoring Meeting Agenda

**Date**: _______________
**Time**: 3 hours
**Location**: Conference Room / Video Conference
**Attendees**: All evaluation committee voting members (7)

**Agenda**:

1. **Opening** (10 min)
   - Review evaluation process and scoring methodology
   - Confirm all evaluators completed individual scoring independently
   - Review confidentiality and conflict of interest obligations

2. **Vendor A Discussion** (50 min)
   - Individual scores presented (by category)
   - Discuss score discrepancies >15 points
   - Consensus scoring (committee agrees on final score for each category)
   - Document rationale for consensus scores

3. **Vendor B Discussion** (50 min)
   - [Same as Vendor A]

4. **Vendor C Discussion** (50 min)
   - [Same as Vendor A]

5. **Technical Score Summary** (20 min)
   - Review final technical scores (all vendors)
   - Confirm minimum threshold (70/100) met or not
   - Identify top 3 vendors for shortlist

6. **Shortlist Decision** (10 min)
   - Consensus decision on shortlisted vendors (top 3 by technical score, minimum 70/100)
   - Agree on next steps (cost proposal opening, vendor presentations, reference checks)

**Outputs**:
- Consensus scoring worksheets (signed by all evaluators)
- Shortlist decision memo
- Action items for reference checks and due diligence

---

### Appendix C: Evaluation Committee Charter

**Purpose**: Define roles, responsibilities, and decision-making process for the Cloud PKI Vendor Evaluation Committee

**Authority**: Chartered by CISO as Executive Sponsor

**Membership**:
- 7 voting members (see Section 1.5)
- 2 non-voting observers (Compliance, Legal)

**Term**: Committee active from RFP issuance (Week 14) through vendor award (Week 20)

**Roles**:
- **Evaluation Lead** (Procurement Manager): Facilitates process, ensures fairness, manages timeline
- **Technical Evaluators** (4): Score technical proposals, conduct due diligence
- **Business Evaluator** (Finance): Score cost proposals, validate budget alignment
- **Observers** (2): Provide compliance/legal guidance, do not vote

**Decision-Making**:
- **Consensus Preferred**: All voting members agree
- **Majority Vote**: If consensus not reached, majority (4/7) decides
- **Tie-Breaker**: Evaluation Lead breaks tie
- **Escalation**: If committee deadlocked, CISO decides

**Meetings**:
- **Individual Scoring**: Week 17 (independent, no meetings)
- **Consensus Scoring Meeting**: Week 17 (3 hours, all members required)
- **Post-Presentation Debrief**: Week 18 (2 hours, all members required)
- **Final Selection Decision**: Week 19 (2 hours, all members required)

**Confidentiality**:
- All members sign NDA
- No disclosure of vendor proposals, scores, or discussions outside committee
- Recusal required for conflicts of interest

---

### Appendix D: Conflict of Interest Declaration Form

**Evaluator Name**: _______________
**Role**: _______________
**Date**: _______________

**Declaration**:

I hereby declare the following regarding potential conflicts of interest with vendors participating in the Cloud PKI procurement:

**Question 1**: Do you have any personal relationships with employees of the following vendors?
- [ ] No conflicts
- [ ] Yes, I have the following relationships: _______________

**Question 2**: Do you have any financial interests (stock ownership >$10K, options, consulting fees) in the following vendors?
- [ ] No conflicts
- [ ] Yes, I have the following financial interests: _______________

**Question 3**: Have you been employed by any of the following vendors within the past 3 years?
- [ ] No
- [ ] Yes: Vendor _____________, Dates _____________

**Question 4**: Do you have any concurrent paid consulting or advisory arrangements with the following vendors?
- [ ] No conflicts
- [ ] Yes, I have the following arrangements: _______________

**Question 5**: Have you received any gifts or benefits (>$50 value) from any of the following vendors within the past year?
- [ ] No
- [ ] Yes, I received the following: _______________

**Question 6**: Is there any other relationship, interest, or circumstance that could reasonably be perceived as a conflict of interest?
- [ ] No
- [ ] Yes, details: _______________

**Evaluator Signature**: _______________ **Date**: _____

**Evaluation Lead Review**: _______________ **Date**: _____

**Action** (if conflict declared):
- [ ] No conflict requiring recusal (relationship disclosed but immaterial)
- [ ] Recusal from evaluation of specific vendor: _______________
- [ ] Complete recusal from evaluation committee

---

### Appendix E: Vendor Profile Summary (Template)

**Vendor Name**: _______________

**Company Overview**:
- **Founded**: _______________
- **Headquarters**: _______________
- **Public/Private**: _______________
- **Annual Revenue**: £_______________
- **Employee Count**: _______________
- **Cloud PKI Service Launched**: _______________

**Key Differentiators**:
1. [e.g., "Native Azure Key Vault Managed HSM integration"]
2. [e.g., "Strongest ACME/Kubernetes cert-manager support"]
3. [e.g., "UK-based 24/7 support team"]

**Certifications**:
- FIPS 140-2 Level 3: [Yes/No] (Cert #_______________)
- WebTrust for CAs: [Yes/No] (Date: _______________)
- SOC 2 Type II: [Yes/No] (Date: _______________)
- ISO 27001:2022: [Yes/No] (Cert #_______________)

**UK Market Presence**:
- UK Office: [Yes/No] (Location: _______________)
- UK Data Centers: [Yes/No] (Locations: _______________)
- UK Support Team: [Yes/No] (Support hours: _______________)

**Pricing Model** (from cost proposal):
- Per-Certificate Fee: £_______________ (20K volume tier)
- Platform Fee: £_______________ (annual)
- Setup Fee: £_______________
- 3-Year TCO: £_______________

**Technical Highlights** (from proposal and demo):
- SCEP/InTune: [Excellent/Good/Adequate/Weak]
- ACME/Kubernetes: [Excellent/Good/Adequate/Weak]
- REST API: [Excellent/Good/Adequate/Weak]
- Azure Integration: [Excellent/Good/Adequate/Weak]

**Reference Check Summary**:
- Reference 1: [Highly Positive/Positive/Mixed/Negative]
- Reference 2: [Highly Positive/Positive/Mixed/Negative]
- Reference 3: [Highly Positive/Positive/Mixed/Negative]
- Overall: [Excellent/Strong/Good/Concerning]

**Final Scores**:
- Technical Score: ___ / 100
- Cost Score: ___ / 100
- Final Combined Score: ___ / 100
- Rank: ___

---

## Document Control

**Generated by**: ArcKit `/arckit.evaluate` command
**Generated on**: 2025-11-09
**ArcKit Version**: v0.8.3
**Project**: Hybrid Public Key Infrastructure (PKI) (Project 005)
**Model**: Claude Sonnet 4.5 (claude-sonnet-4-5-20250929)
**Related Requirements**: ARC-005-REQ-v2.0 (55 requirements)
**Related Diagrams**: ARC-005-DIAG-DEPLOY-CLOUD-v1.0, ARC-005-DIAG-CONTAINER-v1.0, ARC-005-DIAG-BLOCK-v1.0
**Related Project Plan**: ARC-005-PLAN-v1.0 (Vendor Selection Gate: Week 18)
