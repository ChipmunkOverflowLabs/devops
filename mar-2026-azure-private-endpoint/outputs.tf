output "virtualNetworkId" {
  value = azurerm_virtual_network.appVnet.id
}

output "subnetId" {
  value = azurerm_subnet.endpointSubnet.id
}
