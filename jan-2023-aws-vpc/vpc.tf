resource "aws_vpc" "mainVpc" {
  cidr_block           = var.vpcCidrBlock
  enable_dns_hostnames = true

  tags = {
    Name        = "main-vpc"
    environment = "production"
    billingDept = "coreInfrastructure"
  }
}

resource "aws_subnet" "publicSubnet" {
  vpc_id            = aws_vpc.mainVpc.id
  cidr_block        = var.publicSubnetCidr
  availability_zone = "us-east-1a"

  tags = {
    Name        = "public-subnet"
    environment = "production"
  }
}
