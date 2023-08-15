variable "gcpProjectId" {
  type        = string
  description = "GCP Project Identifier"
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "bucketStorageClass" {
  type    = string
  default = "STANDARD"
}
