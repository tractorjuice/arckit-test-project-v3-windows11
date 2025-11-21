# Azure Networking Module for PostgreSQL Private Access
# Project 001: Windows 11 Migration with InTune
# Creates VNet, subnets, NSGs, and private DNS zone

terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80"
    }
  }
}

# Virtual Network
resource "azurerm_virtual_network" "migration_vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space

  tags = merge(
    var.tags,
    {
      "Purpose" = "Windows 11 Migration Database Network"
      "Project" = "001-windows-11-migration-intune"
    }
  )
}

# Subnet for PostgreSQL Flexible Server (requires delegation)
resource "azurerm_subnet" "postgresql_subnet" {
  name                 = var.postgresql_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.migration_vnet.name
  address_prefixes     = var.postgresql_subnet_address_prefixes

  # Delegate subnet to PostgreSQL Flexible Server
  delegation {
    name = "fs"
    service_delegation {
      name = "Microsoft.DBforPostgreSQL/flexibleServers"
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/join/action",
      ]
    }
  }

  # Service endpoints for additional security
  service_endpoints = [
    "Microsoft.Storage"
  ]
}

# Network Security Group for PostgreSQL subnet
resource "azurerm_network_security_group" "postgresql_nsg" {
  name                = "${var.postgresql_subnet_name}-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

# NSG rule: Allow PostgreSQL from private endpoints
resource "azurerm_network_security_rule" "allow_postgresql" {
  name                        = "AllowPostgreSQL"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "5432"
  source_address_prefixes     = var.allowed_source_address_prefixes
  destination_address_prefix  = "*"
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.postgresql_nsg.name
}

# NSG rule: Deny all other inbound
resource "azurerm_network_security_rule" "deny_all_inbound" {
  name                        = "DenyAllInbound"
  priority                    = 4096
  direction                   = "Inbound"
  access                      = "Deny"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.postgresql_nsg.name
}

# Associate NSG with PostgreSQL subnet
resource "azurerm_subnet_network_security_group_association" "postgresql_nsg_assoc" {
  subnet_id                 = azurerm_subnet.postgresql_subnet.id
  network_security_group_id = azurerm_network_security_group.postgresql_nsg.id
}

# Private DNS Zone for PostgreSQL
resource "azurerm_private_dns_zone" "postgresql_dns" {
  name                = "privatelink.postgres.database.azure.com"
  resource_group_name = var.resource_group_name

  tags = var.tags
}

# Link Private DNS Zone to VNet
resource "azurerm_private_dns_zone_virtual_network_link" "postgresql_dns_link" {
  name                  = "${var.vnet_name}-postgresql-dns-link"
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.postgresql_dns.name
  virtual_network_id    = azurerm_virtual_network.migration_vnet.id
  registration_enabled  = false

  tags = var.tags
}

# Optional: Subnet for application servers (if needed for ServiceNow integration)
resource "azurerm_subnet" "app_subnet" {
  count                = var.create_app_subnet ? 1 : 0
  name                 = var.app_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.migration_vnet.name
  address_prefixes     = var.app_subnet_address_prefixes

  service_endpoints = [
    "Microsoft.Sql",
    "Microsoft.Storage",
    "Microsoft.KeyVault"
  ]
}

# Network Security Group for application subnet
resource "azurerm_network_security_group" "app_nsg" {
  count               = var.create_app_subnet ? 1 : 0
  name                = "${var.app_subnet_name}-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

# NSG rule: Allow outbound to PostgreSQL
resource "azurerm_network_security_rule" "allow_postgresql_outbound" {
  count                       = var.create_app_subnet ? 1 : 0
  name                        = "AllowPostgreSQLOutbound"
  priority                    = 100
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "5432"
  source_address_prefix       = "*"
  destination_address_prefix  = azurerm_subnet.postgresql_subnet.address_prefixes[0]
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.app_nsg[0].name
}

# NSG rule: Allow HTTPS outbound (for ServiceNow)
resource "azurerm_network_security_rule" "allow_https_outbound" {
  count                       = var.create_app_subnet ? 1 : 0
  name                        = "AllowHTTPSOutbound"
  priority                    = 110
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "*"
  destination_address_prefix  = "Internet"
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.app_nsg[0].name
}

# Associate NSG with app subnet
resource "azurerm_subnet_network_security_group_association" "app_nsg_assoc" {
  count                     = var.create_app_subnet ? 1 : 0
  subnet_id                 = azurerm_subnet.app_subnet[0].id
  network_security_group_id = azurerm_network_security_group.app_nsg[0].id
}

# Network Watcher (for network diagnostics and monitoring)
resource "azurerm_network_watcher" "migration_network_watcher" {
  count               = var.create_network_watcher ? 1 : 0
  name                = "NetworkWatcher_${var.location}"
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

# Network Watcher Flow Logs (for NSG monitoring)
resource "azurerm_network_watcher_flow_log" "postgresql_nsg_flow_log" {
  count                     = var.enable_flow_logs && var.storage_account_id != null ? 1 : 0
  name                      = "${azurerm_network_security_group.postgresql_nsg.name}-flow-log"
  network_watcher_name      = var.create_network_watcher ? azurerm_network_watcher.migration_network_watcher[0].name : "NetworkWatcher_${var.location}"
  resource_group_name       = var.resource_group_name
  network_security_group_id = azurerm_network_security_group.postgresql_nsg.id
  storage_account_id        = var.storage_account_id
  enabled                   = true
  version                   = 2

  retention_policy {
    enabled = true
    days    = var.flow_log_retention_days
  }

  traffic_analytics {
    enabled               = var.enable_traffic_analytics
    workspace_id          = var.log_analytics_workspace_id
    workspace_region      = var.location
    workspace_resource_id = var.log_analytics_workspace_resource_id
    interval_in_minutes   = 10
  }

  tags = var.tags
}
