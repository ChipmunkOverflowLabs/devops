resource "azurerm_resource_group" "idRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_user_assigned_identity" "customIdentity" {
  name                = var.customIdentityName
  resource_group_name = azurerm_resource_group.idRg.name
  location            = azurerm_resource_group.idRg.location
}
