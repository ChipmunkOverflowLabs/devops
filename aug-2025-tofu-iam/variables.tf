variable "gcpProjectId" {
  type = string
}

variable "serviceAccountName" {
  type    = string
  default = "conditionalSa"
}

variable "accessConditionTitle" {
  type    = string
  default = "officeHoursOnly"
}
