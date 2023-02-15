variable "gcpProjectId" {
  type        = string
  description = "The target GCP project ID"
}

variable "gcpRegion" {
  type    = string
  default = "us-central1"
}

variable "databaseTier" {
  type    = string
  default = "db-f1-micro"
}
