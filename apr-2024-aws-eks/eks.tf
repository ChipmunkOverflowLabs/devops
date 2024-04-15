resource "aws_iam_role" "eksRole" {
  name = "eks-cluster-role-2024"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_eks_cluster" "eksCluster" {
  name     = var.clusterNameVal
  role_arn = aws_iam_role.eksRole.arn

  vpc_config {
    subnet_ids = ["subnet-01234567", "subnet-89abcdef"]
  }
}
