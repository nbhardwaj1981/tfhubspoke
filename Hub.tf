resource "azurerm_virtual_network" "hub-vnet" {
  name                = var.hubvnet
  resource_group_name = azurerm_resource_group.spoke2-vnet-rg.name
  location            = azurerm_resource_group.spoke2-vnet-rg.location
  address_space       = [var.hubvnet1]
  tags = local.common_tags
}

resource "azurerm_subnet" "hubsubnet" {
  count                = length(var.hubsubnet_ipmap)
  name                 = element(var.hubsubnetname, count.index)
  virtual_network_name = azurerm_virtual_network.hub-vnet.name
  resource_group_name  = azurerm_resource_group.spoke2-vnet-rg.name
  address_prefix      = element(var.hubsubnet, count.index)
}