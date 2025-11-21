# Root Variables for Windows 11 Migration Database Infrastructure
# Project 001: Windows 11 Migration with InTune

# General variables
variable "environment" {
  description = "Environment name (dev, test, prod)"
  type        = string
  default     = "prod"
  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Environment must be dev, test, or prod."
  }
}

variable "location" {
  description = "Azure region for resources (UK South for data sovereignty)"
  type        = string
  default     = "uksouth"
}

variable "create_resource_group" {
  description = "Create a new resource group (false to use existing)"
  type        = bool
  default     = true
}

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "rg-migration-prod-uks"
}

# Key Vault variables
variable "create_key_vault" {
  description = "Create Azure Key Vault for secrets management"
  type        = bool
  default     = true
}

variable "key_vault_name" {
  description = "Name of the Azure Key Vault (must be globally unique)"
  type        = string
  default     = "kv-migration-prod"
}

# Networking variables
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-migration-prod-uks"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.100.0.0/16"]
}

variable "postgresql_subnet_name" {
  description = "Name of the PostgreSQL subnet"
  type        = string
  default     = "snet-postgresql"
}

variable "postgresql_subnet_address_prefixes" {
  description = "Address prefixes for the PostgreSQL subnet"
  type        = list(string)
  default     = ["10.100.1.0/24"]
}

variable "create_app_subnet" {
  description = "Create application subnet for ServiceNow integration"
  type        = bool
  default     = true
}

variable "app_subnet_name" {
  description = "Name of the application subnet"
  type        = string
  default     = "snet-app"
}

variable "app_subnet_address_prefixes" {
  description = "Address prefixes for the application subnet"
  type        = list(string)
  default     = ["10.100.2.0/24"]
}

variable "allowed_source_address_prefixes" {
  description = "List of source address prefixes allowed to connect to PostgreSQL"
  type        = list(string)
  default     = ["10.100.0.0/16"]
}

# Flow logs variables
variable "enable_flow_logs" {
  description = "Enable NSG flow logs"
  type        = bool
  default     = false
}

variable "storage_account_name" {
  description = "Storage account name for flow logs (must be globally unique)"
  type        = string
  default     = "stmigrationflowlogs"
}

variable "enable_traffic_analytics" {
  description = "Enable traffic analytics for NSG flow logs"
  type        = bool
  default     = false
}

# Monitoring variables
variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace"
  type        = string
  default     = "log-migration-prod-uks"
}

variable "log_analytics_sku" {
  description = "SKU for Log Analytics workspace"
  type        = string
  default     = "PerGB2018"
}

variable "log_retention_days" {
  description = "Log retention period in days"
  type        = number
  default     = 90
}

variable "create_application_insights" {
  description = "Create Application Insights for custom application monitoring"
  type        = bool
  default     = false
}

variable "application_insights_name" {
  description = "Name of the Application Insights resource"
  type        = string
  default     = "appi-migration-prod-uks"
}

variable "action_group_name" {
  description = "Name of the Azure Monitor action group"
  type        = string
  default     = "ag-migration-alerts"
}

variable "action_group_short_name" {
  description = "Short name for the action group (max 12 characters)"
  type        = string
  default     = "mig-alerts"
}

variable "alert_email_receivers" {
  description = "List of email receivers for alerts"
  type = list(object({
    name  = string
    email = string
  }))
  default = [
    # {
    #   name  = "IT Operations"
    #   email = "it-ops@example.com"
    # }
  ]
}

variable "webhook_receivers" {
  description = "List of webhook receivers (Teams, Slack, etc.)"
  type = list(object({
    name = string
    uri  = string
  }))
  default = []
}

variable "alert_prefix" {
  description = "Prefix for alert names"
  type        = string
  default     = "migration"
}

variable "create_workbook" {
  description = "Create Azure Workbook for migration dashboard"
  type        = bool
  default     = true
}

# PostgreSQL variables
variable "postgresql_server_name" {
  description = "Name of the PostgreSQL Flexible Server (must be globally unique)"
  type        = string
  default     = "psql-migration-prod-uks"
}

variable "postgresql_database_name" {
  description = "Name of the PostgreSQL database"
  type        = string
  default     = "migration_db"
}

variable "postgresql_admin_username" {
  description = "Administrator username for PostgreSQL server"
  type        = string
  default     = "psqladmin"
}

variable "postgresql_version" {
  description = "PostgreSQL version"
  type        = string
  default     = "15"
}

variable "postgresql_sku_name" {
  description = "SKU name for PostgreSQL Flexible Server"
  type        = string
  default     = "GP_Standard_D2s_v3"
}

variable "postgresql_storage_mb" {
  description = "Storage size in MB"
  type        = number
  default     = 32768  # 32 GB
}

variable "postgresql_backup_retention_days" {
  description = "Backup retention period in days"
  type        = number
  default     = 35
}

variable "geo_redundant_backup_enabled" {
  description = "Enable geo-redundant backups"
  type        = bool
  default     = true
}

variable "enable_high_availability" {
  description = "Enable high availability with zone redundancy"
  type        = bool
  default     = false
}

variable "availability_zone" {
  description = "Primary availability zone"
  type        = string
  default     = "1"
}

variable "standby_availability_zone" {
  description = "Standby availability zone for HA"
  type        = string
  default     = "2"
}

variable "max_connections" {
  description = "Maximum number of concurrent connections"
  type        = string
  default     = "100"
}

variable "shared_buffers_mb" {
  description = "Shared buffers size in MB"
  type        = string
  default     = "2048MB"
}

variable "effective_cache_size_mb" {
  description = "Effective cache size in MB"
  type        = string
  default     = "6144MB"
}

variable "allow_azure_services" {
  description = "Allow Azure services to access the server"
  type        = bool
  default     = false
}

# Database schema variables
variable "schema_name" {
  description = "PostgreSQL schema name"
  type        = string
  default     = "public"
}

# Tags
variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Project            = "Windows 11 Migration"
    ProjectID          = "001"
    Environment        = "Production"
    ManagedBy          = "Terraform"
    CostCenter         = "IT-Infrastructure"
    DataClassification = "CONFIDENTIAL"
    Compliance         = "UK-GDPR"
    DataSovereignty    = "UK"
    Owner              = "IT Operations"
  }
}
