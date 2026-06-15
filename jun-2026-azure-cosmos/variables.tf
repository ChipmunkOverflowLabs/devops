variable "azureRegion" {
  type    = string
  default = "eastus2"
}

variable "resourceGroupName" {
  type    = string
  default = "cosmosResourceGroup"
}

variable "cosmosAccountName" {
  type    = string
  default = "prodtelemetrycosmos"
}

variable "cosmosDatabaseName" {
  type    = string
  default = "telemetryDatabase"
}
