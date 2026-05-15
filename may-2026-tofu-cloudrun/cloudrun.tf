resource "google_cloud_run_v2_service" "webService" {
  name     = var.serviceNameVal
  location = var.gcpRegion

  template {
    containers {
      image = var.containerImageUri
    }
  }
}
