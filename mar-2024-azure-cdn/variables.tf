variable "azureRegion" {
  type    = string
  default = "centralus"
}

variable "resourceGroupName" {
  type    = string
  default = "cdnResourceGroup"
}

variable "cdnProfileName" {
  type    = string
  default = "webcdnprofile"
}

variable "originHostName" {
  type    = string
  default = "weborigin.azurewebsites.net"
}
