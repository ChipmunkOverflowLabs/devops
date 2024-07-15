variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "dbAllocatedStorage" {
  type    = number
  default = 20
}

variable "dbInstanceClass" {
  type    = string
  default = "db.t4g.micro"
}

variable "dbPassword" {
  type    = string
  default = "superSecretPassword123!"
}
