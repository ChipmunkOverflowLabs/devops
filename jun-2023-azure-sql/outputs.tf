output "dbServerId" {
  value = azurerm_mssql_server.sqlServer.id
}

output "dbDatabaseId" {
  value = azurerm_mssql_database.sqlDatabase.id
}
