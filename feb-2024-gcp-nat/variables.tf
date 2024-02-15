variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east4"
}

variable "routerNameVal" {
  type    = string
  default = "nat-router"
}
