variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "bucketPrefixName" {
  type    = string
  default = "historical-cdn-assets"
}

variable "enableViewerHttps" {
  type    = bool
  default = true
}
