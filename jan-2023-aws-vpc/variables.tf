variable "awsRegion" {
  type        = string
  description = "AWS region for the VPC infrastructure"
  default     = "us-east-1"
}

variable "vpcCidrBlock" {
  type        = string
  description = "Base CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "publicSubnetCidr" {
  type        = string
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}
