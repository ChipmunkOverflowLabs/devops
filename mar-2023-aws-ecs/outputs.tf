output "ecsClusterArn" {
  value = aws_ecs_cluster.appCluster.arn
}

output "taskDefinitionFamily" {
  value = aws_ecs_task_definition.webTask.family
}
