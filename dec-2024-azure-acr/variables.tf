variable "azureRegion" {
  type    = string
  default = "westus2"
}

variable "resourceGroupName" {
  type    = string
  default = "acrResourceGroup"
}

variable "registrySkuName" {
  type    = string
  default = "Standard"
}
