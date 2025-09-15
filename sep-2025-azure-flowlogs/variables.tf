variable "azureRegion" {
  type    = string
  default = "eastus2"
}

variable "resourceGroupName" {
  type    = string
  default = "loggingResourceGroup"
}

variable "storageAccountId" {
  type    = string
  default = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/loggingResourceGroup/providers/Microsoft.Storage/storageAccounts/appflowlogsstore"
}
