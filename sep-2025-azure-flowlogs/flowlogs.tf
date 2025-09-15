resource "azurerm_resource_group" "logRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_network_security_group" "netNsg" {
  name                = "productionNetworkNsg"
  location            = azurerm_resource_group.logRg.location
  resource_group_name = azurerm_resource_group.logRg.name
}

resource "azurerm_network_watcher" "netWatcher" {
  name                = "productionNetworkWatcher"
  location            = azurerm_resource_group.logRg.location
  resource_group_name = azurerm_resource_group.logRg.name
}

resource "azurerm_network_watcher_flow_log" "nsgFlowLogs" {
  name                 = "nsgFlowLog"
  network_watcher_name = azurerm_network_watcher.netWatcher.name
  resource_group_name  = azurerm_resource_group.logRg.name
  target_resource_id   = azurerm_network_security_group.netNsg.id
  storage_account_id   = var.storageAccountId
  enabled              = true

  retention_policy {
    enabled = true
    days    = 7
  }
}
