resource "azurerm_virtual_network" "db-vnet" {
  name                = var.dbvnet
  resource_group_name = azurerm_resource_group.spoke2-vnet-rg.name
  location            = azurerm_resource_group.spoke2-vnet-rg.location
  address_space       = [var.dbvnet1]
  tags = local.common_tags
}

resource "azurerm_subnet" "dbsubnet" {
  count                = length(var.dbsubnet_ipmap)
  name                 = element(var.dbsubnetname, count.index)
  virtual_network_name = azurerm_virtual_network.db-vnet.name
  resource_group_name  = azurerm_resource_group.spoke2-vnet-rg.name
  address_prefix      = element(var.dbsubnet, count.index)
}