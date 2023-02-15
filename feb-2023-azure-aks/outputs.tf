output "kubeConfig" {
  value     = azurerm_kubernetes_cluster.aksCluster.kube_config_raw
  sensitive = true
}

output "clusterOidcIssuerUrl" {
  value = azurerm_kubernetes_cluster.aksCluster.oidc_issuer_url
}
