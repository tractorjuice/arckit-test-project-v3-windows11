# Project Requirements: Peripherals Update and Upgrade

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-003-REQ-v3.0 |
| **Document Type** | Business and Technical Requirements |
| **Project** | Peripherals Update and Upgrade (Project 003) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 3.0 |
| **Created Date** | 2025-10-28 |
| **Last Modified** | 2026-01-24 |
| **Review Cycle** | Quarterly |
| **Next Review Date** | 2026-04-24 |
| **Owner** | IT Operations Director |
| **Reviewed By** | PENDING |
| **Approved By** | PENDING |
| **Distribution** | CIO, CFO, CISO, Procurement, IT Operations, Facilities, End User Representatives |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2025-10-28 | Enterprise Architect | Initial draft - comprehensive requirements for Project 003 Peripherals Update/Upgrade | PENDING | PENDING |
| 2.0 | 2025-10-28 | Enterprise Architect | Removed external webcams (Project 001 laptops include Windows Hello), added monitor options (dual 24" vs ultrawide 34"), revised budget | PENDING | PENDING |
| 3.0 | 2026-01-24 | ArcKit AI | Updated to latest template format - enhanced Document Control, Revision History with approval tracking, and generation metadata | PENDING | PENDING |

---

## Executive Summary

### Business Context

As part of the Windows 11 Transformation Programme (Projects 001 and 002), the organization must upgrade and modernize its peripheral device ecosystem to support hybrid working and improve user productivity. With Project 001 procuring new Windows 11 laptops with integrated Windows Hello-compatible webcams, the focus shifts to collaboration peripherals, ergonomic devices, and display modernization.

Windows 11 laptops will feature built-in 1080p+ webcams with infrared sensors for Windows Hello for Business, eliminating the need for external webcam procurement. The shift to cloud-native InTune and hybrid working demands high-quality collaboration peripherals (headsets) and productivity enhancements (multi-monitor setups, ergonomic keyboards/mice).

### Objectives

- Enable hybrid working with high-quality noise-cancelling headsets
- Standardize peripheral inventory to reduce support complexity
- Improve user productivity through ergonomic peripherals and multi-monitor setups
- Reduce IT support burden via plug-and-play USB-C peripherals
- Achieve cost savings through volume procurement and reduced support tickets
- Enhance user workspace with monitor upgrades (2x24" or 1x ultrawide)

### Expected Outcomes

- 100% of hybrid workers equipped with Teams-certified headsets by Month 12
- <1% support ticket rate for peripherals (down from 5%)
- £150K annual cost savings through standardization
- 85% user satisfaction with peripheral quality (up from 55%)
- 50% reduction in peripheral SKUs (45 → 20 models)
- Improved user productivity via dual-monitor or ultrawide setups

### Project Scope

**In Scope**:
- Headsets: Noise-cancelling, Teams-certified for hybrid workers (3,000 users)
- Keyboards & Mice: Ergonomic wireless USB-C (6,000 users)
- FIDO2 Security Keys: For privileged users (500 users)
- FIDO2 Fingerprint Readers: Biometric alternative (900 users)
- Monitor Refresh: 2,720 monitors (Year 1 + Year 2)
  - Option A: Dual 24" monitors (1,360 setups × 2 monitors = 2,720 units)
  - Option B: Single ultrawide 34" monitors (1,360 units)
- Asset tracking via InTune
- SKU standardization (45 → 20 models)

**Out of Scope** (Deferred to Year 3):
- USB-C docking stations (4,000 units, £400K) - included in Project 001 laptop procurement
- Monitor arms for dual monitors (1,500 units, £225K) - Facilities budget
- Full monitor refresh beyond initial scope (remaining 1,780 units)

**Removed from Original Scope**:
- External webcams: Project 001 laptops include Windows Hello-compatible 1080p webcams (built-in)

---

## Stakeholders

| Stakeholder | Role | Organization | Involvement Level |
|-------------|------|--------------|-------------------|
| IT Operations Director | Project Sponsor | IT Operations | Decision maker |
| CFO | Budget Owner | Finance | Approval authority |
| CISO | Security Owner | Security | Security compliance |
| CIO | Executive Sponsor | IT | Strategic alignment |
| Procurement Manager | Procurement Lead | Finance | Vendor negotiation |
| End User Representative | User Advocate | Business Units | UAT validation |
| Data Protection Officer | Privacy/Compliance | Legal | GDPR compliance |

---

## Business Requirements

### BR-001: Windows Hello Biometric Authentication Enablement (UPDATED)

**Description**: All 6,000 users equipped with Windows Hello-compatible laptops via Project 001 by Month 12 for passwordless biometric authentication (facial recognition using built-in webcams).

**Rationale**: CISO mandate for Zero Trust requires passwordless MFA to eliminate password-based attacks. Windows 11 laptops in Project 001 include integrated 1080p webcams with infrared sensors for Windows Hello, eliminating external webcam procurement. Windows Hello provides secure, user-friendly biometric auth.

**Success Criteria**:
- 95% of users (5,700) equipped with Windows 11 laptops with WHQL-certified Windows Hello webcams by Month 12 (Project 001 dependency)
- <2% false acceptance rate (FAR) and <2% false rejection rate (FRR)
- Integration with InTune conditional access policies
- User training completed (2-hour e-learning)

**Priority**: MUST_HAVE
**Stakeholder**: CISO (aligns with SD-1: Eliminate Windows 10 EOL security risk)
**Alignment**: CISO Goal G-3 (100% Zero Trust compliance), Architecture Principle SEC-004
**Dependency**: Project 001 - Windows 11 laptop procurement with built-in Windows Hello webcams

---

### BR-002: Hybrid Working Collaboration Enablement (UPDATED)

**Description**: 3,000 hybrid workers equipped with noise-cancelling, Teams-certified headsets for effective remote collaboration by Month 9.

**Rationale**: Hybrid working model requires professional collaboration peripherals. Project 001 laptops include high-quality 1080p webcams, so focus shifts to audio quality. Poor audio quality reduces meeting effectiveness and damages professional reputation.

**Success Criteria**:
- 3,000 hybrid workers equipped with Teams-certified headsets by Month 9
- User satisfaction with audio quality >85% (up from 45%)
- <1% support tickets for connectivity issues (down from 8%)
- Plug-and-play compatibility with Autopilot (no driver installation)

**Priority**: MUST_HAVE
**Stakeholder**: CIO (aligns with SD-5: Cloud-first transformation)
**Alignment**: CIO Goal G-6 (hybrid working), CFO Goal G-4 (<2% support tickets)

---

### BR-003: IT Support Cost Reduction Through Standardization

**Description**: Reduce peripheral support ticket rate from 5% to <1% through standardization (45 SKUs → 20 SKUs) and plug-and-play USB-C peripherals.

**Rationale**: CFO mandate for 15% IT cost reduction. Current 45 SKU models create support complexity costing £400K/year. Standardizing to 20 USB-C models reduces support tickets 80% (5% → 1%), saving £320K/year (conservative £150K target for reduced scope).

**Success Criteria**:
- Peripheral support ticket rate <1% by Month 12 (from 5% baseline)
- Annual support cost savings £150K+ by Month 18
- SKU reduction from 45 to 20 models (55%)
- 100% plug-and-play compatibility (no driver installation)
- MTTR reduced from 45 minutes to 15 minutes

**Priority**: MUST_HAVE
**Stakeholder**: CFO (aligns with SD-2: Reduce IT infrastructure costs)
**Alignment**: CFO Goal G-2 (£X annual savings), IT Ops Goal G-4 (<2% support tickets)

---

### BR-004: User Productivity and Ergonomics Improvement (UPDATED)

**Description**: Improve user productivity and reduce ergonomic health issues (RSI, eye strain) through ergonomic keyboards, mice, and monitor refresh with dual-screen or ultrawide options (1,360 users Year 1 + Year 2).

**Rationale**: Current peripherals cause 8% increase in ergonomic sick leave (120 days/year × £200/day = £24K annual cost). User satisfaction at 55%. Investing in ergonomics reduces sick leave 50% (£12K savings), improves satisfaction to 85%, increases productivity 15-25% for power users with dual monitors.

**Success Criteria**:
- User satisfaction with ergonomics >85% (up from 55%)
- Ergonomic sick leave reduced 50% (£12K annual savings)
- Power users (1,500) prioritized for ergonomic peripherals
- Monitor refresh (1,360 setups) in Year 1 (680 setups) + Year 2 (680 setups)
- 100% ergonomic certification by independent testing
- User choice between dual 24" monitors or single 34" ultrawide

**Priority**: SHOULD_HAVE
**Stakeholder**: End Users, HR
**Alignment**: IT Ops Goal G-8 (>85% user satisfaction)

---

### BR-005: FIDO2 Security Key Deployment for Privileged Users

**Description**: Deploy FIDO2 hardware security keys to 500 privileged users (admins, developers, executives) for phishing-resistant MFA for elevated access by Month 6.

**Rationale**: CISO Zero Trust mandate requires phishing-resistant MFA for privileged users with admin access. Traditional MFA (SMS, authenticator apps) vulnerable to phishing. FIDO2 provides cryptographic proof that cannot be phished. £25K investment prevents £2M+ ransomware/breach cost.

**Success Criteria**:
- 500 privileged users equipped with FIDO2 keys by Month 6
- 100% admin portals require FIDO2 authentication
- Zero successful phishing attacks on privileged users
- User satisfaction >80%
- InTune conditional access policies enforce FIDO2

**Priority**: MUST_HAVE
**Stakeholder**: CISO (aligns with SD-1: Eliminate security risk)
**Alignment**: CISO Goal G-3 (Zero Trust), Goal G-5 (Zero P1 incidents), Principle SEC-004

---

### BR-006: Monitor Upgrade for Multi-Tasking and Productivity (NEW)

**Description**: Provide 1,360 users (power users, developers, analysts) with choice of dual 24" monitors or single 34" ultrawide monitor by Month 18 (phased Year 1 + Year 2) to improve productivity and reduce screen real-estate constraints.

**Rationale**: Single 24" monitors limit productivity for users managing multiple applications simultaneously. Studies show dual monitors increase productivity 20-30% for knowledge workers, developers, and analysts. Ultrawide monitors (34") provide equivalent screen real estate with simplified cable management and reduced desk footprint.

**Success Criteria**:
- 1,360 users upgraded to dual 24" or single 34" ultrawide by Month 18
- User productivity improvement >20% (self-reported survey)
- User satisfaction with display setup >85%
- User choice between dual 24" (Option A) or 34" ultrawide (Option B) based on workspace and preferences
- 680 monitor setups deployed Year 1, 680 Year 2 (phased)

**Priority**: SHOULD_HAVE
**Stakeholder**: End Users, IT Operations
**Alignment**: CIO Goal G-6 (user productivity), IT Ops Goal G-8 (>85% user satisfaction)

---

## Functional Requirements

### User Personas

#### Persona 1: Office Knowledge Worker (3,000 users)
- **Role**: Business analyst, project manager, HR, finance
- **Goals**: Effective collaboration (Teams calls), comfortable typing (8+ hours), multiple windows
- **Pain Points**: Tangled wired headset, single monitor cramped, wrist pain
- **Technical Proficiency**: Medium
- **Peripherals**: Wireless headset, ergonomic keyboard/mouse, single 24" monitor (standard) or dual 24" (if power user)

#### Persona 2: Hybrid Worker (3,000 users)
- **Role**: Sales, marketing, consultants
- **Goals**: Seamless home/office transition, professional audio for clients, quick setup
- **Pain Points**: Poor audio quality, incompatible setups
- **Technical Proficiency**: Medium
- **Peripherals**: Wireless headset, compact wireless keyboard/mouse, single 24" monitor

#### Persona 3: Developer/Power User (1,500 users)
- **Role**: Software engineers, data analysts, designers
- **Goals**: Dual monitors, ergonomic keyboard (10+ hours coding), precision mouse
- **Pain Points**: Single monitor cramped, RSI from non-ergonomic keyboard, standard mouse lacks precision
- **Technical Proficiency**: High
- **Peripherals**: Ergonomic mechanical keyboard, high-DPI mouse, wireless headset, dual 24" monitors OR 34" ultrawide

#### Persona 4: Privileged User (500 users)
- **Role**: IT admins, developers with prod access, C-level executives
- **Goals**: Secure authentication, phishing-resistant MFA, portable security key
- **Pain Points**: SMS MFA vulnerable, authenticator apps compromised, password resets
- **Technical Proficiency**: High (admins), Medium (executives)
- **Peripherals**: FIDO2 hardware security key, wireless headset

---

### Functional Requirements Detail

#### FR-001: Built-In Windows Hello Webcam Compatibility (UPDATED)

**Description**: All Windows 11 laptops from Project 001 must have Microsoft WHQL-certified Windows Hello webcams with infrared (IR) sensor for liveness detection (built-in, no external webcam required).

**Relates To**: BR-001, UC-001 (Facial recognition setup)

**Acceptance Criteria**:
- [ ] Laptop webcam has Microsoft WHQL certification for Windows Hello (Project 001 procurement requirement)
- [ ] IR sensor enables facial recognition in low light (<10 lux) with >95% success rate
- [ ] Facial recognition works with/without glasses (adaptive learning)
- [ ] Liveness detection fails printed photo/video replay attacks (IR detects 3D depth)

**Priority**: MUST_HAVE
**Complexity**: LOW (Project 001 dependency)
**Dependency**: Project 001 - Windows 11 laptop procurement

---

#### FR-002: USB-C Plug-and-Play Peripheral Support

**Description**: All approved peripherals must be plug-and-play via USB-C, requiring no driver installation.

**Relates To**: BR-003 (Support cost reduction)

**Acceptance Criteria**:
- [ ] Device functional within 5 seconds of USB-C connection (no driver installation)
- [ ] Hot-desking works seamlessly between different docks (plug-and-play)
- [ ] <1% support tickets due to driver/compatibility issues (down from 5%)

**Priority**: MUST_HAVE
**Complexity**: LOW

---

#### FR-003: Noise-Cancelling Headset with Microsoft Teams Certification

**Description**: All headsets must have active noise cancellation (ANC) and Microsoft Teams certification.

**Relates To**: BR-002 (Hybrid working)

**Acceptance Criteria**:
- [ ] Headset has "Microsoft Teams Certified" logo and ANC
- [ ] Background noise reduced >20dB in noisy environments
- [ ] Audio quality rated >4/5 by call participants
- [ ] Hardware mute button syncs with Teams app (LED indicator)

**Priority**: MUST_HAVE
**Complexity**: LOW

---

#### FR-004: FIDO2 Security Key with NFC Support

**Description**: FIDO2 keys must support USB-C wired and NFC wireless for mobile device authentication.

**Relates To**: BR-005 (FIDO2 deployment)

**Acceptance Criteria**:
- [ ] USB-C key recognized within 2 seconds, prompts for touch authentication
- [ ] NFC authentication on mobile devices completes within 3 seconds
- [ ] Key registered in Azure AD for all admin portals (Azure, AWS, Salesforce)
- [ ] Cryptographic signature prevents replay attacks without physical key

**Priority**: MUST_HAVE
**Complexity**: LOW

---

#### FR-005: Ergonomic Keyboard and Mouse Certification

**Description**: Ergonomic keyboards/mice must be certified by independent testing body (Ergonomics Institute).

**Relates To**: BR-004 (User productivity)

**Acceptance Criteria**:
- [ ] Keyboard has ergonomic certification (Ergonomics Institute or equivalent)
- [ ] User wrist pain <3/10 scale (down from 6/10 baseline) after 8+ hours typing
- [ ] Vertical mouse reduces wrist strain <3/10 scale
- [ ] Ergonomic sick leave reduced 50% (120 → 60 days/year)

**Priority**: SHOULD_HAVE
**Complexity**: LOW

---

#### FR-006: Asset Tracking via InTune Hardware Inventory

**Description**: All peripherals tracked in InTune with serial numbers, asset tags, assigned users, warranty expiration.

**Relates To**: BR-003 (Standardization)

**Acceptance Criteria**:
- [ ] Peripheral serial number, model, vendor, warranty captured in InTune
- [ ] User offboarding: IT verifies all assigned peripherals returned (InTune check)
- [ ] Warranty expiration alerts 30 days before expiration
- [ ] Stolen peripherals flagged in InTune for insurance claims

**Priority**: SHOULD_HAVE
**Complexity**: MEDIUM

---

#### FR-007: Multi-Monitor Display Options (NEW)

**Description**: Users eligible for monitor upgrades must have choice between dual 24" monitors (Option A) or single 34" ultrawide monitor (Option B) based on workspace constraints and user preference.

**Relates To**: BR-006 (Monitor upgrade)

**Acceptance Criteria**:
- [ ] User survey captures preference (dual 24" vs 34" ultrawide)
- [ ] Workspace assessment confirms desk space for dual monitors (>120cm width) or ultrawide (>90cm width)
- [ ] Both options provide equivalent screen real estate (dual 24" ≈ 34" ultrawide)
- [ ] Cable management solution provided for dual monitors (USB-C to dual HDMI adapter or docking station)
- [ ] Monitor stands adjustable for ergonomic viewing height (UK HSE DSE compliance)

**Priority**: SHOULD_HAVE
**Complexity**: MEDIUM

---

## Non-Functional Requirements (NFRs)

### Performance Requirements

#### NFR-P-001: Peripheral Connection Time

**Requirement**: Plug-and-play peripherals functional within 5 seconds of USB-C connection (no driver installation).

**Measurement**: Automated testing from USB insertion to device functional (HID input recognized, audio working).

**Load Conditions**:
- Standard: Single peripheral (keyboard, mouse, headset)
- Peak: USB-C dock with 6 simultaneous peripherals

**Priority**: HIGH

**Acceptance Criteria**:
- [ ] Standard peripheral functional within 2 seconds
- [ ] USB-C dock with 6 peripherals functional within 5 seconds

---

#### NFR-P-002: Windows Hello Authentication Speed

**Requirement**: Windows Hello facial recognition unlocks device within 2-3 seconds from camera activation to desktop (using built-in laptop webcam).

**Measurement**: Timer from lock screen to desktop (averaged over 50 authentication attempts, various lighting).

**Priority**: HIGH

**Acceptance Criteria**:
- [ ] Optimal conditions (office lighting): <2 seconds unlock (95th percentile)
- [ ] Suboptimal conditions (low light, glasses, off-center): <3 seconds unlock (95th percentile)

---

### Security Requirements

#### NFR-SEC-001: FIDO2 Phishing-Resistant Authentication

**Requirement**: All privileged users must authenticate to admin portals using FIDO2 keys (phishing-resistant MFA), with fallback MFA (SMS, authenticator app) disabled.

**Rationale**: Traditional MFA vulnerable to phishing. FIDO2 provides cryptographic proof attacker cannot obtain without physical key. NIST 800-63B AAL3 and UK NCSC recommend FIDO2 for privileged users.

**Priority**: CRITICAL

**Acceptance Criteria**:
- [ ] Conditional access policy requires FIDO2 (no SMS/authenticator fallback)
- [ ] Phishing attack obtaining credentials fails without physical FIDO2 key
- [ ] Baseline 2 phishing attacks/year reduced to zero with FIDO2

---

#### NFR-SEC-002: Biometric Data Privacy (GDPR Compliance)

**Requirement**: Windows Hello facial data stored locally on device TPM 2.0 (not transmitted to cloud) to comply with GDPR Article 9.

**Rationale**: GDPR Article 9 prohibits biometric data processing unless explicit consent and heightened protection. Storing facial data locally on TPM 2.0 prevents data breaches via cloud compromise.

**Priority**: CRITICAL

**Acceptance Criteria**:
- [ ] Facial data stored locally on TPM 2.0 (encrypted at rest)
- [ ] Facial recognition matching performed locally (no network transmission)
- [ ] User can delete Windows Hello enrollment via Settings (GDPR right to erasure)
- [ ] GDPR audit confirms compliance with Article 9 (local storage, explicit consent)

---

#### NFR-SEC-003: USB-C Peripheral Firmware Security

**Requirement**: All USB-C peripherals must have signed firmware to prevent malicious firmware attacks (BadUSB, USB Killer).

**Rationale**: Unsigned firmware can be maliciously modified to inject malware or deliver power surges. Signed firmware ensures authenticity, preventing supply chain attacks.

**Priority**: HIGH

**Acceptance Criteria**:
- [ ] Vendor provides firmware signing certificate (code signing cert)
- [ ] Windows 11 Secured-core PC rejects unsigned firmware
- [ ] USB-C dock firmware updates digitally signed and verified before installation

---

### Compliance and Regulatory Requirements

#### NFR-C-001: Ergonomic Health & Safety Compliance (UK HSE DSE Regulations)

**Requirement**: All peripherals must comply with UK Health & Safety Executive (HSE) Display Screen Equipment (DSE) Regulations 1992.

**Applicable Regulations**: UK HSE DSE Regulations 1992, ISO 9241

**Compliance Requirements**:
- [ ] Keyboards/mice ergonomic design (split keyboard, vertical mouse)
- [ ] Monitors adjustable height/tilt, positioned at eye level
- [ ] DSE assessments conducted for all users (self-assessment)
- [ ] Ergonomic peripherals provided upon DSE request (reasonable adjustments)

**Priority**: HIGH

---

#### NFR-C-002: Asset Management Audit Trail (ISO 27001 Compliance)

**Requirement**: All peripheral assets tracked with comprehensive audit trail to comply with ISO 27001 A.8.1 (Asset Management).

**Applicable Regulations**: ISO 27001:2022 A.8.1, A.8.3, A.11.2

**Compliance Requirements**:
- [ ] Inventory of all peripheral assets in InTune/asset management system
- [ ] Asset assignment records linking serial number to user identity
- [ ] Secure disposal process (WEEE compliance, data sanitization)
- [ ] Audit trail of asset lifecycle (procurement → assignment → return → disposal)

**Priority**: MEDIUM

---

#### NFR-C-003: Accessibility Compliance (UK Equality Act 2010, WCAG 2.1)

**Requirement**: Peripheral options available for users with disabilities to comply with UK Equality Act 2010 and WCAG 2.1 Level AA.

**Applicable Regulations**: UK Equality Act 2010, WCAG 2.1 Level AA, Section 508

**Compliance Requirements**:
- [ ] Large-print keyboards for visually impaired users
- [ ] Voice-controlled peripherals for users with motor impairments
- [ ] Closed-caption-compatible headsets for hearing-impaired users
- [ ] Alternative input devices (trackball, joystick) for users unable to use standard mouse

**Priority**: MEDIUM

**Acceptance Criteria**:
- [ ] Large-print keyboard provided within 5 business days upon request
- [ ] Alternative input device provided within 5 business days upon request
- [ ] Accessibility options communicated via intranet (user awareness)

---

## Integration Requirements

### INT-001: Integration with InTune Hardware Inventory

**Purpose**: Track peripheral assets (serial numbers, models, assigned users, warranty expiration) in InTune for lifecycle management.

**Integration Type**: Real-time API (InTune Graph API)

**Data Exchanged**:
- From Asset Management → InTune: Serial numbers, asset tags, purchase dates, warranty expiration
- From InTune → Asset Management: USB device connection events, firmware versions

**Integration Pattern**: Event-driven (InTune webhook when new USB device connected)

**Authentication**: OAuth 2.0 (Azure AD app registration with Microsoft Graph permissions)

**SLA**: <5 minute latency (peripheral connected → InTune updated → asset management synchronized)

**Owner**: IT Operations (InTune admin), Finance (asset management admin)

**Priority**: MEDIUM

---

### INT-002: Integration with Microsoft Teams for Headset Certification

**Purpose**: Ensure deployed headsets are Microsoft Teams certified for optimal audio quality and hardware button integration.

**Integration Type**: Hardware certification (no API integration, certification verified during procurement)

**Data Exchanged**:
- From Vendor → IT: Microsoft Teams certification certificate, firmware version
- From Teams App → Headset: Mute status, call status, LED control commands

**Integration Pattern**: HID (Human Interface Device) protocol for hardware button integration

**SLA**: <100ms latency (hardware mute button → Teams mute status → LED indicator)

**Owner**: IT Operations (Teams admin), Procurement (vendor certification verification)

**Priority**: HIGH

---

## Data Requirements

### Data Entities

#### Entity 1: Peripheral Asset

**Description**: Physical peripheral device tracked in asset management system and InTune inventory.

**Attributes**:

| Attribute | Type | Required | Description | Constraints |
|-----------|------|----------|-------------|-------------|
| asset_id | UUID | Yes | Unique asset identifier | Primary key, auto-generated |
| serial_number | String(50) | Yes | Manufacturer serial number | Unique, indexed |
| model | String(100) | Yes | Device model (e.g., "Jabra Evolve2 65") | Not null |
| vendor | String(100) | Yes | Manufacturer (e.g., "Jabra") | Not null |
| category | Enum | Yes | Peripheral category | ['headset', 'keyboard', 'mouse', 'fido2_key', 'monitor'] |
| purchase_date | Date | Yes | Date of purchase | Indexed |
| warranty_expiration | Date | Yes | Warranty expiration date | Indexed (warranty alerts) |
| assigned_user | String(100) | No | User principal name (UPN) | Foreign key to User entity |
| assigned_device | String(100) | No | InTune device ID | Foreign key to Device entity |
| deployment_date | Date | No | Date assigned to user | Indexed |
| status | Enum | Yes | Asset lifecycle status | ['in_stock', 'deployed', 'failed', 'rma', 'disposed'] |
| location | String(100) | No | Physical location (office, home) | Indexed |

**Data Volume**:
- Year 1: 10,000 peripheral assets (6,000 users × 1.7 peripherals average)
- Year 3: 12,000 peripheral assets (7,000 users × 1.7 peripherals average)

**Data Classification**: INTERNAL (contains user PII - assigned_user)

**Data Retention**: 7 years after disposal (financial audit trail)

---

### Data Quality Requirements

**Data Accuracy**: Peripheral serial numbers must match manufacturer labels (99% accuracy)

**Data Completeness**: All deployed peripherals must have assigned_user (100% completeness)

**Data Consistency**: InTune inventory reconciles with asset management system weekly (automated sync)

**Data Timeliness**: Peripheral deployment events sync to InTune within 5 minutes

---

## Constraints and Assumptions

### Technical Constraints

**TC-001**: All laptops in Project 001 must have Thunderbolt 3/4 USB-C ports to support USB-C peripherals. Legacy laptops without USB-C require USB-A adapters (reduced functionality).

**TC-002**: Windows 11 Autopilot requires plug-and-play peripherals (inbox drivers or HID-compliant) with no manual driver installation.

**TC-003**: InTune hardware inventory has limited support for non-standard USB devices. Asset tracking may require custom PowerShell scripts.

**TC-004**: Dual monitor setups require laptops with dual video output capability (2× USB-C DisplayPort or 1× USB-C + 1× HDMI) or USB-C docking station with dual video support.

---

### Business Constraints

**BC-001**: Project 003 budget cap £500K per year (Year 1 + Year 2). If costs exceed budget due to supply chain price increases, scope must be reduced.

**BC-002**: Project 003 delivery must align with Project 001 Windows 11 migration pilot (Week 27, Month 6). Peripherals for pilot users (500 devices) required by Week 26.

**BC-003**: Peripheral procurement must use approved vendor list (Dell, HP, Logitech, Jabra, Microsoft, Yubico). New vendor onboarding requires 8-week procurement process.

---

### Assumptions

**A-001**: Users have adequate workspace for dual monitors (desk width >120cm for 2×24" monitors, >90cm for 34" ultrawide). Facilities provides monitor arms if desk space insufficient (£150/arm × 1,500 users = £225K, not in Project 003 budget).

**A-002**: Hybrid workers have reliable internet (50 Mbps+ download, 10 Mbps+ upload) for Teams calls. Users with inadequate internet provided with 4G/5G hotspots (separate procurement).

**A-003**: Users complete 2-hour e-learning module before peripherals shipped. Users skipping e-learning may generate excessive support tickets beyond 1% target.

**A-004**: Peripheral vendors maintain stable pricing for 12-month duration. Supply chain disruptions may increase costs 10-20%, requiring budget contingency.

**A-005**: Windows Hello works for 95%+ users without accessibility issues. Users with visual impairments, facial differences, or religious head coverings may require alternative authentication (FIDO2 fingerprint readers).

**A-006**: Project 001 laptops include Windows Hello-compatible 1080p webcams with IR sensors (procurement requirement validated). No external webcams required.

---

## Success Criteria and KPIs

### Business Success Metrics

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| Windows Hello enrollment rate | 0% | 95% (5,700 users) | Month 12 | InTune conditional access compliance report |
| Peripheral support ticket rate | 5% (300/month) | <1% (60/month) | Month 12 | ServiceNow ticket volume by category |
| Annual support cost savings | £400K/year | £150K+/year | Month 18 | Finance cost accounting (helpdesk labor) |
| User satisfaction (peripherals) | 55% | >85% | Month 15 | Quarterly user satisfaction survey |
| Ergonomic sick leave reduction | 120 days/year | <60 days/year | Month 18 | HR sick leave tracking (ergonomic-related) |
| Peripheral SKU reduction | 45 models | 20 models | Month 6 | Procurement approved vendor list |

---

### Technical Success Metrics

| Metric | Target | Measurement Method |
|--------|--------|-------------------|
| Peripheral connection time | <5 seconds | Automated testing (USB insertion to functional) |
| Windows Hello unlock time | <3 seconds (95th percentile) | Timer (lock screen to desktop) |
| Peripheral failure rate (MTBF) | <2% annual failure | Warranty claim volume (RMA tickets / total devices) |
| First-call resolution rate | >85% | ServiceNow ticket resolution data |
| Mean time to resolve (MTTR) | <15 minutes | ServiceNow ticket data (resolved_at - created_at avg) |

---

## Dependencies and Risks

### Dependencies

| Dependency | Description | Owner | Target Date | Status | Impact if Delayed |
|------------|-------------|-------|-------------|--------|-------------------|
| Project 001 - Laptop Procurement | Laptops must have Windows Hello webcams, Thunderbolt 3/4 USB-C ports | Project 001 Lead | Week 34 (Month 8) | On Track | CRITICAL - Windows Hello cannot be enabled without compatible laptops; USB-C peripherals unusable |
| Project 001 - InTune Configuration | InTune conditional access policies for Windows Hello | Project 001 Lead | Week 30 (Month 7) | On Track | HIGH - Windows Hello cannot be enforced without policies |
| Vendor Contract Negotiation | Volume procurement contracts with Logitech, Jabra, Microsoft, Dell | Procurement Manager | Week 6 (Month 1.5) | On Track | MEDIUM - Delays increase per-unit costs |
| Azure AD - FIDO2 Registration Portal | Azure AD enable FIDO2 key registration for privileged users | Azure AD Admin | Week 4 (Month 1) | On Track | HIGH - Privileged users cannot enroll FIDO2 keys |

---

### Risks

| Risk ID | Description | Probability | Impact | Mitigation Strategy | Owner |
|---------|-------------|-------------|--------|---------------------|-------|
| R-001 | Supply chain delays (semiconductor shortages, shipping delays) increase lead times from 4 weeks to 8-12 weeks | MEDIUM | HIGH | Early procurement (order 12 weeks before deployment), buffer inventory (5%), alternative vendors on standby | Procurement Manager |
| R-002 | Windows Hello enrollment failures for users with visual impairments, facial differences, religious head coverings | LOW | MEDIUM | Provide FIDO2 fingerprint readers as alternative (900 units, £27K), conduct pilot with diverse user group (Week 4-6) | IT Operations Lead |
| R-003 | User resistance to ergonomic peripherals (split keyboards require 2-4 week adaptation) | MEDIUM | LOW | Provide traditional keyboard option (80% ergonomic, 20% traditional), user training emphasizes RSI prevention | IT Operations Lead |
| R-004 | Peripheral vendor SLA breaches (warranty replacement >2 days) increase user downtime | MEDIUM | MEDIUM | Maintain 5% spare inventory (same-day replacement), escalate SLA breaches for service credits, diversify vendors | IT Operations Lead |
| R-005 | FIDO2 security key loss/theft creates security gap (user cannot authenticate to admin portals) | MEDIUM | HIGH | Require 2 FIDO2 keys per privileged user (primary + backup), rapid key revocation process (24-hour replacement turnaround) | CISO |
| R-006 | Monitor choice analysis paralysis (users cannot decide between dual 24" vs 34" ultrawide) | LOW | LOW | Provide decision guide with pros/cons, default to dual 24" if no preference stated within 2 weeks | IT Operations Lead |
| R-007 | Desk space insufficient for dual monitors (requires monitor arms not in budget) | MEDIUM | MEDIUM | Conduct workspace assessment before monitor selection, offer 34" ultrawide as alternative, escalate monitor arm budget to Facilities | Facilities Manager |

---

## Requirement Conflicts & Resolutions

### Conflict C-001: Cost vs. Ergonomic Peripheral Quality

**Conflicting Requirements**:
- **Requirement A (BR-003)**: Low-cost peripherals (<£50/unit) to minimize procurement budget
- **Requirement B (BR-004)**: High-quality ergonomic peripherals (£80-120/unit) to reduce RSI and improve satisfaction

**Stakeholders Involved**:
- **CFO**: Wants low-cost peripherals to minimize £500K budget (cost reduction mandate SD-2)
- **End Users & HR**: Want ergonomic peripherals to reduce RSI sick leave (£24K/year) and improve satisfaction (55% → 85%)

**Nature of Conflict**: Low-cost peripherals (£50/unit) enable standardization for 6,000 users (£300K), but lack ergonomic certification and have higher failure rates (5% vs. 2%). High-quality ergonomic (£100/unit) would cost £600K, exceeding budget by £100K (20% over).

**Trade-off Analysis**:

| Option | Pros | Cons | Impact |
|--------|------|------|--------|
| **Option 1**: Prioritize Cost (£50/unit for all) | ✅ Stay within £500K<br>✅ CFO happy<br>✅ Rapid ROI | ❌ Higher RSI risk<br>❌ Lower satisfaction<br>❌ Higher failure rate (5%) | CFO happy<br>Users frustrated |
| **Option 2**: Prioritize Ergonomics (£100/unit for all) | ✅ Reduced RSI (£24K → £12K)<br>✅ Higher satisfaction (55% → 85%)<br>✅ Lower failure (2%) | ❌ £100K budget overrun<br>❌ CFO frustrated | Users happy<br>CFO frustrated |
| **Option 3**: Tiered Approach (£100 for 1,500 power users, £50 for 4,500 others) | ✅ Balance cost/quality<br>✅ Target ergonomics where needed<br>✅ Within £500K (£375K peripherals) | ❌ Two-tier user experience<br>❌ Standard users may feel undervalued | CFO satisfied<br>Power users happy |

**Resolution Strategy**: TIERED APPROACH (Option 3)

**Decision**: Deploy tiered peripheral strategy with ergonomic peripherals (£100/unit) for power users, developers, and users with existing RSI (1,500 users), and standard plug-and-play peripherals (£50/unit) for knowledge workers (4,500 users).

**Rationale**:
- Power users (developers, analysts, designers) spend 10+ hours/day at desk with intensive keyboard/mouse use, highest RSI risk
- Standard knowledge workers spend 6-8 hours/day, lower RSI risk
- CFO budget constraint satisfied: £375K peripheral cost + £75K contingency + £50K (monitor refresh Year 2) = £500K/year budget

**Decision Authority**: IT Operations Director with CFO approval (budget owner)

**Impact on Requirements**:
- **Modified BR-004**: "Power users (1,500) and users with documented RSI equipped with ergonomic peripherals by Month 12. Standard users equipped with plug-and-play peripherals. Users may request ergonomic upgrade if RSI develops."
- **Modified Budget**: Peripheral procurement allocated as £150K ergonomic (1,500 × £100), £225K standard (4,500 × £50), £75K contingency = £450K Year 1 peripherals
- **Added BR-006**: "Users may submit ergonomic peripheral request via IT support portal with self-reported RSI symptoms (pain scale >5/10). Requests approved by IT Operations Lead and provisioned within 10 business days."

**Stakeholder Management**:
- **CFO**: Committed to £500K budget ceiling maintained. Communicated ergonomic tier investment reduces sick leave £12K/year (£60K 5-year NPV), improving ROI from 40% to 45%.
- **Standard Users**: Communicated ergonomic upgrade available on-request if RSI develops (self-service portal, 10-day turnaround). Training emphasizes proper posture to prevent RSI with standard peripherals.
- **HR**: Committed to monitoring RSI sick leave data quarterly and expanding ergonomic peripheral allocation if RSI rates increase above baseline (120 days/year threshold).

**Future Consideration**: Re-evaluate ergonomic peripheral allocation after 12 months based on RSI sick leave data, user satisfaction results, and ergonomic peripheral request volume (if >10% standard users request upgrade, consider expanding allocation).

---

### Conflict C-002: Windows Hello Biometric Privacy vs. Security Compliance

**Conflicting Requirements**:
- **Requirement A (NFR-SEC-002)**: Biometric data privacy (GDPR Article 9) requires explicit user consent and ability to opt-out, with alternative authentication available
- **Requirement B (BR-001)**: CISO mandate for 100% Windows Hello enrollment by Month 12 for Zero Trust security compliance (passwordless MFA required for all)

**Stakeholders Involved**:
- **Data Protection Officer (DPO)**: Wants user choice and opt-out capability to comply with GDPR Article 9 (biometric data = special category personal data requiring explicit consent)
- **CISO**: Wants mandatory Windows Hello enrollment to eliminate password-based attacks (phishing, credential stuffing) and achieve Zero Trust security (SD-1)

**Nature of Conflict**: GDPR Article 9 requires explicit consent for biometric data processing, implying users must be able to opt-out of Windows Hello. However, CISO mandate requires 100% enrollment for Zero Trust. If users can opt-out, security posture weakened (users fall back to passwords, creating phishing risk).

**Trade-off Analysis**:

| Option | Pros | Cons | Impact |
|--------|------|------|--------|
| **Option 1**: Mandatory Windows Hello (no opt-out) | ✅ 100% Zero Trust compliance<br>✅ CISO security mandate satisfied<br>✅ No password attacks | ❌ GDPR Article 9 compliance risk<br>❌ DPO concerned<br>❌ User choice removed | CISO happy<br>DPO concerned<br>Legal risk |
| **Option 2**: Optional Windows Hello (user opt-out) | ✅ GDPR Article 9 compliant<br>✅ DPO satisfied<br>✅ User choice preserved | ❌ <100% enrollment (80-90%)<br>❌ CISO security posture weakened<br>❌ Password attacks still possible | DPO happy<br>CISO frustrated<br>Security gap |
| **Option 3**: Mandatory biometric, but allow FIDO2 fingerprint as alternative to facial | ✅ 100% biometric authentication<br>✅ User choice (facial or fingerprint)<br>✅ GDPR compliant (alternative provided) | ❌ Additional cost for FIDO2 fingerprint readers (£30/unit × 900 users estimated 15% = £27K)<br>❌ Complexity (two biometric methods) | CISO satisfied<br>DPO satisfied<br>Budget increase |
| **Option 4**: Mandatory Windows Hello with GDPR-compliant consent workflow and DPIA | ✅ GDPR Article 9 compliant (explicit consent)<br>✅ 100% enrollment (users consent, no opt-out)<br>✅ DPIA demonstrates necessity/proportionality | ❌ Users may feel pressured<br>❌ Legal review required (2-week delay)<br>❌ Consent workflow adds friction | CISO satisfied<br>DPO satisfied<br>UX slightly degraded |

**Resolution Strategy**: INNOVATE (Option 4 with fallback to Option 3)

**Decision**: Implement Windows Hello with GDPR-compliant consent workflow (mandatory consent before enrollment, DPIA demonstrating necessity for Zero Trust security), with FIDO2 fingerprint readers available as alternative biometric method for users who refuse facial recognition.

**Rationale**:
- GDPR Article 9 allows biometric data processing if "necessary for reasons of substantial public interest" and "appropriate safeguards" are in place. Zero Trust security qualifies as substantial public interest (protecting organization and employee data from cyber attacks). Storing facial data locally on TPM 2.0 qualifies as appropriate safeguard.
- DPIA (Data Protection Impact Assessment) conducted by DPO demonstrates necessity (Windows Hello eliminates password-based attacks responsible for 80% of breaches), proportionality (facial data stored locally on TPM 2.0, never cloud), and legitimate interest (protecting organization/employee data outweighs privacy concern).
- Explicit consent workflow: User presented with consent dialog during Windows Hello enrollment explaining data usage (local TPM storage only), retention (deleted when user deletes enrollment), and user rights (delete enrollment anytime via Settings).
- Alternative biometric method: Users who refuse facial recognition offered FIDO2 fingerprint readers (£30/unit, estimated 15% uptake = 900 users = £27K funded from contingency).

**Decision Authority**: CIO (Executive Sponsor) with DPO and CISO co-approval

**Impact on Requirements**:
- **Modified BR-001**: "All users must be enrolled in Windows Hello (facial recognition) or FIDO2 fingerprint authentication by Month 12. Users who refuse facial recognition provided FIDO2 fingerprint readers at no cost."
- **Added NFR-SEC-002A**: "Windows Hello enrollment workflow must display GDPR Article 9 consent dialog explaining biometric data usage (local TPM storage), retention (deleted when enrollment deleted), and user rights (delete enrollment anytime). User must click 'I Consent' to proceed."
- **Added NFR-C-001A**: "Data Protection Impact Assessment (DPIA) must be completed and approved by DPO before Windows Hello rollout. DPIA must demonstrate necessity (Zero Trust security), proportionality (local TPM storage), and legitimate interest (breach prevention)."
- **Modified Budget**: £27K additional cost for FIDO2 fingerprint readers (900 users × £30/unit), funded from £75K contingency buffer.

**Stakeholder Management**:
- **DPO**: Secured GDPR-compliant consent workflow and DPIA demonstrating necessity/proportionality. DPO approval obtained for mandatory biometric authentication approach. Communicated users can delete Windows Hello enrollment anytime via Settings (right to erasure), and alternative fingerprint authentication available.
- **CISO**: Accepted FIDO2 fingerprint alternative (still biometric MFA, equivalent security to facial). Communicated 100% biometric authentication achieved (facial 85% + fingerprint 15% = 100%), satisfying Zero Trust mandate. Added InTune conditional access policy enforcing biometric authentication (no password-only fallback).
- **Users**: Communicated biometric authentication mandatory for Zero Trust security (protects organization and employee data from breaches). Emphasized user choice between facial recognition (free, built-in) and fingerprint (free FIDO2 reader provided). User training includes data protection explanation (facial data stored locally on device TPM 2.0, never transmitted to cloud, user can delete anytime).

**Future Consideration**: Re-evaluate biometric authentication uptake after 12 months. If >95% users choose facial recognition, FIDO2 fingerprint program can be scaled back (lower ongoing costs). If >20% users choose fingerprint, expand fingerprint reader procurement to reduce per-unit costs (volume discounts). Monitor GDPR regulatory changes: If future guidance requires opt-out capability, fallback to Option 2 (optional Windows Hello with password MFA for users who opt-out).

---

### Conflict C-003: Dual Monitors vs. Ultrawide Monitor (NEW)

**Conflicting Requirements**:
- **Requirement A (BR-006)**: Provide dual 24" monitors for maximum screen real estate and flexibility (separate displays for different tasks)
- **Requirement B (BR-006)**: Provide single 34" ultrawide monitors for simplified cable management and desk space efficiency

**Stakeholders Involved**:
- **Power Users (Developers, Analysts)**: Prefer dual monitors for task separation (code on one screen, documentation on other)
- **Facilities**: Prefer ultrawide monitors due to limited desk space and reduced cable management complexity
- **IT Operations**: Prefer ultrawide monitors for simplified hardware support (single display vs. dual display troubleshooting)

**Nature of Conflict**: Dual 24" monitors provide more flexibility (independent displays, different orientations) but require more desk space (>120cm width), more complex cable management (2× USB-C or 1× docking station), and higher support complexity (dual display driver issues). 34" ultrawide monitors simplify setup (single cable, less desk space) but lack physical separation between tasks and are more expensive per unit (£350 ultrawide vs. £180×2 = £360 dual 24").

**Trade-off Analysis**:

| Option | Pros | Cons | Impact |
|--------|------|------|--------|
| **Option 1**: Dual 24" for all | ✅ Maximum flexibility<br>✅ Physical task separation<br>✅ Lower cost per user (£360) | ❌ Requires wide desks (>120cm)<br>❌ Complex cable management<br>❌ Higher support tickets (dual display issues) | Users happy<br>Facilities frustrated<br>IT support burden |
| **Option 2**: Ultrawide 34" for all | ✅ Simplified cable management<br>✅ Less desk space (90cm)<br>✅ Lower support complexity | ❌ No physical task separation<br>❌ Slightly higher cost (£350 vs £360)<br>❌ Users may prefer dual monitors | Facilities happy<br>IT Ops happy<br>Users mixed |
| **Option 3**: User choice (dual 24" OR ultrawide 34") | ✅ User preference respected<br>✅ Workspace constraints accommodated<br>✅ Flexibility | ❌ Inventory complexity (2 SKUs)<br>❌ Decision paralysis for users<br>❌ Mixed support (dual vs ultrawide issues) | Users happy<br>Facilities neutral<br>IT Ops slight increase in complexity |

**Resolution Strategy**: USER CHOICE WITH WORKSPACE ASSESSMENT (Option 3)

**Decision**: Provide users with choice between dual 24" monitors (Option A) or single 34" ultrawide (Option B) based on:
1. **User Preference Survey**: Users indicate preference (dual vs ultrawide) with pros/cons decision guide
2. **Workspace Assessment**: IT verifies desk space sufficient for selected option (dual 24" requires >120cm width, ultrawide requires >90cm width)
3. **Default to Dual 24"**: If user does not respond to survey within 2 weeks, default to dual 24" (most popular option in pilot survey: 70% preferred dual, 30% ultrawide)

**Rationale**:
- User productivity depends on satisfaction with monitor setup. Forcing single option creates dissatisfaction for users preferring the other.
- Workspace constraints vary significantly across offices (open office vs. cubicles vs. private offices). Facilities assessment prevents desk space issues.
- Dual 24" and ultrawide 34" have similar cost (£360 vs £350), so cost is not differentiating factor.
- Inventory complexity manageable (2 monitor SKUs vs. 1) given volume (1,360 setups over 2 years).

**Decision Authority**: IT Operations Director with Facilities Manager co-approval (desk space verification)

**Impact on Requirements**:
- **Modified BR-006**: "Users eligible for monitor upgrade complete preference survey (dual 24" vs. ultrawide 34") with Facilities workspace assessment. IT deploys preferred option if workspace permits, otherwise alternative offered."
- **Added FR-007**: "User survey captures preference, workspace assessment confirms desk space, both options provide equivalent screen real estate"
- **Modified Budget**: Monitor procurement allocated as 70% dual 24" (952 setups × £360 = £342K), 30% ultrawide 34" (408 setups × £350 = £143K) = £485K total monitors (Year 1 + Year 2)

**Stakeholder Management**:
- **Users**: Survey includes decision guide showing pros/cons of each option (dual: task separation, flexibility | ultrawide: single cable, less desk clutter). Default to dual 24" if no response to avoid deployment delays.
- **Facilities**: Workspace assessment conducted before deployment. Users in constrained desk spaces (<120cm width) offered ultrawide as alternative. Escalation path for users requiring monitor arms (Facilities budget, not Project 003).
- **IT Operations**: Support documentation created for both dual and ultrawide setups. InTune compliance check verifies correct monitor configuration deployed (prevents user complaints about wrong option).

**Pilot Results**: Pilot survey (50 users) showed 70% preferred dual 24", 30% preferred ultrawide. 10% of users had insufficient desk space for dual monitors, successfully accommodated with ultrawide. Zero complaints about monitor choice process.

**Future Consideration**: Re-evaluate monitor choice distribution after Year 1 deployment (680 setups). If >90% users select one option, consider standardizing to single SKU in Year 2 to reduce inventory complexity. If workspace constraints affect >20% of dual monitor deployments, proactively offer ultrawide to users with desk width <120cm.

---

## Timeline and Milestones

### High-Level Milestones

| Milestone | Description | Target Date | Dependencies |
|-----------|-------------|-------------|--------------|
| Requirements Approval | Stakeholder sign-off on updated requirements | Week 2 (Nov 2025) | This document |
| Vendor Selection | Peripheral vendor contracts signed | Week 6 (Dec 2025) | Procurement evaluation, volume pricing |
| FIDO2 Keys Deployed | 500 privileged users equipped with FIDO2 keys | Week 6 (Dec 2025) | Azure AD FIDO2 registration portal |
| Pilot Peripheral Deployment | 500 Project 001 pilot users equipped with peripherals | Week 26 (Apr 2026) | Project 001 pilot user list |
| Monitor Preference Survey | 1,360 users complete monitor preference survey (dual vs ultrawide) | Week 20 (Mar 2026) | User communications, survey platform |
| Windows Hello 50% Enrollment | 3,000 users enrolled in Windows Hello | Week 36 (Jul 2026) | InTune conditional access policies, Project 001 laptop deployment |
| Full Peripheral Deployment | 6,000 users equipped with approved peripherals | Week 48 (Oct 2026) | Project 001 wave rollout complete |
| Year 1 Monitor Deployment | 680 monitor setups deployed (dual 24" or ultrawide 34") | Week 48 (Oct 2026) | Workspace assessments, vendor delivery |
| Windows Hello 95% Enrollment | 5,700 users enrolled (target achieved) | Week 52 (Nov 2026) | User training, conditional access enforced |
| Year 2 Monitor Deployment | Additional 680 monitor setups deployed | Week 74 (Apr 2027) | Year 1 lessons learned, budget approval |
| Project Closure | Support ticket rate <1%, user satisfaction >85% | Week 78 (May 2027) | 12-month measurement period complete |

---

## Budget

### Revised Year 1 Budget (£500K) - RECOMMENDED APPROACH

| Category | Quantity | Unit Cost | Total Cost | Notes |
|----------|----------|-----------|------------|-------|
| **Headsets** (3,000 units) | 3,000 | £43 | £129K | 15% volume discount (£50 → £43) |
| **FIDO2 Security Keys** (500 units) | 500 | £43 | £22K | 15% volume discount (£50 → £43) |
| **FIDO2 Fingerprint Readers** (900 units) | 900 | £26 | £23K | 15% volume discount (£30 → £26) |
| **Keyboards & Mice - Ergonomic** (750 kits) | 750 | £85 | £64K | 50% Year 1, 15% discount (£100 → £85) |
| **Keyboards & Mice - Standard** (2,250 kits) | 2,250 | £43 | £97K | 50% Year 1, 15% discount (£50 → £43) |
| **E-Learning Development** | 1 | £20K | £20K | User training (peripheral setup, Windows Hello) |
| **Project Management** | 0.3 FTE × 12 months | £30K | £30K | Project coordination |
| **Shipping & Logistics** | - | - | £25K | Year 1 peripheral shipment |
| **Spare Inventory (5%)** | - | - | £18K | 5% buffer for Year 1 peripherals |
| **Contingency (10%)** | - | - | £42K | 10% contingency (increased for supply chain risk) |
| **Year 1 Total** | - | - | **£470K** | Within £500K budget ✅ |

---

### Year 2 Budget (£500K) - Keyboards/Mice + Monitors

| Category | Quantity | Unit Cost | Total Cost | Notes |
|----------|----------|-----------|------------|-------|
| **Keyboards & Mice - Ergonomic** (750 kits) | 750 | £85 | £64K | Remaining 50%, 15% discount (£100 → £85) |
| **Keyboards & Mice - Standard** (2,250 kits) | 2,250 | £43 | £97K | Remaining 50%, 15% discount (£50 → £43) |
| **Monitors - Dual 24"** (476 setups × 2) | 952 | £153 | £146K | 70% of 680 setups, 15% discount (£180 → £153) |
| **Monitors - Ultrawide 34"** (204 setups) | 204 | £298 | £61K | 30% of 680 setups, 15% discount (£350 → £298) |
| **Spare Inventory (5%)** | - | - | £18K | 5% buffer for Year 2 peripherals |
| **Project Management** | 0.3 FTE × 12 months | £30K | £30K | Year 2 coordination |
| **Shipping & Logistics** | - | - | £25K | Year 2 peripheral shipment |
| **Contingency (10%)** | - | - | £41K | 10% contingency |
| **Year 2 Total** | - | - | **£482K** | Within £500K budget ✅ |

---

### Deferred to Year 3 (£1.1M additional budget required)

| Category | Quantity | Unit Cost | Total Cost | Notes |
|----------|----------|-----------|------------|-------|
| **Monitors - Remaining Users** (1,780 setups) | - | - | £540K | Full monitor refresh for remaining users (dual 24" or ultrawide 34" mix) |
| **USB-C Docking Stations** (4,000 units) | 4,000 | £100 | £400K | Hot-desking enablement (may be covered by Project 001) |
| **Monitor Arms** (1,500 units) | 1,500 | £150 | £225K | Dual monitor arms for power users (Facilities procurement) |
| **Year 3 Total** | - | - | **£1.165M** | Deferred - requires separate business case and budget approval |

---

### Ongoing Operational Costs (Annual)

| Category | Annual Cost | Notes |
|----------|-------------|-------|
| **Peripheral Warranty Renewals** | £15K/year | Extended warranty for out-of-3-year-warranty devices (Years 4-5) |
| **Spare Inventory Replenishment** | £25K/year | Replace failed devices sent for warranty |
| **FIDO2 Key Replacements** | £5K/year | Lost/stolen keys (10% annual replacement, 50 keys @ £100) |
| **User Training (New Hires)** | £10K/year | E-learning maintenance, new hire onboarding (500/year × £20/user) |
| **Support Labor (Peripheral Tickets)** | £60K/year | Helpdesk labor for <1% ticket rate (60 tickets/month × £83/ticket MTTR) |
| **Total** | **£115K/year** | |

**Cost Savings**: Baseline support labor £400K/year (5% ticket rate, 300 tickets/month) → Target £60K/year (1% ticket rate, 60 tickets/month) = **£340K/year savings**

**5-Year Net Cost**:
- Upfront investment: £952K (Year 1 + Year 2 revised budget)
- Ongoing operational costs: £115K/year × 5 years = £575K
- Total 5-year cost: £1.527M
- Total 5-year savings: £1.7M (support labor reduction @ 5% discount rate)
- **Net 5-year benefit: £173K** (£1.7M savings - £1.527M cost)
- **Additional benefits not quantified**: User productivity improvement (15-25% for power users with dual monitors), ergonomic sick leave reduction (£12K/year), user satisfaction improvement (55% → 85%)

---

## Validation & Sign-off

### Stakeholder Review

| Stakeholder | Review Date | Comments | Status |
|-------------|-------------|----------|--------|
| IT Operations Director | PENDING | | PENDING |
| CFO | PENDING | | PENDING |
| CISO | PENDING | | PENDING |
| CIO | PENDING | | PENDING |
| Data Protection Officer | PENDING | | PENDING |
| Enterprise Architect | PENDING | | PENDING |

### Document Approval

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Project Sponsor | | | |
| Budget Owner | | | |
| Security Owner | | | |

---

## Appendices

### Appendix A: Glossary

- **Windows Hello**: Microsoft biometric authentication technology using facial recognition or fingerprint to unlock Windows 11 devices (passwordless MFA)
- **FIDO2**: Fast Identity Online 2 standard for phishing-resistant authentication using hardware security keys (e.g., YubiKey)
- **USB-C**: Universal Serial Bus Type-C connector standard supporting data, video, and power delivery via single cable
- **Thunderbolt 3/4**: High-speed data transfer protocol over USB-C supporting dual 4K monitors and 60W+ power delivery
- **TPM 2.0**: Trusted Platform Module 2.0 hardware security chip for storing biometric data and cryptographic keys
- **Zero Trust**: Security model requiring continuous authentication and authorization (never trust, always verify)
- **MFA**: Multi-Factor Authentication requiring multiple forms of identity proof (password + biometric, password + FIDO2 key)
- **InTune**: Microsoft cloud-native device management platform (part of Microsoft 365 E5)
- **WHQL**: Windows Hardware Quality Labs certification by Microsoft for peripheral compatibility
- **HID**: Human Interface Device protocol for plug-and-play keyboards, mice, webcams without custom drivers
- **RSI**: Repetitive Strain Injury (musculoskeletal disorder from repetitive keyboard/mouse use)
- **GDPR**: General Data Protection Regulation (EU privacy law, Article 9 covers biometric data)
- **DSE**: Display Screen Equipment (UK HSE regulations for ergonomic workplace equipment)
- **DPIA**: Data Protection Impact Assessment (GDPR requirement for high-risk processing)
- **Ultrawide Monitor**: 34" monitor with 21:9 aspect ratio (equivalent screen area to dual 24" monitors)

---

### Appendix B: Reference Documents

- Architecture Principles: `.arckit/memory/architecture-principles.md` (Cloud-First, Zero Trust Security)
- Project 001 Stakeholder Analysis: `projects/001-windows-11-migration-intune/stakeholder-drivers.md`
- Project 001 Requirements: `projects/001-windows-11-migration-intune/requirements.md`
- Project 001 Business Case: `projects/001-windows-11-migration-intune/sobc.md`
- Project 003 Dell Research: `projects/003-peripherals-update-upgrade/research-findings-dell.md`
- Portfolio Master Plan: `portfolio-master-plan.md` (Project 001, 002, 003 integration)
- Microsoft Windows Hello Documentation: https://learn.microsoft.com/en-us/windows/security/identity-protection/hello-for-business/
- FIDO Alliance FIDO2 Specifications: https://fidoalliance.org/fido2/
- UK HSE Display Screen Equipment Regulations: https://www.hse.gov.uk/msd/dse/
- GDPR Article 9 (Biometric Data): https://gdpr-info.eu/art-9-gdpr/

---

### Appendix C: Monitor Decision Guide

**Dual 24" Monitors vs. Single 34" Ultrawide**

| Factor | Dual 24" Monitors (Option A) | Single 34" Ultrawide (Option B) |
|--------|------------------------------|----------------------------------|
| **Screen Real Estate** | 2× 24" = 48" diagonal equivalent | 34" diagonal equivalent |
| **Physical Separation** | ✅ Separate displays for different tasks | ❌ Single continuous display |
| **Cable Management** | ❌ 2 cables (or docking station required) | ✅ Single cable |
| **Desk Space Required** | >120cm width | >90cm width (more compact) |
| **Flexibility** | ✅ Independent orientation (portrait/landscape) | ❌ Fixed landscape only |
| **Support Complexity** | ❌ Higher (dual display driver issues) | ✅ Lower (single display) |
| **Cost** | £360 (2× £180) | £350 (single unit) |
| **Best For** | Developers (code + docs), analysts (data + reports), users preferring task separation | Users with limited desk space, preference for seamless continuous workspace |

**Recommendation**: Complete user preference survey. If uncertain, default to dual 24" (70% of pilot users preferred). Facilities will assess desk space and may recommend ultrawide if space constrained.

---

**Generated by**: ArcKit `/arckit.requirements` command
**Generated on**: 2026-01-24
**ArcKit Version**: 1.0
**Project**: Peripherals Update and Upgrade (003)
**Model**: claude-opus-4-5-20251101
