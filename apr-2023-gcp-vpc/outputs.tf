output "vpcNetworkId" {
  value = google_compute_network.customNetwork.id
}

output "subnetSelfLink" {
  value = google_compute_subnetwork.customSubnet.self_link
}
