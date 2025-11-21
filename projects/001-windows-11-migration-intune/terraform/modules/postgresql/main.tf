# Azure Database for PostgreSQL Flexible Server for Windows 11 Migration Database
# Project 001: Windows 11 Migration with InTune
# Data Model: 6 core entities for migration tracking

terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
}

# Generate random password for PostgreSQL admin
resource "random_password" "admin_password" {
  length  = 32
  special = true
  # Azure PostgreSQL password requirements
  min_lower   = 1
  min_upper   = 1
  min_numeric = 1
  min_special = 1
}

# Store admin password in Azure Key Vault (assumes Key Vault exists)
resource "azurerm_key_vault_secret" "db_admin_password" {
  count        = var.key_vault_id != null ? 1 : 0
  name         = "${var.server_name}-admin-password"
  value        = random_password.admin_password.result
  key_vault_id = var.key_vault_id

  tags = var.tags
}

# Azure Database for PostgreSQL Flexible Server
resource "azurerm_postgresql_flexible_server" "migration_db" {
  name                = var.server_name
  resource_group_name = var.resource_group_name
  location            = var.location

  # Admin credentials
  administrator_login    = var.admin_username
  administrator_password = random_password.admin_password.result

  # PostgreSQL version
  version = var.postgresql_version

  # SKU configuration
  sku_name = var.sku_name

  # Storage configuration
  storage_mb = var.storage_mb

  # Backup configuration
  backup_retention_days        = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled

  # High availability (production only)
  dynamic "high_availability" {
    for_each = var.enable_high_availability ? [1] : []
    content {
      mode                      = "ZoneRedundant"
      standby_availability_zone = var.standby_availability_zone
    }
  }

  # Network configuration
  delegated_subnet_id = var.delegated_subnet_id
  private_dns_zone_id = var.private_dns_zone_id

  # Public network access (disabled for security)
  public_network_access_enabled = false

  # Zone (for availability)
  zone = var.availability_zone

  # Maintenance window (Sunday 2-3 AM UTC)
  maintenance_window {
    day_of_week  = 0
    start_hour   = 2
    start_minute = 0
  }

  # Tags
  tags = merge(
    var.tags,
    {
      "Project"         = "001-windows-11-migration-intune"
      "DataModel"       = "migration-database"
      "Entities"        = "6"
      "Classification"  = "CONFIDENTIAL"
      "Retention"       = "7years"
      "DataSovereignty" = "UK"
    }
  )

  lifecycle {
    ignore_changes = [
      # Prevent recreation on zone changes
      zone,
      # Prevent password changes after initial creation
      administrator_password
    ]
  }
}

# PostgreSQL configurations for performance and security
resource "azurerm_postgresql_flexible_server_configuration" "migration_db_configs" {
  for_each = {
    # Connection settings
    "max_connections"           = var.max_connections
    "connection_throttling"     = "on"

    # Performance settings
    "shared_buffers"            = var.shared_buffers_mb
    "effective_cache_size"      = var.effective_cache_size_mb
    "maintenance_work_mem"      = "512MB"
    "checkpoint_completion_target" = "0.9"
    "wal_buffers"               = "16MB"
    "default_statistics_target" = "100"
    "random_page_cost"          = "1.1"
    "effective_io_concurrency"  = "200"
    "work_mem"                  = "4MB"
    "huge_pages"                = "try"
    "min_wal_size"              = "1GB"
    "max_wal_size"              = "4GB"

    # Security settings
    "log_connections"           = "on"
    "log_disconnections"        = "on"
    "log_checkpoints"           = "on"
    "log_lock_waits"            = "on"
    "log_min_duration_statement" = "1000"  # Log queries > 1 second
    "ssl_min_protocol_version"  = "TLSv1.2"

    # Timezone
    "timezone"                  = "UTC"
  }

  server_id = azurerm_postgresql_flexible_server.migration_db.id
  name      = each.key
  value     = each.value
}

# PostgreSQL database for migration data
resource "azurerm_postgresql_flexible_server_database" "migration_data" {
  name      = var.database_name
  server_id = azurerm_postgresql_flexible_server.migration_db.id
  charset   = "UTF8"
  collation = "en_GB.utf8"  # UK locale for data sovereignty

  # Prevent accidental deletion
  lifecycle {
    prevent_destroy = false  # Set to true in production
  }
}

# Firewall rule for Azure services (if needed for ServiceNow integration)
resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_azure_services" {
  count            = var.allow_azure_services ? 1 : 0
  name             = "AllowAzureServices"
  server_id        = azurerm_postgresql_flexible_server.migration_db.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}

# Diagnostic settings for monitoring
resource "azurerm_monitor_diagnostic_setting" "migration_db_diagnostics" {
  count                      = var.log_analytics_workspace_id != null ? 1 : 0
  name                       = "${var.server_name}-diagnostics"
  target_resource_id         = azurerm_postgresql_flexible_server.migration_db.id
  log_analytics_workspace_id = var.log_analytics_workspace_id

  # Logs
  enabled_log {
    category = "PostgreSQLLogs"
  }

  enabled_log {
    category = "PostgreSQLFlexDatabaseXacts"
  }

  enabled_log {
    category = "PostgreSQLFlexQueryStoreRuntime"
  }

  enabled_log {
    category = "PostgreSQLFlexQueryStoreWaitStats"
  }

  enabled_log {
    category = "PostgreSQLFlexSessions"
  }

  enabled_log {
    category = "PostgreSQLFlexTableStats"
  }

  # Metrics
  metric {
    category = "AllMetrics"
    enabled  = true
  }
}
