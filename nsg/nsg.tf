resource "azurerm_resource_group" "rg"{
  name = "modules-rg"
  location = "southindia"
}

resource "azurerm_network_security_group" "nsg" {
  name                = "${var.vnet_name}-web-nsg"
  resource_group_name = resource.azurerm_resource_group.rg.name
  location            = "southindia"


  security_rule {
    name                       = "Allow_SSH"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = 22
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}