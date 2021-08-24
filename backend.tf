terraform {
  backend "azurerm" {
    resource_group_name  = "nbrg01"
    storage_account_name = "tfstatebackend12"
    container_name       = "hubspoketfstate12"
    key                  = "hub_spoke.tfstate12"
    
  }
}