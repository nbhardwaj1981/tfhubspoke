locals {
    spoke2-location = "eastus"
    spoke2-resource-group = "spoke2-vnet-rg"
    prefix-spoke2 = "spoke2"
   common_tags = {
    "Environment" = var.environment
    "Created By"  = var.createdby
    "Owner"       = var.owner
  }
}
# Create Resource Group for Spoke1

resource "azurerm_resource_group" "spoke2-vnet-rg" {
    name = local.spoke2-resource-group
    location = local.spoke2-location
}

resource "azurerm_virtual_network" "infra-vnet" {
  name                = var.infravnet
  resource_group_name = azurerm_resource_group.spoke2-vnet-rg.name
  location            = azurerm_resource_group.spoke2-vnet-rg.location
  address_space       = [var.vnet]
  tags = local.common_tags
}
### Creating Subnet in Vnet ###########
resource "azurerm_subnet" "subnet" {
  count                = length(var.subnet_ipmap)
  name                 = element(var.subnetname, count.index)
  virtual_network_name = azurerm_virtual_network.infra-vnet.name
  resource_group_name  = azurerm_resource_group.spoke2-vnet-rg.name
  address_prefix      = element(var.subnet, count.index)
}