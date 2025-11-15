variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "vpnTunnelIp" {
  type    = string
  default = "203.0.113.1"
}
