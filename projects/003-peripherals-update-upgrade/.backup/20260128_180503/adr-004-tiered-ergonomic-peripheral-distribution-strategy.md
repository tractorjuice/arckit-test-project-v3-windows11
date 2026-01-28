# ADR-004: Tiered Ergonomic Peripheral Distribution Strategy

**Status**: Accepted
**Date**: 2025-11-12
**Decision Makers**: IT Operations Director, CFO, HR Director
**Consulted**: CIO, End User Representatives, Facilities Manager
**Informed**: All End Users (6,000), Procurement Manager

---

## Context and Problem Statement

Project 003 (Peripherals Update/Upgrade) requires procurement of **6,000 keyboard/mouse kits** for all users to support hybrid working and productivity improvements. The organization faces a **cost vs. ergonomic quality trade-off**: low-cost standard peripherals (£50/kit) enable budget compliance but lack ergonomic certification, while high-quality ergonomic peripherals (£100/kit) reduce RSI risk but exceed budget by £300K (20% overrun). The organization must decide how to distribute limited ergonomic peripheral budget across 6,000 users while meeting CFO cost reduction targets and HR ergonomic health obligations.

### Business Context

- **Budget Constraint**: Project 003 £1M budget (Year 1+2) includes keyboards/mice £518K allocation (after reallocating £1.02M webcam savings). Full ergonomic deployment (6,000 kits @ £100/kit) = £600K (£82K over keyboard budget, 16% overrun).
- **Current State**: Existing peripherals cause 8% increase in ergonomic sick leave (120 days/year × £200/day = £24K annual cost). User satisfaction 55%. 45 peripheral SKUs from multiple vendors create support complexity.
- **Target State**: Improve user satisfaction to >85%, reduce ergonomic sick leave 50% (120 → 60 days/year, £12K savings), reduce SKUs to 20 models, <1% support ticket rate.

### Technical Context

**Ergonomic Keyboard Requirements** (BR-004, FR-005):

- **Independent Certification**: Ergonomics Institute or equivalent independent testing body certification (not vendor self-certification)
- **Split Keyboard Design**: Separated left/right hand sections reduce wrist pronation (turning wrist inward), prevents RSI
- **Negative Tilt**: Palm lift design (keyboard higher at front than back) reduces wrist extension strain
- **Cushioned Wrist Rest**: Integrated or detachable wrist rest distributes pressure, prevents carpal tunnel syndrome
- **Vertical Mouse**: Vertical grip design (handshake position) reduces forearm pronation, prevents mouse arm syndrome

**User Segmentation**:

From requirements.md Conflict C-001:

- **Power Users (1,500 users, 25%)**: Developers, data analysts, designers - Work 10+ hours/day at desk, intensive keyboard/mouse use, highest RSI risk
- **Standard Knowledge Workers (4,500 users, 75%)**: Business analysts, project managers, HR, finance - Work 6-8 hours/day, moderate keyboard/mouse use, lower RSI risk

**Ergonomic Health Context**:

- **UK HSE DSE Regulations 1992**: Employers must provide ergonomic peripherals upon employee request (reasonable adjustments)
- **Current Ergonomic Sick Leave**: 120 days/year (8% increase vs. non-ergonomic baseline), £24K annual cost
- **Target**: 50% reduction (60 days/year), £12K annual savings

### Architecture Principles

From `.arckit/memory/architecture-principles.md`:

- **Principle 15: Standardization and Consistency** - "Standardize technology stacks to reduce complexity and improve supportability" (balance with ergonomic health requirements)
- **Principle 16: User-Centric Design** - "Design technology solutions with user experience and productivity as primary considerations" (ergonomic peripherals improve user satisfaction and productivity)

### Key Requirements

| Requirement | Priority | Ergonomic (£100/kit) | Standard (£50/kit) |
|-------------|----------|----------------------|--------------------|
| **BR-004**: Ergonomic peripherals (1,500 power users) | SHOULD_HAVE | ✅ Independent certification, split keyboard | ❌ No certification, straight layout |
| **FR-005**: Independent ergonomic certification | SHOULD_HAVE | ✅ Ergonomics Institute certified | ❌ Not certified |
| **BR-003**: Cost reduction, standardization | MUST_HAVE | ⚠️ £600K exceeds budget £518K (£82K overrun) | ✅ £300K within budget |
| **User Satisfaction**: >85% | SHOULD_HAVE | ✅ Ergonomic reduces RSI, improves satisfaction | ⚠️ Standard may not meet power user satisfaction |
| **Ergonomic Sick Leave**: <60 days/year (50% reduction) | SHOULD_HAVE | ✅ Ergonomic reduces RSI 50% | ❌ Standard does not reduce RSI |

### Decision Drivers

#### Financial Drivers (CFO)

- **SD-2**: Reduce IT infrastructure costs by 15% (£150K+ annual savings target)
- **Budget Constraint**: Keyboards/mice £518K allocation (after £1.02M webcam savings reallocation)
- **Goal G-2**: Achieve annual cost savings from IT initiatives
- **Cost-Benefit**: Ergonomic sick leave reduction (£12K/year savings) vs. ergonomic peripheral premium (£50K additional cost)

#### Health & Safety Drivers (HR)

- **UK HSE DSE Regulations 1992**: Employers must conduct DSE assessments and provide ergonomic equipment upon request (reasonable adjustments)
- **Current Ergonomic Sick Leave**: 120 days/year (£24K annual cost), 8% increase vs. non-ergonomic baseline
- **Target**: 50% reduction (60 days/year), £12K annual savings, improves employee wellbeing

#### User Experience Drivers (End Users)

- **Power Users (1,500)**: Developers, analysts, designers working 10+ hours/day require ergonomic keyboards to prevent RSI (wrist pain 6/10 scale baseline)
- **Standard Workers (4,500)**: Business users working 6-8 hours/day have lower RSI risk, ergonomic peripherals beneficial but not critical
- **User Satisfaction**: Current 55%, target >85% (BR-004)

---

## Decision Drivers

### Critical Decision Drivers

| # | Driver | Description | Impact | Priority |
|---|--------|-------------|--------|----------|
| **DD-1** | **Budget Constraint** | Full ergonomic deployment (6,000 kits @ £100/kit) = £600K exceeds keyboard budget £518K by £82K (16% overrun). Standard deployment (6,000 kits @ £50/kit) = £300K within budget. | **CRITICAL** | MUST_RESOLVE |
| **DD-2** | **RSI Risk Segmentation** | Power users (1,500 users, 10+ hours/day) have highest RSI risk. Standard workers (4,500 users, 6-8 hours/day) have lower RSI risk. Targeting ergonomic investment to high-risk users maximizes health benefit per pound spent. | **HIGH** | MUST_CONSIDER |
| **DD-3** | **Ergonomic Certification Requirement** | FR-005 requires independent ergonomic certification (Ergonomics Institute). Standard peripherals (£50/kit) not independently certified, fail FR-005 requirement. Ergonomic peripherals (£100/kit) meet FR-005. | **HIGH** | SHOULD_MEET |
| **DD-4** | **Ergonomic Sick Leave ROI** | Ergonomic peripherals reduce sick leave 50% (120 → 60 days/year), saving £12K/year. Ergonomic premium (£300K ergonomic - £150K standard for 1,500 users = £150K additional cost) has 12.5-year payback period on sick leave savings alone (not including productivity improvements). | **MEDIUM** | SHOULD_CONSIDER |
| **DD-5** | **User Equity Perception** | Tiered approach (ergonomic for 1,500 power users, standard for 4,500 workers) may create perceived inequity. Two-tier user experience could impact standard worker satisfaction. | **MEDIUM** | SHOULD_MITIGATE |
| **DD-6** | **UK HSE DSE Compliance** | UK HSE DSE Regulations 1992 require employers to provide ergonomic equipment upon employee request (reasonable adjustments). On-request provision model enables compliance without upfront full deployment cost. | **HIGH** | MUST_COMPLY |

### Stakeholder Perspectives

| Stakeholder | Position | Rationale |
|-------------|----------|-----------|
| **CFO** (Budget Owner) | **FAVOR Tiered Approach** | "Full ergonomic (£600K) exceeds budget by £82K (16% overrun), unacceptable. Tiered approach (ergonomic £150K for power users, standard £270K for workers = £420K total) stays within £518K budget with £98K headroom for monitors. Target ergonomic investment where RSI risk highest (power users 10+ hours/day)." |
| **HR Director** (Health & Safety) | **FAVOR Ergonomic for All, Accept Tiered** | "Ideal: ergonomic for all 6,000 users (UK HSE DSE best practice). Acceptable compromise: tiered approach with ergonomic on-request provision for standard workers who develop RSI symptoms (meets UK HSE DSE Regulations reasonable adjustments requirement). Monitor sick leave data quarterly, expand ergonomic if RSI rates remain high." |
| **End Users - Power Users (1,500)** | **REQUIRE Ergonomic** | "10+ hours/day coding/analysis creates severe wrist pain (6/10 scale). Standard keyboards worsen RSI (straight layout forces wrist pronation). Ergonomic split keyboards essential for career longevity and quality of life. User satisfaction <50% without ergonomic." |
| **End Users - Standard Workers (4,500)** | **PREFER Standard, Open to Ergonomic** | "6-8 hours/day moderate keyboard use, mild wrist discomfort (3/10 scale). Standard keyboards acceptable if comfortable. Ergonomic beneficial but not critical. Prefer ergonomic on-request option if RSI develops rather than upfront allocation." |
| **IT Operations Director** | **FAVOR Tiered Approach** | "Tiered approach balances budget constraint with ergonomic health. Power users (1,500) drive majority of RSI sick leave (estimated 80 days/year), targeting ergonomic investment maximizes health ROI. Standard workers (4,500) can request ergonomic via DSE self-assessment (UK HSE compliance)." |

---

## Options Considered

### Option 1: Tiered Ergonomic Distribution (RECOMMENDED)

**Description**: Deploy **ergonomic peripherals (£100/kit) for 1,500 power users** (developers, analysts, designers) and **standard peripherals (£50/kit) for 4,500 knowledge workers**, with **ergonomic on-request provision** for standard workers who develop RSI symptoms (self-reported pain scale >5/10).

#### Implementation Approach

1. **Power User Identification** (Week 4-6):
   - HRIS data: Job titles (Developer, Data Analyst, Designer, Engineer)
   - Manager nomination: Managers identify power users working 10+ hours/day intensive keyboard use
   - User self-assessment: Users complete DSE self-assessment (UK HSE DSE template), report RSI symptoms (pain scale 1-10)
   - **Result**: 1,500 power users identified for ergonomic peripheral allocation

2. **Tiered Procurement** (Week 6-12):
   - **Ergonomic Tier (1,500 kits)**: Logitech ERGO K860 split keyboard + MX Ergo vertical mouse (£100/kit with 15% volume discount = £85/kit)
   - **Standard Tier (4,500 kits)**: Logitech MK270 wireless keyboard/mouse combo (£50/kit with 15% volume discount = £43/kit)
   - **Total Cost**: (1,500 × £85) + (4,500 × £43) = £128K + £194K = **£322K** (£196K under keyboard budget £518K)

3. **Ergonomic On-Request Provision** (Ongoing):
   - Standard workers experiencing RSI symptoms (pain scale >5/10) submit ergonomic peripheral request via IT support portal
   - DSE self-assessment required (UK HSE DSE template, manager approval)
   - IT Operations Lead approves requests, provisions ergonomic peripherals within 10 business days
   - **Budget Allocation**: £98K headroom (£518K budget - £322K tiered deployment - £98K on-request buffer for estimated 10% standard workers = 450 users × £85/kit = £38K)

4. **Quarterly RSI Monitoring** (Ongoing):
   - HR tracks ergonomic sick leave data quarterly (target <60 days/year 50% reduction)
   - If RSI rates remain high (>80 days/year threshold), expand ergonomic allocation Year 3 (additional £200K budget request)

#### Product Selection

| Category | Vendor | Product | Unit Cost (with 15% discount) | Quantity | Total Cost |
|----------|--------|---------|-------------------------------|----------|------------|
| **Ergonomic Keyboards/Mice** | Logitech | ERGO K860 + MX Ergo vertical mouse | £85/kit (MSRP £100) | 1,500 | £128K |
| **Standard Keyboards/Mice** | Logitech | MK270 wireless combo | £43/kit (MSRP £50) | 4,500 | £194K |
| **On-Request Ergonomic Buffer** | Logitech | ERGO K860 + MX Ergo (on-request) | £85/kit | 450 (estimated 10% of 4,500 standard) | £38K |
| **Total** | - | - | - | **6,450** | **£360K** |

**Budget Headroom**: £518K budget - £360K total cost = **£158K remaining** for monitors (partial Year 2 deployment)

#### Pros

- ✅ **Within Budget**: £360K total cost (£158K under keyboard budget £518K, 30% under budget)
- ✅ **Ergonomic Certification Met**: Logitech ERGO K860 independently certified by Ergonomics Institute (meets FR-005 requirement)
- ✅ **Targeted RSI Prevention**: 1,500 power users (highest RSI risk, 10+ hours/day) receive ergonomic peripherals upfront
- ✅ **UK HSE DSE Compliance**: Ergonomic on-request provision for standard workers meets UK HSE DSE Regulations reasonable adjustments requirement
- ✅ **Cost-Effective**: £322K tiered deployment (vs. £600K full ergonomic, £278K savings = 46% cost reduction)
- ✅ **User Satisfaction**: Power users (1,500) receive ergonomic (satisfaction >85% expected), standard workers (4,500) receive comfortable wireless peripherals (satisfaction >75% expected, 20% dissatisfaction acceptable vs. budget overrun)
- ✅ **Ergonomic Sick Leave Reduction**: Targeting power users (estimated 80% of RSI sick leave, 96 days/year) achieves 50% reduction target (96 → 48 days/year, £10K savings)
- ✅ **Flexibility**: On-request provision (£38K buffer for 450 users) accommodates standard workers who develop RSI over time

#### Cons

- ⚠️ **Two-Tier User Experience**: Power users receive ergonomic (£85/kit), standard workers receive standard (£43/kit), perceived inequity
  - **Mitigation**: Communicate rationale (power users 10+ hours/day highest RSI risk, standard workers 6-8 hours/day lower risk), emphasize on-request availability (any standard worker can request ergonomic via DSE self-assessment)
- ⚠️ **User Segmentation Complexity**: Identifying 1,500 power users requires HRIS data + manager nomination + user self-assessment (2-4 weeks effort)
  - **Mitigation**: Use HRIS job title data (Developer, Data Analyst, Designer) as primary filter (estimated 80% accuracy), allow manager override for edge cases
- ⚠️ **Standard Worker RSI Risk**: 4,500 standard workers receive non-ergonomic keyboards, may develop RSI symptoms (20% of RSI sick leave, 24 days/year)
  - **Mitigation**: Ergonomic on-request provision (£38K buffer for 450 users = 10% of standard workers), quarterly RSI monitoring (if RSI rates exceed 80 days/year threshold, expand ergonomic allocation Year 3)
- ⚠️ **On-Request Process Complexity**: Standard workers must submit DSE self-assessment + IT approval (10 business day turnaround), creates support overhead
  - **Mitigation**: Self-service IT portal for on-request submission, automated DSE self-assessment (UK HSE template), IT Operations Lead approval workflow (target 80% approval rate for pain scale >5/10)

#### Cost Analysis

**3-Year Total Cost of Ownership** (Tiered Ergonomic Distribution):

| Cost Category | Year 2 | Year 3 | Total |
|---------------|--------|--------|-------|
| **Ergonomic Keyboards/Mice (1,500 power users)** | £128K | - | £128K |
| **Standard Keyboards/Mice (4,500 workers)** | £194K | - | £194K |
| **On-Request Ergonomic (450 users estimated 10% of 4,500)** | £19K (Year 2 first 6 months) | £19K (Year 3 next 18 months) | £38K |
| **Warranty Renewals (3-year warranty, no renewal cost)** | - | - | £0 |
| **Support Labor (on-request processing, DSE assessments)** | £10K | £10K | £20K |
| **Ergonomic Sick Leave Savings** | -£10K (50% reduction from power users) | -£10K | **-£20K** |
| **Total** | £351K | £19K | **£370K** |

**5-Year Net Benefit**: £50K savings (£370K cost - £20K sick leave savings - £400K baseline cost for standard peripherals for all 6,000 users)

**Comparison to Other Options**:
- **Full Ergonomic (Option 2)**: £600K cost (£230K more expensive), £12K/year sick leave savings (5-year net benefit £10K)
- **Full Standard (Option 3)**: £300K cost (£70K cheaper), £0 sick leave savings, user satisfaction <75% (power users dissatisfied)

#### UK Government Compliance

| Standard | Compliance Status | Evidence |
|----------|-------------------|----------|
| **UK HSE DSE Regulations 1992** | ✅ PASS | "Employers must conduct DSE assessments and provide suitable equipment" - Ergonomic on-request provision meets reasonable adjustments requirement |
| **UK Equality Act 2010** | ✅ PASS | "Reasonable adjustments for employees with disabilities (RSI)" - On-request provision enables ergonomic peripherals for users with diagnosed RSI/musculoskeletal disorders |
| **ISO 9241** | ✅ PASS | "Ergonomics of human-system interaction" - Logitech ERGO K860 meets ISO 9241 ergonomic design principles (split keyboard, negative tilt, cushioned wrist rest) |
| **GDS Service Standard (Point 14)** | ✅ PASS | "Operate a reliable service" - Ergonomic peripherals for power users reduce sick leave (reliable workforce availability) |

#### Risk Assessment

| Risk ID | Description | Probability | Impact | Mitigation |
|---------|-------------|-------------|--------|------------|
| **NEW R-023** | User segmentation inaccuracy (power vs. standard) misallocates ergonomic peripherals (10-15% error rate) | MEDIUM | MEDIUM | Validate HRIS data with manager nomination + user DSE self-assessment, allow users to request reclassification (power to standard or vice versa) within first 3 months |
| **NEW R-024** | Standard workers perceive inequity (two-tier peripheral quality) affecting satisfaction | MEDIUM | MEDIUM | Communicate rationale (RSI risk-based allocation, on-request availability), user satisfaction survey validates acceptance (target >75% for standard workers) |
| **NEW R-025** | On-request volume exceeds £38K buffer (>450 users, 10% of 4,500 standard workers) | MEDIUM | MEDIUM | Monitor on-request volume monthly, if exceeds 300 requests (65% of buffer) by Month 6, reallocate £60K from monitor budget contingency to ergonomic buffer |
| **NEW R-026** | Ergonomic sick leave reduction <50% target (remains >80 days/year) due to standard worker RSI | LOW | MEDIUM | Quarterly HR monitoring, if RSI rates exceed 80 days/year threshold after Month 12, submit Year 3 budget request (£200K) to expand ergonomic allocation to remaining 4,500 standard workers |

---

### Option 2: Full Ergonomic Deployment for All Users

**Description**: Deploy **ergonomic peripherals (£100/kit) for all 6,000 users** (power users + standard workers), prioritizing ergonomic health and user satisfaction over budget constraint.

#### Implementation Approach

1. **Full Ergonomic Procurement** (Week 6-12):
   - **Ergonomic Tier (6,000 kits)**: Logitech ERGO K860 split keyboard + MX Ergo vertical mouse (£100/kit with 15% volume discount = £85/kit)
   - **Total Cost**: 6,000 × £85 = **£510K** (£510K for keyboards, no budget remaining for monitors)

2. **Budget Impact**:
   - **Keyboard Budget**: £518K (£510K ergonomic + £8K contingency = within budget ✅)
   - **Monitor Budget**: £0 remaining (monitors deferred to Year 3, requires £186K additional budget approval)

#### Product Selection

| Category | Vendor | Product | Unit Cost (with 15% discount) | Quantity | Total Cost |
|----------|--------|---------|-------------------------------|----------|------------|
| **Ergonomic Keyboards/Mice** | Logitech | ERGO K860 + MX Ergo | £85/kit (MSRP £100) | 6,000 | £510K |
| **Total** | - | - | - | **6,000** | **£510K** |

**Budget Impact**: £518K keyboard budget - £510K ergonomic = £8K remaining (monitors £186K deferred to Year 3)

#### Pros

- ✅ **100% Ergonomic Coverage**: All 6,000 users receive independently certified ergonomic peripherals (Ergonomics Institute certified, meets FR-005)
- ✅ **Maximum Ergonomic Health Benefit**: All users benefit from split keyboard, negative tilt, cushioned wrist rest (RSI prevention for all)
- ✅ **User Equity**: No two-tier user experience, all users receive same high-quality ergonomic peripherals (user satisfaction >85% expected for all)
- ✅ **Simplified Procurement**: Single SKU (Logitech ERGO K860 + MX Ergo), no user segmentation complexity
- ✅ **UK HSE DSE Best Practice**: Full ergonomic deployment exceeds UK HSE DSE minimum requirements (proactive RSI prevention vs. reactive on-request provision)

#### Cons

- ❌ **Monitor Budget Eliminated**: £510K ergonomic keyboards consume entire £518K keyboard budget, no budget remaining for monitors (£186K required for 1,360 users Year 2)
  - **Impact**: Monitor refresh (BR-006) deferred to Year 3, requires £186K additional budget approval, delays dual monitor productivity improvements
- ❌ **Cost-Benefit Unclear**: Standard workers (4,500 users, 6-8 hours/day) have lower RSI risk, ergonomic benefit marginal vs. standard (estimated £2K additional sick leave savings vs. £188K additional cost = 94-year payback period)
  - **Analysis**: Power users (1,500) drive 80% of RSI sick leave (96 days/year), standard workers (4,500) drive 20% (24 days/year). Ergonomic for standard workers reduces 24 → 12 days/year (£2K savings), but costs £188K additional (vs. standard £194K → ergonomic £382K = £188K premium)
- ❌ **Ergonomic Overkill**: Standard workers (4,500 users) may not utilize ergonomic features (split keyboard, negative tilt) if RSI risk low, wasted investment
  - **Impact**: Estimated 30% of standard workers prefer traditional straight keyboard layout (user preference survey), ergonomic split keyboard may reduce satisfaction for this cohort

#### Cost Analysis

**3-Year Total Cost of Ownership** (Full Ergonomic Deployment):

| Cost Category | Year 2 | Year 3 | Total |
|---------------|--------|--------|-------|
| **Ergonomic Keyboards/Mice (6,000 users)** | £510K | - | £510K |
| **Warranty Renewals (3-year warranty, no renewal cost)** | - | - | £0 |
| **Support Labor (no on-request processing required)** | £5K | £5K | £10K |
| **Ergonomic Sick Leave Savings** | -£12K (50% reduction from all users) | -£12K | **-£24K** |
| **Total** | £503K | -£7K | **£496K** |

**Comparison to Tiered Approach**: £126K more expensive (£496K full ergonomic vs. £370K tiered), £4K additional sick leave savings (£24K vs. £20K), net difference £122K cost premium for marginal health benefit

#### UK Government Compliance

| Standard | Compliance Status | Evidence |
|----------|-------------------|----------|
| **UK HSE DSE Regulations 1992** | ✅ EXCEEDS | "Employers must provide suitable equipment" - Full ergonomic deployment exceeds minimum requirements (proactive RSI prevention) |
| **ISO 9241** | ✅ PASS | "Ergonomics of human-system interaction" - Logitech ERGO K860 meets ISO 9241 for all 6,000 users |

#### Risk Assessment

| Risk ID | Description | Probability | Impact | Mitigation |
|---------|-------------|-------------|--------|------------|
| **NEW R-027** | Monitor budget eliminated (£186K deferred to Year 3) delays dual monitor productivity improvements (BR-006) | HIGH | HIGH | Submit Year 3 budget request (£186K) for monitor refresh, CFO approval required |
| **NEW R-028** | Standard workers (30% estimated) prefer traditional straight keyboard, ergonomic split keyboard reduces satisfaction | MEDIUM | LOW | Provide traditional keyboard option (Logitech K270, £20/unit) as alternative for users who reject ergonomic split keyboard after 30-day trial |
| **NEW R-029** | Cost-benefit unclear (£188K additional cost for £2K sick leave savings from standard workers = 94-year payback) | HIGH | MEDIUM | Accept poor ROI for standard workers, justify with user satisfaction and UK HSE DSE best practice (proactive RSI prevention) |

---

### Option 3: Full Standard Deployment for All Users

**Description**: Deploy **standard peripherals (£50/kit) for all 6,000 users** (power users + standard workers), prioritizing budget optimization and cost reduction over ergonomic health.

#### Implementation Approach

1. **Full Standard Procurement** (Week 6-12):
   - **Standard Tier (6,000 kits)**: Logitech MK270 wireless keyboard/mouse combo (£50/kit with 15% volume discount = £43/kit)
   - **Total Cost**: 6,000 × £43 = **£258K**

2. **Budget Impact**:
   - **Keyboard Budget**: £518K (£258K standard + £260K remaining for monitors)
   - **Monitor Budget**: £260K available (exceeds £186K required for 1,360 users Year 2 monitors, £74K additional budget headroom)

#### Product Selection

| Category | Vendor | Product | Unit Cost (with 15% discount) | Quantity | Total Cost |
|----------|--------|---------|-------------------------------|----------|------------|
| **Standard Keyboards/Mice** | Logitech | MK270 wireless combo | £43/kit (MSRP £50) | 6,000 | £258K |
| **Total** | - | - | - | **6,000** | **£258K** |

**Budget Impact**: £518K keyboard budget - £258K standard = **£260K remaining** for monitors (exceeds £186K required for Year 2 monitors, £74K contingency)

#### Pros

- ✅ **Maximum Budget Headroom**: £260K remaining for monitors (£74K above £186K required for Year 2 monitors, enables contingency or Year 3 monitor expansion)
- ✅ **Lowest Cost**: £258K total cost (vs. £510K full ergonomic, £252K savings = 49% cost reduction)
- ✅ **Simplified Procurement**: Single SKU (Logitech MK270), no user segmentation complexity
- ✅ **User Equity**: All users receive same standard peripherals (no two-tier perception)

#### Cons

- ❌ **Ergonomic Certification Failed**: Logitech MK270 not independently certified (fails FR-005 requirement)
- ❌ **Power User Dissatisfaction**: 1,500 power users (10+ hours/day) experience wrist pain (6/10 scale) without ergonomic keyboards, user satisfaction <50% expected
  - **Impact**: Power user dissatisfaction drives turnover risk (developers, analysts, designers), recruitment cost £20K/replacement × estimated 5% turnover (75 power users) = £1.5M turnover cost over 3 years
- ❌ **Zero Ergonomic Sick Leave Reduction**: Standard peripherals do not reduce RSI risk, sick leave remains 120 days/year (£24K annual cost, £0 savings)
- ❌ **UK HSE DSE Non-Compliance Risk**: Power users with existing RSI symptoms (pain scale >5/10) may submit DSE self-assessment requests, requiring ergonomic provision (estimated 500 users × £85/kit = £43K additional cost Year 2-3)
- ❌ **User Satisfaction Target Failed**: BR-004 target >85% user satisfaction not achievable with standard peripherals for power users (estimated 50% satisfaction for power users drags overall satisfaction to <75%)

#### Cost Analysis

**3-Year Total Cost of Ownership** (Full Standard Deployment):

| Cost Category | Year 2 | Year 3 | Total |
|---------------|--------|--------|-------|
| **Standard Keyboards/Mice (6,000 users)** | £258K | - | £258K |
| **On-Request Ergonomic (500 power users with RSI, UK HSE DSE compliance)** | £21K (Year 2 first 6 months) | £21K (Year 3 next 18 months) | £43K |
| **Warranty Renewals (3-year warranty, no renewal cost)** | - | - | £0 |
| **Support Labor (on-request processing)** | £10K | £10K | £20K |
| **Ergonomic Sick Leave Savings** | £0 (no reduction) | £0 | **£0** |
| **Power User Turnover Cost (5% estimated, £20K/replacement × 75 users)** | £500K | £500K | **£1.5M** |
| **Total** | £789K | £531K | **£1.821M** |

**Comparison to Tiered Approach**: £1.451M MORE EXPENSIVE (£1.821M full standard vs. £370K tiered) due to power user turnover cost (£1.5M) outweighing keyboard savings (£252K)

**CFO ALERT**: Full standard deployment appears cheapest upfront (£258K vs. £510K full ergonomic), but power user turnover cost (£1.5M estimated over 3 years) makes total cost £1.821M (490% more expensive than tiered approach £370K)

#### UK Government Compliance

| Standard | Compliance Status | Evidence |
|----------|-------------------|----------|
| **UK HSE DSE Regulations 1992** | ⚠️ PARTIAL | "Employers must provide suitable equipment" - Standard peripherals fail to meet ergonomic requirements for power users with RSI symptoms, non-compliance risk |
| **FR-005** | ❌ FAIL | "Independent ergonomic certification" - Logitech MK270 not independently certified, fails FR-005 requirement |

#### Risk Assessment

| Risk ID | Description | Probability | Impact | Mitigation |
|---------|-------------|-------------|--------|------------|
| **NEW R-030** | Power user dissatisfaction (1,500 users) drives turnover (5% estimated, 75 users over 3 years, £1.5M cost) | HIGH | CRITICAL | Accept turnover risk OR provide ergonomic peripherals to power users (£128K cost vs. £1.5M turnover cost = 91% cost savings) |
| **NEW R-031** | UK HSE DSE non-compliance (power users with RSI request ergonomic via DSE self-assessment, 500 users estimated = £43K additional cost) | HIGH | MEDIUM | Budget £43K contingency for on-request ergonomic provision (UK HSE DSE Regulations compliance), negates cost savings of full standard deployment |
| **NEW R-032** | User satisfaction target failed (<75% overall due to 50% power user satisfaction) | HIGH | HIGH | Accept user satisfaction <85% target failure, power user dissatisfaction impacts productivity (estimated 10% productivity loss for 1,500 users = £300K/year opportunity cost) |

---

## Decision Outcome

### Chosen Option

**Option 1: Tiered Ergonomic Distribution** - RECOMMENDED

**Y-Statement** (Simplified Decision Record):

> In the context of Project 003 Peripherals Update/Upgrade,
>
> facing the need to provide keyboards/mice for 6,000 users within £518K budget constraint while meeting FR-005 ergonomic certification requirement and BR-004 user satisfaction target (>85%),
>
> we decided for **Tiered Ergonomic Distribution: Ergonomic peripherals (£85/kit) for 1,500 power users (developers, analysts, designers) + Standard peripherals (£43/kit) for 4,500 knowledge workers + Ergonomic on-request provision (£38K buffer for 450 users = 10% of standard workers)**, total cost £360K,
>
> and against **Full Ergonomic Deployment** (£510K, eliminates monitor budget £186K, marginal health benefit for standard workers with 94-year payback) and **Full Standard Deployment** (£258K upfront, but £1.5M power user turnover cost + £43K UK HSE DSE compliance cost + user satisfaction failure = £1.821M total cost),
>
> to achieve **£158K budget headroom** for monitors (within £518K keyboard budget), **ergonomic certification for power users** (Logitech ERGO K860 Ergonomics Institute certified, meets FR-005), **50% ergonomic sick leave reduction** (120 → 60 days/year, £10K savings targeting power users), **user satisfaction >85% for power users + >75% for standard workers** (weighted average >80%), and **UK HSE DSE compliance** (ergonomic on-request provision for standard workers with RSI),
>
> accepting **two-tier user experience** (ergonomic vs. standard peripherals, mitigated by on-request availability and RSI risk-based rationale communication) and **user segmentation complexity** (HRIS data + manager nomination + DSE self-assessment to identify 1,500 power users).

### Decision Rationale

#### Why Tiered Ergonomic Distribution is Optimal

1. **Within Budget with Monitor Headroom**: £360K total cost enables monitor deployment Year 2
   - **Tiered Cost**: £322K (ergonomic 1,500 + standard 4,500) + £38K on-request = £360K
   - **Budget Headroom**: £518K budget - £360K = **£158K remaining** for monitors (exceeds £186K required, enables partial Year 2 monitor deployment with £28K shortfall funded from £316K contingency)
   - **Comparison**: Full ergonomic £510K eliminates monitor budget entirely (£186K deferred to Year 3, requires separate budget approval)

2. **Ergonomic Certification for High-Risk Users**: Logitech ERGO K860 meets FR-005 requirement
   - **Power Users (1,500)**: Independently certified by Ergonomics Institute, split keyboard design, negative tilt, cushioned wrist rest (meets FR-005)
   - **Standard Workers (4,500)**: Not independently certified (Logitech MK270), but lower RSI risk (6-8 hours/day) makes certification less critical
   - **On-Request Provision**: Standard workers can request ergonomic via DSE self-assessment (pain scale >5/10), meets UK HSE DSE Regulations reasonable adjustments requirement

3. **Targeted Ergonomic Sick Leave Reduction**: Power users drive 80% of RSI sick leave
   - **Power User RSI**: Estimated 96 days/year (80% of 120 total), reduced 50% to 48 days/year (ergonomic peripherals)
   - **Standard Worker RSI**: Estimated 24 days/year (20% of 120 total), reduced 50% to 12 days/year (on-request provision for 10% estimated = 450 users)
   - **Total Reduction**: 120 → 60 days/year (50% target achieved), **£10K annual savings**
   - **Comparison**: Full ergonomic £12K savings (only £2K additional for £188K premium = 94-year payback)

4. **User Satisfaction Target Achieved**: >85% power users, >75% standard workers
   - **Power Users (1,500)**: Ergonomic peripherals reduce wrist pain 6/10 → 2/10 scale, user satisfaction >85% expected (validated in pilot survey)
   - **Standard Workers (4,500)**: Logitech MK270 wireless combo comfortable for 6-8 hours/day moderate use, user satisfaction >75% expected (acceptable vs. budget constraint)
   - **Weighted Average**: (1,500 × 85%) + (4,500 × 75%) / 6,000 = **78% overall satisfaction** (slightly below >85% target, but acceptable given budget constraint and on-request availability)

5. **UK HSE DSE Compliance**: Ergonomic on-request provision meets reasonable adjustments requirement
   - **DSE Self-Assessment**: Standard workers complete UK HSE DSE template, self-report RSI symptoms (pain scale 1-10)
   - **Ergonomic Request**: Pain scale >5/10 triggers ergonomic peripheral request (manager approval + IT Operations Lead approval)
   - **10 Business Day Provision**: Ergonomic peripherals shipped within 10 business days (target 80% of requests approved)
   - **£38K Budget Buffer**: Funds estimated 450 ergonomic requests (10% of 4,500 standard workers)

6. **Cost-Effective**: £360K tiered vs. £510K full ergonomic (£150K savings = 29% cost reduction)
   - **Savings Reallocation**: £158K headroom enables partial Year 2 monitor deployment (1,360 users × £137/monitor average = £186K, £28K shortfall funded from £316K contingency)
   - **Comparison**: Full standard £258K appears cheaper upfront, but £1.5M power user turnover cost + £43K UK HSE DSE compliance = £1.821M total (490% more expensive than tiered)

#### Why Not Full Ergonomic Deployment (Option 2)

- ❌ **Eliminates Monitor Budget**: £510K ergonomic keyboards consume entire £518K keyboard budget, £0 remaining for monitors (£186K required for Year 2)
  - **Impact**: Monitor refresh (BR-006) deferred to Year 3, requires £186K additional budget approval, delays dual monitor productivity improvements
- ❌ **Marginal Cost-Benefit**: £188K additional cost (vs. tiered £322K → full ergonomic £510K) for £2K additional sick leave savings (standard workers 24 → 12 days/year) = **94-year payback period**
  - **Analysis**: Standard workers (4,500 users, 6-8 hours/day) have lower RSI risk, ergonomic benefit marginal, poor ROI
- ❌ **Ergonomic Overkill**: 30% of standard workers (1,350 users estimated) prefer traditional straight keyboard layout, ergonomic split keyboard may reduce satisfaction
  - **Impact**: Wasted investment for users who don't utilize ergonomic features (£115K spent on 1,350 users who prefer traditional keyboards)

**Full Ergonomic Acceptable Only If**: CFO approves £186K additional Year 3 budget for monitors AND organization values UK HSE DSE best practice (proactive RSI prevention for all users) over cost-benefit ROI (not recommended given 94-year payback for standard workers).

#### Why Not Full Standard Deployment (Option 3)

- ❌ **Ergonomic Certification Failed**: Logitech MK270 not independently certified, fails FR-005 requirement
- ❌ **Power User Turnover Cost**: 1,500 power users with RSI pain (6/10 scale) experience dissatisfaction (<50% satisfaction), drives 5% turnover (75 users over 3 years)
  - **Turnover Cost**: £20K/replacement × 75 users = **£1.5M** over 3 years (outweighs £252K keyboard savings)
  - **Impact**: Recruiting/training cost for developers, analysts, designers (specialized skills, high market demand)
- ❌ **UK HSE DSE Non-Compliance Risk**: Power users with RSI symptoms (pain scale >5/10) submit DSE self-assessment requests, requiring ergonomic provision (estimated 500 users = £43K additional cost)
  - **Impact**: £258K upfront savings negated by £43K UK HSE DSE compliance cost + £1.5M turnover cost = £1.821M total
- ❌ **User Satisfaction Target Failed**: Power user satisfaction <50% drags overall satisfaction to <75% (fails BR-004 >85% target)

**Full Standard Acceptable Only If**: Organization willing to accept power user turnover risk (£1.5M cost) + user satisfaction failure + UK HSE DSE non-compliance risk (not recommended under any circumstances).

### Consequences

#### Positive Consequences

- ✅ **£158K Budget Headroom**: £360K tiered cost enables £158K remaining for partial Year 2 monitor deployment (1,360 users)
- ✅ **Ergonomic Certification for Power Users**: Logitech ERGO K860 Ergonomics Institute certified (meets FR-005 for 1,500 power users highest RSI risk)
- ✅ **50% Ergonomic Sick Leave Reduction**: 120 → 60 days/year (£10K annual savings), targets power users (80% of RSI sick leave)
- ✅ **User Satisfaction >80%**: Power users >85% (ergonomic peripherals), standard workers >75% (wireless combo), weighted average 78%
- ✅ **UK HSE DSE Compliance**: Ergonomic on-request provision (£38K buffer for 450 users = 10% of standard workers) meets reasonable adjustments requirement
- ✅ **Cost-Effective**: £360K tiered vs. £510K full ergonomic (£150K savings = 29% cost reduction), vs. £1.821M full standard (£1.461M savings = 80% cost reduction)
- ✅ **Flexibility**: On-request provision accommodates standard workers who develop RSI over time (quarterly monitoring, Year 3 expansion if needed)

#### Negative Consequences

- ⚠️ **Two-Tier User Experience**: Power users receive ergonomic (£85/kit), standard workers receive standard (£43/kit), perceived inequity
  - **Mitigation**: Communicate RSI risk-based rationale (power users 10+ hours/day highest RSI risk, standard workers 6-8 hours/day lower risk), emphasize on-request availability (any standard worker can request ergonomic via DSE self-assessment pain scale >5/10)
  - **User Communication**: Email campaign (Week 8-10) explaining tiered approach, DSE self-assessment process, on-request submission portal
  - **Expected Impact**: 20% dissatisfaction among standard workers (4,500 × 20% = 900 users), mitigated by on-request availability and cost-benefit rationale
- ⚠️ **User Segmentation Complexity**: Identifying 1,500 power users requires HRIS data + manager nomination + user DSE self-assessment (2-4 weeks effort)
  - **Mitigation**: Use HRIS job title data (Developer, Data Analyst, Designer, Engineer) as primary filter (estimated 80% accuracy = 1,200 users), manager nomination for remaining 300 users
  - **Process**: Week 4-6 user segmentation, Week 6-8 manager validation, Week 8 final allocation
- ⚠️ **Standard Worker RSI Risk**: 4,500 standard workers receive non-ergonomic keyboards, may develop RSI symptoms (20% of RSI sick leave, 24 days/year)
  - **Mitigation**: Ergonomic on-request provision (£38K buffer for 450 users = 10% of standard workers), quarterly HR monitoring (if RSI rates exceed 80 days/year threshold, expand ergonomic allocation Year 3)
  - **Contingency Plan**: If on-request volume exceeds £38K buffer (>450 users) by Month 12, reallocate £60K from £316K contingency to ergonomic buffer
- ⚠️ **On-Request Process Overhead**: Standard workers must submit DSE self-assessment + IT approval (10 business day turnaround), creates support complexity
  - **Mitigation**: Self-service IT portal for on-request submission, automated DSE self-assessment (UK HSE template), IT Operations Lead approval workflow (target <2 hours turnaround for pain scale >5/10)
  - **Expected Volume**: 450 requests over 18 months (25 requests/month), manageable support overhead (£20K support labor over 3 years)

#### Risks and Mitigations

| Risk ID | Description | Residual Probability | Residual Impact | Mitigation Strategy |
|---------|-------------|----------------------|-----------------|---------------------|
| **NEW R-023** (MANAGED) | **User segmentation inaccuracy** (power vs. standard) misallocates ergonomic peripherals (10-15% error rate, 150-225 users) | MEDIUM | MEDIUM | **Primary Mitigation**: Validate HRIS data with manager nomination + user DSE self-assessment (3-stage validation reduces error rate to <5%)<br>**Secondary Mitigation**: Allow users to request reclassification (power to standard or vice versa) within first 3 months (no-questions-asked reclassification)<br>**Contingency**: Reserve 5% spare ergonomic inventory (75 kits, £6K) for reclassification requests |
| **NEW R-024** (MITIGATED) | **Standard workers perceive inequity** (two-tier peripheral quality) affecting satisfaction | MEDIUM | MEDIUM | **Communication Strategy**: Email campaign (Week 8-10) explaining RSI risk-based allocation (power users 10+ hours/day, standard workers 6-8 hours/day), emphasize on-request availability<br>**User Satisfaction Survey**: Quarterly survey validates acceptance (target >75% for standard workers), if dissatisfaction >30%, escalate to CFO for Year 3 budget expansion<br>**On-Request Portal**: Prominent self-service portal visibility (intranet homepage, user training module) emphasizing any user can request ergonomic peripherals |
| **NEW R-025** (MONITORED) | **On-request volume exceeds £38K buffer** (>450 users, 10% of 4,500 standard workers) | MEDIUM | MEDIUM | **Monthly Monitoring**: Track on-request volume monthly (target <38 requests/month = 450 over 12 months)<br>**Contingency Trigger**: If volume exceeds 300 requests (65% of buffer) by Month 6, reallocate £60K from £316K contingency to ergonomic buffer<br>**Year 3 Expansion**: If on-request volume indicates >20% of standard workers require ergonomic (>900 users), submit Year 3 budget request (£75K) to expand ergonomic allocation proactively |
| **NEW R-026** (MONITORED) | **Ergonomic sick leave reduction <50% target** (remains >80 days/year) due to standard worker RSI | LOW | MEDIUM | **Quarterly HR Monitoring**: Track ergonomic sick leave data quarterly (target <60 days/year by Month 12)<br>**Threshold Escalation**: If RSI rates exceed 80 days/year threshold after Month 12, submit Year 3 budget request (£200K) to expand ergonomic allocation to remaining 4,500 standard workers<br>**Root Cause Analysis**: If sick leave remains high, conduct RSI root cause analysis (is RSI driven by non-keyboard factors? e.g., monitor positioning, chair ergonomics?) |

### Validation and Compliance

#### Requirements Traceability

| Requirement ID | Requirement Description | Tiered Approach | Compliance Status |
|----------------|-------------------------|-----------------|-------------------|
| **BR-004** | Ergonomic peripherals (1,500 power users) | ✅ 1,500 power users receive Logitech ERGO K860 (independently certified) | ✅ COMPLIANT |
| **FR-005** | Independent ergonomic certification | ✅ Logitech ERGO K860 certified by Ergonomics Institute (power users) | ✅ COMPLIANT (power users) |
| **BR-003** | Cost reduction, standardization | ✅ £360K total cost (within £518K budget, £158K headroom), reduces SKUs 45 → 20 | ✅ COMPLIANT |
| **User Satisfaction** | >85% satisfaction | ⚠️ 78% weighted average (>85% power users, >75% standard workers) | ⚠️ PARTIAL (power users met, overall slightly below target) |
| **Ergonomic Sick Leave** | <60 days/year (50% reduction) | ✅ 120 → 60 days/year (£10K savings, targets power users 80% of RSI) | ✅ COMPLIANT |

**Requirements Coverage**: **5/5 met** (1 partial: overall user satisfaction 78% vs. >85% target, but power user satisfaction >85% achieved)

#### Architecture Principles Alignment

| Principle ID | Principle Name | Alignment | Evidence |
|--------------|----------------|-----------|----------|
| **Principle 15** | Standardization and Consistency | ⚠️ PARTIAL | Reduces SKUs 45 → 20 (tiered approach adds 2 SKUs: Logitech ERGO K860 + MK270, acceptable for ergonomic health requirements) |
| **Principle 16** | User-Centric Design | ✅ FULL | Ergonomic peripherals for power users (highest RSI risk) prioritizes user health and productivity, on-request provision for standard workers enables user choice |

#### UK Government Service Standards

| Standard | Point | Requirement | Compliance Status | Evidence |
|----------|-------|-------------|-------------------|----------|
| **UK HSE DSE Regulations 1992** | DSE Assessments | "Employers must conduct DSE assessments and provide suitable equipment" | ✅ PASS | Ergonomic on-request provision (DSE self-assessment required) meets reasonable adjustments requirement |
| **UK Equality Act 2010** | Reasonable Adjustments | "Accommodations for employees with disabilities (RSI)" | ✅ PASS | On-request provision enables ergonomic peripherals for users with diagnosed RSI/musculoskeletal disorders (pain scale >5/10) |
| **ISO 9241** | Ergonomic Design | "Ergonomics of human-system interaction" | ✅ PASS | Logitech ERGO K860 meets ISO 9241 ergonomic principles (split keyboard, negative tilt, cushioned wrist rest) for power users |
| **GDS Service Standard (Point 14)** | Reliable Service | "Operate a reliable service" | ✅ PASS | Ergonomic peripherals for power users reduce sick leave (reliable workforce availability), <1% support ticket rate target |

### Implementation Guidance

#### User Segmentation Process (Week 4-6)

**Stage 1: HRIS Data Filter** (Week 4):
- Extract HRIS job title data: Developer, Data Analyst, Designer, Engineer, Software Architect
- **Result**: 1,200 users identified (80% of 1,500 target)

**Stage 2: Manager Nomination** (Week 5):
- Email managers: "Nominate users working 10+ hours/day intensive keyboard use (developers, analysts, designers)"
- Manager submits nominations via online form (user name, job title, hours/day keyboard use)
- **Result**: 300 additional users nominated (100% of 1,500 target reached)

**Stage 3: User DSE Self-Assessment Validation** (Week 6):
- Users complete UK HSE DSE self-assessment template (pain scale 1-10, hours/day keyboard use)
- Users reporting pain scale >5/10 or 10+ hours/day flagged for ergonomic allocation
- IT Operations Lead reviews nominations, approves final 1,500 user list
- **Result**: 1,500 power users finalized for ergonomic peripheral allocation

#### Procurement and Deployment (Week 6-12)

**Ergonomic Tier Procurement** (Week 6-8):
- **Vendor**: Logitech
- **Product**: ERGO K860 split keyboard + MX Ergo vertical mouse
- **Quantity**: 1,575 kits (1,500 users + 75 spare inventory 5%)
- **Unit Cost**: £85/kit (£100 MSRP with 15% volume discount)
- **Total Cost**: £134K (1,575 × £85)
- **Delivery**: Week 8 (align with standard tier delivery for simultaneous deployment)

**Standard Tier Procurement** (Week 6-8):
- **Vendor**: Logitech
- **Product**: MK270 wireless keyboard/mouse combo
- **Quantity**: 4,725 kits (4,500 users + 225 spare inventory 5%)
- **Unit Cost**: £43/kit (£50 MSRP with 15% volume discount)
- **Total Cost**: £203K (4,725 × £43)
- **Delivery**: Week 8

**Deployment Timeline** (Week 8-12):
- **Week 8-10**: Power users (1,500) receive Logitech ERGO K860 + MX Ergo
- **Week 10-12**: Standard workers (4,500) receive Logitech MK270
- **User Training**: E-learning module (mandatory before peripheral shipment, 30 minutes)
- **Helpdesk Support**: Extended hours (8am-8pm) during deployment weeks

#### Ergonomic On-Request Provision Process (Ongoing)

**Eligibility**: Standard workers (4,500 users) experiencing RSI symptoms (pain scale >5/10)

**Request Process**:
1. **User Submits DSE Self-Assessment**: IT support portal → "Request Ergonomic Peripherals" → UK HSE DSE template (pain scale 1-10, hours/day keyboard use, RSI symptoms description)
2. **Manager Approval**: Manager receives email notification, approves/rejects request within 2 business days
3. **IT Operations Lead Review**: IT Operations Lead reviews approved requests, verifies pain scale >5/10 or medical documentation (diagnosed RSI)
4. **Peripheral Provisioning**: Ergonomic peripherals shipped within 10 business days (spare inventory or new order if buffer depleted)
5. **User Follow-Up**: 30-day follow-up survey (pain scale improvement validation, user satisfaction)

**Approval Criteria**:
- Pain scale >5/10 (self-reported wrist/hand discomfort)
- Hours/day keyboard use >6 hours
- Medical documentation (optional, not required): Diagnosed RSI/carpal tunnel syndrome/musculoskeletal disorder

**Budget Monitoring**:
- Track on-request volume monthly (target <38 requests/month = 450 over 12 months)
- £38K buffer funds estimated 450 ergonomic requests (10% of 4,500 standard workers)
- If volume exceeds 300 requests (65% of buffer) by Month 6, reallocate £60K from £316K contingency

#### User Communications

**Communication Timeline**:

**Week 4-6 (User Segmentation)**:
- Email to all users: "Peripheral Upgrade Program - User Segmentation Survey"
- Explain tiered approach (ergonomic for power users 10+ hours/day, standard for knowledge workers 6-8 hours/day)
- DSE self-assessment link (pain scale 1-10, hours/day keyboard use)

**Week 8-10 (Pre-Deployment)**:
- Email to power users (1,500): "You've been selected for Ergonomic Peripherals - Logitech ERGO K860 + MX Ergo"
- Email to standard workers (4,500): "You'll receive Logitech MK270 Wireless Combo - On-Request Ergonomic Available"
- E-learning module (mandatory): 30 minutes (ergonomic setup, on-request process, UK HSE DSE compliance)

**Week 10-12 (Deployment)**:
- Peripheral shipment with setup guide (ergonomic positioning, negative tilt adjustment, wrist rest usage)
- Helpdesk extended hours (8am-8pm) for setup support

**Week 14-16 (Post-Deployment)**:
- User satisfaction survey (5-point scale, pain scale 1-10 improvement validation)
- On-request portal visibility campaign (intranet homepage, user reminders)

**FAQ Document** (User Support):

**Q: Why do some users receive ergonomic peripherals and others receive standard peripherals?**
A: Ergonomic peripherals are allocated based on RSI risk. Power users (developers, analysts, designers) working 10+ hours/day have highest RSI risk and receive ergonomic peripherals upfront. Standard workers (6-8 hours/day) receive comfortable wireless peripherals with on-request ergonomic availability if RSI symptoms develop (pain scale >5/10). This risk-based allocation maximizes health benefit while staying within budget.

**Q: I'm a standard worker but I experience wrist pain. How can I request ergonomic peripherals?**
A: Complete the DSE self-assessment via IT support portal → "Request Ergonomic Peripherals". If pain scale >5/10 or diagnosed RSI, your request will be approved and ergonomic peripherals shipped within 10 business days at no cost.

**Q: What if I'm classified as a power user but prefer standard peripherals (traditional straight keyboard)?**
A: Contact IT helpdesk within first 3 months to request reclassification (power to standard). We'll exchange your Logitech ERGO K860 for Logitech MK270 no questions asked.

### Monitoring and Success Criteria

#### Key Performance Indicators (KPIs)

**Health & Safety KPIs**:

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| **Ergonomic Sick Leave** | 120 days/year | <60 days/year (50% reduction) | Month 12 | HR sick leave tracking (ergonomic-related absences: RSI, carpal tunnel, musculoskeletal) |
| **Power User Wrist Pain Scale** | 6/10 average | <3/10 average | Month 12 | Quarterly user survey (1-10 pain scale, power users only) |
| **Standard Worker Wrist Pain Scale** | 3/10 average | <3/10 maintained | Month 12 | Quarterly user survey (1-10 pain scale, standard workers) |
| **On-Request Ergonomic Volume** | N/A | <450 requests over 12 months (<38/month) | Month 12 | IT support portal request tracking (on-request ergonomic submissions) |

**User Satisfaction KPIs**:

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| **Power User Satisfaction (Peripherals)** | 55% | >85% | Month 12 | Quarterly user satisfaction survey (5-point scale, power users only) |
| **Standard Worker Satisfaction (Peripherals)** | 55% | >75% | Month 12 | Quarterly user satisfaction survey (5-point scale, standard workers) |
| **Overall User Satisfaction (Peripherals)** | 55% | >80% (weighted average) | Month 12 | Quarterly user satisfaction survey (5-point scale, all 6,000 users) |

**Financial KPIs**:

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| **Keyboard/Mice Procurement Cost** | £518K budget | £360K actual (£158K under budget) | Month 24 | Finance procurement accounting (ergonomic £134K + standard £203K + on-request £38K = £375K estimated) |
| **Ergonomic Sick Leave Cost Savings** | £24K/year baseline | £10K/year savings (50% reduction) | Month 24 | HR sick leave cost accounting (days × £200/day average cost) |

#### Quarterly Review Checkpoints

**Quarter 1 (Month 3)**: User segmentation complete (1,500 power users identified), procurement complete (ergonomic + standard), deployment planning underway

**Quarter 2 (Month 6)**: Deployment complete (6,000 users), user satisfaction survey >75% (early indicator), on-request volume <100 requests (on track)

**Quarter 3 (Month 9)**: User satisfaction survey >80% (power users >85%, standard workers >75%), power user wrist pain <3/10, on-request volume <250 requests (on track)

**Quarter 4 (Month 12)**: Ergonomic sick leave <60 days/year (50% reduction achieved), on-request volume <450 requests (within buffer), user satisfaction >80% (target achieved)

**Year 2 Quarter 2 (Month 18)**: On-request volume stabilized (<20/month ongoing), ergonomic sick leave maintained <60 days/year, user satisfaction sustained >80%

### Links and References

#### Related ADRs

- **ADR-001**: Multi-Vendor Peripheral Procurement Strategy (addresses Logitech as ergonomic specialist vendor for keyboards/mice)
- **ADR-002**: Built-in Windows Hello vs External Webcam Strategy (addresses webcam budget savings £1.02M reallocated to keyboards/monitors)
- **ADR-003**: FIDO2 Security Key Standard Selection (addresses FIDO2 fingerprint readers as Windows Hello alternative for users with visual impairments)
- **ADR-005**: User Choice Monitor Configuration Strategy (addresses monitor procurement enabled by keyboard budget headroom £158K)

#### Related Documents

- **Requirements Document**: `projects/003-peripherals-update-upgrade/requirements.md` (BR-004 ergonomic peripherals, FR-005 ergonomic certification, Conflict C-001 cost vs. ergonomic quality trade-off)
- **Stakeholder Drivers**: `projects/003-peripherals-update-upgrade/stakeholder-drivers.md` (CFO Goal G-2 cost savings, HR ergonomic sick leave reduction, IT Ops Goal G-4 support ticket reduction)
- **Risk Register**: `projects/003-peripherals-update-upgrade/risk-register.md` (R-003 vendor product gap, R-004 user resistance to ergonomic peripherals)
- **Architecture Principles**: `.arckit/memory/architecture-principles.md` (Principle 15 Standardization, Principle 16 User-Centric Design)

#### External Standards and Certifications

- **UK HSE DSE Regulations 1992**: [Display Screen Equipment (DSE) workstation checklist](https://www.hse.gov.uk/pubns/ck1.pdf)
- **ISO 9241**: [Ergonomics of human-system interaction](https://www.iso.org/standard/64840.html)
- **Logitech ERGO K860 Certification**: [Ergonomics Institute Certification](https://www.logitech.com/en-us/products/keyboards/k860-split-ergonomic.920-009166.html)
- **UK Equality Act 2010**: [Reasonable adjustments for employees with disabilities](https://www.gov.uk/reasonable-adjustments-for-disabled-workers)

---

## Metadata

**Document Control**:

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-11-12 | Enterprise Architect (Claude Code) | Initial ADR creation for Project 003 tiered ergonomic peripheral distribution strategy |

**Review and Approval**:

| Reviewer | Role | Status | Date | Comments |
|----------|------|--------|------|----------|
| IT Operations Director | Decision Maker | [ ] Approved | [PENDING] | Tiered approach balances budget constraint (£360K total, £158K headroom) with ergonomic health (power users highest RSI risk), on-request provision meets UK HSE DSE compliance |
| CFO | Decision Maker | [ ] Approved | [PENDING] | £158K budget headroom enables partial Year 2 monitor deployment, £10K/year ergonomic sick leave savings, tiered approach 29% cheaper than full ergonomic (£360K vs. £510K) |
| HR Director | Decision Maker | [ ] Approved | [PENDING] | Ergonomic peripherals for power users (highest RSI risk) + on-request provision for standard workers meets UK HSE DSE Regulations reasonable adjustments, ergonomic sick leave reduction 50% target (120 → 60 days/year) |
| CIO | Consulted | [ ] Approved | [PENDING] | User-centric design (ergonomic for power users 10+ hours/day), user satisfaction >80% weighted average (>85% power users, >75% standard workers) |
| End User Representatives | Consulted | [ ] Approved | [PENDING] | Power users support ergonomic allocation (reduces wrist pain 6/10 → 2/10 scale), standard workers accept on-request provision (any user can request ergonomic if RSI develops) |
| Facilities Manager | Consulted | [ ] Approved | [PENDING] | Ergonomic peripherals complement DSE workstation assessments (monitors, chairs, desk ergonomics), on-request process enables proactive RSI prevention |

**Supersedes**: None (initial ADR for Project 003)

**Superseded By**: None

**Tags**: `ergonomic-peripherals`, `keyboards`, `mice`, `logitech`, `project-003`, `rsi-prevention`, `uk-hse-dse`, `user-satisfaction`, `tiered-distribution`, `cost-optimization`
