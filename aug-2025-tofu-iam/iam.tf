resource "google_service_account" "saAccountId" {
  account_id   = var.serviceAccountName
  display_name = "Conditional Access SA"
}

resource "google_project_iam_member" "saConditionalBinding" {
  project = var.gcpProjectId
  role    = "roles/storage.viewer"
  member  = "serviceAccount:${google_service_account.saAccountId.email}"

  condition {
    title       = var.accessConditionTitle
    description = "Access limited to specific times"
    expression  = "request.time.getHours() >= 9 && request.time.getHours() < 17"
  }
}
