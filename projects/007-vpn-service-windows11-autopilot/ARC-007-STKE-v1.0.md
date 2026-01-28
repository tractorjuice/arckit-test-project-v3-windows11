# Stakeholder Drivers & Goals Analysis: VPN Service for Windows 11 and Autopilot

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-007-STKE-v1.0 |
| **Document Type** | Stakeholder Drivers & Goals Analysis |
| **Project** | VPN Service for Windows 11 and Autopilot (Project 007) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 1.0 |
| **Created Date** | 2026-01-24 |
| **Last Modified** | 2026-01-24 |
| **Review Cycle** | Quarterly |
| **Next Review Date** | 2026-04-24 |
| **Owner** | IT Security & Infrastructure |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | Project Team, Security Team, Infrastructure Team, Desktop Engineering, Service Desk, Finance |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2026-01-24 | ArcKit AI | Initial creation from `/arckit.stakeholders` command | PENDING | PENDING |

---

## Executive Summary

### Purpose
This document identifies key stakeholders for the VPN Service for Windows 11 and Autopilot project, their underlying drivers (motivations, concerns, needs), how these drivers manifest into goals, and the measurable outcomes that will satisfy those goals. This analysis ensures stakeholder alignment and provides traceability from individual concerns to project success metrics.

### Key Findings

The VPN Service project demonstrates **strong stakeholder alignment** around the core objective of enabling secure, seamless remote access for the hybrid workforce on Windows 11 devices. The project benefits from an existing Cisco licensing agreement, which satisfies Finance's cost efficiency driver while enabling Security's Zero Trust requirements. Key stakeholder groups (Security, Infrastructure, Desktop Engineering, End Users) are united in wanting a "zero-touch" VPN experience that connects automatically without user intervention.

The primary tension exists between **Security's comprehensive authentication requirements** (MFA, certificate-based auth, device compliance) and **End Users' desire for frictionless connectivity**. This conflict is resolved through the Always-On VPN configuration with Azure AD SSO and Primary Refresh Token (PRT) support, which provides strong authentication without repetitive user interaction.

A secondary tension exists between **Desktop Engineering's desire for deployment speed** (Autopilot ESP integration) and **Infrastructure's cautious approach** to avoid overloading VPN concentrators during mass deployments. This is resolved through phased rollout and capacity monitoring.

### Critical Success Factors

- **Zero-Touch Deployment Achieved**: VPN fully configured within 30 minutes of Autopilot completion with no manual IT intervention
- **99.9% Service Availability**: VPN gateway infrastructure meets uptime SLA during business hours
- **<5% VPN Support Calls**: Automatic connectivity reduces service desk burden to target level
- **100% Zero Trust Compliance**: All VPN connections require MFA, device compliance, and certificate authentication
- **ARM64 Feature Parity**: Native ARM64 client provides identical functionality to x64 version for Copilot+ PCs

### Stakeholder Alignment Score

**Overall Alignment**: HIGH

Strong alignment on the fundamental need for secure, automated VPN deployment integrated with Windows 11 and Autopilot. The existing Cisco AnyConnect licensing eliminates procurement conflict. Security and Infrastructure are aligned on Zero Trust requirements. End Users benefit from automatic connectivity without learning new tools. Minor tensions (security vs. convenience, speed vs. stability) resolved through technical design decisions (Always-On VPN with SSO, phased rollout).

---

## Stakeholder Identification

### Internal Stakeholders

| Stakeholder | Role/Department | Influence | Interest | Engagement Strategy |
|-------------|----------------|-----------|----------|---------------------|
| IT Security Lead | Information Security | HIGH | HIGH | Architecture decisions, security requirements sign-off, Zero Trust validation |
| Infrastructure Lead | IT Infrastructure | HIGH | HIGH | VPN gateway management, capacity planning, operations handover |
| Desktop Engineering Lead | Endpoint Management | HIGH | HIGH | Intune deployment, Autopilot integration, client packaging |
| CIO/IT Director | Executive Sponsor | HIGH | MEDIUM | Budget approval, strategic alignment, steering committee |
| Service Desk Manager | IT Support | MEDIUM | HIGH | Support procedures, user communication, incident management |
| Network Security Engineer | Network Security | MEDIUM | HIGH | Firewall rules, split tunnel configuration, traffic analysis |
| Enterprise Architect | Architecture | MEDIUM | MEDIUM | Architecture principles compliance, integration design |
| Finance/IT Procurement | Finance | MEDIUM | MEDIUM | Licensing validation, cost management |
| End Users (Remote Workers) | Business Units | LOW | HIGH | User acceptance, feedback, productivity impact |
| Business Continuity Manager | Risk Management | LOW | MEDIUM | DR requirements, resilience validation |

### External Stakeholders

| Stakeholder | Organization | Relationship | Influence | Interest |
|-------------|--------------|--------------|-----------|----------|
| Cisco Account Manager | Cisco Systems | Vendor | MEDIUM | HIGH |
| Microsoft TAM | Microsoft | Platform Partner | LOW | MEDIUM |
| Managed Security Provider | MSSP | Supplier | LOW | LOW |

### Stakeholder Power-Interest Grid

```
HIGH POWER
    │
    │  [Manage Closely]          │  [Keep Satisfied]
    │  - IT Security Lead         │  - CIO/IT Director
    │  - Infrastructure Lead      │  - Finance
    │  - Desktop Engineering Lead │  - Enterprise Architect
    │                             │
────┼──────────────────────────────┼─────────────────
    │  [Keep Informed]            │  [Monitor]
    │  - End Users                │  - Microsoft TAM
    │  - Service Desk Manager     │  - MSSP
    │  - Network Security Eng.    │
    │  - BC Manager               │
    │                             │
LOW POWER                                        HIGH INTEREST
```

---

## Stakeholder Drivers Analysis

### SD-1: IT Security Lead - Zero Trust Security Enforcement

**Stakeholder**: IT Security Lead

**Driver Category**: COMPLIANCE | RISK

**Driver Statement**: Ensure all remote access adheres to Zero Trust security principles with multi-factor authentication, certificate-based device verification, and conditional access enforcement to protect corporate resources from unauthorized access and compromised devices.

**Context & Background**:
The organisation has adopted a Zero Trust security model (Architecture Principle 2) requiring "never trust, always verify" for all access requests. Remote access via VPN represents a critical control point:
- VPN provides network-level access to internal resources (higher risk than application-level access)
- Hybrid workforce (60%+ working remotely at least part-time) expands attack surface
- Recent industry breaches have exploited VPN vulnerabilities and stolen credentials
- Regulatory requirements (ISO 27001, Cyber Essentials) mandate strong remote access controls

The IT Security Lead is accountable for security incidents and audit findings. A VPN breach would cause significant reputational and career damage. The Security Lead's success is measured by zero security incidents and clean audit results.

**Driver Intensity**: CRITICAL

**Enablers** (What would help):
- Azure AD/Entra ID integration for SSO and MFA (existing investment)
- Certificate-based machine authentication (verifies managed device)
- Conditional Access policy enforcement (device compliance, user risk)
- Comprehensive audit logging to SIEM (Microsoft Sentinel integration)
- Automatic reconnection without credential prompts (security without friction)

**Blockers** (What would hinder):
- User resistance to MFA prompts (pressure to weaken security)
- Legacy applications requiring VPN without modern authentication
- Performance impact from security checks (user complaints)
- Complexity of certificate lifecycle management
- Audit logging gaps or retention issues

**Related Stakeholders**:
- Infrastructure Lead (implements security controls)
- Desktop Engineering Lead (deploys certificates and client)
- End Users (experience security controls)

---

### SD-2: Infrastructure Lead - Operational Stability and Scalability

**Stakeholder**: Infrastructure Lead

**Driver Category**: OPERATIONAL | RISK

**Driver Statement**: Ensure VPN infrastructure maintains 99.9% availability during business hours while supporting 150% of expected concurrent users, with clear operational procedures and minimal unplanned maintenance.

**Context & Background**:
The Infrastructure Lead manages the existing Cisco VPN gateway infrastructure (ASA/Firepower). Current concerns:
- Existing VPN infrastructure is stable but approaching capacity limits during peak remote work periods
- Windows 11 rollout will increase VPN usage as new devices are deployed
- Autopilot deployment could create "thundering herd" scenarios overwhelming VPN concentrators
- Team lacks deep expertise in AnyConnect client troubleshooting (historically low volume)

The Infrastructure Lead's success is measured by uptime metrics and incident counts. A major VPN outage affecting remote workers would be highly visible and career-impacting. The lead prefers conservative, proven approaches over rapid innovation.

**Driver Intensity**: HIGH

**Enablers** (What would help):
- Capacity planning data (expected concurrent users, peak times)
- Phased rollout approach (avoid mass deployment spikes)
- Clear runbooks and escalation procedures
- Vendor support engagement (Cisco TAC access)
- Monitoring and alerting integration (existing tools)

**Blockers** (What would hinder):
- Aggressive deployment timeline without capacity validation
- New client versions with unknown bugs
- Complex configuration requiring deep AnyConnect expertise
- Insufficient testing before production rollout
- Poor coordination with Desktop Engineering on deployment timing

**Related Stakeholders**:
- Desktop Engineering Lead (deployment coordination)
- Service Desk Manager (incident handoff)
- IT Security Lead (security requirements may add complexity)

---

### SD-3: Desktop Engineering Lead - Seamless Autopilot Integration

**Stakeholder**: Desktop Engineering Lead

**Driver Category**: OPERATIONAL | PERSONAL

**Driver Statement**: Achieve zero-touch VPN deployment where VPN client is fully installed and configured during Autopilot ESP without any manual IT intervention, reducing device provisioning time and demonstrating cloud-first management excellence.

**Context & Background**:
The Desktop Engineering team is responsible for the Windows 11 migration project (Project 001) and owns the Autopilot deployment pipeline. VPN deployment is a critical dependency:
- Current VPN deployment requires manual steps post-Autopilot (user self-install or IT visit)
- Manual VPN setup adds 30-60 minutes to device provisioning and creates support calls
- ARM64 devices (Copilot+ PCs) require native client - no room for x64 emulation workarounds
- Desktop Engineering's OKR includes "100% zero-touch provisioning" - VPN is a gap

The Desktop Engineering Lead sees this project as an opportunity to demonstrate cloud-first endpoint management expertise and complete the Autopilot automation journey. Success here supports career advancement and team credibility.

**Driver Intensity**: HIGH

**Enablers** (What would help):
- Cisco AnyConnect Win32 app packaging (.intunewin format)
- ESP blocking app configuration (VPN installs during device setup)
- Architecture detection for ARM64/x64 packages
- Configuration profile deployment via Intune OMA-URI
- Clear Cisco documentation for Intune deployment

**Blockers** (What would hinder):
- AnyConnect packaging complexity or Cisco restrictions
- ESP timeout issues (30-minute limit)
- ARM64 client availability or feature gaps
- Network connectivity chicken-and-egg (need network to download VPN client)
- Infrastructure team caution slowing deployment

**Related Stakeholders**:
- Infrastructure Lead (deployment coordination)
- IT Security Lead (security configuration requirements)
- Cisco Account Manager (client packaging guidance)

---

### SD-4: End Users (Remote Workers) - Frictionless Connectivity

**Stakeholder**: End Users (Remote Workers)

**Driver Category**: OPERATIONAL | PERSONAL

**Driver Statement**: Achieve seamless, automatic VPN connectivity without manual steps, repeated login prompts, or confusing error messages - "it just works" when working remotely.

**Context & Background**:
Remote workers depend on VPN for access to corporate applications, file shares, and internal services. Current pain points (based on service desk data and user feedback):
- Manual VPN connection required (users forget or can't troubleshoot)
- Multiple authentication prompts (VPN login + MFA + application login)
- Confusing error messages when VPN fails ("contact administrator")
- Inconsistent behavior between home and office networks
- Performance issues (slow connections, disconnections during video calls)

End users measure IT by "does it work?" - they don't care about the technology, only the outcome. VPN issues directly impact productivity and create frustration with IT. Users will find workarounds (personal devices, shadow IT) if VPN is too difficult.

**Driver Intensity**: HIGH

**Enablers** (What would help):
- Always-On VPN (automatic connection, no user action)
- Azure AD SSO (no separate VPN credentials)
- PRT-based authentication (silent re-authentication)
- Clear status indicator (connected/disconnected visible)
- Split tunnelling (Teams/Zoom not affected by VPN)
- Self-service diagnostics for advanced users

**Blockers** (What would hinder):
- Frequent MFA prompts (authentication fatigue)
- Complex manual connection steps
- Cryptic error messages
- VPN blocking video conferencing quality
- Forced full-tunnel routing (slow internet)
- Inconsistent behavior requiring IT intervention

**Related Stakeholders**:
- Service Desk Manager (support escalations)
- IT Security Lead (security controls impact UX)
- Desktop Engineering Lead (deployment experience)

---

### SD-5: Service Desk Manager - Reduced VPN Support Burden

**Stakeholder**: Service Desk Manager

**Driver Category**: OPERATIONAL | PERSONAL

**Driver Statement**: Reduce VPN-related support calls to less than 5% of remote users per month through automatic connectivity, clear self-service options, and effective troubleshooting tools.

**Context & Background**:
The Service Desk handles first-line support for all IT issues. VPN-related calls are a significant burden:
- Currently ~15% of remote users contact service desk about VPN issues monthly
- VPN troubleshooting is time-consuming (average 20 minutes per call)
- First-call resolution rate for VPN issues is low (40%) - many escalations
- Service Desk staff lack deep VPN expertise (rely on escalation to Infrastructure)
- Windows 11 deployment will temporarily increase support volume

The Service Desk Manager's success is measured by call volume, first-call resolution, and customer satisfaction. Reducing VPN calls frees capacity for higher-value support and improves metrics. Clear runbooks and user self-service directly benefit the team.

**Driver Intensity**: MEDIUM

**Enablers** (What would help):
- Automatic VPN connection (eliminates "how do I connect" calls)
- Clear error messages with actionable guidance
- Self-service troubleshooting for users (connection reset, diagnostics)
- Comprehensive runbooks for Service Desk (known issues, solutions)
- Escalation path to Desktop Engineering/Infrastructure
- User communication before rollout (training, FAQ)

**Blockers** (What would hinder):
- Complex VPN configuration users can't self-diagnose
- Undocumented error codes
- No self-service options (all issues require IT contact)
- Insufficient training for Service Desk on new client
- Poor user communication creating confusion during rollout

**Related Stakeholders**:
- End Users (support recipients)
- Desktop Engineering Lead (deployment quality)
- Infrastructure Lead (escalation path)

---

### SD-6: Finance/IT Procurement - Cost Efficiency Through Existing Licensing

**Stakeholder**: Finance/IT Procurement

**Driver Category**: FINANCIAL

**Driver Statement**: Maximise utilisation of existing Cisco AnyConnect licensing agreement to deliver VPN capability with no additional per-user licensing costs, demonstrating ROI on existing infrastructure investment.

**Context & Background**:
The organisation has an existing enterprise agreement with Cisco that includes AnyConnect licensing:
- AnyConnect licenses already purchased as part of Cisco umbrella deal
- Additional VPN licensing would require new procurement (budget not allocated)
- Finance is under pressure to demonstrate ROI on existing IT investments
- Alternative VPN solutions would require new licensing and infrastructure

Finance's success is measured by cost efficiency and budget compliance. Using existing licensing avoids procurement delays and demonstrates fiscal responsibility. This creates a strong preference for Cisco AnyConnect over alternatives.

**Driver Intensity**: MEDIUM

**Enablers** (What would help):
- Confirmation existing licenses cover all users
- No additional per-user charges for required features
- Leverage existing Cisco support contracts
- Avoid infrastructure changes requiring capital expenditure

**Blockers** (What would hinder):
- Licensing gaps requiring additional purchase
- Features requiring premium licensing tier
- Hidden costs (professional services, training)
- Infrastructure upgrades to support new client version

**Related Stakeholders**:
- CIO/IT Director (budget owner)
- Infrastructure Lead (infrastructure costs)
- Cisco Account Manager (licensing confirmation)

---

### SD-7: CIO/IT Director - Strategic Enablement of Hybrid Work

**Stakeholder**: CIO/IT Director (Executive Sponsor)

**Driver Category**: STRATEGIC | PERSONAL

**Driver Statement**: Deliver secure, reliable remote access as a strategic enabler of the organisation's hybrid work model, demonstrating IT's ability to support business agility while maintaining security posture.

**Context & Background**:
The CIO sponsors the Windows 11 Transformation Programme, of which this VPN project is a component. Strategic priorities:
- Enable hybrid work model (strategic business direction)
- Modernise endpoint management (cloud-first strategy)
- Maintain security posture (Board-level visibility on cyber risk)
- Demonstrate IT value to business (productivity enablement)

The CIO's success is measured by strategic project delivery and stakeholder satisfaction. VPN is a foundational capability for hybrid work - failure would undermine confidence in the broader Windows 11 programme. Success builds credibility for future IT initiatives.

**Driver Intensity**: MEDIUM

**Enablers** (What would help):
- Alignment with Windows 11 rollout timeline
- Integration with Autopilot (cloud-first story)
- Zero Trust compliance (security narrative)
- Positive user feedback (business satisfaction)
- Budget efficiency (existing licensing)

**Blockers** (What would hinder):
- Deployment delays impacting Windows 11 programme
- Security incidents damaging IT reputation
- User complaints reaching business leadership
- Budget overruns requiring additional approval
- Technical failures during high-visibility rollout

**Related Stakeholders**:
- All internal stakeholders (executive oversight)
- Business Continuity Manager (resilience requirements)

---

### SD-8: Network Security Engineer - Secure Traffic Management

**Stakeholder**: Network Security Engineer

**Driver Category**: OPERATIONAL | COMPLIANCE

**Driver Statement**: Ensure VPN traffic is properly segmented, logged, and monitored with appropriate split tunnel configuration that optimises performance while maintaining security visibility.

**Context & Background**:
The Network Security Engineer manages firewall rules, network segmentation, and traffic analysis. VPN traffic management considerations:
- Full-tunnel VPN creates performance issues and increases gateway load
- Split-tunnel improves performance but reduces security visibility
- Microsoft 365 traffic optimisation is recommended (Microsoft guidance)
- Network monitoring tools need visibility into VPN session data
- DNS security requires proper split-DNS configuration

The Network Security Engineer's success is measured by security posture and network performance. Poor split tunnel configuration could create security gaps (unmonitored traffic) or performance issues (user complaints). Balance is required.

**Driver Intensity**: MEDIUM

**Enablers** (What would help):
- Clear split tunnel policy (what traffic goes where)
- Microsoft 365 optimisation following Microsoft guidance
- DNS split configuration documentation
- SIEM integration for VPN logs (Microsoft Sentinel)
- Network monitoring for VPN traffic analysis

**Blockers** (What would hinder):
- Unclear requirements from Security Lead
- Complex split tunnel configuration in AnyConnect
- Logging gaps for split tunnel traffic
- Performance complaints driving security compromises
- Insufficient testing of split tunnel rules

**Related Stakeholders**:
- IT Security Lead (policy decisions)
- Infrastructure Lead (implementation)
- End Users (performance impact)

---

## Driver-to-Goal Mapping

### Goal G-1: Achieve Zero-Touch VPN Deployment

**Derived From Drivers**: SD-3 (Desktop Engineering - Autopilot Integration), SD-4 (End Users - Frictionless), SD-7 (CIO - Strategic Enablement)

**Goal Owner**: Desktop Engineering Lead

**Goal Statement**: Deploy Cisco AnyConnect VPN client automatically during Windows Autopilot ESP phase with full configuration, achieving functional VPN connectivity within 30 minutes of Autopilot completion with zero manual IT intervention.

**Why This Matters**: Zero-touch deployment eliminates the manual provisioning gap, reduces support calls, accelerates device readiness, and demonstrates cloud-first management maturity. This directly enables the hybrid work strategy.

**Success Metrics**:

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| Manual VPN interventions | 100% (current) | 0% | Deployment tracking |
| Time to VPN-ready | 60+ minutes (post-Autopilot) | <30 minutes (during ESP) | Autopilot telemetry |
| ESP success rate | N/A | >95% | Intune reporting |
| ARM64 deployment parity | N/A | 100% feature parity | Functional testing |

**Dependencies**:
- AnyConnect Win32 app packaging complete
- Intune configuration profiles tested
- ESP timeout handling validated
- ARM64 native client available from Cisco

**Risks to Goal Achievement**:
- ESP timeout (30-minute limit) exceeded by complex installations
- Network bootstrap issue (need connectivity to download VPN client)
- ARM64 client feature gaps or bugs
- Cisco packaging restrictions

---

### Goal G-2: Maintain 99.9% VPN Service Availability

**Derived From Drivers**: SD-2 (Infrastructure - Operational Stability), SD-7 (CIO - Strategic Enablement), SD-4 (End Users - Connectivity)

**Goal Owner**: Infrastructure Lead

**Goal Statement**: Achieve 99.9% VPN gateway availability during business hours (08:00-18:00 Mon-Fri) with capacity to support 150% of expected peak concurrent users.

**Why This Matters**: VPN availability directly impacts remote worker productivity. Outages affect the entire hybrid workforce simultaneously, creating business impact and IT credibility damage.

**Success Metrics**:

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| Service availability | 99.5% (current) | 99.9% | Infrastructure monitoring |
| Unplanned downtime | 4 hours/month | <45 minutes/month | Incident records |
| Peak concurrent capacity | 100% | 150% headroom | Load testing |
| Mean time to recover | 60 minutes | <30 minutes | Incident analysis |

**Dependencies**:
- Current infrastructure health verified
- Capacity planning completed
- DR/failover procedures documented
- Monitoring and alerting operational

**Risks to Goal Achievement**:
- Unexpected capacity demand from Windows 11 rollout surge
- Infrastructure hardware failure (aging equipment)
- Cisco software bugs in new client version
- Insufficient DR capability

---

### Goal G-3: Enforce Zero Trust VPN Access Controls

**Derived From Drivers**: SD-1 (Security - Zero Trust), SD-8 (Network Security - Traffic Management)

**Goal Owner**: IT Security Lead

**Goal Statement**: Implement Zero Trust access controls requiring MFA, certificate-based device authentication, and Conditional Access compliance checks for all VPN connections, with 100% audit logging to SIEM.

**Why This Matters**: Zero Trust compliance is mandatory per architecture principles. VPN is a critical control point for network access - weak VPN security undermines the entire security model.

**Success Metrics**:

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| MFA enforcement | Partial | 100% | Conditional Access reporting |
| Certificate authentication | 0% | 100% | VPN gateway logs |
| Device compliance check | Partial | 100% | Conditional Access reporting |
| Audit log coverage | Partial | 100% | SIEM validation |
| Security incidents | N/A | 0 | Incident tracking |

**Dependencies**:
- Azure AD Conditional Access policies configured
- PKI infrastructure for certificate deployment (Project 005 dependency)
- SIEM integration completed
- Device compliance policies defined in Intune

**Risks to Goal Achievement**:
- Certificate deployment delays (PKI dependency)
- User pushback on MFA prompts
- Conditional Access policy conflicts
- Logging gaps in split tunnel scenarios

---

### Goal G-4: Reduce VPN Support Calls to <5% of Users

**Derived From Drivers**: SD-5 (Service Desk - Reduced Burden), SD-4 (End Users - Frictionless), SD-3 (Desktop Engineering - Zero-Touch)

**Goal Owner**: Service Desk Manager

**Goal Statement**: Reduce monthly VPN-related support calls from 15% of remote users to less than 5% through automatic connectivity, clear error messages, and self-service troubleshooting options.

**Why This Matters**: Reduced support burden frees Service Desk capacity, improves first-call resolution, and indicates successful user experience. This is a key measure of deployment success.

**Success Metrics**:

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| Monthly VPN support calls | 15% of remote users | <5% | Service desk reporting |
| First-call resolution | 40% | >70% | Service desk metrics |
| Average handle time | 20 minutes | <10 minutes | Service desk metrics |
| User satisfaction (VPN) | N/A | 4.0/5.0 | User survey |

**Dependencies**:
- Always-On VPN working reliably
- Clear error messages implemented
- Self-service troubleshooting documented
- Service Desk runbooks completed
- User communication before rollout

**Risks to Goal Achievement**:
- Technical issues causing support surge during rollout
- Complex error scenarios beyond self-service
- Insufficient Service Desk training
- User communication failure

---

### Goal G-5: Achieve Zero Additional Licensing Cost

**Derived From Drivers**: SD-6 (Finance - Cost Efficiency), SD-7 (CIO - Strategic)

**Goal Owner**: Finance/IT Procurement

**Goal Statement**: Deliver VPN capability using existing Cisco AnyConnect licensing with no additional per-user licensing costs, maximising ROI on current Cisco investment.

**Why This Matters**: Budget efficiency demonstrates fiscal responsibility and avoids procurement delays. Existing licensing enables faster project approval and delivery.

**Success Metrics**:

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| Additional licensing cost | N/A | £0 | Procurement records |
| Users covered by existing license | TBD | 100% | License audit |
| Infrastructure upgrade cost | N/A | Within approved budget | Finance tracking |
| Professional services cost | N/A | Minimal (internal delivery) | Project budget |

**Dependencies**:
- Cisco licensing confirmation (all users covered)
- Feature requirements met by current license tier
- No infrastructure upgrades requiring CapEx

**Risks to Goal Achievement**:
- Licensing gap discovery (unexpected user count)
- Premium features required (additional license tier)
- Infrastructure upgrade needs (capacity, hardware refresh)

---

### Goal G-6: Enable Seamless User Experience

**Derived From Drivers**: SD-4 (End Users - Frictionless), SD-5 (Service Desk - Reduced Burden), SD-7 (CIO - Strategic)

**Goal Owner**: Desktop Engineering Lead

**Goal Statement**: Deliver Always-On VPN with Azure AD SSO providing automatic, transparent connectivity requiring no user action beyond initial device setup.

**Why This Matters**: User experience determines adoption and satisfaction. Frictionless connectivity supports productivity and reduces shadow IT workarounds.

**Success Metrics**:

| Metric | Baseline | Target | Measurement Method |
|--------|----------|--------|-------------------|
| Manual connection required | Yes (current) | No (automatic) | Functional testing |
| Authentication prompts per day | Multiple | ≤1 (initial login only) | User feedback |
| Connection establishment time | N/A | <10 seconds (95th percentile) | Performance monitoring |
| User satisfaction | N/A | 4.0/5.0 | User survey |
| Split tunnel performance | N/A | No Teams/Zoom impact | User feedback |

**Dependencies**:
- Always-On VPN configuration validated
- Azure AD SSO with PRT working
- Split tunnel configuration optimised
- Trusted Network Detection configured

**Risks to Goal Achievement**:
- SSO integration issues with AnyConnect
- PRT-based authentication failures
- Split tunnel misconfiguration affecting applications
- Always-On reconnection reliability issues

---

## Goal-to-Outcome Mapping

### Outcome O-1: 100% Zero-Touch VPN Provisioning

**Derived From Goal**: G-1 (Zero-Touch Deployment)

**Outcome Statement**: All Windows 11 devices deployed via Autopilot have fully functional VPN connectivity without any manual IT intervention.

**KPIs**:

| KPI | Current Value | Target Value | Measurement Frequency |
|-----|---------------|--------------|----------------------|
| Manual intervention rate | 100% | 0% | Per deployment |
| ESP completion rate | N/A | >95% | Weekly during rollout |
| Time to VPN-ready | 60+ min post-Autopilot | <30 min during ESP | Per deployment |
| ARM64 deployment success | N/A | 100% | Per deployment |

**Business Value**:
- **Operational**: IT effort reduced by 30-60 minutes per device
- **Financial**: Support cost avoided (~£50 per device provisioning time)
- **Strategic**: Demonstrates cloud-first management maturity

**Timeline**:
- Month 1: Packaging and configuration complete
- Month 2: Pilot deployment (50 devices)
- Month 3: Phased production rollout begins
- Month 6: 100% of new deployments via zero-touch

**Leading Indicators**: Pilot success rate, ESP timeout incidents
**Lagging Indicators**: Production deployment completion rate, support call volume

---

### Outcome O-2: 99.9% VPN Service Reliability

**Derived From Goal**: G-2 (99.9% Availability)

**Outcome Statement**: Remote workers experience consistent, reliable VPN connectivity with minimal service disruption.

**KPIs**:

| KPI | Current Value | Target Value | Measurement Frequency |
|-----|---------------|--------------|----------------------|
| Service availability | 99.5% | 99.9% | Monthly |
| Unplanned downtime | 4 hours/month | <45 minutes/month | Monthly |
| User-reported outages | N/A | <2 per month | Monthly |
| Reconnection success rate | N/A | >99% | Weekly |

**Business Value**:
- **Operational**: Remote workforce productivity maintained
- **Risk**: Business continuity requirements met
- **Strategic**: Hybrid work model supported reliably

**Timeline**:
- Month 1: Baseline availability measured
- Month 3: Target availability achieved post-deployment
- Month 6: Sustained availability validated

**Leading Indicators**: Infrastructure health metrics, capacity utilisation
**Lagging Indicators**: Monthly availability reports, incident count

---

### Outcome O-3: Zero Trust Security Compliance

**Derived From Goal**: G-3 (Zero Trust Controls)

**Outcome Statement**: All VPN access is secured with MFA, certificate authentication, and device compliance verification with complete audit trail.

**KPIs**:

| KPI | Current Value | Target Value | Measurement Frequency |
|-----|---------------|--------------|----------------------|
| MFA enforcement | Partial | 100% | Weekly |
| Certificate authentication | 0% | 100% | Weekly |
| Conditional Access compliance | Partial | 100% | Weekly |
| Security incidents | N/A | 0 | Ongoing |
| Audit finding count | N/A | 0 | Quarterly audit |

**Business Value**:
- **Compliance**: ISO 27001, Cyber Essentials requirements met
- **Risk**: Reduced attack surface for remote access
- **Strategic**: Zero Trust architecture realised

**Timeline**:
- Month 1: Security controls designed
- Month 2: Pilot with full security controls
- Month 3: Production with enforcement
- Month 6: First security audit validation

**Leading Indicators**: Control configuration status, test results
**Lagging Indicators**: Security incident count, audit results

---

### Outcome O-4: 70% Reduction in VPN Support Burden

**Derived From Goal**: G-4 (<5% Support Calls)

**Outcome Statement**: Service Desk VPN-related workload reduced by 70%, freeing capacity for higher-value support.

**KPIs**:

| KPI | Current Value | Target Value | Measurement Frequency |
|-----|---------------|--------------|----------------------|
| VPN support calls (% users) | 15% | <5% | Monthly |
| First-call resolution | 40% | >70% | Monthly |
| VPN call volume | ~150/month (estimate) | <50/month | Monthly |
| Service Desk satisfaction | N/A | Improved | Quarterly survey |

**Business Value**:
- **Operational**: Service Desk capacity freed (~100 hours/month)
- **Financial**: Support cost reduction (~£3K/month)
- **Customer**: Better IT service experience

**Timeline**:
- Month 1: Baseline support metrics captured
- Month 3: Initial reduction post-deployment
- Month 6: Target reduction achieved and sustained

**Leading Indicators**: Automatic connection success rate, user training completion
**Lagging Indicators**: Monthly support call volume, resolution metrics

---

### Outcome O-5: Zero Additional VPN Licensing Cost

**Derived From Goal**: G-5 (Cost Efficiency)

**Outcome Statement**: VPN capability delivered within existing Cisco licensing with no additional per-user costs.

**KPIs**:

| KPI | Current Value | Target Value | Measurement Frequency |
|-----|---------------|--------------|----------------------|
| Additional licensing cost | N/A | £0 | Project close |
| License utilisation | TBD | <100% (headroom) | Quarterly |
| Total project cost | N/A | Within budget | Monthly |
| ROI on existing Cisco investment | N/A | Demonstrated | Annual review |

**Business Value**:
- **Financial**: No additional OpEx for VPN licensing
- **Strategic**: ROI demonstration on existing investment
- **Operational**: No procurement delays

**Timeline**:
- Month 1: Licensing confirmation from Cisco
- Month 6: Project delivered within budget
- Month 12: Annual license review confirms no additional cost

**Leading Indicators**: Cisco licensing confirmation, user count vs. license capacity
**Lagging Indicators**: Final project cost, annual license audit

---

### Outcome O-6: Seamless User Connectivity Experience

**Derived From Goal**: G-6 (Seamless User Experience)

**Outcome Statement**: Users experience automatic, transparent VPN connectivity without manual steps or repeated authentication.

**KPIs**:

| KPI | Current Value | Target Value | Measurement Frequency |
|-----|---------------|--------------|----------------------|
| Automatic connection success | N/A | >98% | Weekly |
| Daily authentication prompts | Multiple | ≤1 | User survey |
| Connection time | N/A | <10 seconds | Performance monitoring |
| User satisfaction (VPN) | N/A | 4.0/5.0 | Quarterly survey |
| Video call quality complaints | N/A | <2% of users | Monthly |

**Business Value**:
- **Operational**: Productivity maintained (no VPN friction)
- **Customer**: User satisfaction with IT services
- **Strategic**: Hybrid work model supported seamlessly

**Timeline**:
- Month 2: Pilot user feedback captured
- Month 4: Production user experience validated
- Month 6: Sustained satisfaction confirmed

**Leading Indicators**: Pilot feedback, connection success telemetry
**Lagging Indicators**: User satisfaction survey, support call themes

---

## Complete Traceability Matrix

### Stakeholder → Driver → Goal → Outcome

| Stakeholder | Driver ID | Driver Summary | Goal ID | Goal Summary | Outcome ID | Outcome Summary |
|-------------|-----------|----------------|---------|--------------|------------|-----------------|
| IT Security Lead | SD-1 | Zero Trust Enforcement | G-3 | Zero Trust Controls | O-3 | Zero Trust Compliance |
| Infrastructure Lead | SD-2 | Operational Stability | G-2 | 99.9% Availability | O-2 | 99.9% Reliability |
| Desktop Engineering Lead | SD-3 | Autopilot Integration | G-1 | Zero-Touch Deployment | O-1 | 100% Zero-Touch Provisioning |
| Desktop Engineering Lead | SD-3 | Autopilot Integration | G-6 | Seamless UX | O-6 | Seamless Connectivity |
| End Users | SD-4 | Frictionless Connectivity | G-6 | Seamless UX | O-6 | Seamless Connectivity |
| End Users | SD-4 | Frictionless Connectivity | G-4 | <5% Support Calls | O-4 | 70% Support Reduction |
| Service Desk Manager | SD-5 | Reduced Support Burden | G-4 | <5% Support Calls | O-4 | 70% Support Reduction |
| Finance | SD-6 | Cost Efficiency | G-5 | Zero Additional Licensing | O-5 | Zero Licensing Cost |
| CIO/IT Director | SD-7 | Strategic Enablement | G-1 | Zero-Touch Deployment | O-1 | 100% Zero-Touch Provisioning |
| CIO/IT Director | SD-7 | Strategic Enablement | G-2 | 99.9% Availability | O-2 | 99.9% Reliability |
| Network Security Engineer | SD-8 | Secure Traffic Management | G-3 | Zero Trust Controls | O-3 | Zero Trust Compliance |

### Conflict Analysis

**Competing Drivers:**

**Conflict 1: Security Controls vs. User Convenience (Security Lead vs. End Users)**
- **Stakeholder A**: IT Security Lead (SD-1) - requires MFA, certificates, compliance checks
- **Stakeholder B**: End Users (SD-4) - wants zero authentication friction
- **Incompatibility**: Multiple authentication factors create user friction
- **Resolution Strategy**: **TECHNICAL SOLUTION - SSO WITH PRT**
  - Azure AD SSO eliminates separate VPN credentials
  - Primary Refresh Token (PRT) enables silent re-authentication
  - MFA required only for initial device login (not per VPN connection)
  - Always-On VPN with Trusted Network Detection reduces prompts
  - Result: Strong security with minimal user interaction
- **Decision Authority**: IT Security Lead (security requirements), with CIO arbitration if conflict persists
- **Outcome**: Both stakeholders satisfied - security enforced transparently

**Conflict 2: Deployment Speed vs. Infrastructure Stability (Desktop Engineering vs. Infrastructure)**
- **Stakeholder A**: Desktop Engineering Lead (SD-3) - wants rapid rollout to complete Windows 11 programme
- **Stakeholder B**: Infrastructure Lead (SD-2) - wants careful rollout to avoid capacity issues
- **Incompatibility**: Mass Autopilot deployments could overwhelm VPN infrastructure
- **Resolution Strategy**: **PHASED ROLLOUT WITH CAPACITY MONITORING**
  - Pilot phase (50 devices) validates stability
  - Phased production rollout (200 devices/week) with capacity monitoring
  - Automatic throttling if infrastructure load exceeds threshold
  - Infrastructure lead approves each phase before proceeding
- **Decision Authority**: Infrastructure Lead (go/no-go per phase), with CIO escalation if delays
- **Outcome**: Both stakeholders satisfied - deployment proceeds with infrastructure protection

### Synergies (Aligned Drivers)

**Synergy 1: Zero-Touch Benefits All (Desktop Engineering + End Users + Service Desk + CIO)**
- **Aligned Drivers**: SD-3 (Autopilot), SD-4 (Frictionless), SD-5 (Reduced Support), SD-7 (Strategic)
- **Shared Goal**: G-1 (Zero-Touch Deployment)
- **Shared Outcome**: O-1 (100% Zero-Touch Provisioning)
- **Synergy Benefit**: Single initiative satisfies 4 stakeholders
- **Leverage Point**: Autopilot ESP integration delivers automation, UX, support reduction, and strategy

**Synergy 2: Existing Licensing Enables Project (Finance + CIO + All)**
- **Aligned Drivers**: SD-6 (Cost Efficiency), SD-7 (Strategic)
- **Shared Goal**: G-5 (Zero Additional Licensing)
- **Shared Outcome**: O-5 (Zero Licensing Cost)
- **Synergy Benefit**: No budget conflict, faster approval, demonstrated ROI
- **Leverage Point**: Cisco AnyConnect licensing already owned - project feasibility enabled

**Synergy 3: Automatic Connectivity Reduces Support (End Users + Service Desk + Desktop Engineering)**
- **Aligned Drivers**: SD-4 (Frictionless), SD-5 (Reduced Support), SD-3 (Zero-Touch)
- **Shared Goal**: G-4 (<5% Support Calls), G-6 (Seamless UX)
- **Shared Outcome**: O-4 (70% Support Reduction), O-6 (Seamless Connectivity)
- **Synergy Benefit**: Better UX = fewer support calls = happier users and Service Desk
- **Leverage Point**: Always-On VPN with SSO creates virtuous cycle

---

## Communication & Engagement Plan

### Stakeholder-Specific Messaging

#### IT Security Lead

**Primary Message**: "This VPN deployment fully implements Zero Trust with MFA enforcement, certificate-based device authentication, Conditional Access compliance, and 100% audit logging to SIEM - all aligned with Architecture Principle 2."

**Key Talking Points**:
- Azure AD Conditional Access enforces MFA and device compliance
- Certificate authentication verifies managed devices (PKI integration)
- Full audit trail to Microsoft Sentinel for security monitoring
- Split tunnel configuration maintains security visibility for corporate traffic
- Automatic updates keep client patched within security SLAs

**Communication Frequency**: Weekly during design/implementation, bi-weekly post-deployment

**Preferred Channel**: Security architecture reviews, design documentation, security sign-off meetings

**Success Story**: "Zero Trust VPN controls deployed with 100% MFA enforcement, 100% certificate authentication, and complete audit logging. Zero security incidents since deployment."

---

#### Infrastructure Lead

**Primary Message**: "We're implementing a phased rollout with capacity monitoring at every stage. You have go/no-go authority for each phase. No deployment wave proceeds until you confirm infrastructure stability."

**Key Talking Points**:
- Phased rollout: Pilot (50) → Phase 1 (200/week) → Full rollout
- Real-time capacity monitoring with alerts at 70% utilisation
- Your team reviews capacity metrics before each phase
- Rollback procedures documented and tested
- Cisco TAC engaged for critical support

**Communication Frequency**: Daily during rollout, weekly steady-state

**Preferred Channel**: Infrastructure team meetings, capacity dashboards, incident bridge

**Success Story**: "Phased rollout completed with zero capacity incidents. Peak utilisation stayed below 60%. VPN gateway availability maintained at 99.95%."

---

#### Desktop Engineering Lead

**Primary Message**: "This completes your zero-touch Autopilot vision. VPN client installs and configures during ESP with no manual steps. ARM64 native client ensures Copilot+ PC parity."

**Key Talking Points**:
- AnyConnect packaged as Win32 app with architecture detection
- ESP blocking app ensures VPN ready before user desktop
- Configuration profiles deploy server URLs, certificates, split tunnel
- ARM64 native client (not emulated) for Copilot+ PCs
- Intune reporting confirms deployment success

**Communication Frequency**: Daily during development, weekly during rollout

**Preferred Channel**: Desktop Engineering team sync, Intune dashboard reviews, Teams channel

**Success Story**: "100% zero-touch VPN deployment achieved. ESP success rate 97%. ARM64 deployments at full feature parity. Zero manual interventions required."

---

#### End Users (Remote Workers)

**Primary Message**: "Your VPN will now connect automatically when you're working remotely - no manual steps, no extra logins. Just start working and you're connected."

**Key Talking Points**:
- Automatic connection when outside office network
- No separate VPN password (uses your normal Windows login)
- Teams and Zoom calls work perfectly (optimised routing)
- Clear "Connected" indicator in system tray
- Self-service diagnostics if you need them

**Communication Frequency**: Announcement before rollout, reminder at deployment, follow-up for feedback

**Preferred Channel**: All-staff email, intranet announcement, user training video, Teams FAQ channel

**Success Story**: "Users report VPN 'just works' - no manual connection needed. 4.3/5.0 satisfaction rating. Support calls down 70%."

---

#### Service Desk Manager

**Primary Message**: "This deployment will reduce your VPN call volume by 70%. Users will have automatic connectivity, and you'll have clear runbooks for the remaining issues."

**Key Talking Points**:
- Automatic VPN means no "how do I connect" calls
- Clear error messages with actionable guidance
- Runbooks cover top 10 known issues with solutions
- Escalation path defined (Desktop Engineering → Infrastructure)
- User self-service for basic troubleshooting

**Communication Frequency**: Weekly during rollout, monthly steady-state

**Preferred Channel**: Service Desk team meeting, runbook documentation, escalation matrix

**Success Story**: "VPN support calls down 72% (from 150/month to 42/month). First-call resolution up to 75%. Service Desk team happier."

---

## Change Impact Assessment

### Impact on Stakeholders

| Stakeholder | Current State | Future State | Change Magnitude | Resistance Risk | Mitigation Strategy |
|-------------|---------------|--------------|------------------|-----------------|---------------------|
| **IT Security Lead** | Partial Zero Trust controls | Full Zero Trust with MFA, certs, compliance | MEDIUM | LOW (champion) | Early involvement in design, security sign-off authority |
| **Infrastructure Lead** | Stable but manual deployments | Automated deployments, capacity monitoring | MEDIUM | MEDIUM | Phased rollout, go/no-go authority, capacity dashboards |
| **Desktop Engineering Lead** | Manual VPN post-Autopilot | Zero-touch ESP integration | HIGH | LOW (champion) | Lead role in implementation, success metrics visibility |
| **End Users** | Manual VPN connection | Automatic Always-On VPN | MEDIUM | LOW | User communication, simple experience, self-service options |
| **Service Desk Manager** | High VPN call volume | Reduced call volume, better runbooks | HIGH | LOW | Training, runbooks, escalation path clarity |
| **Finance** | Existing Cisco licensing unused | Full utilisation of existing licensing | LOW | LOW | Confirm licensing coverage, no additional cost |
| **CIO** | Windows 11 programme dependency | VPN enabler for hybrid work | MEDIUM | LOW | Executive dashboard, strategic alignment messaging |

### Change Readiness

**Champions** (Enthusiastic supporters):
- **Desktop Engineering Lead (SD-3)**: Zero-touch deployment completes Autopilot vision; career advancement
- **IT Security Lead (SD-1)**: Zero Trust implementation aligned with security strategy
- **Service Desk Manager (SD-5)**: Reduced call volume, improved metrics

**Fence-sitters** (Neutral, need convincing):
- **Infrastructure Lead (SD-2)**: Supportive of goal but cautious about stability
  - **Convince with**: Phased rollout, go/no-go authority, capacity monitoring
- **End Users (SD-4)**: Will accept if experience is genuinely better
  - **Convince with**: Pilot feedback, clear communication, simple experience

**Resisters** (None identified):
- No significant resistance expected - existing Cisco licensing and clear benefits create alignment

---

## Risk Register (Stakeholder-Related)

### Risk R-1: Autopilot ESP Timeout Causing Deployment Failure

**Related Stakeholders**: Desktop Engineering Lead, End Users

**Risk Description**: AnyConnect installation plus configuration may exceed 30-minute ESP timeout, causing Autopilot failure and poor user experience.

**Impact on Goals**: G-1 (Zero-Touch Deployment)

**Probability**: MEDIUM

**Impact**: HIGH

**Mitigation Strategy**:
- Pre-provisioning VPN client in Windows image (reduces ESP time)
- Optimise installation package (silent install, minimal components)
- Test ESP timing in lab before pilot
- Configure ESP timeout handling (retry, skip option)

**Contingency Plan**: If ESP timeout persists, deploy VPN post-ESP with user notification and delayed auto-connect.

---

### Risk R-2: VPN Capacity Exceeded During Mass Deployment

**Related Stakeholders**: Infrastructure Lead, End Users, CIO

**Risk Description**: Windows 11 rollout creates simultaneous VPN connections exceeding gateway capacity, causing service degradation.

**Impact on Goals**: G-2 (99.9% Availability)

**Probability**: MEDIUM

**Impact**: HIGH

**Mitigation Strategy**:
- Phased rollout with capacity monitoring between phases
- Infrastructure Lead go/no-go authority for each phase
- Real-time capacity alerting (70% threshold)
- Staggered deployment scheduling (avoid Monday mornings)

**Contingency Plan**: Pause rollout if capacity exceeds 80%; activate DR/additional capacity if available.

---

### Risk R-3: ARM64 Client Feature Gap or Instability

**Related Stakeholders**: Desktop Engineering Lead, End Users (Copilot+ PC users)

**Risk Description**: Cisco AnyConnect ARM64 client may have feature gaps, bugs, or performance issues compared to x64 version.

**Impact on Goals**: G-1 (Zero-Touch Deployment), G-6 (Seamless UX)

**Probability**: MEDIUM

**Impact**: MEDIUM

**Mitigation Strategy**:
- Validate ARM64 client feature parity in lab testing
- Include ARM64 devices in pilot phase
- Engage Cisco support for ARM64-specific issues
- Document known ARM64 limitations

**Contingency Plan**: If ARM64 issues persist, consider x64 emulation as temporary workaround (with performance trade-off).

---

### Risk R-4: Azure AD SSO Integration Failure

**Related Stakeholders**: IT Security Lead, End Users

**Risk Description**: AnyConnect SAML integration with Azure AD may have compatibility issues, causing authentication failures or excessive MFA prompts.

**Impact on Goals**: G-3 (Zero Trust), G-6 (Seamless UX)

**Probability**: LOW

**Impact**: HIGH

**Mitigation Strategy**:
- Validate SSO integration in lab with Azure AD
- Test PRT-based silent authentication
- Document Cisco/Microsoft compatibility requirements
- Engage Microsoft TAM if integration issues arise

**Contingency Plan**: Fall back to certificate-only authentication (less seamless but functional).

---

### Risk R-5: User Resistance to VPN Behavior Change

**Related Stakeholders**: End Users, Service Desk Manager

**Risk Description**: Users accustomed to manual VPN control may be confused by Always-On behavior, generating support calls.

**Impact on Goals**: G-4 (<5% Support Calls)

**Probability**: LOW

**Impact**: LOW

**Mitigation Strategy**:
- Clear user communication before rollout explaining changes
- FAQ and self-service documentation
- User override capability for troubleshooting (manual disconnect option)
- Pilot feedback to identify UX issues

**Contingency Plan**: Provide manual connection option for users who prefer it (with security trade-off awareness).

---

## Governance & Decision Rights

### Decision Authority Matrix (RACI)

| Decision Type | Responsible | Accountable | Consulted | Informed |
|---------------|-------------|-------------|-----------|----------|
| **Security Requirements** | IT Security Lead | CIO | Infrastructure, Desktop Eng | All |
| **Client Packaging** | Desktop Engineering Lead | Desktop Engineering Lead | Infrastructure, Security | Service Desk |
| **Infrastructure Capacity** | Infrastructure Lead | Infrastructure Lead | Desktop Eng, Security | CIO |
| **Deployment Phase Go/No-Go** | Infrastructure Lead | CIO | Desktop Eng, Security | All |
| **User Communication** | Service Desk Manager | Desktop Engineering Lead | End User reps | All users |
| **Cisco Engagement** | Infrastructure Lead | CIO | Desktop Eng, Finance | Security |
| **Budget Approval** | Finance | CIO | Infrastructure, Desktop Eng | All |
| **Production Rollout Start** | Desktop Engineering Lead | CIO | Infrastructure, Security | All |

### Escalation Path

**Level 1: Project Team (Day-to-Day)**
- Decisions: Configuration choices, testing issues, minor scope clarification
- Response: Same business day
- Escalate if: Cross-team disagreement, timeline impact, budget impact

**Level 2: Technical Leads (Infrastructure + Desktop Engineering + Security)**
- Decisions: Technical approach conflicts, phase go/no-go, resource allocation
- Frequency: Weekly sync, ad-hoc for urgent issues
- Escalate if: Strategic direction change, budget overrun, stakeholder conflict

**Level 3: CIO/IT Director (Executive)**
- Decisions: Budget increase, timeline change, strategic scope change
- Frequency: Monthly steering, ad-hoc for critical issues
- Authority: Final decision on project direction

---

## Validation & Sign-off

### Stakeholder Review

| Stakeholder | Review Date | Comments | Status |
|-------------|-------------|----------|--------|
| IT Security Lead | [TBD] | [Pending review] | PENDING |
| Infrastructure Lead | [TBD] | [Pending review] | PENDING |
| Desktop Engineering Lead | [TBD] | [Pending review] | PENDING |
| Service Desk Manager | [TBD] | [Pending review] | PENDING |
| CIO/IT Director | [TBD] | [Pending review] | PENDING |

### Document Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| **Executive Sponsor** | CIO/IT Director | _________ | [DATE] |
| **Technical Owner** | Desktop Engineering Lead | _________ | [DATE] |
| **Security Owner** | IT Security Lead | _________ | [DATE] |

---

## Success Metrics Summary

### Key Performance Indicators Dashboard

| Metric Category | KPI | Baseline | Target | Timeline | Owner |
|-----------------|-----|----------|--------|----------|-------|
| **Deployment** | Zero-touch success rate | 0% | 100% | 6 months | Desktop Engineering |
| **Deployment** | ESP completion rate | N/A | >95% | 3 months | Desktop Engineering |
| **Deployment** | ARM64 parity | N/A | 100% | 3 months | Desktop Engineering |
| **Availability** | Service uptime | 99.5% | 99.9% | 6 months | Infrastructure |
| **Availability** | Unplanned downtime | 4 hrs/month | <45 min/month | 6 months | Infrastructure |
| **Security** | MFA enforcement | Partial | 100% | 3 months | Security |
| **Security** | Certificate authentication | 0% | 100% | 3 months | Security |
| **Security** | Security incidents | N/A | 0 | Ongoing | Security |
| **Support** | VPN support calls | 15% users | <5% users | 6 months | Service Desk |
| **Support** | First-call resolution | 40% | >70% | 6 months | Service Desk |
| **User Experience** | Connection time | N/A | <10 seconds | 3 months | Desktop Engineering |
| **User Experience** | User satisfaction | N/A | 4.0/5.0 | 6 months | Desktop Engineering |
| **Financial** | Additional licensing | N/A | £0 | Project close | Finance |

### Stakeholder Satisfaction Targets

| Stakeholder | Driver Addressed | Success Criteria | Measurement |
|-------------|------------------|------------------|-------------|
| **IT Security Lead** | SD-1: Zero Trust | 100% MFA + certs + compliance, 0 incidents | Weekly security metrics |
| **Infrastructure Lead** | SD-2: Stability | 99.9% availability, 150% capacity headroom | Monthly infrastructure review |
| **Desktop Engineering Lead** | SD-3: Autopilot | 100% zero-touch, >95% ESP success | Deployment tracking |
| **End Users** | SD-4: Frictionless | <10s connection, ≤1 auth prompt/day, 4.0/5.0 satisfaction | Quarterly survey |
| **Service Desk Manager** | SD-5: Reduced Burden | <5% support calls, >70% FCR | Monthly service metrics |
| **Finance** | SD-6: Cost Efficiency | £0 additional licensing | Project close-out |
| **CIO** | SD-7: Strategic | Project on time/budget, stakeholders satisfied | Steering committee |

### Leading vs Lagging Indicators

**Leading Indicators** (Early Warning Signals):
- Week 2: Lab testing complete, security controls validated
- Week 4: Pilot deployed (50 devices), ESP success >90%
- Week 6: Pilot feedback positive, no major issues
- Week 8: Phase 1 rollout underway, capacity stable

**Lagging Indicators** (Final Validation):
- Month 3: Production rollout complete, security controls enforced
- Month 4: Support call reduction validated
- Month 6: User satisfaction survey confirms 4.0+, availability sustained

### Outcome Achievement Summary

| Outcome | Description | Value Created | Status |
|---------|-------------|---------------|--------|
| **O-1** | 100% Zero-Touch Provisioning | IT effort reduction, faster device deployment | Target |
| **O-2** | 99.9% VPN Reliability | Remote workforce productivity maintained | Target |
| **O-3** | Zero Trust Compliance | Security posture, audit compliance | Target |
| **O-4** | 70% Support Reduction | Service Desk capacity, cost savings | Target |
| **O-5** | Zero Licensing Cost | Budget efficiency, ROI on Cisco investment | Target |
| **O-6** | Seamless Connectivity | User satisfaction, productivity | Target |

---

## Appendices

### Appendix A: Related Documents

- [Requirements Specification](/projects/007-vpn-service-windows11-autopilot/requirements.md) - Comprehensive business and technical requirements
- [Container Architecture Diagram](/projects/007-vpn-service-windows11-autopilot/diagrams/container-vpn-architecture.md) - Technical architecture
- [Architecture Principles](/.arckit/memory/architecture-principles.md) - Enterprise architecture principles
- [Project 001: Windows 11 Migration](/projects/001-windows-11-migration-intune/) - Parent programme dependency
- [Project 005: Cloud PKI](/projects/005-cloud-pki/) - Certificate infrastructure dependency

### Appendix B: Dependency on Other Projects

| Project | Dependency Type | Impact |
|---------|-----------------|--------|
| Project 001 (Windows 11 Migration) | Timeline alignment | VPN must be ready for Windows 11 Autopilot deployments |
| Project 005 (Cloud PKI) | Certificate services | VPN certificate authentication depends on PKI availability |

---

**Generated by**: ArcKit `/arckit.stakeholders` command
**Generated on**: 2026-01-24
**ArcKit Version**: 0.11.0
**Project**: VPN Service for Windows 11 and Autopilot (Project 007)
**Model**: Claude Opus 4.5
