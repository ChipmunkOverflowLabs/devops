resource "aws_lb" "appLoadBalancer" {
  name               = "app-load-balancer"
  internal           = false
  load_balancer_type = "application"
  subnets            = var.loadBalancerSubnets

  enable_deletion_protection = false
}
