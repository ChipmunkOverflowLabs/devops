output "storageAccountId" {
  value = azurerm_storage_account.storageAcct.id
}

output "storageContainerUrl" {
  value = azurerm_storage_container.storageContainer.has_immutability_policy
}
