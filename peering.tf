resource "azurerm_virtual_network_peering" "infra-peer" {
  name                      = "infra2db"
  resource_group_name       = azurerm_resource_group.spoke2-vnet-rg.name
  virtual_network_name      = azurerm_virtual_network.infra-vnet.name
  remote_virtual_network_id = azurerm_virtual_network.db-vnet.id
}

resource "azurerm_virtual_network_peering" "db-peer" {
  name                      = "db2infra"
  resource_group_name       = azurerm_resource_group.spoke2-vnet-rg.name
  virtual_network_name      = azurerm_virtual_network.db-vnet.name
  remote_virtual_network_id = azurerm_virtual_network.infra-vnet.id
}