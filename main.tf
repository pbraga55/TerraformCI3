terraform {
  required_version = ">=1.3.0"
  required_providers {
    azurerm = {
      "source" = "hashicorp/azurerm"
      version  = "3.43.0"
    }
  }
  cloud {
    organization = "NonationITServices"
    workspaces {
      name = "TerraformCI3"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "random_string" "uniquestring" {
  length  = 20
  special = false
  upper   = false
}

resource "azurerm_resource_group" "rg" {
  name     = "TerraformLabRG"
  location = "eastus"
}

#resource "azurerm_storage_account" "storageaccount" {
#  name                     = "stg32729832jn23"
#  resource_group_name      = azurerm_resource_group.rg.name
#  location                 = azurerm_resource_group.rg.location
#  account_tier             = "Standard"
#  account_replication_type = "LRS"
#}

#module "finaltestmodule" {
 # source  = "app.terraform.io/NonationITServices/finaltestmodule/azurerm"
 # version = "1.0.0"
 # resource_group_name = azurerm_resource_group.rg.name
 # location            = azurerm_resource_group.rg.location
  #name                = "pb87sdf89mn83erj"
 # environment          = "DEV"
  # insert required variables here
#}


