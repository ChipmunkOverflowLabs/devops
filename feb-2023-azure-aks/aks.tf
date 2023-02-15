resource "azurerm_resource_group" "rgBlock" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_kubernetes_cluster" "aksCluster" {
  name                = var.clusterName
  location            = azurerm_resource_group.rgBlock.location
  resource_group_name = azurerm_resource_group.rgBlock.name
  dns_prefix          = var.dnsPrefix

  default_node_pool {
    name       = "defaultpool"
    node_count = 2
    vm_size    = "Standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }
}
