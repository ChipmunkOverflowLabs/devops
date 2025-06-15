resource "azurerm_resource_group" "netRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_virtual_network" "vnetSrc" {
  name                = var.sourceVnetName
  resource_group_name = azurerm_resource_group.netRg.name
  location            = azurerm_resource_group.netRg.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_virtual_network" "vnetDst" {
  name                = var.destVnetName
  resource_group_name = azurerm_resource_group.netRg.name
  location            = azurerm_resource_group.netRg.location
  address_space       = ["10.1.0.0/16"]
}

resource "azurerm_virtual_network_peering" "peeringSrcToDst" {
  name                         = var.peeringNameVal
  resource_group_name          = azurerm_resource_group.netRg.name
  virtual_network_name         = azurerm_virtual_network.vnetSrc.name
  remote_virtual_network_id    = azurerm_virtual_network.vnetDst.id
  allow_virtual_network_access = true
}
