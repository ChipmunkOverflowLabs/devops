output "cosmosEndpoint" {
  value = azurerm_cosmosdb_account.cosmosAccount.endpoint
}

output "cosmosReadEndpoint" {
  value = azurerm_cosmosdb_account.cosmosAccount.read_endpoints[0]
}
