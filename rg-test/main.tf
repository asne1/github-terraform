terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rgal"
    storage_account_name = "saal108gydidc3"
    container_name       = "sc-backend-als"
    key                  = "kv-rgtest-als"
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

resource "azurerm_resource_group" "rg_test" {
  name     = var.rg_test_name
  location = var.rg_test_location
}