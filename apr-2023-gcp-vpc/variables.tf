variable "gcpProjectId" {
  type        = string
  description = "GCP Project Identifier"
}

variable "gcpRegion" {
  type    = string
  default = "us-west1"
}

variable "vpcNetworkName" {
  type    = string
  default = "customVpcNetwork"
}

variable "primaryIpRange" {
  type    = string
  default = "10.10.0.0/24"
}
