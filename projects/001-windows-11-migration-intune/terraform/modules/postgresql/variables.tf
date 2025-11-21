# Variables for Azure PostgreSQL Flexible Server Module
# Project 001: Windows 11 Migration with InTune

# Required variables
variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "Azure region for resources (UK South for data sovereignty)"
  type        = string
  default     = "uksouth"
}

variable "server_name" {
  description = "Name of the PostgreSQL Flexible Server (must be globally unique)"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9-]{3,63}$", var.server_name))
    error_message = "Server name must be 3-63 characters, lowercase letters, numbers, and hyphens only."
  }
}

variable "database_name" {
  description = "Name of the PostgreSQL database for migration data"
  type        = string
  default     = "migration_db"
}

# Admin credentials
variable "admin_username" {
  description = "Administrator username for PostgreSQL server"
  type        = string
  default     = "psqladmin"
  validation {
    condition     = can(regex("^[a-zA-Z][a-zA-Z0-9_]{0,62}$", var.admin_username))
    error_message = "Admin username must start with a letter and contain only letters, numbers, and underscores (max 63 chars)."
  }
}

# PostgreSQL configuration
variable "postgresql_version" {
  description = "PostgreSQL version"
  type        = string
  default     = "15"
  validation {
    condition     = contains(["11", "12", "13", "14", "15"], var.postgresql_version)
    error_message = "PostgreSQL version must be 11, 12, 13, 14, or 15."
  }
}

variable "sku_name" {
  description = "SKU name for PostgreSQL Flexible Server (e.g., B_Standard_B2s, GP_Standard_D2s_v3)"
  type        = string
  default     = "GP_Standard_D2s_v3"
  validation {
    condition = can(regex("^(B_Standard_B[124]ms|B_Standard_B[12]s|GP_Standard_D[2468]s_v3|GP_Standard_D[2468]ds_v4|MO_Standard_E[2468]s_v3)$", var.sku_name))
    error_message = "SKU name must be a valid Azure PostgreSQL Flexible Server SKU."
  }
}

# Storage configuration
variable "storage_mb" {
  description = "Storage size in MB (32 GB minimum, 16 TB maximum)"
  type        = number
  default     = 32768  # 32 GB for production
  validation {
    condition     = var.storage_mb >= 32768 && var.storage_mb <= 16777216
    error_message = "Storage must be between 32768 MB (32 GB) and 16777216 MB (16 TB)."
  }
}

# Backup configuration
variable "backup_retention_days" {
  description = "Backup retention period in days (7-35 days)"
  type        = number
  default     = 35  # Maximum retention for production
  validation {
    condition     = var.backup_retention_days >= 7 && var.backup_retention_days <= 35
    error_message = "Backup retention must be between 7 and 35 days."
  }
}

variable "geo_redundant_backup_enabled" {
  description = "Enable geo-redundant backups (production only)"
  type        = bool
  default     = true
}

# High availability configuration
variable "enable_high_availability" {
  description = "Enable high availability with zone redundancy (production only)"
  type        = bool
  default     = false
}

variable "availability_zone" {
  description = "Primary availability zone (1, 2, or 3)"
  type        = string
  default     = "1"
  validation {
    condition     = contains(["1", "2", "3"], var.availability_zone)
    error_message = "Availability zone must be 1, 2, or 3."
  }
}

variable "standby_availability_zone" {
  description = "Standby availability zone for HA (must differ from primary)"
  type        = string
  default     = "2"
  validation {
    condition     = contains(["1", "2", "3"], var.standby_availability_zone)
    error_message = "Standby availability zone must be 1, 2, or 3."
  }
}

# Network configuration
variable "delegated_subnet_id" {
  description = "ID of the subnet delegated to Microsoft.DBforPostgreSQL/flexibleServers"
  type        = string
}

variable "private_dns_zone_id" {
  description = "ID of the private DNS zone for PostgreSQL (privatelink.postgres.database.azure.com)"
  type        = string
}

# Performance tuning
variable "max_connections" {
  description = "Maximum number of concurrent connections"
  type        = string
  default     = "100"
}

variable "shared_buffers_mb" {
  description = "Shared buffers size in MB (typically 25% of RAM)"
  type        = string
  default     = "2048MB"
}

variable "effective_cache_size_mb" {
  description = "Effective cache size in MB (typically 50-75% of RAM)"
  type        = string
  default     = "6144MB"
}

# Security configuration
variable "allow_azure_services" {
  description = "Allow Azure services to access the server (for ServiceNow integration)"
  type        = bool
  default     = false
}

# Monitoring configuration
variable "log_analytics_workspace_id" {
  description = "ID of the Log Analytics workspace for diagnostics"
  type        = string
  default     = null
}

# Key Vault for secrets
variable "key_vault_id" {
  description = "ID of the Azure Key Vault to store admin password"
  type        = string
  default     = null
}

# Tags
variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    Environment       = "Production"
    Project           = "Windows 11 Migration"
    ManagedBy         = "Terraform"
    CostCenter        = "IT-Infrastructure"
    DataClassification = "CONFIDENTIAL"
    Compliance        = "UK-GDPR"
  }
}
