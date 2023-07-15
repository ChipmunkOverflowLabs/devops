variable "awsRegion" {
  type    = string
  default = "us-east-2"
}

variable "keyAliasName" {
  type    = string
  default = "alias/productionAppKey"
}

variable "deletionWindowInDays" {
  type    = number
  default = 10
}
