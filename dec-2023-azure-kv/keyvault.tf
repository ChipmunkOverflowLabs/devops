resource "azurerm_resource_group" "secRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "appVault" {
  name                        = var.keyVaultName
  location                    = azurerm_resource_group.secRg.location
  resource_group_name         = azurerm_resource_group.secRg.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = [
      "Get", "List", "Set", "Delete"
    ]
  }
}

resource "azurerm_key_vault_secret" "appSecret" {
  name         = var.secretNameVal
  value        = "vaultPassword123!"
  key_vault_id = azurerm_key_vault.appVault.id
}
