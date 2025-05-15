variable "gcpProjectId" {
  type = string
}

variable "datasetLocationName" {
  type    = string
  default = "US"
}

variable "datasetIdVal" {
  type    = string
  default = "productionTelemetryDataset"
}
