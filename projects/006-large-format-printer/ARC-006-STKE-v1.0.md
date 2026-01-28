# Stakeholder Drivers & Goals Analysis: Large Format Printing Service

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-006-STKE-v1.0 |
| **Document Type** | Stakeholder Drivers & Goals Analysis |
| **Project** | Large Format Printing Service (Project 006) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 1.0 |
| **Created Date** | 2026-01-24 |
| **Last Modified** | 2026-01-24 |
| **Review Cycle** | Quarterly |
| **Next Review Date** | 2026-04-24 |
| **Owner** | Service Owner (Facilities Management) |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | Project Team, Procurement Team, Security Team, Facilities Team, Finance, End User Representatives |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2026-01-24 | ArcKit AI | Initial creation from `/arckit.stakeholders` command | PENDING | PENDING |

---

## Executive Summary

### Purpose
This document identifies key stakeholders for the Large Format Printing Service procurement, their underlying drivers (motivations, concerns, needs), how these drivers manifest into goals, and the measurable outcomes that will satisfy those goals. This analysis ensures stakeholder alignment and provides traceability from individual concerns to project success metrics.

### Key Findings

The Large Format Printing Service project demonstrates **strong stakeholder alignment** around the core objective of replacing variable, unpredictable external printing costs with a managed service providing on-premises capability, cost predictability, and confidentiality. Key stakeholders (Finance, Facilities, End Users) are united in wanting a professional service that "just works" without internal management overhead. The primary divergence is between **Finance's cost minimisation driver** and **Security's enhanced compliance requirements** (MOD Secure by Design), which add procurement complexity and potentially higher service costs. This conflict is resolved through the procurement evaluation framework weighting security certification (Cyber Essentials+) as mandatory, accepting that compliant vendors may command premium pricing justified by reduced security risk.

### Critical Success Factors

- **Cost Predictability Achieved**: Fixed monthly/quarterly service fee with no hidden charges or consumables surprises - Finance's primary success metric
- **24-Hour Standard Turnaround Met**: 95% of print jobs completed within 24 hours to satisfy end user operational requirements (Marketing, Engineering)
- **Security Accreditation Obtained**: JSP 440 accreditation achieved before service go-live to meet MOD Secure by Design requirements and Information Assurance Owner sign-off
- **Zero Confidentiality Breaches**: All sensitive materials printed on-premises with secure print release option, audit trail maintained
- **Minimal Administrative Overhead**: ≤1 hour/week internal administration, service provider manages all operational aspects

### Stakeholder Alignment Score

**Overall Alignment**: HIGH

Strong alignment on the fundamental business need (managed print service replacing variable external costs). Minor tension between Finance (lowest cost) and Security (highest assurance), resolved through mandatory Cyber Essentials+ certification creating a quality floor while allowing competitive pricing above that threshold. All end user groups (Marketing, Engineering, Facilities, Executive Support) aligned on service quality and turnaround requirements. No blocking conflicts identified.

---

## Stakeholder Identification

### Internal Stakeholders

| Stakeholder | Role/Department | Influence | Interest | Engagement Strategy |
|-------------|----------------|-----------|----------|---------------------|
| Executive Sponsor | Operations Director | HIGH | HIGH | Decision authority, budget approval, steering committee chair |
| Service Owner | Facilities Manager | HIGH | HIGH | Day-to-day service governance, vendor relationship, SLA monitoring |
| Information Assurance Owner (IAO) | Information Security | HIGH | HIGH | Accreditation sign-off, security risk acceptance, MOD SbD compliance |
| Security Lead | Information Security | HIGH | HIGH | Security requirements, vetting review, SIEM integration |
| Finance Business Partner | Finance | HIGH | MEDIUM | Budget approval, TCO validation, cost monitoring |
| Procurement Lead | Procurement | MEDIUM | HIGH | RFP management, vendor evaluation, contract negotiation |
| Contract Manager | Commercial | MEDIUM | HIGH | Contract terms, SLA definition, service credits |
| Enterprise Architect | Architecture | MEDIUM | MEDIUM | Technical oversight, integration design, Windows 11 compatibility |
| Marketing Manager | Marketing | LOW | HIGH | Primary end user, colour quality requirements, turnaround SLAs |
| Engineering Lead | Engineering/CAD | LOW | HIGH | Technical drawing requirements, scale accuracy, volume user |
| Facilities Coordinator | Operations | LOW | HIGH | Signage requirements, operational notices, service desk contact |
| Executive Assistant | Executive Support | LOW | MEDIUM | Boardroom materials, urgent requests, confidentiality priority |

### External Stakeholders

| Stakeholder | Organization | Relationship | Influence | Interest |
|-------------|--------------|--------------|-----------|----------|
| Service Provider (Vendor) | Managed Print Service Provider | Supplier | HIGH | HIGH |
| Equipment Manufacturer | HP/Canon/Epson | OEM Partner | LOW | MEDIUM |
| Security Assessor | CHECK/CREST Accredited | Compliance Validator | MEDIUM | MEDIUM |
| G-Cloud Framework | Crown Commercial Service | Procurement Route | LOW | LOW |

### Stakeholder Power-Interest Grid

```
HIGH POWER
    │
    │  [Manage Closely]          │  [Keep Satisfied]
    │  - Executive Sponsor        │  - Finance Business Partner
    │  - Service Owner            │  - Contract Manager
    │  - IAO                      │  - Procurement Lead
    │  - Security Lead            │
────┼──────────────────────────────┼─────────────────
    │  [Keep Informed]            │  [Monitor]
    │  - Marketing Manager        │  - Equipment Manufacturer
    │  - Engineering Lead         │  - G-Cloud Framework
    │  - Facilities Coordinator   │
    │  - Executive Assistant      │
    │  - Enterprise Architect     │
    │                             │
LOW POWER                                        HIGH INTEREST
```

---

## Stakeholder Drivers Analysis

### SD-1: Finance Business Partner - Cost Predictability and Budget Control

**Stakeholder**: Finance Business Partner

**Driver Category**: FINANCIAL

**Driver Statement**: Eliminate unpredictable external printing costs (currently £15K-30K annual variance) and achieve fixed, budgetable OpEx spend with total cost of ownership at least 20% below current external print spending.

**Context & Background**:
The organisation currently uses external print shops for large format printing, resulting in:
- Variable costs: £2K-5K per month depending on project activity (marketing campaigns, engineering projects)
- Budget unpredictability: Finance must maintain contingency reserves for print cost overruns
- No economies of scale: Each job priced individually with no volume discounts
- Hidden costs: Rush fees (50% premium for urgent jobs), delivery charges, reprints for quality issues

Finance is under organisational pressure to reduce discretionary spend and improve cost predictability. A managed service with fixed pricing eliminates budget variance and allows Finance to accurately forecast operational costs.

**Driver Intensity**: HIGH

**Enablers** (What would help):
- Fixed monthly fee with all-inclusive pricing (consumables, maintenance, support)
- Per-print pricing model with agreed rate card (alternative to fixed fee)
- Quarterly billing with detailed cost breakdown by department
- No hidden charges (setup fees, rush premiums included in SLA tiers)
- TCO analysis demonstrating 20%+ savings vs. current external spend

**Blockers** (What would hinder):
- Variable pricing models with unpredictable consumables costs
- Hidden fees (excessive service charges, minimum commitments above usage)
- Multi-year contracts with price escalation clauses
- Premium pricing for security-certified vendors (conflict with Security requirements)
- CapEx requirement (organisation prefers full OpEx model)

**Related Stakeholders**:
- Executive Sponsor (budget approval)
- Procurement Lead (vendor pricing negotiation)
- Contract Manager (contract terms protecting budget)

---

### SD-2: Service Owner (Facilities Manager) - Operational Simplicity and Service Quality

**Stakeholder**: Service Owner (Facilities Manager)

**Driver Category**: OPERATIONAL | PERSONAL

**Driver Statement**: Achieve "zero internal effort" print service where the vendor handles all operational aspects, freeing Facilities team from print-related tasks and eliminating user complaints about external print shop delays or quality issues.

**Context & Background**:
The Facilities Manager currently spends 3-5 hours per week:
- Coordinating external print jobs (quotes, approvals, collection)
- Handling user complaints about print quality or missed deadlines
- Managing relationships with multiple print vendors
- Processing invoices and cost allocations

This administrative overhead detracts from higher-value Facilities initiatives. The Facilities Manager's performance objectives include "improve service delivery efficiency" - a managed print service with single vendor accountability would demonstrate operational improvement.

Additionally, user complaints about print quality reflect poorly on Facilities. A professional managed service with SLA accountability transfers responsibility for quality issues to the vendor.

**Driver Intensity**: HIGH

**Enablers** (What would help):
- Single vendor accountability for all print services
- Proactive vendor service management (consumables replenishment, maintenance)
- Self-service portal for users (reduces Facilities involvement in job coordination)
- SLA-backed turnaround times with service credits for failures
- Monthly service reporting (Facilities can demonstrate service quality to stakeholders)

**Blockers** (What would hinder):
- Service requiring significant internal coordination
- Vendor with poor service culture (reactive, not proactive)
- Complex escalation processes requiring Facilities intervention
- Equipment failures causing business disruption (Facilities blamed even if vendor fault)
- Users circumventing service by continuing to use external print shops

**Related Stakeholders**:
- Executive Sponsor (operational efficiency objectives)
- End Users (Marketing, Engineering, Executive Assistants - service quality recipients)
- Contract Manager (SLA definition and enforcement)

---

### SD-3: Information Assurance Owner (IAO) - Security Accreditation and Risk Acceptance

**Stakeholder**: Information Assurance Owner (IAO)

**Driver Category**: COMPLIANCE | RISK

**Driver Statement**: Achieve JSP 440 accreditation for the print service before operational go-live, ensuring all security controls are verified, residual risks are accepted, and the organisation is protected from data breaches or compliance failures.

**Context & Background**:
The MOD Secure by Design assessment (ARC-006-SECD-v1.0) identified accreditation as a critical gap. As IAO, this stakeholder is personally accountable for:
- Signing off that security risks are acceptable
- Ensuring JSP 440 Leaflet 5C (Risk Managed Accreditation) requirements are met
- Demonstrating due diligence if a security incident occurs
- Responding to audit findings from security assurance teams

Without proper accreditation, the IAO cannot sign off on the service, blocking go-live. The IAO's professional reputation and accountability drive a cautious, thorough approach to security verification.

**Driver Intensity**: CRITICAL

**Enablers** (What would help):
- Clear security requirements in procurement (NFR-SEC-001 through NFR-SEC-011)
- Vendor with current Cyber Essentials+ certification (mandatory)
- Documented secure configuration baseline from vendor
- Completed Business Impact Assessment before go-live
- Right to audit vendor security arrangements
- Security incident notification process (1-hour detection, 4-hour breach notification)

**Blockers** (What would hinder):
- Vendors without Cyber Essentials+ certification (disqualifying)
- Inadequate supplier security documentation
- Time pressure to go-live before accreditation complete (conflict with Executive Sponsor)
- Vendor unwillingness to accept security contract terms (penetration testing rights, incident notification)
- Legacy equipment with unpatched vulnerabilities

**Related Stakeholders**:
- Security Lead (technical security requirements)
- Executive Sponsor (may pressure for faster go-live)
- Procurement Lead (security certification as mandatory evaluation criterion)

---

### SD-4: Security Lead - Defence-in-Depth and Data Protection

**Stakeholder**: Security Lead

**Driver Category**: COMPLIANCE | RISK

**Driver Statement**: Implement defence-in-depth security controls protecting sensitive printed materials from unauthorised disclosure, with encrypted transmission, secure print release, audit logging, and SIEM integration for security monitoring.

**Context & Background**:
The Security Lead is responsible for implementing the organisation's Zero Trust security model (Architecture Principle 2). Print services represent a data exfiltration risk:
- Printed documents contain sensitive information (financial reports, engineering designs, strategic plans)
- External print shops create confidentiality risks (documents handled by third parties)
- Print equipment on the network is an attack vector (firmware vulnerabilities, network reconnaissance)
- Lack of audit logging prevents detection of data exfiltration via print

The MOD Secure by Design assessment identified multiple security gaps requiring enhanced requirements (secure configuration, patch management, personnel vetting, incident response).

**Driver Intensity**: HIGH

**Enablers** (What would help):
- On-premises equipment (eliminates external data handling)
- TLS 1.3 encryption for all communications
- Secure print release (documents held until user authenticates at equipment)
- Comprehensive audit logging integrated with SIEM
- BPSS vetting for all on-site personnel
- Vendor patch management with 14-day critical patch SLA

**Blockers** (What would hinder):
- Vendors unwilling to meet enhanced security requirements
- Equipment with known vulnerabilities or no patch support
- Cost pressure leading to security compromises
- Complex SIEM integration requiring significant internal effort
- Vendor resistance to penetration testing rights

**Related Stakeholders**:
- IAO (accreditation dependency)
- Enterprise Architect (network security, VLAN design)
- Finance Business Partner (security requirements may increase cost)

---

### SD-5: Marketing Manager - Colour Quality and Rapid Turnaround

**Stakeholder**: Marketing Manager (End User Representative)

**Driver Category**: OPERATIONAL | CUSTOMER

**Driver Statement**: Achieve professional-grade colour accuracy (Delta E < 2) and 24-hour standard turnaround to support marketing campaigns without external print shop delays or colour consistency issues.

**Context & Background**:
Marketing produces 20-30 large format prints per month (posters, banners, exhibition displays). Current pain points:
- Colour inconsistency: External print shops produce varying results, requiring reprints
- Turnaround delays: 2-3 day turnaround delays campaign launches
- Last-minute changes impossible: Cannot make revisions for time-sensitive events
- Cost unpredictability: Rush fees for urgent jobs blow marketing budgets

Marketing's success is measured by campaign effectiveness, and professional print materials are essential for brand representation. The Marketing Manager's personal credibility depends on delivering quality materials on time.

**Driver Intensity**: HIGH

**Enablers** (What would help):
- Calibrated equipment (Delta E < 2 colour accuracy)
- ICC colour profiles for accurate soft proofing
- Photo Quality print profile for marketing materials
- 24-hour standard turnaround, 4-hour urgent option
- Self-service portal with job status tracking
- Reprint at no cost for quality issues

**Blockers** (What would hinder):
- Inconsistent colour calibration (reprints required)
- Long turnaround times (campaigns delayed)
- Complex submission process (slows workflow)
- Limited media options (no glossy photo paper, canvas)
- No proofing option (colour surprises on final print)

**Related Stakeholders**:
- Service Owner (SLA enforcement)
- Engineering Lead (shared service, different quality priorities)
- Executive Assistant (urgent requests may conflict)

---

### SD-6: Engineering Lead - Technical Precision and Scale Accuracy

**Stakeholder**: Engineering Lead (End User Representative)

**Driver Category**: OPERATIONAL

**Driver Statement**: Achieve precise technical drawing reproduction with 100% scale accuracy and line precision for architectural plans and engineering drawings used in project reviews and site construction.

**Context & Background**:
Engineering produces 50-100 technical drawings per month (architectural plans, CAD outputs, engineering schematics). Critical requirements:
- Scale accuracy: Drawings must print at exact scale (1:100, 1:50) for site use
- Line precision: Fine lines must be crisp and readable
- Durability: Drawings used on construction sites need to withstand handling
- Revisions: Frequent design changes require rapid reprints

Engineering's work directly impacts project delivery. Inaccurate drawings can cause construction errors (costly rework) or project delays (waiting for correct prints). The Engineering Lead's credibility depends on reliable technical output.

**Driver Intensity**: HIGH

**Enablers** (What would help):
- Technical Drawing print profile (optimised for line precision)
- Verified scale accuracy (test prints validated)
- Technical paper options (vellum, coated bond)
- Economy/Draft mode for revisions (cost-effective iterations)
- Simple submission from CAD applications (AutoCAD, Revit)
- Fast reprints for frequent revisions

**Blockers** (What would hinder):
- Scale inaccuracy (wrong dimensions on site)
- Poor line quality (illegible fine details)
- Limited paper sizes (A0+ required for large drawings)
- Slow turnaround for revisions (project delays)
- Complex file format requirements (DWG support needed)

**Related Stakeholders**:
- Marketing Manager (different quality priorities - may conflict on equipment configuration)
- Service Owner (technical requirements validation)
- Enterprise Architect (driver compatibility)

---

### SD-7: Executive Sponsor (Operations Director) - Strategic Value and Quick Win

**Stakeholder**: Executive Sponsor (Operations Director)

**Driver Category**: STRATEGIC | PERSONAL

**Driver Statement**: Deliver a successful managed service implementation that demonstrates operational improvement, cost discipline, and security compliance - a "quick win" project that builds confidence in the procurement team's ability to deliver.

**Context & Background**:
The Executive Sponsor oversees Operations including Facilities. Strategic priorities include:
- Operational efficiency: Reduce internal administrative overhead on non-core activities
- Cost optimisation: Shift from variable to fixed costs where possible
- Security compliance: Meet MOD requirements without impacting operational effectiveness
- Team development: Use this project to develop procurement and service management capabilities

This project is relatively low-risk compared to major IT initiatives, making it suitable as a "proof of concept" for managed service procurement. Success will build organisational confidence and provide a template for future managed service procurements.

**Driver Intensity**: MEDIUM

**Enablers** (What would help):
- Clear procurement framework (G-Cloud or competitive tender)
- Realistic timeline (3-6 months to service go-live)
- Experienced service provider with references
- Simple contract structure (standard managed service terms)
- Quick wins demonstrable early (cost savings, user satisfaction)

**Blockers** (What would hinder):
- Complex procurement process delaying go-live
- Security requirements creating procurement obstacles
- Budget overruns undermining cost optimisation narrative
- User dissatisfaction with service quality (reputational damage)
- Protracted contract negotiation (opportunity cost)

**Related Stakeholders**:
- Finance Business Partner (cost optimisation validation)
- IAO (security sign-off on critical path)
- Service Owner (operational success delivery)

---

### SD-8: Procurement Lead - Compliant and Efficient Procurement

**Stakeholder**: Procurement Lead

**Driver Category**: OPERATIONAL | COMPLIANCE

**Driver Statement**: Execute a compliant procurement process (G-Cloud preferred, competitive tender if needed) that delivers best value while meeting all security and commercial requirements within agreed timeline.

**Context & Background**:
The Procurement Lead must balance:
- Compliance: Follow organisational procurement rules and public sector frameworks
- Value: Achieve best price/quality ratio within budget constraints
- Timeline: Deliver service within stakeholder expectations (3-6 months)
- Risk: Avoid procurement challenges or contract disputes

The MOD Secure by Design requirements (Cyber Essentials+ mandatory) reduce the vendor pool, potentially limiting competitive tension. The Procurement Lead must navigate this constraint while achieving value for money.

**Driver Intensity**: MEDIUM

**Enablers** (What would help):
- Clear requirements specification (this document + requirements.md)
- G-Cloud compliant vendors available (simplified procurement)
- Evaluation criteria defined upfront (technical, cost, security weighted)
- Budget confirmed before procurement starts
- Stakeholder alignment on requirements (no scope creep)

**Blockers** (What would hinder):
- Changing requirements during procurement
- Limited compliant vendors (Cyber Essentials+ filter)
- Stakeholder disagreement on evaluation criteria
- Legal review delays on contract terms
- Budget uncertainty causing procurement pause

**Related Stakeholders**:
- Finance Business Partner (budget authority)
- IAO/Security Lead (security requirements)
- Contract Manager (commercial terms)

---

### SD-9: Executive Assistant - Confidentiality and Urgent Response

**Stakeholder**: Executive Assistant (End User Representative)

**Driver Category**: OPERATIONAL | RISK

**Driver Statement**: Achieve rapid turnaround (4-hour urgent SLA) for executive presentation materials with guaranteed confidentiality for sensitive board documents through secure print release.

**Context & Background**:
Executive Assistants produce 5-10 large format prints per month, but these are often:
- Time-critical: Board meeting materials needed same-day
- Confidential: Strategic plans, M&A documents, financial presentations
- High-visibility: Quality reflects on executive leadership
- Last-minute: Changes requested hours before meetings

The Executive Assistant's credibility depends on delivering flawless materials under pressure. Confidentiality breaches (sensitive documents left at external print shop) would be career-damaging.

**Driver Intensity**: MEDIUM

**Enablers** (What would help):
- 4-hour urgent SLA during business hours
- Secure print release (document held until EA authenticates)
- Professional appearance (glossy photo paper, large format charts)
- Simple submission process (minimal learning curve)
- White-glove service option (service provider assists with complex jobs)

**Blockers** (What would hinder):
- No urgent service option (board meetings missed)
- Insecure print release (documents exposed)
- Complex technology (EA not technical)
- Quality issues requiring reprints (no time for corrections)
- Service unavailable during critical periods

**Related Stakeholders**:
- Security Lead (secure print release requirement)
- Service Owner (urgent SLA enforcement)
- Marketing Manager (may compete for urgent slots)

---

## Driver-to-Goal Mapping

### Goal G-1: Achieve Predictable Annual Print Costs

**Derived From Drivers**: SD-1 (Finance - Cost Predictability), SD-7 (Executive Sponsor - Cost Discipline)

**Goal Owner**: Finance Business Partner

**Goal Statement**: Reduce annual large format printing cost variance from ±50% to ±5% through fixed-price managed service contract, achieving total cost at least 20% below current external print spending baseline (target: £24K-30K/year vs. current £30K-45K).

**Why This Matters**: Finance cannot effectively budget with current cost variability. Fixed pricing enables accurate forecasting, eliminates contingency reserves, and demonstrates operational cost control to leadership.

**Success Metrics**:

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| Annual cost variance | ±50% (£15K-30K swing) | ±5% (±£1.5K) | Quarterly finance review vs. contract value |
| Total annual cost | £30K-45K | £24K-30K (20% reduction) | Year-end financial reconciliation |
| Unplanned charges | £5K-10K/year (rush fees, reprints) | £0 | Monthly invoice review |
| Budget forecasting accuracy | 70% | 95% | Actual vs. forecast comparison |

**Dependencies**:
- Procurement completes within budget envelope
- Service provider delivers all-inclusive pricing (no hidden charges)
- Usage remains within contract capacity (volume assumptions validated)

**Risks to Goal Achievement**:
- Vendor price increases after Year 1 (mitigate: multi-year pricing lock)
- Volume exceeds contract capacity (mitigate: flexible capacity clause)
- Service credits insufficient to offset SLA failures (mitigate: meaningful service credit regime)

---

### Goal G-2: Deliver 95% On-Time Print Jobs

**Derived From Drivers**: SD-2 (Service Owner - Service Quality), SD-5 (Marketing - Rapid Turnaround), SD-6 (Engineering - Fast Reprints), SD-9 (Executive Assistant - Urgent Response)

**Goal Owner**: Service Owner (Facilities Manager)

**Goal Statement**: Achieve 95% of standard print jobs completed within 24 hours and 99% of urgent jobs completed within 4 hours, with user satisfaction rating of 4.0/5.0 or higher.

**Why This Matters**: End users depend on timely print delivery for campaigns, projects, and executive meetings. Late prints cause business disruption and reflect poorly on Facilities and IT.

**Success Metrics**:

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| Standard job on-time delivery | N/A (external) | 95% within 24 hours | Service provider monthly reporting |
| Urgent job on-time delivery | N/A | 99% within 4 hours | Service provider monthly reporting |
| Average turnaround time | 48-72 hours (external) | <12 hours (standard) | Monthly service review |
| User satisfaction score | N/A | 4.0/5.0 | Quarterly user survey |
| Service complaints | 5-10/month (estimate) | <2/month | Facilities issue tracking |

**Dependencies**:
- Service provider achieves SLA targets consistently
- Equipment availability >99% during business hours
- Consumables proactively managed (no stock-outs)

**Risks to Goal Achievement**:
- Equipment failure during peak demand (mitigate: BC/DR clause for backup)
- Peak volume exceeds capacity (mitigate: 100% burst capacity in contract)
- Quality issues causing reprints (SLA clock reset) (mitigate: quality SLA separate from turnaround)

---

### Goal G-3: Achieve JSP 440 Accreditation Before Go-Live

**Derived From Drivers**: SD-3 (IAO - Accreditation), SD-4 (Security Lead - Defence-in-Depth)

**Goal Owner**: Information Assurance Owner (IAO)

**Goal Statement**: Complete Risk Managed Accreditation per JSP 440 Leaflet 5C before service operational go-live, with all MUST_HAVE security requirements verified, Business Impact Assessment completed, and residual risks documented and accepted.

**Why This Matters**: Without accreditation, the service cannot handle OFFICIAL data, blocking operational use. Accreditation demonstrates due diligence and protects the organisation and IAO from liability.

**Success Metrics**:

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| Security requirements compliance | N/A | 100% MUST_HAVE met | Security review checklist |
| Business Impact Assessment | Not started | Complete | BIA document sign-off |
| Residual risk documentation | N/A | All risks documented | Risk register review |
| IAO sign-off | Not obtained | Signed | Formal sign-off document |
| IAMM maturity level | N/A | Level 2 (Managed) | IAMM assessment |

**Dependencies**:
- Service provider holds current Cyber Essentials+ certification
- Security documentation provided by vendor (secure configuration baseline)
- Time allocated for security review before go-live (minimum 4 weeks)

**Risks to Goal Achievement**:
- Vendor lacks required certification (mitigate: mandatory evaluation criterion)
- Inadequate vendor documentation (mitigate: documentation requirements in RFP)
- Time pressure from Executive Sponsor (mitigate: go-live date includes accreditation buffer)
- Security findings requiring remediation delay go-live (mitigate: remediation SLA in contract)

---

### Goal G-4: Minimise Internal Administrative Overhead

**Derived From Drivers**: SD-2 (Service Owner - Zero Internal Effort), SD-7 (Executive Sponsor - Operational Efficiency)

**Goal Owner**: Service Owner (Facilities Manager)

**Goal Statement**: Reduce internal administrative time for print service management from 3-5 hours/week to maximum 1 hour/week through vendor-managed operations and self-service user portal.

**Why This Matters**: Facilities team capacity is limited. Time spent on print administration detracts from higher-value activities. Self-service and vendor accountability eliminate the coordination burden.

**Success Metrics**:

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| Internal admin time | 3-5 hours/week | ≤1 hour/week | Facilities time tracking |
| User-raised service requests | 20-30/month | <5/month (handled by vendor) | Service request log |
| Invoice processing time | 2 hours/month | 15 minutes/month | Finance process tracking |
| Vendor escalations to Facilities | N/A | <2/month | Escalation log |

**Dependencies**:
- Self-service portal operational and adopted by users
- Service provider proactively manages all operational aspects
- Clear escalation process (users contact vendor directly, not Facilities)

**Risks to Goal Achievement**:
- Users continue contacting Facilities instead of vendor (mitigate: communication and training)
- Service provider requires excessive Facilities involvement (mitigate: escalation SLA in contract)
- Portal issues requiring Facilities troubleshooting (mitigate: vendor IT support responsibility)

---

### Goal G-5: Maintain Zero Confidentiality Breaches

**Derived From Drivers**: SD-4 (Security Lead - Data Protection), SD-9 (Executive Assistant - Confidentiality)

**Goal Owner**: Security Lead

**Goal Statement**: Achieve zero confidentiality breaches through on-premises printing, secure print release for sensitive documents, and comprehensive audit logging enabling breach detection and investigation.

**Why This Matters**: Printed documents contain sensitive organisational information. Any breach could cause reputational damage, competitive disadvantage, or regulatory penalty.

**Success Metrics**:

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| Confidentiality breaches | Unknown (external risk) | 0 | Security incident log |
| Secure print adoption | N/A | 100% for OFFICIAL-SENSITIVE | Audit log analysis |
| Audit log completeness | N/A | 100% of jobs logged | Monthly audit review |
| Personnel vetting compliance | N/A | 100% BPSS cleared | Vendor compliance reporting |
| Security incidents | N/A | 0 High/Critical | Incident tracking |

**Dependencies**:
- On-premises equipment deployed (no external data handling)
- Secure print release feature operational
- Audit logging integrated with organisational SIEM
- All vendor personnel BPSS cleared

**Risks to Goal Achievement**:
- Secure print feature not used by users (mitigate: mandatory for certain classifications)
- Audit logging gaps (mitigate: monthly audit verification)
- Personnel vetting lapses (mitigate: annual compliance audit)
- Equipment vulnerability exploited (mitigate: patch management SLA)

---

### Goal G-6: Meet End User Quality Requirements

**Derived From Drivers**: SD-5 (Marketing - Colour Quality), SD-6 (Engineering - Technical Precision)

**Goal Owner**: Service Owner (Facilities Manager)

**Goal Statement**: Achieve professional print quality with Delta E < 2 colour accuracy for marketing materials and 100% scale accuracy for technical drawings, with quality-related reprints at zero additional cost.

**Why This Matters**: Professional print quality is essential for brand representation (Marketing) and technical accuracy (Engineering). Quality failures cause rework, delays, and reputational damage.

**Success Metrics**:

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| Colour accuracy | Variable (external) | Delta E < 2 | Quarterly calibration certificate |
| Scale accuracy | Variable | 100% (verified test prints) | Monthly scale accuracy test |
| Quality-related reprints | 5-10% of jobs (estimate) | <2% of jobs | Service provider quality reporting |
| User quality complaints | 5-10/month | <2/month | Facilities issue tracking |
| Marketing satisfaction | 3.0/5.0 (estimate) | 4.5/5.0 | Quarterly user survey |
| Engineering satisfaction | 3.0/5.0 (estimate) | 4.5/5.0 | Quarterly user survey |

**Dependencies**:
- Equipment capable of Delta E < 2 accuracy
- Regular calibration performed by vendor (weekly/monthly)
- Multiple media types available (photo paper, technical paper, canvas)
- Quality profiles correctly configured

**Risks to Goal Achievement**:
- Equipment calibration drift (mitigate: calibration SLA with certificates)
- Media quality issues (mitigate: approved media list in contract)
- User error in profile selection (mitigate: default profiles, training)
- Conflicting quality priorities between Marketing/Engineering (mitigate: separate profiles)

---

## Goal-to-Outcome Mapping

### Outcome O-1: £10K-15K Annual Cost Savings

**Derived From Goal**: G-1 (Predictable Annual Print Costs)

**Outcome Statement**: Achieve £10K-15K annual cost savings (20-35% reduction) compared to current external print spending baseline through managed service efficiencies.

**KPIs**:

| KPI | Current Value | Target Value | Measurement Frequency |
|-----|---------------|--------------|----------------------|
| Annual print spend | £35K-45K | £24K-30K | Annual |
| Cost per print (average) | £15-25 | £10-15 | Monthly |
| Rush/premium charges | £5K-10K/year | £0 | Quarterly |
| Budget variance | ±50% | ±5% | Quarterly |

**Business Value**:
- **Financial**: £10K-15K annual savings reallocated to other priorities
- **Operational**: Predictable costs enable accurate budgeting
- **Strategic**: Demonstrates operational efficiency to leadership

**Timeline**:
- Month 3: Contract signed with agreed pricing
- Month 6: First quarter cost tracking vs. baseline
- Month 12: Full year savings validated

**Leading Indicators**: Monthly invoice vs. forecast (on track?), no unplanned charges
**Lagging Indicators**: Year-end cost comparison vs. baseline

---

### Outcome O-2: 95% User Satisfaction with Print Service

**Derived From Goal**: G-2 (95% On-Time Delivery), G-6 (Quality Requirements)

**Outcome Statement**: Achieve 95% user satisfaction rating through reliable turnaround, professional quality, and minimal service issues.

**KPIs**:

| KPI | Current Value | Target Value | Measurement Frequency |
|-----|---------------|--------------|----------------------|
| User satisfaction score | N/A (estimate 3.0/5.0) | 4.5/5.0 (95%) | Quarterly survey |
| On-time delivery rate | N/A | 95% (standard), 99% (urgent) | Monthly |
| Quality complaints | 5-10/month | <2/month | Monthly |
| Net Promoter Score (internal) | N/A | +30 | Annual |

**Business Value**:
- **Operational**: Users trust service, adoption is high
- **Customer**: Internal customers (end users) are satisfied
- **Strategic**: Positive feedback supports future managed service initiatives

**Timeline**:
- Month 3: Baseline survey (current satisfaction with external printing)
- Month 6: First post-implementation survey (target 4.0/5.0)
- Month 12: Sustained satisfaction (target 4.5/5.0)

**Leading Indicators**: On-time delivery rate trending, quality complaint volume
**Lagging Indicators**: Quarterly satisfaction survey results

---

### Outcome O-3: Security Accreditation Achieved

**Derived From Goal**: G-3 (JSP 440 Accreditation)

**Outcome Statement**: Achieve formal JSP 440 Risk Managed Accreditation enabling service to handle OFFICIAL data with IAO sign-off documented.

**KPIs**:

| KPI | Current Value | Target Value | Measurement Frequency |
|-----|---------------|--------------|----------------------|
| Accreditation status | Not accredited | Accredited | One-time (at go-live) |
| Security requirements met | N/A | 100% MUST_HAVE | Pre-go-live review |
| Residual risks accepted | N/A | All documented and accepted | Pre-go-live |
| IAMM maturity | N/A | Level 2 (Managed) | Annual assessment |
| Security incidents | N/A | 0 High/Critical | Ongoing |

**Business Value**:
- **Compliance**: Service authorised for OFFICIAL data handling
- **Risk**: Organisational and personal liability protected
- **Strategic**: Template for future managed service accreditation

**Timeline**:
- Month 1: Security requirements in RFP issued
- Month 2: Vendor security documentation received
- Month 3: Security review complete, BIA completed
- Month 4: IAO sign-off, accreditation achieved

**Leading Indicators**: Security documentation completeness, vendor certification validity
**Lagging Indicators**: IAO formal sign-off

---

### Outcome O-4: 80% Reduction in Administrative Overhead

**Derived From Goal**: G-4 (Minimise Administrative Overhead)

**Outcome Statement**: Achieve 80% reduction in Facilities team time spent on print service administration (3-5 hours/week to ≤1 hour/week).

**KPIs**:

| KPI | Current Value | Target Value | Measurement Frequency |
|-----|---------------|--------------|----------------------|
| Admin time per week | 3-5 hours | ≤1 hour | Monthly tracking |
| Service requests to Facilities | 20-30/month | <5/month | Monthly |
| Invoice processing time | 2 hours/month | 15 minutes/month | Monthly |
| Self-service portal adoption | N/A | 90% of jobs | Monthly |

**Business Value**:
- **Operational**: Facilities team capacity freed for higher-value work
- **Financial**: Labour cost avoidance (not headcount, capacity redeployment)
- **Strategic**: Demonstrates managed service value proposition

**Timeline**:
- Month 3: Service operational, baseline overhead measured
- Month 6: Overhead reduction target achieved
- Month 12: Sustained low overhead, lessons learned documented

**Leading Indicators**: Portal adoption rate, user queries to Facilities
**Lagging Indicators**: Monthly admin time tracking

---

### Outcome O-5: Zero Data Security Incidents

**Derived From Goal**: G-5 (Zero Confidentiality Breaches)

**Outcome Statement**: Maintain zero data security incidents related to the print service through defence-in-depth controls.

**KPIs**:

| KPI | Current Value | Target Value | Measurement Frequency |
|-----|---------------|--------------|----------------------|
| Security incidents | Unknown | 0 (High/Critical) | Ongoing |
| Confidentiality breaches | Unknown | 0 | Ongoing |
| Audit log coverage | N/A | 100% | Monthly |
| Vulnerability findings | N/A | 0 Critical, 0 High (unresolved) | Quarterly pen test |
| Personnel vetting compliance | N/A | 100% | Annual |

**Business Value**:
- **Risk**: Protected from data breach consequences
- **Compliance**: Meets MOD security requirements
- **Strategic**: Builds trust in managed service security model

**Timeline**:
- Month 4: Service operational with all security controls
- Month 6: First quarterly security review
- Month 12: Annual security audit, pen test completed

**Leading Indicators**: Audit log coverage, patching compliance
**Lagging Indicators**: Security incident count, pen test findings

---

## Complete Traceability Matrix

### Stakeholder → Driver → Goal → Outcome

| Stakeholder | Driver ID | Driver Summary | Goal ID | Goal Summary | Outcome ID | Outcome Summary |
|-------------|-----------|----------------|---------|--------------|------------|-----------------|
| Finance Business Partner | SD-1 | Cost Predictability | G-1 | Predictable Annual Costs | O-1 | £10K-15K Annual Savings |
| Service Owner | SD-2 | Operational Simplicity | G-2 | 95% On-Time Delivery | O-2 | 95% User Satisfaction |
| Service Owner | SD-2 | Operational Simplicity | G-4 | Minimise Admin Overhead | O-4 | 80% Admin Reduction |
| IAO | SD-3 | Accreditation | G-3 | JSP 440 Accreditation | O-3 | Accreditation Achieved |
| Security Lead | SD-4 | Data Protection | G-3 | JSP 440 Accreditation | O-3 | Accreditation Achieved |
| Security Lead | SD-4 | Data Protection | G-5 | Zero Breaches | O-5 | Zero Security Incidents |
| Marketing Manager | SD-5 | Colour Quality & Turnaround | G-2 | 95% On-Time Delivery | O-2 | 95% User Satisfaction |
| Marketing Manager | SD-5 | Colour Quality & Turnaround | G-6 | Quality Requirements | O-2 | 95% User Satisfaction |
| Engineering Lead | SD-6 | Technical Precision | G-2 | 95% On-Time Delivery | O-2 | 95% User Satisfaction |
| Engineering Lead | SD-6 | Technical Precision | G-6 | Quality Requirements | O-2 | 95% User Satisfaction |
| Executive Sponsor | SD-7 | Strategic Quick Win | G-1 | Predictable Annual Costs | O-1 | £10K-15K Annual Savings |
| Executive Sponsor | SD-7 | Strategic Quick Win | G-4 | Minimise Admin Overhead | O-4 | 80% Admin Reduction |
| Procurement Lead | SD-8 | Compliant Procurement | G-1 | Predictable Annual Costs | O-1 | £10K-15K Annual Savings |
| Executive Assistant | SD-9 | Confidentiality & Urgency | G-2 | 95% On-Time Delivery | O-2 | 95% User Satisfaction |
| Executive Assistant | SD-9 | Confidentiality & Urgency | G-5 | Zero Breaches | O-5 | Zero Security Incidents |

### Conflict Analysis

**Competing Drivers:**

**Conflict 1: Cost Minimisation vs. Security Requirements (Finance vs. Security)**
- **Stakeholder A**: Finance Business Partner (SD-1) - wants lowest cost vendor
- **Stakeholder B**: IAO/Security Lead (SD-3, SD-4) - requires Cyber Essentials+ certification, enhanced security controls
- **Incompatibility**: Security-certified vendors may command premium pricing; enhanced security requirements reduce vendor pool
- **Resolution Strategy**: **ACCEPT PREMIUM FOR COMPLIANCE**
  - Cyber Essentials+ mandatory (non-negotiable per MOD SbD)
  - Security requirements in RFP ensure all evaluated vendors are compliant
  - Competitive tension among compliant vendors achieves best value within security envelope
  - Finance accepts that security compliance has a cost, justified by risk reduction
- **Decision Authority**: IAO (security non-negotiable), CFO input on budget cap
- **Outcome**: Finance moderately satisfied (cost within budget, may not be absolute lowest); Security fully satisfied

**Conflict 2: Rapid Go-Live vs. Thorough Accreditation (Executive Sponsor vs. IAO)**
- **Stakeholder A**: Executive Sponsor (SD-7) - wants service operational quickly (3-4 months)
- **Stakeholder B**: IAO (SD-3) - requires complete accreditation before go-live
- **Incompatibility**: Accreditation process may extend timeline if security documentation incomplete or findings require remediation
- **Resolution Strategy**: **BUILD ACCREDITATION INTO TIMELINE**
  - Project timeline includes 4-week accreditation buffer before go-live
  - Security requirements mandatory in RFP (vendors prepare documentation early)
  - Parallel security review during vendor implementation (not sequential)
  - Go-live date is post-accreditation, not driving accreditation
- **Decision Authority**: IAO (accreditation sign-off authority)
- **Outcome**: Executive Sponsor accepts realistic timeline; IAO has adequate time for review

### Synergies (Aligned Drivers)

**Synergy 1: Cost Predictability Benefits Multiple Stakeholders (Finance + Service Owner + Executive Sponsor)**
- **Aligned Drivers**: SD-1 (Finance - Cost Predictability), SD-2 (Service Owner - Simplicity), SD-7 (Executive Sponsor - Quick Win)
- **Shared Goal**: G-1 (Predictable Annual Costs)
- **Shared Outcome**: O-1 (£10K-15K Annual Savings)
- **Synergy Benefit**: Single initiative satisfies 3 stakeholders; no trade-offs required
- **Leverage Point**: Fixed-price managed service model delivers cost, simplicity, and demonstrable success

**Synergy 2: Service Quality Benefits All End Users (Marketing + Engineering + Executive Support)**
- **Aligned Drivers**: SD-5 (Marketing - Quality), SD-6 (Engineering - Precision), SD-9 (Executive - Urgency)
- **Shared Goal**: G-2 (95% On-Time Delivery), G-6 (Quality Requirements)
- **Shared Outcome**: O-2 (95% User Satisfaction)
- **Synergy Benefit**: All end users want professional quality and reliable turnaround
- **Leverage Point**: Professional managed service with SLA accountability serves all user needs

**Synergy 3: Security Requirements Protect Organisation (IAO + Security Lead + Executive Assistant)**
- **Aligned Drivers**: SD-3 (IAO - Accreditation), SD-4 (Security - Defence-in-Depth), SD-9 (Executive - Confidentiality)
- **Shared Goal**: G-3 (Accreditation), G-5 (Zero Breaches)
- **Shared Outcome**: O-3 (Accreditation), O-5 (Zero Incidents)
- **Synergy Benefit**: Security controls satisfy compliance, operational security, and user confidentiality needs
- **Leverage Point**: On-premises equipment with secure print release serves all security drivers

---

## Communication & Engagement Plan

### Stakeholder-Specific Messaging

#### Finance Business Partner

**Primary Message**: "This managed print service delivers 20%+ cost savings with fixed, predictable monthly pricing - no more budget surprises from external print shops. All consumables, maintenance, and support included in one simple fee."

**Key Talking Points**:
- Fixed monthly/quarterly cost vs. variable external printing (20%+ savings)
- All-inclusive pricing (no hidden charges, rush fees, or consumables surprises)
- Quarterly cost reporting by department for internal allocation
- Multi-year pricing protection (no unexpected increases)
- ROI payback within first year

**Communication Frequency**: Monthly cost review (first 6 months), then quarterly

**Preferred Channel**: Financial reporting dashboard, quarterly business reviews

**Success Story**: "First full year: £12K savings vs. baseline (28% reduction), zero unplanned charges, budget variance <3%."

---

#### Service Owner (Facilities Manager)

**Primary Message**: "This is your 'set and forget' print service - the vendor handles everything (equipment, consumables, maintenance, support) while you monitor SLAs. Your involvement drops from 3-5 hours/week to less than 1 hour."

**Key Talking Points**:
- Single vendor accountability for all operational aspects
- Self-service portal means users contact vendor directly (not Facilities)
- Proactive consumables management (no stock-outs, no ordering)
- Monthly service reporting demonstrates quality to leadership
- SLA-backed turnaround with service credits for failures

**Communication Frequency**: Weekly during implementation, monthly post-go-live

**Preferred Channel**: Weekly status meetings, monthly service review, Teams channel

**Success Story**: "6 months post-implementation: Admin time down 85% (from 4 hours to 30 minutes/week), user satisfaction 4.6/5.0, zero escalations to Facilities."

---

#### Information Assurance Owner (IAO)

**Primary Message**: "We've built security into the procurement from the start. Every vendor is Cyber Essentials+ certified, all MUST_HAVE security requirements are in the contract, and you'll have 4 weeks for accreditation review before we go live."

**Key Talking Points**:
- Cyber Essentials+ certification mandatory (vendor filter)
- Security requirements (NFR-SEC-001 to NFR-SEC-011) fully specified
- Business Impact Assessment completed during implementation
- Secure configuration baseline documented by vendor
- Right to audit, penetration testing, incident notification all in contract
- Go-live date is post-accreditation (no pressure to sign off early)

**Communication Frequency**: Bi-weekly during procurement, weekly during security review

**Preferred Channel**: Security working group meetings, formal accreditation review sessions

**Success Story**: "Accreditation achieved 2 weeks ahead of schedule. All MUST_HAVE requirements verified, IAMM Level 2 maturity confirmed, zero security findings requiring remediation."

---

#### Marketing Manager

**Primary Message**: "Professional-grade colour accuracy (Delta E < 2) and 24-hour turnaround for your marketing materials. No more colour surprises or missed campaign deadlines. Plus, self-service portal lets you track jobs and reorder easily."

**Key Talking Points**:
- Calibrated equipment for colour accuracy (Delta E < 2)
- Photo Quality profile for marketing materials
- Glossy, matte, and canvas options for variety
- 24-hour standard turnaround, 4-hour urgent option
- Soft proofing available for colour-critical jobs
- Easy reorder function for repeat jobs

**Communication Frequency**: Monthly user group meeting (first 3 months), then quarterly

**Preferred Channel**: Email updates, portal training, user group Teams channel

**Success Story**: "Exhibition materials printed same-day with perfect colour match to digital proofs. Campaign launched on schedule with professional quality."

---

#### Engineering Lead

**Primary Message**: "100% scale accuracy for your technical drawings - verified test prints confirm dimensions are exact. Technical Drawing profile optimised for line precision. Economy mode for draft iterations."

**Key Talking Points**:
- Technical Drawing profile for line precision and scale accuracy
- Verified scale accuracy (test prints provided)
- Technical paper options (vellum, coated bond)
- Economy/Draft mode for cost-effective revisions
- Direct submission from AutoCAD/Revit
- A0+ sizes supported for large drawings

**Communication Frequency**: Monthly user group meeting (first 3 months), then quarterly

**Preferred Channel**: Email updates, CAD workflow documentation, Teams channel

**Success Story**: "Project team printed 50 revision drawings in 2 days at 1/3 previous cost. Scale accuracy verified on site - zero dimension errors."

---

## Change Impact Assessment

### Impact on Stakeholders

| Stakeholder | Current State | Future State | Change Magnitude | Resistance Risk | Mitigation Strategy |
|-------------|---------------|--------------|------------------|-----------------|---------------------|
| **Finance** | Variable external print costs, budget uncertainty | Fixed monthly fee, predictable costs | MEDIUM | LOW | Demonstrate TCO savings in procurement |
| **Service Owner** | 3-5 hours/week coordination with external vendors | ≤1 hour/week monitoring SLAs | HIGH | LOW (champion) | Early involvement in vendor selection, training on portal |
| **IAO** | No print service accreditation | JSP 440 accredited service | MEDIUM | MEDIUM | Accreditation buffer in timeline, clear documentation |
| **Security Lead** | Unknown external print security | On-premises with full controls | MEDIUM | LOW (champion) | Security requirements defined early, audit rights secured |
| **Marketing** | External print shop, colour inconsistency, delays | On-demand professional quality, 24-hour SLA | HIGH | LOW | Training on portal, colour proofing demo |
| **Engineering** | External print, scale issues, slow reprints | Technical profiles, verified accuracy | HIGH | LOW | CAD workflow documentation, test prints |
| **Executive Assistants** | External print, confidentiality concerns | Secure print release, 4-hour urgent | MEDIUM | LOW | White-glove training, secure print demo |
| **Procurement** | Standard procurement process | Security-enhanced RFP requirements | MEDIUM | LOW | Clear evaluation criteria, G-Cloud route |

### Change Readiness

**Champions** (Enthusiastic supporters):
- **Service Owner (SD-2)**: Primary beneficiary of operational simplification; strong advocate
- **Security Lead (SD-4)**: Defence-in-depth controls exceed current state; supportive
- **Marketing Manager (SD-5)**: Professional quality solves long-standing pain point; advocate
- **Engineering Lead (SD-6)**: Technical precision addresses critical need; supportive

**Fence-sitters** (Neutral, need convincing):
- **Finance Business Partner (SD-1)**: Supportive of cost savings, but cautious about security premium
  - **Convince with**: TCO analysis showing savings even with compliant vendors
- **IAO (SD-3)**: Supportive of security model, but cautious about timeline pressure
  - **Convince with**: Realistic timeline with accreditation buffer

**Resisters** (None identified):
- No significant resistance expected due to clear benefits for all stakeholders

---

## Risk Register (Stakeholder-Related)

### Risk R-1: Limited Compliant Vendor Pool Increases Costs

**Related Stakeholders**: Finance Business Partner, Procurement Lead, IAO

**Risk Description**: Mandatory Cyber Essentials+ certification reduces vendor pool, potentially limiting competitive tension and increasing service costs above budget.

**Impact on Goals**: G-1 (Cost Predictability) - may not achieve 20% savings target

**Probability**: MEDIUM

**Impact**: MEDIUM

**Mitigation Strategy**:
- Market research to validate compliant vendor pool before RFP
- G-Cloud search for pre-qualified vendors
- Evaluation criteria weight cost (30%) to incentivise competitive pricing
- Budget includes 10% contingency for security premium

**Contingency Plan**: If no vendors meet budget, revisit scope (reduced SLA, simplified media options) or increase budget with executive approval.

---

### Risk R-2: Accreditation Delays Go-Live

**Related Stakeholders**: IAO, Executive Sponsor

**Risk Description**: Security review identifies findings requiring vendor remediation, delaying accreditation and go-live date.

**Impact on Goals**: G-3 (Accreditation), project timeline

**Probability**: MEDIUM

**Impact**: MEDIUM

**Mitigation Strategy**:
- 4-week accreditation buffer in project timeline
- Security requirements clearly specified in RFP
- Vendor documentation requirements in contract
- Parallel security review during implementation

**Contingency Plan**: If critical findings identified, prioritise remediation; negotiate vendor timeline and service credits for delay.

---

### Risk R-3: User Adoption of Self-Service Portal Low

**Related Stakeholders**: Service Owner, End Users (Marketing, Engineering, Executive Assistants)

**Risk Description**: Users continue contacting Facilities instead of using self-service portal, undermining admin overhead reduction goal.

**Impact on Goals**: G-4 (Minimise Admin Overhead)

**Probability**: MEDIUM

**Impact**: LOW

**Mitigation Strategy**:
- User training before go-live (portal walkthrough, FAQ)
- Communication campaign emphasising self-service benefits
- Facilities redirect users to portal (not handle requests)
- Monthly adoption metrics tracked

**Contingency Plan**: If adoption <50% after 3 months, additional training, consider mandatory portal use policy.

---

### Risk R-4: Service Quality Issues Damage User Satisfaction

**Related Stakeholders**: Marketing Manager, Engineering Lead, Service Owner

**Risk Description**: Service provider delivers inconsistent quality (colour drift, scale inaccuracy) causing user complaints and low satisfaction.

**Impact on Goals**: G-6 (Quality Requirements), O-2 (User Satisfaction)

**Probability**: LOW

**Impact**: HIGH

**Mitigation Strategy**:
- Quality SLAs with service credits in contract
- Calibration certificates required (weekly/monthly)
- Quality profile testing during acceptance
- Monthly quality metrics review

**Contingency Plan**: Invoke SLA service credits; escalate to vendor management; consider contract termination if systemic issues persist.

---

## Governance & Decision Rights

### Decision Authority Matrix (RACI)

| Decision Type | Responsible | Accountable | Consulted | Informed |
|---------------|-------------|-------------|-----------|----------|
| **Budget Approval** | Finance BP | Executive Sponsor | Procurement | All stakeholders |
| **Vendor Selection** | Procurement Lead | Executive Sponsor | Security, Service Owner | All stakeholders |
| **Security Accreditation** | IAO | IAO | Security Lead | Executive Sponsor |
| **Contract Signature** | Contract Manager | Executive Sponsor | Procurement, Legal | Finance, Security |
| **SLA Definition** | Service Owner | Executive Sponsor | End Users, Security | Finance |
| **Go-Live Decision** | Service Owner | Executive Sponsor | IAO (must sign off) | All stakeholders |
| **Service Issue Escalation** | Service Owner | Executive Sponsor | Vendor | End Users |
| **Contract Variation** | Contract Manager | Executive Sponsor | Finance, Procurement | All stakeholders |

### Escalation Path

**Level 1: Service Owner (Day-to-Day)**
- Operational decisions (job priorities, user queries, minor service issues)
- Response time: Same business day
- Escalate if: SLA breach, security incident, budget impact

**Level 2: Executive Sponsor (Steering Committee)**
- Scope changes, budget variations, vendor performance issues
- Frequency: Monthly steering committee, ad-hoc for urgent issues
- Escalate if: Budget overrun >10%, critical security finding, vendor dispute

**Level 3: Director Level (Critical Decisions)**
- Contract termination, major budget increase, strategic direction change
- Frequency: As needed
- Authority: Final decision on project continuation

---

## Validation & Sign-off

### Stakeholder Review

| Stakeholder | Review Date | Comments | Status |
|-------------|-------------|----------|--------|
| Executive Sponsor | [TBD] | [Pending review] | PENDING |
| Finance Business Partner | [TBD] | [Pending review] | PENDING |
| Service Owner | [TBD] | [Pending review] | PENDING |
| IAO | [TBD] | [Pending review] | PENDING |
| Security Lead | [TBD] | [Pending review] | PENDING |
| Marketing Manager | [TBD] | [Pending review] | PENDING |
| Engineering Lead | [TBD] | [Pending review] | PENDING |

### Document Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| **Executive Sponsor** | Operations Director | _________ | [DATE] |
| **Service Owner** | Facilities Manager | _________ | [DATE] |
| **IAO** | Information Assurance Owner | _________ | [DATE] |

---

## Success Metrics Summary

### Key Performance Indicators Dashboard

| Metric Category | KPI | Baseline | Target | Timeline | Owner |
|-----------------|-----|----------|--------|----------|-------|
| **Financial** | Annual Print Cost | £35K-45K | £24K-30K | 12 months | Finance |
| **Financial** | Cost Variance | ±50% | ±5% | Ongoing | Finance |
| **Operational** | Standard Job On-Time | N/A | 95% within 24 hrs | 6 months | Service Owner |
| **Operational** | Urgent Job On-Time | N/A | 99% within 4 hrs | 6 months | Service Owner |
| **Operational** | Admin Overhead | 3-5 hrs/week | ≤1 hr/week | 6 months | Service Owner |
| **Security** | Accreditation Status | Not accredited | Accredited | Before go-live | IAO |
| **Security** | Security Incidents | Unknown | 0 High/Critical | Ongoing | Security Lead |
| **Quality** | User Satisfaction | ~3.0/5.0 | 4.5/5.0 | 12 months | Service Owner |
| **Quality** | Colour Accuracy | Variable | Delta E < 2 | 6 months | Service Owner |
| **Quality** | Quality Complaints | 5-10/month | <2/month | 6 months | Service Owner |

### Stakeholder Satisfaction Targets

| Stakeholder | Driver Addressed | Success Criteria | Measurement |
|-------------|------------------|------------------|-------------|
| **Finance** | SD-1: Cost Predictability | 20%+ cost savings, <5% variance | Annual cost review |
| **Service Owner** | SD-2: Operational Simplicity | ≤1 hr/week admin, 95% user satisfaction | Monthly tracking |
| **IAO** | SD-3: Accreditation | JSP 440 sign-off before go-live | Formal sign-off |
| **Security Lead** | SD-4: Data Protection | Zero incidents, 100% audit coverage | Quarterly review |
| **Marketing** | SD-5: Quality & Turnaround | Delta E < 2, 24-hour SLA met | Quarterly survey |
| **Engineering** | SD-6: Technical Precision | 100% scale accuracy, technical profile available | Quarterly survey |
| **Executive Sponsor** | SD-7: Quick Win | Project delivered on time/budget, stakeholders satisfied | Project close-out |

### Leading vs Lagging Indicators

**Leading Indicators** (Early Warning Signals):
- Month 1: Compliant vendors identified (>3 options)
- Month 2: Budget confirmed, RFP issued
- Month 3: Vendor selected, contract signed
- Month 4: Equipment installed, security review underway
- Month 5: Accreditation complete, user training delivered

**Lagging Indicators** (Final Validation):
- Month 6: Service fully operational, SLAs tracked
- Month 9: User satisfaction survey (target 4.0+)
- Month 12: Full year cost savings validated, satisfaction sustained

### Outcome Achievement Summary

| Outcome | Description | Value Created | Status |
|---------|-------------|---------------|--------|
| **O-1** | £10K-15K Annual Savings | 20-35% cost reduction vs. baseline | Target |
| **O-2** | 95% User Satisfaction | Professional service, reliable turnaround | Target |
| **O-3** | Accreditation Achieved | JSP 440 compliance, OFFICIAL data handling authorised | Target |
| **O-4** | 80% Admin Reduction | Facilities capacity freed for higher-value work | Target |
| **O-5** | Zero Security Incidents | Protected from data breach consequences | Target |

---

## Appendices

### Appendix A: Related Documents

- [Requirements Document](/projects/006-large-format-printer/requirements.md) - Comprehensive business and technical requirements
- [MOD Secure by Design Assessment](/projects/006-large-format-printer/mod-secure-by-design.md) - Security assessment identifying enhanced requirements
- [Architecture Principles](/.arckit/memory/architecture-principles.md) - Enterprise architecture principles

---

**Generated by**: ArcKit `/arckit.stakeholders` command
**Generated on**: 2026-01-24
**ArcKit Version**: 0.11.0
**Project**: Large Format Printing Service (Project 006)
**Model**: Claude Opus 4.5
