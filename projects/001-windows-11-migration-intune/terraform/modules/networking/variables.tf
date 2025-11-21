# Variables for Azure Networking Module
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

# VNet configuration
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "migration-vnet"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
  validation {
    condition     = length(var.vnet_address_space) > 0
    error_message = "VNet address space must contain at least one CIDR block."
  }
}

# PostgreSQL subnet configuration
variable "postgresql_subnet_name" {
  description = "Name of the PostgreSQL subnet"
  type        = string
  default     = "postgresql-subnet"
}

variable "postgresql_subnet_address_prefixes" {
  description = "Address prefixes for the PostgreSQL subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
  validation {
    condition     = length(var.postgresql_subnet_address_prefixes) > 0
    error_message = "PostgreSQL subnet must have at least one address prefix."
  }
}

# Application subnet configuration (optional)
variable "create_app_subnet" {
  description = "Create application subnet for ServiceNow integration"
  type        = bool
  default     = true
}

variable "app_subnet_name" {
  description = "Name of the application subnet"
  type        = string
  default     = "app-subnet"
}

variable "app_subnet_address_prefixes" {
  description = "Address prefixes for the application subnet"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

# Network security
variable "allowed_source_address_prefixes" {
  description = "List of source address prefixes allowed to connect to PostgreSQL"
  type        = list(string)
  default     = ["10.0.0.0/16"]
  validation {
    condition     = length(var.allowed_source_address_prefixes) > 0
    error_message = "At least one source address prefix must be specified."
  }
}

# Network Watcher
variable "create_network_watcher" {
  description = "Create Network Watcher for diagnostics"
  type        = bool
  default     = false  # Often already exists at subscription level
}

# Flow logs
variable "enable_flow_logs" {
  description = "Enable NSG flow logs"
  type        = bool
  default     = false
}

variable "flow_log_retention_days" {
  description = "Retention period for flow logs in days"
  type        = number
  default     = 30
  validation {
    condition     = var.flow_log_retention_days >= 0 && var.flow_log_retention_days <= 365
    error_message = "Flow log retention must be between 0 and 365 days."
  }
}

variable "storage_account_id" {
  description = "Storage account ID for flow logs"
  type        = string
  default     = null
}

# Traffic Analytics
variable "enable_traffic_analytics" {
  description = "Enable traffic analytics for NSG flow logs"
  type        = bool
  default     = false
}

variable "log_analytics_workspace_id" {
  description = "Log Analytics workspace ID for traffic analytics"
  type        = string
  default     = null
}

variable "log_analytics_workspace_resource_id" {
  description = "Log Analytics workspace resource ID for traffic analytics"
  type        = string
  default     = null
}

# Tags
variable "tags" {
  description = "Tags to apply to all networking resources"
  type        = map(string)
  default = {
    Environment = "Production"
    Project     = "Windows 11 Migration"
    ManagedBy   = "Terraform"
    Component   = "Networking"
  }
}
