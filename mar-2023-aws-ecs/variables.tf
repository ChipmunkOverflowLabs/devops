variable "awsRegion" {
  type    = string
  default = "us-west-2"
}

variable "clusterName" {
  type    = string
  default = "ecsCluster"
}

variable "cpuUnits" {
  type    = number
  default = 256
}

variable "memoryLimit" {
  type    = number
  default = 512
}
