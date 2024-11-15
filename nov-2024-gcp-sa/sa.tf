resource "google_service_account" "saAccountId" {
  account_id   = var.serviceAccountName
  display_name = "Key Holder Service Account"
}

resource "google_service_account_key" "saPrivateKey" {
  service_account_id = google_service_account.saAccountId.name
}
