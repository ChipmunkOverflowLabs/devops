variable "awsRegion" {
  type    = string
  default = "us-west-2"
}

variable "loadBalancerSubnets" {
  type    = list(string)
  default = ["subnet-012345", "subnet-67890a"]
}
