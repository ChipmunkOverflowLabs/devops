output "containerAppFqdn" {
  value = azurerm_container_app.containerAppId.ingress[0].fqdn
}
