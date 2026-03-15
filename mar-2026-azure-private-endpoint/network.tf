resource "azurerm_resource_group" "networkRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_virtual_network" "appVnet" {
  name                = var.virtualNetworkName
  resource_group_name = azurerm_resource_group.networkRg.name
  location            = azurerm_resource_group.networkRg.location
  address_space       = ["10.10.0.0/16"]
}

resource "azurerm_subnet" "endpointSubnet" {
  name                 = var.subnetNameVal
  resource_group_name  = azurerm_resource_group.networkRg.name
  virtual_network_name = azurerm_virtual_network.appVnet.name
  address_prefixes     = ["10.10.1.0/24"]
}
