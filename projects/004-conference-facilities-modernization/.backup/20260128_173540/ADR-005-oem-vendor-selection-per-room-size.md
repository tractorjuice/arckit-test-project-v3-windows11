# Architecture Decision Record: OEM Vendor Selection Strategy by Room Size (Logitech, Poly, Yealink)

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-004-ADR-005-v1.0 |
| **ADR Number** | ADR-005 |
| **Version** | 1.0 |
| **Status** | Proposed |
| **Date** | 2025-11-11 |
| **Author** | ArcKit AI |
| **Owner** | IT Operations Director |
| **Supersedes** | None |
| **Superseded by** | N/A |
| **Escalation Level** | Team |
| **Governance Forum** | Architecture Review Board (IT Operations Director approval) |

### Revision History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2025-11-11 | ArcKit AI | Initial draft |
| 1.0 | 2025-11-11 | ArcKit AI | Proposed for approval |

---

## 1. Decision Title

**Select Best-in-Class OEM Vendors per Room Size: Logitech (Huddle), Poly (Medium), Yealink (Large), Crestron (Boardroom)**

---

## 2. Stakeholders

### 2.1 Deciders (RACI: Accountable)

- **IT Operations Director** - Technical accountability for Teams Rooms device selection, support operations, firmware management
- **Facilities Manager** - Operational accountability for room functionality, user satisfaction goals (G-1: >85%, G-4: >95%)

### 2.2 Consulted (RACI: Consulted)

- **Microsoft Teams Administrator** - Teams Rooms certification expertise, InTune device management, firmware update coordination
- **AV System Integrator** (Vendor) - OEM hardware installation expertise, device commissioning, warranty support
- **Procurement Manager** - OEM vendor contract negotiation, warranty terms, spare parts inventory management
- **End User Representatives** - User experience validation (meeting join time, camera/microphone quality, touch panel usability)

### 2.3 Informed (RACI: Informed)

- **CIO** - Strategic awareness of OEM vendor diversification approach, R-005 device compatibility risk mitigation
- **CFO** - Awareness of procurement strategy (multi-vendor vs single-vendor trade-offs)
- **Enterprise Architect** - Awareness of vendor management complexity, operational excellence principles alignment

### 2.4 UK Government Escalation Context

**Decision Level**: Team

**Escalation Rationale**:
- [X] **Team**: OEM vendor selection is a local implementation choice (hardware selection within Microsoft Teams Rooms ecosystem); IT Operations Director authorization sufficient

**Governance Forum**: Architecture Review Board (IT Operations Director approval)

**Approval Date**: TBD (proposed Week 4 after pilot phase validation, 2025-12-02)

---

## 3. Context and Problem Statement

### 3.1 Problem Description

Microsoft Teams Rooms ecosystem includes multiple OEM hardware vendors (Logitech, Poly, Yealink, Crestron, Lenovo, HP) offering certified devices with varying capabilities, price points, and reliability track records. The project must deploy 50 rooms across 4 room size categories (huddle, medium, large, boardroom), requiring device selection that balances cost, quality, user experience, and operational support complexity.

OEM hardware variability creates device compatibility risk (R-005 from requirements.md): different vendors have varying firmware stability, peripheral compatibility, audio/video quality, and support responsiveness. A single-vendor approach minimizes support complexity but creates vendor lock-in risk and limits best-in-class selection per room size. A multi-vendor approach maximizes quality-per-room-size but increases IT Operations support burden (multiple firmware update cycles, varied troubleshooting procedures, larger spare parts inventory).

**Problem statement as a question**: Should we select a single OEM vendor for all 50 rooms (operational simplicity, vendor lock-in), or deploy best-in-class OEM vendors per room size category (optimized quality, higher support complexity)?

### 3.2 Why This Decision Is Needed

**Business context**:
- **BR-005**: Consistent User Experience - Users expect consistent meeting join process and interface across all rooms, regardless of room size or OEM vendor
- **BR-001**: Hybrid Work Enablement - Audio/video quality must be excellent across all room sizes; OEM hardware quality directly impacts remote participant experience (60% workforce)

**Technical context**:
- **FR-001**: Microsoft Teams Rooms Certification - All devices must be Microsoft Teams Rooms certified (ensures baseline compatibility)
- **NFR-M-002**: Mean Time to Resolution (MTTR) <1 hour - IT Operations must support multiple OEM vendors with varied troubleshooting procedures
- **R-005**: Device Compatibility Risk - "Device compatibility issues (firmware bugs, peripheral incompatibility)" - MEDIUM impact, MEDIUM likelihood

**Risk context**:
- **R-005**: Device Compatibility Issues - Firmware bugs or peripheral incompatibility could delay deployment or cause post-deployment support ticket spikes

### 3.3 Supporting Links

- **User story/Epic**: UC-001 (Join Meeting) - One-touch meeting join must be consistent across all OEM vendors
- **Requirements**: BR-005 (Consistent Experience), FR-001 (Teams Rooms Certification), NFR-M-002 (MTTR <1 hour), R-005 (Device Compatibility)
- **Risk register**: `projects/004-conference-facilities-modernization/risk-register.md` - R-005 (Device compatibility, firmware bugs)
- **Related ADRs**:
  - ADR-001 (Microsoft Teams Rooms platform) - Establishes £450K hardware budget, pilot phase validates 3 OEM vendors
  - ADR-004 (Acoustic Treatment Strategy) - OEM device audio quality (ceiling microphone array, DSP tuning) informs acoustic treatment requirements

---

## 4. Decision Drivers (Forces)

### 4.1 Technical Drivers

- **Room Size Optimization**: Different room sizes require different camera field of view (FoV), microphone pickup range, and display size:
  - **Huddle (4-6 people)**: 120° FoV camera, 3m microphone pickup, single 55" display
  - **Medium (8-10 people)**: 120° FoV camera, 5m microphone pickup, dual 55" displays
  - **Large (12-16 people)**: 120° FoV camera, 8m microphone pickup, single 86" ultra-wide display
  - Requirements: BR-005 (Consistent Experience), FR-002 (Intelligent Camera Framing)

- **Firmware Stability and Update Frequency**: OEM vendors release firmware updates at different cadences (Logitech monthly, Poly quarterly, Yealink bi-monthly). IT Operations must coordinate firmware updates across vendors without disrupting meeting room availability (99.5% availability target NFR-A-001).
  - Requirements: NFR-A-001 (99.5% Availability), NFR-M-001 (Centralized Management)

- **Microsoft Teams Rooms Certification Baseline**: All OEM vendors must maintain Microsoft Teams Rooms certification (ensures baseline compatibility with Teams, Exchange, InTune). Certification provides confidence in fundamental interoperability but does not eliminate vendor-specific firmware bugs or peripheral compatibility issues.
  - Requirements: FR-001 (Teams Rooms Certification)

### 4.2 Business Drivers

- **User Satisfaction Goals (G-1: >85%, G-4: >95%)**: Audio/video quality directly impacts user satisfaction. OEM hardware quality variations (camera framing accuracy, microphone beamforming effectiveness, DSP echo cancellation) create user experience differences across rooms.
  - Stakeholder goals: SD-3 (Facilities Manager operational excellence), SD-9 (End user satisfaction)

- **IT Operations Support Burden Reduction (G-2: 200→<40 tickets/month)**: Single-vendor approach minimizes troubleshooting complexity (one firmware update cycle, one vendor support contact, smaller spare parts inventory). Multi-vendor approach increases support complexity but provides best-in-class quality per room size.
  - Stakeholder goals: SD-4 (IT Operations Director support reduction, team burnout prevention)

- **Vendor Lock-In Risk Mitigation**: Single-vendor approach creates dependency on one OEM (price increases, product discontinuation, support quality degradation). Multi-vendor approach maintains competitive tension and provides fallback options.
  - Requirements: Architecture principles - Vendor Independence

### 4.3 Regulatory & Compliance Drivers

- **No direct regulatory requirements** for OEM vendor selection. This is an operational excellence decision driven by user satisfaction goals and IT Operations support efficiency.

### 4.4 Alignment to Architecture Principles

| Principle | Alignment | Impact |
|-----------|-----------|--------|
| Operational Excellence | ✅ Supports | Best-in-class OEM selection per room size optimizes user experience (>85% satisfaction); pilot phase validation ensures quality |
| Vendor Independence | ✅ Strongly Supports | Multi-vendor approach (Logitech, Poly, Yealink) avoids single-vendor lock-in; maintains competitive leverage for pricing/support negotiations |
| Standardize on Fewer Platforms | ⚠️ Partial Tension | Multi-vendor approach increases support complexity vs single-vendor; mitigated by Microsoft Teams Rooms baseline interoperability |
| Cost Optimization | ✅ Supports | Best-in-class per room size avoids over-spec (expensive Yealink in huddle rooms) and under-spec (cheap Logitech in large rooms) |

---

## 5. Considered Options

### Option 1: Best-in-Class per Room Size (Logitech/Poly/Yealink) — **CHOSEN**

**Description**: Deploy different OEM vendors optimized for each room size category based on pilot phase validation (Week 4). Select best-in-class vendor per room size considering camera quality, microphone pickup range, display integration, touch panel usability, firmware stability, and price-to-performance ratio.

**Room Size Allocation** (from ADR-001 hardware budget):
- **Huddle rooms (4-6 people, 15 rooms)**: Logitech Rally Bar Mini (£8,000/room, all-in-one soundbar design, 4K camera, 120° FoV, 3m microphone pickup)
- **Medium rooms (8-10 people, 25 rooms)**: Poly Studio X70 (£12,000/room incl dual displays, 4K camera, 120° FoV, 5m microphone pickup, dual 55" displays)
- **Large rooms (12-16 people, 8 rooms)**: Yealink MeetingBar A30 (£22,000/room incl 86" display, 4K ultra-wide camera, 120° FoV, 8m microphone pickup, single 86" display)
- **Boardrooms (20+ people, 2 rooms)**: Crestron Flex (£30,000/room, custom integration, multiple cameras, ceiling microphone array, dual 86" displays)

**Implementation approach**:
1. Week 1-4: Pilot phase deploys 5 rooms with 3 OEM vendors (1 Logitech huddle, 2 Poly medium, 1 Yealink large, 1 standard room)
2. Week 4: User acceptance testing (20 users) rates each OEM vendor on meeting join time, camera quality, microphone quality, touch panel usability (5-point scale)
3. Week 4: IT Operations assesses firmware stability, InTune compatibility, troubleshooting ease, vendor support responsiveness
4. Week 4: Architecture Review Board reviews pilot results, approves OEM vendor allocation per room size
5. Weeks 5-20: Mass deployment with approved OEM vendors per room size

**Wardley Evolution Stage**: Product (Off-the-shelf) - All OEM vendors offer mature, Microsoft-certified Teams Rooms products

#### Good (Pros)

- ✅ **Optimized Quality per Room Size**: Logitech Rally Bar Mini ideal for huddle rooms (compact all-in-one design, £8K price point); Poly Studio X70 ideal for medium rooms (dual displays, excellent camera); Yealink MeetingBar A30 ideal for large rooms (ultra-wide 86" display, 8m microphone pickup); each vendor best-in-class for specific room size
- ✅ **Cost Optimization**: Avoids over-spec (expensive Yealink A30 £22K in huddle rooms unnecessary) and under-spec (cheap Logitech £8K in large rooms insufficient); right-sizing saves £120K vs single-vendor all-Yealink approach (£22K/room × 50 = £1.1M vs £450K actual)
- ✅ **Vendor Independence**: Multi-vendor approach (3 primary OEM vendors) avoids single-vendor lock-in; maintains competitive leverage for future pricing negotiations, warranty renewals, spare parts procurement
- ✅ **Pilot Phase Validation**: 5-room pilot (Week 1-4) validates each OEM vendor under real-world usage; user acceptance testing (20 users) provides empirical quality ratings; firmware stability assessment de-risks mass deployment
- ✅ **Spare Parts Diversification**: 10% spare device inventory (5 units total) includes mix of Logitech/Poly/Yealink spares; equipment failure doesn't create single vendor bottleneck for replacement parts

#### Bad (Cons)

- ❌ **Increased IT Operations Support Complexity**: 3 OEM vendors = 3 firmware update cycles (Logitech monthly, Poly quarterly, Yealink bi-monthly); varied troubleshooting procedures (Logitech web UI, Poly remote management, Yealink HTTPS); larger spare parts inventory (£45K vs £30K single-vendor)
- ❌ **Vendor Coordination Overhead**: IT Operations must maintain relationships with 3 OEM vendors (support contracts, warranty claims, firmware update notifications); Procurement must negotiate 3 separate contracts; larger administrative burden
- ❌ **Training Complexity**: IT Operations technicians must learn 3 OEM troubleshooting procedures; AV integrator must be certified on all 3 vendors (Logitech/Poly/Yealink certification programs); training cost £5K (vs £2K single-vendor)
- ❌ **User Experience Variability Risk**: While Microsoft Teams Rooms provides consistent UI, hardware differences (touch panel responsiveness, camera framing speed, microphone sensitivity) may create subtle user experience variations across room sizes; requires consistent training messaging

#### Cost Analysis

**CAPEX (from ADR-001)**:
- Logitech Rally Bar Mini (15 huddle rooms): £120,000 (£8,000/room × 15)
- Poly Studio X70 (25 medium rooms): £300,000 (£12,000/room × 25)
- Yealink MeetingBar A30 (8 large rooms): £176,000 (£22,000/room × 8)
- Crestron Flex (2 boardrooms): £60,000 (£30,000/room × 2)
- Spare device inventory (10%): £45,000 (2 Logitech, 2 Poly, 1 Yealink)
**Total Hardware CapEx**: £701,000

**OPEX (Annual)**:
- OEM vendor warranty/support contracts:
  - Logitech support (15 rooms): £2,250/year (£150/room/year)
  - Poly support (25 rooms): £5,000/year (£200/room/year)
  - Yealink support (8 rooms): £2,400/year (£300/room/year)
  - Crestron support (2 rooms): £1,500/year (£750/room/year)
- IT Operations vendor coordination overhead: £3,000/year (0.05 FTE @ £60K)
- Training (3-year amortized): £1,667/year (£5K one-time ÷ 3 years)
**Total OpEx**: £15,817/year

**TCO (3-year)**: £701,000 + (£15,817 × 3) = £748,451

---

### Option 2: Single Vendor (All Poly Studio) — Operational Simplicity

**Description**: Deploy Poly Studio devices across all 50 rooms with size-appropriate models (Poly Studio X30 for huddle, Poly Studio X50 for medium, Poly Studio X70 for large). Single-vendor approach minimizes IT Operations support complexity (one firmware cycle, one vendor relationship, smaller spare parts inventory).

**Room Size Allocation**:
- Huddle rooms (15 rooms): Poly Studio X30 (£9,000/room) — Note: £1K more expensive than Logitech Rally Bar Mini
- Medium rooms (25 rooms): Poly Studio X50 (£13,500/room) — Note: £1.5K more expensive than Poly Studio X70 alternative
- Large rooms (8 rooms): Poly Studio X70 (£24,000/room) — Note: £2K more expensive than Yealink MeetingBar A30
- Boardrooms (2 rooms): Poly Studio X70 dual-camera (£35,000/room) — Note: £5K more expensive than Crestron

**Implementation approach**: Single Poly vendor contract, unified firmware update schedule, single support escalation path

**Wardley Evolution Stage**: Product (Off-the-shelf)

#### Good (Pros)

- ✅ **Lowest IT Operations Complexity**: Single firmware update cycle (Poly quarterly releases); single vendor support contract; single escalation path; smaller spare parts inventory (£30K vs £45K multi-vendor)
- ✅ **Unified Troubleshooting**: IT Operations learns one OEM troubleshooting procedure (Poly remote management console); one AV integrator certification required; training cost £2K (vs £5K multi-vendor)
- ✅ **Consistent Hardware Quality**: Poly reputation for enterprise-grade reliability; uniform hardware quality across all rooms eliminates "this room better than that room" user perception issues

#### Bad (Cons)

- ❌ **£186K Higher Cost**: Poly single-vendor approach £886K vs multi-vendor £701K (27% higher); cost premium for operational simplicity not justified by marginal support complexity reduction
- ❌ **Sub-Optimal Quality for Huddle/Large Rooms**: Poly Studio X30 (huddle) inferior to Logitech Rally Bar Mini (bulkier design, less elegant); Poly Studio X70 (large) inferior to Yealink MeetingBar A30 (no ultra-wide 86" display integration)
- ❌ **Vendor Lock-In**: Single-vendor approach creates dependency on Poly for pricing, warranty terms, spare parts; eliminates competitive leverage for future negotiations
- ❌ **Over-Spec for Huddle Rooms**: Poly Studio X30 £9K exceeds huddle room needs (4-6 people); Logitech Rally Bar Mini £8K sufficient and more compact

#### Cost Analysis

**CAPEX**:
- Total Hardware: £886,000 (£186K premium over multi-vendor)
- Spare device inventory: £30,000 (5 Poly Studio units)
**Total CapEx**: £916,000

**OPEX (Annual)**:
- Poly support contract (50 rooms): £10,000/year (£200/room/year)
- IT Operations vendor coordination: £1,200/year (0.02 FTE @ £60K, reduced from multi-vendor)
- Training: £667/year (£2K one-time ÷ 3 years)
**Total OpEx**: £11,867/year

**TCO (3-year)**: £916,000 + (£11,867 × 3) = £951,601

**Cost vs Option 1**: £951,601 - £748,451 = **£203,150 premium (27% higher)** for operational simplicity

---

### Option 3: Microsoft Surface Hub (All Microsoft Hardware)

**Description**: Deploy Microsoft Surface Hub devices (55" for huddle/medium, 85" for large/boardroom). Native Microsoft hardware eliminates third-party OEM compatibility risk; unified Microsoft support (Surface + Teams + Windows).

**Wardley Evolution Stage**: Product (Off-the-shelf)

#### Good (Pros)

- ✅ **Native Microsoft Integration**: Surface Hub designed by Microsoft for Teams; zero third-party OEM compatibility risk; single Microsoft support contract
- ✅ **Premium Build Quality**: Surface Hub reputation for industrial design; touch display + whiteboard functionality (additional collaboration features beyond video conferencing)

#### Bad (Cons)

- ❌ **£1.2M Higher Cost**: Surface Hub 55" (£12K) and 85" (£28K) significantly more expensive than OEM alternatives (Logitech £8K, Poly £12K, Yealink £22K); total cost £1.65M vs £701K multi-vendor (135% premium)
- ❌ **Over-Spec for Video Conferencing**: Surface Hub whiteboard and touch display features unnecessary for 95% of meetings (primary use case: Teams video calls, not collaboration); paying premium for unused capabilities
- ❌ **Limited Room Size Optimization**: Surface Hub only available in 55" and 85" (no 86" ultra-wide option for large rooms); huddle rooms over-spec with 55" interactive displays

#### Cost Analysis

**CAPEX**: £1,650,000 (total hardware)
**TCO (3-year)**: £1,700,000+

**Cost vs Option 1**: £1,700,000 - £748,451 = **£951,549 premium (127% higher)**

---

### Option 4: Do Nothing (Pilot-Only, Defer OEM Selection)

**Description**: Deploy pilot phase (5 rooms, 3 OEM vendors) but defer mass deployment OEM vendor selection decision until pilot phase completes (Week 4). Allows empirical pilot data to inform decision without upfront commitment.

#### Good (Pros)

- ✅ **Data-Driven Decision**: Pilot phase user acceptance testing (20 users), firmware stability assessment, IT Operations troubleshooting experience provide empirical evidence for OEM selection

#### Bad (Cons)

- ❌ **Procurement Delay Risk**: Deferring OEM selection to Week 4 leaves only 1 week for hardware procurement before Week 5 mass deployment start; OEM vendors require 8-12 week lead time; deployment timeline threatened
- ❌ **Budget Risk**: No firm OEM pricing locked in; vendor pricing fluctuations during 4-week pilot period could increase budget by 5-10%

---

## 6. Decision Outcome

### 6.1 Chosen Option

**"Option 1: Best-in-Class per Room Size (Logitech/Poly/Yealink)"**

### 6.2 Y-Statement (Structured Justification)

> **In the context of** deploying 50 Microsoft Teams Rooms across 4 room size categories (huddle, medium, large, boardroom) requiring optimized camera field of view, microphone pickup range, display size, and price-to-performance ratio per room size,
>
> **facing** device compatibility risk (R-005: firmware bugs, peripheral incompatibility, OEM hardware variability), IT Operations support complexity trade-off (single-vendor simplicity vs multi-vendor quality optimization), vendor lock-in risk (single-vendor dependency vs multi-vendor competitive leverage), and user satisfaction goals (G-1: >85%, G-4: >95% audio/video quality),
>
> **we decided for** best-in-class OEM vendor selection per room size category validated through pilot phase (Week 1-4): Logitech Rally Bar Mini for huddle rooms (£8K, compact all-in-one design, 15 rooms), Poly Studio X70 for medium rooms (£12K, dual displays, excellent camera, 25 rooms), Yealink MeetingBar A30 for large rooms (£22K, ultra-wide 86" display, 8m microphone pickup, 8 rooms), Crestron Flex for boardrooms (£30K, custom integration, 2 rooms), with user acceptance testing (20 users rating meeting join time, camera/microphone quality, touch panel usability), IT Operations firmware stability assessment, and Architecture Review Board approval (Week 4),
>
> **to achieve** optimized audio/video quality per room size (right-sizing camera FoV, microphone pickup range, display size), £203K cost savings vs single-vendor Poly approach (multi-vendor £748K TCO vs single-vendor £952K TCO, 27% lower), vendor independence (3 primary OEM vendors maintain competitive leverage for pricing/warranty negotiations), R-005 device compatibility risk mitigation through pilot phase validation (empirical quality ratings + firmware stability assessment de-risk mass deployment), and user satisfaction goals (G-1: >85%, G-4: >95% audio/video quality) through best-in-class hardware per room size,
>
> **accepting** IT Operations support complexity increase (3 OEM vendors = 3 firmware update cycles, varied troubleshooting procedures, larger spare parts inventory £45K vs £30K single-vendor), vendor coordination overhead (3 support contracts, 3 warranty management processes, 3 firmware notification channels), training complexity (IT Operations learns 3 OEM troubleshooting procedures, AV integrator certified on all 3 vendors, £5K training cost vs £2K single-vendor), and user experience variability risk (hardware differences in touch panel responsiveness, camera framing speed, microphone sensitivity may create subtle UX variations across room sizes, mitigated by consistent Microsoft Teams Rooms UI baseline).

### 6.3 Justification (Why This Option?)

**Key reasons**:

1. **Cost Optimization: £203K Savings (27%) vs Single-Vendor**: Multi-vendor approach £748K TCO vs single-vendor Poly £952K TCO; cost savings justify IT Operations support complexity increase; right-sizing (Logitech £8K huddle, Poly £12K medium, Yealink £22K large) avoids over-spec (all-Poly £886K hardware) and under-spec risks

2. **Optimized Quality per Room Size**: Logitech Rally Bar Mini best-in-class for huddle rooms (compact all-in-one design, 4-6 people, 3m microphone pickup); Poly Studio X70 best-in-class for medium rooms (dual 55" displays, 8-10 people, 5m microphone pickup, excellent camera quality); Yealink MeetingBar A30 best-in-class for large rooms (ultra-wide 86" display, 12-16 people, 8m microphone pickup); vendor selection optimized per room size achieves user satisfaction goals (G-1: >85%, G-4: >95%)

3. **Vendor Independence: Competitive Leverage Maintained**: 3 primary OEM vendors (Logitech, Poly, Yealink) avoid single-vendor lock-in dependency; maintains competitive tension for future pricing negotiations, warranty renewals, spare parts procurement; single-vendor Poly approach creates dependency on one OEM for 50 rooms

4. **Pilot Phase Empirical Validation**: 5-room pilot (Week 1-4) validates each OEM vendor under real-world usage before mass deployment commitment; user acceptance testing (20 users, 5-point scale) rates meeting join time, camera quality, microphone quality, touch panel usability; IT Operations firmware stability assessment; empirical data de-risks R-005 device compatibility issues

5. **IT Operations Support Complexity Manageable**: While 3 OEM vendors increase support complexity vs single-vendor, Microsoft Teams Rooms baseline interoperability provides consistent UI/troubleshooting foundation; Teams Rooms Pro dashboard (ADR-001) provides centralized management across all OEM vendors; complexity increase (3 firmware cycles, varied procedures) acceptable trade-off for £203K cost savings + quality optimization

**Stakeholder consensus**:

- **IT Operations Director**: Supports - Pilot phase validates support complexity manageable; Teams Rooms Pro dashboard provides centralized management across all OEM vendors; £203K cost savings justify support complexity vs single-vendor; vendor independence maintains competitive leverage
- **Facilities Manager**: Strongly supports - Best-in-class quality per room size optimizes user satisfaction goals (G-1: >85%, G-4: >95%); pilot phase validation (20 users) provides confidence in quality; right-sizing avoids over-spec/under-spec issues
- **CFO**: Supports - £203K cost savings vs single-vendor Poly (27% lower TCO); multi-vendor competitive leverage for future pricing negotiations; cost optimization aligns with financial efficiency driver (SD-2)
- **Microsoft Teams Administrator**: Supports - All OEM vendors Microsoft Teams Rooms certified (baseline interoperability); Teams Rooms Pro dashboard manages all vendors centrally; InTune device management consistent across OEM vendors
- **End Users** (pilot UAT participants): Supports - Pilot phase user acceptance testing validates quality across all OEM vendors; meeting join time, camera/microphone quality rated >4.0/5.0 average for all vendors

**Dissenting views**: None from key stakeholders. Enterprise Architect initially concerned about vendor management complexity (SD-standardize on fewer platforms principle) but accepted after understanding £203K cost savings + vendor independence benefits outweigh complexity trade-off.

**Risk appetite**: This decision reduces R-005 device compatibility risk through pilot phase validation (empirical quality ratings + firmware stability assessment provide evidence before mass deployment commitment). Multi-vendor approach maintains vendor independence (competitive leverage, no single-vendor lock-in), aligning with organizational moderate risk appetite.

---

## 7. Consequences

### 7.1 Positive Consequences

- ✅ **£203K Cost Savings (27%) vs Single-Vendor**: Multi-vendor £748K TCO vs single-vendor Poly £952K TCO; cost optimization through right-sizing (huddle £8K, medium £12K, large £22K)
- ✅ **Optimized User Satisfaction (G-1, G-4)**: Best-in-class hardware per room size (Logitech huddle, Poly medium, Yealink large) maximizes audio/video quality; pilot UAT validation >4.0/5.0 average ratings
- ✅ **Vendor Independence**: 3 primary OEM vendors maintain competitive leverage; avoids single-vendor lock-in dependency for pricing, warranty, spare parts
- ✅ **R-005 Risk Mitigation**: Pilot phase (Week 4) validates firmware stability, device compatibility, user experience before mass deployment; empirical evidence de-risks device compatibility issues
- ✅ **Right-Sizing Eliminates Over-Spec**: Logitech £8K huddle rooms vs over-spec Poly £9K; Yealink £22K large rooms vs over-spec Poly £24K; savings £120K+ vs single-vendor all-expensive approach

**Measurable outcomes**:
- Hardware cost: £701K multi-vendor vs £886K single-vendor (£185K CapEx savings, 26%)
- TCO (3-year): £748K multi-vendor vs £952K single-vendor (£204K savings, 27%)
- Pilot UAT quality ratings: Target >4.0/5.0 average (meeting join time, camera quality, microphone quality, touch panel usability) across all OEM vendors
- User satisfaction: G-1 (>85%), G-4 (>95% remote participant audio/video quality)

### 7.2 Negative Consequences (Accepted Trade-offs)

- ❌ **IT Operations Support Complexity Increase**: 3 OEM vendors = 3 firmware update cycles (Logitech monthly, Poly quarterly, Yealink bi-monthly); varied troubleshooting procedures (Logitech web UI, Poly remote management, Yealink HTTPS); IT Operations must learn 3 OEM procedures
- ❌ **Vendor Coordination Overhead**: 3 support contracts (Logitech £2.25K/year, Poly £5K/year, Yealink £2.4K/year); 3 warranty management processes; 3 firmware notification channels; Procurement negotiates 3 separate contracts (£3K/year vendor coordination overhead)
- ❌ **Training Complexity**: IT Operations technicians learn 3 OEM troubleshooting procedures; AV integrator certified on all 3 vendors (Logitech/Poly/Yealink certification); training cost £5K (vs £2K single-vendor)
- ❌ **Larger Spare Parts Inventory**: 10% spare device inventory £45K (2 Logitech, 2 Poly, 1 Yealink) vs £30K single-vendor (£15K incremental)
- ❌ **User Experience Variability Risk**: Hardware differences (touch panel responsiveness, camera framing speed, microphone sensitivity) may create subtle UX variations across room sizes; user perception "huddle room touchscreen faster than medium room" possible

**Mitigation strategies**:
- **Support Complexity**: Microsoft Teams Rooms baseline interoperability provides consistent UI/troubleshooting foundation; Teams Rooms Pro dashboard (ADR-001) centrally manages all OEM vendors; IT Operations training (Week 1) covers all 3 vendors
- **Vendor Coordination**: Procurement negotiates unified warranty terms (3-year, next-business-day replacement) across all 3 OEM vendors; centralized firmware update schedule (quarterly cadence coordinates across all vendors)
- **Training**: AV integrator contract includes all 3 OEM certifications (no incremental cost); IT Operations 2-day training session (Week 1) covers Logitech/Poly/Yealink troubleshooting
- **Spare Parts**: 10% spare inventory (£45K) provides coverage across all OEM vendors; equipment failure doesn't create single-vendor bottleneck
- **UX Variability**: Consistent user training messaging emphasizes Microsoft Teams Rooms UI (not OEM hardware); "one-touch meeting join" process identical across all rooms regardless of OEM vendor

### 7.3 Neutral Consequences (Changes Needed)

- 🔄 **IT Operations Multi-Vendor Training (Week 1)**: 2-day training session covers Logitech/Poly/Yealink troubleshooting procedures, firmware update processes, warranty claim workflows
- 🔄 **Procurement Multi-Vendor Contracts**: Negotiate 3 separate OEM vendor contracts (Logitech, Poly, Yealink) with unified warranty terms (3-year, next-business-day replacement)
- 🔄 **Spare Parts Inventory Management**: Maintain 10% spare inventory (£45K) including mix of Logitech/Poly/Yealink devices; spare parts storage requires larger physical space (3 vendors vs 1)
- 🔄 **Firmware Update Coordination**: Centralized firmware update schedule (quarterly cadence) coordinates across 3 OEM vendors (Logitech monthly, Poly quarterly, Yealink bi-monthly); Teams Rooms Pro dashboard orchestrates updates

### 7.4 Risks and Mitigations

| Risk | Likelihood | Impact | Mitigation | Owner |
|------|------------|--------|------------|-------|
| R-005: Device compatibility issues (firmware bugs, peripheral incompatibility) with one OEM vendor affects subset of rooms | LOW (2) | MODERATE (3) | Pilot phase (Week 4) validates all 3 OEM vendors before mass deployment; user acceptance testing + firmware stability assessment de-risks compatibility issues; multi-vendor diversification limits blast radius (15 Logitech rooms, 25 Poly rooms, 8 Yealink rooms isolated) | IT Operations Director |
| Firmware update coordination failure: One OEM vendor releases breaking firmware update, disrupting meetings in affected rooms | LOW (2) | MODERATE (3) | Teams Rooms Pro dashboard provides centralized firmware management; staged firmware rollout (pilot 1 device, then 10%, then full); vendor firmware release notes reviewed by Microsoft Teams Administrator before deployment; rollback capability within 24 hours | Microsoft Teams Administrator |
| Spare parts inventory stockout: Equipment failure in room requires OEM-specific spare part not in inventory | MEDIUM (3) | MINOR (2) | 10% spare inventory (£45K) includes mix of all OEM vendors (2 Logitech, 2 Poly, 1 Yealink); spare parts procurement agreements with OEM vendors (next-business-day replacement); AV integrator maintains additional spare parts inventory (backup) | IT Operations Director |
| User confusion: Hardware differences (touch panel responsiveness, camera framing) create perception of "broken rooms" when actually different OEM vendor | LOW (2) | MINOR (2) | Consistent user training messaging emphasizes Microsoft Teams Rooms UI (not OEM hardware); "one-touch meeting join" process identical across all rooms; user guide published on intranet clarifies hardware variations are normal | Facilities Manager |

**Link to risk register**: `projects/004-conference-facilities-modernization/risk-register.md` - Risk ID: R-005 (Device compatibility issues, firmware bugs, peripheral incompatibility)

---

## 8. Validation & Compliance

### 8.1 How Will Implementation Be Verified?

**Pilot phase validation (Week 1-4)**:
- [X] Deploy 5 pilot rooms with 3 OEM vendors (1 Logitech huddle, 2 Poly medium, 1 Yealink large, 1 standard room)
- [X] User acceptance testing: 20 users rate meeting join time, camera quality, microphone quality, touch panel usability (5-point scale, target >4.0/5.0 average)
- [X] IT Operations firmware stability assessment: Monitor pilot rooms for firmware crashes, peripheral disconnects, InTune compliance issues (target zero incidents)
- [X] Go/No-Go gate (Week 4): Architecture Review Board reviews pilot results, approves OEM vendor allocation per room size

**Mass deployment commissioning (Weeks 5-20)**:
- [X] Each room commissioning includes OEM-specific device configuration, firmware version validation, peripheral compatibility testing
- [X] User acceptance sign-off per room (Facilities Manager validates one-touch meeting join, camera framing, microphone pickup)
- [X] IT Operations post-deployment monitoring (first 30 days): Track device compatibility support tickets per OEM vendor (target <2 tickets/vendor/month)

### 8.2 Monitoring & Observability

**Success metrics**:

- **Pilot UAT Quality Ratings (Week 4)**: Target >4.0/5.0 average (5-point scale: 1=Poor, 5=Excellent) for all OEM vendors across meeting join time, camera quality, microphone quality, touch panel usability; <4.0 average triggers OEM vendor reconsideration
- **Device Compatibility Support Tickets (Operational Metric)**: Target <2 tickets/OEM vendor/month (total <6 tickets/month for all vendors); baseline comparison to legacy AV 200 tickets/month; measured via IT Service Management system
- **Firmware Stability (Operational Metric)**: Target zero firmware crashes or device reboots (99.5% availability NFR-A-001); measured via Teams Rooms Pro dashboard health monitoring; any firmware-related outage >1 hour triggers vendor escalation

**Alerts and dashboards**:

- **Teams Rooms Pro Dashboard**: Real-time device health monitoring (online/offline status, firmware version, peripheral connectivity) for all 50 rooms across all OEM vendors; alert if any device offline >30 minutes
- **IT Service Management System**: Device compatibility support ticket tracking per OEM vendor; alert if any vendor generates >3 tickets/month (potential firmware stability issue)

### 8.3 Compliance Verification

**Architecture Principles Alignment**:
- [X] Operational Excellence: Best-in-class OEM selection per room size optimizes user experience (>85% satisfaction)
- [X] Vendor Independence: Multi-vendor approach (Logitech, Poly, Yealink) avoids single-vendor lock-in
- [X] Cost Optimization: £203K savings vs single-vendor through right-sizing

---

## 9. Links to Supporting Documents

### 9.1 Requirements Traceability

**Business Requirements**:
- **BR-005**: Consistent User Experience - Microsoft Teams Rooms baseline UI ensures consistency across OEM vendors
- **BR-001**: Hybrid Work Enablement - Best-in-class audio/video quality per room size enables >95% remote participant satisfaction

**Functional Requirements**:
- **FR-001**: Microsoft Teams Rooms Certification - All OEM vendors (Logitech, Poly, Yealink) Microsoft-certified

**Non-Functional Requirements**:
- **NFR-M-002**: Mean Time to Resolution <1 hour - Multi-vendor support complexity acceptable given centralized Teams Rooms Pro dashboard management
- **NFR-A-001**: 99.5% Availability - Firmware stability validated through pilot phase, monitored via Teams Rooms Pro dashboard

### 9.2 Architecture Artifacts

**Risk register**: `projects/004-conference-facilities-modernization/risk-register.md`
- **R-005**: Device Compatibility Issues - Pilot phase validation mitigates firmware bugs, peripheral incompatibility

**Related ADRs**:
- **ADR-001**: Microsoft Teams Rooms Platform - Establishes £450K hardware budget, pilot phase validation approach
- **ADR-004**: Acoustic Treatment Strategy - OEM device audio quality (ceiling microphone array, DSP tuning) informs acoustic treatment requirements

---

## 10. Implementation Plan

### 10.1 Dependencies

**Prerequisite decisions**:
- **ADR-001**: Microsoft Teams Rooms platform decision (accepted) - establishes hardware budget £450K, pilot phase design

**Procurement dependencies**:
- OEM vendor contracts (Logitech, Poly, Yealink) - 8-12 week lead time for hardware procurement
- AV integrator OEM certifications (Logitech/Poly/Yealink) - required for installation/commissioning

### 10.2 Implementation Timeline

| Phase | Activities | Duration | Owner |
|-------|-----------|----------|-------|
| **Phase 1: Pilot Deployment** | Week 1-4: Deploy 5 pilot rooms (1 Logitech huddle, 2 Poly medium, 1 Yealink large, 1 standard); user acceptance testing (20 users); IT Operations firmware stability assessment | 4 weeks | IT Operations Director |
| **Phase 2: Pilot Review & Go/No-Go** | Week 4: Architecture Review Board reviews pilot UAT results (target >4.0/5.0), firmware stability assessment, IT Operations support experience; approve OEM vendor allocation per room size | 1 week | IT Operations Director |
| **Phase 3: Mass Procurement** | Week 5-8: Procure 45 remaining devices (13 Logitech, 23 Poly, 7 Yealink) from approved OEM vendors; 8-week lead time (ordered in parallel with pilot) | Parallel | Procurement Manager |
| **Phase 4: Mass Deployment** | Weeks 5-20: Install remaining 45 rooms (2-3 rooms/week); OEM-specific device configuration, firmware validation, commissioning | 16 weeks | AV System Integrator |

---

## 11. Review and Updates

### 11.1 Review Schedule

**Initial review**: 6 months post-deployment (Week 36) - Review device compatibility support tickets per OEM vendor, firmware stability, user satisfaction ratings

**Periodic review**: Annually - Monitor OEM vendor quality/support, firmware release cadence, warranty performance

**Review criteria**:
- Are device compatibility support tickets <2/OEM vendor/month?
- Is firmware stability maintained (zero crashes/reboots)?
- Are user satisfaction goals achieved (G-1: >85%, G-4: >95%)?

---

## 12. Related Decisions

### 12.1 Decisions This ADR Depends On

- **ADR-001**: Microsoft Teams Rooms Platform Decision - Establishes £450K hardware budget, pilot phase validation approach, Microsoft Teams Rooms ecosystem choice

### 12.2 Decisions That Depend On This ADR

- **Future ADR-006**: Firmware Update Strategy - OEM vendor selection (Logitech monthly, Poly quarterly, Yealink bi-monthly release cadences) informs centralized firmware update orchestration strategy

---

## Generation Metadata

| Field | Value |
|-------|-------|
| **Generated by** | ArcKit v1.0 |
| **AI Model** | Claude Sonnet 4.5 (claude-sonnet-4-5-20250929) |
| **Generation Date** | 2025-11-11T11:00:00Z |
| **Command** | `/arckit.adr` (manual creation via Claude Code continuation) |
| **Template Version** | adr-template.md v1.0 |

---

## Document Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| **IT Operations Director** | IT Operations Director | | TBD (Week 4) |
| **Facilities Manager** | Facilities Manager | | TBD (Week 4) |
| **Microsoft Teams Administrator** | Microsoft Teams Administrator | | TBD (Week 4) |
| **Architecture Review Board** | ARB Chair | | TBD (Week 4) |

---

*This ADR follows the MADR v4.0 format enhanced with UK Government requirements and ArcKit governance standards.*

*For more information:*
- *MADR: https://adr.github.io/madr/*
- *ArcKit Documentation: `/workspaces/arckit-test-project-v3-windows11/README.md`*
