resource "azurerm_resource_group" "cdnRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_cdn_profile" "cdnProfile" {
  name                = var.cdnProfileName
  resource_group_name = azurerm_resource_group.cdnRg.name
  location            = azurerm_resource_group.cdnRg.location
  sku                 = "Standard_Akamai"
}

resource "azurerm_cdn_endpoint" "cdnEndpoint" {
  name                = "app-cdn-endpoint"
  profile_name        = azurerm_cdn_profile.cdnProfile.name
  resource_group_name = azurerm_resource_group.cdnRg.name
  location            = azurerm_resource_group.cdnRg.location

  origin {
    name      = "origin-server"
    host_name = var.originHostName
  }
}
