# Risk Register: Windows 11 Migration with Microsoft InTune

**Project:** Windows 10 to Windows 11 Migration
**Project ID:** 001-windows-11-migration-intune
**Risk Register Version:** 2.0
**Last Updated:** 2025-10-21
**Risk Register Owner:** IT Operations Director
**Review Frequency:** Weekly (Critical/High), Monthly (Medium/Low)
**Next Review Date:** 2025-10-28

---

## Document Control

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2025-10-20 | Enterprise Architecture Team | Initial risk register created |
| 2.0 | 2025-10-21 | Enterprise Architecture Team | **CRITICAL UPDATE**: Added 7 new COMPLIANCE risks based on MOD SbD Assessment v2.0 - CAAT continuous assurance framework gaps. Updated vendor selection risks based on Evaluation Criteria v2.0. Total risks increased from 15 to 22. |

---

## Executive Summary

### Risk Profile Overview

**Total Risks Identified:** 22 risks across 6 categories

**CRITICAL UPDATE (v2.0)**: MOD Secure by Design Assessment v2.0 identified 7 critical governance gaps related to the shift from RMADS (deprecated) to CAAT continuous assurance framework. These gaps create significant COMPLIANCE and STRATEGIC risks that must be addressed before Beta phase.

| Risk Level | Inherent | Residual | Change |
|------------|----------|----------|--------|
| **Critical** (20-25) | 8 | 3 | ↓ 63% |
| **High** (13-19) | 9 | 7 | ↓ 22% |
| **Medium** (6-12) | 4 | 9 | ↑ 125% |
| **Low** (1-5) | 1 | 3 | ↑ 200% |
| **TOTAL** | 291 | 193 | ↓ 34% |

**Overall Residual Risk Score:** 193/550 (35% of maximum)
**Risk Reduction from Controls:** 34% reduction from inherent risk
**Risk Profile Status:** ⚠️ **CONCERNING** - 3 Critical risks and 7 High risks require immediate action

### Risk Category Distribution

| Category | Count | Avg Inherent | Avg Residual | Control Effectiveness |
|----------|-------|--------------|--------------|----------------------|
| **STRATEGIC** | 3 | 16.7 | 10.7 | 36% reduction |
| **OPERATIONAL** | 6 | 11.8 | 7.8 | 34% reduction |
| **FINANCIAL** | 3 | 11.3 | 8.0 | 29% reduction |
| **COMPLIANCE** | 7 | 15.7 | 10.1 | 36% reduction |
| **REPUTATIONAL** | 1 | 15.0 | 9.0 | 40% reduction |
| **TECHNOLOGY** | 2 | 13.5 | 9.0 | 33% reduction |

### Top 10 Critical Risks Requiring Immediate Attention

1. **R-001** (COMPLIANCE, Critical 20): MOD CAAT Registration Not Completed - Owner: CIO - Status: Open
2. **R-002** (COMPLIANCE, Critical 20): No DTSL Appointed (Three Lines of Defence Gap) - Owner: CISO - Status: Open
3. **R-003** (STRATEGIC, Critical 20): Timeline Slips Past Windows 10 EOL - Owner: IT Ops Director - Status: In Progress
4. **R-004** (COMPLIANCE, High 16): No Business Impact Assessment for CAAT - Owner: DTSL (TBD) - Status: Open
5. **R-005** (COMPLIANCE, High 16): No Threat Model Documented - Owner: DTSL (TBD) - Status: Open
6. **R-006** (COMPLIANCE, High 16): No Supplier Attestation per ISN 2023/10 - Owner: Procurement - Status: Open
7. **R-007** (OPERATIONAL, High 15): Vendor Selection - RMADS-Only Experience Insufficient - Owner: Procurement - Status: Open
8. **R-008** (OPERATIONAL, High 15): Support Ticket Volume Overwhelms Helpdesk - Owner: Helpdesk Manager - Status: In Progress
9. **R-009** (FINANCIAL, High 15): Budget Overruns Eliminate ROI - Owner: CFO - Status: In Progress
10. **R-010** (TECHNOLOGY, High 15): Cloud Data Sovereignty Unclear - Owner: CISO - Status: Open

### Key Findings

**❌ CRITICAL MOD Security Governance Gaps (7 risks added in v2.0):**
- CAAT not registered (mandatory for all MOD programmes per JSP 440 Leaflet 5C)
- No DTSL appointed (First Line of Defence role missing)
- No BIA completed (required for CAAT self-assessment)
- No threat model documented (STRIDE/DREAD methodology)
- No supplier attestations obtained (ISN 2023/10 continuous attestation requirement)
- No PSyO appointed (for OFFICIAL-SENSITIVE data)
- No Second Line Security Governance Review scheduled

**⚠️ VENDOR SELECTION COMPLEXITY:**
- Evaluation Criteria v2.0 MQ-11 requires CAAT expertise (not RMADS)
- Vendors with only RMADS experience will score 2/8 or 0/8 on Subcriterion 1.3
- Risk of selecting non-compliant vendor if MQ-11 not enforced

**📊 RISK CONCENTRATION:**
- CISO owns 43% of total residual risk (83/193 points) - Resource overload
- 5 of 7 COMPLIANCE risks exceed appetite by average 8.4 points (84%)
- 3-month MOD security preparation timeline added to critical path

### Recommendations

1. **IMMEDIATE (Week 1)**: Register on CAAT and appoint DTSL - Blockers for all other MOD activities
2. **URGENT (Week 2)**: Complete BIA and initiate threat modeling
3. **HIGH PRIORITY (Month 1)**: Obtain supplier attestations per ISN 2023/10
4. **CRITICAL (Vendor Selection)**: Enforce MQ-11 mandatory qualification - Disqualify vendors without CAAT expertise
5. **ESCALATION**: Brief CIO/Board on 3-month delay risk if MOD security prep not accelerated

---

## A. Risk Matrix Visualization

### Inherent Risk Matrix (Before Controls)

```
LIKELIHOOD ↑
     5 |       |       | R-003 |       | R-001 |  ← Almost Certain
       |       |       |       | R-002 |       |
       |-------|-------|-------|-------|-------|
     4 |       |       | R-008 | R-007 | R-009 |  ← Likely
       |       |       | R-011 | R-010 |       |
       |-------|-------|-------|-------|-------|
     3 |       | R-015 | R-004 | R-012 | R-006 |  ← Possible
       |       | R-018 | R-005 | R-013 |       |
       |-------|-------|-------|-------|-------|
     2 |       | R-019 | R-014 | R-016 |       |  ← Unlikely
       | R-022 |       | R-020 |       |       |
       |-------|-------|-------|-------|-------|
     1 |       | R-021 |       | R-017 |       |  ← Rare
       |       |       |       |       |       |
       |_______|_______|_______|_______|_______|
           1       2       3       4       5
       Negligible Minor  Moderate Major Catastrophic
                    IMPACT →
```

**Risk Zones:**
- 🟥 **Critical (20-25)**: R-001, R-002, R-003 - Immediate escalation to CIO/Board
- 🟧 **High (13-19)**: R-004 through R-010 - Senior management attention
- 🟨 **Medium (6-12)**: R-011 through R-016 - Management monitoring
- 🟩 **Low (1-5)**: R-017 through R-022 - Routine monitoring

### Residual Risk Matrix (After Controls)

```
LIKELIHOOD ↑
     5 |       |       |       |       |       |  ← Almost Certain
       |       |       |       |       |       |
       |-------|-------|-------|-------|-------|
     4 |       |       | R-001 |       |       |  ← Likely
       |       |       | R-002 |       |       |
       |-------|-------|-------|-------|-------|
     3 |       | R-015 | R-003 | R-004 | R-006 |  ← Possible
       | R-018 | R-019 | R-008 | R-005 | R-007 |
       |       |       | R-011 | R-009 |       |
       |-------|-------|-------|-------|-------|
     2 |       | R-022 | R-012 | R-010 |       |  ← Unlikely
       |       |       | R-014 | R-013 |       |
       |       |       | R-020 | R-016 |       |
       |-------|-------|-------|-------|-------|
     1 |       | R-021 |       | R-017 |       |  ← Rare
       |       |       |       |       |       |
       |_______|_______|_______|_______|_______|
           1       2       3       4       5
       Negligible Minor  Moderate Major Catastrophic
                    IMPACT →
```

**Risk Movement Analysis:**
- ❌ **Limited Improvement (CRITICAL)**: R-001 (25→16), R-002 (20→16) - MOD gaps, controls insufficient until CAAT registered
- ✅ **Significant Improvement**: R-003 (20→12), R-009 (16→12) - Controls effective
- ⚠️ **Moderate Improvement**: R-004 through R-008 average 16→12
- 📊 **Stable**: R-015 through R-022 - Routine management

---

## B. Top 10 Risks (Ranked by Residual Score)

| Rank | ID | Title | Category | Inherent | Residual | Owner | Status | Response |
|------|----|-------|----------|----------|----------|-------|--------|----------|
| 1 | R-001 | MOD CAAT Registration Not Completed | COMPLIANCE | 25 | 16 | CIO | Open | Treat |
| 2 | R-002 | No DTSL Appointed (Three Lines of Defence) | COMPLIANCE | 20 | 16 | CISO | Open | Treat |
| 3 | R-004 | No Business Impact Assessment for CAAT | COMPLIANCE | 15 | 12 | DTSL (TBD) | Open | Treat |
| 4 | R-005 | No Threat Model Documented | COMPLIANCE | 15 | 12 | DTSL (TBD) | Open | Treat |
| 5 | R-003 | Timeline Slips Past Windows 10 EOL | STRATEGIC | 20 | 12 | IT Ops Director | In Progress | Treat |
| 6 | R-006 | No Supplier Attestation per ISN 2023/10 | COMPLIANCE | 15 | 12 | Procurement | Open | Treat |
| 7 | R-007 | Vendor Selection - RMADS-Only Experience | OPERATIONAL | 16 | 12 | Procurement | Open | Treat |
| 8 | R-008 | Support Ticket Volume Overwhelms Helpdesk | OPERATIONAL | 15 | 12 | Helpdesk Mgr | In Progress | Treat |
| 9 | R-009 | Budget Overruns Eliminate ROI | FINANCIAL | 15 | 12 | CFO | In Progress | Treat |
| 10 | R-010 | Cloud Data Sovereignty Unclear | TECHNOLOGY | 16 | 9 | CISO | Open | Treat |

---

## C. Detailed Risk Profiles

### Risk R-001: MOD CAAT Registration Not Completed ⚠️ CRITICAL

**Category:** COMPLIANCE | **Status:** Open | **Owner:** CIO

**Risk Description:**
Programme not registered on CAAT (Cyber Activity and Assurance Tracker), mandatory for all MOD programmes per JSP 440 Leaflet 5C. Without CAAT registration, cannot complete security self-assessment, proceed to Beta, or demonstrate MOD Secure by Design compliance.

**Root Cause:** Post-August 2023 MOD framework shift from RMADS to CAAT not reflected in initial project planning.

**Consequences if Realized:**
- 3-6 month project delay for CAAT registration + BIA + threat model + self-assessment
- Vendor contract awarded to non-compliant vendor (RMADS expertise vs CAAT) → £500K-£1M re-procurement
- MOD audit finding → Project stop notice
- Sep 2025 migration deadline missed → Windows 10 EOL non-compliance

**Affected Stakeholders:** CIO (SD-5 strategic modernization), CISO (SD-1 compliance), IT Ops (SD-3 execution), CFO (SD-2 budget)

**Inherent Risk:** Likelihood 5 × Impact 5 = **25 (Critical)**
**Residual Risk:** Likelihood 4 × Impact 4 = **16 (High)** after controls

**Current Controls:**
- MOD SbD Assessment v2.0 identified gap early (mod-secure-by-design.md:47-50)
- Requirements v4.0 updated with CAAT framework (NFR-SEC-004)
- Evaluation Criteria v2.0 MQ-11 requires vendor CAAT expertise

**Mitigation Actions:**
1. Register on CAAT (CIO, Week 1, £0) → Reduces to 8
2. Appoint DTSL (CIO, Week 1, £0) → Enables BIA/self-assessment
3. Complete BIA (DTSL, Week 2, £5K) → Reduces to 4
4. Complete CAAT self-assessment (DTSL, Month 1, £10K) → **Target: 4**

**Success Criteria:** CAAT reference number obtained, BIA 100% complete, 7 SbD Principles self-assessment complete

**Monitoring:** Weekly Steering Committee review until target achieved

---

### Risk R-002: No DTSL Appointed - Three Lines of Defence Gap ⚠️ CRITICAL

**Category:** COMPLIANCE | **Status:** Open | **Owner:** CISO

**Risk Description:**
No Delivery Team Security Lead (DTSL) appointed as required by JSP 440 Leaflet 5C. DTSL is First Line of Defence role responsible for security ownership, CAAT self-assessments, and day-to-day security management. Without DTSL, project lacks security governance and violates Three Lines of Defence model.

**Root Cause:** Legacy RMADS used IAO/IAA roles instead of DTSL (First Line) and Second Line Security Governance Reviews.

**Consequences if Realized:**
- Cannot complete CAAT registration (blocks R-001 mitigation)
- No security ownership → Security gaps not identified
- Vendor cannot coordinate MOD security activities
- Three Lines of Defence governance failure → MOD audit finding

**Affected Stakeholders:** CISO (SD-1 security governance), CIO (SD-5 MOD compliance), IT Ops (SD-3 security coordination)

**Inherent Risk:** Likelihood 5 × Impact 4 = **20 (Critical)**
**Residual Risk:** Likelihood 4 × Impact 4 = **16 (High)**

**Mitigation Actions:**
1. Appoint DTSL (CIO, Week 1, £0) → Reduces likelihood 4→1, impact 4→2
2. DTSL complete BIA (Week 2, £5K)
3. DTSL complete CAAT self-assessment (Month 1, £10K)
**Target: 2 (Within appetite)**

---

### Risk R-003: Timeline Slips Past Windows 10 EOL (October 2025) ⚠️ CRITICAL

**Category:** STRATEGIC | **Status:** In Progress | **Owner:** IT Operations Director

**Risk Description:**
Migration timeline slips past Windows 10 EOL (Oct 14, 2025) due to MOD security preparation delays (3-month CAAT process), hardware supply chain delays, vendor capacity constraints, or application compatibility blockers. Sep 2025 target has 6-week buffer, but new MOD requirements consume 3 months, reducing buffer to near-zero.

**Root Cause:** Original timeline did not account for 3-month MOD security preparation (CAAT registration, BIA, threat model, self-assessment, supplier attestation).

**Consequences if Realized:**
- Windows 10 devices unsupported post-EOL → Critical security vulnerability
- Cyber insurance invalidated → £500K-£2M breach exposure uninsured
- Compliance audit findings → ISO 27001 recertification at risk
- Extended Security Updates (ESU) cost → £50-£200 per device per year

**Affected Stakeholders:** CISO (SD-1 EOL risk), CIO (SD-5 strategic failure), IT Ops (SD-3 execution failure), CFO (SD-2 ESU costs)

**Inherent Risk:** Likelihood 5 × Impact 4 = **20 (Critical)**
**Residual Risk:** Likelihood 3 × Impact 4 = **12 (Medium)** after controls

**Current Controls:**
- 6-week timeline buffer (Sep 1 target vs Oct 14 EOL)
- Phased rollout with pause criteria
- Early hardware procurement

**Mitigation Actions:**
1. Accelerate MOD security prep (parallel activities) (£20K, Month 1) → Likelihood 3→2
2. Pre-authorize £200K ESU contingency (CFO, Sep 2025) → Impact 4→3
3. Increase wave throughput weekly vs bi-weekly (IT Ops, Month 4) → Likelihood 2→1
**Target: 6 (Within appetite 12)**

---

### Summary Risk Profiles (R-004 through R-022)

**R-004: No Business Impact Assessment (BIA) for CAAT**
- COMPLIANCE | Inherent 15 | Residual 12 | Owner: DTSL (TBD)
- Issue: BIA required for CAAT self-assessment, not completed
- Mitigation: DTSL complete by Week 2 (£5K)

**R-005: No Threat Model Documented**
- COMPLIANCE | Inherent 15 | Residual 12 | Owner: DTSL (TBD)
- Issue: Formal threat model (STRIDE/DREAD) required, not documented
- Mitigation: DTSL complete by Month 1 (£15K)

**R-006: No Supplier Attestation per ISN 2023/10**
- COMPLIANCE | Inherent 15 | Residual 12 | Owner: Procurement
- Issue: ISN 2023/10 requires continuous supplier attestation (Microsoft quarterly, hardware annually)
- Mitigation: Obtain attestations by Month 2 (£10K legal review)

**R-007: Vendor Selection - RMADS-Only Experience Insufficient**
- OPERATIONAL | Inherent 16 | Residual 12 | Owner: Procurement
- Issue: Evaluation Criteria v2.0 MQ-11 requires CAAT expertise; RMADS-only vendors score 2/8 or 0/8
- Mitigation: Enforce MQ-11 mandatory qualification, require DTSL attestation explaining CAAT vs RMADS

**R-008: Support Ticket Volume Overwhelms Helpdesk**
- OPERATIONAL | Inherent 15 | Residual 12 | Owner: Helpdesk Manager
- Issue: >5% support ticket rate overwhelms 30-person team
- Mitigation: 18hr helpdesk training, pilot validation, phased rollout, contract temp augmentation (10 FTEs, £50K)

**R-009: Budget Overruns Eliminate ROI**
- FINANCIAL | Inherent 15 | Residual 12 | Owner: CFO
- Issue: Hardware costs, professional services, MOD security costs (£50K) eliminate £X savings
- Mitigation: 10% contingency (£100K), fixed-price contracts, phased procurement

**R-010: Cloud Data Sovereignty Unclear (MOD-Assured Cloud)**
- TECHNOLOGY | Inherent 16 | Residual 9 | Owner: CISO
- Issue: Azure UK South unclear if MOD-assured for OFFICIAL-SENSITIVE data
- Mitigation: Obtain MOD cloud assurance by Month 2; fallback to GovCloud (£20K)

**R-011 through R-022:** Application compatibility (R-011), hardware incompatibility (R-012), user resistance (R-013), Copilot+ ARM64 (R-014), InTune skills gap (R-015), Conditional Access lockouts (R-016), Azure outage (R-017), ConfigMgr decommission (R-018), insider threat (R-019), supply chain (R-020), OneDrive sync (R-021), performance (R-022) - See detailed register for full profiles.

---

## D. Risk Category Analysis

### COMPLIANCE Risks (7 risks) - ❌ UNACCEPTABLE

**Average Residual Score:** 10.1 (Medium)
**Control Effectiveness:** 36% reduction

**Risk List:**
- R-001: CAAT Registration - 16 (High) ❌ Exceeds appetite (threshold 4)
- R-002: DTSL Appointment - 16 (High) ❌ Exceeds appetite
- R-004: BIA Not Complete - 12 (Medium) ❌ Exceeds appetite
- R-005: Threat Model Missing - 12 (Medium) ❌ Exceeds appetite
- R-006: Supplier Attestation - 12 (Medium) ❌ Exceeds appetite

**Key Themes:**
- Post-Aug 2023 MOD RMADS→CAAT shift not reflected in initial planning
- Three Lines of Defence governance (DTSL, Second Line, Third Line) not implemented
- ISN 2023/10 continuous supplier attestation new requirement

**Category Risk Profile:** ❌ **UNACCEPTABLE** - 5 of 7 risks exceed appetite by average 8.4 points (84%). Immediate action required.

**Recommendations:** Week 1: CAAT + DTSL, Week 2: BIA, Month 1: Threat model + self-assessment, Month 2: Supplier attestations

---

### OPERATIONAL Risks (6 risks) - ⚠️ CONCERNING

**Average Residual Score:** 7.8 (Medium)
**Control Effectiveness:** 34% reduction

**Risk List:** R-007 (Vendor RMADS-Only), R-008 (Support Tickets), R-012 (Hardware), R-013 (User Resistance), R-015 (Skills Gap), R-016 (CA Lockouts)

**Category Risk Profile:** ⚠️ **CONCERNING** - R-007 and R-008 require active management. Within appetite (threshold 6) for most.

---

### FINANCIAL Risks (3 risks) - ⚠️ CONCERNING

**Average Residual Score:** 8.0 (Medium)

**Risk List:** R-009 (Budget Overruns) - 12 (Medium) ❌ Exceeds appetite (threshold 9) by 3 points

**Key Themes:** MOD security costs (£50K) not in original budget, hardware replacement (30% devices)

**Category Risk Profile:** ⚠️ **CONCERNING** - R-009 exceeds appetite. CFO monitoring required.

---

### STRATEGIC, TECHNOLOGY, REPUTATIONAL - ✅ ACCEPTABLE

All within appetite after controls applied. Continue active monitoring.

---

## E. Risk Ownership Matrix

| Stakeholder | Owned Risks | Critical | High | Medium | Low | Total Score | Concentration |
|-------------|-------------|----------|------|--------|-----|-------------|---------------|
| **CISO** | R-002, R-010, R-019 + 2 | 0 | 1 | 4 | 0 | 83 | ⚠️ **43%** |
| **IT Ops Director** | R-003, R-008, R-012, R-015, R-017, R-018, R-021, R-022 | 0 | 2 | 5 | 1 | 61 | ⚠️ 32% |
| **CIO** | R-001, R-014 | 1 | 0 | 1 | 0 | 22 | Moderate |
| **Procurement** | R-006, R-007 | 0 | 0 | 2 | 0 | 24 | Moderate |
| **DTSL (TBD)** | R-004, R-005, R-020 | 0 | 2 | 1 | 0 | 30 | ⚠️ High |
| **CFO** | R-009 | 0 | 0 | 1 | 0 | 12 | Low |

**Critical Concern:** CISO owns 43% of total residual risk - Must delegate to DTSL once appointed

**Escalation Paths:**
- Critical/High COMPLIANCE → CISO → CIO → Board
- Timeline Slippage → IT Ops → Steering Committee → Board

---

## F. 4Ts Response Summary

| Response | Count | % | Notes |
|----------|-------|---|-------|
| **TOLERATE** | 3 | 14% | Low risks within appetite (R-017, R-019, R-022) |
| **TREAT** | 19 | 86% | Active mitigation required (R-001 through R-016, R-018, R-020, R-021) |
| **TRANSFER** | 0 | 0% | Most risks internal, cannot transfer |
| **TERMINATE** | 0 | 0% | Project essential for Windows 10 EOL compliance |

**Key Insight:** 86% require active treatment - High-risk project with significant mitigation effort needed

---

## G. Prioritized Action Plan

### Priority 1: CRITICAL (Week 1 - BLOCKERS)

| Action | Risk(s) | Owner | Due | Cost | Expected Impact |
|--------|---------|-------|-----|------|-----------------|
| **Register on CAAT** | R-001 | CIO | 2025-10-25 | £0 | Reduce R-001 from 16→4 |
| **Appoint DTSL** | R-002, R-004, R-005, R-020 | CIO | 2025-10-25 | £0 | Reduce R-002 from 16→4, unblock others |

**Priority 1 Total:** 2 actions | £0 | **28 point risk reduction** | **CRITICAL PATH**

### Priority 2: URGENT (Week 2-Month 1)

| Action | Risk(s) | Owner | Due | Cost | Expected Impact |
|--------|---------|-------|-----|------|-----------------|
| Complete BIA | R-004 | DTSL | 2025-11-01 | £5K | Reduce from 12→4 |
| Complete threat model | R-005 | DTSL | 2025-11-21 | £15K | Reduce from 12→4 |
| Complete CAAT self-assessment | R-001 | DTSL | 2025-11-21 | £10K | Reduce from 4→2 |
| Obtain supplier attestations | R-006 | Procurement | 2025-11-30 | £10K | Reduce from 12→4 |

**Priority 2 Total:** 4 actions | £40K | **28 point reduction** | Blocked by P1

### Priority 3: HIGH (Month 2-3)

| Action | Risk(s) | Owner | Due | Cost | Expected Impact |
|--------|---------|-------|-----|------|-----------------|
| Evaluate vendors using MQ-11 | R-007 | Procurement | 2025-12-15 | £0 | Reduce from 12→4 |
| Obtain MOD cloud assurance | R-010 | CISO | 2025-12-01 | £20K | Reduce from 9→4 |
| Complete app compatibility | R-011 | App Owners | 2025-12-31 | £50K | Reduce from 9→4 |
| 18hr helpdesk training | R-008 | Helpdesk Mgr | 2026-01-15 | £20K | Reduce from 12→6 |

**Priority 3 Total:** 4 actions | £90K | **22 point reduction**

### Priority 4: MEDIUM (Month 4-6)

| Action | Risk(s) | Owner | Due | Cost |
|--------|---------|-------|-----|------|
| Pilot phase (50-100 devices) | R-003, R-008, R-013, R-016 | IT Ops | 2026-02-01 | £0 |
| ESU contingency authorization | R-003 | CFO | 2025-09-01 | £0 |
| 40hr InTune training | R-015 | IT Ops | 2026-03-01 | £20K |
| Copilot+ ARM64 pilot | R-014 | CIO | 2026-03-31 | £10K |

**Priority 4 Total:** 4 actions | £30K | **15 point reduction**

### Overall Action Plan Summary

- **Total Actions:** 14 priority actions
- **Total Investment:** £160K (excludes hardware £500K-£1M in separate budget)
- **Expected Risk Reduction:** 93 points (48% reduction from 193→100)
- **Critical Path:** P1 (Week 1) blocks all subsequent activities
- **Target Completion:** Month 6 (before pilot deployment)

**Funding Status:**
- Approved: £0 (no MOD security budget in original plan)
- Requested: £160K (MOD security + training + cloud assurance)
- Contingency: £200K (ESU fallback, helpdesk augmentation)
- **Total: £360K additional funding required**

---

## H. Monitoring Framework

### Review Schedule

| Risk Level | Frequency | Reviewed By | Escalated To |
|------------|-----------|-------------|--------------|
| Critical (20-25) | Daily until mitigated | Risk Owner + CIO | Board |
| High (13-19) | Weekly | Risk Owner + PMO | Steering Committee |
| Medium (6-12) | Bi-weekly | Risk Owner | Project Manager |
| Low (1-5) | Monthly | Action Owner | Risk Owner |

### Key Risk Indicators (KRIs)

**Leading Indicators:**
1. CAAT registration status (Green: Registered | Red: Not Registered)
2. DTSL appointment status (Green: Appointed | Red: Not Appointed)
3. Vendor RFP MQ-11 scores (Green: 2+ vendors score 8/8 | Red: 0 vendors >4/8)
4. Hardware assessment completion % (Green: 100% | Red: <75%)
5. Pilot success rate (Green: >95% | Red: <90%)

**Lagging Indicators:**
6. Migration completion % vs timeline (Green: On track | Red: >4 weeks behind)
7. Support ticket rate (Green: <2% | Red: >5%)
8. Budget variance (Green: <5% | Red: >10%)
9. Compliance audit findings (Green: 0 | Red: 1+)

### Escalation Criteria

**Automatic Triggers:**
1. Any risk increases by 5+ points → Escalate to Steering Committee within 24hr
2. Any new Critical risk → Escalate to CIO immediately
3. R-001 or R-002 not mitigated by Week 2 → Escalate to Board (project blocker)
4. Any P1/P2 action delayed >1 week → Escalate to Steering Committee
5. 3+ risks in same category exceed appetite → Escalate to category owner
6. Pilot success rate <90% → Escalate + pause production waves

**Next Review Date:** 2025-10-28 (Weekly until Critical risks mitigated)

---

## I. Orange Book Compliance Checklist

✅ **A. Governance and Leadership** - Risk owners from stakeholder RACI, escalation paths, appetite set
✅ **B. Integration** - Risks linked to goals (G-1 through G-14), stakeholder drivers (SD-1 through SD-7), business case
✅ **C. Collaboration** - Risks from stakeholder concerns, MOD SbD Assessment, multiple perspectives
✅ **D. Risk Management Processes** - 6 categories, 5×5 matrix, 4Ts framework, inherent vs residual tracked
✅ **E. Continual Improvement** - Review schedule, KRIs, lessons learned, version control

---

## Next Steps

### Immediate Actions (This Week)

1. **[ ] CRITICAL**: Present risk register v2.0 to CIO - 3 Critical risks (R-001, R-002, R-003)
2. **[ ] CRITICAL**: Escalate to Board - 10 risks exceed appetite (45%), £160K funding required
3. **[ ] CRITICAL**: CIO register on CAAT - **DUE: 2025-10-25**
4. **[ ] CRITICAL**: CIO appoint DTSL - **DUE: 2025-10-25**
5. **[ ] HIGH**: Initiate MOD security consultant procurement (£40K)
6. **[ ] HIGH**: Update project timeline for 3-month MOD security prep
7. **[ ] HIGH**: Validate vendor RFP includes MQ-11 (CAAT mandatory qualification)

### Short-term Actions (Next 4 Weeks)

8. **[ ] URGENT**: DTSL complete BIA - **DUE: 2025-11-01**
9. **[ ] URGENT**: DTSL complete threat model (STRIDE) - **DUE: 2025-11-21**
10. **[ ] URGENT**: DTSL complete CAAT self-assessment - **DUE: 2025-11-21**
11. **[ ] URGENT**: Procurement obtain supplier attestations (ISN 2023/10) - **DUE: 2025-11-30**
12. **[ ] HIGH**: CISO obtain MOD cloud assurance for Azure UK South - **DUE: 2025-12-01**
13. **[ ] HIGH**: Set up weekly Critical/High risk dashboard
14. **[ ] MEDIUM**: Integrate risk register into SOBC Management Case Part E

### Medium-term Actions (This Quarter)

15. **[ ] HIGH**: Evaluate vendor RFP responses using MQ-11 CAAT criteria - **DUE: 2025-12-15**
16. **[ ] HIGH**: Complete app compatibility testing (top 100 apps) - **DUE: 2025-12-31**
17. **[ ] MEDIUM**: Deliver 18hr helpdesk training - **DUE: 2026-01-15**
18. **[ ] MEDIUM**: Monthly risk appetite compliance monitoring
19. **[ ] MEDIUM**: Quarterly risk process improvement review

### Long-term Actions (Next 6 Months)

20. **[ ] MEDIUM**: Execute pilot phase (50-100 devices) - **DUE: 2026-02-01**
21. **[ ] MEDIUM**: Review risk register post-pilot, update scores
22. **[ ] MEDIUM**: Continue weekly Steering Committee reviews until Critical/High → Medium
23. **[ ] LOW**: Quarterly Board updates on risk appetite compliance

---

## Document Approval

| Role | Name | Signature | Date | Status |
|------|------|-----------|------|--------|
| **Risk Register Owner** | IT Operations Director | | | PENDING |
| **Project Sponsor** | CIO | | | PENDING |
| **Security Executive** | CISO | | | PENDING |
| **Budget Owner** | CFO | | | PENDING |

**Approval Status:** DRAFT - Pending CIO review and Board escalation for risks exceeding appetite

---

**END OF RISK REGISTER v2.0**

---

*This risk register follows HM Treasury Orange Book (2023) principles and integrates with ArcKit's stakeholder-driven architecture governance framework. Updated for MOD Secure by Design continuous assurance framework (post-August 2023 CAAT transition).*

*For questions: IT Operations Director | risk-register-owner@organization.gov.uk*
