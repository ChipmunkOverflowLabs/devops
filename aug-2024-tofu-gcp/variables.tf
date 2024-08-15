variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "europe-west1"
}

variable "subnetIpRange" {
  type    = string
  default = "10.20.0.0/24"
}
