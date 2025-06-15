variable "azureRegion" {
  type    = string
  default = "westus"
}

variable "resourceGroupName" {
  type    = string
  default = "vnetResourceGroup"
}

variable "peeringNameVal" {
  type    = string
  default = "vnetPeeringLink"
}

variable "sourceVnetName" {
  type    = string
  default = "vnetSource"
}

variable "destVnetName" {
  type    = string
  default = "vnetDestination"
}
