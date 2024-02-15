resource "google_compute_network" "natVpc" {
  name                    = "nat-vpc-network"
  auto_create_subnetworks = true
}

resource "google_compute_router" "cloudRouter" {
  name    = var.routerNameVal
  region  = var.gcpRegion
  network = google_compute_network.natVpc.name
}

resource "google_compute_router_nat" "cloudNat" {
  name                               = "nat-config"
  router                             = google_compute_router.cloudRouter.name
  region                             = google_compute_router.cloudRouter.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
