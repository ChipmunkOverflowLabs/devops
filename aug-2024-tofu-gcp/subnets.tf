resource "google_compute_network" "tofuVpc" {
  name                    = "tofu-vpc-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "tofuSubnet" {
  name          = "tofu-subnet"
  ip_cidr_range = var.subnetIpRange
  region        = var.gcpRegion
  network       = google_compute_network.tofuVpc.id
}
