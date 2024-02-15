output "natIpAllocation" {
  value = google_compute_router_nat.cloudNat.nat_ip_allocate_option
}
