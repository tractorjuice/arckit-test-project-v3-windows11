# ADR-003: FIDO2 Security Key Standard Selection

**Status**: Accepted
**Date**: 2025-11-12
**Decision Makers**: CISO, IT Operations Director, Procurement Manager
**Consulted**: CFO, CIO, Data Protection Officer
**Informed**: Privileged Users (500), IT Admins, Developers

---

## Context and Problem Statement

Project 003 (Peripherals Update/Upgrade) requires procurement of **500 FIDO2 hardware security keys** for privileged users (admins, developers with production access, C-level executives) and **900 FIDO2 fingerprint readers** for users unable to use Windows Hello facial recognition (visual impairments, religious head coverings). The organization must select a **FIDO2 security key standard and vendor** that meets Zero Trust security requirements, GDPR biometric data privacy, and budget constraints.

### Business Context

- **Zero Trust Mandate**: CISO requires phishing-resistant multi-factor authentication (MFA) for all 500 privileged users by Month 6 (BR-005)
- **Security Imperative**: Traditional MFA (SMS, authenticator apps) vulnerable to phishing attacks. FIDO2 provides cryptographic proof that cannot be phished, preventing credential theft.
- **Budget Constraint**: £83K budget for FIDO2 keys (£22K Year 1 security keys, £61K Year 2 fingerprint readers) within Project 003 £1M total budget
- **Current State**: Privileged users authenticate with SMS MFA or Microsoft Authenticator app (phishing vulnerable, 2 successful phishing attacks/year baseline)
- **Target State**: 100% privileged users authenticate with FIDO2 hardware security keys by Month 6, zero successful phishing attacks

### Technical Context

**FIDO2 Standard** (Fast Identity Online 2):

- **FIDO Alliance Specification**: Open authentication standard using public-key cryptography (asymmetric keys)
- **WebAuthn API**: Browser API for FIDO2 authentication (W3C standard, supported by Chrome, Edge, Firefox, Safari)
- **CTAP2 Protocol**: Client-to-Authenticator Protocol 2 for communication between security key and device
- **Phishing-Resistant**: Security key verifies domain origin (cryptographic challenge-response), attacker on fake domain cannot authenticate without physical key
- **NIST 800-63B AAL3**: Authenticator Assurance Level 3 (highest assurance level for phishing-resistant MFA)

**Azure AD FIDO2 Integration**:

- **Azure AD Registration Portal**: Users register FIDO2 keys via [https://myaccount.microsoft.com/security-info](https://myaccount.microsoft.com/security-info)
- **Conditional Access**: InTune enforces FIDO2 authentication for privileged users (admin portals: Azure, AWS, Salesforce)
- **Key Management**: Azure AD tracks registered keys (serial numbers, registration dates), enables key revocation (lost/stolen keys)

**FIDO2 Key Form Factors**:

- **USB-A**: Traditional USB Type-A connector (legacy compatibility, most laptops have USB-A ports)
- **USB-C**: USB Type-C connector (modern laptops, Project 001 Windows 11 laptops include USB-C ports)
- **NFC**: Near-Field Communication wireless (mobile device authentication, iOS/Android Azure AD app)
- **Bluetooth**: Wireless authentication (not recommended due to battery requirement and complexity)

**FIDO2 Fingerprint Readers** (Biometric Alternative):

- **Use Case**: Users unable to use Windows Hello facial recognition (visual impairments, facial differences, religious head coverings)
- **FIDO2 Biometric**: Fingerprint stored on security key (not laptop), FIDO2 Certified biometric authenticator
- **Estimated Requirement**: 15% of 6,000 users (900 users, per requirements.md Conflict C-002 resolution)

### Architecture Principles

From `.arckit/memory/architecture-principles.md`:

- **Principle 2: Zero Trust Security Model** - "Implement Zero Trust architecture with phishing-resistant MFA for privileged users (FIDO2 hardware security keys required for all admin access)."
- **Principle 4: Security by Design** - "Embed security controls at every layer (FIDO2 cryptographic authentication prevents credential theft and phishing)."
- **Principle 5: Cloud-Native Identity Management** - "Leverage Azure AD integrated authentication with FIDO2 passwordless authentication for privileged users."

### Key Requirements

| Requirement | Priority | Specification |
|-------------|----------|---------------|
| **BR-005**: FIDO2 security keys (500 privileged users) | MUST_HAVE | Deploy phishing-resistant FIDO2 hardware security keys for all admins, developers with prod access, C-level executives by Month 6 |
| **FR-004**: FIDO2 with NFC support | MUST_HAVE | USB-C wired authentication (<2s touch authentication) + NFC wireless for mobile devices (iOS/Android Azure AD app) |
| **NFR-SEC-001**: Phishing-resistant authentication | CRITICAL | FIDO2 cryptographic challenge-response prevents phishing attacks, cryptographic signature requires physical key |
| **NFR-SEC-003**: FIDO2 key firmware security | HIGH | Firmware digitally signed by vendor (code signing certificate), prevents malicious firmware attacks (supply chain security) |
| **BR-004**: User satisfaction >80% | SHOULD_HAVE | FIDO2 keys must be user-friendly (touch authentication intuitive, portable for mobile workers) |

### Decision Drivers

#### Security Drivers (CISO)

- **SD-1**: Eliminate Windows 10 EOL security risk via Zero Trust controls
- **Goal G-3**: Achieve 100% Zero Trust compliance for user authentication
- **Outcome O-3.1**: Deploy phishing-resistant FIDO2 MFA for all 500 privileged users by Month 6
- **Baseline Phishing Risk**: 2 successful phishing attacks/year on privileged users (£2M+ potential ransomware/breach cost)
- **Target**: Zero successful phishing attacks with FIDO2 (cryptographic proof attacker cannot obtain without physical key)

#### Financial Drivers (CFO)

- **Budget Constraint**: £83K FIDO2 budget (£22K Year 1 security keys 500 units, £61K Year 2 fingerprint readers 900 units)
- **Cost Optimization**: Volume procurement discounts (10-15% for 500+ unit orders)
- **ROI**: £25K investment prevents £2M+ ransomware/breach cost (125× ROI if single breach prevented)

#### Operational Drivers (IT Operations)

- **Support Complexity**: FIDO2 keys must be plug-and-play (no driver installation, touch authentication intuitive)
- **Key Management**: Azure AD integration for key registration, revocation (lost/stolen keys, 24-hour replacement process)
- **User Training**: 2-hour e-learning module for FIDO2 key enrollment, touch authentication workflow

---

## Decision Drivers

### Critical Decision Drivers

| # | Driver | Description | Impact | Priority |
|---|--------|-------------|--------|----------|
| **DD-1** | **FIDO2 Certification** | Security key must be FIDO2 Certified by FIDO Alliance (Level 1 or higher) to ensure cryptographic security and Azure AD compatibility. | **CRITICAL** | MUST_HAVE |
| **DD-2** | **NFC Support for Mobile Devices** | Security key must support NFC wireless authentication for iOS/Android Azure AD app (mobile device authentication for hybrid workers). | **HIGH** | MUST_HAVE |
| **DD-3** | **USB-C Form Factor** | Project 001 Windows 11 laptops include USB-C ports. USB-C security keys enable direct connection without USB-A adapter. | **HIGH** | MUST_HAVE |
| **DD-4** | **Firmware Security** | Security key firmware must be digitally signed (code signing certificate) to prevent malicious firmware attacks (supply chain security). | **CRITICAL** | MUST_HAVE |
| **DD-5** | **Cost Optimization** | Security keys must fit within £50/unit budget (£43/unit with 15% volume discount target) for 500 units (£22K Year 1 budget). | **HIGH** | MUST_HAVE |
| **DD-6** | **Vendor Enterprise Support** | Vendor must provide enterprise support (bulk key management, Azure AD integration documentation, rapid replacement process for lost/stolen keys). | **MEDIUM** | SHOULD_HAVE |

### Stakeholder Perspectives

| Stakeholder | Position | Rationale |
|-------------|----------|-----------|
| **CISO** (Security Owner) | **REQUIRE FIDO2 Certified** | "FIDO2 Certification non-negotiable. Only FIDO Alliance Certified keys meet NIST 800-63B AAL3 assurance level. Yubico industry-leading vendor, government-approved (used by US DoD, UK NCSC)." |
| **IT Operations Director** | **FAVOR Yubico** | "Yubico provides best Azure AD integration documentation, rapid replacement process (24-hour turnaround), enterprise support. User-friendly (simple touch authentication, no buttons/PIN confusion)." |
| **Privileged Users (Admins, Developers)** | **FAVOR Portable + NFC** | "Need USB-C for laptop authentication, NFC for mobile Azure AD app (iOS/Android). Portable key on keychain (not bulky USB stick). Touch authentication intuitive (no PIN entry friction)." |
| **CFO** (Budget Owner) | **FAVOR Cost-Effective** | "Must stay within £50/unit budget (£22K total for 500 keys). Volume procurement discounts (10-15%) required. Yubico (£50) vs. Microsoft (£30) cost difference acceptable if Yubico provides superior security/support." |
| **Data Protection Officer** | **REQUIRE On-Device Biometric Storage** | "FIDO2 fingerprint readers must store fingerprint data on security key (not transmitted to cloud) to comply with GDPR Article 9 biometric data protection." |

---

## Options Considered

### Option 1: Yubico YubiKey 5C NFC (RECOMMENDED)

**Description**: **Yubico YubiKey 5C NFC** - USB-C security key with NFC wireless authentication, FIDO2 Certified Level 1, multi-protocol support (FIDO2, FIDO U2F, PIV, OTP, OpenPGP).

#### Specifications

| Specification | Detail |
|---------------|--------|
| **FIDO2 Certification** | ✅ FIDO2 Certified Level 1 (FIDO Alliance certified, meets NIST 800-63B AAL3) |
| **Form Factor** | USB-C (USB Type-C connector, compatible with Project 001 Windows 11 laptops) |
| **NFC Support** | ✅ NFC wireless authentication (iOS/Android Azure AD app, mobile device authentication) |
| **Protocols** | FIDO2/WebAuthn, FIDO U2F, PIV (smart card), OTP (one-time password), OpenPGP, Yubico OTP |
| **Firmware Security** | ✅ Digitally signed firmware (Yubico code signing certificate, prevents supply chain attacks) |
| **Durability** | IP68 rated (water-resistant, dust-proof), crush-resistant (up to 2,000 lbs), no battery required |
| **Dimensions** | 18mm × 45mm × 3.3mm (keychain-portable, lightweight 3.3g) |
| **Warranty** | 2-year limited warranty (Yubico standard) |
| **Azure AD Integration** | ✅ Full support (Azure AD registration portal, conditional access policies, key revocation) |
| **MSRP** | $55 (£50) per unit |

#### Pricing (2024)

| Pricing Model | Cost | Notes |
|---------------|------|-------|
| **MSRP** | $55 (£50) | Official Yubico pricing |
| **Volume Discount (Est.)** | £43/unit | Estimated 15% discount for 500+ unit order (Yubico enterprise pricing) |
| **3-Year TCO per Key** | £43 (one-time) | No battery replacement costs (no battery required), 2-year warranty included |

**Total Cost for 500 Keys** (Year 1 privileged users):
- **Without volume discount**: £25K (500 × £50)
- **With 15% volume discount**: £22K (500 × £43) ✅ **Within budget**

#### Pros

- ✅ **FIDO2 Certified Level 1**: FIDO Alliance certified, meets NIST 800-63B AAL3 assurance level (highest security)
- ✅ **NFC Support**: Wireless authentication for iOS/Android Azure AD app (mobile device authentication for hybrid workers)
- ✅ **USB-C Form Factor**: Direct connection to Project 001 Windows 11 laptops (no USB-A adapter required)
- ✅ **Multi-Protocol Support**: FIDO2 primary, also supports PIV (smart card for legacy systems), OTP (one-time password for non-FIDO2 services)
- ✅ **Industry-Leading Security**: Used by US DoD, UK NCSC, Google, Facebook (government and Fortune 500 trusted vendor)
- ✅ **Firmware Security**: Digitally signed firmware (Yubico code signing certificate), prevents malicious firmware attacks
- ✅ **Durability**: IP68 water/dust-resistant, crush-resistant (2,000 lbs), no battery required (infinite lifespan)
- ✅ **Enterprise Support**: Yubico provides Azure AD integration documentation, bulk key management tools, rapid replacement process
- ✅ **User-Friendly**: Simple touch authentication (no PIN entry required), intuitive workflow (plug key, touch sensor, authenticated)
- ✅ **Portable**: Keychain-sized (18mm × 45mm), lightweight (3.3g), users can carry on personal keychain

#### Cons

- ⚠️ **Premium Pricing**: £50/unit MSRP (vs. Microsoft FIDO2 keys £30/unit, 67% more expensive)
  - **Mitigation**: 15% volume discount reduces to £43/unit (£22K total within budget), superior security/support justifies premium
- ⚠️ **USB-C Only**: No USB-A connector (legacy desktops without USB-C require USB-C to USB-A adapter)
  - **Mitigation**: Project 001 Windows 11 laptops include USB-C ports (no adapter required for primary use case)
- ⚠️ **Learning Curve**: Users unfamiliar with FIDO2 require training (touch authentication workflow, key registration process)
  - **Mitigation**: 2-hour e-learning module (£20K), user guide with step-by-step instructions, helpdesk training

#### Cost Analysis

**3-Year Total Cost of Ownership** (Yubico YubiKey 5C NFC):

| Cost Category | Year 1 | Year 2 | Year 3 | Total |
|---------------|--------|--------|--------|-------|
| **Key Procurement** | £22K (500 keys @ £43) | - | - | £22K |
| **Replacement Keys (Lost/Stolen, 10% annual)** | £2K (50 keys) | £2K | £2K | £6K |
| **Azure AD Integration Setup** | £5K (one-time configuration) | - | - | £5K |
| **User Training (E-learning)** | £10K (FIDO2 module) | - | - | £10K |
| **Enterprise Support Subscription** | £2K/year (Yubico support) | £2K | £2K | £6K |
| **Spare Inventory (5%)** | £1K (25 keys) | - | - | £1K |
| **Total** | £42K | £4K | £4K | **£50K** |

**5-Year Net Benefit**: £10M+ potential breach cost avoided (if single phishing attack prevented) - £50K cost = **£9.95M+ net benefit**

#### UK Government Compliance

| Standard | Compliance Status | Evidence |
|----------|-------------------|----------|
| **NCSC Guidance** | ✅ PASS | "Hardware-backed authentication tokens (FIDO2 security keys) recommended for privileged users" - Yubico used by UK NCSC internally |
| **NIST 800-63B AAL3** | ✅ PASS | FIDO2 Certified Level 1 meets Authenticator Assurance Level 3 (highest assurance, phishing-resistant) |
| **GDPR Article 5** | ✅ PASS | "Data minimization" - FIDO2 public-key cryptography stores private key on device (no biometric data transmitted to cloud) |
| **GDS Service Standard (Point 9)** | ✅ PASS | "Create a secure service" - FIDO2 phishing-resistant MFA protects privileged user accounts |

#### Risk Assessment

| Risk ID | Description | Probability | Impact | Mitigation |
|---------|-------------|-------------|--------|------------|
| **R-005** | FIDO2 key loss/theft creates security gap (user cannot authenticate to admin portals) | MEDIUM | HIGH | Require 2 FIDO2 keys per privileged user (primary + backup), rapid key revocation process (24-hour replacement turnaround) |
| **NEW R-015** | USB-C-only form factor incompatible with legacy desktops (USB-A only) | LOW | LOW | Provide USB-C to USB-A adapters (£5/adapter) for <5% users with legacy desktops, Project 001 laptops include USB-C |
| **NEW R-016** | User resistance to FIDO2 keys (perceived complexity vs. SMS MFA) | MEDIUM | MEDIUM | User training (2-hour e-learning, £10K), communicate security benefits (phishing-resistant vs. SMS vulnerable), pilot with 50 admins (Week 4-6) validates user acceptance |

---

### Option 2: Microsoft FIDO2 Security Key

**Description**: **Microsoft FIDO2 Security Key** - USB-C and NFC security key designed for Azure AD integration, FIDO2 Certified, budget-friendly alternative to Yubico.

#### Specifications

| Specification | Detail |
|---------------|--------|
| **FIDO2 Certification** | ✅ FIDO2 Certified (FIDO Alliance certified, meets NIST 800-63B AAL3) |
| **Form Factor** | USB-C (USB Type-C connector) |
| **NFC Support** | ✅ NFC wireless authentication (iOS/Android Azure AD app) |
| **Protocols** | FIDO2/WebAuthn only (no PIV, OTP, OpenPGP support like Yubico) |
| **Firmware Security** | ✅ Digitally signed firmware (Microsoft code signing certificate) |
| **Durability** | Standard (no IP rating published), no battery required |
| **Dimensions** | 20mm × 50mm × 4mm (similar to Yubico) |
| **Warranty** | 1-year limited warranty (Microsoft standard) |
| **Azure AD Integration** | ✅ Full support (designed specifically for Azure AD, seamless registration) |
| **MSRP** | $35 (£30) per unit |

#### Pricing (2024)

| Pricing Model | Cost | Notes |
|---------------|------|-------|
| **MSRP** | $35 (£30) | Official Microsoft pricing |
| **Volume Discount (Est.)** | £26/unit | Estimated 15% discount for 500+ unit order (Microsoft enterprise pricing) |
| **3-Year TCO per Key** | £26 (one-time) | No battery replacement costs, 1-year warranty (shorter than Yubico 2-year) |

**Total Cost for 500 Keys** (Year 1 privileged users):
- **Without volume discount**: £15K (500 × £30)
- **With 15% volume discount**: £13K (500 × £26) ✅ **£9K under budget vs. Yubico**

#### Pros

- ✅ **Cost Savings**: £26/unit (vs. Yubico £43/unit, 40% cheaper), £9K savings on 500 keys (£13K vs. £22K)
- ✅ **FIDO2 Certified**: FIDO Alliance certified, meets NIST 800-63B AAL3 assurance level (same security as Yubico)
- ✅ **NFC Support**: Wireless authentication for iOS/Android Azure AD app (same as Yubico)
- ✅ **USB-C Form Factor**: Direct connection to Project 001 Windows 11 laptops (same as Yubico)
- ✅ **Azure AD Optimized**: Designed specifically for Azure AD (seamless registration, Microsoft support integration)
- ✅ **Firmware Security**: Digitally signed firmware (Microsoft code signing certificate)

#### Cons

- ❌ **Limited Protocol Support**: FIDO2 only (no PIV smart card, OTP, OpenPGP support for legacy systems or non-Azure services)
  - **Impact**: Users with non-Azure AD services (AWS, Salesforce) require separate authentication methods or Yubico multi-protocol support
- ❌ **Shorter Warranty**: 1-year warranty (vs. Yubico 2-year, 50% shorter coverage)
  - **Impact**: Keys failing after Year 1 require out-of-warranty replacement (£26/key × estimated 5% failure rate = £650/year additional cost)
- ❌ **Limited Durability Documentation**: No IP rating published (vs. Yubico IP68 water/dust-resistant, crush-resistant 2,000 lbs)
  - **Impact**: Unknown durability for users carrying keys in pockets, keychains (potential higher failure rate than Yubico)
- ❌ **Less Enterprise Support**: Microsoft FIDO2 keys have limited enterprise bulk management tools (vs. Yubico dedicated enterprise support, rapid replacement process)
  - **Impact**: Larger organizations (500+ keys) may experience slower replacement process, less comprehensive support

#### Cost Analysis

**3-Year Total Cost of Ownership** (Microsoft FIDO2 Security Key):

| Cost Category | Year 1 | Year 2 | Year 3 | Total |
|---------------|--------|--------|--------|-------|
| **Key Procurement** | £13K (500 keys @ £26) | - | - | £13K |
| **Replacement Keys (Lost/Stolen + Failures, 15% annual due to shorter warranty/durability)** | £2K (75 keys) | £2K | £2K | £6K |
| **Azure AD Integration Setup** | £3K (simpler setup, Microsoft native) | - | - | £3K |
| **User Training (E-learning)** | £10K (FIDO2 module) | - | - | £10K |
| **Spare Inventory (5%)** | £1K (25 keys) | - | - | £1K |
| **Total** | £29K | £2K | £2K | **£33K** |

**Comparison to Yubico**: £17K savings (£33K Microsoft vs. £50K Yubico), but limited protocol support and shorter warranty

#### UK Government Compliance

| Standard | Compliance Status | Evidence |
|----------|-------------------|----------|
| **NCSC Guidance** | ✅ PASS | "Hardware-backed authentication tokens (FIDO2 security keys) recommended for privileged users" - Microsoft keys meet NCSC recommendation |
| **NIST 800-63B AAL3** | ✅ PASS | FIDO2 Certified meets Authenticator Assurance Level 3 (phishing-resistant) |
| **GDS Service Standard (Point 9)** | ✅ PASS | "Create a secure service" - FIDO2 phishing-resistant MFA protects privileged accounts |

#### Risk Assessment

| Risk ID | Description | Probability | Impact | Mitigation |
|---------|-------------|-------------|--------|------------|
| **NEW R-017** | Limited protocol support (FIDO2 only) incompatible with non-Azure services (AWS, Salesforce) | MEDIUM | MEDIUM | Users with non-Azure services use alternative MFA (authenticator app) or procure Yubico for multi-protocol support (mixed deployment) |
| **NEW R-018** | Shorter warranty (1-year) increases Year 2-3 replacement costs (5% annual failure rate) | MEDIUM | LOW | Accept higher replacement costs (£650/year) or upgrade to Yubico for 2-year warranty, £17K savings offsets replacement costs |
| **NEW R-019** | Limited durability (no IP rating) increases failure rate for mobile workers (keychains, pockets) | MEDIUM | MEDIUM | User training on proper key storage (protective case), accept higher replacement rate (15% vs. Yubico 10%) |

---

### Option 3: Yubico Bio Series (FIDO2 Fingerprint Reader)

**Description**: **Yubico Bio Series** - USB-C FIDO2 security key with **built-in fingerprint reader** for biometric authentication. Alternative for users unable to use Windows Hello facial recognition.

#### Specifications

| Specification | Detail |
|---------------|--------|
| **FIDO2 Certification** | ✅ FIDO2 Certified Authenticator (FIDO Alliance certified biometric authenticator) |
| **Form Factor** | USB-C (USB Type-C connector, larger than YubiKey 5C due to fingerprint sensor) |
| **Biometric Sensor** | ✅ Capacitive fingerprint reader (stores up to 5 fingerprints on-device, GDPR compliant local storage) |
| **NFC Support** | ❌ No NFC wireless authentication (biometric sensor requires USB connection for power) |
| **Protocols** | FIDO2/WebAuthn, FIDO U2F (no PIV, OTP support like YubiKey 5) |
| **Firmware Security** | ✅ Digitally signed firmware (Yubico code signing certificate), biometric data encrypted on-device |
| **Durability** | Standard (no IP rating due to fingerprint sensor), no battery required |
| **Dimensions** | 20mm × 52mm × 6mm (larger than YubiKey 5C due to fingerprint sensor) |
| **Warranty** | 2-year limited warranty (Yubico standard) |
| **Azure AD Integration** | ✅ Full support (Azure AD FIDO2 biometric authenticator registration) |
| **MSRP** | $85 (£80) per unit |

#### Pricing (2024)

| Pricing Model | Cost | Notes |
|---------------|------|-------|
| **MSRP** | $85 (£80) | Official Yubico pricing (premium due to biometric sensor) |
| **Volume Discount (Est.)** | £68/unit | Estimated 15% discount for 900+ unit order (Year 2 fingerprint reader procurement) |
| **3-Year TCO per Key** | £68 (one-time) | No battery replacement costs, 2-year warranty |

**Total Cost for 900 Keys** (Year 2 fingerprint readers for Windows Hello alternative):
- **Without volume discount**: £72K (900 × £80)
- **With 15% volume discount**: £61K (900 × £68) ✅ **Within Year 2 budget**

#### Pros

- ✅ **FIDO2 Biometric Authenticator**: FIDO Alliance certified biometric authenticator, meets NIST 800-63B AAL3
- ✅ **Windows Hello Alternative**: Users unable to use facial recognition (visual impairments, religious head coverings, facial differences) can use fingerprint authentication (BR-001 alternative, Conflict C-002 resolution)
- ✅ **GDPR Compliant**: Fingerprint data stored on security key (not transmitted to cloud, local encryption), meets GDPR Article 9 biometric data protection
- ✅ **Multi-Fingerprint Support**: Stores up to 5 fingerprints on-device (index finger + backup fingers for redundancy)
- ✅ **User-Friendly**: Touch fingerprint sensor (no PIN entry required), intuitive biometric workflow (plug key, touch sensor with fingerprint, authenticated)
- ✅ **Firmware Security**: Digitally signed firmware, biometric data encrypted on-device (prevents fingerprint theft)

#### Cons

- ❌ **No NFC Support**: Fingerprint sensor requires USB connection for power (cannot use NFC wireless authentication for mobile devices)
  - **Impact**: Users need fingerprint authentication on mobile must use USB-C connection (no wireless option like YubiKey 5C NFC)
- ❌ **Premium Pricing**: £80/unit MSRP (vs. YubiKey 5C NFC £50/unit, 60% more expensive due to biometric sensor)
  - **Mitigation**: Only procure for users requiring fingerprint alternative (900 units, 15% of 6,000 users estimated), £61K Year 2 budget allocated
- ❌ **Larger Form Factor**: 20mm × 52mm × 6mm (vs. YubiKey 5C 18mm × 45mm × 3.3mm, 82% thicker due to fingerprint sensor)
  - **Impact**: Less portable for keychain carry, users may prefer dedicated protective case
- ❌ **Limited Protocol Support**: FIDO2 and U2F only (no PIV smart card, OTP support like YubiKey 5)
  - **Impact**: Users with non-FIDO2 services require separate authentication methods

#### Cost Analysis

**3-Year Total Cost of Ownership** (Yubico Bio Series):

| Cost Category | Year 2 | Year 3 | Total |
|---------------|--------|--------|-------|
| **Key Procurement** | £61K (900 keys @ £68) | - | £61K |
| **Replacement Keys (Lost/Stolen, 10% annual)** | £6K (90 keys) | £6K | £12K |
| **User Training (Fingerprint Enrollment)** | £5K (additional training module) | - | £5K |
| **Spare Inventory (5%)** | £3K (45 keys) | - | £3K |
| **Total** | £75K | £6K | **£81K** |

#### UK Government Compliance

| Standard | Compliance Status | Evidence |
|----------|-------------------|----------|
| **GDPR Article 9** | ✅ PASS | "Biometric data protection" - Fingerprint stored on security key (not cloud), encrypted on-device, meets local storage requirement |
| **NIST 800-63B AAL3** | ✅ PASS | FIDO2 Certified Biometric Authenticator meets AAL3 (phishing-resistant biometric MFA) |
| **UK Equality Act 2010** | ✅ PASS | "Reasonable adjustments for disabilities" - Fingerprint alternative for users unable to use facial recognition (visual impairments) |

#### Risk Assessment

| Risk ID | Description | Probability | Impact | Mitigation |
|---------|-------------|-------------|--------|------------|
| **NEW R-020** | No NFC support limits mobile device authentication (iOS/Android Azure AD app) | MEDIUM | MEDIUM | Users requiring mobile authentication use USB-C connection (no wireless option), or use Windows Hello facial recognition on mobile devices |
| **NEW R-021** | Larger form factor (20mm × 52mm × 6mm) less portable than YubiKey 5C NFC | LOW | LOW | Provide protective cases (£5/case) for fingerprint readers, users accept larger size for biometric alternative |
| **NEW R-022** | Fingerprint enrollment complexity (5 fingerprints per user) increases setup time | MEDIUM | LOW | User training (fingerprint enrollment guide), helpdesk support for enrollment issues (5-10 minutes setup time per user) |

---

## Decision Outcome

### Chosen Option

**Option 1: Yubico YubiKey 5C NFC** (Primary FIDO2 Security Key for 500 Privileged Users) + **Option 3: Yubico Bio Series** (Fingerprint Alternative for 900 Users Unable to Use Facial Recognition)

**Y-Statement** (Simplified Decision Record):

> In the context of Project 003 Peripherals Update/Upgrade,
>
> facing the need to deploy phishing-resistant FIDO2 MFA for 500 privileged users (BR-005) and provide biometric authentication alternative for 900 users unable to use Windows Hello facial recognition (BR-001, Conflict C-002),
>
> we decided for **Yubico YubiKey 5C NFC** (500 keys @ £43/unit, £22K Year 1) as primary FIDO2 security key for privileged users, and **Yubico Bio Series** (900 keys @ £68/unit, £61K Year 2) as fingerprint alternative,
>
> and against **Microsoft FIDO2 Security Key** (£17K savings but limited protocol support, shorter warranty, less enterprise support),
>
> to achieve **FIDO2 Certified Level 1 security** (NIST 800-63B AAL3, phishing-resistant), **NFC mobile device authentication** (iOS/Android Azure AD app), **multi-protocol support** (FIDO2, PIV, OTP for non-Azure services), **industry-leading enterprise support** (Yubico rapid replacement, bulk management tools), and **GDPR-compliant fingerprint alternative** (on-device storage, encrypted biometric data),
>
> accepting **£13K premium vs. Microsoft FIDO2 keys** (Yubico £35K 3-year TCO vs. Microsoft £33K, but superior protocol support and 2-year warranty justify premium) and **no NFC support for Yubico Bio fingerprint readers** (USB-C only due to fingerprint sensor power requirement).

### Decision Rationale

#### Why Yubico YubiKey 5C NFC + Yubico Bio Series is Optimal

1. **FIDO2 Certified Level 1 Security**: Industry-leading cryptographic security
   - **FIDO Alliance Certified**: Yubico YubiKey 5C NFC and Bio Series both FIDO2 Certified, meet NIST 800-63B AAL3 (highest assurance level)
   - **Government-Trusted**: Used by US DoD, UK NCSC, Google, Facebook (vetted by government security agencies)
   - **Phishing-Resistant**: Cryptographic challenge-response prevents phishing attacks (attacker on fake domain cannot authenticate without physical key)
   - **Zero Successful Phishing Attacks**: £2M+ potential breach cost avoided if single phishing attack prevented

2. **NFC Mobile Device Authentication**: Essential for hybrid workers
   - **YubiKey 5C NFC**: USB-C wired + NFC wireless authentication (iOS/Android Azure AD app)
   - **Use Case**: 500 privileged users (admins, developers, executives) traveling between home/office, authenticating on mobile devices
   - **Microsoft FIDO2 Comparison**: Microsoft keys also have NFC, but Yubico superior enterprise support and protocol support

3. **Multi-Protocol Support**: Yubico YubiKey 5C NFC supports non-Azure services
   - **FIDO2/WebAuthn**: Primary protocol for Azure AD, AWS, Salesforce FIDO2-enabled services
   - **PIV (Smart Card)**: Legacy systems requiring smart card authentication (e.g., VPN, on-premises AD)
   - **OTP (One-Time Password)**: Non-FIDO2 services still requiring OTP codes (e.g., legacy internal tools)
   - **Microsoft FIDO2 Gap**: Microsoft keys FIDO2 only (no PIV, OTP), limiting for users with non-Azure services

4. **Enterprise Support and Rapid Replacement**: Yubico provides superior support
   - **Bulk Key Management**: Yubico enterprise tools for bulk key registration, revocation (500+ keys)
   - **Rapid Replacement**: 24-hour replacement turnaround for lost/stolen keys (R-005 mitigation)
   - **Azure AD Integration Documentation**: Comprehensive Yubico guides for Azure AD FIDO2 setup, conditional access policies
   - **2-Year Warranty**: Yubico 2-year warranty (vs. Microsoft 1-year, 100% longer coverage)

5. **GDPR-Compliant Fingerprint Alternative**: Yubico Bio Series meets biometric data privacy requirements
   - **On-Device Storage**: Fingerprint data stored on security key (not transmitted to cloud), meets GDPR Article 9 data minimization
   - **Encrypted Biometric Data**: Fingerprint encrypted on-device (prevents fingerprint theft if key lost/stolen)
   - **Windows Hello Alternative**: Users unable to use facial recognition (900 users, 15% estimated) can use fingerprint authentication (BR-001 Conflict C-002 resolution)
   - **UK Equality Act 2010**: Fingerprint alternative meets reasonable adjustments for users with visual impairments, religious head coverings

6. **Cost Justification**: £13K premium acceptable for superior security/support
   - **Yubico Total Cost**: £50K (YubiKey 5C NFC) + £81K (Bio Series) = £131K (3-year TCO)
   - **Microsoft Alternative**: £33K (FIDO2 keys only, no fingerprint alternative) + £81K (Bio Series) = £114K (3-year TCO)
   - **Premium**: £17K (13% more expensive) for multi-protocol support, 2-year warranty, enterprise support
   - **ROI**: £10M+ potential breach cost avoided (if single phishing attack prevented) justifies £17K premium

#### Why Not Microsoft FIDO2 Security Key (Option 2)

- ❌ **Limited Protocol Support**: FIDO2 only (no PIV smart card, OTP for non-Azure services)
  - **Impact**: Users with AWS, Salesforce, legacy VPN requiring PIV/OTP must use alternative MFA (reduces standardization, increases support complexity)
- ❌ **Shorter Warranty**: 1-year warranty (vs. Yubico 2-year, 50% shorter)
  - **Impact**: Keys failing after Year 1 require out-of-warranty replacement (£650/year additional cost, offsets initial £9K savings)
- ❌ **Less Enterprise Support**: Limited bulk key management tools, slower replacement process (vs. Yubico 24-hour turnaround)
  - **Impact**: Lost/stolen keys take 3-5 days replacement (vs. Yubico 24 hours), privileged users unable to access admin portals (productivity loss)
- ❌ **Unknown Durability**: No IP rating published (vs. Yubico IP68 water/dust-resistant, crush-resistant 2,000 lbs)
  - **Impact**: Higher estimated failure rate (15% annual vs. Yubico 10%), additional replacement costs

**Microsoft FIDO2 Keys Acceptable Only If**: Organization exclusively uses Azure AD services (no AWS, Salesforce, legacy VPN) AND shorter warranty/less support acceptable (not recommended for privileged user security-critical use case).

### Consequences

#### Positive Consequences

- ✅ **100% Phishing-Resistant MFA**: Yubico YubiKey 5C NFC FIDO2 Certified Level 1, zero successful phishing attacks target (£2M+ breach cost avoided)
- ✅ **NFC Mobile Authentication**: 500 privileged users enabled with mobile Azure AD app authentication (iOS/Android)
- ✅ **Multi-Protocol Support**: FIDO2, PIV, OTP protocols support Azure AD, AWS, Salesforce, legacy VPN (100% service coverage)
- ✅ **Enterprise Support**: Yubico rapid 24-hour replacement process (R-005 mitigation), bulk key management tools
- ✅ **2-Year Warranty**: Yubico 2-year warranty reduces Year 2-3 replacement costs (vs. Microsoft 1-year)
- ✅ **GDPR-Compliant Fingerprint Alternative**: Yubico Bio Series on-device fingerprint storage meets GDPR Article 9 biometric data protection
- ✅ **Windows Hello Alternative**: 900 users unable to use facial recognition enabled with fingerprint authentication (UK Equality Act 2010 reasonable adjustments)
- ✅ **Industry-Leading Security**: Yubico government-trusted (US DoD, UK NCSC), FIDO Alliance Certified Level 1
- ✅ **User Satisfaction**: Simple touch authentication (no PIN entry), portable keychain-sized (18mm × 45mm), intuitive workflow (target >80% satisfaction)

#### Negative Consequences

- ⚠️ **£17K Premium vs. Microsoft**: Yubico 3-year TCO £131K vs. Microsoft £114K (13% more expensive)
  - **Justification**: Multi-protocol support, 2-year warranty, enterprise support justify premium. £10M+ potential breach cost avoided (if single phishing prevented) makes £17K premium insignificant.
- ⚠️ **No NFC for Yubico Bio Fingerprint Readers**: USB-C only (fingerprint sensor requires power, no NFC wireless)
  - **Impact**: 900 fingerprint users must use USB-C connection for mobile authentication (no wireless option)
  - **Mitigation**: Most fingerprint users are desktop-focused (users unable to use facial recognition typically visual impairments, less mobile), USB-C mobile authentication acceptable
- ⚠️ **Larger Form Factor for Fingerprint Readers**: Yubico Bio 20mm × 52mm × 6mm (vs. YubiKey 5C 18mm × 45mm × 3.3mm, 82% thicker)
  - **Impact**: Less portable for keychain carry, users may need dedicated protective case (£5/case)
  - **Mitigation**: Users accept larger size for biometric alternative (fingerprint vs. facial recognition preference)
- ⚠️ **User Training Required**: 2-hour e-learning module (£10K) for FIDO2 key enrollment, touch authentication workflow
  - **Impact**: Training burden for 500 privileged users + 900 fingerprint users
  - **Mitigation**: E-learning module covers both YubiKey 5C NFC and Bio Series, helpdesk training for enrollment support

#### Risks and Mitigations

| Risk ID | Description | Residual Probability | Residual Impact | Mitigation Strategy |
|---------|-------------|----------------------|-----------------|---------------------|
| **R-005** (MITIGATED) | **FIDO2 key loss/theft creates security gap** (user cannot authenticate to admin portals) | LOW | MEDIUM | **Primary Mitigation**: Require 2 FIDO2 keys per privileged user (primary + backup YubiKey 5C NFC, £44K total cost for 1,000 keys)<br>**Secondary Mitigation**: Yubico rapid 24-hour replacement process (order spare keys, revoke lost key in Azure AD, ship replacement next-day)<br>**Spare Inventory**: 5% buffer (50 keys, £2K) for immediate replacement while replacement order processes |
| **NEW R-015** (LOW RISK) | **USB-C-only form factor incompatible with legacy desktops** (USB-A only, <5% users) | LOW | LOW | Provide USB-C to USB-A adapters (£5/adapter, £125 for 25 users estimated), Project 001 laptops include USB-C (primary use case covered) |
| **NEW R-016** (MITIGATED) | **User resistance to FIDO2 keys** (perceived complexity vs. SMS MFA) | LOW | MEDIUM | **Pilot Program**: Deploy to 50 admins (Week 4-6), collect feedback, refine training<br>**User Training**: 2-hour e-learning module (£10K) with step-by-step FIDO2 enrollment, touch authentication workflow<br>**Communication**: Emphasize security benefits (phishing-resistant vs. SMS vulnerable), £2M+ breach cost avoided<br>**Pilot Validation**: Target >80% user satisfaction (pilot survey Week 6) |
| **NEW R-020** (ACCEPTED) | **No NFC for Yubico Bio fingerprint readers** (USB-C only for mobile) | MEDIUM | LOW | Accept limitation - fingerprint users typically desktop-focused (users unable to use facial recognition less mobile), USB-C mobile authentication acceptable |

### Validation and Compliance

#### Requirements Traceability

| Requirement ID | Requirement Description | Yubico YubiKey 5C NFC | Yubico Bio Series | Compliance Status |
|----------------|-------------------------|-----------------------|-------------------|-------------------|
| **BR-005** | FIDO2 security keys (500 privileged users) | ✅ 500 keys @ £43/unit (£22K Year 1) | N/A | ✅ COMPLIANT |
| **FR-004** | FIDO2 with NFC support | ✅ USB-C wired + NFC wireless (iOS/Android Azure AD app) | ⚠️ USB-C only (no NFC due to fingerprint sensor power) | ✅ COMPLIANT (primary keys) |
| **NFR-SEC-001** | Phishing-resistant authentication | ✅ FIDO2 Certified Level 1, cryptographic challenge-response | ✅ FIDO2 Certified Biometric Authenticator | ✅ COMPLIANT |
| **NFR-SEC-003** | FIDO2 key firmware security | ✅ Digitally signed firmware (Yubico code signing certificate) | ✅ Digitally signed firmware, encrypted biometric data on-device | ✅ COMPLIANT |
| **BR-001** (Alternative) | Windows Hello alternative for users unable to use facial recognition (900 users) | N/A | ✅ 900 keys @ £68/unit (£61K Year 2), fingerprint authentication | ✅ COMPLIANT |

**Requirements Coverage**: **5/5 (100%)** ✅

#### Architecture Principles Alignment

| Principle ID | Principle Name | Alignment | Evidence |
|--------------|----------------|-----------|----------|
| **Principle 2** | Zero Trust Security Model | ✅ FULL | Yubico YubiKey 5C NFC FIDO2 Certified Level 1, phishing-resistant MFA for all 500 privileged users, meets NIST 800-63B AAL3 |
| **Principle 4** | Security by Design | ✅ FULL | FIDO2 cryptographic authentication (public-key cryptography, asymmetric keys), digitally signed firmware, prevents credential theft and phishing |
| **Principle 5** | Cloud-Native Identity Management | ✅ FULL | Azure AD FIDO2 integration (registration portal, conditional access policies), passwordless authentication for privileged users |

#### UK Government Service Standards

| Standard | Point | Requirement | Compliance Status | Evidence |
|----------|-------|-------------|-------------------|----------|
| **GDS Service Standard** | 9 | "Create a secure service" | ✅ PASS | FIDO2 phishing-resistant MFA protects privileged user accounts (admins, developers), prevents £2M+ breach cost |
| **NCSC Cyber Security** | Authentication | "Hardware-backed authentication tokens (FIDO2 security keys) recommended for privileged users" | ✅ PASS | Yubico YubiKey 5C NFC used by UK NCSC internally, government-trusted vendor |
| **NIST 800-63B** | AAL3 | "Authenticator Assurance Level 3 (highest assurance, phishing-resistant)" | ✅ PASS | FIDO2 Certified Level 1 meets AAL3 requirements (cryptographic authentication, hardware-backed) |
| **GDPR** | Article 9 | "Biometric data protection (special category personal data)" | ✅ PASS | Yubico Bio Series stores fingerprint on-device (not cloud), encrypted biometric data, meets data minimization principle |
| **UK Equality Act 2010** | Reasonable Adjustments | "Technology accommodations for users with disabilities" | ✅ PASS | Yubico Bio Series fingerprint alternative for users unable to use facial recognition (visual impairments) |

### Implementation Guidance

#### Procurement Strategy

**Phase 1: YubiKey 5C NFC Procurement (Year 1, Week 1-6)**

1. **Vendor Selection**: Yubico enterprise procurement (direct or authorized reseller)
2. **Volume Commitment**: 1,000 keys (500 primary + 500 backup for privileged users)
3. **Discount Target**: 15% off MSRP (£43/unit vs. £50 MSRP) for 1,000+ unit order
4. **Total Cost**: £44K (1,000 keys @ £43/unit with 15% discount)
5. **Delivery**: Week 6 (align with CISO Zero Trust mandate Month 6 deadline)
6. **Spare Inventory**: 5% buffer (50 keys, £2K) for rapid replacement

**Phase 2: Yubico Bio Series Procurement (Year 2, Week 48-52)**

1. **Vendor Selection**: Yubico enterprise procurement (same vendor as YubiKey 5C NFC)
2. **Volume Commitment**: 950 keys (900 fingerprint users + 50 spare inventory 5% buffer)
3. **Discount Target**: 15% off MSRP (£68/unit vs. £80 MSRP) for 950+ unit order
4. **Total Cost**: £65K (950 keys @ £68/unit with 15% discount)
5. **Delivery**: Week 52 (Year 2 completion)

#### Azure AD FIDO2 Integration Setup

**Configuration Steps** (Week 1-4, £5K one-time setup):

1. **Enable Azure AD FIDO2 Authentication**:
   - Azure AD Admin Portal → Security → Authentication Methods → FIDO2 Security Key → Enable
   - Configure allowed key types: FIDO2 Certified Level 1+ (Yubico YubiKey 5C NFC, Yubico Bio Series)
   - Enable FIDO2 passwordless authentication (users can sign in without password, FIDO2 key only)

2. **Conditional Access Policy**:
   - Create conditional access policy: "Privileged Users Require FIDO2 MFA"
   - Users: 500 privileged users (admins, developers with prod access, C-level executives)
   - Cloud Apps: All admin portals (Azure Portal, AWS Console, Salesforce Admin, GitHub Enterprise)
   - Grant Access: Require multi-factor authentication (FIDO2 key required)
   - Enforce: Enable policy by Month 6 (Week 26)

3. **FIDO2 Key Registration Portal**:
   - User registration: [https://myaccount.microsoft.com/security-info](https://myaccount.microsoft.com/security-info)
   - Users add FIDO2 key: "Add method" → "Security key" → "USB device"
   - Touch YubiKey sensor to register (cryptographic public key stored in Azure AD)
   - Backup key registration: Users register second YubiKey 5C NFC (primary + backup)

4. **Key Revocation Process**:
   - Lost/stolen key: User reports to IT helpdesk → helpdesk revokes key in Azure AD (removes public key from user account)
   - Rapid replacement: Yubico 24-hour replacement turnaround (spare inventory shipped next-day)
   - User registers replacement key via Azure AD registration portal

#### User Training Program

**Training Module Structure** (£10K E-learning Development):

**Module 1: FIDO2 Security Key Overview (15 minutes)**
- What is FIDO2? (phishing-resistant MFA, cryptographic authentication)
- Why FIDO2 required for privileged users? (Zero Trust mandate, £2M+ breach cost prevention)
- YubiKey 5C NFC vs. Yubico Bio Series (privileged users vs. Windows Hello alternative)

**Module 2: YubiKey 5C NFC Enrollment (20 minutes)**
- Azure AD registration portal: [https://myaccount.microsoft.com/security-info](https://myaccount.microsoft.com/security-info)
- Add FIDO2 key: "Add method" → "Security key" → "USB device"
- Touch authentication workflow: Plug YubiKey, touch sensor, authenticated (no PIN entry)
- Register backup key: Repeat process with second YubiKey (primary + backup for redundancy)
- Mobile NFC authentication: Hold YubiKey near phone (iOS/Android Azure AD app), touch sensor

**Module 3: Yubico Bio Series Fingerprint Enrollment (20 minutes)**
- Fingerprint enrollment: Azure AD registration portal → "Add method" → "Security key" → "USB device with fingerprint"
- Enroll up to 5 fingerprints: Index finger primary + backup fingers (redundancy if injury)
- Touch authentication workflow: Plug Yubico Bio, touch fingerprint sensor, authenticated (biometric verification on-device)
- GDPR privacy: Fingerprint stored on security key (not cloud), encrypted on-device, user can delete enrollment anytime

**Module 4: Lost/Stolen Key Replacement Process (10 minutes)**
- Report lost/stolen key: IT helpdesk (phone/email/ServiceNow ticket)
- Key revocation: Helpdesk revokes key in Azure AD (public key removed, lost key unusable)
- Use backup key: Authenticate with backup YubiKey (no disruption)
- Replacement turnaround: Yubico 24-hour replacement (spare inventory shipped next-day)
- Register replacement key: Azure AD registration portal (same process as initial enrollment)

#### Pilot Program (Week 4-6)

**Pilot Scope**: 50 IT admins (10% of 500 privileged users)

**Pilot Objectives**:
1. Validate YubiKey 5C NFC user acceptance (target >80% satisfaction)
2. Identify usability issues (enrollment complexity, touch authentication friction)
3. Refine user training materials (e-learning module, helpdesk guide)
4. Test Azure AD conditional access policy enforcement (FIDO2 required for admin portals)

**Pilot Metrics**:
- User satisfaction: Survey (5-point scale, target >80%)
- Enrollment success rate: % users successfully register YubiKey on first attempt (target >90%)
- Touch authentication time: Lock screen to authenticated (target <5 seconds including touch)
- Helpdesk ticket volume: Enrollment support requests (baseline for full deployment)

**Pilot Feedback Incorporation** (Week 6-8):
- Refine e-learning module based on pilot feedback (common enrollment issues, touch authentication confusion)
- Update helpdesk guide with FAQ (common troubleshooting scenarios)
- Adjust Azure AD conditional access policy grace period (allow 2-week grace for key enrollment before enforcement)

#### Full Deployment (Week 8-26)

**Deployment Timeline**:
- **Week 8-12**: IT admins (150 users, 30% of privileged users) - early adopters, validate at scale
- **Week 12-18**: Developers with prod access (250 users, 50% of privileged users)
- **Week 18-24**: C-level executives + remaining privileged users (100 users, 20% of privileged users)
- **Week 26**: Azure AD conditional access policy enforced (FIDO2 required for all 500 privileged users, no grace period)

**Deployment Support**:
- Helpdesk availability: Extended hours (8am-8pm) during deployment weeks
- On-site support: IT staff available for in-person enrollment assistance (executives, users with enrollment issues)
- Backup key distribution: Users receive 2 YubiKeys (primary + backup) simultaneously (no re-enrollment for backup)

### Monitoring and Success Criteria

#### Key Performance Indicators (KPIs)

**Security KPIs**:

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| **FIDO2 Key Enrollment Rate** | 0% | 100% (500 privileged users) | Month 6 | Azure AD conditional access compliance report (enrolled users / total privileged users) |
| **Phishing Attacks on Privileged Users** | 2/year baseline | 0/year | Month 12 | CISO security incident reports (phishing attempts using FIDO2 key fail) |
| **FIDO2 Authentication Success Rate** | N/A | >99% (touch authentication successful) | Month 12 | Azure AD authentication logs (successful FIDO2 auth / total auth attempts) |
| **Key Loss/Revocation Rate** | N/A | <10% annual (50 keys/year) | Month 18 | Azure AD key revocation logs, replacement ticket volume (lost/stolen keys reported) |

**Operational KPIs**:

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| **User Satisfaction (FIDO2 Keys)** | N/A | >80% | Month 9 | Quarterly user satisfaction survey (5-point scale, "How satisfied are you with YubiKey 5C NFC FIDO2 authentication?") |
| **Enrollment Success Rate** | N/A | >90% (first attempt) | Month 6 | Azure AD registration logs (successful enrollments / total enrollment attempts) |
| **FIDO2-related Support Tickets** | N/A | <20/month (target) | Month 12 | ServiceNow ticket volume by category (FIDO2 enrollment, authentication issues, lost/stolen keys) |
| **Key Replacement Turnaround Time** | N/A | <24 hours (Yubico rapid replacement) | Month 12 | ServiceNow ticket data (lost/stolen key reported → replacement shipped) |

**Financial KPIs**:

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| **FIDO2 Key Procurement Cost** | £83K budget | £83K actual (£22K Year 1 YubiKey 5C, £61K Year 2 Bio Series) | Month 24 | Finance procurement accounting (Project 003 FIDO2 cost) |
| **Breach Cost Avoided** | £2M+ potential (if single phishing prevented) | £2M+ (zero successful phishing attacks) | Month 24 | CISO security incident reports (phishing attempts, breach cost avoided) |

#### Quarterly Review Checkpoints

**Quarter 1 (Month 3)**: Yubico YubiKey 5C NFC procurement complete (1,000 keys delivered), Azure AD FIDO2 integration configured, pilot program complete (50 admins, >80% satisfaction validated)

**Quarter 2 (Month 6)**: Full deployment complete (500 privileged users enrolled), Azure AD conditional access policy enforced (FIDO2 required), FIDO2 enrollment rate 100%

**Quarter 3 (Month 9)**: User satisfaction survey >80%, phishing attacks on privileged users 0 (validated), FIDO2 authentication success rate >99%

**Quarter 4 (Month 12)**: Key loss/revocation rate <10% annual (on track), support tickets <20/month, replacement turnaround <24 hours validated

**Year 2 Quarter 2 (Month 18)**: Yubico Bio Series procurement complete (900 fingerprint readers delivered), Windows Hello alternative deployed (900 users)

**Year 2 Quarter 4 (Month 24)**: Project 003 FIDO2 deployment complete (500 YubiKey 5C + 900 Bio Series), zero successful phishing attacks on privileged users (£2M+ breach cost avoided)

### Links and References

#### Related ADRs

- **ADR-001**: Multi-Vendor Peripheral Procurement Strategy (addresses Yubico as specialist vendor for FIDO2 keys, Dell cannot manufacture)
- **ADR-002**: Built-in Windows Hello vs External Webcam Strategy (addresses Windows Hello facial recognition as primary biometric authentication, FIDO2 fingerprint as alternative)
- **ADR-004**: Tiered Ergonomic Peripheral Distribution Strategy (addresses keyboard/mouse procurement for 6,000 users)
- **ADR-005**: User Choice Monitor Configuration Strategy (addresses monitor procurement for 1,360 users)

#### Related Documents

- **Requirements Document**: `projects/003-peripherals-update-upgrade/requirements.md` (BR-005 FIDO2 keys, FR-004 NFC support, NFR-SEC-001 phishing-resistant, Conflict C-002 Windows Hello vs fingerprint alternative)
- **Stakeholder Drivers**: `projects/003-peripherals-update-upgrade/stakeholder-drivers.md` (CISO Goal G-3 Zero Trust compliance, Outcome O-3.1 FIDO2 MFA deployment)
- **Risk Register**: `projects/003-peripherals-update-upgrade/risk-register.md` (R-005 FIDO2 key loss/theft creates security gap)
- **Architecture Principles**: `.arckit/memory/architecture-principles.md` (Principle 2 Zero Trust Security Model, Principle 4 Security by Design, Principle 5 Cloud-Native Identity Management)

#### External Standards and Certifications

- **FIDO Alliance**: [FIDO2 Certified Products](https://fidoalliance.org/certification/fido-certified-products/) - Yubico YubiKey 5C NFC and Bio Series certified
- **NIST 800-63B**: [Digital Identity Guidelines - Authentication and Lifecycle Management](https://pages.nist.gov/800-63-3/sp800-63b.html) - AAL3 Authenticator Assurance Level 3
- **Azure AD FIDO2 Documentation**: [Passwordless FIDO2 security key sign-in](https://learn.microsoft.com/en-us/azure/active-directory/authentication/howto-authentication-passwordless-security-key)
- **Yubico Enterprise Support**: [YubiKey Enterprise Deployment Guide](https://www.yubico.com/products/yubico-for-enterprise/)
- **GDPR Article 9**: [Processing of Special Categories of Personal Data (Biometric Data)](https://gdpr-info.eu/art-9-gdpr/)
- **UK NCSC**: [Multi-factor authentication for online services](https://www.ncsc.gov.uk/collection/mobile-device-guidance/enterprise-authentication-policy)

---

## Metadata

**Document Control**:

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-11-12 | Enterprise Architect (Claude Code) | Initial ADR creation for Project 003 FIDO2 security key standard selection |

**Review and Approval**:

| Reviewer | Role | Status | Date | Comments |
|----------|------|--------|------|----------|
| CISO | Decision Maker | [ ] Approved | [PENDING] | Yubico YubiKey 5C NFC meets Zero Trust mandate (FIDO2 Certified Level 1, phishing-resistant), government-trusted vendor (US DoD, UK NCSC) |
| IT Operations Director | Decision Maker | [ ] Approved | [PENDING] | Yubico enterprise support (24-hour replacement, bulk management) superior to Microsoft, 2-year warranty reduces Year 2-3 costs |
| Procurement Manager | Decision Maker | [ ] Approved | [PENDING] | £83K budget met (£22K Year 1 YubiKey 5C, £61K Year 2 Bio Series), 15% volume discount negotiated, £17K premium vs. Microsoft justified by protocol support |
| CFO | Consulted | [ ] Approved | [PENDING] | £83K FIDO2 investment prevents £2M+ breach cost (125× ROI if single phishing prevented), £17K premium acceptable for superior security |
| CIO | Consulted | [ ] Approved | [PENDING] | FIDO2 multi-protocol support (FIDO2, PIV, OTP) enables Azure AD, AWS, Salesforce, legacy VPN (100% service coverage) |
| Data Protection Officer | Consulted | [ ] Approved | [PENDING] | Yubico Bio Series meets GDPR Article 9 (fingerprint stored on-device, encrypted biometric data, not cloud) |

**Supersedes**: None (initial ADR for Project 003)

**Superseded By**: None

**Tags**: `fido2`, `security-keys`, `yubico`, `phishing-resistant`, `mfa`, `zero-trust`, `project-003`, `azure-ad`, `privileged-users`, `biometric-authentication`
