resource "azurerm_virtual_network" "pvnet" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.rg_location
  resource_group_name = var.rg_name
}

resource "azurerm_subnet" "psnet" {
  name                 = var.sn_name
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.pvnet.name
  address_prefixes     = var.address_prefix
}

resource "azurerm_public_ip" "ppip" {
  name                    = var.ip_name
  location                = var.rg_location
  resource_group_name     = var.rg_name
  allocation_method       = "Dynamic"
  idle_timeout_in_minutes = 30

  tags = {
    environment = "test"
  }
}