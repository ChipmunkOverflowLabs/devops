variable "azureRegion" {
  type    = string
  default = "westeurope"
}

variable "resourceGroupName" {
  type    = string
  default = "storageResourceGroup"
}

variable "storageAccountName" {
  type    = string
  default = "histstorageacct"
}

variable "accountReplicationType" {
  type    = string
  default = "LRS"
}

variable "containerAccessType" {
  type    = string
  default = "private"
}
