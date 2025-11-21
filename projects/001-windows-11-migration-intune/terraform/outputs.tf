# Root Outputs for Windows 11 Migration Database Infrastructure
# Project 001: Windows 11 Migration with InTune

# Resource Group outputs
output "resource_group_name" {
  description = "Name of the resource group"
  value       = local.resource_group_name
}

output "location" {
  description = "Azure region"
  value       = var.location
}

# Key Vault outputs
output "key_vault_id" {
  description = "ID of the Key Vault (null if not created)"
  value       = var.create_key_vault ? azurerm_key_vault.migration_kv[0].id : null
}

output "key_vault_uri" {
  description = "URI of the Key Vault (null if not created)"
  value       = var.create_key_vault ? azurerm_key_vault.migration_kv[0].vault_uri : null
}

# Networking outputs
output "vnet_id" {
  description = "ID of the virtual network"
  value       = module.networking.vnet_id
}

output "postgresql_subnet_id" {
  description = "ID of the PostgreSQL subnet"
  value       = module.networking.postgresql_subnet_id
}

output "app_subnet_id" {
  description = "ID of the application subnet (null if not created)"
  value       = module.networking.app_subnet_id
}

output "private_dns_zone_id" {
  description = "ID of the PostgreSQL private DNS zone"
  value       = module.networking.private_dns_zone_id
}

output "networking_summary" {
  description = "Summary of networking deployment"
  value       = module.networking.networking_summary
}

# Monitoring outputs
output "log_analytics_workspace_id" {
  description = "ID of the Log Analytics workspace"
  value       = module.monitoring.log_analytics_workspace_id
}

output "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace"
  value       = module.monitoring.log_analytics_workspace_name
}

output "action_group_id" {
  description = "ID of the Azure Monitor action group"
  value       = module.monitoring.action_group_id
}

output "monitoring_summary" {
  description = "Summary of monitoring deployment"
  value       = module.monitoring.monitoring_summary
}

# PostgreSQL outputs
output "postgresql_server_id" {
  description = "ID of the PostgreSQL Flexible Server"
  value       = module.postgresql.server_id
}

output "postgresql_server_name" {
  description = "Name of the PostgreSQL Flexible Server"
  value       = module.postgresql.server_name
}

output "postgresql_server_fqdn" {
  description = "Fully qualified domain name of the PostgreSQL server"
  value       = module.postgresql.server_fqdn
}

output "postgresql_database_name" {
  description = "Name of the PostgreSQL database"
  value       = module.postgresql.database_name
}

output "postgresql_admin_username" {
  description = "Administrator username for PostgreSQL server"
  value       = module.postgresql.admin_username
}

output "postgresql_connection_string" {
  description = "PostgreSQL connection string (without password)"
  value       = module.postgresql.connection_string
  sensitive   = false
}

output "postgresql_deployment_summary" {
  description = "Summary of PostgreSQL deployment"
  value       = module.postgresql.deployment_summary
}

# Database Schema outputs
output "database_tables" {
  description = "List of database tables created"
  value       = module.database_schema.tables_created
}

output "database_indexes" {
  description = "List of database indexes created"
  value       = module.database_schema.indexes_created
}

output "confidential_tables" {
  description = "Tables containing confidential data (GDPR compliance)"
  value       = module.database_schema.confidential_tables
}

output "database_schema_summary" {
  description = "Summary of database schema deployment"
  value       = module.database_schema.schema_summary
}

# Connection information (for application configuration)
output "connection_info" {
  description = "Connection information for applications"
  value = {
    server_fqdn              = module.postgresql.server_fqdn
    database_name            = module.postgresql.database_name
    admin_username           = module.postgresql.admin_username
    connection_string        = module.postgresql.connection_string
    port                     = 5432
    ssl_mode                 = "require"
    location                 = var.location
    key_vault_secret_name    = var.create_key_vault ? module.postgresql.key_vault_secret_name : "N/A (No Key Vault)"
    log_analytics_workspace  = module.monitoring.log_analytics_workspace_name
  }
}

# Deployment summary
output "deployment_summary" {
  description = "Complete deployment summary"
  value = {
    project                    = "Windows 11 Migration with InTune"
    project_id                 = "001"
    environment                = var.environment
    location                   = var.location
    resource_group             = local.resource_group_name

    # Infrastructure components
    vnet_created               = true
    postgresql_server_created  = true
    monitoring_enabled         = true
    key_vault_created          = var.create_key_vault

    # Data model
    database_tables            = 6
    database_indexes           = 14
    data_classification        = "CONFIDENTIAL"
    data_sovereignty           = "UK"

    # Entities
    entities = [
      "MIGRATION_EVENT",
      "MIGRATION_WAVE",
      "APP_COMPATIBILITY_TEST",
      "COST_TRACKING (CONFIDENTIAL)",
      "STAKEHOLDER (CONFIDENTIAL - PII)",
      "UPDATE_RING_ASSIGNMENT"
    ]

    # Compliance
    gdpr_compliant             = true
    uk_data_sovereignty        = true
    retention_period           = "7 years (2 years active + 5 years archive)"

    # Monitoring
    alerts_configured          = true
    log_retention_days         = var.log_retention_days
    high_availability          = var.enable_high_availability
    geo_redundant_backup       = var.geo_redundant_backup_enabled

    # Next steps
    next_steps = [
      "1. Retrieve PostgreSQL admin password from Key Vault (if created) or Terraform output",
      "2. Configure application connection strings using output 'connection_info'",
      "3. Set up Azure AD authentication for PostgreSQL (optional)",
      "4. Configure email alerts in Action Group",
      "5. Review and customize Azure Workbook dashboard",
      "6. Implement backup testing and disaster recovery procedures",
      "7. Set up ServiceNow integration using application subnet"
    ]
  }
}
