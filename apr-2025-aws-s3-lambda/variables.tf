variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "bucketPrefixName" {
  type    = string
  default = "s3triggerevents"
}

variable "lambdaFunctionArn" {
  type    = string
  default = "arn:aws:lambda:us-east-1:123456789012:function:eventHandler"
}
