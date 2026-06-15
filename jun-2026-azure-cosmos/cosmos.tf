resource "azurerm_resource_group" "dbRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_cosmosdb_account" "cosmosAccount" {
  name                = var.cosmosAccountName
  resource_group_name = azurerm_resource_group.dbRg.name
  location            = azurerm_resource_group.dbRg.location
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"

  consistency_policy {
    consistency_level = "Session"
  }

  geo_location {
    location          = azurerm_resource_group.dbRg.location
    failover_priority = 0
  }
}

resource "azurerm_cosmosdb_sql_database" "sqlDb" {
  name                = var.cosmosDatabaseName
  resource_group_name = azurerm_resource_group.dbRg.name
  account_name        = azurerm_cosmosdb_account.cosmosAccount.name
}
