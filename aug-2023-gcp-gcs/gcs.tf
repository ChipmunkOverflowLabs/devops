resource "google_storage_bucket" "storageBucket" {
  name          = "${var.gcpProjectId}-production-assets"
  location      = var.gcpRegion
  storage_class = var.bucketStorageClass

  uniform_bucket_level_access = true

  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "Delete"
    }
  }
}
