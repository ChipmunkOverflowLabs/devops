resource "azurerm_resource_group" "storageRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_storage_account" "storageAcct" {
  name                     = var.storageAccountName
  resource_group_name      = azurerm_resource_group.storageRg.name
  location                 = azurerm_resource_group.storageRg.location
  account_tier             = "Standard"
  account_replication_type = var.accountReplicationType
}

resource "azurerm_storage_container" "storageContainer" {
  name                  = "app-backups"
  storage_account_name  = azurerm_storage_account.storageAcct.name
  container_access_type = var.containerAccessType
}
