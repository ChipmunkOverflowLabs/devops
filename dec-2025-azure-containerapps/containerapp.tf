resource "azurerm_resource_group" "appRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_container_app_environment" "appEnv" {
  name                = var.environmentNameVal
  resource_group_name = azurerm_resource_group.appRg.name
  location            = azurerm_resource_group.appRg.location
}

resource "azurerm_container_app" "containerAppId" {
  name                         = "telemetry-display-app"
  container_app_environment_id = azurerm_container_app_environment.appEnv.id
  resource_group_name          = azurerm_resource_group.appRg.name
  revision_mode                = "Single"

  template {
    container {
      name   = "web"
      image  = var.containerImageName
      cpu    = "0.25"
      memory = "0.5Gi"
    }
  }

  ingress {
    target_port      = 80
    external_enabled = true
    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
}
