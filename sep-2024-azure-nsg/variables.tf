variable "azureRegion" {
  type    = string
  default = "uksouth"
}

variable "resourceGroupName" {
  type    = string
  default = "firewallResourceGroup"
}

variable "securityRuleName" {
  type    = string
  default = "allowHttpsInbound"
}

variable "sourceAddressPrefix" {
  type    = string
  default = "82.10.20.0/24"
}
