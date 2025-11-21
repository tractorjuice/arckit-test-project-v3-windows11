# Main Terraform Configuration for Windows 11 Migration Database
# Project 001: Windows 11 Migration with InTune
# Data Model: 6 core entities (MIGRATION_EVENT, MIGRATION_WAVE, APP_COMPATIBILITY_TEST, COST_TRACKING, STAKEHOLDER, UPDATE_RING_ASSIGNMENT)

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "~> 1.21"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }

  # Backend configuration for remote state (commented out for initial setup)
  # Uncomment and configure for production use
  # backend "azurerm" {
  #   resource_group_name  = "terraform-state-rg"
  #   storage_account_name = "tfstate<unique_id>"
  #   container_name       = "tfstate"
  #   key                  = "migration-database.tfstate"
  # }
}

# Configure Azure Provider
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = true
    }

    key_vault {
      purge_soft_delete_on_destroy    = false
      recover_soft_deleted_key_vaults = true
    }
  }
}

# Resource Group (or data source if already exists)
resource "azurerm_resource_group" "migration_rg" {
  count    = var.create_resource_group ? 1 : 0
  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}

data "azurerm_resource_group" "migration_rg" {
  count = var.create_resource_group ? 0 : 1
  name  = var.resource_group_name
}

locals {
  resource_group_name = var.create_resource_group ? azurerm_resource_group.migration_rg[0].name : data.azurerm_resource_group.migration_rg[0].name
}

# Optional: Key Vault for secrets management
resource "azurerm_key_vault" "migration_kv" {
  count                       = var.create_key_vault ? 1 : 0
  name                        = var.key_vault_name
  location                    = var.location
  resource_group_name         = local.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 90
  purge_protection_enabled    = true
  sku_name                    = "standard"

  # Access policy for Terraform service principal
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore"
    ]
  }

  tags = var.tags
}

data "azurerm_client_config" "current" {}

# Storage Account for flow logs (optional)
resource "azurerm_storage_account" "flow_logs" {
  count                    = var.enable_flow_logs ? 1 : 0
  name                     = var.storage_account_name
  resource_group_name      = local.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"

  blob_properties {
    delete_retention_policy {
      days = 30
    }
  }

  tags = var.tags
}

# Module: Networking
module "networking" {
  source = "./modules/networking"

  resource_group_name               = local.resource_group_name
  location                          = var.location
  vnet_name                         = var.vnet_name
  vnet_address_space                = var.vnet_address_space
  postgresql_subnet_name            = var.postgresql_subnet_name
  postgresql_subnet_address_prefixes = var.postgresql_subnet_address_prefixes
  create_app_subnet                 = var.create_app_subnet
  app_subnet_name                   = var.app_subnet_name
  app_subnet_address_prefixes       = var.app_subnet_address_prefixes
  allowed_source_address_prefixes   = var.allowed_source_address_prefixes
  enable_flow_logs                  = var.enable_flow_logs
  storage_account_id                = var.enable_flow_logs ? azurerm_storage_account.flow_logs[0].id : null
  enable_traffic_analytics          = var.enable_traffic_analytics
  log_analytics_workspace_id        = var.enable_traffic_analytics ? module.monitoring.log_analytics_workspace_workspace_id : null
  log_analytics_workspace_resource_id = var.enable_traffic_analytics ? module.monitoring.log_analytics_workspace_resource_id : null

  tags = var.tags

  depends_on = [
    azurerm_resource_group.migration_rg,
    module.monitoring
  ]
}

# Module: Monitoring
module "monitoring" {
  source = "./modules/monitoring"

  resource_group_name          = local.resource_group_name
  location                     = var.location
  log_analytics_workspace_name = var.log_analytics_workspace_name
  log_analytics_sku            = var.log_analytics_sku
  log_retention_days           = var.log_retention_days
  create_application_insights  = var.create_application_insights
  application_insights_name    = var.application_insights_name
  action_group_name            = var.action_group_name
  action_group_short_name      = var.action_group_short_name
  alert_email_receivers        = var.alert_email_receivers
  webhook_receivers            = var.webhook_receivers
  alert_prefix                 = var.alert_prefix
  postgresql_server_id         = module.postgresql.server_id
  enable_ha_alerts             = var.enable_high_availability
  create_workbook              = var.create_workbook

  tags = var.tags

  depends_on = [
    azurerm_resource_group.migration_rg
  ]
}

# Module: PostgreSQL Flexible Server
module "postgresql" {
  source = "./modules/postgresql"

  resource_group_name             = local.resource_group_name
  location                        = var.location
  server_name                     = var.postgresql_server_name
  database_name                   = var.postgresql_database_name
  admin_username                  = var.postgresql_admin_username
  postgresql_version              = var.postgresql_version
  sku_name                        = var.postgresql_sku_name
  storage_mb                      = var.postgresql_storage_mb
  backup_retention_days           = var.postgresql_backup_retention_days
  geo_redundant_backup_enabled    = var.geo_redundant_backup_enabled
  enable_high_availability        = var.enable_high_availability
  availability_zone               = var.availability_zone
  standby_availability_zone       = var.standby_availability_zone
  delegated_subnet_id             = module.networking.postgresql_subnet_id
  private_dns_zone_id             = module.networking.private_dns_zone_id
  max_connections                 = var.max_connections
  shared_buffers_mb               = var.shared_buffers_mb
  effective_cache_size_mb         = var.effective_cache_size_mb
  allow_azure_services            = var.allow_azure_services
  log_analytics_workspace_id      = module.monitoring.log_analytics_workspace_id
  key_vault_id                    = var.create_key_vault ? azurerm_key_vault.migration_kv[0].id : null

  tags = var.tags

  depends_on = [
    module.networking,
    module.monitoring
  ]
}

# Configure PostgreSQL Provider (for schema deployment)
provider "postgresql" {
  host            = module.postgresql.server_fqdn
  port            = 5432
  database        = module.postgresql.database_name
  username        = module.postgresql.admin_username
  password        = module.postgresql.admin_password
  sslmode         = "require"
  connect_timeout = 15
  superuser       = false
}

# Module: Database Schema
module "database_schema" {
  source = "./modules/database-schema"

  schema_name = var.schema_name

  depends_on = [
    module.postgresql
  ]
}
