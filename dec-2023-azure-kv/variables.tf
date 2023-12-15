variable "azureRegion" {
  type    = string
  default = "northeurope"
}

variable "resourceGroupName" {
  type    = string
  default = "secResourceGroup"
}

variable "keyVaultName" {
  type    = string
  default = "appsecurevault1"
}

variable "secretNameVal" {
  type    = string
  default = "dbPassword"
}
