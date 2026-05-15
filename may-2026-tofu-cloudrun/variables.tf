variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-central1"
}

variable "serviceNameVal" {
  type    = string
  default = "productionTelemetryService"
}

variable "containerImageUri" {
  type    = string
  default = "gcr.io/gcp-project/telemetry-app:v1"
}
