terraform {
  required_version = ">= 1.9.0, < 1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.55.0"
    }
  }
}

provider "aws" {
  region = var.awsRegion
}
