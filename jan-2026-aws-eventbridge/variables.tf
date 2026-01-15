variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "eventBusName" {
  type    = string
  default = "customBillingEvents"
}

variable "eventRuleName" {
  type    = string
  default = "billingThresholdExceeded"
}

variable "targetQueueArn" {
  type    = string
  default = "arn:aws:sqs:us-east-1:123456789012:billingQueue"
}
