resource "aws_vpc_peering_connection" "vpcPeering" {
  peer_vpc_id = var.peerVpcId
  vpc_id      = var.requestVpcId
  auto_accept = true

  tags = {
    Name = "vpc-peering-link"
  }
}
