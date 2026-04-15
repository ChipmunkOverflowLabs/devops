resource "aws_secretsmanager_secret" "dbCredentialsSecret" {
  name       = var.secretNameVal
  kms_key_id = var.kmsKeyArn
}

resource "aws_secretsmanager_secret_version" "dbCredentialsVersion" {
  secret_id     = aws_secretsmanager_secret.dbCredentialsSecret.id
  secret_string = jsonencode({
    username = "admin"
    password = "superSecretPassword123"
  })
}
