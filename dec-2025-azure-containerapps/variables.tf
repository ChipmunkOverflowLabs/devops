variable "azureRegion" {
  type    = string
  default = "eastus2"
}

variable "resourceGroupName" {
  type    = string
  default = "appResourceGroup"
}

variable "environmentNameVal" {
  type    = string
  default = "productionContainerAppEnvironment"
}

variable "containerImageName" {
  type    = string
  default = "nginx:alpine"
}
