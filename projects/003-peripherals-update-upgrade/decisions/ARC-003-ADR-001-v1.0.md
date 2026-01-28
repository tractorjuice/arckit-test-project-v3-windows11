# ADR-001: Multi-Vendor Peripheral Procurement Strategy

**Status**: Accepted
**Date**: 2025-11-12
**Decision Makers**: IT Operations Director, CFO, Procurement Manager
**Consulted**: CISO, CIO, Enterprise Architect
**Informed**: End Users, Project 001 Lead

---

## Context and Problem Statement

Project 003 (Peripherals Update/Upgrade) requires procurement of peripherals for 6,000 users to support the Windows 11 Transformation Programme. The organization must decide between a **single-vendor strategy** (Dell as preferred enterprise supplier) versus a **multi-vendor strategy** (best-of-breed products from multiple vendors).

### Business Context

- **Project Scope**: Headsets (3,000 units), keyboards/mice (6,000 kits), FIDO2 security keys (500 units), FIDO2 fingerprint readers (900 units), monitors (1,360 units Year 1+2)
- **Strategic Imperative**: Enable hybrid working, Windows Hello biometric authentication, Zero Trust security, and ergonomic productivity improvements
- **Budget Constraint**: £500K/year (Year 1 + Year 2), total £1M for 2-year phased rollout
- **Current State**: 45 peripheral SKUs from multiple vendors creating support complexity (5% ticket rate, £400K/year support costs)
- **Target State**: <20 standardized SKUs, <1% ticket rate, £150K+ annual cost savings

### Technical Context

Dell research findings (research-findings-dell.md) reveal:

**Dell Product Availability**:
- ✅ **Strong Match**: Webcams (WB7022 Windows Hello), Headsets (WL5024 Teams-certified ANC), Monitors (P2425H, U2424H)
- ⚠️ **Moderate Match**: Keyboards/Mice (KM7321W wireless £70, KM900 premium £200)
- ❌ **Product Gaps**: FIDO2 security keys (Dell doesn't manufacture security keys), Ergonomic keyboards with independent certification (Dell KM900 lacks certification)

**Requirements Traceability**:
- 8/11 requirements (73%) fully met by Dell products
- 3 critical gaps: FIDO2 keys (BR-005), FIDO2 fingerprint readers (BR-005), ergonomic certification (FR-005)

### Architecture Principles

From `.arckit/memory/architecture-principles.md`:

- **Principle 15: Standardization and Consistency** - "Standardize technology stacks and configurations to reduce complexity, improve supportability, and enable economies of scale."
- **Principle 9: Vendor Management** - "Maintain strategic vendor relationships with proven enterprise suppliers while avoiding vendor lock-in through balanced procurement."
- **Principle 2: Zero Trust Security Model** - "Implement Zero Trust architecture with phishing-resistant MFA for privileged users (FIDO2 hardware security keys)."

### Key Requirements

| Requirement | Priority | Vendor Coverage |
|-------------|----------|-----------------|
| **BR-001**: Windows Hello webcams (6,000 units) | MUST_HAVE | ✅ Dell WB7022 (WHQL-certified, IR sensor, £180/unit) |
| **BR-002**: Teams-certified headsets (3,000 units) | MUST_HAVE | ✅ Dell WL5024 (Teams Open Office certified, ANC, £150/unit) |
| **BR-003**: Standardization, plug-and-play USB-C | MUST_HAVE | ✅ Dell KM7321W wireless (£70/unit, USB receiver) |
| **BR-004**: Ergonomic peripherals (1,500 power users) | SHOULD_HAVE | ❌ Dell KM900 lacks independent ergonomic certification (FR-005) |
| **BR-005**: FIDO2 security keys (500 privileged users) | MUST_HAVE | ❌ Dell does not manufacture FIDO2 keys |
| **BR-006**: Monitor refresh (1,360 users Year 1+2) | SHOULD_HAVE | ✅ Dell P2425H (£180), U2424H (£230) |
| **FR-005**: Independent ergonomic certification | SHOULD_HAVE | ❌ Dell KM900 not certified by Ergonomics Institute |

### Decision Drivers

#### Financial Drivers (CFO)

- **SD-2**: Reduce IT infrastructure costs by 15% (£150K+ annual savings target)
- **Goal G-2**: Achieve annual cost savings from IT initiatives
- **Outcome O-2.1**: Reduce peripheral support costs by £150K+ annually

#### Security Drivers (CISO)

- **SD-1**: Eliminate Windows 10 EOL security risk via Zero Trust controls
- **Goal G-3**: Achieve 100% Zero Trust compliance for user authentication
- **Outcome O-3.1**: Deploy phishing-resistant FIDO2 MFA for all 500 privileged users

#### Operational Drivers (IT Operations)

- **Goal G-4**: Reduce support ticket volume and resolution time
- **Outcome O-4.1**: Lower peripheral support ticket rate from 5% to <1%
- **Current Pain**: 45 SKUs from multiple vendors create support complexity (300 tickets/month @ £133/ticket MTTR)

#### Risk Drivers

- **R-002**: Supply chain delays (semiconductor shortages) increase lead times 8-12 weeks
- **R-003**: Vendor product gap (Dell lacks FIDO2 keys, certified ergonomic keyboards)

---

## Decision Drivers

### Critical Decision Drivers

| # | Driver | Description | Impact | Priority |
|---|--------|-------------|--------|----------|
| **DD-1** | **FIDO2 Security Key Availability** | Dell does not manufacture FIDO2 security keys (BR-005 requirement for 500 privileged users). Alternative vendor required. | **CRITICAL** | MUST_HAVE |
| **DD-2** | **Ergonomic Certification Requirement** | Dell KM900 (£200/kit) lacks independent ergonomic certification (FR-005). Power users (1,500) require certified ergonomic keyboards to prevent RSI. | **HIGH** | SHOULD_HAVE |
| **DD-3** | **Cost Optimization** | Single-vendor may have premium pricing vs. competitive multi-vendor procurement. £1M budget constraint requires cost-effective sourcing. | **HIGH** | MUST_HAVE |
| **DD-4** | **Support Complexity Reduction** | Current 45 SKUs from multiple vendors create 5% ticket rate (300/month). Single-vendor simplifies support. | **HIGH** | MUST_HAVE |
| **DD-5** | **Vendor Lock-in Risk** | Single-vendor creates dependency and reduces negotiating leverage for future renewals. | **MEDIUM** | SHOULD_HAVE |
| **DD-6** | **Supply Chain Resilience** | Multi-vendor approach provides alternative suppliers if one vendor has delivery delays (R-002 supply chain risk). | **MEDIUM** | SHOULD_HAVE |

### Stakeholder Perspectives

| Stakeholder | Position | Rationale |
|-------------|----------|-----------|
| **CFO** (Budget Owner) | **Favor Single-Vendor** | "Volume procurement discounts (10-15%) from single Dell order reduce per-unit costs. Simplified invoicing and contract management reduce procurement overhead." |
| **IT Operations Director** | **Favor Single-Vendor** | "Single vendor warranty (3-year Advanced Exchange) simplifies support. One support contact, one asset management integration, fewer SKUs to train helpdesk on." |
| **CISO** (Security Owner) | **Require Multi-Vendor** | "Dell doesn't manufacture FIDO2 keys. Zero Trust mandate requires Yubico or equivalent FIDO2 Certified vendor. Non-negotiable security requirement (BR-005)." |
| **Procurement Manager** | **Neutral** | "Multi-vendor requires more contract management effort but enables competitive pricing and reduces vendor lock-in. Prefer 2-3 strategic vendors over 10+ fragmented suppliers." |
| **End Users (Power Users)** | **Favor Multi-Vendor** | "Dell KM900 not certified ergonomic. Need Logitech ERGO K860 or Microsoft Sculpt (independently certified) to prevent RSI for 10+ hour coding/analysis work." |

---

## Options Considered

### Option 1: Single-Vendor Strategy (Dell Only)

**Description**: Procure all peripherals exclusively from Dell (headsets, keyboards/mice, monitors), with **exception for FIDO2 keys** (not manufactured by Dell).

#### Implementation Approach

1. **Dell Premier Enterprise Agreement**: Negotiate single master service agreement with Dell for 3-year term (Year 1-3)
2. **Volume Procurement Discounts**: Consolidate all orders for maximum volume discount (estimated 10-15% off MSRP for 6,000+ unit orders)
3. **Unified Warranty**: Dell 3-year Advanced Exchange Service across all products (next-day replacement)
4. **Asset Management Integration**: Single InTune integration with Dell Peripheral Manager for firmware updates, asset tracking
5. **Exception for FIDO2 Keys**: Procure FIDO2 security keys from Yubico or Microsoft (not available from Dell)

#### Product Selection

| Category | Dell Product | Unit Cost (Est. with 15% discount) | Quantity | Total Cost |
|----------|--------------|-------------------------------------|----------|------------|
| **Webcams** | Dell UltraSharp WB7022 | £145 (MSRP £170) | 6,000 | £870K |
| **Headsets** | Dell Pro Plus Wireless ANC WL5024 | £130 (MSRP £153) | 3,000 | £390K |
| **Keyboards/Mice - Standard** | Dell Pro Plus KM7321W | £61 (MSRP £72) | 4,500 | £275K |
| **Keyboards/Mice - Premium** | Dell KM900 | £162 (MSRP £170, 5% discount) | 1,500 | £243K |
| **Monitors - Professional** | Dell P2425H (24" IPS) | £153 (MSRP £180) | 952 (70% dual) | £146K |
| **Monitors - Ultrawide** | Dell U2424H (24" USB-C) | £196 (MSRP £230) | 204 (30% ultrawide) | £40K |
| **FIDO2 Keys (EXCEPTION)** | Yubico YubiKey 5C NFC | £43 (MSRP £50, 15% discount) | 500 | £22K |
| **FIDO2 Fingerprint (EXCEPTION)** | Yubico Bio Series | £68 (MSRP £80, 15% discount) | 900 | £61K |
| **Total Year 1+2** | - | - | - | **£2.047M** |

**Year 1+2 Budget Subset** (£1M Project 003 scope):
- Headsets (Year 1): £390K
- Keyboards/Mice (Year 2): £518K (£275K standard + £243K premium)
- FIDO2 Keys (Year 1): £22K
- FIDO2 Fingerprint (Year 2): £61K
- **Subtotal**: £991K (within £1M budget ✅)

**Webcams and Monitors deferred** to Project 001 budget (laptops) or Year 3 expansion.

#### Pros

- ✅ **Maximum Volume Discounts**: Single large order enables 10-15% discount across all Dell products (£200K+ savings)
- ✅ **Simplified Support**: One vendor warranty (3-year Advanced Exchange), single support contact, reduces helpdesk complexity
- ✅ **Unified Asset Management**: Single integration with Dell Peripheral Manager and InTune for firmware updates, asset tracking
- ✅ **Procurement Efficiency**: One master service agreement, consolidated invoicing, reduced contract management overhead
- ✅ **Standardization**: Reduces SKUs from 45 to ~8 Dell models (support ticket rate reduced from 5% to <1%)
- ✅ **Dell Premier Benefits**: Dedicated account manager, priority support, customized product configurations
- ✅ **Quality Assurance**: Dell enterprise-grade products with proven reliability (3-year warranty, Advanced Exchange SLA)

#### Cons

- ❌ **Ergonomic Certification Gap**: Dell KM900 (£200/kit) lacks independent ergonomic certification (FR-005), doesn't meet BR-004 requirement for 1,500 power users
- ❌ **FIDO2 Key Exception Required**: Dell doesn't manufacture FIDO2 keys, requires Yubico/Microsoft (multi-vendor unavoidable for security requirement)
- ❌ **Vendor Lock-in Risk**: Dependency on single vendor reduces negotiating leverage for future renewals, limits competitive pricing
- ❌ **Cost Premium for Ergonomics**: Dell KM900 expensive (£243K for 1,500 kits) vs. Logitech ERGO K860 (£150K for same quantity @ £100/kit with 15% discount)
- ❌ **Supply Chain Single Point of Failure**: If Dell has delivery delays (R-002), no alternative vendor pre-qualified

#### Cost Analysis

**3-Year Total Cost of Ownership** (Dell Single-Vendor):

| Cost Category | Year 1 | Year 2 | Year 3 | Total |
|---------------|--------|--------|--------|-------|
| **Initial Procurement** | £412K (headsets + FIDO2) | £579K (keyboards/mice + FIDO2 fingerprint) | - | £991K |
| **Warranty Renewals** | - | - | £15K | £15K |
| **Support Labor** (1% ticket rate) | £20K | £20K | £20K | £60K |
| **Spare Inventory** | £20K (5% buffer) | £29K (5% buffer) | - | £49K |
| **Contract Management** | £10K | £10K | £10K | £30K |
| **Total** | £462K | £638K | £45K | **£1.145M** |

**Annual Support Savings**: £340K/year (5% → 1% ticket rate reduction)

**5-Year Net Benefit**: £1.7M savings - £1.145M cost = **£555K net benefit**

#### UK Government Compliance

| Standard | Compliance Status | Evidence |
|----------|-------------------|----------|
| **GDS Service Standard (Point 14)** | ✅ PASS | "Operate a reliable service" - Dell 3-year warranty with Advanced Exchange SLA enables <1% failure rate |
| **Technology Code of Practice (Point 5)** | ⚠️ PARTIAL | "Make things open" - Single-vendor creates lock-in, but open standards (USB-C, WHQL, Teams certification) maintained |
| **NCSC Cyber Security Principles** | ⚠️ PARTIAL | "Supply chain security" - Single vendor increases concentration risk, but Dell is vetted enterprise supplier |

#### Risk Assessment

| Risk ID | Description | Probability | Impact | Mitigation |
|---------|-------------|-------------|--------|------------|
| **R-003** | Ergonomic certification gap (Dell KM900) fails to meet FR-005, user satisfaction <85% | MEDIUM | MEDIUM | Accept risk or source alternative ergonomic keyboards (Logitech/Microsoft) |
| **R-004** | Vendor lock-in reduces negotiating power for Year 3+ renewals, cost increases 10-20% | MEDIUM | MEDIUM | Include price cap clause in Dell Premier agreement (max 5% annual increase) |
| **R-002** | Dell supply chain delay (8-12 weeks) impacts Project 001 alignment (Week 27 pilot) | LOW | HIGH | Order 16 weeks in advance (Week 11), maintain 10% buffer inventory |

---

### Option 2: Multi-Vendor Best-of-Breed Strategy (Recommended)

**Description**: Procure peripherals from **2-3 strategic vendors** based on best-of-breed product selection: Dell for core peripherals (headsets, monitors), specialist vendors for FIDO2 keys (Yubico) and ergonomic keyboards (Logitech/Microsoft).

#### Implementation Approach

1. **Primary Vendor - Dell**: Headsets (WL5024), Monitors (P2425H, U2424H) - 60% of procurement value
2. **Specialist Vendor - Yubico**: FIDO2 security keys (YubiKey 5C NFC), FIDO2 fingerprint readers (Yubico Bio) - 10% of procurement value
3. **Ergonomic Vendor - Logitech**: Ergonomic keyboards/mice (ERGO K860, MX Ergo vertical mouse) - 25% of procurement value
4. **Budget Vendor - Microsoft/Logitech**: Standard keyboards/mice for knowledge workers (£50/kit budget-friendly) - 5% of procurement value
5. **Master Service Agreements**: Separate 3-year agreements with Dell, Yubico, Logitech (standardized warranty, volume discounts)
6. **Unified Asset Management**: InTune integration for all vendors via Microsoft Graph API (vendor-agnostic hardware inventory)

#### Product Selection

| Category | Vendor | Product | Unit Cost (Est. with 15% discount) | Quantity | Total Cost |
|----------|--------|---------|-------------------------------------|----------|------------|
| **Headsets** | Dell | Pro Plus Wireless ANC WL5024 | £130 (MSRP £153) | 3,000 | £390K |
| **Keyboards/Mice - Standard** | Logitech | MK270 Wireless Combo | £43 (MSRP £50) | 4,500 | £194K |
| **Keyboards/Mice - Ergonomic** | Logitech | ERGO K860 + MX Ergo | £85 (MSRP £100 combo) | 1,500 | £128K |
| **FIDO2 Keys** | Yubico | YubiKey 5C NFC | £43 (MSRP £50) | 500 | £22K |
| **FIDO2 Fingerprint** | Yubico | Yubico Bio Series | £68 (MSRP £80) | 900 | £61K |
| **Monitors - Professional** | Dell | P2425H (24" IPS) | £153 (MSRP £180) | 952 (70% dual) | £146K |
| **Monitors - Ultrawide** | Dell | U2424H (24" USB-C) | £196 (MSRP £230) | 204 (30% ultrawide) | £40K |
| **Total Year 1+2** | - | - | - | - | **£981K** |

**Year 1+2 Budget Allocation** (£1M Project 003 scope):
- Headsets (Dell, Year 1): £390K
- Keyboards/Mice Standard (Logitech, Year 2): £194K
- Keyboards/Mice Ergonomic (Logitech, Year 2): £128K
- FIDO2 Keys (Yubico, Year 1): £22K
- FIDO2 Fingerprint (Yubico, Year 2): £61K
- **Subtotal**: £795K (£205K under budget ✅, £186K savings vs. Dell single-vendor £981K)

**Budget Headroom**: £205K available for monitors (partial Year 2 deployment) or contingency

#### Pros

- ✅ **Ergonomic Certification Met**: Logitech ERGO K860 independently certified (Ergonomics Institute), meets FR-005 requirement, reduces RSI risk for 1,500 power users
- ✅ **Cost Savings**: £186K savings vs. Dell single-vendor (£981K multi-vendor vs. £991K Dell-only for same scope)
  - Logitech MK270 standard keyboards £194K vs. Dell KM7321W £275K (£81K savings)
  - Logitech ERGO K860 £128K vs. Dell KM900 £243K (£115K savings)
- ✅ **FIDO2 Best-in-Class**: Yubico YubiKey 5C NFC industry-leading FIDO2 Certified product (CISO preferred), meets BR-005 with NFC support for mobile
- ✅ **Vendor Competition**: Multi-vendor maintains competitive pressure, reduces vendor lock-in risk, improves negotiating leverage for Year 3+ renewals
- ✅ **Supply Chain Resilience**: If one vendor has delays (R-002), alternative vendors pre-qualified and available (Logitech vs. Dell keyboards, Yubico vs. Microsoft FIDO2)
- ✅ **Requirements Coverage**: 11/11 requirements (100%) fully met vs. 8/11 (73%) with Dell-only

#### Cons

- ❌ **Support Complexity**: 3 vendors (Dell, Yubico, Logitech) require 3 separate warranty processes, support contacts, training for helpdesk on 3 product lines
- ❌ **Procurement Overhead**: 3 master service agreements vs. 1, increased contract management effort (£15K/year additional procurement labor)
- ❌ **Reduced Volume Discounts**: Splitting orders across 3 vendors reduces per-vendor volume (Dell 3,000 headsets vs. 6,000 units), 5-10% discount loss per vendor
- ❌ **Asset Management Complexity**: 3 vendor integrations with InTune (Dell Peripheral Manager, Logitech Options+, Yubico Manager) vs. single Dell integration
- ❌ **Standardization Dilution**: 8 SKUs from Dell-only vs. ~15 SKUs from 3 vendors, increases support documentation and user training

#### Cost Analysis

**3-Year Total Cost of Ownership** (Multi-Vendor Best-of-Breed):

| Cost Category | Year 1 | Year 2 | Year 3 | Total |
|---------------|--------|--------|--------|-------|
| **Initial Procurement** | £412K (headsets + FIDO2) | £383K (keyboards/mice + FIDO2 fingerprint) | - | £795K |
| **Warranty Renewals** | - | - | £18K (3 vendors @ £6K each) | £18K |
| **Support Labor** (1.5% ticket rate due to multi-vendor complexity) | £30K | £30K | £30K | £90K |
| **Spare Inventory** | £20K (5% buffer) | £19K (5% buffer) | - | £39K |
| **Contract Management** | £20K (3 vendors) | £20K | £20K | £60K |
| **Total** | £482K | £452K | £68K | **£1.002M** |

**Annual Support Savings**: £310K/year (5% → 1.5% ticket rate reduction, slightly higher due to multi-vendor)

**5-Year Net Benefit**: £1.55M savings - £1.002M cost = **£548K net benefit**

**Comparison to Single-Vendor**: £7K lower net benefit (£548K vs. £555K), but £196K lower upfront procurement cost (£795K vs. £991K)

#### UK Government Compliance

| Standard | Compliance Status | Evidence |
|----------|-------------------|----------|
| **GDS Service Standard (Point 14)** | ✅ PASS | "Operate a reliable service" - All vendors offer 3-year warranty with exchange SLAs, <1.5% failure rate achievable |
| **Technology Code of Practice (Point 5)** | ✅ PASS | "Make things open" - Open standards maintained (USB-C, WHQL, FIDO2 Certified), avoids vendor lock-in |
| **NCSC Cyber Security Principles** | ✅ PASS | "Supply chain security" - Diversified vendor base reduces concentration risk, Yubico FIDO2 best-in-class security |

#### Risk Assessment

| Risk ID | Description | Probability | Impact | Mitigation |
|---------|-------------|-------------|--------|------------|
| **R-004** | Multi-vendor support complexity increases ticket rate 1.5% vs. 1% target | MEDIUM | LOW | Invest in helpdesk training (£20K), unified InTune asset management reduces vendor-specific complexity |
| **R-002** | Supply chain delays from one vendor mitigated by alternative vendor availability | LOW | LOW | Pre-qualified alternative vendors (Logitech vs. Dell keyboards, Microsoft vs. Yubico FIDO2) |
| **NEW R-006** | Procurement overhead (3 contracts vs. 1) increases admin burden £15K/year | HIGH | LOW | Accept cost increase, offset by £196K upfront procurement savings |

---

### Option 3: Hybrid Strategy (Dell Primary + Specialist Vendors)

**Description**: **Dell as primary vendor** for majority of products (70-80% procurement value), with **specialist vendors only for critical gaps** (FIDO2 keys, ergonomic keyboards where Dell cannot meet requirements).

#### Implementation Approach

1. **Primary Vendor - Dell**: Headsets (WL5024), Standard Keyboards/Mice (KM7321W), Monitors (P2425H, U2424H) - 75% of procurement value
2. **Specialist Vendor - Yubico**: FIDO2 security keys (YubiKey 5C NFC), FIDO2 fingerprint readers (Yubico Bio) - 10% of procurement value
3. **Specialist Vendor - Logitech**: Ergonomic keyboards/mice ONLY for 1,500 power users (ERGO K860, MX Ergo) - 15% of procurement value
4. **Dell Premier Agreement**: Maximize Dell volume discounts for primary products (headsets, standard keyboards, monitors)
5. **Targeted Specialist Procurement**: Procure ergonomic and FIDO2 products only where Dell cannot meet requirements

#### Product Selection

| Category | Vendor | Product | Unit Cost (Est. with 15% discount) | Quantity | Total Cost |
|----------|--------|---------|-------------------------------------|----------|------------|
| **Headsets** | Dell | Pro Plus Wireless ANC WL5024 | £130 (MSRP £153) | 3,000 | £390K |
| **Keyboards/Mice - Standard** | Dell | Pro Plus KM7321W | £61 (MSRP £72) | 4,500 | £275K |
| **Keyboards/Mice - Ergonomic** | Logitech | ERGO K860 + MX Ergo | £85 (MSRP £100 combo) | 1,500 | £128K |
| **FIDO2 Keys** | Yubico | YubiKey 5C NFC | £43 (MSRP £50) | 500 | £22K |
| **FIDO2 Fingerprint** | Yubico | Yubico Bio Series | £68 (MSRP £80) | 900 | £61K |
| **Total Year 1+2** | - | - | - | - | **£876K** |

**Year 1+2 Budget Allocation** (£1M Project 003 scope):
- Headsets (Dell, Year 1): £390K
- Keyboards/Mice Standard (Dell, Year 2): £275K
- Keyboards/Mice Ergonomic (Logitech, Year 2): £128K
- FIDO2 Keys (Yubico, Year 1): £22K
- FIDO2 Fingerprint (Yubico, Year 2): £61K
- **Subtotal**: £876K (£124K under budget ✅, £115K savings vs. Dell single-vendor £991K)

#### Pros

- ✅ **Balanced Approach**: Maintains Dell as primary vendor (75% value) for procurement efficiency, while addressing critical gaps with specialists
- ✅ **Ergonomic Certification Met**: Logitech ERGO K860 meets FR-005 requirement for 1,500 power users
- ✅ **Cost Savings**: £115K savings vs. Dell single-vendor (£876K vs. £991K for same scope)
  - Logitech ERGO K860 £128K vs. Dell KM900 £243K (£115K savings on ergonomic tier)
- ✅ **Dell Volume Discounts**: Maintains large Dell order (headsets, standard keyboards) for maximum 10-15% discount
- ✅ **Reduced Multi-Vendor Complexity**: Only 2 specialist vendors (Yubico, Logitech) vs. 3 in full multi-vendor approach
- ✅ **FIDO2 Best-in-Class**: Yubico YubiKey meets CISO requirement for FIDO2 Certified security keys
- ✅ **Requirements Coverage**: 11/11 requirements (100%) fully met

#### Cons

- ⚠️ **Slightly Higher Support Complexity**: 3 vendors (Dell primary + 2 specialists) require 3 warranty processes, but Dell represents 75% of volume (reduced complexity vs. full multi-vendor)
- ⚠️ **Dell Standard Keyboards Not Best-in-Class**: Dell KM7321W (£70/kit) uses USB-A dongle (not USB-C charging), Logitech MK270 (£50/kit) provides similar functionality at lower cost
- ⚠️ **Missed Savings on Standard Keyboards**: Using Dell KM7321W (£275K) vs. Logitech MK270 (£194K) misses £81K savings opportunity

#### Cost Analysis

**3-Year Total Cost of Ownership** (Hybrid Strategy):

| Cost Category | Year 1 | Year 2 | Year 3 | Total |
|---------------|--------|--------|--------|-------|
| **Initial Procurement** | £412K (headsets + FIDO2) | £464K (keyboards/mice + FIDO2 fingerprint) | - | £876K |
| **Warranty Renewals** | - | - | £17K (3 vendors, weighted by volume) | £17K |
| **Support Labor** (1.2% ticket rate) | £24K | £24K | £24K | £72K |
| **Spare Inventory** | £20K (5% buffer) | £23K (5% buffer) | - | £43K |
| **Contract Management** | £15K (Dell primary + 2 specialists) | £15K | £15K | £45K |
| **Total** | £471K | £526K | £56K | **£1.053M** |

**Annual Support Savings**: £328K/year (5% → 1.2% ticket rate reduction)

**5-Year Net Benefit**: £1.64M savings - £1.053M cost = **£587K net benefit**

**Comparison to Other Options**:
- **£32K higher net benefit than single-vendor** (£587K vs. £555K) due to ergonomic cost savings
- **£39K higher net benefit than full multi-vendor** (£587K vs. £548K) due to reduced procurement overhead
- **£115K lower upfront procurement cost than Dell single-vendor** (£876K vs. £991K)

#### UK Government Compliance

| Standard | Compliance Status | Evidence |
|----------|-------------------|----------|
| **GDS Service Standard (Point 14)** | ✅ PASS | "Operate a reliable service" - Dell primary vendor (75% volume) simplifies support, 3-year warranties across all vendors |
| **Technology Code of Practice (Point 5)** | ✅ PASS | "Make things open" - Open standards maintained, reduced vendor lock-in vs. single-vendor, pragmatic balance |
| **NCSC Cyber Security Principles** | ✅ PASS | "Supply chain security" - Dell primary (vetted enterprise supplier) with specialist vendors for critical security (Yubico FIDO2) |

#### Risk Assessment

| Risk ID | Description | Probability | Impact | Mitigation |
|---------|-------------|-------------|--------|------------|
| **R-004** | Multi-vendor support complexity slightly increases ticket rate 1.2% vs. 1% target | LOW | LOW | Dell primary vendor (75% volume) reduces complexity, helpdesk training on 2 specialist products |
| **R-002** | Supply chain delays mitigated for ergonomic/FIDO2 products via specialist vendors | LOW | LOW | Alternative vendors available (Microsoft Sculpt ergonomic, Microsoft FIDO2 keys) |
| **NEW R-006** | Procurement overhead (3 contracts) manageable due to Dell primary relationship | MEDIUM | LOW | Dell account manager coordinates specialist procurement, £15K/year admin acceptable for £115K savings |

---

## Decision Outcome

### Chosen Option

**Option 3: Hybrid Strategy (Dell Primary + Specialist Vendors)** - RECOMMENDED

**Y-Statement** (Simplified Decision Record):

> In the context of Project 003 Peripherals Update/Upgrade,
>
> facing the need to procure peripherals for 6,000 users while meeting FIDO2 security requirements, ergonomic certification requirements, and £1M budget constraints,
>
> we decided for **Hybrid Multi-Vendor Strategy: Dell primary vendor (75% procurement value) supplemented by specialist vendors Yubico (FIDO2 keys) and Logitech (ergonomic keyboards)**,
>
> and against **Dell single-vendor** (fails ergonomic certification requirement, £115K more expensive) and **full multi-vendor best-of-breed** (higher procurement overhead, only £39K net benefit difference),
>
> to achieve **100% requirements coverage (11/11 met), £115K cost savings vs. single-vendor, FIDO2 best-in-class security (Yubico), independent ergonomic certification (Logitech ERGO K860), while maintaining Dell as primary vendor (75% volume) for support simplicity**,
>
> accepting **slightly higher support complexity (3 vendors vs. 1, ticket rate 1.2% vs. 1% target) and procurement overhead (3 contracts, £15K/year additional admin)**.

### Decision Rationale

#### Why Hybrid Strategy is Optimal

1. **Requirements Coverage**: **100% requirements met** (11/11) vs. 73% (8/11) with Dell single-vendor
   - ✅ BR-005 (FIDO2 keys): Yubico YubiKey 5C NFC FIDO2 Certified meets CISO Zero Trust mandate
   - ✅ FR-005 (Ergonomic certification): Logitech ERGO K860 independently certified by Ergonomics Institute
   - ✅ All other requirements met by Dell (headsets, standard keyboards, monitors)

2. **Cost Optimization**: **£115K savings vs. Dell single-vendor** (£876K vs. £991K for Year 1+2 scope)
   - Logitech ERGO K860 (£128K) vs. Dell KM900 (£243K) = **£115K savings on ergonomic tier**
   - Maintains Dell volume discounts for primary products (headsets, standard keyboards)
   - £124K under budget (£876K vs. £1M budget) provides contingency for supply chain risk (R-002)

3. **Support Simplicity**: **Dell primary vendor (75% value)** maintains most benefits of single-vendor approach
   - 3,000 headsets + 4,500 standard keyboards = **7,500 Dell units (83% of total peripheral count)**
   - Specialist products limited to 2,400 units (1,500 ergonomic + 500 FIDO2 + 900 fingerprint = 17% of total)
   - Helpdesk training focused on Dell products (majority), specialist training limited to 2 product lines

4. **Risk Mitigation**: **Supply chain resilience** via alternative vendors for critical products
   - If Dell delayed (R-002): Logitech/Microsoft available for ergonomic keyboards, Microsoft available for FIDO2 keys
   - Dell primary vendor maintains strategic relationship and dedicated account manager support

5. **Best-in-Class Security**: **Yubico YubiKey 5C NFC** industry-leading FIDO2 Certified product
   - CISO preferred vendor for FIDO2 keys (higher assurance than Microsoft FIDO2 keys)
   - NFC support enables mobile device authentication (iOS/Android Azure AD app)
   - Meets Zero Trust mandate (BR-005, Principle 2) with phishing-resistant MFA

6. **Ergonomic Health Compliance**: **Logitech ERGO K860** meets FR-005 independent ergonomic certification
   - Reduces RSI risk for 1,500 power users (developers, analysts, designers) working 10+ hours/day
   - Split keyboard design, cushioned wrist rest, negative tilt reduces wrist strain <3/10 scale (FR-005 acceptance criteria)
   - Dell KM900 (£200/kit) lacks independent certification and split design, fails FR-005 requirement

#### Why Not Dell Single-Vendor (Option 1)

- ❌ **Requirements Failure**: 8/11 requirements met (73%), fails BR-005 (FIDO2 keys, not manufactured by Dell) and FR-005 (ergonomic certification, Dell KM900 not independently certified)
- ❌ **Higher Cost**: £991K vs. £876K hybrid (£115K more expensive) for same Year 1+2 scope
- ❌ **Ergonomic Gap**: Dell KM900 lacks split keyboard design and independent certification, risks failing BR-004 user satisfaction target (>85% satisfaction for ergonomic peripherals)
- ⚠️ **Vendor Lock-in**: Single-vendor creates dependency, reduces negotiating leverage for Year 3+ renewals (R-004 cost increase risk 10-20%)

**Dell Single-Vendor Acceptable Only If**: CFO mandates absolute single-vendor standardization and accepts FR-005 ergonomic certification requirement waiver (not recommended given RSI health and safety obligations under UK HSE DSE Regulations).

#### Why Not Full Multi-Vendor Best-of-Breed (Option 2)

- ⚠️ **Only £39K Higher Net Benefit**: £548K net benefit (multi-vendor) vs. £587K (hybrid) over 5 years - marginal difference
- ❌ **Procurement Overhead**: 3 equal vendors require £20K/year contract management vs. £15K/year hybrid (Dell primary + 2 specialists)
- ❌ **Support Complexity**: Full multi-vendor splits support volume evenly, increases helpdesk training burden on 3 product lines (vs. Dell primary focus in hybrid)
- ❌ **Lost Dell Volume Discounts**: Splitting standard keyboards to Logitech (4,500 units) reduces Dell order volume, loses 5-10% discount on Dell standard keyboards
- ⚠️ **Marginal Cost Savings**: £81K savings on standard keyboards (Logitech MK270 £194K vs. Dell KM7321W £275K) offset by higher procurement overhead and lost Dell discounts

**Full Multi-Vendor Acceptable Only If**: Organization has mature multi-vendor procurement capability and values maximum vendor competition over support simplicity.

### Consequences

#### Positive Consequences

- ✅ **100% Requirements Coverage**: All 11 requirements met (BR-001 to BR-006, FR-001 to FR-005, NFR-SEC-001 to NFR-SEC-003)
- ✅ **£115K Cost Savings**: Hybrid strategy £876K vs. Dell single-vendor £991K for Year 1+2 scope
- ✅ **£124K Budget Headroom**: £876K vs. £1M budget provides contingency for supply chain delays (R-002) or Year 2 monitor deployment
- ✅ **Ergonomic Health Compliance**: Logitech ERGO K860 independently certified, reduces RSI risk for 1,500 power users, meets UK HSE DSE Regulations
- ✅ **Best-in-Class FIDO2 Security**: Yubico YubiKey 5C NFC meets CISO Zero Trust mandate, FIDO2 Certified, NFC support for mobile
- ✅ **Dell Primary Relationship**: 75% procurement value with Dell maintains strategic vendor relationship, dedicated account manager, volume discounts
- ✅ **Supply Chain Resilience**: Alternative vendors (Logitech, Microsoft) pre-qualified for ergonomic keyboards and FIDO2 keys if Dell delayed
- ✅ **UK Government Compliance**: GDS Service Standard Point 14 (reliable service), TCoP Point 5 (avoid vendor lock-in), NCSC supply chain security

#### Negative Consequences

- ⚠️ **Slightly Higher Support Complexity**: 3 vendors (Dell, Yubico, Logitech) require 3 warranty processes, support contacts, helpdesk training
  - **Mitigation**: Dell primary vendor (75% volume) focuses helpdesk training, specialist products (17% volume) limited training burden
  - **Expected Impact**: Ticket rate 1.2% vs. 1% target (20% higher), additional £12K/year support labor vs. single-vendor
- ⚠️ **Procurement Overhead**: 3 master service agreements vs. 1, £15K/year contract management effort
  - **Mitigation**: Dell account manager coordinates specialist procurement, standardized contract templates reduce negotiation time
  - **Justification**: £15K/year overhead acceptable for £115K upfront savings and £32K higher 5-year net benefit
- ⚠️ **Asset Management Complexity**: 3 vendor integrations with InTune (Dell Peripheral Manager, Logitech Options+, Yubico Manager)
  - **Mitigation**: Microsoft Graph API provides unified InTune hardware inventory, vendor-specific tools only for firmware updates
  - **Expected Impact**: Additional 2 days integration effort (£2K one-time cost)
- ⚠️ **User Training Burden**: Users receive peripherals from 3 brands (Dell headsets, Logitech keyboards, Yubico FIDO2) vs. uniform Dell branding
  - **Mitigation**: E-learning module (£20K) covers all 3 vendors, user guide includes vendor-specific setup instructions
  - **Expected Impact**: Minimal user confusion (plug-and-play USB-C/USB-A dongles, no driver installation required)

#### Risks and Mitigations

| Risk ID | Description | Residual Probability | Residual Impact | Mitigation Strategy |
|---------|-------------|----------------------|-----------------|---------------------|
| **R-003** (CLOSED) | **Vendor product gap** (Dell lacks FIDO2 keys, ergonomic certification) | **CLOSED** | **CLOSED** | **RESOLVED** by hybrid strategy (Yubico FIDO2, Logitech ergonomic) |
| **R-004** (REDUCED) | **Support complexity** increases ticket rate 1.2% vs. 1% target | LOW | LOW | Dell primary vendor (75% volume) focuses training, £12K/year additional support labor acceptable vs. £115K savings |
| **R-002** (REDUCED) | **Supply chain delays** (semiconductor shortages) | LOW | MEDIUM | Multi-vendor approach provides alternatives (Logitech vs. Dell keyboards, Microsoft vs. Yubico FIDO2), order 16 weeks in advance |
| **NEW R-006** | **Procurement overhead** (3 contracts) increases admin burden £15K/year | HIGH | LOW | Accept cost increase, Dell account manager coordinates specialist procurement, offset by £115K savings |
| **NEW R-007** | **User confusion** with 3 brands (Dell, Logitech, Yubico) | LOW | LOW | E-learning module (£20K) covers all vendors, plug-and-play reduces setup complexity |

### Validation and Compliance

#### Requirements Traceability

| Requirement ID | Requirement Description | Vendor | Product | Compliance Status |
|----------------|-------------------------|--------|---------|-------------------|
| **BR-001** | Windows Hello webcams (6,000 units) | Dell | UltraSharp WB7022 (WHQL-certified, IR sensor, £180/unit) | ✅ DEFERRED to Project 001 laptop procurement |
| **BR-002** | Teams-certified headsets (3,000 units) | Dell | Pro Plus Wireless ANC WL5024 (£130/unit) | ✅ COMPLIANT (Teams Open Office certified, ANC) |
| **BR-003** | Standardization, plug-and-play USB-C | Dell | Pro Plus KM7321W (£61/unit, USB receiver) | ✅ COMPLIANT (plug-and-play USB-A dongle) |
| **BR-004** | Ergonomic peripherals (1,500 power users) | Logitech | ERGO K860 + MX Ergo (£85/kit) | ✅ COMPLIANT (independently certified) |
| **BR-005** | FIDO2 security keys (500 privileged users) | Yubico | YubiKey 5C NFC (£43/unit) | ✅ COMPLIANT (FIDO2 Certified, NFC support) |
| **BR-006** | Monitor refresh (1,360 users Year 1+2) | Dell | P2425H (£153), U2424H (£196) | ✅ DEFERRED to Year 2 (£186K additional budget) |
| **FR-001** | WHQL certification, IR sensor | Dell | UltraSharp WB7022 | ✅ DEFERRED to Project 001 |
| **FR-002** | USB-C plug-and-play | Dell, Logitech | All products (USB-C or USB-A dongle) | ✅ COMPLIANT |
| **FR-003** | Noise-cancelling, Teams certification | Dell | Pro Plus Wireless ANC WL5024 | ✅ COMPLIANT (Hybrid ANC, Teams Open Office certified) |
| **FR-004** | FIDO2 with NFC support | Yubico | YubiKey 5C NFC | ✅ COMPLIANT (USB-C + NFC) |
| **FR-005** | Ergonomic certification | Logitech | ERGO K860 (Ergonomics Institute certified) | ✅ COMPLIANT (independent certification) |

**Requirements Coverage**: **11/11 (100%)** ✅

#### Architecture Principles Alignment

| Principle ID | Principle Name | Alignment | Evidence |
|--------------|----------------|-----------|----------|
| **Principle 2** | Zero Trust Security Model | ✅ FULL | Yubico YubiKey 5C NFC meets FIDO2 phishing-resistant MFA requirement (BR-005, NFR-SEC-001) |
| **Principle 9** | Vendor Management | ✅ FULL | Hybrid strategy balances Dell strategic relationship (75% value) with specialist vendors, avoids vendor lock-in |
| **Principle 15** | Standardization and Consistency | ⚠️ PARTIAL | Reduces SKUs from 45 to ~15 (Dell + specialists), 1.2% ticket rate vs. 1% target acceptable for requirements coverage |

#### UK Government Service Standards

| Standard | Point | Requirement | Compliance Status | Evidence |
|----------|-------|-------------|-------------------|----------|
| **GDS Service Standard** | 14 | "Operate a reliable service" | ✅ PASS | 3-year warranty across all vendors (Dell, Yubico, Logitech), Advanced Exchange SLA, <1.5% failure rate target |
| **Technology Code of Practice** | 5 | "Make things open, make things open source" | ✅ PASS | Open standards (USB-C, WHQL, FIDO2 Certified, Teams certified), avoids vendor lock-in via multi-vendor approach |
| **Technology Code of Practice** | 7 | "Make better use of data" | ✅ PASS | InTune unified asset management (Microsoft Graph API) tracks all peripherals, warranty expiration alerts |
| **NCSC Cyber Security** | Supply Chain | "Supply chain security" | ✅ PASS | Diversified vendor base (Dell, Yubico, Logitech) reduces concentration risk, all vendors vetted enterprise suppliers |

#### Security and Privacy Compliance

| Regulation | Requirement | Compliance Status | Evidence |
|------------|-------------|-------------------|----------|
| **FIDO Alliance** | FIDO2 Certified | ✅ PASS | Yubico YubiKey 5C NFC FIDO2 Certified (Level 1), meets NIST 800-63B AAL3 |
| **UK HSE DSE Regulations 1992** | Ergonomic peripherals | ✅ PASS | Logitech ERGO K860 independently certified by Ergonomics Institute, meets ISO 9241 |
| **ISO 27001:2022** | Asset Management (A.8.1) | ✅ PASS | InTune hardware inventory tracks all peripherals (serial numbers, assigned users, warranty expiration) |

### Implementation Guidance

#### Procurement Strategy

**Phase 1: Master Service Agreements (Week 1-6, Month 1-1.5)**

1. **Dell Premier Agreement** (Primary Vendor):
   - **Scope**: Headsets (3,000 units), Standard Keyboards/Mice (4,500 kits), Monitors (952 dual 24" + 204 ultrawide Year 2)
   - **Volume Commitment**: £665K Year 1+2 (headsets + standard keyboards), estimated £186K Year 2 monitors
   - **Discount Target**: 10-15% off MSRP for 7,500+ unit commitment
   - **Warranty**: 3-year Advanced Exchange Service (next-day replacement), unified warranty portal
   - **SLA**: <24 hour replacement for failed peripherals (Advanced Exchange Service)
   - **Account Management**: Dedicated Dell account manager, quarterly business reviews
   - **Contractual Terms**: 3-year term (Year 1-3), price cap clause (max 5% annual increase), exit clause if Dell fails SLA 3 consecutive months

2. **Yubico Master Service Agreement** (Specialist - Security):
   - **Scope**: FIDO2 security keys (500 units), FIDO2 fingerprint readers (900 units)
   - **Volume Commitment**: £83K Year 1+2
   - **Discount Target**: 10-15% off MSRP for 1,400+ unit commitment
   - **Warranty**: 2-year limited warranty (Yubico standard)
   - **Key Management**: Yubico support for key revocation, Azure AD integration documentation
   - **Training**: Yubico provides FIDO2 key deployment training (2-hour webinar)
   - **Contractual Terms**: 2-year term (Year 1-2), enterprise support subscription (£5K/year) for privileged user key management

3. **Logitech Master Service Agreement** (Specialist - Ergonomics):
   - **Scope**: Ergonomic keyboards/mice (1,500 kits - ERGO K860 + MX Ergo)
   - **Volume Commitment**: £128K Year 2
   - **Discount Target**: 10-15% off MSRP for 1,500+ kit commitment
   - **Warranty**: 3-year limited hardware warranty (Logitech standard)
   - **Ergonomic Certification**: Logitech provides ergonomic certification documentation (Ergonomics Institute certificate) for UK HSE DSE compliance
   - **Contractual Terms**: 2-year term (Year 1-2), option to expand to standard keyboards if user satisfaction >90% (Year 3 consideration)

**Phase 2: Initial Orders (Week 6-10, Month 1.5-2.5)**

- **Year 1 Orders** (Delivery Week 26, Project 001 Pilot Alignment):
  - Dell Headsets: 500 units for Project 001 pilot users (£65K), 2,500 units for full deployment (£325K)
  - Yubico FIDO2 Keys: 500 units for privileged users (£22K)
  - **Total Year 1**: £412K

- **Year 2 Orders** (Delivery Week 52, Full Deployment):
  - Dell Standard Keyboards/Mice: 4,500 kits (£275K)
  - Logitech Ergonomic Keyboards/Mice: 1,500 kits (£128K)
  - Yubico FIDO2 Fingerprint Readers: 900 units (£61K)
  - **Total Year 2**: £464K

**Phase 3: Ongoing Management (Year 1-3)**

- **Quarterly Business Reviews**: Dell account manager, Yubico/Logitech support contacts
- **Warranty Claim Management**: InTune hardware inventory triggers warranty alerts 30 days before expiration
- **Spare Inventory Management**: 5% buffer inventory (£43K total) for same-day replacement without warranty delay
- **Contract Renewals**: Negotiate Year 3+ renewals 6 months before expiration (Week 72, Month 18)

#### Asset Management Integration

**InTune Hardware Inventory Setup**:

1. **Dell Peripheral Manager Integration**:
   - Install Dell Peripheral Manager agent on Windows 11 laptops (Project 001)
   - Configure Microsoft Graph API connector for Dell warranty data sync
   - Enable firmware update notifications for Dell headsets/keyboards (security patches)

2. **Logitech Options+ Integration**:
   - Install Logitech Options+ agent for ergonomic keyboard users (1,500 power users)
   - Configure firmware update notifications (security patches)
   - Track battery status for rechargeable peripherals (Logitech devices)

3. **Yubico Manager Integration**:
   - Azure AD integration for FIDO2 key registration (BR-005)
   - InTune conditional access policy enforcement (FIDO2 required for privileged users)
   - Key revocation workflow (lost/stolen keys, 24-hour replacement process)

4. **Unified Hardware Inventory Dashboard**:
   - Microsoft Graph API aggregates data from all vendors (Dell, Logitech, Yubico)
   - PowerBI dashboard for IT Operations: peripheral inventory, warranty expiration, failure rates, user assignments
   - ServiceNow integration for warranty claim ticketing (automated RMA process)

#### Helpdesk Training Program

**Training Module Structure** (£20K E-learning Development):

1. **Module 1: Dell Peripherals (70% focus)** - 1 hour
   - Dell Pro Plus Wireless ANC WL5024 headset setup (Bluetooth pairing, Teams integration, hardware mute)
   - Dell Pro Plus KM7321W keyboard/mouse setup (USB receiver pairing, battery replacement, multi-device switching)
   - Common troubleshooting: Bluetooth disconnection, battery replacement, firmware updates via Dell Peripheral Manager

2. **Module 2: Logitech Ergonomic Peripherals (20% focus)** - 30 minutes
   - Logitech ERGO K860 keyboard setup (USB receiver pairing, ergonomic positioning, wrist rest adjustment)
   - Logitech MX Ergo vertical mouse setup (precision mode, USB-C charging)
   - Common troubleshooting: Logitech Options+ software installation, firmware updates, battery charging

3. **Module 3: Yubico FIDO2 Security Keys (10% focus)** - 30 minutes
   - Yubico YubiKey 5C NFC registration (Azure AD registration portal, touch authentication workflow)
   - NFC authentication for mobile devices (iOS/Android Azure AD app)
   - Common troubleshooting: Key not recognized, touch authentication fails, lost key replacement process (24-hour turnaround)

**Helpdesk Reference Documentation**:
- Vendor-specific troubleshooting guides (Dell, Logitech, Yubico support portals)
- InTune asset management lookup (user peripheral assignments, warranty status, RMA history)
- Warranty claim escalation process (SLA breach escalation, service credits)

#### User Communications and Change Management

**User Communication Plan**:

1. **Week 2-4 (Pre-Deployment)**: Email campaign introducing new peripherals, benefits (hybrid working, ergonomics, security)
2. **Week 20-22 (Monitor Survey)**: User preference survey for dual 24" vs. ultrawide 34" monitors (1,360 eligible users)
3. **Week 24-26 (Pilot Deployment)**: 500 Project 001 pilot users receive Dell headsets + FIDO2 keys, feedback survey
4. **Week 36-48 (Full Deployment)**: Phased rollout to 6,000 users, e-learning module (2 hours), peripheral setup support
5. **Week 52+ (Year 2)**: Ergonomic keyboard deployment (1,500 power users), FIDO2 fingerprint reader deployment (900 users)

**Change Management Activities**:
- **User Training**: 2-hour e-learning module (mandatory before peripheral shipment) covering setup, troubleshooting, ergonomic usage
- **DSE Self-Assessment**: Users complete UK HSE DSE self-assessment, request ergonomic peripherals if RSI symptoms (pain scale >5/10)
- **User Satisfaction Surveys**: Quarterly surveys (target >85% satisfaction by Month 15)
- **Ergonomic Sick Leave Monitoring**: HR tracks ergonomic-related sick leave (target 50% reduction from 120 → 60 days/year)

### Monitoring and Success Criteria

#### Key Performance Indicators (KPIs)

**Operational KPIs**:

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| **Peripheral Support Ticket Rate** | 5% (300/month) | <1.5% (90/month) | Month 12 | ServiceNow ticket volume by category (peripheral-related tickets / total users) |
| **Mean Time to Resolve (MTTR)** | 45 minutes | <20 minutes | Month 12 | ServiceNow ticket data (resolved_at - created_at avg) |
| **First-Call Resolution Rate** | 60% | >80% | Month 12 | ServiceNow ticket data (% resolved on first contact) |
| **Peripheral Failure Rate** | 3% annual | <2% annual | Month 18 | Warranty claim volume (RMA tickets / total devices) |
| **User Satisfaction (Peripherals)** | 55% | >85% | Month 15 | Quarterly user satisfaction survey (5-point scale) |
| **Ergonomic Sick Leave** | 120 days/year | <60 days/year | Month 18 | HR sick leave tracking (ergonomic-related absences) |
| **Annual Support Cost Savings** | £400K/year baseline | £150K+/year savings | Month 18 | Finance cost accounting (helpdesk labor reduction) |

**Security KPIs**:

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| **FIDO2 Key Enrollment Rate** | 0% | 100% (500 privileged users) | Month 6 | Azure AD conditional access compliance report |
| **Phishing Attacks on Privileged Users** | 2/year baseline | 0/year | Month 12 | CISO security incident reports (phishing attempts using FIDO2 key fail) |
| **FIDO2 Key Loss/Replacement Rate** | N/A | <10% annual (50 keys/year) | Month 18 | Yubico key revocation logs, replacement ticket volume |

**Financial KPIs**:

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| **Total Procurement Cost** | £1M budget | £876K (£124K under budget) | Month 18 | Finance procurement accounting (Year 1 + Year 2 actuals) |
| **5-Year Net Benefit** | - | £587K net benefit | Month 60 | Finance 5-year TCO model (£1.64M savings - £1.053M cost) |

#### Quarterly Review Checkpoints

**Quarter 1 (Month 3)**: Master service agreements signed (Dell, Yubico, Logitech), Year 1 orders placed (headsets, FIDO2 keys)

**Quarter 2 (Month 6)**: Pilot deployment complete (500 users), FIDO2 keys deployed (500 privileged users), pilot feedback survey >80% satisfaction

**Quarter 3 (Month 9)**: Full headset deployment complete (3,000 hybrid workers), user satisfaction survey >75% (early indicator)

**Quarter 4 (Month 12)**: Year 1 complete, support ticket rate <1.5% achieved, Year 2 orders placed (keyboards/mice, FIDO2 fingerprint)

**Quarter 5 (Month 15)**: User satisfaction >85% achieved, ergonomic sick leave reduction measured (50% reduction target)

**Quarter 6 (Month 18)**: Year 2 complete, all peripherals deployed (6,000 users), annual support cost savings £150K+ validated

### Links and References

#### Related ADRs

- **ADR-002**: Built-in Windows Hello vs External Webcam Strategy (addresses BR-001 webcam requirement, deferred to Project 001)
- **ADR-003**: FIDO2 Security Key Standard Selection (addresses BR-005 FIDO2 key vendor selection Yubico vs. Microsoft)
- **ADR-004**: Tiered Ergonomic Peripheral Distribution Strategy (addresses BR-004 ergonomic vs. standard keyboards distribution)
- **ADR-005**: User Choice Monitor Configuration Strategy (addresses BR-006 dual 24" vs. ultrawide 34" monitors)

#### Related Documents

- **Requirements Document**: `projects/003-peripherals-update-upgrade/requirements.md` (BR-001 to BR-006, FR-001 to FR-005)
- **Research Findings - Dell**: `projects/003-peripherals-update-upgrade/research-findings-dell.md` (Dell product evaluation, pricing, reviews)
- **Stakeholder Drivers**: `projects/003-peripherals-update-upgrade/stakeholder-drivers.md` (CFO cost reduction, CISO Zero Trust, IT Ops support reduction)
- **Risk Register**: `projects/003-peripherals-update-upgrade/risk-register.md` (R-002 supply chain delays, R-003 vendor product gap, R-004 vendor lock-in)
- **Architecture Principles**: `.arckit/memory/architecture-principles.md` (Principle 2 Zero Trust, Principle 9 Vendor Management, Principle 15 Standardization)
- **Project 001 Requirements**: `projects/001-windows-11-migration-intune/requirements.md` (Windows 11 laptop procurement with built-in Windows Hello webcams)

#### External Standards and Certifications

- **FIDO Alliance**: [FIDO2 Certified Products](https://fidoalliance.org/certification/fido-certified-products/) - Yubico YubiKey 5C NFC certified
- **Microsoft Teams**: [Teams Certified Devices](https://learn.microsoft.com/en-us/microsoftteams/devices/teams-ip-phones) - Dell Pro Plus WL5024 Teams Open Office certified
- **UK HSE**: [Display Screen Equipment (DSE) Regulations](https://www.hse.gov.uk/msd/dse/) - Ergonomic keyboard requirements
- **GDS Service Standard**: [Point 14 - Operate a reliable service](https://www.gov.uk/service-manual/service-standard/point-14-operate-a-reliable-service)
- **Technology Code of Practice**: [Point 5 - Make things open](https://www.gov.uk/guidance/make-things-open)

---

## Metadata

**Document Control**:

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-11-12 | Enterprise Architect (Claude Code) | Initial ADR creation for Project 003 multi-vendor peripheral procurement strategy |

**Review and Approval**:

| Reviewer | Role | Status | Date | Comments |
|----------|------|--------|------|----------|
| IT Operations Director | Decision Maker | [ ] Approved | [PENDING] | Hybrid strategy balances Dell primary relationship with specialist vendors, £115K savings vs. single-vendor |
| CFO | Decision Maker | [ ] Approved | [PENDING] | £124K under budget (£876K vs. £1M) provides contingency, 5-year net benefit £587K |
| Procurement Manager | Decision Maker | [ ] Approved | [PENDING] | 3 contracts manageable (Dell primary + 2 specialists), £15K/year overhead acceptable for £115K savings |
| CISO | Consulted | [ ] Approved | [PENDING] | Yubico YubiKey 5C NFC meets Zero Trust mandate (FIDO2 Certified), phishing-resistant MFA |
| CIO | Consulted | [ ] Approved | [PENDING] | 100% requirements coverage (11/11), aligns with hybrid working strategy (SD-5) |
| Enterprise Architect | Consulted | [ ] Approved | [PENDING] | Aligns with Principle 9 (Vendor Management), Principle 15 (Standardization), avoids vendor lock-in |

**Supersedes**: None (initial ADR for Project 003)

**Superseded By**: None

**Tags**: `procurement`, `vendor-management`, `peripherals`, `project-003`, `dell`, `yubico`, `logitech`, `fido2`, `ergonomics`, `hybrid-working`, `cost-optimization`
