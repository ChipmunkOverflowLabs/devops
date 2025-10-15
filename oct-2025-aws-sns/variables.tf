variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "snsTopicName" {
  type    = string
  default = "productionTelemetryAlerts"
}

variable "subscriptionEndpoint" {
  type    = string
  default = "alert-handler@internal.io"
}
