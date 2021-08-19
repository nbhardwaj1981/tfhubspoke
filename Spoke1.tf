locals {
    spoke1-location = "eastus"
    spoke1-resource-group = "spoke1-vnet-rg"
    prefix-spoke1 = "spoke1"
}

# Create Resource Group for Spoke1

resource "azurerm_resource_group" "spoke1-vnet-rg" {
    name = local.spoke1-resource-group
    location = local.spoke1-location
}

# Create Spoke1 Vnet

resource "azurerm_virtual_network" "spoke1-vnet" {
    name = "spoke1-vnet"
    location = azurerm_resource_group.spoke1-vnet-rg.location
    resource_group_name = azurerm_resource_group.spoke1-vnet-rg.name
    address_space = ["10.1.0.0/16"]

tags = {
    environment = local.prefix-spoke1
}
}

# Create Management Subnet for Spoke1

resource "azurerm_subnet" "spoke1-mgmt" {
  name                 = "mgmt"
  resource_group_name  = azurerm_resource_group.spoke1-vnet-rg.name
  virtual_network_name = azurerm_virtual_network.spoke1-vnet.name
  address_prefixes     = ["10.1.0.64/27"]
}

# Create Workload Subnet for Spoke1

resource "azurerm_subnet" "spoke1-workload" {
    name = "workload"
    resource_group_name = azurerm_resource_group.spoke1-vnet-rg.name
   # location = azurerm_resource_group.spoke1-vnet-rg.location
    virtual_network_name = azurerm_virtual_network.spoke1-vnet.name
    address_prefixes = ["10.1.1.0/24"]
}



