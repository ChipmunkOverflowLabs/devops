variable "azureRegion" {
  type    = string
  default = "eastus2"
}

variable "resourceGroupName" {
  type    = string
  default = "dbResourceGroup"
}

variable "sqlServerName" {
  type    = string
  default = "sqlserveradmin"
}

variable "sqlDatabaseName" {
  type    = string
  default = "productionDatabase"
}

variable "databaseCollation" {
  type    = string
  default = "SQL_Latin1_General_CP1_CI_AS"
}
