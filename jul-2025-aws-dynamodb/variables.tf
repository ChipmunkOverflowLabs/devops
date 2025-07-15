variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "tableNameVal" {
  type    = string
  default = "productionTelemetryLogs"
}

variable "readCapacityUnits" {
  type    = number
  default = 10
}

variable "writeCapacityUnits" {
  type    = number
  default = 10
}
