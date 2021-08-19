terraform {
  backend "azurerm" {
    resource_group_name  = "rg_tfstate01"
    storage_account_name = "tfstatestrgacct1"
    container_name       = "prdtfstate01"
    key                  = "hub_spoke.tfstate"
    
  }
}