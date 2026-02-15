variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "pubSubTopicName" {
  type    = string
  default = "telemetryProductionData"
}

variable "subscriptionName" {
  type    = string
  default = "telemetryProductionSubscription"
}
