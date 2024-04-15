output "eksClusterId" {
  value = aws_eks_cluster.eksCluster.id
}

output "eksClusterArn" {
  value = aws_eks_cluster.eksCluster.arn
}
