##*********** Infra to Hub vnet peering *********##

resource "azurerm_virtual_network_peering" "infra2hub-peer" {
  name                      = "infra2hub"
  resource_group_name       = azurerm_resource_group.spoke2-vnet-rg.name
  virtual_network_name      = azurerm_virtual_network.infra-vnet.name
  remote_virtual_network_id = azurerm_virtual_network.hub-vnet.id
}

resource "azurerm_virtual_network_peering" "hub2infra-peer" {
  name                      = "hub2infra"
  resource_group_name       = azurerm_resource_group.spoke2-vnet-rg.name
  virtual_network_name      = azurerm_virtual_network.hub-vnet.name
  remote_virtual_network_id = azurerm_virtual_network.infra-vnet.id
}

##*********** DB to Hub vnet Peering **********##
resource "azurerm_virtual_network_peering" "db2hub-peer" {
  name                      = "db2hub"
  resource_group_name       = azurerm_resource_group.spoke2-vnet-rg.name
  virtual_network_name      = azurerm_virtual_network.db-vnet.name
  remote_virtual_network_id = azurerm_virtual_network.hub-vnet.id
}

resource "azurerm_virtual_network_peering" "hub2db-peer" {
  name                      = "hub2db"
  resource_group_name       = azurerm_resource_group.spoke2-vnet-rg.name
  virtual_network_name      = azurerm_virtual_network.hub-vnet.name
  remote_virtual_network_id = azurerm_virtual_network.db-vnet.id
}