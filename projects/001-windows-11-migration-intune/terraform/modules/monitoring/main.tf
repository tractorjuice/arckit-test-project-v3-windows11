# Azure Monitoring Module for PostgreSQL Database
# Project 001: Windows 11 Migration with InTune
# Creates Log Analytics workspace, alerts, and dashboards

terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80"
    }
  }
}

# Log Analytics Workspace
resource "azurerm_log_analytics_workspace" "migration_logs" {
  name                = var.log_analytics_workspace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.log_analytics_sku
  retention_in_days   = var.log_retention_days

  tags = merge(
    var.tags,
    {
      "Purpose" = "Windows 11 Migration Database Monitoring"
      "Project" = "001-windows-11-migration-intune"
    }
  )
}

# Application Insights (for custom application monitoring)
resource "azurerm_application_insights" "migration_app_insights" {
  count               = var.create_application_insights ? 1 : 0
  name                = var.application_insights_name
  location            = var.location
  resource_group_name = var.resource_group_name
  workspace_id        = azurerm_log_analytics_workspace.migration_logs.id
  application_type    = "other"

  tags = var.tags
}

# Action Group for alerts
resource "azurerm_monitor_action_group" "migration_alerts" {
  name                = var.action_group_name
  resource_group_name = var.resource_group_name
  short_name          = var.action_group_short_name

  # Email notifications
  dynamic "email_receiver" {
    for_each = var.alert_email_receivers
    content {
      name          = email_receiver.value.name
      email_address = email_receiver.value.email
    }
  }

  # Webhook notifications (for Teams, Slack, etc.)
  dynamic "webhook_receiver" {
    for_each = var.webhook_receivers
    content {
      name        = webhook_receiver.value.name
      service_uri = webhook_receiver.value.uri
    }
  }

  tags = var.tags
}

# Alert: PostgreSQL CPU > 80%
resource "azurerm_monitor_metric_alert" "postgresql_cpu_high" {
  count               = var.postgresql_server_id != null ? 1 : 0
  name                = "${var.alert_prefix}-postgresql-cpu-high"
  resource_group_name = var.resource_group_name
  scopes              = [var.postgresql_server_id]
  description         = "Alert when PostgreSQL CPU usage exceeds 80%"
  severity            = 2
  frequency           = "PT5M"
  window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.DBforPostgreSQL/flexibleServers"
    metric_name      = "cpu_percent"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80
  }

  action {
    action_group_id = azurerm_monitor_action_group.migration_alerts.id
  }

  tags = var.tags
}

# Alert: PostgreSQL Memory > 85%
resource "azurerm_monitor_metric_alert" "postgresql_memory_high" {
  count               = var.postgresql_server_id != null ? 1 : 0
  name                = "${var.alert_prefix}-postgresql-memory-high"
  resource_group_name = var.resource_group_name
  scopes              = [var.postgresql_server_id]
  description         = "Alert when PostgreSQL memory usage exceeds 85%"
  severity            = 2
  frequency           = "PT5M"
  window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.DBforPostgreSQL/flexibleServers"
    metric_name      = "memory_percent"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 85
  }

  action {
    action_group_id = azurerm_monitor_action_group.migration_alerts.id
  }

  tags = var.tags
}

# Alert: PostgreSQL Storage > 85%
resource "azurerm_monitor_metric_alert" "postgresql_storage_high" {
  count               = var.postgresql_server_id != null ? 1 : 0
  name                = "${var.alert_prefix}-postgresql-storage-high"
  resource_group_name = var.resource_group_name
  scopes              = [var.postgresql_server_id]
  description         = "Alert when PostgreSQL storage usage exceeds 85%"
  severity            = 1
  frequency           = "PT5M"
  window_size         = "PT30M"

  criteria {
    metric_namespace = "Microsoft.DBforPostgreSQL/flexibleServers"
    metric_name      = "storage_percent"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 85
  }

  action {
    action_group_id = azurerm_monitor_action_group.migration_alerts.id
  }

  tags = var.tags
}

# Alert: PostgreSQL Connection Failures
resource "azurerm_monitor_metric_alert" "postgresql_connection_failed" {
  count               = var.postgresql_server_id != null ? 1 : 0
  name                = "${var.alert_prefix}-postgresql-connection-failed"
  resource_group_name = var.resource_group_name
  scopes              = [var.postgresql_server_id]
  description         = "Alert when PostgreSQL connection failures exceed threshold"
  severity            = 2
  frequency           = "PT5M"
  window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.DBforPostgreSQL/flexibleServers"
    metric_name      = "connections_failed"
    aggregation      = "Total"
    operator         = "GreaterThan"
    threshold        = 10
  }

  action {
    action_group_id = azurerm_monitor_action_group.migration_alerts.id
  }

  tags = var.tags
}

# Alert: PostgreSQL Server Unavailable
resource "azurerm_monitor_metric_alert" "postgresql_server_down" {
  count               = var.postgresql_server_id != null ? 1 : 0
  name                = "${var.alert_prefix}-postgresql-server-down"
  resource_group_name = var.resource_group_name
  scopes              = [var.postgresql_server_id]
  description         = "CRITICAL: PostgreSQL server is unavailable"
  severity            = 0
  frequency           = "PT1M"
  window_size         = "PT5M"

  criteria {
    metric_namespace = "Microsoft.DBforPostgreSQL/flexibleServers"
    metric_name      = "is_db_alive"
    aggregation      = "Average"
    operator         = "LessThan"
    threshold        = 1
  }

  action {
    action_group_id = azurerm_monitor_action_group.migration_alerts.id
  }

  tags = var.tags
}

# Alert: PostgreSQL Replication Lag (High Availability mode)
resource "azurerm_monitor_metric_alert" "postgresql_replication_lag" {
  count               = var.postgresql_server_id != null && var.enable_ha_alerts ? 1 : 0
  name                = "${var.alert_prefix}-postgresql-replication-lag"
  resource_group_name = var.resource_group_name
  scopes              = [var.postgresql_server_id]
  description         = "Alert when PostgreSQL replication lag exceeds 60 seconds"
  severity            = 2
  frequency           = "PT5M"
  window_size         = "PT15M"

  criteria {
    metric_namespace = "Microsoft.DBforPostgreSQL/flexibleServers"
    metric_name      = "physical_replication_delay_in_seconds"
    aggregation      = "Maximum"
    operator         = "GreaterThan"
    threshold        = 60
  }

  action {
    action_group_id = azurerm_monitor_action_group.migration_alerts.id
  }

  tags = var.tags
}

# Log Analytics Saved Search: Failed migrations in last 24h
resource "azurerm_log_analytics_saved_search" "failed_migrations_24h" {
  name                       = "FailedMigrations24h"
  log_analytics_workspace_id = azurerm_log_analytics_workspace.migration_logs.id
  category                   = "Migration Monitoring"
  display_name               = "Failed Migrations (Last 24h)"
  query                      = <<-QUERY
    // Failed migrations in the last 24 hours
    // Query migration_event table via application logs
    AppTraces
    | where TimeGenerated > ago(24h)
    | where Properties.migration_status == "Failed"
    | summarize FailedCount = count() by bin(TimeGenerated, 1h), tostring(Properties.event_type)
    | order by TimeGenerated desc
  QUERY
}

# Log Analytics Saved Search: Average migration downtime by wave
resource "azurerm_log_analytics_saved_search" "avg_downtime_by_wave" {
  name                       = "AvgDowntimeByWave"
  log_analytics_workspace_id = azurerm_log_analytics_workspace.migration_logs.id
  category                   = "Migration Monitoring"
  display_name               = "Average Downtime by Migration Wave"
  query                      = <<-QUERY
    // Average migration downtime by wave
    AppTraces
    | where Properties has "downtime_minutes"
    | extend DowntimeMinutes = toint(Properties.downtime_minutes)
    | extend WaveId = tostring(Properties.migration_wave_id)
    | summarize AvgDowntime = avg(DowntimeMinutes), MaxDowntime = max(DowntimeMinutes) by WaveId
    | order by AvgDowntime desc
  QUERY
}

# Log Analytics Saved Search: Application compatibility failures
resource "azurerm_log_analytics_saved_search" "app_compat_failures" {
  name                       = "AppCompatibilityFailures"
  log_analytics_workspace_id = azurerm_log_analytics_workspace.migration_logs.id
  category                   = "Application Compatibility"
  display_name               = "Application Compatibility Test Failures"
  query                      = <<-QUERY
    // Applications failing compatibility tests
    AppTraces
    | where Properties.test_result == "Fail" or Properties.test_result == "Blocked"
    | extend AppName = tostring(Properties.application_name)
    | extend TestResult = tostring(Properties.test_result)
    | summarize FailureCount = count() by AppName, TestResult
    | order by FailureCount desc
  QUERY
}

# Workbook: Migration Dashboard (Azure Workbook JSON)
resource "azurerm_application_insights_workbook" "migration_dashboard" {
  count               = var.create_workbook ? 1 : 0
  name                = var.workbook_name
  resource_group_name = var.resource_group_name
  location            = var.location
  display_name        = "Windows 11 Migration Dashboard"
  data_json = jsonencode({
    version = "Notebook/1.0"
    items = [
      {
        type = 1
        content = {
          json = "# Windows 11 Migration Dashboard\n\n**Project 001**: Windows 11 Migration with InTune\n\n**Data Model**: 6 core entities for migration tracking"
        }
      },
      {
        type = 3
        content = {
          version = "KqlItem/1.0"
          query   = "AzureMetrics | where ResourceProvider == 'MICROSOFT.DBFORPOSTGRESQL' | where MetricName == 'cpu_percent' | summarize avg(Average) by bin(TimeGenerated, 5m)"
          size    = 0
          title   = "PostgreSQL CPU Usage"
        }
      },
      {
        type = 3
        content = {
          version = "KqlItem/1.0"
          query   = "AzureMetrics | where ResourceProvider == 'MICROSOFT.DBFORPOSTGRESQL' | where MetricName == 'memory_percent' | summarize avg(Average) by bin(TimeGenerated, 5m)"
          size    = 0
          title   = "PostgreSQL Memory Usage"
        }
      }
    ]
  })

  tags = var.tags
}
