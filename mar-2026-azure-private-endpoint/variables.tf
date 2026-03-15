variable "azureRegion" {
  type    = string
  default = "eastus2"
}

variable "resourceGroupName" {
  type    = string
  default = "privateLinkResourceGroup"
}

variable "virtualNetworkName" {
  type    = string
  default = "appVnetInstance"
}

variable "subnetNameVal" {
  type    = string
  default = "privateEndpointSubnet"
}
