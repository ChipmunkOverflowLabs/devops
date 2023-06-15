resource "azurerm_resource_group" "dbRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_mssql_server" "sqlServer" {
  name                         = var.sqlServerName
  resource_group_name          = azurerm_resource_group.dbRg.name
  location                     = azurerm_resource_group.dbRg.location
  version                      = "12.0"
  administrator_login          = "dbAdminUser"
  administrator_login_password = "securePassword123!"
}

resource "azurerm_mssql_database" "sqlDatabase" {
  name      = var.sqlDatabaseName
  server_id = azurerm_mssql_server.sqlServer.id
  collation = var.databaseCollation
  sku_name  = "Basic"
}
