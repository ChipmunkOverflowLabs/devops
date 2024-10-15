output "iamRoleArn" {
  value = aws_iam_role.executorRole.arn
}

output "iamRoleName" {
  value = aws_iam_role.executorRole.name
}
