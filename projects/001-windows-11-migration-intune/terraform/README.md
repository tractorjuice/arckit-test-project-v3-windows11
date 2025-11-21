# Terraform Infrastructure for Windows 11 Migration Database

**Project 001**: Windows 11 Migration with InTune
**Data Model**: 6 core entities for migration tracking
**Classification**: CONFIDENTIAL
**Data Sovereignty**: UK (UK South region)

## Overview

This Terraform configuration deploys a complete Azure infrastructure for the Windows 11 migration database, implementing the data model defined in `migration-database-data-model.md` and `servicenow-data-model.md`.

### Architecture Components

1. **Azure Database for PostgreSQL Flexible Server**
   - PostgreSQL 15
   - Private endpoint access only (no public access)
   - 6-entity data model (MIGRATION_EVENT, MIGRATION_WAVE, APP_COMPATIBILITY_TEST, COST_TRACKING, STAKEHOLDER, UPDATE_RING_ASSIGNMENT)
   - Geo-redundant backups (35-day retention)
   - Optional zone-redundant high availability

2. **Networking**
   - Virtual Network with dedicated subnets
   - PostgreSQL subnet (delegated to Microsoft.DBforPostgreSQL/flexibleServers)
   - Application subnet (for ServiceNow integration)
   - Network Security Groups with restrictive rules
   - Private DNS Zone for PostgreSQL

3. **Monitoring**
   - Log Analytics workspace (90-day retention)
   - Azure Monitor alerts (CPU, memory, storage, connections, availability)
   - Action Group for email/webhook notifications
   - Azure Workbook dashboard
   - Saved queries for migration tracking

4. **Security**
   - Azure Key Vault for secret management
   - Private endpoint access (no public internet exposure)
   - TLS 1.2+ encryption in transit
   - UK data sovereignty compliance
   - GDPR-compliant data handling

## Prerequisites

1. **Azure Subscription** with sufficient permissions to create:
   - Resource Groups
   - Virtual Networks
   - PostgreSQL Flexible Servers
   - Key Vaults
   - Log Analytics Workspaces

2. **Terraform** >= 1.5.0

3. **Azure CLI** logged in:
   ```bash
   az login
   az account set --subscription "<subscription-id>"
   ```

4. **Required Terraform Providers**:
   - `hashicorp/azurerm` ~> 3.80
   - `cyrilgdn/postgresql` ~> 1.21
   - `hashicorp/random` ~> 3.5

## Quick Start

### 1. Initialize Terraform

```bash
cd terraform
terraform init
```

### 2. Create Variables File

```bash
cp terraform.tfvars.example terraform.tfvars
```

Edit `terraform.tfvars` with your environment-specific values:

```hcl
# Key values to customize:
resource_group_name      = "rg-migration-prod-uks"
postgresql_server_name   = "psql-migration-prod-001"  # Must be globally unique
key_vault_name           = "kv-migration-prod-001"     # Must be globally unique
storage_account_name     = "stmigrationflowlogs001"    # Must be globally unique

# Alert recipients
alert_email_receivers = [
  {
    name  = "IT Operations"
    email = "it-ops@example.com"
  }
]
```

### 3. Plan Deployment

```bash
terraform plan -out=tfplan
```

Review the plan to ensure all resources are correct.

### 4. Apply Configuration

```bash
terraform apply tfplan
```

Deployment takes approximately 15-20 minutes.

### 5. Retrieve Outputs

```bash
# View all outputs
terraform output

# View connection information
terraform output connection_info

# View deployment summary
terraform output deployment_summary

# Get PostgreSQL admin password (sensitive)
terraform output -raw postgresql_admin_password
```

### 6. Store Credentials Securely

If Key Vault was created, the PostgreSQL admin password is automatically stored:

```bash
# Retrieve from Key Vault
az keyvault secret show --vault-name "kv-migration-prod-001" --name "psql-migration-prod-001-admin-password" --query "value" -o tsv
```

## Module Structure

```
terraform/
├── main.tf                          # Root configuration
├── variables.tf                     # Root variables
├── outputs.tf                       # Root outputs
├── terraform.tfvars.example         # Example variables
├── README.md                        # This file
│
├── modules/
│   ├── postgresql/                  # PostgreSQL Flexible Server module
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── database-schema/             # Database schema (tables, indexes)
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── networking/                  # VNet, subnets, NSGs, private DNS
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── monitoring/                  # Log Analytics, alerts, dashboards
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── environments/                    # Environment-specific configs (future)
    ├── dev.tfvars
    ├── test.tfvars
    └── prod.tfvars
```

## Data Model

### Core Entities (6 tables)

1. **MIGRATION_WAVE** (Parent entity)
   - Tracks migration waves (Pilot, Early Adopter, Production)
   - Success rate tracking
   - Timeline management

2. **MIGRATION_EVENT** (Child of MIGRATION_WAVE)
   - Individual device migration events
   - Event types: Pre-Check, Autopilot, OneDrive Sync, App Install, Post-Validation
   - Downtime tracking
   - Failure reason logging

3. **APP_COMPATIBILITY_TEST**
   - Application compatibility test results
   - Approval workflow (tested_by, approved_by)
   - Remediation planning

4. **COST_TRACKING** (CONFIDENTIAL)
   - Project cost tracking by category
   - Hardware, Licenses, Professional Services, Training, Support
   - Budget code and PO number tracking

5. **STAKEHOLDER** (CONFIDENTIAL - PII)
   - Stakeholder contact information
   - RACI roles (Responsible, Accountable, Consulted, Informed)
   - Notification preferences

6. **UPDATE_RING_ASSIGNMENT**
   - Windows Update ring assignments (Ring 1-4)
   - Deployment schedule tracking
   - Deferral period configuration

### Database Schema Features

- **Primary Keys**: UUID for all entities
- **Foreign Keys**: 4 FK constraints (MIGRATION_EVENT, COST_TRACKING, UPDATE_RING_ASSIGNMENT → MIGRATION_WAVE)
- **Indexes**: 14 performance indexes (device_id, wave_id, status, timestamps)
- **Data Classification**: INTERNAL (4 tables), CONFIDENTIAL (2 tables)
- **Retention**: 7 years (2 years active + 5 years archive)
- **Locale**: en_GB.utf8 (UK data sovereignty)

## Configuration Options

### Environment Sizing

| Environment | vCores | RAM  | Storage | SKU                 | Est. Cost/Month |
|-------------|--------|------|---------|---------------------|-----------------|
| **Dev**     | 1-2    | 2-4 GB | 10 GB | B_Standard_B2s | £50-80 |
| **Test**    | 2      | 8 GB   | 16 GB | GP_Standard_D2s_v3 | £150-200 |
| **Prod**    | 2-4    | 8-16 GB| 32-64 GB | GP_Standard_D2s_v3 / D4s_v3 | £250-500 |
| **Prod HA** | 4      | 16 GB  | 64 GB | GP_Standard_D4s_v3 (HA) | £500-700 |

### High Availability

To enable zone-redundant HA (99.99% SLA):

```hcl
enable_high_availability = true
availability_zone        = "1"
standby_availability_zone = "2"
```

**Note**: HA requires General Purpose (GP) or Memory Optimized (MO) SKUs. Burstable (B) SKUs do not support HA.

### Backup Configuration

```hcl
postgresql_backup_retention_days = 35      # 7-35 days
geo_redundant_backup_enabled    = true    # Recommended for production
```

### Performance Tuning

Adjust PostgreSQL parameters based on workload:

```hcl
max_connections         = "100"           # Concurrent connections
shared_buffers_mb       = "2048MB"        # 25% of RAM
effective_cache_size_mb = "6144MB"        # 75% of RAM
```

## Monitoring & Alerts

### Configured Alerts

1. **PostgreSQL CPU > 80%** (Severity 2)
   - Frequency: Every 5 minutes
   - Window: 15 minutes average

2. **PostgreSQL Memory > 85%** (Severity 2)
   - Frequency: Every 5 minutes
   - Window: 15 minutes average

3. **PostgreSQL Storage > 85%** (Severity 1)
   - Frequency: Every 5 minutes
   - Window: 30 minutes average

4. **PostgreSQL Connection Failures > 10** (Severity 2)
   - Frequency: Every 5 minutes
   - Window: 15 minutes total

5. **PostgreSQL Server Unavailable** (Severity 0 - CRITICAL)
   - Frequency: Every 1 minute
   - Window: 5 minutes average

6. **PostgreSQL Replication Lag > 60s** (Severity 2, HA only)
   - Frequency: Every 5 minutes
   - Window: 15 minutes maximum

### Log Analytics Saved Searches

1. **Failed Migrations (Last 24h)**
   ```kql
   AppTraces
   | where TimeGenerated > ago(24h)
   | where Properties.migration_status == "Failed"
   | summarize FailedCount = count() by bin(TimeGenerated, 1h), tostring(Properties.event_type)
   ```

2. **Average Downtime by Wave**
   ```kql
   AppTraces
   | where Properties has "downtime_minutes"
   | extend DowntimeMinutes = toint(Properties.downtime_minutes)
   | extend WaveId = tostring(Properties.migration_wave_id)
   | summarize AvgDowntime = avg(DowntimeMinutes), MaxDowntime = max(DowntimeMinutes) by WaveId
   ```

3. **Application Compatibility Failures**
   ```kql
   AppTraces
   | where Properties.test_result == "Fail" or Properties.test_result == "Blocked"
   | extend AppName = tostring(Properties.application_name)
   | summarize FailureCount = count() by AppName
   ```

## Security

### Network Security

- **No Public Access**: PostgreSQL server only accessible via private endpoint
- **NSG Rules**: Restrictive rules allowing only necessary traffic
- **Private DNS**: Custom DNS zone for private endpoint resolution
- **TLS 1.2+**: Enforced for all connections

### Data Protection

- **Encryption at Rest**: Automatic (Azure-managed keys)
- **Encryption in Transit**: TLS 1.2+ enforced
- **Key Vault**: Admin password stored securely
- **Data Classification**: Enforced at table level (INTERNAL, CONFIDENTIAL)

### GDPR Compliance

- **PII Tables**: STAKEHOLDER (name, email, phone)
- **Data Sovereignty**: UK South region
- **Retention**: 7-year retention policy
- **Right to Erasure**: Implement via application layer (soft delete + anonymization)

## Connecting to the Database

### From Azure Application (Private Endpoint)

```bash
psql "host=psql-migration-prod-001.postgres.database.azure.com port=5432 dbname=migration_db user=psqladmin sslmode=require"
```

### Connection String (Application Configuration)

```
postgresql://psqladmin:{password}@psql-migration-prod-001.postgres.database.azure.com:5432/migration_db?sslmode=require
```

Get password from:
- Terraform output: `terraform output -raw postgresql_admin_password`
- Key Vault: `az keyvault secret show --vault-name kv-migration-prod-001 --name psql-migration-prod-001-admin-password`

### From ServiceNow Integration

Deploy integration application to `app-subnet` (10.100.2.0/24) with:

1. **Network Access**: Application subnet has outbound rule to PostgreSQL subnet
2. **Connection String**: Use Terraform output `connection_info`
3. **Credentials**: Store in ServiceNow Credential Store (encrypted)

## Maintenance Operations

### Viewing Logs

```bash
# PostgreSQL server logs
az postgres flexible-server logs list --resource-group rg-migration-prod-uks --name psql-migration-prod-001

# Download specific log
az postgres flexible-server logs download --resource-group rg-migration-prod-uks --name psql-migration-prod-001 --file-name <log-file-name>
```

### Backup and Restore

```bash
# List backups
az postgres flexible-server backup list --resource-group rg-migration-prod-uks --name psql-migration-prod-001

# Restore from backup
az postgres flexible-server restore --resource-group rg-migration-prod-uks \
  --name psql-migration-restored-001 \
  --source-server psql-migration-prod-001 \
  --restore-point-in-time "2025-11-21T10:00:00Z"
```

### Scaling

```bash
# Scale up SKU
az postgres flexible-server update --resource-group rg-migration-prod-uks \
  --name psql-migration-prod-001 \
  --sku-name GP_Standard_D4s_v3

# Scale storage (cannot be decreased)
az postgres flexible-server update --resource-group rg-migration-prod-uks \
  --name psql-migration-prod-001 \
  --storage-size 65536
```

## Disaster Recovery

### Recovery Point Objective (RPO)

- **Automated Backups**: Every 5 minutes (transaction logs)
- **Full Backups**: Daily
- **RPO**: < 5 minutes

### Recovery Time Objective (RTO)

- **Point-in-Time Restore**: 15-30 minutes
- **Geo-Restore** (if geo-redundant enabled): 1-2 hours
- **RTO Target**: < 4 hours

### DR Procedure

1. **Restore from Point-in-Time**:
   ```bash
   az postgres flexible-server restore --resource-group rg-migration-prod-uks \
     --name psql-migration-restored-001 \
     --source-server psql-migration-prod-001 \
     --restore-point-in-time "2025-11-21T10:00:00Z"
   ```

2. **Update Application Configuration**:
   - Update connection strings to restored server
   - Verify connectivity from application subnet

3. **Verify Data Integrity**:
   ```sql
   SELECT COUNT(*) FROM migration_event;
   SELECT COUNT(*) FROM migration_wave;
   -- Verify counts match expected values
   ```

## Cost Optimization

### Development Environment

```hcl
# Use Burstable SKU for dev
postgresql_sku_name              = "B_Standard_B2s"
postgresql_storage_mb            = 10240  # 10 GB
postgresql_backup_retention_days = 7
geo_redundant_backup_enabled     = false
enable_high_availability         = false
log_retention_days               = 30
```

**Est. Cost**: £50-80/month

### Production Environment

```hcl
# General Purpose SKU for production
postgresql_sku_name              = "GP_Standard_D2s_v3"
postgresql_storage_mb            = 32768  # 32 GB
postgresql_backup_retention_days = 35
geo_redundant_backup_enabled     = true
enable_high_availability         = false  # or true for 99.99% SLA
log_retention_days               = 90
```

**Est. Cost**: £250-500/month (without HA), £500-700/month (with HA)

## Troubleshooting

### Issue: Cannot connect to PostgreSQL

**Symptom**: Connection timeout or refused

**Checks**:
1. Verify application is in allowed subnet (app-subnet)
2. Check NSG rules: `az network nsg rule list --resource-group rg-migration-prod-uks --nsg-name snet-postgresql-nsg`
3. Verify private DNS resolution: `nslookup psql-migration-prod-001.postgres.database.azure.com`
4. Check PostgreSQL server status: `az postgres flexible-server show --resource-group rg-migration-prod-uks --name psql-migration-prod-001`

### Issue: High CPU usage

**Symptom**: CPU alert triggered

**Resolution**:
1. Check slow queries in Log Analytics
2. Review index usage: `SELECT * FROM pg_stat_user_indexes;`
3. Scale up SKU if sustained high usage
4. Optimize queries or add indexes

### Issue: Terraform state lock error

**Symptom**: "Error acquiring the state lock"

**Resolution**:
```bash
# Force unlock (use with caution)
terraform force-unlock <lock-id>
```

## References

- **Data Model Documentation**: `../migration-database-data-model.md`
- **ServiceNow Integration**: `../servicenow-data-model.md`
- **Requirements**: `../requirements.md`
- **Traceability Matrix**: `../traceability-matrix-v4.md`
- **Azure PostgreSQL Flexible Server**: https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/

## Support

For issues or questions:
- **Project Owner**: IT Operations
- **Support Email**: it-support@example.com
- **ServiceNow**: Create incident with category "Windows 11 Migration"

---

**Generated by**: ArcKit Terraform Data Model Generator
**Project**: Windows 11 Migration with InTune (Project 001)
**Data Classification**: CONFIDENTIAL
**Compliance**: UK GDPR, Data Sovereignty
