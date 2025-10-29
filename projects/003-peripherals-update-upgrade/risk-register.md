# Risk Register: Peripherals Update and Upgrade

**Project ID**: 003
**Version**: 1.0
**Date**: 2025-10-29
**Owner**: Project Manager

---

## Risk Management Framework

This risk register uses a 5x5 matrix for assessing probability and impact. Risks are categorized and assigned owners. The response strategy follows the 4Ts model: Treat, Tolerate, Transfer, or Terminate.

### Risk Matrix

| Probability | Very Low (1) | Low (2) | Medium (3) | High (4) | Very High (5) |
|---|---|---|---|---|---|
| **Very High (5)** | Medium | High | High | Critical | Critical |
| **High (4)** | Medium | Medium | High | High | Critical |
| **Medium (3)** | Low | Medium | Medium | High | High |
| **Low (2)** | Low | Low | Medium | Medium | Medium |
| **Very Low (1)** | Very Low | Low | Low | Low | Medium |

---

## Risk Log

| ID | Category | Description | Inherent Impact | Inherent Probability | Inherent Score | Mitigation Strategy (Response) | Residual Impact | Residual Probability | Residual Score | Owner | Status |
|----|----------|-------------|-----------------|----------------------|----------------|------------------------------------|-----------------|----------------------|----------------|-------|--------|
| R-001 | Financial | **Budget Overrun**: Initial project scope exceeded allocated £1M budget. Resolved by re-scoping into a multi-year phased rollout. | 5 (Very High) | 5 (Very High) | **Critical** | **Treat**: Project re-scoped into a multi-year phased rollout with executive approval for a reduced Year 1 scope fitting the £500K budget. | 1 (Very Low) | 1 (Very Low) | **Very Low** | CFO | Closed |
| R-002 | Procurement | **Supply Chain Delays**: Semiconductor shortages and shipping disruptions delay peripheral delivery by 8-12 weeks. | 4 (High) | 3 (Medium) | **High** | **Treat**: Place orders 12-16 weeks in advance. Maintain a 10% buffer inventory for critical items (headsets, FIDO2 keys). Identify and pre-qualify alternative vendors. | 2 (Low) | 3 (Medium) | **Medium** | Procurement Manager | Open |
| R-003 | Technology | **Vendor Product Gap**: Preferred vendor (Dell) does not supply FIDO2 security keys or certified ergonomic keyboards. | 3 (Medium) | 5 (Very High) | **High** | **Treat**: Adopt a multi-vendor procurement strategy. Source FIDO2 keys from Yubico and ergonomic keyboards from Logitech/Microsoft. | 1 (Very Low) | 2 (Low) | **Low** | IT Operations Lead | Open |
| R-004 | People | **User Resistance**: Users resist adopting new ergonomic keyboards, leading to low satisfaction and productivity dips. | 2 (Low) | 3 (Medium) | **Medium** | **Treat**: Develop a comprehensive change management plan. Offer user training on the benefits of ergonomic peripherals. Provide a traditional keyboard option for users who strongly object after a trial period. | 1 (Very Low) | 2 (Low) | **Low** | HR | Open |
| R-005 | Security | **FIDO2 Key Loss**: Privileged users lose their FIDO2 keys, locking them out of critical systems. | 4 (High) | 2 (Low) | **Medium** | **Treat**: Procure two FIDO2 keys for each privileged user (primary and backup). Establish a rapid 24-hour replacement and revocation process. | 2 (Low) | 2 (Low) | **Low** | CISO | Open |

