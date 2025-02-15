resource "google_storage_bucket" "prodBucket" {
  name          = "${var.gcpProjectId}-production-backup"
  location      = var.gcpRegion
  storage_class = var.bucketStorageClass
}
