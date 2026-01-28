# ADR-005: User Choice Monitor Configuration Strategy

**Status**: Accepted
**Date**: 2025-11-12
**Decision Makers**: IT Operations Director, CFO, Facilities Manager
**Consulted**: CISO, HR Director, End Users (survey feedback)
**Informed**: IT Operations Team, Procurement Manager, All Staff

---

## Context and Problem Statement

Project 003 (Peripherals Update and Upgrade) requires a comprehensive monitor refresh for **1,360 users** over a two-year phased deployment (Year 1: 680 users, Year 2: 680 users) to replace aging monitors that no longer meet ergonomic standards or modern productivity requirements. The Windows 11 Transformation Programme recognizes that effective display configuration significantly impacts knowledge worker productivity, user satisfaction, and workspace utilization.

**Current State**: Users have legacy 20-22" monitors (5-8 years old) with inconsistent resolutions (1600×900 to 1920×1080), causing ergonomic complaints (28% of users reporting eye strain, 19% reporting neck pain), reduced productivity (frequent window switching and context loss), and aging hardware failures (8% annual failure rate).

**Business Context**: The organisation supports diverse knowledge workers with varying display requirements:
- **Power Users** (1,500 users): Software developers, data analysts, financial modelers requiring extensive screen real estate for multi-application workflows
- **Knowledge Workers** (3,500 users): Administrative staff, managers, project coordinators with moderate multi-tasking requirements
- **Specialized Roles** (1,000 users): Design professionals, video editors, GIS analysts with specific ultrawide or color accuracy needs

**Technical Context**: Modern Windows 11 supports native scaling for high-resolution displays (125%-200% DPI scaling), virtual desktop management (Windows 11 Snap Layouts, Snap Groups), and mixed display configurations. Dell provides a range of business-class monitors with USB-C connectivity, integrated hubs, and ergonomic stands compatible with the Dell Latitude 7440 laptops deployed in Project 001.

**Architecture Principles (from `.arckit/memory/architecture-principles.md`)**:
- **Principle 1: Zero Trust Security** - Monitors must support secure USB-C connectivity with data encryption, preventing peripheral-based attacks
- **Principle 3: Hardware Readiness** - Monitor selection must meet Windows 11 optimal display specifications (1920×1080 minimum resolution, USB-C connectivity, 60Hz refresh rate)
- **Principle 8: Data-Driven Decision Making** - Monitor configuration choice should be informed by user workspace assessments and productivity data
- **Principle 15: Standardization** - While allowing user choice, standardize on Dell monitor models for procurement efficiency and support consistency
- **Principle 17: Continuous Improvement** - Monitor deployment should include post-implementation productivity surveys and iterative adjustments

**Key Requirements**:
- **BR-006**: Provide dual 24" monitors OR single 34" ultrawide monitors for 1,360 users with user choice based on workspace suitability
- **FR-006**: Monitors must have USB-C connectivity with 65W Power Delivery, integrated USB hub, ergonomic height/tilt/swivel adjustment
- **NFR-P-002**: Monitor deployment must improve user-reported productivity by >20% (measured via post-implementation survey)
- **NFR-U-001**: User satisfaction with monitor configuration must be >85%

**Requirement Conflict C-003 (Cost vs. User Preference vs. Workspace Constraints)**:
- **Conflict**: Power users strongly prefer dual 24" monitors for multi-application workflows (70% preference in initial survey), while some users prefer single 34" ultrawide monitors for immersive focus and desk space efficiency (30% preference). However, not all workspaces can accommodate dual 24" setups (requires >120cm desk width), and budget constraints limit full user choice deployment.
- **Resolution Strategy**: USER CHOICE WITH WORKSPACE ASSESSMENT (Option 3) - Provide users with choice between dual 24" or single 34" ultrawide based on workspace assessment and user preference survey, with default to dual 24" if workspace permits and user does not respond.

---

## Decision Drivers

| Priority | Decision Driver | Rationale |
|---|---|---|
| **Critical** | **User Productivity Impact** | Monitor configuration directly impacts knowledge worker productivity. Studies show 20-30% productivity improvement with optimal dual monitor or ultrawide setups. |
| **Critical** | **Budget Constraint** | Monitor procurement must fit within available budget (£186K from keyboard headroom + contingency). Exceeding budget requires executive re-approval. |
| **Critical** | **Workspace Physical Constraints** | Not all desks can accommodate dual 24" monitors (requires >120cm width). Facilities assessment indicates 15% of desks are 100-120cm width, unable to support dual setup. |
| **High** | **User Satisfaction and Choice** | Mandating a single monitor configuration without user input risks resistance and low satisfaction. User choice increases adoption. |
| **High** | **Ergonomic Compliance** | UK HSE DSE Regulations 1992 require display screen equipment to reduce eye strain, neck pain, and postural issues. Monitors must meet ISO 9241 ergonomic standards. |
| **High** | **IT Support Complexity** | Supporting two monitor configurations (dual 24" vs. ultrawide 34") increases support complexity vs. single standardized configuration. |
| **Medium** | **Procurement Efficiency** | Standardizing on Dell monitors leverages existing vendor relationship (ADR-001), simplifies warranty management, and enables volume pricing. |
| **Medium** | **Future Scalability** | Monitor strategy should accommodate future expansions (Project 003 covers 1,360 users Year 1-2, but organisation has 6,000 total users). |

### Stakeholder Perspectives

| Stakeholder | Primary Concern | Position |
|---|---|---|
| **End Users (Power Users)** | Screen real estate for multi-application workflows | Strongly prefer dual 24" (70% survey preference) |
| **End Users (Knowledge Workers)** | Desk space efficiency, simplicity | Moderate preference for ultrawide 34" (45% survey preference) |
| **IT Operations Director** | Support complexity, procurement efficiency | Prefers single configuration but accepts user choice if budget permits |
| **CFO** | Budget constraint, cost-benefit optimization | Requires monitor strategy to fit £186K budget |
| **Facilities Manager** | Workspace physical constraints, desk space | Identifies 15% of desks cannot accommodate dual 24" setup (100-120cm width) |
| **HR Director** | User satisfaction, change management | Supports user choice approach to maximize satisfaction |
| **CISO** | Security (USB-C connectivity, firmware updates) | Requires Dell commercial monitors with SecureBoot firmware validation |

---

## Options Considered

### Option 1: Dual 24" Monitors for All Users

**Implementation Approach**:
- **Product Selection**: Dell P2425H 24" FHD monitor (1920×1080, IPS, USB-C with 65W PD)
- **Quantity**: 2,720 monitors (1,360 users × 2 monitors per user)
- **Deployment**: Year 1: 1,360 monitors (680 users), Year 2: 1,360 monitors (680 users)
- **Configuration**: Side-by-side landscape orientation, extended desktop mode (Windows 11 Snap Layouts)
- **Workspace Requirements**: Minimum 120cm desk width (2 × 54cm monitor width + 12cm gap for bezels/ergonomics)

**Product Specifications (Dell P2425H)**:
- **Display**: 24" IPS, 1920×1080 (92 PPI), 16:9 aspect ratio, 250 cd/m² brightness, 1000:1 contrast
- **Connectivity**: USB-C with 65W Power Delivery, DisplayPort 1.4, HDMI 1.4, USB 3.2 Gen 1 hub (4 ports)
- **Ergonomics**: Height-adjustable stand (150mm travel), tilt (-5° to +21°), swivel (±45°), pivot (90° portrait mode)
- **Security**: Dell Display Manager firmware updates, Kensington lock slot
- **Warranty**: 3-year Advanced Exchange Service with Premium Panel Guarantee (zero bright pixel guarantee)
- **Price**: £180 per monitor (Dell corporate pricing)

**Pros**:
- ✅ **User Preference Alignment**: 70% of power users prefer dual monitors for multi-application workflows (survey feedback)
- ✅ **Application Windowing Flexibility**: Physical monitor boundaries provide natural window organization (e.g., code editor on left, documentation on right)
- ✅ **Proven Productivity Model**: Industry research shows 20-50% productivity improvement for dual monitor setups (Jon Peddie Research 2020)
- ✅ **Cost-Effective per Monitor**: £180 per 24" monitor vs. £400-500 for 34" ultrawide
- ✅ **Standardized Support**: Single monitor model simplifies spare inventory (10% buffer = 272 spare monitors)

**Cons**:
- ❌ **Workspace Physical Constraints**: 15% of desks (204 users) cannot accommodate dual 24" setup (100-120cm desk width insufficient)
- ❌ **Higher Total Cost**: 2,720 monitors × £180 = £489,600 total cost (exceeds £186K budget by £303,600)
- ❌ **Bezel Gap Disruption**: Physical gap between monitors (2-5mm per bezel = 4-10mm total) disrupts visual continuity for applications spanning both displays
- ❌ **User Preference Mismatch**: 30% of users prefer ultrawide for immersive focus (ignores user choice)
- ❌ **Desk Cable Management**: Dual monitors require two USB-C cables or daisy-chaining (DisplayPort MST), increasing setup complexity

**Cost Analysis (3-Year TCO)**:

| Cost Component | Year 1 (680 users) | Year 2 (680 users) | Year 3 (Operations) | Total 3-Year TCO |
|---|---|---|---|---|
| **Procurement** | 1,360 monitors × £180 = £244,800 | 1,360 monitors × £180 = £244,800 | £0 | **£489,600** |
| **Warranty Renewal** | £0 (3-year warranty included) | £0 | 2,720 monitors × £18 = £48,960 | **£48,960** |
| **Spare Inventory** | 136 monitors × £180 = £24,480 | £0 (Year 1 buffer sufficient) | 27 monitors × £180 = £4,860 replacement | **£29,340** |
| **Support Labor** | 680 setups × 0.5 hours × £40/hour = £13,600 | 680 setups × 0.5 hours × £40/hour = £13,600 | 8% failure × 2,720 monitors × 0.25 hours × £40/hour = £21,760 | **£48,960** |
| **Desk Space Mitigation** | 204 users (15%) × £150 desk upgrade = £30,600 | £0 | £0 | **£30,600** |
| **TOTAL 3-YEAR TCO** | **£313,480** | **£258,400** | **£75,580** | **£647,460** |

**UK Government Compliance**:
- **GDS Service Standard (Point 9: Create a Secure Service)**: Dell P2425H supports SecureBoot firmware validation (NIST SP 800-147B)
- **Technology Code of Practice (Point 5: Make Things Accessible)**: IPS panel provides 178° viewing angles for accessibility, height-adjustable stand meets UK Equality Act 2010
- **NCSC Cyber Security Principles (Principle 4: Protect Data in Transit)**: USB-C connectivity uses encrypted DisplayPort Alt Mode over USB-C (AES-128)

**Risk Assessment**:
- **Risk R-006 (NEW): Workspace Incompatibility** - 15% of desks (204 users) cannot accommodate dual 24" setup, requiring desk upgrades (£30,600 cost) or alternative monitor configuration (user dissatisfaction). **Mitigation**: Pre-deployment workspace assessment identifies incompatible desks, alternative ultrawide offered to affected users.

---

### Option 2: Single 34" Ultrawide Monitors for All Users

**Implementation Approach**:
- **Product Selection**: Dell U3425WE 34" WQHD ultrawide curved monitor (3440×1440, IPS, USB-C with 90W PD)
- **Quantity**: 1,360 monitors (1 monitor per user)
- **Deployment**: Year 1: 680 monitors (680 users), Year 2: 680 monitors (680 users)
- **Configuration**: Single landscape orientation, Windows 11 Snap Layouts with 3-4 application zones
- **Workspace Requirements**: Minimum 90cm desk width (80cm monitor width + 10cm gap for ergonomics)

**Product Specifications (Dell U3425WE)**:
- **Display**: 34" IPS curved (1900R), 3440×1440 (110 PPI), 21:9 aspect ratio, 300 cd/m² brightness, 1000:1 contrast
- **Connectivity**: USB-C with 90W Power Delivery (Thunderbolt 4), DisplayPort 1.4, HDMI 2.0, USB 3.2 Gen 2 hub (4 ports), RJ45 Ethernet
- **Ergonomics**: Height-adjustable stand (130mm travel), tilt (-5° to +21°), swivel (±30°)
- **Color Accuracy**: 99% sRGB, factory color calibration, Delta E <2
- **Security**: Dell Display Manager firmware updates, Kensington lock slot, USB-C host authentication
- **Warranty**: 3-year Advanced Exchange Service with Premium Panel Guarantee
- **Price**: £480 per monitor (Dell corporate pricing, estimated based on market rates)

**Pros**:
- ✅ **Workspace Efficiency**: Single monitor requires only 90cm desk width (fits 100% of desks, including 15% of desks that cannot accommodate dual 24")
- ✅ **Seamless Visual Continuity**: No bezel gap, providing uninterrupted visual experience for applications spanning full width (e.g., video editing timelines, financial spreadsheets)
- ✅ **Higher Resolution**: 3440×1440 (3.7M pixels) vs. 1920×1080×2 (4.1M pixels) provides 90% of dual monitor screen real estate with 28% higher pixel density (110 PPI vs. 92 PPI)
- ✅ **Simplified Cable Management**: Single USB-C cable provides display, power (90W), USB hub, and Ethernet (vs. two cables for dual monitors)
- ✅ **Immersive Focus**: 21:9 aspect ratio provides cinematic viewing experience, preferred by video editors, designers, and users requiring immersive focus

**Cons**:
- ❌ **User Preference Mismatch**: 70% of power users prefer dual monitors for application windowing flexibility (ultrawide mandates software-based Snap Layouts)
- ❌ **Higher Per-Unit Cost**: £480 per ultrawide vs. £360 per dual 24" setup (33% higher)
- ❌ **Total Cost Budget Overrun**: 1,360 monitors × £480 = £652,800 (exceeds £186K budget by £466,800)
- ❌ **Application Compatibility**: Some legacy applications do not support 21:9 aspect ratio, displaying black bars or stretched images
- ❌ **Peripheral Vision Fatigue**: 34" ultrawide requires head turning to view left/right edges, causing neck strain for users with static desk positions (ergonomic research: optimal viewing angle <30° from center)

**Cost Analysis (3-Year TCO)**:

| Cost Component | Year 1 (680 users) | Year 2 (680 users) | Year 3 (Operations) | Total 3-Year TCO |
|---|---|---|---|---|
| **Procurement** | 680 monitors × £480 = £326,400 | 680 monitors × £480 = £326,400 | £0 | **£652,800** |
| **Warranty Renewal** | £0 (3-year warranty included) | £0 | 1,360 monitors × £48 = £65,280 | **£65,280** |
| **Spare Inventory** | 68 monitors × £480 = £32,640 | £0 (Year 1 buffer sufficient) | 14 monitors × £480 = £6,720 replacement | **£39,360** |
| **Support Labor** | 680 setups × 0.33 hours × £40/hour = £8,976 | 680 setups × 0.33 hours × £40/hour = £8,976 | 6% failure × 1,360 monitors × 0.25 hours × £40/hour = £8,160 | **£26,112** |
| **Desk Space Savings** | £0 (no desk upgrades required) | £0 | £0 | **£0** |
| **TOTAL 3-YEAR TCO** | **£368,016** | **£335,376** | **£80,160** | **£783,552** |

**UK Government Compliance**:
- **GDS Service Standard (Point 9: Create a Secure Service)**: Dell U3425WE supports USB-C host authentication (USB-C PD 3.1 authentication protocol)
- **Technology Code of Practice (Point 5: Make Things Accessible)**: IPS curved panel reduces glare, height-adjustable stand meets UK Equality Act 2010
- **NCSC Cyber Security Principles (Principle 4: Protect Data in Transit)**: Thunderbolt 4 USB-C connectivity uses encrypted DisplayPort Alt Mode with AES-128

**Risk Assessment**:
- **Risk R-007 (NEW): User Adoption Resistance** - 70% of power users prefer dual monitors, mandating ultrawide risks user dissatisfaction (<85% satisfaction target) and productivity dips. **Mitigation**: Not applicable if ultrawide mandated (risk acceptance required).

---

### Option 3: User Choice with Workspace Assessment (RECOMMENDED)

**Implementation Approach**:
- **User Preference Survey**: 8 weeks before deployment, users complete survey indicating preference (dual 24" vs. ultrawide 34") with pros/cons decision guide
- **Workspace Assessment**: Facilities team measures desk width and verifies workspace suitability for selected configuration (dual 24" requires >120cm, ultrawide 34" requires >90cm)
- **Default Configuration**: If user does not respond within 2 weeks, default to dual 24" if workspace permits (>120cm desk), otherwise default to ultrawide 34"
- **Product Mix (Estimated)**:
  - **70% Dual 24"** (952 users): 1,904 Dell P2425H monitors
  - **30% Ultrawide 34"** (408 users): 408 Dell U3425WE monitors
- **Deployment Phasing**:
  - **Year 1**: 680 users (476 dual 24" = 952 monitors, 204 ultrawide 34")
  - **Year 2**: 680 users (476 dual 24" = 952 monitors, 204 ultrawide 34")

**Product Mix Rationale**:
- Initial user survey (conducted Q3 2024) showed 70% preference for dual 24" (power users, administrative staff) and 30% preference for ultrawide 34" (designers, video editors, users with constrained desk space)
- Facilities assessment identified 15% of desks (204 users) with 100-120cm width unable to accommodate dual 24", recommending ultrawide 34" for these users
- Estimated split: 70% dual / 30% ultrawide aligns with survey preference and workspace constraints

**Pros**:
- ✅ **User Satisfaction**: User choice approach maximizes satisfaction by aligning monitor configuration with individual preferences (target >85% satisfaction)
- ✅ **Workspace Compatibility**: Pre-deployment workspace assessment ensures 100% of users receive compatible configuration (no forced desk upgrades)
- ✅ **Productivity Optimization**: Users select configuration optimized for their workflow (developers choose dual for code/docs, designers choose ultrawide for immersive editing)
- ✅ **Budget Optimization**: Mixed product approach reduces total cost vs. ultrawide-only deployment (£426,240 vs. £652,800)
- ✅ **Flexibility for Future Changes**: If user needs change (e.g., role change from developer to designer), monitor configuration can be swapped during annual refresh cycle

**Cons**:
- ❌ **Increased Support Complexity**: IT team must support two monitor configurations (dual 24" vs. ultrawide 34"), requiring dual training and spare inventory for both models
- ❌ **Survey Administration Overhead**: Requires 8-week lead time for user survey, workspace assessment, and configuration assignment
- ❌ **Procurement Complexity**: Two product SKUs complicate ordering, inventory management, and warranty tracking vs. single standardized configuration
- ❌ **Potential User Regret**: 10-15% of users may regret initial choice after 6 months, requiring monitor swaps (additional support burden)

**Cost Analysis (3-Year TCO)**:

| Cost Component | Year 1 (680 users) | Year 2 (680 users) | Year 3 (Operations) | Total 3-Year TCO |
|---|---|---|---|---|
| **Procurement (Dual 24")** | 952 monitors × £180 = £171,360 | 952 monitors × £180 = £171,360 | £0 | **£342,720** |
| **Procurement (Ultrawide 34")** | 204 monitors × £480 = £97,920 | 204 monitors × £480 = £97,920 | £0 | **£195,840** |
| **Total Procurement** | **£269,280** | **£269,280** | **£0** | **£538,560** |
| **Warranty Renewal (Dual 24")** | £0 | £0 | 1,904 monitors × £18 = £34,272 | **£34,272** |
| **Warranty Renewal (Ultrawide 34")** | £0 | £0 | 408 monitors × £48 = £19,584 | **£19,584** |
| **Total Warranty Renewal** | **£0** | **£0** | **£53,856** | **£53,856** |
| **Spare Inventory (Dual 24")** | 95 monitors × £180 = £17,100 | £0 | 19 monitors × £180 = £3,420 | **£20,520** |
| **Spare Inventory (Ultrawide 34")** | 20 monitors × £480 = £9,600 | £0 | 4 monitors × £480 = £1,920 | **£11,520** |
| **Total Spare Inventory** | **£26,700** | **£0** | **£5,340** | **£32,040** |
| **Support Labor (Dual 24")** | 476 setups × 0.5 hours × £40/hour = £9,520 | 476 setups × 0.5 hours × £40/hour = £9,520 | 8% × 1,904 monitors × 0.25 hours × £40/hour = £15,232 | **£34,272** |
| **Support Labor (Ultrawide 34")** | 204 setups × 0.33 hours × £40/hour = £2,692 | 204 setups × 0.33 hours × £40/hour = £2,692 | 6% × 408 monitors × 0.25 hours × £40/hour = £2,448 | **£7,832** |
| **Total Support Labor** | **£12,212** | **£12,212** | **£17,680** | **£42,104** |
| **Survey & Assessment** | £6,800 (170 hours × £40/hour) | £6,800 (170 hours × £40/hour) | £0 | **£13,600** |
| **User Regret Swaps** | £0 (swaps occur Year 2) | 10% × 680 users × 1 hour × £40/hour = £2,720 | 68 users × 1 hour × £40/hour = £2,720 | **£5,440** |
| **TOTAL 3-YEAR TCO** | **£314,992** | **£288,292** | **£79,316** | **£682,600** |

**Budget Reconciliation**:

| Budget Source | Amount | Notes |
|---|---|---|
| **Keyboard Budget Headroom** (from ADR-004) | £158,000 | Keyboard budget £518K - actual cost £360K |
| **Contingency Allocation** | £50,000 | From £316K project contingency |
| **Total Monitor Budget Available** | **£208,000** | |
| **Year 1 Monitor Procurement** | £269,280 | 70% dual 24" + 30% ultrawide 34% |
| **Budget Shortfall** | **-£61,280** | Requires budget reallocation or phased deployment |

**Budget Shortfall Mitigation Strategies**:
1. **Reduce Ultrawide Mix**: Reduce ultrawide allocation from 30% to 20% (136 users), saving £32,640, reducing shortfall to -£28,640
2. **Phased Year 1 Deployment**: Deploy 600 users Year 1 (instead of 680), deferring 80 users to Year 2, saving £31,680, reducing shortfall to -£29,600
3. **Request Additional Contingency**: Request additional £61,280 from £316K contingency (19% of contingency, reasonable for critical productivity improvement)

**RECOMMENDED MITIGATION**: **Strategy 3 (Request Additional Contingency)** - Monitor refresh is a high-priority productivity improvement (20-30% productivity gain) justifying the additional £61,280 contingency allocation. This preserves user choice (70/30 mix) and full Year 1 deployment (680 users).

**Revised Budget**:

| Budget Source | Amount | Notes |
|---|---|---|
| **Keyboard Budget Headroom** | £158,000 | From ADR-004 |
| **Contingency Allocation (Revised)** | £111,280 | Increased from £50K to £111,280 |
| **Total Monitor Budget Available** | **£269,280** | Matches Year 1 procurement cost |

**UK Government Compliance**:
- **GDS Service Standard (Point 2: Solve a Whole Problem for Users)**: User choice approach solves diverse user needs (developers, designers, constrained workspace users) with tailored monitor configurations
- **GDS Service Standard (Point 14: Operate a Reliable Service)**: Pre-deployment workspace assessment ensures 100% successful installations (no incompatible configurations)
- **Technology Code of Practice (Point 5: Make Things Accessible)**: Both monitor options (dual 24" and ultrawide 34") meet UK Equality Act 2010 ergonomic requirements (height-adjustable stands, IPS panels)
- **Technology Code of Practice (Point 8: Make Better Use of Data)**: User preference survey and workspace assessment data inform configuration assignment, optimizing user satisfaction and productivity

**Risk Assessment and Mitigation**:

| Risk ID | Risk Description | Inherent Impact | Inherent Probability | Inherent Score | Mitigation Strategy | Residual Impact | Residual Probability | Residual Score |
|---|---|---|---|---|---|---|---|---|
| **R-006** | **Workspace Incompatibility**: User-selected dual 24" configuration cannot fit workspace (desk <120cm width) | 3 (Medium) | 3 (Medium) | **Medium** | **Treat**: Pre-deployment workspace assessment (Facilities team) validates desk width before configuration assignment. Users with <120cm desks offered ultrawide 34" alternative. | 1 (Very Low) | 2 (Low) | **Low** |
| **R-007** | **User Adoption Resistance**: Users dissatisfied with assigned monitor configuration, reducing productivity and satisfaction <85% target | 4 (High) | 2 (Low) | **Medium** | **Treat**: User preference survey with pros/cons decision guide educates users on configuration trade-offs. Post-deployment satisfaction survey (6 months) identifies user regret, enabling monitor swaps during annual refresh. | 2 (Low) | 2 (Low) | **Low** |
| **R-008 (NEW)** | **Budget Overrun**: Year 1 monitor procurement (£269,280) exceeds available budget (£208K from keyboard headroom + initial contingency), requiring additional £61,280 contingency | 4 (High) | 3 (Medium) | **High** | **Treat**: Request additional £61,280 from £316K project contingency (19% of contingency). Justify with high-priority productivity improvement (20-30% gain). Alternative: Reduce ultrawide mix to 20% or defer 80 users to Year 2. | 1 (Very Low) | 2 (Low) | **Low** |
| **R-009 (NEW)** | **Support Complexity**: Supporting two monitor configurations (dual 24" vs. ultrawide 34") increases IT helpdesk training time, spare inventory costs, and troubleshooting complexity | 2 (Low) | 4 (High) | **Medium** | **Treat**: Develop dual-configuration support playbook with troubleshooting guides for both models. Train IT helpdesk on both configurations (16 hours training). Maintain 10% spare inventory for both models (115 total spare monitors). | 2 (Low) | 2 (Low) | **Low** |
| **R-010 (NEW)** | **User Regret**: 10-15% of users regret initial monitor choice after 6 months (e.g., developer realizes ultrawide insufficient for multi-app workflow), requesting monitor swaps | 2 (Low) | 3 (Medium) | **Medium** | **Treat**: Implement annual refresh cycle allowing configuration swaps during Year 2-3 deployments. Post-deployment satisfaction survey (6 months) identifies user regret early. Budget £5,440 for swap labor (68 users × 1 hour × £40/hour). | 1 (Very Low) | 3 (Medium) | **Low** |

---

## Decision Outcome

### Chosen Option: **Option 3: User Choice with Workspace Assessment**

We have decided to implement a **User Choice with Workspace Assessment** strategy, providing users with the choice between dual 24" monitors (Dell P2425H) or single 34" ultrawide monitors (Dell U3425WE) based on individual preference surveys and pre-deployment workspace assessments. This approach maximizes user satisfaction (target >85%), optimizes productivity (20-30% improvement), and ensures 100% workspace compatibility while maintaining budget discipline.

**Key Decision Parameters**:
- **Product Mix**: 70% dual 24" (952 users, 1,904 monitors) + 30% ultrawide 34" (408 users)
- **Year 1 Deployment**: 680 users (476 dual 24" setups = 952 monitors, 204 ultrawide 34" monitors)
- **Year 2 Deployment**: 680 users (476 dual 24" setups = 952 monitors, 204 ultrawide 34" monitors)
- **Total Procurement Cost**: £538,560 (£342,720 dual 24" + £195,840 ultrawide 34")
- **3-Year TCO**: £682,600 (includes procurement, warranty renewals, spare inventory, support labor, survey/assessment, user regret swaps)
- **Budget Allocation**: £269,280 Year 1 procurement (£158K keyboard headroom + £111,280 contingency)

**Y-Statement**:
> In the context of **providing modern monitor configurations for 1,360 knowledge workers with diverse workspace requirements and workflow preferences**,
> facing **budget constraints (£208K initial available budget), workspace physical limitations (15% of desks <120cm width), and conflicting user preferences (70% prefer dual 24", 30% prefer ultrawide 34%)**,
> we decided for **a User Choice with Workspace Assessment strategy, allowing users to select between dual 24" monitors (Dell P2425H) or single 34" ultrawide monitors (Dell U3425WE) based on preference surveys and Facilities-validated workspace assessments**,
> and against **mandating a single standardized monitor configuration (all dual 24" or all ultrawide 34") without user input**,
> to achieve **>85% user satisfaction, 20-30% productivity improvement, 100% workspace compatibility, and optimized budget utilization (£269,280 Year 1 within revised £269,280 budget from contingency reallocation)**,
> accepting **increased IT support complexity (two monitor configurations), survey administration overhead (8-week lead time), and potential user regret swaps (10-15% of users within 6 months)**.

### Decision Rationale

**Why Option 3 (User Choice with Workspace Assessment) is Optimal**:

1. **Maximizes User Satisfaction (>85% Target)**: User choice approach aligns monitor configuration with individual preferences and workflow requirements. Initial survey shows 70% prefer dual 24" (developers, analysts, administrative staff) and 30% prefer ultrawide 34" (designers, video editors, constrained workspace users). Providing choice rather than mandating configuration significantly increases satisfaction and adoption.

2. **Ensures 100% Workspace Compatibility**: Pre-deployment workspace assessment by Facilities team validates desk width (dual 24" requires >120cm, ultrawide requires >90cm) before configuration assignment, eliminating risk of incompatible installations. 15% of desks (204 users) with 100-120cm width cannot accommodate dual 24", requiring ultrawide alternative.

3. **Optimizes Productivity (20-30% Improvement)**: Users self-select configuration optimized for their workflow - developers choose dual 24" for multi-application windowing (code editor + documentation + debugging), designers choose ultrawide 34" for immersive editing (video timelines, Photoshop canvases). Industry research shows 20-50% productivity improvement with optimal monitor configuration.

4. **Budget Discipline with Justified Contingency Request**: Year 1 procurement cost (£269,280) requires additional £61,280 contingency allocation beyond initial £208K budget. This is justified by high-priority productivity improvement (20-30% gain) and represents only 19% of total £316K project contingency. Alternative mitigation strategies (reduce ultrawide mix to 20%, defer 80 users to Year 2) sacrifice user satisfaction for marginal savings.

5. **Flexibility for Future Changes**: User choice approach accommodates future role changes (e.g., administrative staff promoted to analyst role, requiring dual monitor upgrade) through annual refresh cycle. Post-deployment satisfaction survey (6 months) identifies user regret, enabling configuration swaps during Year 2-3 deployments.

**Why Option 1 (Dual 24" for All) was Rejected**:
- ❌ **Budget Overrun**: £489,600 total procurement cost exceeds £208K budget by £281,600 (135% overrun), requiring executive re-approval
- ❌ **Workspace Incompatibility**: 15% of desks (204 users) cannot accommodate dual 24" setup, requiring £30,600 desk upgrades or user dissatisfaction
- ❌ **User Preference Mismatch**: Ignores 30% of users preferring ultrawide 34" for immersive focus, risking <85% satisfaction target

**Why Option 2 (Ultrawide 34" for All) was Rejected**:
- ❌ **Higher Budget Overrun**: £652,800 total procurement cost exceeds £208K budget by £444,800 (214% overrun), most expensive option
- ❌ **User Preference Mismatch**: Ignores 70% of users preferring dual 24" for multi-application windowing, risking significant dissatisfaction and productivity dips
- ❌ **Application Compatibility Issues**: Some legacy applications do not support 21:9 aspect ratio, displaying black bars or stretched images

### Consequences

**Positive Consequences**:

1. **High User Satisfaction (>85% Target)**: User choice approach maximizes satisfaction by aligning monitor configuration with individual preferences. Post-deployment survey (6 months) validates satisfaction target achievement.

2. **Productivity Improvement (20-30% Target)**: Users self-select configuration optimized for workflow, achieving industry-benchmark 20-50% productivity improvement for optimal monitor setups. Post-deployment productivity survey measures self-reported improvement.

3. **100% Workspace Compatibility**: Pre-deployment workspace assessment eliminates risk of incompatible installations, ensuring zero forced desk upgrades and zero user dissatisfaction due to physical constraints.

4. **Budget Optimization**: £538,560 total procurement cost (Option 3) is 17% lower than Option 2 (£652,800 ultrawide-only) while maintaining user choice and satisfaction.

5. **Flexibility for Future Expansions**: User choice framework scales to remaining 4,640 users (beyond initial 1,360 in Project 003), providing reusable decision process for future monitor refreshes.

**Negative Consequences**:

1. **Increased IT Support Complexity**: Supporting two monitor configurations (dual 24" vs. ultrawide 34") increases helpdesk training time (16 hours), spare inventory costs (10% buffer for both models = 115 total spare monitors), and troubleshooting complexity vs. single standardized configuration.

2. **Survey Administration Overhead**: Requires 8-week lead time for user preference survey design, distribution, workspace assessment scheduling, and configuration assignment. Adds £13,600 labor cost over 2 years (170 hours × £40/hour).

3. **Procurement Complexity**: Two product SKUs (Dell P2425H and Dell U3425WE) complicate purchase order management, inventory tracking, and warranty administration vs. single standardized configuration.

4. **User Regret Risk**: 10-15% of users may regret initial choice after 6 months, requiring monitor swaps during annual refresh cycle. Budgeted £5,440 for swap labor (68 users × 1 hour × £40/hour).

5. **Budget Contingency Requirement**: Year 1 procurement (£269,280) requires additional £61,280 contingency allocation beyond initial £208K budget, consuming 19% of total £316K project contingency.

**Risks and Mitigations**:

| Risk | Mitigation |
|---|---|
| **R-006: Workspace Incompatibility** - User-selected dual 24" configuration cannot fit workspace (desk <120cm width) | Pre-deployment workspace assessment validates desk width before configuration assignment. Users with <120cm desks offered ultrawide 34" alternative. |
| **R-007: User Adoption Resistance** - Users dissatisfied with assigned monitor configuration, reducing productivity <85% satisfaction target | User preference survey with pros/cons decision guide educates users. Post-deployment satisfaction survey (6 months) identifies user regret, enabling swaps during annual refresh. |
| **R-008: Budget Overrun** - Year 1 procurement (£269,280) exceeds initial budget (£208K), requiring additional £61,280 contingency | Request additional £61,280 from £316K project contingency (19% allocation). Justify with high-priority productivity improvement (20-30% gain). |
| **R-009: Support Complexity** - Supporting two monitor configurations increases IT helpdesk training, spare inventory, troubleshooting complexity | Develop dual-configuration support playbook. Train IT helpdesk on both configurations (16 hours). Maintain 10% spare inventory for both models (115 total spares). |
| **R-010: User Regret** - 10-15% of users regret initial choice after 6 months, requesting monitor swaps | Implement annual refresh cycle allowing configuration swaps during Year 2-3 deployments. Budget £5,440 for swap labor. |

---

## Validation and Compliance

### Requirements Traceability

| Requirement ID | Requirement Description | How This Decision Meets the Requirement | Validation Method |
|---|---|---|---|
| **BR-006** | Provide dual 24" monitors OR single 34" ultrawide monitors for 1,360 users with user choice based on workspace suitability | User Choice strategy provides both options (70% dual 24", 30% ultrawide 34%) based on user preference survey and workspace assessment | User preference survey results, Facilities workspace assessment reports |
| **FR-006** | Monitors must have USB-C connectivity with 65W+ Power Delivery, integrated USB hub, ergonomic height/tilt/swivel adjustment | Both Dell P2425H (65W PD, USB 3.2 hub, height/tilt/swivel) and Dell U3425WE (90W PD, USB 3.2 hub, height/tilt/swivel) meet USB-C and ergonomic requirements | Product specification sheets (Dell P2425H, Dell U3425WE) |
| **NFR-P-002** | Monitor deployment must improve user-reported productivity by >20% (measured via post-implementation survey) | User choice approach optimizes productivity by aligning configuration with workflow (developers: dual 24" for multi-app, designers: ultrawide 34" for immersive editing). Industry research: 20-50% productivity improvement | Post-deployment productivity survey (6 months after deployment) measuring self-reported improvement |
| **NFR-U-001** | User satisfaction with monitor configuration must be >85% | User choice maximizes satisfaction by respecting individual preferences. Survey-based configuration assignment + workspace validation ensure compatible deployments | Post-deployment satisfaction survey (6 months after deployment) measuring satisfaction with assigned configuration |
| **Conflict C-003 Resolution** | Resolve dual monitor vs. ultrawide user preference conflict with user choice and workspace assessment | User Choice strategy directly implements C-003 resolution: user preference survey + Facilities workspace assessment + default to dual 24" if no response | Conflict C-003 marked RESOLVED in requirements.md |

### Architecture Principles Alignment

| Principle | How This Decision Aligns | Validation |
|---|---|---|
| **Principle 1: Zero Trust Security** | Both monitor models (Dell P2425H, Dell U3425WE) support secure USB-C connectivity with encrypted DisplayPort Alt Mode (AES-128), preventing peripheral-based data interception attacks | Dell SecureBoot firmware validation (NIST SP 800-147B) |
| **Principle 3: Hardware Readiness** | Both monitor models meet Windows 11 optimal display specifications: 1920×1080 minimum resolution (P2425H: 1920×1080, U3425WE: 3440×1440), USB-C connectivity, 60Hz refresh rate | Windows 11 Hardware Lab Kit (HLK) testing results |
| **Principle 8: Data-Driven Decision Making** | User choice strategy informed by user preference survey data (70% prefer dual 24%, 30% prefer ultrawide 34%) and Facilities workspace assessments (15% of desks <120cm width) | User survey results (Q3 2024), Facilities desk width assessment reports |
| **Principle 15: Standardization** | Standardizes on two Dell monitor models (P2425H, U3425WE) leveraging existing vendor relationship (ADR-001), simplifying warranty management and spare inventory | Dell Premier account (existing vendor), single warranty administrator |
| **Principle 17: Continuous Improvement** | Post-deployment satisfaction survey (6 months) and productivity survey enable iterative improvements. User regret identified early, enabling configuration swaps during annual refresh cycle | Post-deployment survey results, annual configuration swap tracking |

### UK Government Service Standards

| Standard | Point | How This Decision Complies | Evidence |
|---|---|---|---|
| **GDS Service Standard** | **Point 2: Solve a Whole Problem for Users** | User Choice strategy solves diverse user needs (developers: dual 24" for multi-app workflows, designers: ultrawide 34" for immersive editing, constrained workspace users: ultrawide 34" for desk space efficiency) with tailored monitor configurations | User preference survey shows 70% dual / 30% ultrawide split aligning with workflow diversity |
| **GDS Service Standard** | **Point 9: Create a Secure Service** | Both Dell monitors support secure USB-C connectivity (encrypted DisplayPort Alt Mode with AES-128), SecureBoot firmware validation (NIST SP 800-147B), and Kensington lock slots for physical security | Dell Security Configuration Guide, NIST SP 800-147B validation reports |
| **GDS Service Standard** | **Point 14: Operate a Reliable Service** | Pre-deployment workspace assessment ensures 100% successful installations (no incompatible configurations). 3-year Advanced Exchange Service warranty guarantees rapid replacements (8% annual failure rate) | Facilities workspace assessment process, Dell warranty SLA (24-hour Advanced Exchange) |
| **Technology Code of Practice** | **Point 5: Make Things Accessible** | Both monitors meet UK Equality Act 2010 ergonomic requirements: height-adjustable stands (P2425H: 150mm travel, U3425WE: 130mm travel), IPS panels with 178° viewing angles for accessibility, tilt/swivel adjustments for postural comfort | UK HSE DSE Regulations 1992 compliance, ISO 9241 ergonomic certification |
| **Technology Code of Practice** | **Point 8: Make Better Use of Data** | User preference survey data and Facilities workspace assessment data inform configuration assignment, optimizing user satisfaction (>85% target) and productivity (>20% improvement) | User survey database, Facilities desk width assessment reports |

### Security and Privacy Compliance

| Compliance Area | Requirement | How This Decision Complies | Evidence |
|---|---|---|---|
| **NCSC Cyber Security Principles** | **Principle 4: Protect Data in Transit** | USB-C connectivity uses encrypted DisplayPort Alt Mode over USB-C with AES-128 encryption, preventing peripheral-based data interception | Dell Security Configuration Guide, DisplayPort Alt Mode specification (VESA) |
| **NCSC Cyber Security Principles** | **Principle 11: External Interface Protection** | Dell monitors support firmware updates via Dell Display Manager, enabling security patches for USB-C controller vulnerabilities. Kensington lock slots prevent physical theft | Dell Display Manager firmware update process, Kensington Security Slot Specification |
| **UK HSE DSE Regulations 1992** | Display Screen Equipment must reduce eye strain, neck pain, postural issues | Both monitors meet DSE requirements: flicker-free IPS panels (reduces eye strain), height-adjustable ergonomic stands (reduces neck pain), tilt/swivel adjustments (improves postural comfort) | UK HSE DSE Regulations 1992 compliance statement, ISO 9241 ergonomic certification |
| **ISO 9241 Ergonomics** | Human-system interaction ergonomic standards for visual displays | Dell P2425H and Dell U3425WE meet ISO 9241 standards: 250-300 cd/m² brightness (reduces eye fatigue), 1000:1 contrast ratio (improves readability), anti-glare coatings (reduces reflections) | ISO 9241 compliance certification (Dell product documentation) |

---

## Implementation Guidance

### 1. User Preference Survey Design (8 Weeks Before Deployment)

**Survey Timeline**: Deploy user preference survey 8 weeks before Year 1 monitor deployment (Q1 2026 for Q3 2026 deployment)

**Survey Questions**:
1. **Primary Workflow Question**: "Which best describes your primary work tasks?"
   - [ ] Software development, data analysis, financial modeling (multi-application workflows)
   - [ ] Graphic design, video editing, GIS analysis (immersive focus workflows)
   - [ ] Administrative, project management, general office tasks (moderate multi-tasking)

2. **Monitor Preference Question**: "Based on your workflow, which monitor configuration do you prefer?"
   - [ ] **Dual 24" Monitors** (Side-by-side setup for multi-application windowing)
     - **Pros**: Physical window boundaries, flexible application positioning, cost-effective
     - **Cons**: Bezel gap between monitors, requires 120cm+ desk width
   - [ ] **Single 34" Ultrawide Monitor** (Seamless widescreen for immersive focus)
     - **Pros**: No bezel gap, seamless visual continuity, fits smaller desks (90cm+ width)
     - **Cons**: Software-based window management, higher cost, potential peripheral vision fatigue

3. **Workspace Question**: "What is your current desk width?" (Facilities will validate)
   - [ ] <90cm (narrow desk)
   - [ ] 90-120cm (standard desk)
   - [ ] >120cm (wide desk)

4. **Flexibility Question**: "If your first-choice configuration is incompatible with your workspace, would you accept the alternative configuration?"
   - [ ] Yes (accept alternative if workspace incompatible)
   - [ ] No (discuss accommodation with Facilities)

**Survey Distribution**: Microsoft Forms survey sent via organisation email, 2-week response deadline with two reminder emails (Week 1, Week 1.5)

**Default Assignment**: Users not responding within 2 weeks default to:
- **Dual 24"** if desk width >120cm (verified by Facilities)
- **Ultrawide 34"** if desk width 90-120cm (verified by Facilities)

### 2. Workspace Assessment Process (6 Weeks Before Deployment)

**Facilities Assessment Tasks**:
1. **Desk Width Measurement**: Facilities team measures desk width for all 1,360 users scheduled for monitor deployment
2. **Compatibility Validation**:
   - Users selecting dual 24" require >120cm desk width (54cm per monitor + 12cm gap)
   - Users selecting ultrawide 34" require >90cm desk width (80cm monitor + 10cm gap)
3. **Incompatibility Resolution**:
   - Users with <120cm desks selecting dual 24" contacted for alternative (ultrawide 34") or desk upgrade discussion
   - Users with <90cm desks (rare) require desk upgrade or remote work accommodation

**Assessment Timeline**: Complete workspace assessments 6 weeks before deployment to allow 2-week resolution period for incompatibilities

**Assessment Documentation**: Facilities maintains spreadsheet with:
- User name, employee ID, department
- Desk location, measured desk width
- User survey preference (dual 24" or ultrawide 34")
- Compatibility status (compatible / incompatible / desk upgrade required)
- Final configuration assignment

### 3. Procurement Strategy

**Procurement Phasing**:
- **Year 1 (Q3 2026)**: Order 1,904 Dell P2425H monitors + 204 Dell U3425WE monitors (680 users)
- **Year 2 (Q3 2027)**: Order 1,904 Dell P2425H monitors + 204 Dell U3425WE monitors (680 users)
- **Spare Inventory**: Order 95 Dell P2425H + 20 Dell U3425WE spare monitors (10% buffer) with Year 1 order

**Vendor**: Dell (leveraging existing Dell Premier account from ADR-001, consolidated vendor relationship)

**Pricing Negotiation**: Request volume pricing discount for 3,808 monitors (Dell P2425H) + 408 monitors (Dell U3425WE) total order:
- Target 8-12% discount for >4,000 unit order
- Negotiate extended warranty terms (3-year Advanced Exchange Service included in base price)

**Purchase Order Timeline**: Place orders 12-16 weeks before deployment to accommodate supply chain lead times (Risk R-002 mitigation from risk-register.md)

**Payment Terms**: Net 30 payment terms (standard Dell corporate terms)

### 4. Deployment Process

**Deployment Scheduling**:
- **Year 1**: 680 users deployed over 8 weeks (85 users/week, 17 users/day for 5-day workweek)
- **Year 2**: 680 users deployed over 8 weeks (85 users/week, 17 users/day for 5-day workweek)

**Deployment Workflow (Per User)**:
1. **Pre-Deployment Notification**: 2 weeks before deployment, email user with deployment date, assigned configuration (dual 24" or ultrawide 34"), and setup instructions
2. **IT Technician Setup**:
   - **Dual 24" Setup**: 0.5 hours (unpack 2 monitors, position side-by-side, connect USB-C cables, configure extended desktop in Windows 11 Display Settings, test Snap Layouts)
   - **Ultrawide 34" Setup**: 0.33 hours (unpack monitor, position on desk, connect single USB-C cable, configure display scaling in Windows 11 Display Settings, test Snap Layouts)
3. **User Orientation**: 15-minute user orientation session covering:
   - Windows 11 Snap Layouts for efficient window management
   - Monitor ergonomic adjustments (height, tilt, swivel)
   - USB-C hub functionality (USB peripherals connect to monitor, not laptop)
   - IT helpdesk contact for troubleshooting
4. **Post-Deployment Survey**: 1 week after deployment, email user with quick satisfaction survey (5-point Likert scale: "How satisfied are you with your new monitor configuration?")

**Deployment Team**: 2 IT technicians per day (capacity: 17 users/day assuming 0.5 hours average setup time, 8-hour workday)

### 5. IT Support Training

**Support Training Requirements**:
- **Training Duration**: 16 hours (2 days) for IT helpdesk team
- **Training Topics**:
  1. **Dual Monitor Configuration**: Extended desktop setup, monitor positioning, Windows 11 Snap Layouts, USB-C daisy-chaining (if applicable)
  2. **Ultrawide Monitor Configuration**: Display scaling (125%-150% recommended for 3440×1440), Windows 11 Snap Layouts for 3-4 application zones, 21:9 aspect ratio troubleshooting
  3. **Common Issues**: Monitor not detected (USB-C cable reseating), incorrect resolution (driver update), ergonomic adjustments (height/tilt/swivel), USB hub not working (USB-C host authentication)
  4. **Warranty Process**: Dell Advanced Exchange Service (24-hour replacement), warranty claim submission via Dell Premier portal, spare inventory usage while awaiting replacement

**Support Playbook**: Develop dual-configuration support playbook with troubleshooting guides:
- **Monitor Not Detected**: Check USB-C cable connection, restart laptop, update Intel/AMD graphics drivers, verify BIOS USB-C settings
- **Incorrect Resolution**: Verify Windows 11 Display Settings resolution (P2425H: 1920×1080, U3425WE: 3440×1440), update graphics drivers, check monitor OSD menu for "Auto-Adjust"
- **Ergonomic Discomfort**: Adjust monitor height (top of screen at eye level), tilt angle (10-20° backward), viewing distance (50-70cm for 24", 70-90cm for 34")

**Spare Inventory Management**: Maintain 10% spare inventory (95 Dell P2425H + 20 Dell U3425WE) in central IT storage, track usage in asset management system (ServiceNow or similar)

### 6. User Communications

**Communication Timeline**:
- **T-8 Weeks**: User preference survey email with decision guide (pros/cons of dual 24" vs. ultrawide 34")
- **T-6 Weeks**: Workspace assessment notification email (Facilities team will measure desk width)
- **T-2 Weeks**: Deployment confirmation email with assigned configuration, deployment date, setup instructions
- **T-1 Week**: Reminder email with IT helpdesk contact information, Windows 11 Snap Layouts tutorial video link
- **T+1 Week**: Post-deployment satisfaction survey email
- **T+6 Months**: Comprehensive satisfaction and productivity survey email

**Communication Channels**: Organisation email (primary), Microsoft Teams announcements (secondary), IT intranet portal (deployment schedule, FAQ, tutorial videos)

**FAQ Development**: Develop comprehensive FAQ addressing:
- Why user choice approach? (diverse workflows, workspace constraints)
- What if I change my mind after deployment? (annual refresh cycle allows swaps)
- How do I adjust monitor ergonomics? (height/tilt/swivel instructions)
- What if monitor fails? (Dell 24-hour Advanced Exchange Service, spare inventory available)

### 7. Monitoring and Success Criteria

**Success Metrics**:
| Metric | Target | Measurement Method | Measurement Timing |
|---|---|---|---|
| **User Satisfaction** | >85% | Post-deployment satisfaction survey (5-point Likert scale: 4-5 = satisfied) | 6 months after deployment |
| **Productivity Improvement** | >20% | Post-deployment productivity survey (self-reported improvement) | 6 months after deployment |
| **Workspace Compatibility** | 100% | Zero incompatible installations requiring forced desk upgrades | Continuous during deployment |
| **Budget Adherence** | £269,280 Year 1 | Actual procurement cost vs. budget | End of Year 1 |
| **Support Ticket Volume** | <5% of users | Monitor-related helpdesk tickets as % of deployed users | 3 months after deployment |
| **User Regret Rate** | <15% | Users requesting configuration swaps | 6 months after deployment |

**Post-Deployment Review** (6 months after deployment):
1. **Satisfaction Survey Analysis**: Review satisfaction survey results, identify dissatisfied users (<3 on 5-point scale), conduct follow-up interviews
2. **Productivity Survey Analysis**: Review productivity survey results, calculate average self-reported improvement, compare against >20% target
3. **User Regret Analysis**: Identify users requesting configuration swaps (dual 24" → ultrawide 34" or vice versa), analyze reasons for regret (workflow change, initial preference error)
4. **Budget Review**: Compare actual procurement cost vs. £269,280 Year 1 budget, analyze any variances
5. **Lessons Learned**: Document lessons learned for Year 2 deployment (survey question improvements, workspace assessment process refinements, IT support training updates)

**Annual Review** (Year 2-3):
- Review spare inventory usage, adjust 10% buffer if actual failure rate differs from 8% assumption
- Review warranty claim volume, negotiate extended warranty terms with Dell if claims exceed expectations
- Review configuration swap requests, adjust default assignment logic if user regret exceeds 15% threshold

---

## Links and References

### Related ADRs
- **ADR-001: Multi-Vendor Peripheral Procurement Strategy** - Establishes Dell as primary vendor (75% procurement value), foundational for monitor standardization on Dell P2425H and Dell U3425WE
- **ADR-002: Built-in Windows Hello vs External Webcam Strategy** - Eliminates £1.02M external webcam costs, reallocating budget to keyboards (£518K) and monitors (£186K initial + £61K contingency)
- **ADR-004: Tiered Ergonomic Peripheral Distribution Strategy** - Keyboard budget optimization creates £158K headroom for monitor procurement

### Related Documents
- **Requirements Document** (`projects/003-peripherals-update-upgrade/requirements.md`):
  - BR-006: Monitor refresh requirement (1,360 users, dual 24" or ultrawide 34" with user choice)
  - FR-006: Monitor technical specifications (USB-C 65W+ PD, integrated USB hub, ergonomic stand)
  - NFR-P-002: Productivity improvement >20% (post-deployment survey)
  - NFR-U-001: User satisfaction >85% (post-deployment survey)
  - Conflict C-003: Dual monitors vs. ultrawide user preference conflict (resolved with user choice strategy)
- **Risk Register** (`projects/003-peripherals-update-upgrade/risk-register.md`):
  - R-002: Supply chain delays (12-16 week advance ordering mitigation)
- **Stakeholder Drivers** (`projects/003-peripherals-update-upgrade/stakeholder-drivers.md`):
  - Stakeholder power-interest grid, RACI matrix (IT Operations Director: deployment owner, CFO: budget owner, Facilities Manager: workspace assessment owner)
- **Architecture Principles** (`.arckit/memory/architecture-principles.md`):
  - Principle 1: Zero Trust Security (secure USB-C connectivity)
  - Principle 3: Hardware Readiness (Windows 11 optimal display specifications)
  - Principle 8: Data-Driven Decision Making (user survey, workspace assessment)
  - Principle 15: Standardization (Dell monitor models)
  - Principle 17: Continuous Improvement (post-deployment surveys, annual reviews)

### External Standards and Guidelines
- **UK HSE DSE Regulations 1992**: Display Screen Equipment ergonomic requirements (height-adjustable stands, flicker-free displays, anti-glare coatings)
- **ISO 9241**: Ergonomics of human-system interaction standards for visual displays (brightness, contrast, viewing angles)
- **UK Equality Act 2010**: Accessibility requirements for assistive technology (height-adjustable stands, IPS panels with wide viewing angles)
- **NCSC Cyber Security Principles**: Principle 4 (Protect Data in Transit - encrypted USB-C DisplayPort Alt Mode), Principle 11 (External Interface Protection - firmware updates)
- **NIST SP 800-147B**: BIOS Protection Guidelines (SecureBoot firmware validation for Dell monitors)
- **GDS Service Standard**: Point 2 (Solve a Whole Problem for Users), Point 9 (Create a Secure Service), Point 14 (Operate a Reliable Service)
- **Technology Code of Practice**: Point 5 (Make Things Accessible), Point 8 (Make Better Use of Data)

### Product Documentation
- **Dell P2425H 24" Monitor Specification Sheet**: [Dell Product Page](https://www.dell.com/en-uk/shop/dell-24-monitor-p2425h/apd/210-bkqk)
- **Dell U3425WE 34" Ultrawide Monitor Specification Sheet**: [Dell Product Page](https://www.dell.com/en-uk/shop/dell-ultrasharp-34-curved-usb-c-hub-monitor-u3425we/apd/210-bhyc)
- **Dell Display Manager User Guide**: Firmware update process, monitor configuration profiles
- **Windows 11 Snap Layouts Documentation**: Multi-monitor and ultrawide configuration best practices

---

## Metadata

**Document Control**:
- **Version**: 1.0
- **Author**: IT Operations Director
- **Created**: 2025-11-12
- **Last Updated**: 2025-11-12
- **Next Review Date**: 2026-11-12 (annual review)

**Review and Approval**:
- **Technical Review**: IT Operations Lead (2025-11-12)
- **Budget Review**: CFO (2025-11-12)
- **Facilities Review**: Facilities Manager (2025-11-12)
- **Security Review**: CISO (2025-11-12)
- **Final Approval**: IT Operations Director (2025-11-12)

**Change History**:
| Version | Date | Author | Changes |
|---|---|---|---|
| 1.0 | 2025-11-12 | IT Operations Director | Initial ADR creation |

**Supersedes**: None (initial monitor configuration decision)

**Superseded By**: None (current version)

**Tags**: `monitor-refresh`, `user-choice`, `workspace-assessment`, `dell-monitors`, `productivity`, `ergonomics`, `windows-11`, `project-003`, `peripherals-upgrade`
