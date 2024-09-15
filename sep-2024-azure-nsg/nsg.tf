resource "azurerm_resource_group" "fwRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_network_security_group" "networkNsg" {
  name                = "app-network-nsg"
  location            = azurerm_resource_group.fwRg.location
  resource_group_name = azurerm_resource_group.fwRg.name

  security_rule {
    name                       = var.securityRuleName
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = var.sourceAddressPrefix
    destination_address_prefix = "*"
  }
}
