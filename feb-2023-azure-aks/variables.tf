variable "resourceGroupName" {
  type    = string
  default = "aksResourceGroup"
}

variable "azureRegion" {
  type    = string
  default = "eastus"
}

variable "clusterName" {
  type    = string
  default = "aksCluster"
}

variable "dnsPrefix" {
  type    = string
  default = "k8sDns"
}
