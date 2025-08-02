terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b8d7cafb-7348-48f5-881c-b95abb20640b"
}

resource "azurerm_resource_group" "dib01" {
  name = "Dibyendrg"
  location = "central India"
}
