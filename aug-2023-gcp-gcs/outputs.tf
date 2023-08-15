output "bucketSelfLink" {
  value = google_storage_bucket.storageBucket.self_link
}

output "bucketUrlName" {
  value = google_storage_bucket.storageBucket.url
}
