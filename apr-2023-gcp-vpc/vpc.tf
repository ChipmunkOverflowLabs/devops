resource "google_compute_network" "customNetwork" {
  name                    = var.vpcNetworkName
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "customSubnet" {
  name          = "custom-subnet"
  ip_cidr_range = var.primaryIpRange
  region        = var.gcpRegion
  network       = google_compute_network.customNetwork.id
}
