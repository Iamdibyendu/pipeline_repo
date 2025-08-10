terraform {
       backend "azurerm" {
    resource_group_name  = "Dib_backend"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "dibstorage"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "dibcontainer"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "newpdib.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "661ea49e-05d4-429e-8204-de0d46c539b5"
}

resource "azurerm_resource_group" "dib01" {
  name = "Dibyendrg"
  location = "central India"
}

