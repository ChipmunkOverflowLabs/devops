output "secretArn" {
  value = aws_secretsmanager_secret.dbCredentialsSecret.arn
}

output "secretVersionId" {
  value = aws_secretsmanager_secret_version.dbCredentialsVersion.version_id
}
