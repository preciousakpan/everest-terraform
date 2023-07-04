terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.63.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features{}
}

resource "azurerm_resource_group" "prg" {
  name     = "example-resources"
  location = "Uk South"
}

module "vm" {
    source          = "./virtual-vm"
    vnet_name       = "pvnet"
    address_space   = ["10.0.0.0/8"]
    rg_location     = "Uk South"
    rg_name         = "prg"
    sn_name         = "psnet"
    address_prefix  = ["10.2.0.0/16"]
    ip_name         = "pip"
}