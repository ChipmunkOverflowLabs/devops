output "identityPrincipalId" {
  value = azurerm_user_assigned_identity.customIdentity.principal_id
}

output "identityClientId" {
  value = azurerm_user_assigned_identity.customIdentity.client_id
}
