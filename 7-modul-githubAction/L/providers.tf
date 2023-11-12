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
    key                  = "web-terraform-als"
  }
}

provider "azurerm" {
  features {}
}