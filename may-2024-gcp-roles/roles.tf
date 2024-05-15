resource "google_project_iam_custom_role" "customRole" {
  role_id     = var.customRoleId
  title       = "Telemetry Viewer Role"
  description = "Allows read access to monitoring metrics"
  permissions = [
    "monitoring.metricDescriptors.get",
    "monitoring.metricDescriptors.list"
  ]
}
