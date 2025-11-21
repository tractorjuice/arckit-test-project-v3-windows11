# Outputs for Azure Monitoring Module
# Project 001: Windows 11 Migration with InTune

# Log Analytics Workspace outputs
output "log_analytics_workspace_id" {
  description = "ID of the Log Analytics workspace"
  value       = azurerm_log_analytics_workspace.migration_logs.id
}

output "log_analytics_workspace_name" {
  description = "Name of the Log Analytics workspace"
  value       = azurerm_log_analytics_workspace.migration_logs.name
}

output "log_analytics_workspace_resource_id" {
  description = "Resource ID of the Log Analytics workspace (for traffic analytics)"
  value       = azurerm_log_analytics_workspace.migration_logs.id
}

output "log_analytics_workspace_primary_shared_key" {
  description = "Primary shared key for Log Analytics workspace (sensitive)"
  value       = azurerm_log_analytics_workspace.migration_logs.primary_shared_key
  sensitive   = true
}

output "log_analytics_workspace_workspace_id" {
  description = "Workspace ID (GUID) for Log Analytics"
  value       = azurerm_log_analytics_workspace.migration_logs.workspace_id
}

# Application Insights outputs
output "application_insights_id" {
  description = "ID of the Application Insights resource (null if not created)"
  value       = var.create_application_insights ? azurerm_application_insights.migration_app_insights[0].id : null
}

output "application_insights_instrumentation_key" {
  description = "Instrumentation key for Application Insights (sensitive, null if not created)"
  value       = var.create_application_insights ? azurerm_application_insights.migration_app_insights[0].instrumentation_key : null
  sensitive   = true
}

output "application_insights_connection_string" {
  description = "Connection string for Application Insights (sensitive, null if not created)"
  value       = var.create_application_insights ? azurerm_application_insights.migration_app_insights[0].connection_string : null
  sensitive   = true
}

# Action Group outputs
output "action_group_id" {
  description = "ID of the Azure Monitor action group"
  value       = azurerm_monitor_action_group.migration_alerts.id
}

output "action_group_name" {
  description = "Name of the Azure Monitor action group"
  value       = azurerm_monitor_action_group.migration_alerts.name
}

# Alert outputs
output "postgresql_cpu_alert_id" {
  description = "ID of the PostgreSQL CPU alert (null if not created)"
  value       = var.postgresql_server_id != null ? azurerm_monitor_metric_alert.postgresql_cpu_high[0].id : null
}

output "postgresql_memory_alert_id" {
  description = "ID of the PostgreSQL memory alert (null if not created)"
  value       = var.postgresql_server_id != null ? azurerm_monitor_metric_alert.postgresql_memory_high[0].id : null
}

output "postgresql_storage_alert_id" {
  description = "ID of the PostgreSQL storage alert (null if not created)"
  value       = var.postgresql_server_id != null ? azurerm_monitor_metric_alert.postgresql_storage_high[0].id : null
}

output "postgresql_connection_failed_alert_id" {
  description = "ID of the PostgreSQL connection failed alert (null if not created)"
  value       = var.postgresql_server_id != null ? azurerm_monitor_metric_alert.postgresql_connection_failed[0].id : null
}

output "postgresql_server_down_alert_id" {
  description = "ID of the PostgreSQL server down alert (null if not created)"
  value       = var.postgresql_server_id != null ? azurerm_monitor_metric_alert.postgresql_server_down[0].id : null
}

output "postgresql_replication_lag_alert_id" {
  description = "ID of the PostgreSQL replication lag alert (null if not created)"
  value       = var.postgresql_server_id != null && var.enable_ha_alerts ? azurerm_monitor_metric_alert.postgresql_replication_lag[0].id : null
}

# Saved Search outputs
output "failed_migrations_24h_search_id" {
  description = "ID of the failed migrations saved search"
  value       = azurerm_log_analytics_saved_search.failed_migrations_24h.id
}

output "avg_downtime_by_wave_search_id" {
  description = "ID of the average downtime by wave saved search"
  value       = azurerm_log_analytics_saved_search.avg_downtime_by_wave.id
}

output "app_compat_failures_search_id" {
  description = "ID of the application compatibility failures saved search"
  value       = azurerm_log_analytics_saved_search.app_compat_failures.id
}

# Workbook outputs
output "migration_dashboard_id" {
  description = "ID of the migration dashboard workbook (null if not created)"
  value       = var.create_workbook ? azurerm_application_insights_workbook.migration_dashboard[0].id : null
}

output "migration_dashboard_name" {
  description = "Name of the migration dashboard workbook (null if not created)"
  value       = var.create_workbook ? azurerm_application_insights_workbook.migration_dashboard[0].display_name : null
}

# Summary output
output "monitoring_summary" {
  description = "Summary of monitoring deployment"
  value = {
    log_analytics_workspace     = azurerm_log_analytics_workspace.migration_logs.name
    log_retention_days          = azurerm_log_analytics_workspace.migration_logs.retention_in_days
    action_group                = azurerm_monitor_action_group.migration_alerts.name
    email_receivers_count       = length(var.alert_email_receivers)
    webhook_receivers_count     = length(var.webhook_receivers)
    alerts_enabled              = var.postgresql_server_id != null ? 6 : 0
    ha_alerts_enabled           = var.enable_ha_alerts
    application_insights_enabled = var.create_application_insights
    workbook_created            = var.create_workbook
    saved_searches_count        = 3
    location                    = var.location
  }
}
