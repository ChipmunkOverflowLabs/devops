variable "azureRegion" {
  type    = string
  default = "westus"
}

variable "resourceGroupName" {
  type    = string
  default = "idResourceGroup"
}

variable "customIdentityName" {
  type    = string
  default = "telemetryIdentity"
}
