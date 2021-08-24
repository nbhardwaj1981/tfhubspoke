resource "azurerm_public_ip" "azfwpubip" {
  name                = "azfwpubip"
  location            = azurerm_resource_group.spoke2-vnet-rg.location
  resource_group_name = azurerm_resource_group.spoke2-vnet-rg.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_firewall" "azfwall" {
  name                = "azfwall"
  location            = azurerm_resource_group.spoke2-vnet-rg.location
  resource_group_name = azurerm_resource_group.spoke2-vnet-rg.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.hubsubnet[2].id
    public_ip_address_id = azurerm_public_ip.azfwpubip.id
  }
}