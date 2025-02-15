variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "bucketStorageClass" {
  type    = string
  default = "STANDARD"
}
