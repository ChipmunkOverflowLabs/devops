output "vpcId" {
  value       = aws_vpc.mainVpc.id
  description = "The ID of the generated VPC"
}

output "publicSubnetId" {
  value       = aws_subnet.publicSubnet.id
  description = "The ID of the public subnet"
}
