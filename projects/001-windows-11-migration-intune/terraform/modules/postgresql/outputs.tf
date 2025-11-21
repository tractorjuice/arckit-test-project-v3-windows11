# Outputs for Azure PostgreSQL Flexible Server Module
# Project 001: Windows 11 Migration with InTune

# Server outputs
output "server_id" {
  description = "ID of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.migration_db.id
}

output "server_name" {
  description = "Name of the PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.migration_db.name
}

output "server_fqdn" {
  description = "Fully qualified domain name of the PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.migration_db.fqdn
}

output "server_version" {
  description = "PostgreSQL version"
  value       = azurerm_postgresql_flexible_server.migration_db.version
}

# Database outputs
output "database_id" {
  description = "ID of the PostgreSQL database"
  value       = azurerm_postgresql_flexible_server_database.migration_data.id
}

output "database_name" {
  description = "Name of the PostgreSQL database"
  value       = azurerm_postgresql_flexible_server_database.migration_data.name
}

# Connection outputs
output "admin_username" {
  description = "Administrator username for PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.migration_db.administrator_login
}

output "admin_password" {
  description = "Administrator password (sensitive)"
  value       = random_password.admin_password.result
  sensitive   = true
}

output "connection_string" {
  description = "PostgreSQL connection string (without password)"
  value       = "postgresql://${azurerm_postgresql_flexible_server.migration_db.administrator_login}@${azurerm_postgresql_flexible_server.migration_db.fqdn}:5432/${azurerm_postgresql_flexible_server_database.migration_data.name}?sslmode=require"
  sensitive   = false
}

output "connection_string_with_password" {
  description = "PostgreSQL connection string (with password, sensitive)"
  value       = "postgresql://${azurerm_postgresql_flexible_server.migration_db.administrator_login}:${random_password.admin_password.result}@${azurerm_postgresql_flexible_server.migration_db.fqdn}:5432/${azurerm_postgresql_flexible_server_database.migration_data.name}?sslmode=require"
  sensitive   = true
}

# Network outputs
output "delegated_subnet_id" {
  description = "ID of the delegated subnet"
  value       = azurerm_postgresql_flexible_server.migration_db.delegated_subnet_id
}

output "private_dns_zone_id" {
  description = "ID of the private DNS zone"
  value       = azurerm_postgresql_flexible_server.migration_db.private_dns_zone_id
}

# High availability outputs
output "high_availability_enabled" {
  description = "Whether high availability is enabled"
  value       = var.enable_high_availability
}

output "primary_availability_zone" {
  description = "Primary availability zone"
  value       = azurerm_postgresql_flexible_server.migration_db.zone
}

# Backup outputs
output "backup_retention_days" {
  description = "Backup retention period in days"
  value       = azurerm_postgresql_flexible_server.migration_db.backup_retention_days
}

output "geo_redundant_backup_enabled" {
  description = "Whether geo-redundant backups are enabled"
  value       = azurerm_postgresql_flexible_server.migration_db.geo_redundant_backup_enabled
}

# Monitoring outputs
output "diagnostic_setting_id" {
  description = "ID of the diagnostic setting (if enabled)"
  value       = var.log_analytics_workspace_id != null ? azurerm_monitor_diagnostic_setting.migration_db_diagnostics[0].id : null
}

# Key Vault outputs
output "key_vault_secret_id" {
  description = "ID of the Key Vault secret containing admin password (if enabled)"
  value       = var.key_vault_id != null ? azurerm_key_vault_secret.db_admin_password[0].id : null
}

output "key_vault_secret_name" {
  description = "Name of the Key Vault secret containing admin password (if enabled)"
  value       = var.key_vault_id != null ? azurerm_key_vault_secret.db_admin_password[0].name : null
}

# Tags output
output "tags" {
  description = "Tags applied to resources"
  value       = azurerm_postgresql_flexible_server.migration_db.tags
}

# Summary output for convenience
output "deployment_summary" {
  description = "Summary of PostgreSQL deployment"
  value = {
    server_name             = azurerm_postgresql_flexible_server.migration_db.name
    server_fqdn             = azurerm_postgresql_flexible_server.migration_db.fqdn
    database_name           = azurerm_postgresql_flexible_server_database.migration_data.name
    postgresql_version      = azurerm_postgresql_flexible_server.migration_db.version
    sku_name                = azurerm_postgresql_flexible_server.migration_db.sku_name
    storage_mb              = azurerm_postgresql_flexible_server.migration_db.storage_mb
    location                = azurerm_postgresql_flexible_server.migration_db.location
    high_availability       = var.enable_high_availability
    geo_redundant_backup    = azurerm_postgresql_flexible_server.migration_db.geo_redundant_backup_enabled
    backup_retention_days   = azurerm_postgresql_flexible_server.migration_db.backup_retention_days
    private_access          = true
    public_access           = false
  }
}
