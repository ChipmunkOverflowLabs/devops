resource "google_compute_network" "vpnVpc" {
  name                    = "vpn-vpc-network"
  auto_create_subnetworks = true
}

resource "google_compute_vpn_gateway" "targetVpnGateway" {
  name    = "vpn-gateway-instance"
  network = google_compute_network.vpnVpc.name
  region  = var.gcpRegion
}
