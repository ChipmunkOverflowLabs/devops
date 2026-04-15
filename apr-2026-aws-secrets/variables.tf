variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "secretNameVal" {
  type    = string
  default = "databaseCredentialsProduction"
}

variable "kmsKeyArn" {
  type    = string
  default = "arn:aws:kms:us-east-1:123456789012:key/customKeyId"
}
