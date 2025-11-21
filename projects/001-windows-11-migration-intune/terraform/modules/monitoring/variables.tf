# Variables for Azure Monitoring Module
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

# Log Analytics Workspace configuration
variable "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace"
  type        = string
  default     = "migration-logs"
}

variable "log_analytics_sku" {
  description = "SKU for Log Analytics workspace"
  type        = string
  default     = "PerGB2018"
  validation {
    condition     = contains(["Free", "PerNode", "Premium", "Standard", "Standalone", "Unlimited", "CapacityReservation", "PerGB2018"], var.log_analytics_sku)
    error_message = "Invalid Log Analytics SKU."
  }
}

variable "log_retention_days" {
  description = "Log retention period in days (30-730 for paid SKU, 7 for Free)"
  type        = number
  default     = 90
  validation {
    condition     = var.log_retention_days >= 7 && var.log_retention_days <= 730
    error_message = "Log retention must be between 7 and 730 days."
  }
}

# Application Insights configuration
variable "create_application_insights" {
  description = "Create Application Insights for custom application monitoring"
  type        = bool
  default     = false
}

variable "application_insights_name" {
  description = "Name of the Application Insights resource"
  type        = string
  default     = "migration-app-insights"
}

# Action Group configuration
variable "action_group_name" {
  description = "Name of the Azure Monitor action group"
  type        = string
  default     = "migration-alerts-action-group"
}

variable "action_group_short_name" {
  description = "Short name for the action group (max 12 characters)"
  type        = string
  default     = "mig-alerts"
  validation {
    condition     = length(var.action_group_short_name) <= 12
    error_message = "Action group short name must be 12 characters or less."
  }
}

variable "alert_email_receivers" {
  description = "List of email receivers for alerts"
  type = list(object({
    name  = string
    email = string
  }))
  default = []
}

variable "webhook_receivers" {
  description = "List of webhook receivers (Teams, Slack, etc.)"
  type = list(object({
    name = string
    uri  = string
  }))
  default = []
}

# Alert configuration
variable "alert_prefix" {
  description = "Prefix for alert names"
  type        = string
  default     = "migration"
}

variable "postgresql_server_id" {
  description = "Resource ID of the PostgreSQL server to monitor"
  type        = string
  default     = null
}

variable "enable_ha_alerts" {
  description = "Enable high availability specific alerts (replication lag)"
  type        = bool
  default     = false
}

# Workbook configuration
variable "create_workbook" {
  description = "Create Azure Workbook for migration dashboard"
  type        = bool
  default     = true
}

variable "workbook_name" {
  description = "Name of the Azure Workbook"
  type        = string
  default     = "migration-dashboard"
}

# Tags
variable "tags" {
  description = "Tags to apply to all monitoring resources"
  type        = map(string)
  default = {
    Environment = "Production"
    Project     = "Windows 11 Migration"
    ManagedBy   = "Terraform"
    Component   = "Monitoring"
  }
}
