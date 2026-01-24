# Stakeholder Drivers & Goals Analysis: Peripherals Update and Upgrade

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-003-STKE-v2.0 |
| **Document Type** | Stakeholder Drivers & Goals Analysis |
| **Project** | Peripherals Update and Upgrade (Project 003) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 2.0 |
| **Created Date** | 2025-10-29 |
| **Last Modified** | 2026-01-24 |
| **Review Cycle** | Quarterly |
| **Next Review Date** | 2026-04-24 |
| **Owner** | IT Operations Director |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | IT Leadership, Procurement, Security Team, HR, Facilities |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2025-10-29 | Project Manager | Initial stakeholder analysis | PENDING | PENDING |
| 2.0 | 2026-01-24 | ArcKit AI | Updated to latest template format from `/arckit.stakeholders` command | PENDING | PENDING |

---

## Executive Summary

### Purpose
This document identifies key stakeholders for Project 003 (Peripherals Update and Upgrade), their underlying drivers, how these drivers manifest into goals, and the measurable outcomes that will satisfy those goals. This project supports the Windows 11 Transformation Programme (Projects 001 and 002) by modernizing the peripheral ecosystem for hybrid working.

### Key Findings
- **Primary conflict**: CFO aggressive cost reduction (standardization, SKU reduction) vs. End Users wanting personalized ergonomic and peripheral choices
- **Major synergy**: FIDO2 security keys satisfy both CISO Zero Trust mandate AND CFO cost avoidance (prevent £2M+ breach cost with £25K investment)
- **Critical dependency**: Project 001 Windows 11 laptops include built-in Windows Hello webcams, eliminating external webcam scope from Project 003

### Critical Success Factors
- 100% of privileged users (500) equipped with FIDO2 security keys by Month 6
- Peripheral support ticket rate reduced from 5% to <1% through standardization
- 3,000 hybrid workers equipped with Teams-certified headsets by Month 9
- >85% user satisfaction with new peripherals (up from 55%)
- £150K+ annual cost savings through standardization and reduced support

### Stakeholder Alignment Score
**Overall Alignment**: HIGH

Strong alignment between CISO (security), CFO (cost savings), and IT Operations (support reduction) on standardization and FIDO2 deployment. End Users and HR aligned on ergonomics. Main tension is between standardization (fewer choices) and user preferences (choice). Resolved through tiered approach: standard peripherals for most, ergonomic options upon request.

---

## Stakeholder Identification

### Internal Stakeholders

| Stakeholder | Role/Department | Influence | Interest | Engagement Strategy |
|-------------|----------------|-----------|----------|---------------------|
| CIO | Executive Sponsor / IT Leadership | HIGH | HIGH | Strategic alignment, weekly 1-on-1 updates |
| CFO | Budget Owner / Finance | HIGH | HIGH | Budget reviews, ROI tracking, quarterly reports |
| CISO | Security Owner / InfoSec | HIGH | HIGH | Zero Trust compliance, FIDO2 approval |
| IT Operations Director | Project Sponsor / IT Operations | HIGH | HIGH | Day-to-day management, operational readiness |
| End Users (6,000) | Primary Beneficiaries / Various | LOW | HIGH | User surveys, regular communications, training |
| Procurement Manager | Procurement Lead / Finance | MEDIUM | HIGH | Vendor negotiations, contract management |
| Data Protection Officer | Privacy/Compliance / Legal | HIGH | MEDIUM | GDPR compliance for biometric data |
| HR | People & Culture / HR | MEDIUM | MEDIUM | Ergonomic health, user satisfaction |
| Helpdesk Manager | Support Lead / IT Support | MEDIUM | HIGH | Training, knowledge base, ticket tracking |
| Facilities Manager | Workspace / Facilities | LOW | MEDIUM | Monitor installation, desk space assessments |

### External Stakeholders

| Stakeholder | Organization | Relationship | Influence | Interest |
|-------------|--------------|--------------|-----------|----------|
| Dell | Hardware Vendor | Strategic Partner | MEDIUM | HIGH |
| HP | Hardware Vendor | Supplier | MEDIUM | HIGH |
| Jabra | Headset Vendor | Supplier | LOW | HIGH |
| Logitech | Peripheral Vendor | Supplier | LOW | HIGH |
| Yubico | FIDO2 Vendor | Supplier | LOW | HIGH |
| Microsoft | Teams Certification | Partner | MEDIUM | MEDIUM |
| Ergonomics Institute | Certification Body | Assessor | LOW | LOW |

### Stakeholder Power-Interest Grid

```
HIGH POWER
    │  MANAGE CLOSELY              │  KEEP SATISFIED
    │  • CIO (Exec Sponsor)        │  • Data Protection Officer
    │  • CFO (Budget Owner)        │  • CISO (Security)
    │  • IT Ops Director           │
────┼──────────────────────────────┼─────────────────────
    │  KEEP INFORMED               │  MONITOR
    │  • End Users (6,000)         │  • Facilities Manager
    │  • Helpdesk Manager          │  • Vendors
    │  • HR                        │  • Ergonomics Institute
LOW POWER                                    HIGH INTEREST
```

---

## Stakeholder Drivers Analysis

### SD-1: CFO - "Reduce IT Operational Expenditure"

**Stakeholder**: Chief Financial Officer (CFO)

**Driver Category**: FINANCIAL

**Driver Statement**: "Reduce IT peripheral-related operational expenditure by 15% through standardization, SKU reduction, and volume procurement. Current peripheral support costs £400K/year with 45 SKUs - we need to cut this."

**Context & Background**:
Board mandate for 15% IT cost reduction. Peripheral estate fragmented with 45 different models creating support complexity. Support tickets for peripherals running at 5% of total IT tickets. Volume procurement discounts not being realized due to fragmented purchasing.

**Driver Intensity**: HIGH

**Enablers**:
- SKU standardization (45 → 20 models)
- Plug-and-play USB-C peripherals (no driver support)
- Volume procurement discounts (1,000+ units)
- Reduced support ticket rate
- Self-service replacement via InTune Company Portal

**Blockers**:
- User resistance to standardization ("I want my preferred keyboard")
- Ergonomic exemptions requiring non-standard peripherals
- Supply chain issues affecting volume discounts
- Legacy devices without USB-C requiring adapters

**Related Stakeholders**:
- IT Operations Director (aligned - reduced support burden)
- Procurement Manager (aligned - better negotiations)
- End Users (partially conflicting - want choice)
- HR (partially conflicting - ergonomic variety)

---

### SD-2: CISO - "Eliminate Phishing and Password-Based Attack Risks"

**Stakeholder**: Chief Information Security Officer (CISO)

**Driver Category**: RISK + COMPLIANCE

**Driver Statement**: "Eliminate phishing and password-based attack risks for privileged users through FIDO2 hardware security keys. Traditional MFA (SMS, authenticator apps) is vulnerable to phishing - we've had 2 successful attacks this year."

**Context & Background**:
Zero Trust mandate requires phishing-resistant MFA for privileged users (admins, developers with prod access, executives). Two successful phishing attacks this year compromised admin credentials despite MFA (SIM swap, authenticator phishing). £2M+ ransomware cost avoided through incident response, but luck won't hold. NIST 800-63B AAL3 and UK NCSC recommend FIDO2.

**Driver Intensity**: CRITICAL

**Enablers**:
- FIDO2 hardware security keys (Yubico, Microsoft)
- Azure AD Conditional Access enforcing FIDO2
- Disable fallback MFA (SMS, authenticator) for privileged access
- User training on FIDO2 usage and backup key registration

**Blockers**:
- User resistance to carrying physical key
- Lost key recovery process complexity
- Mobile-only users without USB-C port
- Budget constraints limiting scope to privileged users only

**Related Stakeholders**:
- CIO (aligned - security posture)
- IT Operations Director (aligned - execution)
- Privileged Users (partially conflicting - convenience)
- CFO (aligned - cost avoidance £2M breach)

---

### SD-3: CIO - "Enable Productive Hybrid Working"

**Stakeholder**: Chief Information Officer (CIO)

**Driver Category**: STRATEGIC + OPERATIONAL

**Driver Statement**: "Enable a productive and seamless hybrid working model where employees can collaborate effectively from any location with professional-quality audio and consistent peripheral experience."

**Context & Background**:
Post-pandemic hybrid working is permanent - 50% of workforce (3,000) works remotely 2-3 days/week. Current peripherals (wired headsets, non-ergonomic keyboards) hinder productivity. Poor audio quality on Teams calls damages professional reputation with clients. Project 001 laptops include built-in webcams, so focus shifts to audio and ergonomics.

**Driver Intensity**: HIGH

**Enablers**:
- Teams-certified noise-cancelling headsets
- Wireless peripherals (keyboard, mouse) for mobility
- Consistent setup between office and home
- USB-C docking stations (Project 001 scope)

**Blockers**:
- Budget constraints limiting headset scope
- User training on new peripherals
- Home workspace variability
- Inconsistent network quality (audio compression)

**Related Stakeholders**:
- End Users (aligned - better experience)
- HR (aligned - employee satisfaction)
- IT Operations (aligned - reduced support)
- CFO (partially conflicting - cost pressure)

---

### SD-4: IT Operations Director - "Reduce Support Complexity and Ticket Volume"

**Stakeholder**: IT Operations Director

**Driver Category**: OPERATIONAL + PERSONAL

**Driver Statement**: "Reduce peripheral support ticket volume from 5% to <1% of total IT tickets through standardization and plug-and-play USB-C. My team spends 40 hours/week on peripheral issues - that's a full FTE I could redeploy."

**Context & Background**:
Current 45 SKU peripheral estate creates support nightmare - drivers, compatibility, firmware updates, warranty tracking. Support ticket rate at 5% with MTTR of 45 minutes. Helpdesk staff frustrated with peripheral troubleshooting. IT Operations Director's bonus tied to support ticket reduction KPIs.

**Driver Intensity**: HIGH

**Enablers**:
- USB-C plug-and-play (no driver installation)
- SKU standardization (45 → 20 models)
- Self-service replacement via Company Portal
- InTune hardware inventory for warranty tracking
- Standardized knowledge base articles

**Blockers**:
- Legacy devices without USB-C
- Users bringing personal peripherals
- Ergonomic exemptions requiring non-standard models
- Vendor firmware update complexity

**Related Stakeholders**:
- CFO (aligned - cost reduction)
- Helpdesk Manager (aligned - reduced burden)
- End Users (partially conflicting - standardization limits choice)
- Procurement (aligned - simpler catalog)

---

### SD-5: End Users - "Comfortable and Productive Workspace"

**Stakeholder**: End Users (6,000 employees)

**Driver Category**: OPERATIONAL + PERSONAL

**Driver Statement**: "I want peripherals that are comfortable for 8+ hours of daily use, work seamlessly without IT support, and help me be productive. My current keyboard causes wrist pain and my headset audio quality is terrible on calls."

**Context & Background**:
User satisfaction with current peripherals at 55% - below industry benchmark of 75%. Ergonomic complaints causing 120 sick days/year (£24K cost). Audio quality complaints on Teams calls (45% satisfaction). Users frustrated with IT support wait times for peripheral issues.

**Driver Intensity**: HIGH

**Enablers**:
- Ergonomic keyboards and mice (split keyboard, vertical mouse)
- Noise-cancelling Teams-certified headsets
- Multi-monitor setups for power users
- Quick self-service replacement process
- Choice of monitor configuration (dual 24" or 34" ultrawide)

**Blockers**:
- Standardization limiting personal preferences
- Budget constraints limiting ergonomic options
- Desk space for multi-monitor setups
- Training time for new peripherals

**Related Stakeholders**:
- HR (aligned - employee wellbeing)
- IT Operations (partially conflicting - standardization)
- CFO (conflicting - cost pressure)
- Facilities (aligned for monitors - workspace)

---

### SD-6: HR - "Reduce Ergonomic Health Issues and Improve Employee Wellbeing"

**Stakeholder**: HR / People & Culture

**Driver Category**: COMPLIANCE + PERSONAL

**Driver Statement**: "Reduce work-related musculoskeletal disorders (RSI, back pain, eye strain) through ergonomic peripherals and DSE-compliant workstations. We're seeing 8% increase in ergonomic sick leave and rising occupational health referrals."

**Context & Background**:
UK HSE DSE Regulations 1992 require employers to provide suitable workstations. Current peripherals cause 120 sick days/year from ergonomic issues (£24K cost). Occupational health referrals up 15%. HR under pressure from union representatives on ergonomic equipment. Employer liability risk if ergonomic issues not addressed.

**Driver Intensity**: MEDIUM-HIGH

**Enablers**:
- Ergonomically certified keyboards and mice
- Multi-monitor setups reducing neck strain
- DSE self-assessment with equipment recommendations
- Quick provision of ergonomic peripherals upon request
- Monitor stands with adjustable height/tilt

**Blockers**:
- Budget constraints limiting ergonomic options
- Standardization conflicting with individual needs
- Home workspace variability
- User awareness of ergonomic options

**Related Stakeholders**:
- End Users (aligned - wellbeing)
- Facilities (aligned - workstation setup)
- CFO (partially conflicting - cost)
- IT Operations (partially conflicting - non-standard peripherals)

---

### SD-7: Helpdesk Manager - "Reduce Peripheral Troubleshooting Burden"

**Stakeholder**: Helpdesk Manager

**Driver Category**: OPERATIONAL + PERSONAL

**Driver Statement**: "My team spends 15 hours/week on peripheral troubleshooting - driver issues, firmware updates, compatibility problems. Standardizing to plug-and-play USB-C would free up capacity for more valuable work."

**Context & Background**:
Peripheral tickets at 5% of total volume. MTTR 45 minutes (vs. 15-minute target). 45 SKU models require extensive knowledge base. Staff frustrated with repetitive peripheral issues. Helpdesk Manager's performance metrics impacted by peripheral ticket volume.

**Driver Intensity**: HIGH

**Enablers**:
- Plug-and-play USB-C peripherals (no driver troubleshooting)
- Standardized 20 SKU catalog (simpler knowledge base)
- Self-service replacement workflow
- InTune hardware inventory for quick serial number lookup
- Vendor warranty portal integration

**Blockers**:
- Transition period with mixed old/new peripherals
- Training on new peripheral models
- Ergonomic exemptions requiring specialist support
- User errors with new peripherals

**Related Stakeholders**:
- IT Operations Director (aligned - reduced tickets)
- CFO (aligned - cost reduction)
- End Users (aligned - faster resolution)
- Procurement (aligned - warranty tracking)

---

### SD-8: Procurement Manager - "Optimize Vendor Relationships and Achieve Volume Discounts"

**Stakeholder**: Procurement Manager

**Driver Category**: FINANCIAL + OPERATIONAL

**Driver Statement**: "Consolidate peripheral vendors from 12 to 4-5 strategic partners to achieve 15-20% volume discounts and simplify contract management. Current fragmentation means we're leaving £100K on the table."

**Context & Background**:
Current peripheral procurement fragmented across 12 vendors with small order quantities. No volume discounts realized. Contract management overhead significant. Warranty tracking inconsistent. Strategic vendor relationships would enable better pricing and support.

**Driver Intensity**: MEDIUM-HIGH

**Enablers**:
- SKU standardization enabling volume orders
- Multi-year contracts with strategic vendors (Dell, HP, Jabra, Yubico)
- Centralized peripheral catalog
- InTune integration for warranty tracking
- Volume discount tiers (1,000+, 3,000+, 5,000+ units)

**Blockers**:
- Ergonomic exceptions requiring specialist vendors
- Supply chain disruptions affecting volume orders
- User preferences for specific brands
- Vendor capacity constraints

**Related Stakeholders**:
- CFO (aligned - cost savings)
- IT Operations Director (aligned - simplified catalog)
- Vendors (aligned - larger orders)
- End Users (partially conflicting - brand preferences)

---

### SD-9: Data Protection Officer - "Ensure GDPR Compliance for Biometric Data"

**Stakeholder**: Data Protection Officer (DPO)

**Driver Category**: COMPLIANCE

**Driver Statement**: "Ensure Windows Hello facial recognition data processing complies with GDPR Article 9 (special category data). Biometric data breaches carry maximum fines and reputational damage."

**Context & Background**:
GDPR Article 9 prohibits biometric data processing unless specific conditions met (explicit consent, heightened protection). Windows Hello stores facial data locally on TPM 2.0 - compliant approach. However, user consent process and right to erasure must be documented. ICO scrutiny of biometric systems increasing.

**Driver Intensity**: HIGH

**Enablers**:
- Windows Hello local TPM storage (no cloud transmission)
- User consent workflow in InTune enrollment
- Right to erasure via Windows Settings
- Privacy Impact Assessment (PIA) completed
- DPO sign-off on biometric processing

**Blockers**:
- User awareness of biometric data processing
- Consent documentation gaps
- Third-party peripheral vendors with cloud features
- Cross-border data transfer risks

**Related Stakeholders**:
- CISO (aligned - security and privacy)
- End Users (informed - consent required)
- IT Operations (aligned - compliant implementation)
- Legal (aligned - regulatory compliance)

---

### SD-10: Privileged Users - "Secure Access Without Excessive Friction"

**Stakeholder**: Privileged Users (500 admins, developers, executives)

**Driver Category**: OPERATIONAL + PERSONAL

**Driver Statement**: "I need secure authentication that protects my admin access but doesn't add 30 seconds to every login. Carrying a physical key is annoying, but I understand the security risk."

**Context & Background**:
Privileged users have elevated access to production systems, admin portals, financial systems. CISO mandate requires FIDO2 for these users. Users initially resistant to physical keys but understanding after security awareness training on phishing attacks.

**Driver Intensity**: MEDIUM

**Enablers**:
- Fast FIDO2 authentication (<3 seconds)
- USB-C + NFC options for flexibility
- Backup key registration process
- Clear lost key recovery workflow
- User training on FIDO2 benefits

**Blockers**:
- Resistance to carrying physical key
- Lost key scenarios causing lockout
- Travel inconvenience (forgetting key)
- Mobile-only scenarios without USB-C

**Related Stakeholders**:
- CISO (aligned - security mandate)
- IT Operations (aligned - implementation)
- End Users (neutral - not affected if not privileged)

---

## Driver-to-Goal Mapping

### Goal G-1: Deploy FIDO2 Security Keys to All Privileged Users

**Derived From Drivers**: SD-2 (CISO security), SD-10 (Privileged users)

**Goal Owner**: CISO

**Goal Statement**: "Deploy FIDO2 hardware security keys to 100% of privileged users (500) by Month 6, with conditional access policies enforcing FIDO2 for all admin portals"

**Why This Matters**:
- **CISO**: Eliminates phishing risk for privileged accounts
- **Privileged Users**: Secure access with minimal friction
- **CFO**: Prevents £2M+ breach cost with £25K investment

**Success Metrics**:
- **Primary Metric**: % privileged users with FIDO2 keys (target 100%)
- **Secondary Metrics**:
  - Zero phishing attacks on privileged users
  - User satisfaction with FIDO2 >80%
  - Lost key incidents <2%

**Baseline**: 0% FIDO2 deployment

**Target**: 100% by Month 6

**Measurement Method**: Azure AD FIDO2 registration report

**Dependencies**:
- Yubico key procurement
- Azure AD Conditional Access configuration
- User training completion

**Risks to Achievement**:
- Supply chain delays for FIDO2 keys
- User resistance to physical keys
- Lost key recovery complexity

---

### Goal G-2: Reduce Peripheral Support Ticket Rate to <1%

**Derived From Drivers**: SD-1 (CFO cost), SD-4 (IT Ops), SD-7 (Helpdesk)

**Goal Owner**: IT Operations Director

**Goal Statement**: "Reduce peripheral support ticket rate from 5% to <1% of total IT tickets by Month 12 through USB-C plug-and-play standardization and SKU reduction"

**Why This Matters**:
- **CFO**: £150K annual support cost savings
- **IT Ops**: 40 hours/week freed for strategic work
- **Helpdesk**: Reduced troubleshooting burden

**Success Metrics**:
- **Primary Metric**: Peripheral ticket rate (target <1%)
- **Secondary Metrics**:
  - MTTR reduced from 45 to 15 minutes
  - SKU count reduced from 45 to 20
  - Self-service replacement rate >50%

**Baseline**: 5% ticket rate, 45 SKUs, 45-min MTTR

**Target**: <1% ticket rate, 20 SKUs, 15-min MTTR by Month 12

**Measurement Method**: ServiceNow ticket categorization, InTune inventory

**Dependencies**:
- USB-C peripherals procured and deployed
- Self-service replacement workflow implemented
- Legacy peripherals retired

**Risks to Achievement**:
- User resistance to standardization
- Legacy devices without USB-C
- Transition period with mixed peripherals

---

### Goal G-3: Equip 3,000 Hybrid Workers with Teams-Certified Headsets

**Derived From Drivers**: SD-3 (CIO hybrid), SD-5 (End Users)

**Goal Owner**: CIO / IT Operations Director

**Goal Statement**: "Equip 100% of hybrid workers (3,000) with noise-cancelling, Teams-certified headsets by Month 9 to enable professional-quality collaboration"

**Why This Matters**:
- **CIO**: Hybrid working model enabled
- **End Users**: Professional audio quality on calls
- **Business**: Client-facing call quality improved

**Success Metrics**:
- **Primary Metric**: % hybrid workers with Teams headsets (target 100%)
- **Secondary Metrics**:
  - Audio quality satisfaction >85% (up from 45%)
  - Headset connectivity ticket rate <1%
  - Call participant audio rating >4/5

**Baseline**: 0% Teams-certified, 45% audio satisfaction

**Target**: 100% equipped, >85% satisfaction by Month 9

**Measurement Method**: InTune inventory, user surveys

**Dependencies**:
- Headset procurement (Jabra, Poly)
- Teams certification verification
- User deployment scheduling

**Risks to Achievement**:
- Supply chain delays
- User preferences for different brands
- Home network quality affecting audio

---

### Goal G-4: Achieve £150K+ Annual Cost Savings

**Derived From Drivers**: SD-1 (CFO cost), SD-8 (Procurement)

**Goal Owner**: CFO / Procurement Manager

**Goal Statement**: "Achieve £150K+ annual cost savings through SKU standardization, volume procurement discounts, and reduced support ticket handling by Month 18"

**Why This Matters**:
- **CFO**: IT cost reduction target achieved
- **Procurement**: Volume discount relationships established
- **IT Ops**: Support cost reduction realized

**Success Metrics**:
- **Primary Metric**: Annual cost savings (target £150K+)
- **Secondary Metrics**:
  - Volume discount achieved (15-20%)
  - Vendor count reduced (12 → 5)
  - Support labor hours saved (40hr/week)

**Baseline**: £0 savings, 12 vendors, £400K support cost

**Target**: £150K savings by Month 18

**Measurement Method**: Finance cost tracking, procurement reports

**Dependencies**:
- SKU standardization (G-2)
- Volume procurement contracts signed
- Support ticket reduction achieved (G-2)

**Risks to Achievement**:
- Supply chain price increases
- Ergonomic exemptions increasing non-standard orders
- Volume discount targets not met

---

### Goal G-5: Achieve >85% User Satisfaction with Peripherals

**Derived From Drivers**: SD-5 (End Users), SD-6 (HR ergonomics)

**Goal Owner**: IT Operations Director / HR

**Goal Statement**: "Achieve >85% user satisfaction with peripheral quality, comfort, and functionality by Month 12 (up from 55% baseline)"

**Why This Matters**:
- **End Users**: Comfortable, productive workspace
- **HR**: Reduced ergonomic complaints and sick leave
- **IT Ops**: Fewer dissatisfaction-driven tickets

**Success Metrics**:
- **Primary Metric**: User satisfaction score (target >85%)
- **Secondary Metrics**:
  - Ergonomic complaint rate reduced 50%
  - Sick leave from ergonomic issues reduced 50%
  - Peripheral-related complaints reduced 75%

**Baseline**: 55% satisfaction, 120 sick days/year

**Target**: >85% satisfaction, 60 sick days/year by Month 12

**Measurement Method**: User surveys (quarterly), HR sick leave tracking

**Dependencies**:
- Ergonomic peripherals available upon request
- Monitor upgrade program (G-7)
- User training on peripheral features

**Risks to Achievement**:
- Standardization limiting user preferences
- Budget constraints on ergonomic options
- Change resistance to new peripherals

---

### Goal G-6: Ensure GDPR Compliance for Biometric Data

**Derived From Drivers**: SD-9 (DPO compliance)

**Goal Owner**: Data Protection Officer

**Goal Statement**: "Achieve 100% GDPR compliance for Windows Hello biometric data processing with documented consent, local storage, and right to erasure by Month 3"

**Why This Matters**:
- **DPO**: Regulatory compliance achieved
- **Organization**: Avoid ICO fines and reputational damage
- **End Users**: Privacy rights protected

**Success Metrics**:
- **Primary Metric**: GDPR compliance status (target 100%)
- **Secondary Metrics**:
  - Privacy Impact Assessment completed
  - User consent documentation rate 100%
  - ICO audit-ready documentation

**Baseline**: Partial compliance (no formal PIA)

**Target**: 100% compliance by Month 3

**Measurement Method**: DPO audit, consent records

**Dependencies**:
- Privacy Impact Assessment completed
- User consent workflow in InTune
- Windows Hello local TPM storage verified

**Risks to Achievement**:
- Third-party peripherals with cloud features
- Consent documentation gaps
- ICO guidance changes

---

### Goal G-7: Complete Monitor Upgrade for Power Users

**Derived From Drivers**: SD-5 (End Users), SD-3 (CIO productivity)

**Goal Owner**: IT Operations Director

**Goal Statement**: "Upgrade 1,360 power users (developers, analysts, designers) to dual 24" monitors or single 34" ultrawide by Month 18 (680 Year 1, 680 Year 2) to improve productivity"

**Why This Matters**:
- **End Users**: Improved productivity and reduced screen constraints
- **CIO**: Knowledge worker productivity enhanced
- **HR**: Reduced eye strain and neck pain

**Success Metrics**:
- **Primary Metric**: Monitor upgrades completed (target 1,360)
- **Secondary Metrics**:
  - User productivity improvement >20% (self-reported)
  - User satisfaction with display >85%
  - Eye strain complaints reduced 30%

**Baseline**: 0 upgrades, single 24" monitors

**Target**: 1,360 upgrades by Month 18 (phased)

**Measurement Method**: InTune inventory, user surveys

**Dependencies**:
- Monitor procurement (Dell, HP)
- Facilities desk space assessment
- User preference surveys (dual vs ultrawide)

**Risks to Achievement**:
- Desk space constraints
- Budget constraints limiting scope
- Supply chain delays

---

### Goal G-8: Reduce Ergonomic Sick Leave by 50%

**Derived From Drivers**: SD-6 (HR ergonomics)

**Goal Owner**: HR

**Goal Statement**: "Reduce ergonomic-related sick leave from 120 days/year to 60 days/year (50% reduction) through ergonomic peripherals and DSE compliance by Month 12"

**Why This Matters**:
- **HR**: Reduced sick leave, improved employee wellbeing
- **CFO**: £12K annual cost savings (60 days × £200/day)
- **Organization**: Employer liability risk reduced

**Success Metrics**:
- **Primary Metric**: Ergonomic sick leave days (target 60/year)
- **Secondary Metrics**:
  - DSE assessment completion rate 100%
  - Ergonomic peripheral requests fulfilled <5 days
  - Occupational health referrals reduced 30%

**Baseline**: 120 sick days/year, patchy DSE compliance

**Target**: 60 sick days/year, 100% DSE compliance by Month 12

**Measurement Method**: HR sick leave tracking, DSE assessment records

**Dependencies**:
- Ergonomic peripherals available
- DSE self-assessment tool deployed
- Reasonable adjustment process streamlined

**Risks to Achievement**:
- Budget constraints on ergonomic options
- User awareness of ergonomic options
- Home workspace variability

---

## Goal-to-Outcome Mapping

### Outcome O-1: Zero Phishing Attacks on Privileged Users

**Supported Goals**: G-1 (FIDO2 deployment)

**Outcome Statement**: "Achieve zero successful phishing attacks on privileged users through FIDO2 hardware security keys, preventing £2M+ potential breach costs"

**Measurement Details**:
- **KPIs**: Phishing attacks on privileged users (target 0), FIDO2 adoption (100%)
- **Current Value**: 2 successful phishing attacks/year
- **Target Value**: 0 attacks
- **Measurement Frequency**: Continuous (Security Operations)
- **Data Source**: Security incident reports, Azure AD sign-in logs
- **Report Owner**: CISO

**Business Value**:
- **Financial Impact**: £2M+ breach cost avoidance
- **Strategic Impact**: Zero Trust security posture achieved
- **Operational Impact**: No incident response disruption
- **Customer Impact**: Customer data protected

**Timeline**:
- **Phase 1 (Months 0-3)**: 250 privileged users (IT admins, C-level)
- **Phase 2 (Months 3-6)**: Remaining 250 privileged users (developers, finance admins)
- **Sustainment (Month 6+)**: Continuous monitoring, backup key management

**Stakeholder Benefits**:
- **CISO**: Security mandate achieved, board credibility
- **CFO**: Cost avoidance realized (£2M+)
- **Privileged Users**: Secure access with minimal friction
- **Organization**: Regulatory compliance (NIST, NCSC)

**Leading Indicators**:
- FIDO2 key procurement on schedule
- User training completion rate
- Conditional Access policies deployed

**Lagging Indicators**:
- Phishing attack count (target 0)
- Incident response activations (target 0)

---

### Outcome O-2: £150K+ Annual Operational Savings

**Supported Goals**: G-2 (Support reduction), G-4 (Cost savings)

**Outcome Statement**: "Achieve £150K+ annual operational savings through standardization, reduced support tickets, and volume procurement discounts by Month 18"

**Measurement Details**:
- **KPIs**: Annual savings (target £150K+), Support ticket rate (target <1%), Volume discount (target 15-20%)
- **Current Value**: £0 savings, 5% ticket rate, 0% discount
- **Target Value**: £150K savings, <1% ticket rate, 15-20% discount
- **Measurement Frequency**: Monthly tracking, quarterly validation
- **Data Source**: Finance systems, ServiceNow, procurement records
- **Report Owner**: CFO / Procurement Manager

**Business Value**:
- **Financial Impact**: £150K annual OpEx reduction (recurring)
- **Strategic Impact**: IT cost efficiency demonstrated
- **Operational Impact**: 40 hours/week freed for strategic work
- **Customer Impact**: None (internal efficiency)

**Timeline**:
- **Phase 1 (Months 0-6)**: £50K savings (initial standardization)
- **Phase 2 (Months 6-12)**: £100K cumulative (full deployment)
- **Sustainment (Month 12+)**: £150K+ annual (volume discounts realized)

**Stakeholder Benefits**:
- **CFO**: Cost reduction target achieved
- **IT Operations**: Team capacity freed
- **Procurement**: Strategic vendor relationships
- **Helpdesk**: Reduced troubleshooting burden

**Leading Indicators**:
- SKU count reduction progress
- USB-C peripheral deployment rate
- Self-service replacement adoption

**Lagging Indicators**:
- Total annual savings (Month 18)
- Support ticket rate (monthly)
- Volume discount achieved (contract negotiation)

---

### Outcome O-3: Productive Hybrid Workforce

**Supported Goals**: G-3 (Headsets), G-5 (User satisfaction)

**Outcome Statement**: "Enable 3,000 hybrid workers with professional-quality collaboration capabilities, achieving >85% audio satisfaction and seamless home/office experience"

**Measurement Details**:
- **KPIs**: Headset deployment (3,000), Audio satisfaction (>85%), Connectivity tickets (<1%)
- **Current Value**: 0 Teams headsets, 45% audio satisfaction, 8% tickets
- **Target Value**: 3,000 headsets, >85% satisfaction, <1% tickets
- **Measurement Frequency**: Monthly deployment, quarterly surveys
- **Data Source**: InTune inventory, user surveys, ServiceNow
- **Report Owner**: CIO / IT Operations Director

**Business Value**:
- **Financial Impact**: Productivity gain (not quantified), reduced call quality complaints
- **Strategic Impact**: Hybrid working model enabled, talent attraction
- **Operational Impact**: Professional client calls, reduced rework from miscommunication
- **Customer Impact**: Improved client-facing call quality

**Timeline**:
- **Phase 1 (Months 0-3)**: 1,000 headsets (sales, client-facing)
- **Phase 2 (Months 3-6)**: 2,000 cumulative (consultants, managers)
- **Phase 3 (Months 6-9)**: 3,000 cumulative (all hybrid workers)

**Stakeholder Benefits**:
- **CIO**: Hybrid working model validated
- **End Users**: Professional audio, comfortable collaboration
- **Business Units**: Client call quality improved
- **HR**: Employee satisfaction increased

**Leading Indicators**:
- Headset procurement on schedule
- Teams certification verified
- User training completed

**Lagging Indicators**:
- Audio satisfaction score (surveys)
- Connectivity ticket rate
- Call participant feedback

---

### Outcome O-4: Employee Wellbeing and Productivity Improved

**Supported Goals**: G-5 (User satisfaction), G-7 (Monitors), G-8 (Ergonomic sick leave)

**Outcome Statement**: "Improve employee wellbeing and productivity with >85% peripheral satisfaction, 50% reduction in ergonomic sick leave, and 20% productivity improvement for power users with monitor upgrades"

**Measurement Details**:
- **KPIs**: User satisfaction (>85%), Ergonomic sick leave (60 days/year), Productivity improvement (>20%)
- **Current Value**: 55% satisfaction, 120 sick days/year, baseline productivity
- **Target Value**: >85% satisfaction, 60 sick days, +20% productivity
- **Measurement Frequency**: Quarterly surveys, monthly HR tracking
- **Data Source**: User surveys, HR systems, productivity self-reports
- **Report Owner**: HR / IT Operations Director

**Business Value**:
- **Financial Impact**: £12K sick leave savings + productivity gains
- **Strategic Impact**: Employer of choice, talent retention
- **Operational Impact**: Reduced ergonomic complaints, fewer reasonable adjustment requests
- **Customer Impact**: None direct (internal wellbeing)

**Timeline**:
- **Phase 1 (Months 0-6)**: Ergonomic peripherals deployed, DSE assessments
- **Phase 2 (Months 6-12)**: Monitor upgrades Year 1 (680 setups)
- **Phase 3 (Months 12-18)**: Monitor upgrades Year 2 (680 setups)

**Stakeholder Benefits**:
- **End Users**: Comfortable workspace, improved productivity
- **HR**: Reduced sick leave, improved employee wellbeing metrics
- **IT Operations**: Reduced ergonomic-driven tickets
- **Facilities**: Workspace optimization

**Leading Indicators**:
- Ergonomic peripheral deployment rate
- DSE assessment completion rate
- Monitor upgrade deployment rate

**Lagging Indicators**:
- User satisfaction score (quarterly)
- Ergonomic sick leave days (monthly)
- Productivity survey results (Year 2)

---

### Outcome O-5: GDPR Compliant Biometric Processing

**Supported Goals**: G-6 (GDPR compliance)

**Outcome Statement**: "Achieve 100% GDPR compliance for Windows Hello biometric data with documented consent, local TPM storage, and right to erasure - ICO audit-ready"

**Measurement Details**:
- **KPIs**: Compliance status (100%), Consent documentation (100%), PIA completed (Yes/No)
- **Current Value**: Partial compliance, no formal PIA
- **Target Value**: 100% compliance, 100% consent, PIA complete
- **Measurement Frequency**: DPO quarterly audit
- **Data Source**: Consent records, PIA document, Windows Hello enrollment logs
- **Report Owner**: Data Protection Officer

**Business Value**:
- **Financial Impact**: Avoid ICO fines (up to 4% global revenue)
- **Strategic Impact**: Regulatory compliance, reputation protection
- **Operational Impact**: Audit-ready documentation
- **Customer Impact**: Data protection confidence

**Timeline**:
- **Phase 1 (Month 0-1)**: Privacy Impact Assessment
- **Phase 2 (Month 1-2)**: Consent workflow implementation
- **Phase 3 (Month 2-3)**: Documentation and DPO sign-off

**Stakeholder Benefits**:
- **DPO**: Compliance achieved, audit readiness
- **CISO**: Privacy and security aligned
- **End Users**: Privacy rights protected
- **Legal**: Regulatory risk mitigated

---

## Complete Traceability Matrix

### Stakeholder → Driver → Goal → Outcome

| Stakeholder | Driver ID | Driver Summary | Goal ID | Goal Summary | Outcome ID | Outcome Summary |
|-------------|-----------|----------------|---------|--------------|------------|-----------------|
| CFO | SD-1 | Reduce IT OpEx | G-2 | <1% ticket rate | O-2 | £150K savings |
| CFO | SD-1 | Reduce IT OpEx | G-4 | £150K savings | O-2 | £150K savings |
| CISO | SD-2 | Eliminate phishing | G-1 | FIDO2 for privileged | O-1 | Zero phishing |
| CIO | SD-3 | Hybrid working | G-3 | Teams headsets | O-3 | Productive hybrid |
| CIO | SD-3 | Hybrid working | G-7 | Monitor upgrades | O-4 | Wellbeing improved |
| IT Ops Director | SD-4 | Reduce support | G-2 | <1% ticket rate | O-2 | £150K savings |
| End Users | SD-5 | Comfortable workspace | G-5 | >85% satisfaction | O-4 | Wellbeing improved |
| End Users | SD-5 | Comfortable workspace | G-7 | Monitor upgrades | O-4 | Wellbeing improved |
| HR | SD-6 | Reduce ergonomic issues | G-8 | 50% sick leave reduction | O-4 | Wellbeing improved |
| Helpdesk Manager | SD-7 | Reduce troubleshooting | G-2 | <1% ticket rate | O-2 | £150K savings |
| Procurement Manager | SD-8 | Volume discounts | G-4 | £150K savings | O-2 | £150K savings |
| DPO | SD-9 | GDPR compliance | G-6 | 100% compliance | O-5 | GDPR compliant |
| Privileged Users | SD-10 | Secure access | G-1 | FIDO2 deployment | O-1 | Zero phishing |

### Conflict Analysis

**Competing Drivers**:

**Conflict C-1: Standardization vs. User Choice**
- **CFO (SD-1)** wants aggressive standardization (45 → 20 SKUs) for cost savings
- **End Users (SD-5)** want choice of peripherals matching personal preferences
- **HR (SD-6)** wants ergonomic options beyond standard catalog
- **Resolution Strategy**:
  - **Tiered approach**: Standard peripherals for 80% of users (standardized), ergonomic options upon request (20%)
  - **User choice within standards**: 2-3 keyboard options, 2-3 mouse options within approved catalog
  - **Monitor choice**: Dual 24" OR 34" ultrawide - user chooses, both standardized
  - **Exemption process**: Ergonomic peripherals beyond catalog available via HR/DSE request (5-day SLA)

**Conflict C-2: Speed vs. Budget**
- **CIO (SD-3)** wants rapid hybrid enablement (headsets by Month 9)
- **CFO (SD-1)** wants budget controls and phased investment
- **Resolution Strategy**:
  - **Phased deployment**: Month 3 (client-facing), Month 6 (managers), Month 9 (all hybrid)
  - **Budget caps**: £500K/year limit, defer monitor arms and docking stations to Year 2
  - **Priority alignment**: FIDO2 (security) Month 6, Headsets Month 9, Monitors Month 18

**Conflict C-3: Security Key Convenience vs. Security**
- **CISO (SD-2)** wants mandatory FIDO2 with no fallback MFA
- **Privileged Users (SD-10)** want convenience and fallback options
- **Resolution Strategy**:
  - **No compromise on security**: FIDO2 required for privileged access, no SMS/authenticator fallback
  - **Convenience within security**: USB-C + NFC options, backup key registration
  - **Training investment**: Security awareness training explaining phishing risks
  - **Lost key process**: Clear recovery workflow with temporary admin override (2-hour SLA)

### Synergies

**Synergy 1: Standardization Benefits Multiple Stakeholders**
- **CFO (SD-1)**: £150K cost savings
- **IT Ops (SD-4)**: 40 hours/week freed
- **Helpdesk (SD-7)**: Simplified troubleshooting
- **Procurement (SD-8)**: Volume discounts
- **Value**: Single standardization effort delivers financial, operational, and procurement benefits

**Synergy 2: FIDO2 Investment Prevents Massive Loss**
- **CISO (SD-2)**: Security mandate achieved
- **CFO (SD-1)**: £2M+ breach cost avoided with £25K investment
- **Organization**: Regulatory compliance (NIST, NCSC)
- **Value**: Small investment prevents catastrophic cost

**Synergy 3: Ergonomics Reduces Costs and Improves Satisfaction**
- **HR (SD-6)**: Reduced sick leave (£12K savings)
- **End Users (SD-5)**: Improved comfort and satisfaction
- **CFO (SD-1)**: Indirect cost savings via sick leave reduction
- **Value**: Ergonomic investment returns via reduced sick leave and improved productivity

---

## Communication & Engagement Plan

### Stakeholder-Specific Messaging

#### CFO

**Primary Message**: "Project 003 delivers £150K+ annual savings through standardization (45→20 SKUs), reduced support tickets (5%→<1%), and volume procurement discounts. ROI achieved within 12 months."

**Key Talking Points**:
- SKU reduction eliminates support complexity (£150K savings)
- FIDO2 investment (£25K) prevents £2M+ breach cost
- Phased deployment manages budget within £500K/year cap
- Volume discounts (15-20%) through vendor consolidation

**Communication Frequency**: Monthly budget reports, quarterly finance reviews

**Preferred Channel**: Financial dashboard, executive reports

**Success Story**: "Reduced peripheral support costs £150K/year while preventing security breach"

---

#### CISO

**Primary Message**: "FIDO2 hardware security keys eliminate phishing risk for all 500 privileged users by Month 6. Zero fallback MFA ensures cryptographic protection that cannot be phished."

**Key Talking Points**:
- 100% privileged users with FIDO2 (Month 6)
- Conditional Access enforces FIDO2-only for admin portals
- Two 2024 phishing attacks prevented with FIDO2
- NIST 800-63B AAL3 and NCSC compliance

**Communication Frequency**: Weekly security status, monthly Steering Committee

**Preferred Channel**: Security dashboard, compliance reports

**Success Story**: "Zero phishing attacks on privileged users since FIDO2 deployment"

---

#### CIO

**Primary Message**: "Project 003 enables our hybrid working strategy with professional-quality collaboration peripherals for 3,000 workers by Month 9, building on Project 001's Windows Hello-enabled laptops."

**Key Talking Points**:
- Teams-certified headsets for all hybrid workers
- >85% user satisfaction (up from 55%)
- Consistent experience between office and home
- Monitor upgrades for power users (productivity +20%)

**Communication Frequency**: Monthly strategic reviews, quarterly Board preparation

**Preferred Channel**: Executive presentations, strategic roadmap

**Success Story**: "Hybrid workforce fully enabled with professional collaboration tools"

---

#### End Users

**Primary Message**: "You're getting new ergonomic peripherals designed for comfort and productivity. Teams-certified headsets for crystal-clear calls, and options for dual monitors or ultrawide if you're a power user."

**Key Talking Points**:
- Wireless noise-cancelling headsets for Teams calls
- Ergonomic keyboards and mice for all-day comfort
- Choice of monitor configuration for power users
- Quick self-service replacement if issues arise

**Communication Frequency**: Email at rollout, intranet articles, training sessions

**Preferred Channel**: Email, intranet, video tutorials

**Success Story**: "New headset transformed my client calls - no more background noise complaints"

---

#### HR

**Primary Message**: "Project 003 addresses ergonomic concerns with certified peripherals, DSE-compliant workstations, and monitor upgrades. Target: 50% reduction in ergonomic sick leave."

**Key Talking Points**:
- Ergonomically certified keyboards and mice
- DSE self-assessment with equipment recommendations
- Quick provision of ergonomic peripherals (5-day SLA)
- Monitor upgrades reduce eye and neck strain

**Communication Frequency**: Monthly HR metrics, quarterly wellbeing reports

**Preferred Channel**: HR dashboard, wellbeing communications

**Success Story**: "Ergonomic peripherals reduced work-related sick leave by 50%"

---

#### Helpdesk Manager

**Primary Message**: "USB-C plug-and-play standardization will reduce peripheral tickets from 5% to <1%. Standardized 20 SKU catalog means simpler knowledge base and faster resolution."

**Key Talking Points**:
- Plug-and-play = no driver troubleshooting
- 20 SKU catalog = focused training
- Self-service replacement workflow
- MTTR reduced from 45 to 15 minutes

**Communication Frequency**: Weekly team meetings, monthly metrics

**Preferred Channel**: Team meetings, knowledge base updates

**Success Story**: "Peripheral tickets dropped 80% after standardization"

---

## Change Impact Assessment

### Impact on Stakeholders

| Stakeholder | Current State | Future State | Change Magnitude | Resistance Risk | Mitigation Strategy |
|-------------|---------------|--------------|------------------|-----------------|---------------------|
| **End Users** | 45 SKU choices, familiar peripherals | 20 SKU standard catalog | MEDIUM (less choice) | MEDIUM | Ergonomic options upon request, training |
| **Privileged Users** | SMS/authenticator MFA | FIDO2 physical key required | HIGH (behavioral change) | MEDIUM-HIGH | Security awareness training, backup keys |
| **Helpdesk** | 45 SKU troubleshooting | 20 SKU simplified support | LOW (easier work) | LOW | Training on new peripherals |
| **IT Packagers** | Mixed peripheral estate | USB-C standardized | LOW (simpler) | LOW | Champion - benefits clear |
| **Procurement** | 12 vendors, fragmented | 5 strategic vendors | LOW (streamlined) | LOW | Champion - volume discounts |
| **HR** | Reactive ergonomic requests | Proactive DSE compliance | LOW (enables their work) | LOW | Champion - wellbeing metrics |

### Change Readiness

**Champions** (Enthusiastic supporters):
- **Helpdesk Manager** - Standardization reduces troubleshooting burden
- **Procurement Manager** - Volume discounts and vendor consolidation
- **CISO** - FIDO2 achieves Zero Trust mandate
- **HR** - Ergonomic options address wellbeing concerns

**Fence-sitters** (Neutral, need convincing):
- **IT Operations Director** - Supportive but concerned about transition complexity
- **CIO** - Supportive but watching budget carefully
- **CFO** - Supportive of savings but skeptical of projected ROI

**Resisters** (Opposed or skeptical):
- **End Users with preferred peripherals** - Losing favorite keyboard/mouse
- **Privileged Users** - Carrying physical FIDO2 key
- **Power Users** - Concerned about standardization limiting options
- **Mitigation**: Ergonomic exceptions, user choice within standards, security awareness training

---

## Risk Register (Stakeholder-Related)

### Risk R-1: User Resistance to FIDO2 Physical Keys

**Related Stakeholders**: CISO, Privileged Users

**Risk Description**: Privileged users resist carrying physical FIDO2 keys, find workarounds, or lose keys frequently causing lockout disruptions

**Impact on Goals**: G-1 (FIDO2 deployment), O-1 (Zero phishing)

**Probability**: MEDIUM

**Impact**: HIGH

**Mitigation Strategy**:
- Security awareness training explaining phishing risks and £2M breach cost
- USB-C + NFC options for flexibility
- Backup key registration (2 keys per user)
- Clear lost key recovery workflow (2-hour SLA)

**Contingency Plan**: If resistance severe, phased rollout with IT admins first, demonstrate success before extending to executives

---

### Risk R-2: Standardization Causes User Dissatisfaction

**Related Stakeholders**: CFO, End Users, HR

**Risk Description**: Aggressive SKU reduction (45→20) removes user-preferred peripherals, causing satisfaction drop and productivity complaints

**Impact on Goals**: G-5 (User satisfaction), O-4 (Wellbeing)

**Probability**: MEDIUM

**Impact**: MEDIUM

**Mitigation Strategy**:
- 2-3 options within each peripheral category (not single choice)
- Ergonomic exemption process via HR (5-day SLA)
- Monitor choice (dual 24" OR ultrawide)
- User communication explaining benefits

**Contingency Plan**: If satisfaction drops <70%, expand catalog with top-requested ergonomic options

---

### Risk R-3: Supply Chain Delays Affect Deployment

**Related Stakeholders**: Procurement, IT Operations, CIO

**Risk Description**: Global supply chain disruptions delay FIDO2 keys, headsets, or monitors, missing deployment milestones

**Impact on Goals**: G-1 (FIDO2 Month 6), G-3 (Headsets Month 9), G-7 (Monitors Month 18)

**Probability**: MEDIUM

**Impact**: HIGH

**Mitigation Strategy**:
- Multi-vendor approved list (Yubico AND Microsoft for FIDO2, Jabra AND Poly for headsets)
- Early procurement (3-month lead time buffer)
- Volume commitments securing allocation

**Contingency Plan**: If delays occur, prioritize critical users first (admins for FIDO2, client-facing for headsets)

---

### Risk R-4: Volume Discounts Not Achieved

**Related Stakeholders**: CFO, Procurement

**Risk Description**: Ergonomic exceptions and fragmented ordering prevent volume discount targets (15-20%), reducing cost savings

**Impact on Goals**: G-4 (£150K savings), O-2 (Cost savings)

**Probability**: MEDIUM

**Impact**: MEDIUM

**Mitigation Strategy**:
- Limit ergonomic exceptions to <20% of orders
- Multi-year contracts with minimum volume commitments
- Quarterly volume consolidation with vendors

**Contingency Plan**: Accept lower volume discounts (10-15%), adjust savings target to £120K

---

### Risk R-5: GDPR Consent Process Delays Windows Hello Rollout

**Related Stakeholders**: DPO, IT Operations, End Users

**Risk Description**: GDPR consent workflow complexity delays Windows Hello enrollment, impacting Project 001 biometric authentication timeline

**Impact on Goals**: G-6 (GDPR compliance)

**Probability**: LOW

**Impact**: MEDIUM

**Mitigation Strategy**:
- Privacy Impact Assessment completed Month 1
- Simple consent workflow integrated into InTune enrollment
- DPO sign-off before Windows Hello deployment

**Contingency Plan**: If consent issues arise, offer PIN-only Windows Hello as interim (non-biometric)

---

### Risk R-6: Monitor Upgrade Budget Exceeds Cap

**Related Stakeholders**: CFO, End Users, IT Operations

**Risk Description**: Monitor upgrade costs (1,360 setups × dual 24" or ultrawide) exceed Year 1/Year 2 budget allocation

**Impact on Goals**: G-7 (Monitor upgrades)

**Probability**: MEDIUM

**Impact**: MEDIUM

**Mitigation Strategy**:
- Phased deployment (680 Year 1, 680 Year 2)
- Prioritize power users with documented productivity case
- Monitor arms deferred to Facilities budget (Year 3)

**Contingency Plan**: Reduce Year 1 scope to 500 setups, extend Year 2 to 860 setups

---

## Governance & Decision Rights (RACI)

### Decision Authority Matrix

| Decision Type | Responsible | Accountable | Consulted | Informed |
|---------------|-------------|-------------|-----------|----------|
| **Define requirements** | IT Ops Director | CIO | CISO, CFO | Procurement, HR |
| **Approve budget** | CFO | CIO | IT Ops Director | All stakeholders |
| **Select vendors** | Procurement Manager | IT Ops Director | CFO, CISO | Vendors |
| **Approve security controls** | CISO | CIO | IT Ops Director | DPO |
| **FIDO2 policy enforcement** | CISO | CIO | IT Ops Director | Privileged Users |
| **SKU standardization decisions** | IT Ops Director | CFO | Procurement, Helpdesk | End Users |
| **Ergonomic exemptions** | HR | IT Ops Director | Facilities | End Users |
| **Monitor allocation** | IT Ops Director | CIO | HR, Facilities | End Users |
| **Manage deployment** | IT Ops Director | CIO | Procurement | End Users, HR |
| **User communication** | IT Ops Director | CIO | HR | End Users |
| **Measure benefits** | CFO | CIO | IT Ops Director | All stakeholders |

### Escalation Path

1. **Level 1**: IT Operations Coordinator (day-to-day issues, <£5K decisions)
2. **Level 2**: IT Operations Director + Procurement Manager (scope/timeline variances, vendor issues, £5-50K decisions)
3. **Level 3**: CIO + CFO (strategic pivots, budget overruns, >£50K decisions)

---

## Validation & Sign-off

### Stakeholder Review

| Stakeholder | Review Date | Comments | Status |
|-------------|-------------|----------|--------|
| CIO | | | PENDING |
| CFO | | | PENDING |
| CISO | | | PENDING |
| IT Operations Director | | | PENDING |
| Data Protection Officer | | | PENDING |
| HR | | | PENDING |

### Document Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Project Sponsor (IT Ops Director) | | | |
| Budget Owner (CFO) | | | |
| Security Owner (CISO) | | | |

---

## Success Metrics Summary

| Metric | Baseline | Target | Timeline | Owner | Status Tracking |
|--------|----------|--------|----------|-------|----------------|
| **FIDO2 deployment** | 0% | 100% (500 users) | Month 6 | CISO | Azure AD reporting |
| **Peripheral ticket rate** | 5% | <1% | Month 12 | IT Ops | ServiceNow |
| **Teams headset deployment** | 0% | 100% (3,000 users) | Month 9 | IT Ops | InTune inventory |
| **Annual cost savings** | £0 | £150K+ | Month 18 | CFO | Finance tracking |
| **User satisfaction** | 55% | >85% | Month 12 | IT Ops/HR | Quarterly surveys |
| **SKU count** | 45 | 20 | Month 6 | Procurement | Catalog audit |
| **Ergonomic sick leave** | 120 days/year | 60 days/year | Month 12 | HR | HR systems |
| **Monitor upgrades** | 0 | 1,360 setups | Month 18 | IT Ops | InTune inventory |
| **GDPR compliance** | Partial | 100% | Month 3 | DPO | DPO audit |

---

## Appendices

### Appendix A: Stakeholder Interview Summaries

#### Interview with CISO - 2025-10-20

**Key Points**:
- Two successful phishing attacks this year compromised admin credentials
- Traditional MFA (SMS, authenticator) no longer acceptable for privileged access
- Board asking monthly about security posture
- £2M incident response cost avoided through luck - won't hold

**Quotes**:
- "FIDO2 is non-negotiable for anyone with admin access. No exceptions."
- "I'd rather have 500 users carrying keys than explaining a ransomware attack to the Board."

**Follow-up Actions**:
- FIDO2 mandatory for all privileged users (Month 6)
- No fallback MFA for admin portals

---

#### Interview with CFO - 2025-10-21

**Key Points**:
- Board mandate for 15% IT cost reduction
- Peripheral support costs £400K/year - "low-hanging fruit"
- Skeptical of volume discount claims - wants proof
- Budget cap £500K/year non-negotiable

**Quotes**:
- "45 SKUs is insane. Pick 20 and stick with them."
- "Show me the savings math. I want £150K minimum."

**Follow-up Actions**:
- SKU standardization target: 45 → 20
- Monthly savings tracking reports
- Volume discount targets contractually committed

---

#### Interview with End User Representatives - 2025-10-22

**Key Points**:
- Current peripherals causing wrist pain (55% satisfaction)
- Audio quality on Teams calls embarrassing with clients
- Want choice of monitors (dual vs ultrawide)
- Concerned about losing favorite peripherals to standardization

**Quotes**:
- "My keyboard causes pain after 4 hours. I've been asking for an ergonomic one for a year."
- "I sound like I'm in a tunnel on client calls. It's unprofessional."

**Follow-up Actions**:
- Ergonomic options available upon request (5-day SLA)
- Monitor choice (dual 24" OR ultrawide)
- User communication emphasizing benefits

---

### Appendix B: Related Project Dependencies

**Project 003 → Project 001 Dependencies**:
- Project 001 laptops include built-in Windows Hello webcams (eliminates webcam scope from Project 003)
- Project 001 laptops have USB-C ports (enables USB-C peripheral standardization)
- Project 001 pilot (Month 6) requires peripherals for 500 pilot users (Week 26 delivery)

**Project 003 → Project 002 Dependencies**:
- None (peripheral project independent of application packaging)

---

### Appendix C: References

- [Project 003 Requirements](/workspaces/arckit-test-project-v3-windows11/projects/003-peripherals-update-upgrade/requirements.md)
- [Project 001 Requirements](/workspaces/arckit-test-project-v3-windows11/projects/001-windows-11-migration-intune/requirements.md)
- [Architecture Principles](/workspaces/arckit-test-project-v3-windows11/.arckit/memory/architecture-principles.md)
- [Microsoft Teams Certified Devices](https://docs.microsoft.com/microsoftteams/devices/teams-ip-phones)
- [Yubico FIDO2 Security Keys](https://www.yubico.com/products/yubikey-5-overview/)
- [UK HSE DSE Regulations](https://www.hse.gov.uk/msd/dse/)

---

**Generated by**: ArcKit `/arckit.stakeholders` command
**Generated on**: 2026-01-24
**ArcKit Version**: 0.11.0
**Project**: Peripherals Update and Upgrade (Project 003)
**AI Model**: Claude Opus 4.5
