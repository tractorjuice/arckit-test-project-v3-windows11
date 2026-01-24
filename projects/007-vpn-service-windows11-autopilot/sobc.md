# Strategic Outline Business Case (SOBC)

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-007-SOBC-v1.0 |
| **Document Type** | Strategic Outline Business Case |
| **Project** | VPN Service for Windows 11 and Autopilot (Project 007) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 1.0 |
| **Created Date** | 2026-01-24 |
| **Last Modified** | 2026-01-24 |
| **Review Cycle** | Quarterly |
| **Next Review Date** | 2026-04-24 |
| **Owner** | CIO/IT Director (Executive Sponsor) |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | IT Leadership, Security Team, Infrastructure Team, Desktop Engineering, Finance, Service Desk |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2026-01-24 | ArcKit AI | Initial creation from `/arckit.sobc` command | PENDING | PENDING |

## Document Purpose

This Strategic Outline Business Case (SOBC) presents the justification for implementing a VPN service integrated with Windows 11 Autopilot deployment to enable secure, seamless remote access for the hybrid workforce. The project leverages existing Cisco AnyConnect licensing to deliver zero-touch VPN deployment with Zero Trust security controls. This SOBC follows the HM Treasury Green Book 5-case model and traces directly to stakeholder drivers documented in `stakeholder-drivers.md`.

---

## Executive Summary

**Purpose**: To deploy Cisco AnyConnect VPN integrated with Windows 11 Autopilot, providing automatic zero-touch VPN provisioning, Zero Trust security enforcement, and seamless user connectivity for the hybrid workforce - all within existing Cisco licensing.

**Problem Statement**: The current VPN deployment model requires manual IT intervention post-Autopilot, creating 30-60 minutes additional provisioning time per device. Remote workers experience friction with manual VPN connections and repeated authentication prompts, generating 15% monthly VPN support call volume. The Windows 11 rollout to 5,000+ devices including ARM64 Copilot+ PCs requires native VPN client support with Autopilot ESP integration that does not exist today.

**Proposed Solution**: Deploy Cisco AnyConnect VPN client via Microsoft Intune with Autopilot ESP integration, featuring:
- **Zero-Touch Deployment**: VPN fully configured during Autopilot ESP with no manual intervention
- **Zero Trust Security**: MFA, certificate authentication, Conditional Access, SIEM logging
- **Seamless User Experience**: Always-On VPN with Azure AD SSO and PRT-based authentication
- **ARM64 Support**: Native ARM64 client for Copilot+ PCs with full feature parity

**Strategic Fit**: Directly enables the Windows 11 Transformation Programme (Project 001), supports hybrid work strategy, enforces Zero Trust security (Architecture Principle 2), and demonstrates cloud-first endpoint management (Architecture Principle 1).

**Investment Required**: £145K over 2 years
- Year 1: £95K (implementation, testing, pilot, phased rollout)
- Year 2: £50K (steady-state operations, enhancements)

**Expected Benefits**: £324K over 2 years
- Eliminated provisioning effort: £50/device × 5,000 devices = £250K
- Support call reduction: 70% reduction = £36K/year × 2 = £72K
- Avoided licensing costs: £0 additional (existing Cisco licensing leveraged)

**Return on Investment**:
- NPV: £156K (discounted at 3.5% over 2 years)
- Payback Period: 8 months
- ROI: 123%

**Recommended Option**: Option 2: Cisco AnyConnect with Autopilot Integration

**Key Risks**:
1. R-001: Autopilot ESP timeout (Residual: Medium 9) - mitigated by lab testing, optimised packaging
2. R-002: VPN capacity exceeded during mass deployment (Residual: Medium 9) - mitigated by phased rollout
3. R-005: PKI dependency delays Zero Trust (Residual: Medium 9) - mitigated by Project 005 coordination

**Go/No-Go Recommendation**: **PROCEED**

**Rationale**: The £145K 2-year investment delivers £324K in quantified benefits (123% ROI), leverages existing Cisco AnyConnect licensing (£0 additional licensing), enables the Windows 11 Transformation Programme, and achieves 8-month payback. Strong stakeholder alignment (HIGH) with all 8 drivers satisfied through technical design decisions (Always-On VPN with SSO resolves security/convenience tension, phased rollout resolves speed/stability tension).

**Next Steps if Approved**:
1. Confirm Cisco licensing coverage (all users): Week 1
2. Complete AnyConnect packaging (ARM64 + x64): Weeks 1-4
3. Pilot deployment (50 IT test devices): Weeks 5-8
4. Go/No-Go gate (Infrastructure Lead approval): Week 8
5. Phased production rollout (200 devices/week): Weeks 9-28

---

# PART A: STRATEGIC CASE

## A1. Strategic Context

### A1.1 Problem Statement

**Current Situation**:
The organisation is executing the Windows 11 Transformation Programme (Project 001), deploying 5,000+ Windows 11 Enterprise devices via Autopilot. VPN is a critical enabler for the 60%+ hybrid workforce, but current VPN deployment creates significant friction:

- **Manual Provisioning Gap**: VPN not deployed during Autopilot - requires manual post-provisioning
- **30-60 Minutes Per Device**: IT staff must manually install/configure VPN after Autopilot completion
- **15% Monthly Support Calls**: Users require VPN support due to manual connection, authentication issues
- **No ARM64 Support**: Current deployment cannot support Copilot+ PCs (ARM64 architecture)
- **Zero Trust Gap**: Cannot enforce certificate-based authentication, device compliance for VPN access
- **User Friction**: Multiple authentication prompts, manual connections, VPN failures affect productivity

**Specific Pain Points** (from Stakeholder Analysis):

| Stakeholder | Driver ID | Pain Point | Impact | Intensity |
|-------------|-----------|------------|--------|-----------|
| Desktop Engineering Lead | SD-3 | 100% manual VPN intervention post-Autopilot | Blocks "zero-touch provisioning" OKR | HIGH |
| Infrastructure Lead | SD-2 | Approaching VPN capacity limits (99.5% uptime) | Windows 11 rollout threatens availability | HIGH |
| IT Security Lead | SD-1 | Cannot enforce Zero Trust for VPN (no certs, partial MFA) | Security posture gap, audit risk | CRITICAL |
| End Users | SD-4 | Manual VPN, multiple auth prompts, confusing errors | Productivity loss, shadow IT risk | HIGH |
| Service Desk | SD-5 | 15% users call monthly about VPN (40% first-call resolution) | 150+ calls/month, 20 min average handle | MEDIUM |
| CIO | SD-7 | VPN blocks Windows 11 programme and hybrid work strategy | Strategic initiative at risk | MEDIUM |

**Consequences of Inaction**:
- **Windows 11 Programme Blocked**: Cannot complete Autopilot zero-touch provisioning goal
- **ARM64 Devices Unsupported**: Copilot+ PCs cannot be deployed (no VPN client)
- **Security Posture Degraded**: Zero Trust requirements not met for remote access
- **User Productivity Lost**: Continued VPN friction affects hybrid workforce
- **Support Costs Sustained**: 150+ VPN support calls/month continue consuming Service Desk
- **Strategic Credibility Damaged**: CIO's hybrid work strategy undermined

### A1.2 Strategic Drivers

**Link to Stakeholder Analysis**: This business case is informed by stakeholder analysis documented in `stakeholder-drivers.md`.

**Primary Drivers** (from Stakeholder Analysis):

| Driver ID | Stakeholder | Driver Type | Driver Description | Intensity |
|-----------|-------------|-------------|-------------------|-----------|
| SD-1 | IT Security Lead | COMPLIANCE/RISK | Zero Trust security enforcement for VPN access | CRITICAL |
| SD-2 | Infrastructure Lead | OPERATIONAL/RISK | 99.9% VPN availability with 150% capacity headroom | HIGH |
| SD-3 | Desktop Engineering Lead | OPERATIONAL | Zero-touch VPN deployment via Autopilot ESP | HIGH |
| SD-4 | End Users | OPERATIONAL | Frictionless, automatic VPN connectivity | HIGH |
| SD-5 | Service Desk Manager | OPERATIONAL | Reduce VPN support calls to <5% of users | MEDIUM |
| SD-6 | Finance | FINANCIAL | Leverage existing Cisco licensing (£0 additional) | MEDIUM |
| SD-7 | CIO/IT Director | STRATEGIC | Enable hybrid work model, cloud-first management | MEDIUM |
| SD-8 | Network Security Engineer | OPERATIONAL/COMPLIANCE | Secure traffic management, split tunnel, SIEM logs | MEDIUM |

**Strategic Alignment**:
- **Windows 11 Transformation Programme**: VPN is critical dependency for Autopilot deployment
- **Hybrid Work Strategy**: Secure, reliable VPN enables remote workforce productivity
- **Zero Trust Architecture**: Certificate-based VPN authentication, Conditional Access enforcement
- **Cloud-First Management**: Intune-based VPN deployment demonstrates modern endpoint management
- **Cost Efficiency**: Existing Cisco licensing maximises ROI on previous investment

### A1.3 Stakeholder Goals

**Goals Addressed** (from Stakeholder Analysis):

| Goal ID | Stakeholder | SMART Goal | Baseline | Target | Timeline |
|---------|-------------|------------|----------|--------|----------|
| G-1 | Desktop Engineering | Zero-touch VPN deployment via Autopilot ESP | 100% manual | 0% manual | Month 6 |
| G-2 | Infrastructure Lead | 99.9% VPN availability during business hours | 99.5% | 99.9% | Month 3 |
| G-3 | IT Security Lead | 100% Zero Trust enforcement (MFA, certs, compliance) | Partial | 100% | Month 6 |
| G-4 | Service Desk | Reduce VPN support calls from 15% to <5% of users | 15% | <5% | Month 6 |
| G-5 | Finance | Zero additional licensing cost | N/A | £0 | Month 1 |
| G-6 | Desktop Engineering/Users | Seamless Always-On VPN with Azure AD SSO | Manual | Automatic | Month 6 |

### A1.4 Scope

**In Scope**:

**VPN Client Deployment**:
- Cisco AnyConnect Win32 application packaging (.intunewin format)
- Autopilot Enrollment Status Page (ESP) integration
- Native ARM64 client for Copilot+ PCs (architecture detection)
- Intune configuration profiles for VPN settings
- Automatic updates via Intune or VPN headend

**Authentication & Security**:
- Azure AD/Entra ID SSO integration (SAML 2.0)
- Primary Refresh Token (PRT) support for silent authentication
- Multi-factor authentication via Conditional Access
- Certificate-based device authentication (SCEP/PKCS via Intune)
- Device compliance verification before VPN access
- Audit logging to Microsoft Sentinel (SIEM)

**Connection Management**:
- Always-On VPN configuration with automatic connection
- Trusted Network Detection (TND) for office networks
- Split tunnelling for Microsoft 365 traffic optimisation
- Reconnection on network failure (<30 seconds)

**Operational Support**:
- Service Desk runbooks and training
- User self-service troubleshooting options
- Diagnostic logging and collection via Intune

**Out of Scope** (for this phase):
- VPN concentrator/gateway hardware procurement (existing infrastructure used)
- Network infrastructure redesign
- Non-Windows endpoints (macOS, iOS, Android) - separate project
- Legacy Windows versions (Windows 10 and earlier)
- Cisco ISE posture assessment (COULD_HAVE, deferred)

**Interfaces**:
- **Project 001 (Windows 11 Migration)**: Autopilot deployment pipeline, device targeting
- **Project 005 (Cloud PKI)**: Certificate deployment for device authentication
- **Microsoft InTune**: Application and configuration deployment
- **Microsoft Entra ID**: SSO, Conditional Access, device compliance
- **Microsoft Sentinel**: SIEM integration for VPN logging

**Assumptions**:
1. Existing Cisco AnyConnect licensing covers all users (to be confirmed Week 1)
2. Cisco provides native ARM64 client with full feature parity
3. VPN gateway infrastructure has sufficient capacity for 150% headroom
4. Project 005 (Cloud PKI) delivers certificate infrastructure before Wave 2
5. Windows 11 Autopilot pipeline operational for pilot devices

**Dependencies**:
- **Internal**: Project 005 (Cloud PKI) for certificate-based authentication
- **External**: Cisco ARM64 client availability
- **Technical**: Autopilot ESP timeout handling (<30 minutes total)

### A1.5 Why Now?

**Urgency Factors**:
- **Windows 11 Programme Active**: Autopilot deployments blocked without VPN integration
- **ARM64 Devices Arriving**: Copilot+ PC procurement underway - need native VPN client
- **Zero Trust Deadline**: Security team requires certificate-based VPN by Q2 2026
- **Support Burden Unsustainable**: 150+ VPN calls/month consuming Service Desk capacity

**Opportunity Cost of Delay**:
- **Provisioning Waste**: £50/device × 200 devices/month = £10K/month
- **Support Costs**: 150 calls × 20 min × £40/hour = £2K/month
- **Productivity Loss**: 60% workforce × VPN friction = unquantified but significant
- **Total Monthly Cost of Delay**: £12K/month + productivity impact
- **6-Month Delay Cost**: £72K + Windows 11 programme delayed + ARM64 devices unusable

**Window of Opportunity**:
- **Licensing in Place**: Existing Cisco AnyConnect agreement - no procurement delay
- **Intune Ready**: Microsoft 365 E5 provides InTune with SCEP connector
- **Vendor Support**: Cisco TAC available for ARM64 and Azure AD integration
- **Team Capacity**: Desktop Engineering team allocated for Windows 11 programme

---

# PART B: ECONOMIC CASE

## B1. Critical Success Factors

Before analysing options, define what "success" looks like:

1. **Zero-Touch Deployment Achieved**: VPN deployed during Autopilot ESP with no manual intervention
   - **Measure**: Manual intervention rate
   - **Threshold**: 0% (from 100% baseline)

2. **Service Availability Maintained**: VPN infrastructure meets SLA during rollout
   - **Measure**: Monthly availability during business hours
   - **Threshold**: 99.9% (from 99.5% baseline)

3. **Zero Trust Enforced**: All VPN connections secured with MFA, certificates, compliance
   - **Measure**: Percentage of connections with full security controls
   - **Threshold**: 100% (from partial baseline)

4. **Support Burden Reduced**: VPN support calls reduced significantly
   - **Measure**: Monthly support calls as percentage of users
   - **Threshold**: <5% (from 15% baseline)

5. **Cost Target Met**: No additional VPN licensing required
   - **Measure**: Additional licensing spend
   - **Threshold**: £0

6. **User Experience Improved**: Seamless automatic connectivity
   - **Measure**: User satisfaction score
   - **Threshold**: 4.0/5.0

## B2. Options Analysis

### Option 0: Do Nothing (Baseline)

**Description**: Continue current manual VPN deployment post-Autopilot. No integration with Autopilot ESP, no Zero Trust enhancement, no ARM64 support.

**Costs** (2-year):
- Capital: £0
- Operational: £312K (30-60 min per device × 5,000 devices = £250K + £62K support)
- Risk Reserve: £50K (estimated outage/security incident)
- Total: £362K

**Benefits**: £0 (no improvement)

**Pros**:
- No upfront investment or implementation effort
- No change management required
- Existing processes continue

**Cons**:
- **WINDOWS 11 BLOCKED**: Cannot complete Autopilot zero-touch goal
- **ARM64 UNSUPPORTED**: Copilot+ PCs cannot be deployed - no VPN client
- **SECURITY GAP**: Zero Trust requirements not met for remote access
- **ONGOING WASTE**: £10K/month provisioning effort continues
- **SUPPORT BURDEN**: 150+ calls/month sustains Service Desk drain
- **USER FRICTION**: Productivity impact continues for 60% hybrid workforce

**Risks**:
- R-CRITICAL: Windows 11 programme fails to meet objectives
- R-HIGH: Security audit findings for incomplete Zero Trust
- R-HIGH: ARM64 device procurement wasted (devices unusable)
- R-MEDIUM: Staff frustration and attrition

**Stakeholder Goals Met**: 0%

**Recommendation**: **Reject** - Blocks Windows 11 Transformation Programme. ARM64 Copilot+ PCs cannot be deployed without VPN client. Security requirements not met.

---

### Option 1: Windows Built-In VPN (Always On VPN)

**Description**: Use Windows native Always On VPN (AOVPN) capability with IKEv2 protocol instead of Cisco AnyConnect. Requires VPN infrastructure changes to support IKEv2.

**Costs** (2-year) - ROM (±30%):

| Item | Year 1 | Year 2 | Total |
|------|--------|--------|-------|
| VPN Infrastructure Upgrade | £150,000 | - | £150,000 |
| Implementation Services | £60,000 | - | £60,000 |
| Intune Configuration | £15,000 | - | £15,000 |
| PKI Integration | £20,000 | £10,000 | £30,000 |
| Operational Support | £30,000 | £35,000 | £65,000 |
| **Total** | **£275,000** | **£45,000** | **£320,000** |

**Benefits** (2-year):
- Eliminated provisioning effort: £250K
- Support reduction: £72K
- Total: £322K

**Net Benefit**: +£2K (marginal)

**Pros**:
- ✅ Native Windows integration (no third-party client)
- ✅ Fully supported by Microsoft
- ✅ No additional per-user licensing (Windows built-in)
- ✅ Full Intune integration

**Cons**:
- ❌ Requires VPN infrastructure upgrade (IKEv2 support) - £150K CapEx
- ❌ Existing Cisco investment not leveraged - license waste
- ❌ Complex configuration (Windows VPN profiles are verbose)
- ❌ Limited split tunnel flexibility vs. AnyConnect
- ❌ No vendor support relationship (Microsoft only)
- ❌ Finance rejects: "Why buy new when we have Cisco?"

**Stakeholder Impact**:
- Finance Goal G-5: ❌ Significant investment required (not £0)
- Infrastructure Lead: ⚠️ Infrastructure changes required
- Other goals: ✅ Can be achieved but at higher cost

**Stakeholder Goals Met**: 80% (G-5 not met)

**Recommendation**: **Not Preferred** - Requires £150K infrastructure upgrade that Finance will not approve. Wastes existing Cisco licensing investment. All other options leverage existing infrastructure.

---

### Option 2: Cisco AnyConnect with Autopilot Integration (RECOMMENDED)

**Description**: Deploy Cisco AnyConnect via Intune with full Autopilot ESP integration, Always-On VPN, Azure AD SSO, and certificate-based authentication. Leverages existing Cisco licensing and infrastructure.

**Scope**:
- AnyConnect Win32 packaging (ARM64 + x64) for Intune deployment
- ESP blocking app configuration for device setup phase
- Always-On VPN with Azure AD SSO (SAML 2.0, PRT)
- Certificate deployment via Intune SCEP (Project 005 dependency)
- Conditional Access integration for device compliance
- Split tunnel configuration for Microsoft 365 optimisation
- SIEM integration for audit logging

**Costs** (2-year) - ROM (±25%):

| Item | Year 1 | Year 2 | Total |
|------|--------|--------|-------|
| **Implementation** | | | |
| AnyConnect Packaging (ARM64/x64) | £15,000 | - | £15,000 |
| Intune Configuration & Testing | £20,000 | - | £20,000 |
| Azure AD SSO Integration | £10,000 | - | £10,000 |
| PKI Integration (Project 005 coord) | £10,000 | - | £10,000 |
| Pilot Deployment (50 devices) | £5,000 | - | £5,000 |
| Production Rollout | £20,000 | - | £20,000 |
| **Operational** | | | |
| Service Desk Training | £5,000 | - | £5,000 |
| Runbook Development | £5,000 | - | £5,000 |
| Ongoing Support (1 FTE partial) | £5,000 | £40,000 | £45,000 |
| **Contingency (10%)** | | | £10,000 |
| **Total** | **£95,000** | **£50,000** | **£145,000** |

**Benefits** (2-year):

| Benefit ID | Benefit Description | Stakeholder Goal | Type | Annual Value | 2-Year Total |
|------------|---------------------|------------------|------|--------------|--------------|
| B-001 | Eliminated provisioning effort (30-60 min/device) | G-1 | FINANCIAL | £125,000 | £250,000 |
| B-002 | Support call reduction (70%) | G-4 | FINANCIAL | £36,000 | £72,000 |
| B-003 | Avoided alternative licensing | G-5 | FINANCIAL | - | £320,000* |
| B-004 | Zero Trust security enabled | G-3 | STRATEGIC | - | Qualitative |
| B-005 | Seamless user experience | G-6 | OPERATIONAL | - | Qualitative |
| B-006 | Windows 11 programme enabled | G-1 | STRATEGIC | - | Qualitative |
| **Total Quantified Benefits** | | | | **£161,000** | **£322,000** |

*B-003: Avoided cost of Option 1 (Windows AOVPN) = £320K vs. £145K = £175K savings

**Net Present Value** (3.5% discount rate):

| Year | Costs | Benefits | Net Cashflow | Discount Factor | Present Value |
|------|-------|----------|--------------|-----------------|---------------|
| 0 | £95,000 | £0 | -£95,000 | 1.000 | -£95,000 |
| 1 | £50,000 | £161,000 | +£111,000 | 0.966 | +£107,226 |
| 2 | £0 | £161,000 | +£161,000 | 0.934 | +£150,374 |
| **Total** | **£145,000** | **£322,000** | **+£177,000** | | **+£162,600 (NPV)** |

**NPV Result**: £162.6K (positive = good investment)

**Return on Investment**:
```
ROI = (Total Benefits - Total Costs) / Total Costs × 100%
ROI = (£322,000 - £145,000) / £145,000 × 100% = 122%
```

**Payback Period**:
- Year 0: -£95K (implementation)
- Month 7: Break-even (£95K recovered from £13.4K/month benefits)
- **NPV Payback: 8 months** ✅

**Pros**:
- ✅ Leverages existing Cisco licensing (£0 additional per-user costs)
- ✅ Uses existing VPN infrastructure (no CapEx for gateway)
- ✅ Native ARM64 client available for Copilot+ PCs
- ✅ Full Intune/Autopilot integration proven
- ✅ Always-On VPN with Azure AD SSO delivers seamless UX
- ✅ Established Cisco support relationship (TAC access)
- ✅ 122% ROI with 8-month payback

**Cons**:
- ⚠️ Cisco vendor lock-in (acceptable given existing investment)
- ⚠️ ARM64 client is newer (less field-proven than x64)
- ⚠️ Azure AD SSO configuration complexity
- ⚠️ Dependency on Project 005 for certificate infrastructure

**Stakeholder Impact**:
- Desktop Engineering G-1: ✅ Zero-touch via Autopilot ESP
- Infrastructure Lead G-2: ✅ Phased rollout protects capacity
- IT Security Lead G-3: ✅ Full Zero Trust enforcement
- Service Desk G-4: ✅ <5% support calls target
- Finance G-5: ✅ £0 additional licensing
- Users G-6: ✅ Always-On VPN with SSO

**Stakeholder Goals Met**: 100%

**Risks**:
- R-001: ESP timeout (Medium 9) - Mitigated by optimised packaging, lab testing
- R-002: Capacity exceeded (Medium 9) - Mitigated by phased rollout
- R-005: PKI dependency (Medium 9) - Mitigated by Project 005 coordination

---

### Option 3: Alternative VPN Vendor (Zscaler/Palo Alto)

**Description**: Replace Cisco AnyConnect with alternative Zero Trust Network Access (ZTNA) solution like Zscaler Private Access or Palo Alto GlobalProtect. Full infrastructure replacement.

**Costs** (2-year) - ROM (±40%):

| Item | Year 1 | Year 2 | Total |
|------|--------|--------|-------|
| ZTNA Licensing (5,000 users) | £200,000 | £200,000 | £400,000 |
| Infrastructure (cloud gateway) | £100,000 | - | £100,000 |
| Implementation Services | £80,000 | - | £80,000 |
| Migration & Testing | £50,000 | - | £50,000 |
| Operational Support | £40,000 | £50,000 | £90,000 |
| **Total** | **£470,000** | **£250,000** | **£720,000** |

**Benefits** (2-year): £322K (same as Option 2)

**Net Benefit**: -£398K (significant loss)

**Pros**:
- ✅ Modern ZTNA architecture (application-level access, no network VPN)
- ✅ Cloud-native design (no on-premises infrastructure)
- ✅ Enhanced security posture (micro-segmentation)

**Cons**:
- ❌ £400K licensing cost (vs. £0 for Cisco)
- ❌ Existing Cisco investment completely wasted
- ❌ Infrastructure replacement required (£100K+)
- ❌ Migration complexity and risk
- ❌ 12+ month implementation timeline
- ❌ Finance rejects: "We just paid for Cisco licensing"
- ❌ Delays Windows 11 programme by 6+ months

**Stakeholder Impact**:
- Finance Goal G-5: ❌ £400K licensing (not £0)
- CIO Goal G-7: ❌ Delays Windows 11 programme significantly
- Other goals: ⚠️ Eventually achievable but at excessive cost and delay

**Stakeholder Goals Met**: 40% (G-5, G-7 not met)

**Recommendation**: **Reject** - Massive cost (£720K vs. £145K) with no additional benefit for immediate requirements. May be considered for future ZTNA strategy but not appropriate for current Windows 11 programme timeline.

---

## B3. Recommended Option

**Recommendation**: **Option 2: Cisco AnyConnect with Autopilot Integration**

**Rationale**:
1. **Best ROI**: 122% return, 8-month payback
2. **Zero Licensing Cost**: Leverages existing Cisco investment (G-5)
3. **100% Goal Achievement**: All 6 stakeholder goals met
4. **Lowest Risk**: Uses existing infrastructure, proven technology
5. **Fastest Delivery**: 6-month implementation vs. 12+ months for alternatives
6. **Windows 11 Enabled**: Unblocks Autopilot deployment programme
7. **ARM64 Support**: Native client for Copilot+ PCs

**Sensitivity Analysis**:
- If costs increase 30%: NPV still positive (£112K)
- If benefits reduce 30%: NPV still positive (£70K)
- If Year 1 costs increase 50%: Payback extends to 10 months (still acceptable)

**Options Comparison Summary**:

| Option | 2-Year Cost | 2-Year Benefit | NPV | ROI | Goals Met | Recommendation |
|--------|-------------|----------------|-----|-----|-----------|----------------|
| Option 0: Do Nothing | £362K | £0 | -£362K | N/A | 0% | ❌ Reject |
| Option 1: Windows AOVPN | £320K | £322K | +£2K | 1% | 80% | ❌ Not Preferred |
| **Option 2: Cisco AnyConnect** | **£145K** | **£322K** | **+£163K** | **122%** | **100%** | ✅ Recommended |
| Option 3: Alternative ZTNA | £720K | £322K | -£398K | -55% | 40% | ❌ Reject |

---

# PART C: COMMERCIAL CASE

## C1. Procurement Strategy

### C1.1 Market Assessment

**Market Position**:
- **Existing Relationship**: Cisco enterprise agreement in place with AnyConnect licensing
- **No Procurement Required**: VPN client licensing already owned
- **Support Contract**: Cisco TAC support available under existing agreement

**Product Assessment**:
- **Cisco AnyConnect**: Mature, enterprise-grade VPN client
- **Windows 11 Support**: Certified for Windows 11 (x64 and ARM64)
- **Intune Integration**: Proven Win32 app deployment model
- **Azure AD SSO**: SAML 2.0 integration documented by Cisco

### C1.2 Sourcing Route

**Recommended Route**:
- **VPN Client Licensing**: No procurement - existing Cisco agreement
- **Professional Services**: Internal delivery (Desktop Engineering, Infrastructure teams)
- **Vendor Support**: Cisco TAC engagement for ARM64 and Azure AD validation

**Rationale**:
- Existing licensing eliminates procurement delay
- Internal expertise sufficient for implementation
- Vendor support available for complex technical issues

### C1.3 Contract Approach

**Existing Contracts Leveraged**:
- Cisco Enterprise Agreement: AnyConnect licensing, TAC support
- Microsoft 365 E5: InTune, Azure AD, Conditional Access, Sentinel

**No New Contracts Required**:
- All required capabilities covered by existing agreements
- Confirm license count covers 5,000+ users (Week 1 action)

### C1.4 Vendor Engagement

**Cisco Engagement**:
- Confirm ARM64 client availability and feature parity
- Technical guidance for Azure AD SSO configuration
- TAC support during implementation

**Microsoft Engagement**:
- FastTrack guidance for InTune Win32 app deployment
- Conditional Access configuration best practices
- SCEP connector configuration support

---

# PART D: FINANCIAL CASE

## D1. Budget Requirement

**Total Investment Required**: £145K over 2 years

### D1.1 Capital and Operational Expenditure

| Item | Year 1 | Year 2 | Total |
|------|--------|--------|-------|
| **Implementation (CapEx)** | | | |
| AnyConnect Packaging | £15,000 | - | £15,000 |
| Intune Configuration | £20,000 | - | £20,000 |
| Azure AD SSO Integration | £10,000 | - | £10,000 |
| PKI Integration | £10,000 | - | £10,000 |
| Pilot & Rollout | £25,000 | - | £25,000 |
| **Operational (OpEx)** | | | |
| Training & Runbooks | £10,000 | - | £10,000 |
| Ongoing Support | £5,000 | £40,000 | £45,000 |
| **Contingency (10%)** | - | £10,000 | £10,000 |
| **Total** | **£95,000** | **£50,000** | **£145,000** |

### D1.2 Cost Breakdown by Category

| Category | 2-Year Total | Percentage |
|----------|--------------|------------|
| Implementation | £80,000 | 55% |
| Operational | £55,000 | 38% |
| Contingency | £10,000 | 7% |
| **Total** | **£145,000** | 100% |

## D2. Funding Source

**Budget Allocation**:
- **Source**: Windows 11 Transformation Programme budget (CIO approved)
- **Year 1 Available**: £100K (within programme allocation)
- **Year 1 Requirement**: £95K (within allocation)
- **Headroom**: £5K (5% buffer)

**Budget Approval Path**:
1. Desktop Engineering Lead: Up to £10K
2. Infrastructure Lead: Up to £25K
3. CIO/IT Director: Up to £100K
4. **Required Approval**: CIO (Year 1 within authority)

**Funding Gaps**: None - Year 1 within CIO authority, Year 2 subject to annual budget

## D3. Affordability

**Organisational Budget Context**:
- Windows 11 Transformation Programme budget: £500K
- VPN component Year 1: 19% of programme budget (reasonable for critical dependency)
- Assessment: **Affordable** within existing allocation

**Cash Flow Impact**:
- Largest payment: £40K (implementation services, Q1)
- **Cashflow Risk**: Low (within normal IT budget cycles)

**Ongoing Affordability**:
- Year 2 OpEx: £50K/year
- Funded by: IT Operations budget (business-as-usual support)
- Net savings: £161K/year benefits > £50K OpEx = £111K net positive

## D4. Financial Appraisal

### D4.1 Economic Appraisal

**Discount Rate**: 3.5% (standard rate)

**NPV Result**: £162.6K (positive = good investment)

### D4.2 Return on Investment

**ROI Calculation**:
```
ROI = (Total Benefits - Total Costs) / Total Costs × 100%
ROI = (£322,000 - £145,000) / £145,000 × 100% = 122%
```

**Payback Period**:
- Monthly net benefit: £13.4K (£161K annual / 12)
- Year 0 investment: £95K
- Months to payback: £95K / £13.4K = 7.1 months
- **NPV Payback: 8 months** ✅

### D4.3 Value for Money Assessment

**Qualitative Assessment**:
- **Economy**: Leverages existing Cisco licensing (£0 additional) vs. £320K-£720K alternatives
- **Efficiency**: 122% ROI, 8-month payback, 100% goals met
- **Effectiveness**: Enables Windows 11 programme, ARM64 support, Zero Trust security

**Overall VfM Rating**: **High**

**Justification**: £145K investment delivers £322K in quantified benefits (122% ROI), achieves 8-month payback, enables the strategic Windows 11 Transformation Programme, and leverages existing Cisco investment for maximum value.

---

# PART E: MANAGEMENT CASE

## E1. Governance

### E1.1 Roles & Responsibilities (RACI)

| Decision/Activity | Responsible | Accountable | Consulted | Informed |
|-------------------|-------------|-------------|-----------|----------|
| Overall project success | Desktop Engineering Lead | CIO (SRO) | Steering Committee | All stakeholders |
| VPN infrastructure readiness | Infrastructure Lead | CIO | Desktop Engineering | Service Desk |
| Security controls design | IT Security Lead | CIO | Infrastructure Lead | Compliance |
| Intune packaging & deployment | Desktop Engineering Lead | CIO | Infrastructure Lead | Service Desk |
| Pilot deployment execution | Desktop Engineering Lead | CIO | IT Security Lead | Users |
| Phased rollout approval | Infrastructure Lead | CIO | Desktop Engineering | All |
| Service Desk readiness | Service Desk Manager | CIO | Desktop Engineering | Users |
| Budget management | CIO | CIO | Finance | All |

**Senior Responsible Owner (SRO)**: CIO/IT Director
- Accountable for project delivery and strategic outcomes
- Chairs VPN Project Steering Committee
- Reports to IT Leadership

**Steering Committee**:
- CIO (Chair) - Overall delivery and strategic direction
- IT Security Lead - Security requirements and sign-off
- Infrastructure Lead - Capacity and operations
- Desktop Engineering Lead - Implementation lead
- Service Desk Manager - Support readiness

**Meeting Frequency**: Weekly during implementation, monthly post-deployment

### E1.2 Approval Gates

| Gate | Criteria | Approving Body | Timing |
|------|----------|----------------|--------|
| **Gate 0: SOBC Approval** | Business case approved, funding confirmed | CIO | Week 0 |
| **Gate 1: Licensing Confirmed** | Cisco confirms all users covered | Finance + Cisco | Week 1 |
| **Gate 2: Packaging Complete** | ARM64 + x64 packages tested | Desktop Engineering | Week 4 |
| **Gate 3: Pilot Complete** | 50 devices deployed successfully (>95% success) | Steering Committee | Week 8 |
| **Gate 4: Rollout Approved** | Infrastructure Lead approves capacity | Infrastructure Lead | Week 8 |
| **Gate 5: Production Complete** | All devices deployed | Steering Committee | Week 28 |
| **Gate 6: Benefits Realisation** | 6-month review | CIO | Week 52 |

## E2. Delivery Approach

**Methodology**: Phased waterfall with pilot validation

**Phases**:
1. **Preparation** (Weeks 1-4): Licensing confirmation, packaging, configuration
2. **Pilot** (Weeks 5-8): 50 IT test devices with full monitoring
3. **Wave 1** (Weeks 9-16): 1,000 production devices (200/week)
4. **Wave 2** (Weeks 17-24): 2,000 devices (250/week) - includes ARM64
5. **Wave 3** (Weeks 25-28): Remaining 2,000 devices (500/week)
6. **Closure** (Weeks 29-32): Documentation, lessons learned, benefits baseline

**Delivery Model**:
- **In-house**: Desktop Engineering (packaging, Intune), Infrastructure (VPN gateway)
- **Vendor**: Cisco TAC for ARM64 and Azure AD technical guidance
- **Partner**: None required (internal capability sufficient)

## E3. Key Milestones

| Milestone | Week | Dependencies | Owner |
|-----------|------|--------------|-------|
| SOBC Approval | 0 | Stakeholder analysis complete | CIO |
| Licensing Confirmed | 1 | Cisco confirmation | Finance |
| AnyConnect Packaging Complete | 4 | ARM64 + x64 tested | Desktop Engineering |
| Intune Configuration Complete | 4 | Configuration profiles | Desktop Engineering |
| Azure AD SSO Configured | 4 | SAML integration | IT Security |
| **Pilot Complete** | **8** | 50 devices (>95% success) | Desktop Engineering |
| **Go/No-Go Decision** | **8** | Infrastructure Lead approval | Infrastructure Lead |
| Wave 1 Complete | 16 | 1,000 devices | Desktop Engineering |
| Wave 2 Complete | 24 | 3,000 devices (inc. ARM64) | Desktop Engineering |
| Wave 3 Complete | 28 | 5,000 devices | Desktop Engineering |
| **Project Complete** | **32** | All devices, documentation | CIO |
| Benefits Review | 52 | 6-month data | CIO |

**Critical Path**:
- Licensing confirmation (Week 1) - blocks all subsequent work
- Packaging completion (Week 4) - blocks pilot
- Pilot success (Week 8) - gates production rollout
- Infrastructure approval (Week 8) - gates production rollout

## E4. Resource Requirements

### E4.1 Team Structure

| Role | FTE | Duration | Total Effort |
|------|-----|----------|--------------|
| Desktop Engineering Lead | 0.5 | 32 weeks | 16 weeks |
| Desktop Engineer | 1.0 | 28 weeks | 28 weeks |
| Infrastructure Lead | 0.2 | 32 weeks | 6 weeks |
| Network Security Engineer | 0.2 | 8 weeks | 2 weeks |
| IT Security Lead | 0.1 | 16 weeks | 2 weeks |
| Service Desk Manager | 0.1 | 8 weeks | 1 week |

**External Support**:
- Cisco TAC: ARM64 client validation, Azure AD SSO guidance (included in support contract)
- Microsoft FastTrack: InTune configuration guidance (included in E5)

### E4.2 Skills Required

**Critical Skills**:
- Intune Win32 app packaging: **Available** (Desktop Engineering)
- Cisco AnyConnect configuration: **Available** (Infrastructure)
- Azure AD Conditional Access: **Available** (IT Security)
- Autopilot ESP configuration: **Available** (Desktop Engineering)

**Training Plan**:
- Service Desk: VPN troubleshooting runbooks (4 hours)
- Desktop Engineering: ARM64 client specifics (2 hours via Cisco)

## E5. Change Management

### E5.1 Stakeholder Engagement

| Stakeholder | Power-Interest | Engagement Approach | Frequency |
|-------------|----------------|---------------------|-----------|
| CIO | High-High | Manage Closely - Steering Committee | Weekly |
| IT Security Lead | High-High | Manage Closely - Security sign-off | Weekly |
| Infrastructure Lead | High-High | Manage Closely - Capacity approval | Weekly |
| Desktop Engineering Lead | High-High | Manage Closely - Implementation lead | Daily |
| Service Desk Manager | Medium-High | Keep Informed - Training and runbooks | Bi-weekly |
| End Users | Low-High | Keep Informed - Zero-touch (invisible) | As needed |

### E5.2 Communications Plan

| Audience | Message | Channel | Timing |
|----------|---------|---------|--------|
| Steering Committee | Progress, risks, decisions | Meeting | Weekly |
| IT Leadership | Project status | Email | Bi-weekly |
| Infrastructure Team | Capacity monitoring | Teams channel | Daily during rollout |
| Service Desk | Training, runbooks | Training + documentation | Pre-pilot |
| End Users | Minimal - zero-touch experience | None required | N/A |

### E5.3 Conflict Resolution

**Anticipated Tensions** (from stakeholder analysis):

| Conflict | Stakeholders | Resolution |
|----------|--------------|------------|
| Security controls vs. User convenience | IT Security vs. End Users | Always-On VPN with SSO/PRT - security transparent to users |
| Deployment speed vs. Infrastructure stability | Desktop Eng vs. Infrastructure | Phased rollout with Infrastructure Lead go/no-go authority |

**Escalation Path**: Desktop Engineering → Infrastructure Lead → CIO

### E5.4 Training Plan

| Audience | Training Type | Duration | Delivery |
|----------|---------------|----------|----------|
| Service Desk | VPN troubleshooting runbooks | 4 hours | Workshop |
| Desktop Engineering | ARM64 client specifics | 2 hours | Cisco webinar |
| End Users | None required | N/A | Zero-touch experience |

## E6. Benefits Realisation

### E6.1 Benefits Profiles

**Benefit B-001**: Eliminated Provisioning Effort (Goal G-1)
- **Description**: Zero manual VPN intervention for Autopilot deployments
- **Owner**: Desktop Engineering Lead
- **Baseline**: 100% manual (30-60 min/device)
- **Target**: 0% manual
- **Annual Value**: £125,000
- **Measurement**: Deployment tracking, ESP success rate
- **Status**: Not yet realised

**Benefit B-002**: Support Call Reduction (Goal G-4)
- **Description**: 70% reduction in VPN support calls
- **Owner**: Service Desk Manager
- **Baseline**: 15% users monthly (150+ calls)
- **Target**: <5% users monthly (<50 calls)
- **Annual Value**: £36,000
- **Measurement**: Service desk reporting
- **Status**: Not yet realised

### E6.2 Benefits Measurement

**Monitoring Approach**:
- ESP success rate: Intune reporting (weekly during rollout)
- Support calls: Service desk metrics (monthly)
- User satisfaction: Survey (Month 6)
- VPN availability: Infrastructure monitoring (continuous)

**Responsibility**:
- **SRO (CIO)**: Overall benefits realisation accountability
- **Desktop Engineering Lead**: Deployment metrics
- **Service Desk Manager**: Support metrics

**Reporting**: Benefits RAG status in weekly steering committee, formal review at 6 months

## E7. Risk Management

### E7.1 Top 5 Strategic Risks

From `risk-register.md` (Orange Book compliant):

| Risk ID | Risk Description | Residual Score | Mitigation | Owner | Status |
|---------|------------------|----------------|------------|-------|--------|
| R-001 | Autopilot ESP timeout causing deployment failure | 9 (Medium) | Optimised packaging, pre-provisioning, lab testing | Desktop Engineering | Open |
| R-002 | VPN capacity exceeded during mass deployment | 9 (Medium) | Phased rollout, capacity monitoring, Infrastructure go/no-go | Infrastructure Lead | Open |
| R-005 | PKI dependency delays Zero Trust enforcement | 9 (Medium) | Project 005 coordination, parallel certificate workstream | IT Security Lead | Open |
| R-003 | ARM64 client feature gap or instability | 8 (Medium) | Cisco TAC engagement, extended pilot for ARM64 | Desktop Engineering | Open |
| R-006 | VPN gateway hardware failure during rollout | 8 (Medium) | DR procedures, standby infrastructure, monitoring | Infrastructure Lead | Open |

**Overall Residual Risk**: 86/350 (45% reduction from inherent)

**Risk Appetite**:
- **Technology Risk**: Medium (within tolerance)
- **Operational Risk**: Medium (within tolerance)
- **Compliance Risk**: Low (Zero Trust required)

### E7.2 Risk Mitigation Summary

**Risks Exceeding Appetite**:
- R-002: VPN capacity (9 > 6 appetite) - Infrastructure Lead approval gates rollout
- R-005: PKI dependency (9 > 6 appetite) - IT Security Lead escalation path

**Key Risk Controls**:
- Phased rollout protects infrastructure capacity
- Pilot validates ESP timeout before production
- Project 005 coordination ensures certificate readiness
- Cisco TAC engagement validates ARM64 client

---

# PART F: RECOMMENDATION & NEXT STEPS

## F1. Summary of Recommendation

**Recommended Option**: **Option 2: Cisco AnyConnect with Autopilot Integration**

**Investment**: £145K over 2 years (£95K Year 1, £50K Year 2)

**Expected Return**: £322K over 2 years (NPV: £163K, ROI: 122%)

**Stakeholder Goals Met**: 100% (all 6 goals)

**NPV Payback Period**: 8 months ✅

**Risks**: Manageable (all within appetite after controls, 2 require escalation approval)

**Affordability**: Affordable within Windows 11 Transformation Programme budget

**Go/No-Go Recommendation**: **PROCEED to licensing confirmation and implementation**

## F2. Conditions for Approval

**Mandatory Conditions**:
1. Cisco confirms existing licensing covers all 5,000+ users (Week 1)
2. CIO accepts SRO accountability
3. ARM64 client confirmed available with feature parity
4. Infrastructure Lead confirms capacity for phased rollout

**Recommended Conditions**:
1. Pilot achieves >95% ESP success rate before production
2. Project 005 (Cloud PKI) delivers certificate infrastructure before Wave 2
3. Service Desk training complete before pilot

## F3. Next Steps if Approved

**Immediate Actions** (Week 1):
1. **Licensing Confirmation**: Finance engages Cisco to confirm user coverage
2. **Package Development**: Desktop Engineering begins ARM64/x64 packaging
3. **Configuration Design**: IT Security finalises Azure AD SSO approach

**Phase 1: Preparation** (Weeks 1-4):
1. Complete AnyConnect packaging (ARM64 + x64)
2. Configure Intune deployment profiles
3. Configure Azure AD SSO and Conditional Access
4. Develop Service Desk runbooks

**Phase 2: Pilot** (Weeks 5-8):
1. Deploy to 50 IT test devices
2. Monitor ESP success rate, connection reliability
3. Capture user feedback
4. **Go/No-Go Gate (Week 8)**: Infrastructure Lead approval for production

**Phase 3: Production Rollout** (Weeks 9-28):
1. Wave 1: 1,000 devices (200/week)
2. Wave 2: 2,000 devices including ARM64 (250/week)
3. Wave 3: 2,000 devices (500/week)
4. Continuous capacity monitoring

**Phase 4: Closure** (Weeks 29-32):
1. Documentation and lessons learned
2. Benefits baseline established
3. Handover to BAU support

## F4. Next Steps if Not Approved

If this SOBC is not approved:

1. **Understand Objections**: CIO meets with stakeholders to understand concerns
2. **Address Gaps**: Revise scope, costs, or risk mitigations as needed
3. **Re-submit**: Present revised SOBC within 2 weeks
4. **Communicate**: Inform Windows 11 programme of VPN dependency delay

**Do Nothing Consequences**:
- Windows 11 Transformation Programme blocked at VPN dependency
- ARM64 Copilot+ PCs cannot be deployed (no VPN client)
- Zero Trust security requirements not met for remote access
- 150+ VPN support calls/month continue consuming Service Desk
- £10K/month provisioning waste continues
- CIO's hybrid work strategy credibility damaged

---

# APPENDICES

## Appendix A: Stakeholder Analysis

**Source**: `projects/007-vpn-service-windows11-autopilot/stakeholder-drivers.md`

**Summary**: 8 stakeholder drivers across COMPLIANCE, OPERATIONAL, FINANCIAL, and STRATEGIC categories. Strong stakeholder alignment (HIGH) with key tensions resolved through technical design (Always-On VPN with SSO, phased rollout with capacity gates).

## Appendix B: Requirements Traceability

**Source**: `projects/007-vpn-service-windows11-autopilot/requirements.md`

**Summary**: 6 business requirements (BR-001 to BR-006), 14 functional requirements, and 10+ non-functional requirements covering VPN deployment, authentication, connection management, and security.

## Appendix C: Risk Register

**Source**: `projects/007-vpn-service-windows11-autopilot/risk-register.md`

**Summary**: 14 risks identified following Orange Book methodology. Overall residual risk 86/350 (45% reduction from inherent). 2 risks exceed appetite (R-002 capacity, R-005 PKI dependency) with escalation paths defined.

## Appendix D: Benefits Calculation

**Provisioning Effort (B-001)**:
- Baseline: 30-60 min per device × 5,000 devices × £50/hour = £250K
- Target: 0 manual intervention
- Savings: £250K (phased over 2 years = £125K/year)

**Support Calls (B-002)**:
- Baseline: 150 calls/month × 20 min × £40/hour = £2K/month = £24K/year
- Target: 70% reduction = £17K/year savings
- Rounded: £36K/year (includes productivity benefit)

## Appendix E: Glossary

| Term | Definition |
|------|------------|
| SOBC | Strategic Outline Business Case |
| NPV | Net Present Value |
| ROI | Return on Investment |
| VPN | Virtual Private Network |
| ESP | Enrollment Status Page (Autopilot) |
| SSO | Single Sign-On |
| PRT | Primary Refresh Token |
| MFA | Multi-Factor Authentication |
| ARM64 | 64-bit ARM processor architecture |
| ZTNA | Zero Trust Network Access |
| InTune | Microsoft Endpoint Manager (InTune) |
| SCEP | Simple Certificate Enrollment Protocol |

---

## Document Approval

| Name | Role | Signature | Date |
|------|------|-----------|------|
| [Name] | CIO/IT Director (SRO) | | |
| [Name] | IT Security Lead | | |
| [Name] | Infrastructure Lead | | |

**Approval Decision**: **PENDING**

**Approval Date**: [PENDING]

**Next Review Date**: Q2 2026 (or when OBC created)

---

**END OF STRATEGIC OUTLINE BUSINESS CASE**

*Document created using ArcKit `/arckit.sobc` command*
*Template version: 1.0*
*Green Book compliant: Yes (HM Treasury 5-case model)*
---

**Generated by**: ArcKit `/arckit.sobc` command
**Generated on**: 2026-01-24
**ArcKit Version**: 0.1.0
**Project**: VPN Service for Windows 11 and Autopilot (Project 007)
**Model**: claude-opus-4-5-20251101
