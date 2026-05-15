output "serviceUrl" {
  value = google_cloud_run_v2_service.webService.uri
}

output "serviceUniqueId" {
  value = google_cloud_run_v2_service.webService.uid
}
