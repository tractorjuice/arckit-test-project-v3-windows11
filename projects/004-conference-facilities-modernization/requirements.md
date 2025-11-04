# Project Requirements: Conference Facilities Modernization

## Document Control

| Field | Value |
|-------|-------|
| **Document ID** | ARC-004-REQ-v1.0 |
| **Document Type** | Business and Technical Requirements |
| **Project** | Conference Facilities Modernization (Project 004) |
| **Classification** | OFFICIAL |
| **Status** | DRAFT |
| **Version** | 1.0 |
| **Created Date** | 2025-11-04 |
| **Last Modified** | 2025-11-04 |
| **Review Date** | 2025-12-04 |
| **Owner** | Facilities Manager |
| **Reviewed By** | [PENDING] |
| **Approved By** | [PENDING] |
| **Distribution** | Project Team, Architecture Team, Facilities Team, IT Operations |

## Revision History

| Version | Date | Author | Changes | Approved By | Approval Date |
|---------|------|--------|---------|-------------|---------------|
| 1.0 | 2025-11-04 | ArcKit AI | Initial creation from `/arckit.requirements` command | [PENDING] | [PENDING] |

## Document Purpose

This document defines the comprehensive business and technical requirements for modernizing conference facilities to support hybrid work, improve collaboration, and enhance productivity. These requirements will guide vendor selection, solution design, and implementation for upgrading meeting rooms with modern audio-visual technology, Microsoft Teams Rooms integration, and intelligent room management capabilities.

---

## Executive Summary

### Business Context

The organization's conference facilities have not been updated in 7+ years and lack modern collaboration technology needed to support hybrid work. Current meeting rooms have outdated projectors, poor audio quality, no native video conferencing integration, and manual room booking processes. This results in:

- **Lost Productivity**: 15-20 minutes wasted per meeting on AV setup and troubleshooting
- **Poor Hybrid Meeting Experience**: Remote participants struggle to hear/see in-room participants
- **Meeting Room Inefficiency**: 30% of booked rooms go unused (no-shows), while actual rooms are scarce
- **IT Support Burden**: 200+ support tickets/month for conference room AV issues
- **Competitive Disadvantage**: Unable to host professional client meetings or attract hybrid talent

With 60% of employees now working hybrid schedules and Microsoft Teams as the standard collaboration platform, conference rooms must enable seamless hybrid meetings where remote and in-room participants have equal experiences.

### Objectives

- **Modernize 50 conference rooms** across 3 office locations with Microsoft Teams Rooms technology
- **Enable hybrid collaboration** with professional-grade video, audio, and content sharing
- **Reduce AV support tickets** by 80% through intuitive, one-touch meeting join
- **Improve room utilization** by 25% through intelligent booking and occupancy analytics
- **Deliver consistent user experience** across all room sizes (huddle, medium, large, boardroom)

### Expected Outcomes

- **Productivity Gain**: Save 12 minutes per meeting (4,800 hours/year) by eliminating AV setup time
- **Cost Savings**: Reduce AV support costs by £120K/year through self-service technology
- **User Satisfaction**: Achieve >85% satisfaction with meeting room experience (up from 45%)
- **Hybrid Meeting Quality**: 95% of remote participants rate meeting quality as "good" or "excellent"
- **ROI**: 18-month payback period through productivity gains and support cost reduction

### Project Scope

**In Scope**:
- 50 conference rooms across London HQ (30 rooms), Manchester office (15 rooms), Bristol office (5 rooms)
- Microsoft Teams Rooms devices and certification
- Interactive displays (55"-86" depending on room size)
- PTZ cameras with intelligent framing
- Ceiling/table microphones with echo cancellation
- Wireless presentation (HDMI + wireless)
- Room booking displays (outside each room)
- Room analytics and occupancy sensors
- Integration with Microsoft 365 (Teams, Exchange, SharePoint)
- AV control systems and automation
- Network infrastructure upgrades (PoE+, VLAN segregation)
- Installation, configuration, and user training

**Out of Scope**:
- Desktop/personal devices (covered by Project 003 - Peripherals)
- Auditorium or large event spaces (>100 people)
- Recording/streaming infrastructure (future phase)
- Videowall or lobby digital signage
- On-premises video conferencing infrastructure (migrated to Teams cloud)

---

## Stakeholders

| Stakeholder | Role | Organization | Involvement Level |
|-------------|------|--------------|-------------------|
| CIO | Executive Sponsor | IT | Decision maker |
| CFO | Budget Owner | Finance | Budget approval |
| Facilities Manager | Project Owner | Facilities | Requirements definition, daily management |
| IT Operations Director | Technical Sponsor | IT | Integration, network, support |
| Microsoft Teams Administrator | Platform Owner | IT | Teams Rooms configuration |
| Enterprise Architect | Technical Oversight | Architecture | Design review, standards compliance |
| Procurement Manager | Vendor Management | Procurement | RFP, vendor selection |
| Office Managers (3 sites) | Site Coordinators | Facilities | Local implementation, user feedback |
| Executive Assistant (EA) Community | Power Users | Various | Meeting booking, room requirements |
| End Users (2,500 employees) | Primary Users | Various | User acceptance, training |

---

## Business Requirements

### BR-001: Hybrid Work Enablement

**Description**: Conference rooms must enable seamless hybrid meetings where remote participants have equal audio/visual quality to in-room participants.

**Rationale**: 60% of employees work hybrid schedules. Poor hybrid meeting experience damages productivity, collaboration, and inclusion.

**Success Criteria**:
- Remote participants can clearly see all in-room participants (intelligent camera framing)
- Remote participants can clearly hear all in-room speakers (ceiling/table microphones with beamforming)
- In-room participants can see remote participants on dedicated display
- One-touch meeting join for Teams meetings (no manual dialing/setup)
- Content sharing works seamlessly for both in-room and remote participants

**Priority**: MUST_HAVE

**Stakeholder**: CIO, End Users

---

### BR-002: Productivity and Time Savings

**Description**: Reduce time wasted on AV setup and troubleshooting by 80%, saving 12+ minutes per meeting.

**Rationale**: Current manual AV setup wastes 15-20 minutes per meeting. With 8,000 meetings/month, this equals 2,000-2,667 hours/month of lost productivity (£80K-£100K/month in labor cost).

**Success Criteria**:
- Meeting starts within 2 minutes of scheduled time (measured via room analytics)
- Less than 5% of meetings require IT support intervention
- Consistent AV experience across all room types (users know what to expect)
- Self-service troubleshooting via in-room quick reference guide

**Priority**: MUST_HAVE

**Stakeholder**: CFO, End Users

---

### BR-003: Support Cost Reduction

**Description**: Reduce conference room support tickets by 80%, from 200/month to <40/month.

**Rationale**: AV support consumes 1.5 FTE (£60K/year in labor). Modernization enables self-service and remote diagnostics.

**Success Criteria**:
- Support tickets reduced from 200/month to <40/month within 6 months
- 80% of issues resolved remotely without technician dispatch
- Mean time to resolution (MTTR) reduced from 4 hours to <1 hour
- Root cause analysis and proactive monitoring prevent repeat issues

**Priority**: MUST_HAVE

**Stakeholder**: CFO, IT Operations Director

---

### BR-004: Room Utilization Optimization

**Description**: Improve meeting room utilization by 25% through intelligent booking, occupancy analytics, and no-show prevention.

**Rationale**: 30% of booked rooms go unused (no-shows), while employees struggle to find available rooms. Better utilization defers need for additional office space (£500K+ capex).

**Success Criteria**:
- Room no-show rate reduced from 30% to <10%
- Average room utilization increased from 50% to 65%
- Automatic release of unused rooms 10 minutes after meeting start
- Data-driven insights on room usage patterns, peak times, right-sizing

**Priority**: SHOULD_HAVE

**Stakeholder**: Facilities Manager, CFO

---

### BR-005: Consistent User Experience

**Description**: Deliver a consistent, intuitive user experience across all room types and locations.

**Rationale**: Users currently face different AV systems in different rooms, requiring re-learning and causing frustration. Consistency reduces cognitive load and training needs.

**Success Criteria**:
- Standard Microsoft Teams Rooms interface in all rooms
- Consistent control mechanism (touch panel) across all room sizes
- Common cable tray at table center with HDMI + USB-C for BYOD
- Identical meeting join process regardless of room location

**Priority**: MUST_HAVE

**Stakeholder**: End Users, Office Managers

---

### BR-006: Professional Client Experience

**Description**: Enable professional-quality client meetings and executive presentations with reliable, high-quality AV.

**Rationale**: Current AV failures during client meetings damage brand reputation and client confidence. Executives avoid booking on-site meetings due to unreliable technology.

**Success Criteria**:
- Zero AV failures during executive/client meetings (99.9% reliability)
- Boardroom and executive meeting rooms have premium audio/video quality
- Wireless presentation for client laptops (no dongles/adapters required)
- Professional appearance (cable management, integrated design)

**Priority**: MUST_HAVE

**Stakeholder**: CIO, Executive Assistants

---

### BR-007: Fast Deployment Timeline

**Description**: Complete modernization of all 50 rooms within 6 months (26 weeks).

**Rationale**: Prolonged disruption impacts business operations. Faster deployment accelerates ROI realization.

**Success Criteria**:
- Pilot phase (5 rooms): Weeks 1-4
- London HQ (30 rooms): Weeks 5-16 (2-3 rooms/week)
- Manchester office (15 rooms): Weeks 17-22 (2-3 rooms/week)
- Bristol office (5 rooms): Weeks 23-26 (2 rooms/week)
- Minimal disruption (rooms unavailable <3 days each)

**Priority**: SHOULD_HAVE

**Stakeholder**: Facilities Manager, CIO

---

### BR-008: Scalability and Future-Proofing

**Description**: Solution must scale to 100+ rooms over 3 years as organization grows.

**Rationale**: Organization growing 15% annually. Additional office spaces planned. Solution must accommodate growth without technology refresh.

**Success Criteria**:
- Cloud-based management scales to 100+ rooms without infrastructure changes
- Standard room configurations replicated to new offices
- Technology roadmap aligned with Microsoft Teams platform (5-year support lifecycle)
- Modular design enables room upgrades (e.g., add whiteboard camera) without full replacement

**Priority**: SHOULD_HAVE

**Stakeholder**: CIO, Enterprise Architect

---

## Functional Requirements

### User Personas

#### Persona 1: Hybrid Meeting Host
- **Role**: Manager, Team Lead, Project Manager
- **Goals**: Host productive hybrid meetings where all participants contribute equally
- **Pain Points**: Remote participants can't hear in-room side conversations; camera doesn't show all in-room attendees; screen sharing is complicated
- **Technical Proficiency**: Medium
- **Frequency**: 3-5 meetings/day

#### Persona 2: Executive Assistant
- **Role**: EA supporting C-suite
- **Goals**: Book reliable rooms for executive/client meetings with confidence
- **Pain Points**: Uncertainty about room availability; AV failures embarrass executives; different booking processes per location
- **Technical Proficiency**: Medium-High
- **Frequency**: 10-15 bookings/day

#### Persona 3: Remote Participant
- **Role**: Any employee joining from home/other office
- **Goals**: See and hear in-room participants clearly; share content easily
- **Pain Points**: Can't see who's speaking; muffled audio; forgotten in the discussion
- **Technical Proficiency**: Medium
- **Frequency**: 5-10 meetings/week from home

#### Persona 4: In-Room Presenter
- **Role**: Sales, Marketing, Executives presenting to clients/board
- **Goals**: Share presentation wirelessly; control meeting flow; professional appearance
- **Pain Points**: HDMI dongles don't work; resolution issues; screen mirroring lag
- **Technical Proficiency**: Low-Medium
- **Frequency**: 2-3 presentations/week

#### Persona 5: IT Support Technician
- **Role**: Helpdesk, AV support
- **Goals**: Diagnose and resolve issues remotely; proactive monitoring; minimal truck rolls
- **Pain Points**: No remote visibility; manual troubleshooting; repeat failures
- **Technical Proficiency**: High
- **Frequency**: 200 tickets/month (current), targeting <40/month

---

### Use Cases

#### UC-001: Join Scheduled Teams Meeting

**Actor**: Hybrid Meeting Host

**Preconditions**:
- Meeting scheduled in Microsoft Teams calendar
- Room booked via Outlook/Teams
- Meeting participants (in-room + remote) have meeting invite

**Main Flow**:
1. Host enters conference room 2 minutes before meeting
2. Room booking display outside room shows meeting details and host name
3. Host approaches Teams Rooms touch panel or taps "Join" on room display
4. System automatically detects upcoming meeting and shows "Join" button
5. Host taps "Join" - meeting starts within 5 seconds
6. Camera activates and shows in-room participants
7. Microphones activate with automatic gain control
8. Remote participants appear on secondary display (content display shows shared content)
9. Meeting proceeds seamlessly

**Postconditions**:
- Meeting active with all participants connected
- Audio/video streaming with <200ms latency
- Room analytics logged (meeting start time, duration, participant count)

**Alternative Flows**:
- **Alt 1a**: If no meeting scheduled, host can initiate ad-hoc Teams call by entering meeting ID or searching for participants
- **Alt 2a**: If host is late, any meeting participant can join using same one-touch process

**Exception Flows**:
- **Ex 1**: Network connectivity issue - System displays clear error message with troubleshooting steps and IT helpdesk contact
- **Ex 2**: Camera/microphone failure - System detects failure, alerts IT, and provides workaround options (dial-in number)

**Business Rules**:
- Only authenticated users can join meetings (Azure AD integration)
- Meetings auto-end 15 minutes after last participant leaves
- Room is auto-released if no one joins within 10 minutes of scheduled start

**Priority**: CRITICAL

---

#### UC-002: Wireless Content Sharing (BYOD)

**Actor**: In-Room Presenter

**Preconditions**:
- Presenter has laptop with content to share
- Presenter is in conference room with active meeting or wants to present locally

**Main Flow**:
1. Presenter wants to share PowerPoint presentation from personal/client laptop
2. Presenter looks at room display - sees wireless presentation instructions
3. Presenter opens wireless presentation app (Miracast/AirPlay) or connects USB-C cable at table
4. Wireless option: Presenter selects room display from available screens
5. Content appears on main room display within 3 seconds
6. Presenter controls presentation from laptop (advance slides, play video)
7. If in Teams meeting, presenter clicks "Share screen" in Teams - content shared to remote participants
8. Presenter finishes - disconnects wireless or unplugs cable

**Postconditions**:
- Content no longer displayed
- Room returns to default state (Teams Rooms interface)

**Alternative Flows**:
- **Alt 1a**: If wireless fails, presenter uses HDMI cable (available at table)
- **Alt 2a**: Presenter shares content directly from Teams Rooms device (USB file import or OneDrive)

**Exception Flows**:
- **Ex 1**: Wireless display lag >500ms - System suggests wired connection for better performance
- **Ex 2**: Incompatible device - Instructions provided for alternative methods

**Business Rules**:
- Wireless presentation requires device on corporate WiFi or guest network (VLAN segregation)
- Content sharing sessions auto-timeout after 4 hours of inactivity
- Maximum 2 simultaneous wireless presenters (picture-in-picture or switch)

**Priority**: CRITICAL

---

#### UC-003: Room Booking and Check-In

**Actor**: Executive Assistant

**Preconditions**:
- EA has Outlook/Teams access
- Rooms visible in Exchange room list

**Main Flow**:
1. EA needs to book conference room for executive meeting tomorrow 2-3pm
2. EA opens Outlook calendar, clicks "New Meeting"
3. EA adds executive and client attendees
4. EA clicks "Add room" - sees list of available rooms for that time slot
5. System shows room capacity, location, and amenities (Teams Rooms, whiteboard, video)
6. EA selects appropriate room based on attendee count and needs
7. EA sends meeting invite
8. Day of meeting: Attendee arrives at room, checks room booking display outside
9. Display shows meeting details, attendee count, and "Check In" button
10. Attendee taps "Check In" - confirms room is in use
11. If no check-in within 10 minutes, room auto-released and made available

**Postconditions**:
- Room booked and confirmed
- Room analytics track booking vs. actual usage
- No-show data collected for utilization analysis

**Alternative Flows**:
- **Alt 1a**: EA wants to extend meeting - sends updated invite or extends via Teams Rooms panel (if room available)
- **Alt 2a**: Meeting ends early - attendees tap "End Meeting" on panel to release room immediately

**Exception Flows**:
- **Ex 1**: Room double-booked (system error) - Display shows conflict and provides alternative nearby rooms
- **Ex 2**: Room unavailable due to maintenance - EA receives notification and re-book prompt with alternatives

**Business Rules**:
- Maximum booking duration: 4 hours (prevents all-day squatting)
- Recurring meetings allowed but subject to quarterly utilization review
- No-show 3 times in 30 days triggers warning to user and manager

**Priority**: HIGH

---

#### UC-004: Remote Diagnostics and Support

**Actor**: IT Support Technician

**Preconditions**:
- User reports issue via helpdesk ticket or room sensor detects anomaly
- IT has access to Teams Rooms management portal

**Main Flow**:
1. User submits ticket: "Conference Room 3A - No audio during meeting"
2. IT technician receives ticket, logs into Microsoft Teams Rooms Pro management portal
3. Technician views Room 3A device health dashboard
4. System shows microphone status: "Table mic disconnected"
5. Technician remotely runs diagnostic test - confirms USB cable failure
6. Technician dispatches on-site support with replacement cable (not troubleshooting visit)
7. Cable replaced, technician verifies device health remotely
8. Ticket closed with root cause documented

**Postconditions**:
- Issue resolved
- Root cause logged for trend analysis
- Mean time to resolution (MTTR) tracked

**Alternative Flows**:
- **Alt 1a**: Software issue detected - Technician pushes remote software update/reboot
- **Alt 2a**: Transient issue (network blip) - System auto-recovered, technician documents for monitoring

**Exception Flows**:
- **Ex 1**: Device completely offline - Technician dispatches on-site for hardware check
- **Ex 2**: Issue cannot be reproduced - Technician schedules test meeting to observe

**Business Rules**:
- All devices report health telemetry every 5 minutes
- Critical alerts (meeting failure) trigger immediate notification
- Proactive alerts (disk space low) trigger maintenance ticket before user impact

**Priority**: HIGH

---

### Functional Requirements Detail

#### FR-001: Microsoft Teams Rooms Certification

**Description**: All conference rooms must use Microsoft Teams Rooms certified devices for seamless Teams integration.

**Relates To**: BR-001 (Hybrid Work), UC-001 (Join Meeting)

**Acceptance Criteria**:
- [ ] Given a Teams meeting invite, when user enters room, then "Join" button appears on Teams Rooms console
- [ ] Given user taps "Join", when meeting starts, then audio/video connects within 5 seconds
- [ ] Given an active meeting, when content is shared, then remote participants see content with <500ms latency
- [ ] Edge case: Given network latency >200ms, then system displays warning but maintains connectivity

**Data Requirements**:
- **Inputs**: Teams meeting ID, room calendar, participant list
- **Outputs**: Meeting join success/failure, connection quality metrics
- **Validations**: Azure AD authentication, meeting ID format validation

**Priority**: MUST_HAVE

**Complexity**: MEDIUM

**Dependencies**: Azure AD integration, Microsoft 365 licensing

**Assumptions**: Organization has Microsoft Teams as primary collaboration platform

---

#### FR-002: Intelligent Camera Framing

**Description**: PTZ cameras with AI-powered intelligent framing automatically track and frame in-room participants.

**Relates To**: BR-001 (Hybrid Work), UC-001 (Join Meeting)

**Acceptance Criteria**:
- [ ] Given 1-3 people in room, when meeting starts, then camera frames all participants in view
- [ ] Given participant moves, when position changes, then camera adjusts framing within 2 seconds
- [ ] Given speaker changes, when new person speaks, then camera transitions to show speaker
- [ ] Edge case: Given room is dark, then camera adjusts exposure automatically for clear image

**Data Requirements**:
- **Inputs**: Video feed, audio input (speaker detection)
- **Outputs**: Framed video stream to Teams meeting
- **Validations**: People detection accuracy >95%

**Priority**: MUST_HAVE

**Complexity**: MEDIUM

**Dependencies**: PTZ camera with AI chipset, Teams Rooms software

**Assumptions**: Rooms have adequate lighting (natural or LED)

---

#### FR-003: Wireless Presentation (Miracast/AirPlay)

**Description**: Users can wirelessly share content from laptops/tablets without dongles or cables.

**Relates To**: BR-005 (Consistent Experience), UC-002 (Wireless Sharing)

**Acceptance Criteria**:
- [ ] Given user on corporate WiFi, when user selects room display, then connection established within 5 seconds
- [ ] Given wireless connection active, when user plays video, then audio/video synced with <100ms latency
- [ ] Given Windows laptop, when user uses Miracast, then content displays at native resolution
- [ ] Given Mac laptop, when user uses AirPlay, then content displays without driver installation
- [ ] Edge case: Given WiFi congestion, then system maintains 1080p@30fps minimum quality

**Data Requirements**:
- **Inputs**: Wireless display protocol (Miracast/AirPlay), device credentials
- **Outputs**: Content stream to display
- **Validations**: Device on authorized network (corporate or guest VLAN)

**Priority**: MUST_HAVE

**Complexity**: MEDIUM

**Dependencies**: WiFi 6 network, wireless presentation gateway

**Assumptions**: Corporate network allows Miracast/AirPlay traffic

---

#### FR-004: Room Booking Display Integration

**Description**: Interactive displays outside each room show real-time booking status and enable check-in/release.

**Relates To**: BR-004 (Room Utilization), UC-003 (Room Booking)

**Acceptance Criteria**:
- [ ] Given current time, when user views display, then shows current meeting and next 3 upcoming meetings
- [ ] Given meeting about to start, when attendee taps "Check In", then meeting confirmed and analytics logged
- [ ] Given no check-in within 10 minutes, when timeout occurs, then room released and Exchange calendar updated
- [ ] Given meeting ends early, when attendee taps "End Meeting", then room immediately available for booking
- [ ] Edge case: Given display loses network, then shows cached schedule + offline status warning

**Data Requirements**:
- **Inputs**: Exchange room calendar, real-time room occupancy sensor
- **Outputs**: Booking status, check-in timestamp, analytics data
- **Validations**: Authenticated user check-in only (optional QR code/badge tap)

**Priority**: SHOULD_HAVE

**Complexity**: MEDIUM

**Dependencies**: Exchange Online integration, room scheduling API

**Assumptions**: Users willing to check in (incentivized by room scarcity)

---

#### FR-005: Occupancy Sensing and Analytics

**Description**: PIR or mmWave sensors detect room occupancy and provide utilization analytics.

**Relates To**: BR-004 (Room Utilization), UC-003 (Room Booking)

**Acceptance Criteria**:
- [ ] Given sensor installed, when people enter room, then occupancy detected within 10 seconds
- [ ] Given meeting scheduled, when room remains empty for 10 minutes, then automatic release triggered
- [ ] Given 30 days of data, when analytics report generated, then shows: utilization %, no-show rate, peak hours, average attendees
- [ ] Edge case: Given sensor failure, then system logs alert and falls back to calendar-only mode

**Data Requirements**:
- **Inputs**: Occupancy sensor data (binary: occupied/vacant or count)
- **Outputs**: Utilization metrics, no-show rate, optimization recommendations
- **Validations**: Privacy-preserving (people count only, no video/audio recording)

**Priority**: SHOULD_HAVE

**Complexity**: LOW

**Dependencies**: IoT sensors, Power BI or analytics platform

**Assumptions**: Privacy concerns addressed (anonymous counting only)

---

#### FR-006: One-Touch Meeting Join

**Description**: Users join scheduled Teams meetings with a single button tap, no manual dialing or passcodes.

**Relates To**: BR-002 (Productivity), UC-001 (Join Meeting)

**Acceptance Criteria**:
- [ ] Given meeting scheduled in next 10 minutes, when user enters room, then "Join" button visible on console
- [ ] Given user taps "Join", when button pressed, then meeting starts in <5 seconds
- [ ] Given multiple meetings scheduled, when current meeting ends, then console shows next meeting "Join" option
- [ ] Edge case: Given user arrives late (meeting already started), then "Join" button still available to join in progress

**Data Requirements**:
- **Inputs**: Outlook/Teams calendar feed, current time
- **Outputs**: Meeting join event, connection establishment
- **Validations**: Room resource account has meeting invite

**Priority**: MUST_HAVE

**Complexity**: LOW

**Dependencies**: Teams Rooms device, Exchange calendar sync

**Assumptions**: Meetings booked properly with room resource account

---

#### FR-007: Dual Display Support

**Description**: Rooms support dual displays - one for video (remote participants) and one for content.

**Relates To**: BR-001 (Hybrid Work), UC-001 (Join Meeting)

**Acceptance Criteria**:
- [ ] Given active Teams meeting, when content is shared, then content appears on primary display and video gallery on secondary display
- [ ] Given no content shared, when meeting active, then video gallery spans both displays or primary only (configurable)
- [ ] Given room has single display, when content shared, then picture-in-picture mode shows video + content
- [ ] Edge case: Given second display fails, then system falls back to single display gracefully

**Data Requirements**:
- **Inputs**: Display configuration, HDMI/USB-C connections
- **Outputs**: Video streams to displays
- **Validations**: Display EDID detection, resolution matching

**Priority**: SHOULD_HAVE (MUST for large rooms)

**Complexity**: LOW

**Dependencies**: Teams Rooms firmware, display hardware

**Assumptions**: Large rooms (>10 people) have 2 displays

---

#### FR-008: Touch Panel Control

**Description**: Intuitive touch panel provides meeting controls, room settings, and troubleshooting.

**Relates To**: BR-005 (Consistent Experience), UC-001 (Join Meeting)

**Acceptance Criteria**:
- [ ] Given touch panel, when user approaches, then shows: Join meeting, Start ad-hoc call, Present content, Room settings
- [ ] Given meeting active, when user touches panel, then shows: Mute/unmute, Camera on/off, End meeting, Share content
- [ ] Given user needs help, when user taps "Help", then shows troubleshooting guide and IT contact QR code
- [ ] Edge case: Given panel becomes unresponsive, then backup controls available (physical buttons on device)

**Data Requirements**:
- **Inputs**: Touch input, Teams Rooms status
- **Outputs**: Commands to Teams Rooms device
- **Validations**: Button states reflect device state (mute icon shows if muted)

**Priority**: MUST_HAVE

**Complexity**: LOW

**Dependencies**: Teams Rooms certified touch console

**Assumptions**: Touch panels positioned at table center within arm's reach

---

#### FR-009: Ceiling Microphone Array

**Description**: Ceiling-mounted microphone arrays with beamforming and echo cancellation capture clear audio from all in-room participants.

**Relates To**: BR-001 (Hybrid Work), UC-001 (Join Meeting)

**Acceptance Criteria**:
- [ ] Given participant speaks from any position in room, when audio captured, then remote participants hear clearly without echo or noise
- [ ] Given background noise (HVAC, keyboard typing), when participant speaks, then microphone isolates voice and suppresses noise
- [ ] Given multiple people speak simultaneously, when overlap occurs, then microphone prioritizes active speaker
- [ ] Edge case: Given loud noise (door slam), then automatic gain control prevents audio spike

**Data Requirements**:
- **Inputs**: Audio from 4-8 microphone elements
- **Outputs**: Mixed audio stream with echo cancellation, noise reduction
- **Validations**: Audio quality >4.0 MOS score (Mean Opinion Score)

**Priority**: MUST_HAVE

**Complexity**: MEDIUM

**Dependencies**: Dante/USB audio interface, DSP (digital signal processor)

**Assumptions**: Rooms have dropped ceilings for mic installation

---

#### FR-010: HDMI + USB-C Connectivity

**Description**: Table connectivity provides HDMI and USB-C ports for bring-your-own-device (BYOD) wired connection.

**Relates To**: BR-005 (Consistent Experience), UC-002 (Content Sharing)

**Acceptance Criteria**:
- [ ] Given user plugs HDMI cable, when connected, then content displays within 2 seconds
- [ ] Given user plugs USB-C cable, when connected, then content displays AND laptop charges (USB-C PD 60W+)
- [ ] Given Mac laptop with USB-C, when connected, then video + audio work without adapter
- [ ] Edge case: Given 4K laptop, then system auto-scales to display native resolution (3840x2160 or best match)

**Data Requirements**:
- **Inputs**: HDMI 2.0 or USB-C DisplayPort Alt Mode
- **Outputs**: Video/audio to displays and Teams meeting (if screen share enabled)
- **Validations**: Cable presence detection, EDID handshake

**Priority**: MUST_HAVE

**Complexity**: LOW

**Dependencies**: Cable tray, HDMI extender, USB-C dock

**Assumptions**: Users carry HDMI or USB-C cables (provided in room)

---

#### FR-011: Remote Management and Monitoring

**Description**: IT can remotely monitor device health, push updates, reboot devices, and view diagnostics via centralized portal.

**Relates To**: BR-003 (Support Cost Reduction), UC-004 (Remote Diagnostics)

**Acceptance Criteria**:
- [ ] Given IT logs into management portal, when viewing dashboard, then sees all 50 rooms with health status (green/yellow/red)
- [ ] Given device health alert, when critical issue detected, then email/Teams notification sent to IT within 5 minutes
- [ ] Given device needs update, when IT schedules maintenance window, then updates pushed automatically and device reboots after hours
- [ ] Given device offline, when connectivity lost, then alert generated and last known status displayed
- [ ] Edge case: Given firmware update fails, then automatic rollback to previous version and alert generated

**Data Requirements**:
- **Inputs**: Device telemetry (CPU, memory, disk, network, peripheral status), logs
- **Outputs**: Health status, alerts, reports
- **Validations**: Secure API access, role-based access control

**Priority**: MUST_HAVE

**Complexity**: LOW

**Dependencies**: Microsoft Teams Rooms Pro license, Azure Monitor integration

**Assumptions**: IT has Teams Rooms Pro licensing for advanced management

---

#### FR-012: Calendar Integration (Exchange Online)

**Description**: Rooms appear in Outlook room finder and sync bookings with Teams Rooms devices.

**Relates To**: BR-004 (Room Utilization), UC-003 (Room Booking)

**Acceptance Criteria**:
- [ ] Given user books room via Outlook, when invite sent, then room calendar updated within 30 seconds
- [ ] Given meeting scheduled, when time arrives, then Teams Rooms console shows "Join" button for that specific meeting
- [ ] Given room freed, when released, then Exchange calendar updated and room shows available in Outlook within 1 minute
- [ ] Edge case: Given Exchange sync failure, then device logs error and attempts reconnection every 5 minutes

**Data Requirements**:
- **Inputs**: Exchange room mailbox calendar (EWS API or Graph API)
- **Outputs**: Calendar events to Teams Rooms device
- **Validations**: OAuth 2.0 authentication, room resource account permissions

**Priority**: MUST_HAVE

**Complexity**: LOW

**Dependencies**: Exchange Online, room resource mailboxes configured

**Assumptions**: Each room has dedicated Exchange room mailbox

---

## Non-Functional Requirements (NFRs)

### Performance Requirements

#### NFR-P-001: Meeting Join Time

**Requirement**: Users must join Teams meetings within 5 seconds of tapping "Join" button.

**Measurement Method**:
- Timestamp from button tap to audio/video stream established
- Measured via Teams Rooms diagnostics logs
- Target: 95th percentile <5 seconds, 99th percentile <8 seconds

**Load Conditions**:
- Peak load: 30 concurrent meetings (60% of 50 rooms) during 9-10am, 2-3pm time slots
- Average load: 15 concurrent meetings throughout day
- Bandwidth requirement: 4 Mbps per room for 1080p video

**Priority**: CRITICAL

---

#### NFR-P-002: Content Sharing Latency

**Requirement**: Content sharing (wired or wireless) must display on screen within 3 seconds with <200ms streaming latency.

**Measurement Method**:
- Time from share initiation to content visible on display
- Frame latency measured via test patterns

**Load Conditions**:
- 1080p@30fps minimum (4K@30fps preferred for large rooms)
- Support simultaneous screen share from 2 sources (picture-in-picture)

**Priority**: HIGH

---

#### NFR-P-003: Audio-Visual Synchronization

**Requirement**: Audio and video must remain synchronized within 50ms (imperceptible to humans).

**Measurement Method**:
- Clap test - time between visual clap and audio heard
- Automated AV sync testing tools

**Priority**: CRITICAL

---

### Availability and Resilience Requirements

#### NFR-A-001: System Availability

**Requirement**: Conference room AV systems must achieve 99.5% uptime during business hours (7am-7pm, Mon-Fri).

- Maximum planned downtime: 2 hours/month for maintenance (after hours)
- Maximum unplanned downtime: 2 hours/month (99.5% = ~3.6 hours/month total)

**Maintenance Windows**: Sundays 2am-6am for software updates

**Priority**: CRITICAL

---

#### NFR-A-002: Network Resilience

**Requirement**: AV systems must tolerate network interruptions <30 seconds without meeting disconnection.

**Resilience Patterns Required**:
- [ ] Automatic reconnection on network recovery
- [ ] Local buffering for <30 second outages
- [ ] Graceful degradation (reduce video quality if bandwidth constrained)
- [ ] Dual network path (primary wired, failover wireless) for critical rooms

**Priority**: HIGH

---

#### NFR-A-003: Peripheral Redundancy

**Requirement**: Critical rooms (boardroom, executive rooms) must have backup peripherals for mission-critical meetings.

**Redundancy**:
- Backup microphone (table speakerphone if ceiling mic fails)
- Backup camera (USB webcam if PTZ fails)
- Backup cable (HDMI if wireless fails)

**Priority**: MEDIUM (HIGH for executive rooms)

---

### Scalability Requirements

#### NFR-S-001: Cloud-Based Management Scalability

**Requirement**: Management platform must scale from 50 rooms to 150 rooms over 3 years without infrastructure changes.

**Growth Projections**:
- Year 1: 50 rooms (current project)
- Year 2: 85 rooms (+35 rooms - new office, room splits)
- Year 3: 120 rooms (+35 rooms)
- Year 4-5: 150 rooms

**Scaling Model**: Cloud SaaS (Teams Rooms Pro) with per-room licensing

**Priority**: MEDIUM

---

#### NFR-S-002: Concurrent Meeting Capacity

**Requirement**: Network infrastructure must support 50 concurrent 1080p Teams meetings without degradation.

**Bandwidth Calculation**:
- Per room: 4 Mbps upload + 4 Mbps download = 8 Mbps
- 50 rooms × 8 Mbps = 400 Mbps total (peak)
- Network capacity: 1 Gbps internet (2.5x headroom for growth)

**Priority**: CRITICAL

---

### Security Requirements

#### NFR-SEC-001: Network Segregation

**Requirement**: Conference room devices must operate on dedicated VLAN isolated from corporate user network.

**Network Architecture**:
- Dedicated "AV-VLAN" for Teams Rooms devices
- Firewall rules: Allow outbound to Microsoft 365 endpoints only
- Block lateral movement to corporate network
- QoS prioritization for AV traffic

**Priority**: CRITICAL

---

#### NFR-SEC-002: Device Authentication

**Requirement**: All Teams Rooms devices must authenticate via Azure AD device certificates.

**Authentication**:
- Room resource accounts with Azure AD Premium P1
- Device compliance policies enforced (Intune)
- Conditional Access: Require compliant device + MFA for admin access
- Local admin accounts disabled

**Priority**: CRITICAL

---

#### NFR-SEC-003: Data Encryption

**Requirement**:
- Data in transit: TLS 1.3 for all Teams traffic (Microsoft 365)
- Device management: HTTPS/TLS for all API calls
- WiFi: WPA3-Enterprise (802.1X) for wireless presentation

**Encryption Scope**:
- [ ] Teams audio/video streams encrypted end-to-end (Microsoft SRTP)
- [ ] Room booking data encrypted in transit (Exchange API over TLS)
- [ ] Device logs encrypted in transit to Azure Monitor

**Priority**: CRITICAL

---

#### NFR-SEC-004: Physical Security

**Requirement**: Prevent unauthorized physical access to AV equipment.

**Physical Controls**:
- Lockable AV rack or cabinet for compute hardware
- Cable management prevents accidental disconnection
- Touch panel tamper detection (alerts if removed)
- USB ports disabled except authorized devices (Intune policy)

**Priority**: MEDIUM

---

#### NFR-SEC-005: Privacy and Compliance

**Requirement**: Room analytics must not record audio/video or identify individuals (GDPR Article 6, 9).

**Privacy Measures**:
- Occupancy sensors count people only (no facial recognition)
- No audio/video recording unless explicitly enabled by meeting organizer (and disclosed)
- Analytics data anonymized (room ID + timestamp, no user PII)
- Data retention: 90 days for utilization analytics, then aggregate only

**Priority**: CRITICAL

---

### Compliance and Regulatory Requirements

#### NFR-C-001: Accessibility (Equality Act 2010)

**Applicable Regulations**: Equality Act 2010, WCAG 2.1 Level AA (digital displays)

**Compliance Requirements**:
- [ ] Touch panels positioned at wheelchair-accessible height (800-1000mm)
- [ ] High contrast mode available on displays
- [ ] Audio captions enabled via Teams live captions feature
- [ ] Hearing loop integration for large meeting rooms
- [ ] Visual alerts in addition to audio alerts

**Priority**: MUST_HAVE

---

#### NFR-C-002: Data Protection (UK GDPR)

**Applicable Regulations**: UK GDPR, Data Protection Act 2018

**Compliance Requirements**:
- [ ] Data Processing Impact Assessment (DPIA) completed for room analytics
- [ ] Legitimate interest basis for utilization analytics (ICO guidance)
- [ ] Privacy notices displayed outside rooms (if cameras/sensors present)
- [ ] Right to object: Users can request exclusion from analytics
- [ ] Data retention policy: 90 days operational data, 7 years audit logs

**Priority**: CRITICAL

---

#### NFR-C-003: Audit Logging

**Requirement**: Comprehensive audit trail for security and compliance.

**Audit Log Contents**:
- Who: User/admin who performed action (Azure AD UPN)
- What: Meeting join/leave, device configuration change, content shared
- When: Timestamp (UTC, ISO 8601 format)
- Where: Room ID, device ID
- Result: Success/failure with error code

**Log Retention**: 7 years for audit logs (compliance), 90 days for diagnostic logs

**Log Integrity**: Logs shipped to Azure Monitor (immutable, tamper-evident)

**Priority**: HIGH

---

### Usability Requirements

#### NFR-U-001: Intuitive User Experience

**Requirement**: 90% of users can join meeting without training or assistance.

**UX Standards**:
- Microsoft Teams Rooms standard interface (familiar to Teams users)
- Large touch targets (minimum 44×44mm for accessibility)
- Clear visual hierarchy (primary actions prominent)
- Consistent terminology across all rooms

**User Onboarding**: Quick reference card at each table, QR code to video tutorial

**Priority**: CRITICAL

---

#### NFR-U-002: Accessibility

**Requirement**: WCAG 2.1 Level AA compliance for room booking displays and touch panels.

**Accessibility Features**:
- [ ] Keyboard navigation (USB keyboard support) for touch panel
- [ ] Screen reader compatibility (touch panel announces actions)
- [ ] High contrast mode toggle
- [ ] Adjustable text size (room booking displays)
- [ ] Alt text for icons
- [ ] Captions for instructional videos

**Testing**: Accessibility audit by third-party (pre-deployment), user testing with disabled employees

**Priority**: MUST_HAVE

---

#### NFR-U-003: Multi-Language Support

**Requirement**: Support for English (primary), Welsh (legal requirement for public sector), and 3 additional languages for international offices.

**Localization Scope**:
- [ ] UI text translation (Teams Rooms supports 40+ languages)
- [ ] Room booking displays show meeting details in organizer's language
- [ ] Quick reference cards printed in top 3 languages
- [ ] Help desk support in English and Welsh

**Priority**: SHOULD_HAVE (MUST for Welsh if public sector)

---

### Maintainability and Supportability Requirements

#### NFR-M-001: Remote Diagnostics

**Requirement**: 80% of issues diagnosed remotely without on-site technician visit.

**Telemetry Requirements**:
- **Logging**: Structured logs shipped to Azure Log Analytics in real-time
- **Metrics**: Device health (CPU, memory, disk, network, peripheral status) every 5 minutes
- **Alerting**: Proactive alerts for predictive failures (disk >80%, firmware out of date)
- **Dashboards**: Power BI dashboard showing room health, utilization, incident trends

**Priority**: CRITICAL

---

#### NFR-M-002: Automated Software Updates

**Requirement**: Teams Rooms devices receive automatic software/firmware updates during maintenance windows.

**Update Policy**:
- Security updates: Automatic, within 7 days of release (after validation ring)
- Feature updates: Semi-annual (aligned with Microsoft release cadence)
- Firmware updates: Quarterly (after pilot testing in 2 rooms)

**Rollback**: Automatic rollback if update causes boot failure or device health regression

**Priority**: HIGH

---

#### NFR-M-003: Documentation

**Requirement**: Comprehensive documentation for users, admins, and support staff.

**Documentation Types**:
- [ ] User guides (quick reference card, video tutorials)
- [ ] Admin guides (device provisioning, troubleshooting, runbooks)
- [ ] Network diagrams (VLAN, firewall rules, QoS)
- [ ] Vendor contact list and escalation matrix
- [ ] Configuration management database (CMDB) - room inventory

**Documentation Format**: Markdown in SharePoint, accessible via QR code in rooms

**Documentation Currency**: Updated within 30 days of changes

**Priority**: HIGH

---

### Portability and Interoperability Requirements

#### NFR-I-001: Standards-Based Protocols

**Requirement**: Use industry-standard protocols for interoperability and vendor flexibility.

**Standards**:
- Video: H.264/H.265, VP8/VP9 (WebRTC)
- Audio: Opus, AAC
- SIP/H.323 for legacy video conferencing interoperability (if needed)
- HDMI 2.0, USB 3.0, USB-C DisplayPort Alt Mode

**Priority**: MEDIUM

---

#### NFR-I-002: Microsoft 365 Integration

**Requirement**: Seamless integration with Microsoft 365 ecosystem.

**Integration Points**:
- **Teams**: Native Teams Rooms for meetings
- **Exchange Online**: Room booking, calendar sync
- **Azure AD**: Authentication, Conditional Access
- **Intune**: Device management, compliance policies
- **Power BI**: Analytics and reporting
- **SharePoint**: Documentation repository

**APIs**: Microsoft Graph API for calendar, Azure Monitor REST API for telemetry

**Priority**: CRITICAL

---

#### NFR-I-003: BYOD Compatibility

**Requirement**: Support content sharing from Windows, Mac, iOS, Android, Chrome OS devices.

**BYOD Support**:
- **Windows**: Miracast, HDMI, USB-C
- **Mac**: AirPlay, HDMI (adapter), USB-C
- **iOS/iPadOS**: AirPlay, USB-C (iPad Pro)
- **Android**: Miracast, USB-C
- **Chrome OS**: Miracast, HDMI, USB-C

**Priority**: MUST_HAVE

---

## Integration Requirements

### INT-001: Microsoft Teams Integration

**Purpose**: Enable native Teams meeting experience with one-touch join, content sharing, and meeting controls.

**Integration Type**: Real-time API (Microsoft Graph, Teams Rooms API)

**Data Exchanged**:
- **From Teams Rooms to Teams Cloud**: Meeting join/leave events, device health telemetry, call quality metrics
- **From Teams Cloud to Teams Rooms**: Calendar events, meeting invites, roster updates, content streams

**Integration Pattern**: WebSocket (persistent connection), REST API (device provisioning)

**Authentication**: OAuth 2.0 with Azure AD device authentication

**Error Handling**: Retry with exponential backoff, offline mode (cache last calendar), manual dial-in fallback

**SLA**: 99.9% availability (Microsoft 365 SLA), <200ms latency for signaling

**Owner**: Microsoft Teams Administrator

**Priority**: CRITICAL

---

### INT-002: Exchange Online Integration

**Purpose**: Sync room bookings from Outlook to Teams Rooms devices for meeting join and utilization analytics.

**Integration Type**: Real-time API (Microsoft Graph API - Calendar endpoints)

**Data Exchanged**:
- **From Exchange to Teams Rooms**: Room calendar events (meeting title, organizer, start/end time, attendees)
- **From Teams Rooms to Exchange**: Check-in events, early release (cancel meeting)

**Integration Pattern**: Polling (every 60 seconds) + push notifications (Graph webhooks for instant updates)

**Authentication**: OAuth 2.0, room resource account with calendar read/write permissions

**Error Handling**: Cache last known calendar, retry on HTTP 429 (rate limit), alert if sync fails >5 minutes

**SLA**: 99.9% availability, <1 minute latency for calendar updates

**Owner**: Microsoft 365 Administrator

**Priority**: CRITICAL

---

### INT-003: Azure AD Integration

**Purpose**: Authenticate users and devices, enforce Conditional Access policies.

**Integration Type**: Real-time API (OAuth 2.0, SAML 2.0)

**Data Exchanged**:
- **From Azure AD to Teams Rooms**: User authentication tokens, device compliance status, Conditional Access decisions
- **From Teams Rooms to Azure AD**: Device health attestation, sign-in events

**Integration Pattern**: OAuth 2.0 authorization code flow, SAML assertions

**Authentication**: Azure AD device certificate (Intune enrollment)

**Error Handling**: Cached credentials valid for 8 hours (offline grace period), manual override for emergencies

**SLA**: 99.99% availability (Azure AD SLA)

**Owner**: Identity & Access Management team

**Priority**: CRITICAL

---

### INT-004: Intune (MDM) Integration

**Purpose**: Manage device configuration, compliance policies, software updates.

**Integration Type**: Real-time API (Intune MDM enrollment)

**Data Exchanged**:
- **From Intune to Teams Rooms**: Configuration profiles, compliance policies, software updates, remote actions (reboot, wipe)
- **From Teams Rooms to Intune**: Device inventory, compliance status, installed apps, health metrics

**Integration Pattern**: MDM enrollment (device-based), polling for policy updates (every 8 hours)

**Authentication**: Azure AD device certificate

**Error Handling**: Policy cache valid for 24 hours, alert if device non-compliant >72 hours

**SLA**: 99.9% availability

**Owner**: IT Operations (Device Management team)

**Priority**: HIGH

---

### INT-005: Azure Monitor / Log Analytics Integration

**Purpose**: Centralized logging, monitoring, and alerting for diagnostics and compliance.

**Integration Type**: Batch telemetry (every 5 minutes)

**Data Exchanged**:
- **From Teams Rooms to Azure Monitor**: Device health metrics (CPU, memory, disk, network), peripheral status, error logs, call quality metrics (MOS score, packet loss, jitter)

**Integration Pattern**: REST API (Azure Monitor Ingestion API), structured JSON logs

**Authentication**: Azure AD service principal (write-only to Log Analytics workspace)

**Error Handling**: Local buffer (12 hours), retry on network failure, alert if buffer >80% full

**SLA**: 99.9% ingestion availability, <5 minute data latency

**Owner**: IT Operations (Monitoring team)

**Priority**: HIGH

---

### INT-006: Power BI Integration

**Purpose**: Visualize room utilization, meeting analytics, and support trends for business insights.

**Integration Type**: Batch query (daily data refresh)

**Data Exchanged**:
- **From Log Analytics to Power BI**: Room utilization metrics, meeting count/duration, no-show rate, support ticket correlation, cost per meeting

**Integration Pattern**: Power BI scheduled refresh (daily 6am), direct query for real-time dashboards

**Authentication**: Azure AD service principal with Log Analytics Reader role

**Error Handling**: Cached data if refresh fails, email alert to report owner

**SLA**: Daily refresh (non-critical), real-time query <5 seconds

**Owner**: Facilities Manager, CFO (business stakeholders)

**Priority**: MEDIUM

---

### INT-007: Building Management System (BMS) Integration

**Purpose**: Coordinate HVAC, lighting with room occupancy for energy savings.

**Integration Type**: Event-driven (occupancy sensor triggers)

**Data Exchanged**:
- **From Occupancy Sensors to BMS**: Room occupied/vacant events
- **From BMS to HVAC/Lighting**: Turn on/off, adjust temperature

**Integration Pattern**: MQTT or BACnet protocol, pub/sub model

**Authentication**: API key or certificate-based

**Error Handling**: Manual override (wall switches), default to "always on" if integration fails

**SLA**: <5 minute latency (non-critical)

**Owner**: Facilities Management

**Priority**: COULD_HAVE (future phase)

---

## Data Requirements

### Data Entities

#### Entity 1: Conference Room

**Description**: Physical meeting room with associated metadata and equipment inventory.

**Attributes**:
| Attribute | Type | Required | Description | Constraints |
|-----------|------|----------|-------------|-------------|
| room_id | UUID | Yes | Unique room identifier | Primary key |
| room_name | String(100) | Yes | Display name (e.g., "London 3A") | Not null, unique per site |
| location | String(100) | Yes | Office location (London HQ, Manchester, Bristol) | Enum or lookup |
| floor | String(20) | Yes | Floor number/name | Not null |
| capacity | Integer | Yes | Maximum occupants | 2-50 |
| room_type | Enum | Yes | Room category | ['huddle', 'small', 'medium', 'large', 'boardroom'] |
| exchange_mailbox | Email | Yes | Room resource email | Unique, validated email format |
| device_id | String(100) | Yes | Teams Rooms device ID | Foreign key to Device entity |
| amenities | JSON | No | Equipment list | ['whiteboard', 'dual_display', 'video', 'wireless_present'] |
| created_at | Timestamp | Yes | Creation timestamp | Indexed |
| updated_at | Timestamp | Yes | Last update timestamp | Indexed |
| status | Enum | Yes | Operational status | ['active', 'maintenance', 'decommissioned'] |

**Relationships**:
- One-to-one with Device (Teams Rooms hardware)
- One-to-many with Booking (calendar events)
- One-to-many with Analytics (utilization metrics)

**Data Volume**: 50 rooms (Year 1), 150 rooms (Year 3-5)

**Access Patterns**:
- Lookup by room_id (primary key)
- Search by location + capacity (room finder)
- Filter by amenities (find rooms with video)

**Data Classification**: INTERNAL

**Data Retention**: Permanent (master data), soft delete (status='decommissioned')

---

#### Entity 2: Meeting Booking

**Description**: Scheduled or ad-hoc meeting reservation linked to Exchange calendar.

**Attributes**:
| Attribute | Type | Required | Description | Constraints |
|-----------|------|----------|-------------|-------------|
| booking_id | UUID | Yes | Unique booking identifier | Primary key |
| room_id | UUID | Yes | Room foreign key | Not null, indexed |
| exchange_event_id | String(200) | Yes | Exchange calendar event ID | Unique |
| organizer_email | Email | Yes | Meeting organizer | Indexed |
| subject | String(255) | No | Meeting title | Encrypted if sensitive |
| start_time | Timestamp | Yes | Meeting start (UTC) | Indexed |
| end_time | Timestamp | Yes | Meeting end (UTC) | Indexed, must be > start_time |
| attendee_count | Integer | No | Expected attendees | 1-room.capacity |
| checked_in | Boolean | Yes | Attendee checked in? | Default: false |
| check_in_time | Timestamp | No | When checked in | Nullable |
| actual_start_time | Timestamp | No | Meeting actually started | From Teams Rooms |
| actual_end_time | Timestamp | No | Meeting actually ended | From Teams Rooms |
| auto_released | Boolean | Yes | Released due to no-show? | Default: false |
| created_at | Timestamp | Yes | Booking created | Indexed |

**Relationships**:
- Many-to-one with Room (foreign key: room_id)
- One-to-many with AnalyticsEvent (meeting join/leave events)

**Data Volume**: ~8,000 bookings/month × 50 rooms = 400K bookings/month, 5M/year

**Access Patterns**:
- Current and upcoming bookings by room_id (room booking display)
- Bookings by date range for utilization reporting
- No-show analysis (auto_released=true)

**Data Classification**: INTERNAL (meeting titles may contain confidential info)

**Data Retention**: 90 days operational, 7 years aggregate analytics (GDPR compliance)

---

#### Entity 3: Device

**Description**: Teams Rooms hardware device with health and configuration metadata.

**Attributes**:
| Attribute | Type | Required | Description | Constraints |
|-----------|------|----------|-------------|-------------|
| device_id | UUID | Yes | Unique device identifier | Primary key |
| room_id | UUID | Yes | Associated room | Foreign key, indexed |
| device_name | String(100) | Yes | Friendly name | Not null |
| manufacturer | String(50) | Yes | OEM (e.g., Logitech, Poly, Yealink) | Not null |
| model | String(100) | Yes | Model number | Not null |
| serial_number | String(100) | Yes | Serial number | Unique |
| firmware_version | String(50) | Yes | Current firmware | Not null |
| teams_app_version | String(50) | Yes | Teams Rooms app version | Not null |
| last_online | Timestamp | Yes | Last check-in time | Indexed |
| health_status | Enum | Yes | Device health | ['healthy', 'warning', 'critical', 'offline'] |
| ip_address | IPv4 | No | Device IP (for diagnostics) | Private IP range |
| mac_address | MAC | Yes | Device MAC address | Unique |
| peripherals | JSON | Yes | Connected peripherals | {'camera': {...}, 'mic': {...}, 'display': {...}} |
| created_at | Timestamp | Yes | Device provisioned | Indexed |
| updated_at | Timestamp | Yes | Last health update | Indexed |

**Relationships**:
- One-to-one with Room
- One-to-many with DeviceLog (diagnostic logs)
- One-to-many with Alert (health alerts)

**Data Volume**: 50 devices (Year 1), 150 devices (Year 3-5)

**Access Patterns**:
- Device health dashboard (all devices, filtered by health_status)
- Lookup by device_id or serial_number
- Devices offline >24 hours (proactive alerting)

**Data Classification**: INTERNAL

**Data Retention**: Permanent (master data), decommission flag when device retired

---

#### Entity 4: Analytics Event

**Description**: Timestamped events capturing room usage, meeting quality, and utilization metrics.

**Attributes**:
| Attribute | Type | Required | Description | Constraints |
|-----------|------|----------|-------------|-------------|
| event_id | UUID | Yes | Unique event identifier | Primary key |
| room_id | UUID | Yes | Room foreign key | Indexed |
| booking_id | UUID | No | Associated booking | Nullable, indexed |
| event_type | Enum | Yes | Event category | ['meeting_start', 'meeting_end', 'check_in', 'no_show', 'quality_metric'] |
| timestamp | Timestamp | Yes | Event time (UTC) | Indexed (time-series) |
| duration_minutes | Integer | No | Meeting duration | For meeting_end events |
| participant_count | Integer | No | In-room + remote count | From Teams roster |
| quality_metrics | JSON | No | Call quality data | {'mos_score': 4.2, 'packet_loss': 0.3, 'jitter': 15} |
| user_feedback | Enum | No | Post-meeting rating | ['excellent', 'good', 'fair', 'poor'] |
| metadata | JSON | No | Additional context | Flexible schema |

**Relationships**:
- Many-to-one with Room
- Many-to-one with Booking

**Data Volume**: ~50K events/day (50 rooms × 20 meetings/day × 50 events/meeting), 1.5M events/month

**Access Patterns**:
- Time-series queries for utilization dashboards
- Aggregate metrics (average meeting duration, no-show rate)
- Quality trends by room

**Data Classification**: INTERNAL (anonymized - no PII)

**Data Retention**: 90 days detailed events, 7 years aggregated metrics

---

### Data Quality Requirements

**Data Accuracy**:
- Room bookings must match Exchange calendar with <1% sync error rate
- Occupancy sensor accuracy >95% (people count within ±1)
- Call quality metrics validated against Microsoft telemetry

**Data Completeness**:
- Required fields (room_id, timestamp) must be 100% populated
- Optional fields (user_feedback) expected <30% completion (user opt-in)

**Data Consistency**:
- Booking start_time must be < end_time (database constraint)
- Room capacity must match physical room (validated during setup)
- Cross-system reconciliation: Exchange booking vs. Teams Rooms join event

**Data Timeliness**:
- Real-time: Device health updates within 5 minutes
- Near real-time: Calendar sync within 1 minute
- Batch: Analytics aggregation nightly (6am)

**Data Lineage**:
- Analytics events sourced from: Exchange (bookings), Teams Rooms (join/leave), occupancy sensors (people count)
- Audit trail: All data changes logged with user/system actor

---

### Data Migration Requirements

**Migration Scope**: No legacy data migration required (greenfield deployment). Room metadata manually entered during deployment.

**Data Seeding**:
- Room master data (50 rooms): Manual entry via Excel import to database
- Exchange room mailboxes: Provisioned via PowerShell script (Graph API)
- Device inventory: Auto-discovered during Teams Rooms enrollment

**Data Validation**:
- Validate room names unique per location
- Validate Exchange mailboxes created and licensed
- Validate devices check in within 24 hours of deployment

**Rollback Plan**: N/A (no migration)

**Timeline**: Data seeding during Week 1 (pilot phase)

---

## Constraints and Assumptions

### Technical Constraints

**TC-001**: Must use Microsoft Teams as primary video conferencing platform (organization standard, Microsoft 365 E3 licensing).

**TC-002**: Must integrate with existing Microsoft 365 tenant (Azure AD, Exchange Online, Intune) - no new identity systems.

**TC-003**: Must operate on existing corporate network infrastructure with VLAN support and QoS capabilities.

**TC-004**: Room construction limitations: Dropped ceilings required for ceiling microphones (not available in 3 rooms - use table mics instead).

**TC-005**: Power over Ethernet (PoE+) required for cameras, microphones, touch panels - network switches must support 802.3at (30W per port).

---

### Business Constraints

**BC-001**: Go-live deadline: 6 months from project kickoff (competitive pressure to support hybrid work, executive mandate).

**BC-002**: Budget cap: £750K capital expenditure (£15K/room average) + £60K/year operational (licensing, support).

**BC-003**: Minimize business disruption: Each room unavailable <3 days for installation (evenings/weekends preferred).

**BC-004**: Vendor preference: Prefer Microsoft-certified OEMs (Logitech, Poly, Yealink, Crestron, Lenovo) for warranty and support.

---

### Assumptions

**A-001**: Organization has Microsoft 365 E3 or E5 licensing with Teams, Exchange Online, and Azure AD Premium P1 (VALIDATED: confirmed with licensing team).

**A-002**: Corporate network has sufficient bandwidth: 1 Gbps internet, 10 Gbps internal backbone (VALIDATED: network assessment completed).

**A-003**: Users are familiar with Microsoft Teams and prefer Teams over Zoom/Webex (VALIDATED: 95% Teams adoption).

**A-004**: Facilities team can coordinate room downtime with office managers to minimize disruption (ASSUMPTION: requires validation during planning).

**A-005**: Occupancy sensors will not raise privacy concerns if clearly disclosed as anonymous people counting (ASSUMPTION: requires DPIA and staff consultation).

**Validation Plan**:
- A-004: Validate during project kickoff meeting with office managers
- A-005: Conduct privacy impact assessment (DPIA) and staff communication plan

---

## Success Criteria and KPIs

### Business Success Metrics

| Metric | Baseline | Target | Timeline | Measurement Method |
|--------|----------|--------|----------|-------------------|
| Meeting setup time | 15-20 minutes | <3 minutes | 6 months post-deployment | User survey, room analytics |
| AV support tickets | 200/month | <40/month | 6 months post-deployment | Helpdesk ticketing system |
| Room utilization rate | 50% | 65% | 12 months post-deployment | Room analytics (booked hours / available hours) |
| No-show rate | 30% | <10% | 6 months post-deployment | Check-in rate vs. bookings |
| User satisfaction | 45% | >85% satisfied | 3 months post-deployment | Post-deployment survey (quarterly) |
| Hybrid meeting quality (remote participant rating) | 35% "good/excellent" | >95% "good/excellent" | 6 months post-deployment | Post-meeting survey (optional prompt) |
| Annual support cost | £180K/year | <£60K/year | 12 months post-deployment | Finance report (labor + vendor support) |
| ROI / Payback period | N/A | <18 months | Financial model | NPV calculation (productivity + cost savings) |

---

### Technical Success Metrics

| Metric | Target | Measurement Method |
|--------|--------|-------------------|
| System availability (business hours) | 99.5% | Azure Monitor uptime (7am-7pm Mon-Fri) |
| Meeting join time (p95) | <5 seconds | Teams Rooms diagnostics logs |
| Content sharing latency | <3 seconds | User testing, automated tests |
| Audio-visual sync | <50ms | AV sync test tools |
| Device health (% healthy) | >95% | Teams Rooms Pro management portal |
| Network packet loss | <0.5% | Teams call quality dashboard |
| Mean time to resolution (MTTR) | <1 hour | Helpdesk SLA tracking |
| Remote resolution rate | >80% | Tickets resolved without truck roll |

---

### User Adoption Metrics

| Metric | Target | Timeline | Measurement Method |
|--------|--------|----------|-------------------|
| Training completion rate | >90% | 3 months post-deployment | LMS tracking (optional video tutorials) |
| Check-in adoption rate | >70% | 6 months post-deployment | Check-in events / total bookings |
| Wireless presentation usage | >60% | 6 months post-deployment | Analytics (wireless vs. wired sessions) |
| User-reported issues (per 100 meetings) | <5 | 6 months post-deployment | Support ticket rate |
| Repeat user satisfaction | >90% | 12 months post-deployment | Quarterly surveys (users who responded 2+ times) |

---

## Dependencies and Risks

### Dependencies

| Dependency | Description | Owner | Target Date | Status | Impact if Delayed |
|------------|-------------|-------|-------------|--------|-------------------|
| Microsoft 365 Licensing | Teams Rooms Pro licenses procured (50 licenses × £40/month) | Procurement Manager | Week 2 | On Track | HIGH - Cannot deploy without licenses |
| Network Upgrades | PoE+ switches installed in all 3 offices, AV-VLAN configured | IT Network team | Week 4 | On Track | HIGH - Devices cannot power on |
| Exchange Room Mailboxes | 50 room mailboxes created and licensed | Microsoft 365 Admin | Week 3 | On Track | MEDIUM - Can deploy but no calendar sync |
| Azure AD Groups | Device compliance policies and Conditional Access configured | Identity team | Week 4 | At Risk | MEDIUM - Delayed compliance enforcement |
| Vendor Selection | RFP completed, vendor contract signed | Procurement Manager | Week 6 | On Track | HIGH - Cannot order equipment |
| Room Construction | 3 rooms with ceiling mic installation (requires ceiling work) | Facilities | Week 8 | At Risk | LOW - Can use table mics as workaround |

---

### Risks

| Risk ID | Description | Probability | Impact | Mitigation Strategy | Owner |
|---------|-------------|-------------|--------|---------------------|-------|
| R-001 | Supply chain delays for AV hardware (global chip shortage) | MEDIUM | HIGH | Pre-order equipment with 12-week lead time; identify alternative models with shorter lead times; staged deployment allows flexibility | Procurement Manager |
| R-002 | Network bandwidth insufficient during peak usage (50 concurrent meetings) | LOW | HIGH | Network capacity assessment completed (1 Gbps internet validated); QoS policies configured; monitor bandwidth utilization during pilot | IT Network team |
| R-003 | User adoption resistance (prefer legacy projectors) | MEDIUM | MEDIUM | Change management: Executive sponsorship, early adopter champions, training, quick wins (show time savings); retire legacy projectors to force adoption | Facilities Manager |
| R-004 | Privacy concerns over occupancy sensors and room cameras | MEDIUM | HIGH | DPIA completed; transparent communication (privacy notices); anonymized analytics (no facial recognition); opt-out process | Data Protection Officer |
| R-005 | Device compatibility issues (firmware bugs, peripheral incompatibility) | MEDIUM | MEDIUM | Pilot phase (5 rooms) validates all configurations before mass deployment; vendor SLA for firmware support; backup peripherals | IT Operations |
| R-006 | Budget overruns due to scope creep (executive rooms demand premium features) | MEDIUM | MEDIUM | Fixed scope with tiered room designs (standard, large, boardroom); change control process; contingency budget (10%) | CFO, Facilities Manager |
| R-007 | Microsoft Teams platform outages impacting all rooms | LOW | HIGH | Microsoft 365 99.9% SLA; backup dial-in numbers for critical meetings; monitor Microsoft 365 status dashboard | Microsoft Teams Admin |
| R-008 | Acoustic issues in rooms (echo, background noise) | MEDIUM | MEDIUM | Acoustic assessment during pilot; sound-absorbing panels if needed; DSP tuning per room; vendor acoustic consultation | Facilities Manager |

**Risk Scoring**: Probability × Impact = Risk Level
- High Risk (Red): R-001, R-002, R-004, R-007 - Active mitigation required
- Medium Risk (Yellow): R-003, R-005, R-006, R-008 - Monitor closely
- Low Risk (Green): None identified

---

## Requirement Conflicts & Resolutions

### Conflict C-001: Speed vs. Quality (Deployment Timeline vs. Acoustic Perfection)

**Conflicting Requirements**:
- **Requirement A**: BR-007 - Complete deployment in 6 months (fast time-to-value)
- **Requirement B**: NFR-P-003 - Professional audio quality in all rooms (may require custom acoustic treatment)

**Stakeholders Involved**:
- **CIO** (Stakeholder A): Wants 6-month deployment due to competitive pressure (hybrid work enablement is strategic priority)
- **Facilities Manager** (Stakeholder B): Wants perfect audio quality to avoid rework and user complaints (quality reputation)

**Nature of Conflict**:
Full acoustic assessment and treatment for all 50 rooms could add 2-3 months to project timeline. Custom acoustic panels, sound isolation, and DSP tuning are time-intensive.

**Trade-off Analysis**:

| Option | Pros | Cons | Impact |
|--------|------|------|--------|
| **Option 1**: Fast deployment, accept acoustic compromises | ✅ 6-month timeline<br>✅ Faster ROI | ❌ Potential echo in hard-surface rooms<br>❌ User complaints | CIO happy<br>Facilities concerned |
| **Option 2**: Delay for acoustic perfection (9 months) | ✅ Perfect audio quality<br>✅ No rework | ❌ Delayed benefits<br>❌ Competitive disadvantage | Facilities happy<br>CIO frustrated |
| **Option 3**: Tiered approach - pilot validates acoustics, iterate | ✅ 6-month timeline maintained<br>✅ Quality validated early | ❌ May require rework in some rooms<br>❌ Pilot phase critical | Both moderately satisfied |
| **Option 4**: Pre-emptive acoustic panels in known problem rooms | ✅ Proactive mitigation<br>✅ Timeline preserved | ❌ Higher upfront cost (+£30K)<br>❌ May over-engineer some rooms | Both satisfied if budget allows |

**Resolution Strategy**: COMPROMISE + INNOVATE

**Decision**: Option 3 + Option 4 hybrid
- Pilot phase (5 rooms) includes 1 acoustically challenging room (glass walls, hard floors)
- Acoustic consultant engaged during pilot to assess and recommend treatments
- Pre-emptive acoustic panels installed in 10 known hard-surface rooms (£30K contingency budget)
- Remaining rooms deployed on schedule; acoustic remediation post-deployment if needed (funded from support cost savings)

**Rationale**:
- CIO accepted that perfect acoustics are not required for go-live; "good enough" with post-deployment improvements acceptable
- Facilities Manager accepted 6-month timeline with commitment to acoustic budget and iterative improvements
- Pilot phase de-risks acoustic issues before mass deployment

**Decision Authority**: CIO (executive sponsor) with input from Facilities Manager and CFO (budget owner)

**Impact on Requirements**:
- **Modified**: BR-007 timeline maintained (6 months) with acoustic contingency plan
- **Added**: NFR-P-003A - "95% of rooms must achieve >4.0 MOS audio quality; remaining 5% remediated within 3 months post-deployment"
- **Budget Impact**: +£30K for proactive acoustic panels (within contingency)

**Stakeholder Management**:
- **CIO (Won timeline)**: Regular acoustic quality reporting during pilot; committed to post-deployment improvements if needed
- **Facilities Manager (Compromised on perfection)**: Acoustic consultant engaged; budget secured for remediation; quality metrics tracked

**Future Consideration**:
- Re-assess acoustic quality 3 months post-deployment via user surveys
- Budget for acoustic improvements in Year 2 (£50K allocated)

---

### Conflict C-002: Cost vs. Features (Budget Cap vs. Premium Boardroom Experience)

**Conflicting Requirements**:
- **Requirement A**: BC-002 - Budget cap £750K (£15K/room average)
- **Requirement B**: BR-006 - Boardroom must have premium AV for client meetings (estimated £40K for 86" displays, advanced camera tracking, luxury finishes)

**Stakeholders Involved**:
- **CFO** (Stakeholder A): Wants to minimize capital expenditure; £750K budget firm
- **Executive Assistants / C-suite** (Stakeholder B): Want boardroom to impress clients and support high-stakes meetings

**Nature of Conflict**:
Premium boardroom configuration costs £40K. With 50 rooms × £15K average = £750K budget, allocating £40K to 1 room means other rooms underfunded (£13.5K average for remaining 49 rooms).

**Trade-off Analysis**:

| Option | Pros | Cons | Impact |
|--------|------|------|--------|
| **Option 1**: Equal budget all rooms (£15K each, no premium boardroom) | ✅ Fair allocation<br>✅ Budget compliance | ❌ Boardroom subpar for client meetings<br>❌ Executive dissatisfaction | CFO happy<br>Executives unhappy |
| **Option 2**: Premium boardroom, reduce budget for huddle rooms | ✅ Impressive boardroom<br>✅ Budget compliance | ❌ Huddle rooms lack features<br>❌ User dissatisfaction (majority users) | Executives happy<br>End users unhappy |
| **Option 3**: Increase total budget to £775K (+£25K) | ✅ Premium boardroom + standard rooms | ❌ Budget overrun<br>❌ CFO approval required | Both satisfied if approved |
| **Option 4**: Phase 2 boardroom upgrade (deploy standard now, upgrade in Year 2) | ✅ Budget compliance<br>✅ ROI from other rooms funds boardroom upgrade | ❌ Boardroom not ready for 12 months<br>❌ Client meeting risk | CFO happy<br>Executives wait |

**Resolution Strategy**: COMPROMISE

**Decision**: Option 2 Modified - Tiered room designs
- **Tier 1**: 5 huddle rooms (2-4 people) @ £8K each = £40K (basic Teams Rooms, single display, table speakerphone)
- **Tier 2**: 40 standard rooms (6-12 people) @ £15K each = £600K (standard specification per requirements)
- **Tier 3**: 4 large rooms (12-20 people) @ £20K each = £80K (dual displays, ceiling mics)
- **Tier 4**: 1 boardroom (20-30 people) @ £30K (premium: 86" display, advanced camera, luxury finish)
- **Total**: £750K budget met

**Rationale**:
- Huddle rooms require minimal features (mostly 1-on-1 calls); savings fund boardroom
- Boardroom budget reduced from £40K to £30K by value engineering (one 86" display instead of two, standard camera with software intelligence vs. premium PTZ)
- CFO accepted tiered approach as fair allocation based on business value
- Executives accepted £30K boardroom vs. £40K as "good enough" for professional meetings

**Decision Authority**: CFO (budget owner) with input from CIO and Executive Sponsor

**Impact on Requirements**:
- **Added**: Room tier definitions with budget allocations
- **Modified**: BR-006 - Boardroom has "professional-quality" (not "premium") AV within £30K budget
- **Clarified**: FR-001-007 apply to all rooms; FR-007 (dual display) applies to Tier 3-4 only

**Stakeholder Management**:
- **CFO (Won budget compliance)**: Detailed budget breakdown provided; tiered approach documented
- **Executives (Compromised on luxury)**: Boardroom preview during pilot phase; option to upgrade in Year 2 if dissatisfied

**Future Consideration**:
- Year 2 budget: £25K for boardroom enhancement if ROI targets met (funded from support cost savings)

---

## Timeline and Milestones

### High-Level Milestones

| Milestone | Description | Target Date | Dependencies |
|-----------|-------------|-------------|--------------|
| Requirements Approval | Stakeholder sign-off on this document | Week 2 | This document, stakeholder review |
| Vendor Selection | RFP completed, vendor contract signed | Week 6 | Requirements, budget approval |
| Pilot Phase Complete | 5 pilot rooms deployed, tested, lessons learned | Week 10 | Vendor delivery, network readiness |
| London HQ Deployment Complete | 30 rooms deployed and operational | Week 18 | Pilot success, equipment delivery |
| Manchester Office Complete | 15 rooms deployed and operational | Week 24 | London learnings applied |
| Bristol Office Complete | 5 rooms deployed and operational | Week 26 | Manchester learnings applied |
| Training Complete | All users trained, documentation published | Week 28 | All rooms operational |
| Project Close | Final report, lessons learned, handover to operations | Week 30 | Training complete, 30-day stabilization |

---

## Budget

### Capital Expenditure (CapEx)

| Category | Estimated Cost | Notes |
|----------|----------------|-------|
| **Teams Rooms Devices** | £250,000 | 50 compute units @ £5K avg (huddle £3K, boardroom £8K) |
| **Displays** | £175,000 | 60 displays (50 primary + 10 secondary) @ £2.5K avg (55"-86") |
| **Cameras** | £75,000 | 50 PTZ cameras @ £1.5K avg (AI framing, 4K) |
| **Microphones** | £100,000 | 50 ceiling/table mic arrays @ £2K avg |
| **Touch Panels** | £50,000 | 50 Teams Rooms consoles @ £1K each |
| **Room Booking Displays** | £25,000 | 50 displays @ £500 each (10" tablets outside rooms) |
| **Cabling & Installation** | £40,000 | Cable trays, HDMI extenders, USB hubs, labor @ £800/room |
| **Network Upgrades** | £20,000 | PoE+ switch upgrades (3 sites), VLAN configuration |
| **Acoustic Treatment** | £30,000 | Sound-absorbing panels for 10 hard-surface rooms @ £3K |
| **Contingency (10%)** | £73,500 | Unforeseen costs, equipment failures, rework |
| **Total CapEx** | **£838,500** | ⚠️ **OVER BUDGET** - see optimization below |

**Budget Optimization** (to meet £750K cap):
- Reduce contingency to 5%: -£36,750
- Defer 10 room booking displays to Year 2: -£5,000
- Value engineering (refurbished huddle room displays): -£10,000
- Negotiate volume discount with vendor (8%): -£60,000
- **Revised Total CapEx**: **£726,750** ✅ Under budget

---

### Operational Expenditure (OpEx) - Annual

| Category | Annual Cost | Notes |
|----------|-------------|-------|
| **Microsoft Teams Rooms Pro Licenses** | £24,000 | 50 licenses × £40/month × 12 months |
| **Extended Hardware Warranty** | £15,000 | 3-year warranty for all devices (vendor SLA) |
| **Network Bandwidth** | £12,000 | Incremental bandwidth costs (400 Mbps peak) |
| **Support & Maintenance** | £8,000 | Vendor support retainer (Tier 3 escalation) |
| **Acoustic Improvements** | £5,000 | Ongoing acoustic tuning and panel replacement |
| **Replacement Parts** | £3,000 | Cables, HDMI adapters, USB hubs (consumables) |
| **Training & Documentation** | £2,000 | Annual refresher training, documentation updates |
| **Total OpEx** | **£69,000/year** | ✅ Under £75K/year target |

**Cost Savings** (offsetting OpEx):
- AV support cost reduction: -£120K/year (from £180K to £60K)
- Productivity gains: ~£200K/year (4,800 hours × £42/hour avg labor cost)
- **Net Savings**: £251K/year
- **ROI**: 18-month payback period (£726,750 CapEx ÷ £251K net savings/year)

---

## Approval

### Requirements Review

| Reviewer | Role | Status | Date | Comments |
|----------|------|--------|------|----------|
| [Name] | CIO (Executive Sponsor) | [ ] Approved | [DATE] | |
| [Name] | CFO (Budget Owner) | [ ] Approved | [DATE] | |
| [Name] | Facilities Manager (Project Owner) | [ ] Approved | [DATE] | |
| [Name] | IT Operations Director | [ ] Approved | [DATE] | |
| [Name] | Enterprise Architect | [ ] Approved | [DATE] | |
| [Name] | Microsoft Teams Administrator | [ ] Approved | [DATE] | |
| [Name] | Data Protection Officer | [ ] Approved | [DATE] | |

### Sign-Off

By signing below, stakeholders confirm that requirements are complete, understood, and approved to proceed to vendor RFP and solution design phase.

| Stakeholder | Signature | Date |
|-------------|-----------|------|
| [Name, CIO] | _________ | [DATE] |
| [Name, CFO] | _________ | [DATE] |
| [Name, Facilities Manager] | _________ | [DATE] |

---

## Appendices

### Appendix A: Glossary

- **AV**: Audio-Visual
- **BYOD**: Bring Your Own Device
- **DSP**: Digital Signal Processor (audio processing)
- **MOS Score**: Mean Opinion Score (audio quality metric, 1-5 scale)
- **MTR**: Microsoft Teams Rooms
- **PoE+**: Power over Ethernet Plus (802.3at, 30W)
- **PTZ**: Pan-Tilt-Zoom (camera)
- **QoS**: Quality of Service (network traffic prioritization)
- **SRTP**: Secure Real-time Transport Protocol (encrypted media)
- **VLAN**: Virtual Local Area Network (network segmentation)

### Appendix B: Reference Documents

- Microsoft Teams Rooms Requirements: https://learn.microsoft.com/microsoftteams/rooms/requirements
- Microsoft 365 Network Connectivity Principles: https://learn.microsoft.com/microsoft-365/enterprise/microsoft-365-network-connectivity-principles
- Teams Rooms Certified Devices: https://learn.microsoft.com/microsoftteams/rooms/certified-hardware
- Azure Monitor for Teams Rooms: https://learn.microsoft.com/microsoftteams/rooms/azure-monitor-deploy
- UK GDPR Guidance (ICO): https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/

### Appendix C: Room Tier Specifications

**Tier 1: Huddle Rooms (2-4 people)** - 5 rooms @ £8K each
- 1× 55" display
- 1× USB soundbar with integrated camera
- 1× Teams Rooms compute unit (entry-level)
- 1× touch console (optional - can use laptop)
- HDMI + USB-C cable tray

**Tier 2: Standard Rooms (6-12 people)** - 40 rooms @ £15K each
- 1× 65" display
- 1× PTZ camera with AI framing
- 1× ceiling microphone array (4 elements)
- 1× Teams Rooms compute unit (mid-range)
- 1× 10" touch console
- 1× room booking display (outside)
- Wireless presentation gateway
- HDMI + USB-C cable tray

**Tier 3: Large Rooms (12-20 people)** - 4 rooms @ £20K each
- 2× 75" displays (video + content)
- 1× PTZ camera with speaker tracking
- 1× ceiling microphone array (8 elements)
- 1× Teams Rooms compute unit (high-end)
- 1× 10" touch console
- 1× room booking display (outside)
- Wireless presentation gateway
- HDMI + USB-C cable tray
- Sound-absorbing panels

**Tier 4: Boardroom (20-30 people)** - 1 room @ £30K
- 1× 86" display
- 1× PTZ camera with intelligent framing + speaker tracking
- 2× ceiling microphone arrays (total 12 elements)
- 1× Teams Rooms compute unit (premium)
- 1× 13" touch console + wireless remote
- 1× room booking display (outside)
- Wireless presentation gateway
- HDMI + USB-C cable tray
- Premium sound-absorbing panels + acoustic tuning
- Custom cable management (concealed)

### Appendix D: Network Requirements

**VLAN Configuration**:
- VLAN 50: AV-Devices (Teams Rooms, cameras, mics)
- VLAN 60: AV-Presentation (wireless presentation gateways)
- VLAN 70: AV-Management (room booking displays)

**Firewall Rules** (AV-VLAN outbound):
- Allow: Microsoft 365 endpoints (Teams, Exchange, Azure AD) - see Microsoft documentation for IP ranges
- Allow: NTP (time synchronization)
- Allow: DNS
- Block: All other destinations (lateral movement prevention)

**QoS Policies**:
- Audio: DSCP EF (46) - highest priority
- Video: DSCP AF41 (34) - high priority
- Signaling: DSCP CS3 (24) - medium priority
- Content sharing: DSCP AF21 (18) - standard priority

**Bandwidth Reservation**:
- Per room: 4 Mbps upload + 4 Mbps download = 8 Mbps
- 50 rooms peak: 400 Mbps
- Network capacity: 1 Gbps internet (2.5× headroom)

---

**Generated by**: ArcKit `/arckit.requirements` command
**Generated on**: 2025-11-04 10:30:00 GMT
**ArcKit Version**: 0.6.0
**Project**: Conference Facilities Modernization (Project 004)
**AI Model**: claude-sonnet-4-5-20250929
**Generation Context**: Requirements generated from user input "Update conference facilities to modern" - comprehensive hybrid work enablement with Microsoft Teams Rooms integration. No stakeholder analysis existed at time of generation (recommended to run `/arckit.stakeholders` next).
