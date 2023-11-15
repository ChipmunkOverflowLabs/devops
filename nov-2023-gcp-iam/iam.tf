resource "google_service_account" "saAccount" {
  account_id   = var.serviceAccountName
  display_name = "Deployment Service Account"
}

resource "google_project_iam_member" "saRoleBinding" {
  project = var.gcpProjectId
  role    = "roles/storage.admin"
  member  = "serviceAccount:${google_service_account.saAccount.email}"
}
