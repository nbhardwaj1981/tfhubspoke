terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "23712257-0682-4231-a22d-6b48be8209da"
  client_id       = "bd518773-9610-4870-aa6d-755d0725f1e3"
  client_secret   = var.client_secret
  tenant_id       = "b4066f45-27f1-486d-a284-3a71e3d644f0"
}
}