# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is an **ArcKit demonstration repository** showcasing enterprise architecture governance artifacts for Windows 11 deployment and related IT modernization projects. ArcKit provides 40 slash commands for generating architecture documentation through AI-assisted workflows.

## Using ArcKit Commands

Run slash commands directly in Claude Code to generate architecture artifacts:

```bash
# Create or update architecture principles (stored globally in .arckit/memory/)
/arckit.principles

# Work with a specific project
/arckit.stakeholders Windows 11 Migration
/arckit.requirements Windows 11 Migration
/arckit.risk Windows 11 Migration
/arckit.diagram container Windows 11 Migration
```

## Repository Structure

```
├── .arckit/
│   ├── memory/                    # Global architecture principles
│   ├── templates/                 # Document templates (do not edit directly)
│   └── scripts/bash/              # Helper scripts used by commands
├── .claude/commands/              # ArcKit slash commands (arckit.*.md)
├── projects/
│   ├── 001-windows-11-migration-intune/      # Main Windows 11 deployment project
│   ├── 002-application-packaging-rationalisation/
│   ├── 003-peripherals-update-upgrade/
│   ├── 004-conference-facilities-modernization/
│   ├── 005-cloud-pki/
│   ├── 006-large-format-printer/
│   └── 007-vpn-service-windows11-autopilot/
└── docs/                          # GitHub Pages documentation site
```

## Available Commands by Workflow Phase

**Foundation**: `/arckit.plan`, `/arckit.principles`

**Strategic Context**: `/arckit.stakeholders`, `/arckit.risk`, `/arckit.sobc`

**Requirements & Data**: `/arckit.requirements`, `/arckit.data-model`, `/arckit.dpia`

**Research & Strategy**: `/arckit.research`, `/arckit.wardley`, `/arckit.roadmap`, `/arckit.adr`

**Procurement**: `/arckit.sow`, `/arckit.dos`, `/arckit.gcloud-search`, `/arckit.gcloud-clarify`, `/arckit.evaluate`

**Design & Architecture**: `/arckit.diagram`, `/arckit.hld-review`, `/arckit.dld-review`

**Operations**: `/arckit.backlog`, `/arckit.servicenow`, `/arckit.devops`, `/arckit.mlops`, `/arckit.finops`, `/arckit.operationalize`, `/arckit.traceability`

**UK Government Compliance**: `/arckit.tcop`, `/arckit.secure`, `/arckit.service-assessment`, `/arckit.ai-playbook`, `/arckit.atrs`

**UK MOD**: `/arckit.mod-secure`, `/arckit.jsp-936`

**Quality & Reporting**: `/arckit.analyze`, `/arckit.principles-compliance`, `/arckit.story`, `/arckit.pages`

## Key Patterns

**Requirement ID Prefixes**:
- BR-xxx: Business Requirements
- FR-xxx: Functional Requirements
- NFR-xxx: Non-Functional (NFR-P-xxx Performance, NFR-SEC-xxx Security, NFR-A-xxx Availability, NFR-C-xxx Compliance)
- INT-xxx: Integration Requirements
- DR-xxx: Data Requirements

**Traceability Chain**: Stakeholders → Goals → Requirements → Data Model → Components → User Stories

**Template-Driven**: All artifacts use templates from `.arckit/templates/`. Commands read templates and generate documents following the structure.

**Token Limit Handling**: Commands use the Write tool to save large documents directly to files, showing only a summary to avoid exceeding output limits.

## Helper Scripts

Located in `.arckit/scripts/bash/`:
- `create-project.sh --name "Project Name" --json` - Creates numbered project directory, returns JSON with path
- `generate-document-id.sh PROJECT_ID DOC_TYPE VERSION` - Generates document IDs (e.g., ARC-001-REQ-v1.0)
- `list-projects.sh` - Lists all projects with metadata
