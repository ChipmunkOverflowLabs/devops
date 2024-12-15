resource "azurerm_resource_group" "acrRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_container_registry" "registryId" {
  name                = "apphistcontainerreg"
  resource_group_name = azurerm_resource_group.acrRg.name
  location            = azurerm_resource_group.acrRg.location
  sku                 = var.registrySkuName
  admin_enabled       = true
}
