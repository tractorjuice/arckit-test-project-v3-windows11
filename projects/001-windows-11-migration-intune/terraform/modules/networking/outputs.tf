# Outputs for Azure Networking Module
# Project 001: Windows 11 Migration with InTune

# VNet outputs
output "vnet_id" {
  description = "ID of the virtual network"
  value       = azurerm_virtual_network.migration_vnet.id
}

output "vnet_name" {
  description = "Name of the virtual network"
  value       = azurerm_virtual_network.migration_vnet.name
}

output "vnet_address_space" {
  description = "Address space of the virtual network"
  value       = azurerm_virtual_network.migration_vnet.address_space
}

# PostgreSQL subnet outputs
output "postgresql_subnet_id" {
  description = "ID of the PostgreSQL subnet (delegated to Microsoft.DBforPostgreSQL/flexibleServers)"
  value       = azurerm_subnet.postgresql_subnet.id
}

output "postgresql_subnet_name" {
  description = "Name of the PostgreSQL subnet"
  value       = azurerm_subnet.postgresql_subnet.name
}

output "postgresql_subnet_address_prefixes" {
  description = "Address prefixes of the PostgreSQL subnet"
  value       = azurerm_subnet.postgresql_subnet.address_prefixes
}

# Application subnet outputs
output "app_subnet_id" {
  description = "ID of the application subnet (null if not created)"
  value       = var.create_app_subnet ? azurerm_subnet.app_subnet[0].id : null
}

output "app_subnet_name" {
  description = "Name of the application subnet (null if not created)"
  value       = var.create_app_subnet ? azurerm_subnet.app_subnet[0].name : null
}

output "app_subnet_address_prefixes" {
  description = "Address prefixes of the application subnet (null if not created)"
  value       = var.create_app_subnet ? azurerm_subnet.app_subnet[0].address_prefixes : null
}

# NSG outputs
output "postgresql_nsg_id" {
  description = "ID of the PostgreSQL Network Security Group"
  value       = azurerm_network_security_group.postgresql_nsg.id
}

output "postgresql_nsg_name" {
  description = "Name of the PostgreSQL Network Security Group"
  value       = azurerm_network_security_group.postgresql_nsg.name
}

output "app_nsg_id" {
  description = "ID of the application Network Security Group (null if not created)"
  value       = var.create_app_subnet ? azurerm_network_security_group.app_nsg[0].id : null
}

output "app_nsg_name" {
  description = "Name of the application Network Security Group (null if not created)"
  value       = var.create_app_subnet ? azurerm_network_security_group.app_nsg[0].name : null
}

# Private DNS Zone outputs
output "private_dns_zone_id" {
  description = "ID of the PostgreSQL private DNS zone"
  value       = azurerm_private_dns_zone.postgresql_dns.id
}

output "private_dns_zone_name" {
  description = "Name of the PostgreSQL private DNS zone"
  value       = azurerm_private_dns_zone.postgresql_dns.name
}

# Network Watcher outputs
output "network_watcher_id" {
  description = "ID of the Network Watcher (null if not created)"
  value       = var.create_network_watcher ? azurerm_network_watcher.migration_network_watcher[0].id : null
}

output "network_watcher_name" {
  description = "Name of the Network Watcher (null if not created)"
  value       = var.create_network_watcher ? azurerm_network_watcher.migration_network_watcher[0].name : null
}

# Flow logs outputs
output "postgresql_nsg_flow_log_id" {
  description = "ID of the PostgreSQL NSG flow log (null if not enabled)"
  value       = var.enable_flow_logs && var.storage_account_id != null ? azurerm_network_watcher_flow_log.postgresql_nsg_flow_log[0].id : null
}

# Summary output
output "networking_summary" {
  description = "Summary of networking deployment"
  value = {
    vnet_name                        = azurerm_virtual_network.migration_vnet.name
    vnet_address_space               = azurerm_virtual_network.migration_vnet.address_space
    postgresql_subnet_name           = azurerm_subnet.postgresql_subnet.name
    postgresql_subnet_address_prefix = azurerm_subnet.postgresql_subnet.address_prefixes[0]
    app_subnet_created               = var.create_app_subnet
    private_dns_zone                 = azurerm_private_dns_zone.postgresql_dns.name
    network_watcher_enabled          = var.create_network_watcher
    flow_logs_enabled                = var.enable_flow_logs
    traffic_analytics_enabled        = var.enable_traffic_analytics
    location                         = var.location
  }
}
